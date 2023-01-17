inherited FCadCtaCor: TFCadCtaCor
  Left = 260
  Top = 213
  Caption = 'FCadCtaCor'
  ClientHeight = 386
  ClientWidth = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 617
    Height = 354
  end
  inherited LDescTitulo: TLabel
    Left = 313
    Top = 18
    Width = 211
    Caption = 'Cadastro de Contas Corrente'
  end
  inherited PComunica: TPanel [5]
    Left = 58
    Top = 96
  end
  inherited PCadastro: TPanel [6]
    Top = 53
    Width = 581
    Height = 325
    inherited Panel4: TPanel
      Left = 0
      Top = 29
      Width = 578
      Height = 294
      inherited Label6: TLabel
        Left = 11
        Top = 10
      end
      inherited Label7: TLabel
        Left = 451
        Top = 99
        Width = 47
        Caption = 'Limite:'
      end
      object Label3: TLabel [2]
        Left = 11
        Top = 99
        Width = 66
        Height = 18
        Caption = 'N'#186' Conta:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [3]
        Left = 125
        Top = 99
        Width = 93
        Height = 18
        Caption = 'Dt. Cadastro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [4]
        Left = 233
        Top = 99
        Width = 87
        Height = 18
        Caption = 'Dt. Abertura:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel [5]
        Left = 341
        Top = 99
        Width = 99
        Height = 18
        Caption = 'Prox. Cheque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel [6]
        Left = 94
        Top = 120
        Width = 5
        Height = 18
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [7]
        Left = 13
        Top = 152
        Width = 45
        Height = 12
        Caption = 'BOLETO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel [8]
        Left = 140
        Top = 164
        Width = 54
        Height = 13
        Caption = 'N'#186' Agencia'
      end
      object Label10: TLabel [9]
        Left = 256
        Top = 164
        Width = 64
        Height = 13
        Caption = 'C'#243'd. Carteira:'
      end
      object Label11: TLabel [10]
        Left = 332
        Top = 164
        Width = 48
        Height = 13
        Caption = 'Nosso N'#186':'
      end
      object Label12: TLabel [11]
        Left = 220
        Top = 176
        Width = 5
        Height = 18
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel [12]
        Left = 393
        Top = 164
        Width = 74
        Height = 13
        Caption = 'Pr'#243'x. Boleto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel [13]
        Left = 12
        Top = 197
        Width = 176
        Height = 13
        Caption = 'Instru'#231#245'es Padr'#227'o (Para Vencimento)'
      end
      object Label15: TLabel [14]
        Left = 13
        Top = 164
        Width = 65
        Height = 13
        Caption = 'C'#243'd. Cedente'
      end
      object Label16: TLabel [15]
        Left = 109
        Top = 176
        Width = 5
        Height = 18
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel [16]
        Left = 366
        Top = 231
        Width = 80
        Height = 13
        Caption = 'Dias p/ Protesto:'
      end
      object Label18: TLabel [17]
        Left = 370
        Top = 255
        Width = 75
        Height = 13
        Caption = 'Cont. Remessa:'
      end
      object Label19: TLabel [18]
        Left = 481
        Top = 164
        Width = 66
        Height = 13
        Caption = 'C'#243'd. Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 11
        Top = 29
        Width = 81
        DataField = 'COD_CTACOR'
        DataSource = DMBANCO.DCtaCor
      end
      inherited DBDESC: TDBColorEdit
        Left = 454
        Top = 20
        Width = 113
        Font.Style = [fsBold]
        ReadOnly = True
        TabOrder = 12
        Visible = False
      end
      object DBNUMCONTA: TDBColorEdit
        Left = 11
        Top = 118
        Width = 81
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'NUMCTACOR'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBEdit1: TDBEdit
        Left = 125
        Top = 118
        Width = 101
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DTCAD'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 233
        Top = 118
        Width = 101
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DTABERT'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object DBColorEdit4: TDBColorEdit
        Left = 341
        Top = 118
        Width = 102
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'PROXCHEQUE'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      inline FrmBusca1: TFrmBusca
        Left = 11
        Top = 56
        Width = 561
        Height = 43
        Color = 16772332
        ParentColor = False
        TabOrder = 1
        inherited LTextoBusca: TLabel
          Top = -2
          Width = 58
          Caption = 'Agencia:'
        end
        inherited LUZOPEN: TShape
          Left = 511
        end
        inherited LUZMINUS: TShape
          Left = 531
        end
        inherited EdDescricao: TFlatEdit
          Width = 439
        end
        inherited BTNOPEN: TBitBtn
          Left = 513
          Hint = 'Pressione para selecionar '#224' Ag'#234'ncia'
          OnClick = FrmBusca1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 531
          Hint = 'Pressione para apagar '#224' Ag'#234'ncia'
          OnClick = FrmBusca1BTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          OnKeyPress = FrmBusca1EDCodigoKeyPress
        end
      end
      object DBColorEdit1: TDBColorEdit
        Left = 450
        Top = 118
        Width = 102
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'LIMITE'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit2: TDBColorEdit
        Left = 100
        Top = 118
        Width = 17
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DIGCTACOR'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit3: TDBColorEdit
        Left = 139
        Top = 177
        Width = 80
        Height = 19
        Color = 15658717
        Ctl3D = False
        DataField = 'NUMAGENCBLT'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit5: TDBColorEdit
        Left = 226
        Top = 177
        Width = 17
        Height = 19
        Color = 15658717
        Ctl3D = False
        DataField = 'DIGAGENCBLT'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit6: TDBColorEdit
        Left = 254
        Top = 177
        Width = 69
        Height = 19
        Color = 15658717
        Ctl3D = False
        DataField = 'CODCARTEIRABLT'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit7: TDBColorEdit
        Left = 332
        Top = 177
        Width = 53
        Height = 19
        Color = 15658717
        Ctl3D = False
        DataField = 'NOSSONUMBLT'
        DataSource = DMBANCO.DCtaCor
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
      object DBColorEdit8: TDBColorEdit
        Left = 393
        Top = 177
        Width = 80
        Height = 19
        Color = 15658717
        Ctl3D = False
        DataField = 'PROXBOLETO'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit10: TDBColorEdit
        Left = 12
        Top = 177
        Width = 95
        Height = 19
        Color = 15658717
        Ctl3D = False
        DataField = 'CODCEDENTEBLT'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit11: TDBColorEdit
        Left = 116
        Top = 177
        Width = 17
        Height = 19
        Color = 15658717
        Ctl3D = False
        DataField = 'DIGCODCEDENTEBLT'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBMemo1: TDBMemo
        Left = 12
        Top = 210
        Width = 296
        Height = 73
        Ctl3D = False
        DataField = 'INSTRUBOLETO'
        DataSource = DMBANCO.DCtaCor
        ParentCtl3D = False
        TabOrder = 17
      end
      object DBColorEdit9: TDBColorEdit
        Left = 447
        Top = 225
        Width = 36
        Height = 19
        Color = 15658717
        Ctl3D = False
        DataField = 'DIASPROT'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object CBPROTESTO: TCheckBox
        Left = 368
        Top = 208
        Width = 129
        Height = 17
        Caption = 'Protesto Autom'#225'tico:'
        TabOrder = 19
      end
      object DBColorEdit12: TDBColorEdit
        Left = 447
        Top = 249
        Width = 36
        Height = 19
        Color = 15658717
        Ctl3D = False
        DataField = 'CONTREMESSA'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit13: TDBColorEdit
        Left = 481
        Top = 177
        Width = 80
        Height = 19
        Color = 15658717
        Ctl3D = False
        DataField = 'CODEMPRESABLT'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Panel1: TPanel
      Left = 0
      Top = 0
      Width = 578
    end
  end
  inherited PConsulta: TPanel [7]
    Top = 53
    Height = 324
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 0
      Top = 109
      Width = 577
      Height = 212
      DataSource = DMBANCO.DWCtaCor
      TabOrder = 3
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMCTACOR'
          Title.Caption = 'N'#186' Conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMAGENCIA'
          Title.Caption = 'N'#186' Agencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCBANCO'
          Title.Caption = 'Banco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTABERT'
          Title.Caption = 'Abertura'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Left = 0
      Top = 33
      Width = 577
      TabOrder = 1
      inherited EdNome: TFlatEdit
        Width = 456
      end
      inherited BtnSelecionar: TBitBtn
        Left = 463
        Top = 18
        Width = 110
      end
    end
    inherited Painel: TPanel
      Left = 0
      Top = 0
      Width = 578
      TabOrder = 2
      inherited BtnFiltrar: TBitBtn
        Width = 118
      end
    end
    object CBTIPOBOLETO: TCheckBox
      Left = 411
      Top = 87
      Width = 185
      Height = 17
      Caption = 'Emitir Boleto com registro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
end
