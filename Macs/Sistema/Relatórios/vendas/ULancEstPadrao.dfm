inherited FLancEstPadrao: TFLancEstPadrao
  Top = 194
  Caption = 'FLancEstPadrao'
  ClientHeight = 428
  ClientWidth = 760
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Height = 419
  end
  inherited LDescTitulo: TLabel
    Left = 305
  end
  inherited PConsulta: TPanel [5]
    Left = 10
    Top = 32
    Width = 741
    Height = 385
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 6
      Width = 731
      Height = 293
    end
    inherited GroupBox1: TGroupBox
      Left = 6
      Width = 731
      inherited EdNome: TFlatEdit
        Width = 67
        Height = 22
        Font.Height = -13
        Font.Name = 'Verdana'
        Text = 'N'#186' Nota'
      end
      inherited BtnSelecionar: TBitBtn
        Left = 611
      end
      object EdCtrlInterno: TFlatEdit
        Left = 74
        Top = 19
        Width = 55
        Height = 22
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'Contr. Interno'
        OnKeyDown = EdCtrlInternoKeyDown
      end
      object EdCodFabricante: TFlatEdit
        Left = 130
        Top = 19
        Width = 113
        Height = 22
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Text = 'C'#243'd. Fabricante'
        OnKeyDown = EdCodFabricanteKeyDown
      end
      object EdDtLancamento: TColorMaskEdit
        Left = 244
        Top = 19
        Width = 77
        Height = 22
        Color = 13750737
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
        OnKeyDown = EdDtLancamentoKeyDown
        FocusColor = clWhite
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Painel: TPanel
      Left = 5
      Width = 732
      inherited BtnApagar: TBitBtn
        Enabled = False
      end
      inherited BtnConsultar: TBitBtn
        Enabled = False
      end
    end
  end
  inherited PCadastro: TPanel [6]
    Left = 10
    Top = 32
    Width = 741
    Height = 385
    inherited Panel4: TPanel
      Width = 737
      Height = 352
      inherited Label6: TLabel
        Left = 56
        Top = 192
        Width = 81
        Caption = 'Quantidade:'
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
      end
      inherited Label7: TLabel
        Left = 159
        Top = 192
        Width = 79
        Height = 19
        Caption = 'N'#186' da Nota:'
        Font.Height = -17
        Font.Name = 'Times New Roman'
      end
      object Label16: TLabel [2]
        Left = 56
        Top = 251
        Width = 140
        Height = 19
        Caption = 'Motivo da altera'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel [3]
        Left = 382
        Top = 192
        Width = 111
        Height = 19
        Caption = 'Data de Entrada:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel [4]
        Left = 533
        Top = 192
        Width = 138
        Height = 19
        Caption = 'Data de Lan'#231'amento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 56
        Top = 211
        Width = 89
        Height = 24
        Color = clWhite
        Ctl3D = True
        Font.Name = 'Verdana'
        Font.Style = []
        ReadOnly = False
        TabOrder = 1
      end
      inherited DBDESC: TDBColorEdit
        Left = 159
        Top = 211
        Width = 210
        Height = 24
        Color = clWhite
        Ctl3D = True
        Font.Name = 'Verdana'
        TabOrder = 2
        OnExit = DBDESCExit
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 721
        Height = 161
        Hint = 'Pressione F4 para que o cursor ca'#237'a em c'#243'digo de barra'
        Caption = 'Produto a ser trabalhado'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = GroupBox2Exit
        object Label2: TLabel
          Left = 8
          Top = 24
          Width = 104
          Height = 16
          Caption = 'C'#243'd. de Barra:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LProduto: TLabel
          Left = 184
          Top = 73
          Width = 425
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object LSimilar: TLabel
          Left = 184
          Top = 93
          Width = 417
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object LGrupo: TLabel
          Left = 56
          Top = 113
          Width = 313
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object LSubGrupo: TLabel
          Left = 457
          Top = 113
          Width = 256
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object LMarca: TLabel
          Left = 61
          Top = 133
          Width = 284
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 8
          Top = 72
          Width = 62
          Height = 16
          Caption = 'Produto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 92
          Width = 93
          Height = 16
          Caption = 'Sub Produto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 112
          Width = 48
          Height = 16
          Caption = 'Grupo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 376
          Top = 112
          Width = 79
          Height = 16
          Caption = 'Sub Grupo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 8
          Top = 132
          Width = 49
          Height = 16
          Caption = 'Marca:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 376
          Top = 136
          Width = 64
          Height = 16
          Caption = 'Estoque:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Lestoque: TLabel
          Left = 445
          Top = 138
          Width = 82
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 248
          Top = 24
          Width = 116
          Height = 16
          Caption = 'C'#243'd. Composto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LCodProduto: TLabel
          Left = 97
          Top = 73
          Width = 80
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object LCodSubProduto: TLabel
          Left = 106
          Top = 93
          Width = 71
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object PCodFab: TPanel
          Left = 546
          Top = 21
          Width = 133
          Height = 41
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 3
          object Label1: TLabel
            Left = 0
            Top = 1
            Width = 120
            Height = 16
            Caption = 'C'#243'd. Fabricante:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EDCodFab: TColorMaskEdit
            Left = 0
            Top = 18
            Width = 132
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = EDCodFabKeyDown
            OnKeyPress = EDCodFabKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object PCodInterno: TPanel
          Left = 534
          Top = 25
          Width = 145
          Height = 36
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 5
          object Label3: TLabel
            Left = 12
            Top = 0
            Width = 108
            Height = 16
            Caption = 'Contr. Interno:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdCodInterno: TMaskEdit
            Left = 13
            Top = 15
            Width = 132
            Height = 22
            Hint = 'Pressione enter ao terminar e o cursor j'#225' ca'#237'ra em quantidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = EdCodInternoKeyPress
          end
        end
        object btnprocprod: TBitBtn
          Left = 680
          Top = 39
          Width = 22
          Height = 22
          Hint = 'Pressione para localizar um Produto'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnprocprodClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EdCodComposto: TColorMaskEdit
          Left = 248
          Top = 40
          Width = 241
          Height = 24
          Hint = 'Pressione enter ao terminar e o cursor j'#225' ca'#237'ra em quantidade'
          EditMask = '000.000.000-000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          TabOrder = 1
          Text = '   .   .   -   '
          OnKeyPress = EdCodCompostoKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdCodBarra: TMaskEdit
          Left = 8
          Top = 40
          Width = 177
          Height = 22
          Hint = 
            'Caso digitando manualmente, pressione enter para cair em quantid' +
            'ade'
          EditMask = '!9999999999999;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          MaxLength = 13
          ParentFont = False
          TabOrder = 0
          Text = '             '
          OnKeyPress = EdCodBarraKeyPress
        end
        object BtnEscolheProc: TBitBtn
          Left = 548
          Top = 62
          Width = 13
          Height = 13
          Hint = 'Pressione para alterar o modo de procura (Alt+P)'
          Caption = '&P'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BtnEscolheProcClick
        end
      end
      object DBColorEdit1: TDBColorEdit
        Left = 382
        Top = 211
        Width = 139
        Height = 24
        Color = clWhite
        Ctl3D = True
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
      object DBColorEdit2: TDBColorEdit
        Left = 56
        Top = 270
        Width = 625
        Height = 24
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit3: TDBColorEdit
        Left = 533
        Top = 211
        Width = 113
        Height = 24
        Color = clWhite
        Ctl3D = True
        Enabled = False
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
      object PLote: TPanel
        Left = 371
        Top = 211
        Width = 206
        Height = 45
        Hint = '<ENTER> Confirmar <ESC> Voltar'
        BevelWidth = 2
        Color = 16772332
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Visible = False
        object Label70: TLabel
          Left = 9
          Top = 3
          Width = 32
          Height = 13
          Caption = 'Lote:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CBLoteSelecionado: TDBLookupComboBox
          Left = 8
          Top = 15
          Width = 161
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          KeyField = 'COD_LOTE'
          ListField = 'NUMERO'
          ListSource = DMMACS.DSLote
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object BtnAbreLote: TBitBtn
          Left = 174
          Top = 18
          Width = 19
          Height = 19
          TabOrder = 1
          OnKeyPress = BtnAbreLoteKeyPress
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
      end
    end
    inherited Panel1: TPanel
      Width = 737
    end
  end
  inherited PComunica: TPanel
    Left = 122
  end
  inherited PBotoes: TPanel
    inherited BtnFecha: TSpeedButton
      Left = 730
      Top = 5
    end
  end
  object MEscolheProc: TPopupMenu
    Left = 714
    Top = 63
    object ControleInterno1: TMenuItem
      Caption = 'Controle Interno'
      OnClick = ControleInterno1Click
    end
    object CdFab1: TMenuItem
      Caption = 'C'#243'd. Fabricante'
      OnClick = CdFab1Click
    end
  end
end
