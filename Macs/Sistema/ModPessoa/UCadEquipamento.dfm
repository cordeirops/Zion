inherited FCadEquipamento: TFCadEquipamento
  Left = 878
  Top = 188
  Caption = 'FCadEquipamento'
  ClientHeight = 434
  ClientWidth = 681
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 6
    Top = 7
    Width = 675
    Height = 418
    object PAnimal: TPanel [0]
      Left = 2
      Top = 29
      Width = 666
      Height = 375
      BevelInner = bvLowered
      Color = clWhite
      TabOrder = 2
      object Label23: TLabel
        Left = 18
        Top = 17
        Width = 91
        Height = 18
        Caption = 'N'#250'm. Animal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 165
        Top = 16
        Width = 97
        Height = 18
        Caption = 'Nome Animal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 16
        Top = 65
        Width = 41
        Height = 18
        Caption = 'Ra'#231'a:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 255
        Top = 65
        Width = 89
        Height = 18
        Caption = 'Observa'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 504
        Top = 17
        Width = 30
        Height = 18
        Caption = 'Cor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 16
        Top = 119
        Width = 118
        Height = 18
        Caption = 'Particularidades:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBColorEdit5: TDBColorEdit
        Left = 17
        Top = 35
        Width = 144
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'Placa'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit13: TDBColorEdit
        Left = 165
        Top = 35
        Width = 332
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DESCRICAO'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit14: TDBColorEdit
        Left = 16
        Top = 82
        Width = 233
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'MODELO'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit15: TDBColorEdit
        Left = 255
        Top = 82
        Width = 394
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'MODELO_GUINCHO'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit16: TDBColorEdit
        Left = 504
        Top = 34
        Width = 145
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'COR'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 136
        Width = 633
        Height = 177
        DataField = 'OBS'
        DataSource = DMPESSOA.DEquip
        TabOrder = 5
      end
    end
    object PObra: TPanel [1]
      Left = 2
      Top = 29
      Width = 666
      Height = 375
      BevelInner = bvLowered
      Color = clWhite
      TabOrder = 4
      object Label28: TLabel
        Left = 18
        Top = 17
        Width = 101
        Height = 18
        Caption = 'C'#243'd. Controle:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LabelObra: TLabel
        Left = 165
        Top = 16
        Width = 129
        Height = 18
        Caption = 'Endere'#231'o da Obra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 17
        Top = 65
        Width = 89
        Height = 18
        Caption = 'Observa'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBColorEdit17: TDBColorEdit
        Left = 17
        Top = 35
        Width = 144
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'Placa'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit18: TDBColorEdit
        Left = 165
        Top = 35
        Width = 332
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DESCRICAO'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit20: TDBColorEdit
        Left = 17
        Top = 82
        Width = 394
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'MODELO_GUINCHO'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object PEletronico: TPanel [2]
      Left = 2
      Top = 29
      Width = 666
      Height = 375
      BevelInner = bvLowered
      Color = clWhite
      TabOrder = 3
      object Label11: TLabel
        Left = 18
        Top = 17
        Width = 63
        Height = 18
        Caption = 'Controle:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 165
        Top = 16
        Width = 97
        Height = 18
        Caption = 'Equipamento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 16
        Top = 65
        Width = 56
        Height = 18
        Caption = 'Modelo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 165
        Top = 65
        Width = 70
        Height = 18
        Caption = 'Voltagem:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 504
        Top = 17
        Width = 58
        Height = 18
        Caption = 'N'#186' S'#233'rie'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 16
        Top = 119
        Width = 97
        Height = 18
        Caption = 'Observa'#231#245'es:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 285
        Top = 65
        Width = 116
        Height = 18
        Caption = 'Local Instala'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBColorEdit23: TDBColorEdit
        Left = 17
        Top = 35
        Width = 144
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'Placa'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit24: TDBColorEdit
        Left = 165
        Top = 35
        Width = 332
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DESCRICAO'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit25: TDBColorEdit
        Left = 16
        Top = 82
        Width = 145
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'MODELO'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit26: TDBColorEdit
        Left = 165
        Top = 82
        Width = 116
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'MARCA'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit27: TDBColorEdit
        Left = 504
        Top = 34
        Width = 145
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'CHASSI'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBMemo2: TDBMemo
        Left = 16
        Top = 136
        Width = 633
        Height = 177
        DataField = 'OBS'
        DataSource = DMPESSOA.DEquip
        TabOrder = 6
      end
      object DBColorEdit28: TDBColorEdit
        Left = 285
        Top = 82
        Width = 364
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'MODELO_GUINCHO'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Panel4: TPanel
      Top = 29
      Width = 666
      Height = 375
      inherited Label6: TLabel
        Left = 281
        Width = 151
        Height = 18
        Caption = 'Equipamento/Ve'#237'culo:'
        Font.Style = []
      end
      inherited Label7: TLabel
        Top = 65
        Width = 48
        Caption = 'Marca:'
      end
      object Label1: TLabel [2]
        Left = 576
        Top = 65
        Width = 32
        Height = 18
        Caption = 'Ano:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel [3]
        Left = 327
        Top = 65
        Width = 56
        Height = 18
        Caption = 'Modelo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel [4]
        Left = 16
        Top = 112
        Width = 30
        Height = 18
        Caption = 'Cor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel [5]
        Left = 169
        Top = 112
        Width = 53
        Height = 18
        Caption = 'Chassi:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel [6]
        Left = 17
        Top = 18
        Width = 44
        Height = 18
        Caption = 'Placa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel [7]
        Left = 329
        Top = 112
        Width = 111
        Height = 18
        Caption = 'Data Aquisi'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel [8]
        Left = 16
        Top = 161
        Width = 114
        Height = 18
        Caption = 'Concession'#225'ria:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel [9]
        Left = 337
        Top = 161
        Width = 44
        Height = 18
        Caption = 'Motor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel [10]
        Left = 576
        Top = 161
        Width = 32
        Height = 18
        Caption = 'Ano:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [11]
        Left = 16
        Top = 213
        Width = 93
        Height = 18
        Caption = 'Chassi Motor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [12]
        Left = 192
        Top = 213
        Width = 111
        Height = 18
        Caption = 'Rodagem Atual:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [13]
        Left = 328
        Top = 213
        Width = 135
        Height = 18
        Caption = 'Unid. de Rodagem:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LModelo: TLabel [14]
        Left = 480
        Top = 213
        Width = 113
        Height = 18
        Caption = 'Modelo Guincho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LAltura: TLabel [15]
        Left = 16
        Top = 261
        Width = 77
        Height = 18
        Caption = 'Altura M'#225'x.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LPeso: TLabel [16]
        Left = 152
        Top = 261
        Width = 74
        Height = 18
        Caption = 'Peso M'#225'x.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [17]
        Left = 134
        Top = 17
        Width = 81
        Height = 18
        Caption = 'N'#250'm. Frota:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 285
        Width = 380
        Color = 15658717
        DataField = 'DESCRICAO'
        DataSource = DMPESSOA.DEquip
        Font.Style = []
        ReadOnly = False
        TabOrder = 3
      end
      inherited DBDESC: TDBColorEdit
        Top = 82
        Width = 306
        DataField = 'MARCA'
        DataSource = DMPESSOA.DEquip
        TabOrder = 4
      end
      object DBColorEdit1: TDBColorEdit
        Left = 327
        Top = 82
        Width = 244
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'MODELO'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit2: TDBColorEdit
        Left = 576
        Top = 82
        Width = 65
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'ANO'
        DataSource = DMPESSOA.DEquip
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
      object DBColorEdit3: TDBColorEdit
        Left = 16
        Top = 129
        Width = 147
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'COR'
        DataSource = DMPESSOA.DEquip
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
      object DBColorEdit4: TDBColorEdit
        Left = 170
        Top = 129
        Width = 152
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'CHASSI'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit6: TDBColorEdit
        Left = 330
        Top = 129
        Width = 107
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DTAQUISICAO'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit7: TDBColorEdit
        Left = 16
        Top = 178
        Width = 317
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'CONCESSIONARIA'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit8: TDBColorEdit
        Left = 337
        Top = 178
        Width = 235
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'MOTOR'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit9: TDBColorEdit
        Left = 576
        Top = 178
        Width = 65
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'ANOMOTOR'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit10: TDBColorEdit
        Left = 16
        Top = 230
        Width = 172
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'CHASSIMOTOR'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit11: TDBColorEdit
        Left = 192
        Top = 230
        Width = 129
        Height = 22
        Hint = 
          'Informe aqui a quantidade de Kms ou Hs rodadas ou funcionadas pe' +
          'lo equipamento ou ve'#237'culo'
        Color = 15658717
        Ctl3D = False
        DataField = 'KMATUAL'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorComboBox1: TDBColorComboBox
        Left = 327
        Top = 230
        Width = 145
        Height = 24
        Color = 15658717
        Ctl3D = False
        DataField = 'UNIDRODAGEM'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'Km'
          'Hs')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
        OnKeyPress = DBColorComboBox1KeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBModelo: TDBColorEdit
        Left = 480
        Top = 230
        Width = 172
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'MODELO_GUINCHO'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBAltura: TDBColorEdit
        Left = 16
        Top = 280
        Width = 108
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'ALTURAMAX'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 17
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBPeso: TDBColorEdit
        Left = 152
        Top = 280
        Width = 108
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'PESOMAX'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      inline FrmServico: TFrmBusca
        Left = 347
        Top = 336
        Width = 312
        Height = 39
        Color = 16772332
        ParentColor = False
        TabOrder = 19
        inherited LTextoBusca: TLabel
          Top = -1
          Width = 55
          Caption = 'Servi'#231'o:'
        end
        inherited LUZOPEN: TShape
          Left = 269
        end
        inherited LUZMINUS: TShape
          Left = 287
        end
        inherited EdDescricao: TFlatEdit
          Left = 61
          Width = 209
        end
        inherited BTNOPEN: TBitBtn
          Left = 272
          Width = 18
          OnClick = FrmBusca1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 290
          OnClick = FrmServicoBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 58
        end
      end
      object DBColorEdit12: TDBColorEdit
        Left = 133
        Top = 35
        Width = 144
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'NUM_FROTA'
        DataSource = DMPESSOA.DEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDPlaca: TColorMaskEdit
        Left = 17
        Top = 35
        Width = 88
        Height = 22
        CharCase = ecUpperCase
        Color = 15658717
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = EDPlacaExit
        OnKeyDown = EDPlacaKeyDown
        OnKeyPress = EDPlacaKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      inline FrmKM: TFrmBusca
        Left = 347
        Top = 295
        Width = 315
        Height = 38
        Color = 16772332
        ParentColor = False
        TabOrder = 20
        inherited LTextoBusca: TLabel
          Top = -1
          Width = 87
          Caption = 'Kilometragem'
        end
        inherited LUZOPEN: TShape
          Left = 269
        end
        inherited LUZMINUS: TShape
          Left = 287
        end
        inherited EdDescricao: TFlatEdit
          Left = 61
          Width = 209
        end
        inherited BTNOPEN: TBitBtn
          Left = 271
          OnClick = FrmKMBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 289
          OnClick = FrmKMBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 58
        end
      end
      inline FrmMotorista: TFrmBusca
        Left = 343
        Top = 256
        Width = 313
        Height = 38
        Color = 16772332
        ParentColor = False
        TabOrder = 21
        inherited LTextoBusca: TLabel
          Left = 5
          Top = -1
          Width = 54
          Caption = 'Motorista'
          Font.Name = 'Arial'
        end
        inherited LUZOPEN: TShape
          Left = 273
        end
        inherited LUZMINUS: TShape
          Left = 291
        end
        inherited EdDescricao: TFlatEdit
          Left = 65
          Width = 209
        end
        inherited BTNOPEN: TBitBtn
          Left = 275
          OnClick = FrmMotoristaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 293
          OnClick = FrmMotoristaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Left = 6
          Width = 58
        end
      end
      inline FrmConta: TFrmBusca
        Left = 15
        Top = 328
        Width = 315
        Height = 38
        Color = 16772332
        ParentColor = False
        TabOrder = 22
        inherited LTextoBusca: TLabel
          Top = -1
          Width = 160
          Caption = 'Conta para lan'#231'amento:'
        end
        inherited LUZOPEN: TShape
          Left = 269
        end
        inherited LUZMINUS: TShape
          Left = 287
        end
        inherited EdDescricao: TFlatEdit
          Left = 61
          Width = 209
        end
        inherited BTNOPEN: TBitBtn
          Left = 271
          OnClick = FrmContaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 289
          OnClick = FrmContaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 58
        end
      end
      object btnConsultaPlaca: TBitBtn
        Left = 106
        Top = 33
        Width = 24
        Height = 24
        TabOrder = 1
        OnClick = btnConsultaPlacaClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEAA660CF3CD86F2CC84F2CC84AA660CFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDAA660CE5BD7AF5D599E5BD7AAA
          660CFEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0E5BD7AAA660CAA660CAA660CD8AA62FBF0DCFDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7F9E8C8AA660CF9E8C8AA660CF9
          E8C8FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6AA660CFCF2DFAA660CFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFAA660CFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    inherited Panel1: TPanel
      Top = 0
      Width = 666
      object DBText3: TDBText [0]
        Left = 192
        Top = 5
        Width = 467
        Height = 19
        Alignment = taRightJustify
        DataField = 'NOME'
        DataSource = DMPESSOA.DSVWCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  inherited PComunica: TPanel
    Left = 90
    Top = 123
  end
  inherited PConsulta: TPanel [2]
    Left = 6
    Top = 7
    Width = 669
    Height = 420
    object Bevel1: TBevel [0]
      Left = 8
      Top = 72
      Width = 561
      Height = 3
    end
    object Bevel2: TBevel [1]
      Left = 8
      Top = 68
      Width = 641
      Height = 3
    end
    object DBText1: TDBText [2]
      Left = 5
      Top = 50
      Width = 476
      Height = 23
      DataField = 'NOME'
      DataSource = DMPESSOA.DSVWCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText [3]
      Left = 7
      Top = 50
      Width = 618
      Height = 23
      Color = 5789784
      DataField = 'NOME'
      DataSource = DMPESSOA.DSVWCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBGridAnimal: TDBGrid [4]
      Left = 2
      Top = 128
      Width = 658
      Height = 269
      Color = 15794175
      Ctl3D = False
      FixedColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_EQUIPAMENTO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_CLIENTE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Title.Caption = 'N'#186' Animal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Nome do Animal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Title.Caption = 'Ra'#231'a'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COR'
          Title.Caption = 'Cor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Propriet'#225'rio'
          Width = 173
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO_GUINCHO'
          Title.Caption = 'Obs'
          Visible = True
        end>
    end
    object DBGObra: TDBGrid [5]
      Left = 2
      Top = 128
      Width = 661
      Height = 269
      Color = 15794175
      Ctl3D = False
      DataSource = DMPESSOA.DSALX
      FixedColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PLACA'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Obra'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO_GUINCHO'
          Title.Caption = 'Observa'#231#227'o'
          Visible = True
        end>
    end
    object DBGEletronico: TDBGrid [6]
      Left = 2
      Top = 128
      Width = 661
      Height = 269
      Color = 15794175
      Ctl3D = False
      DataSource = DMPESSOA.DEquip
      FixedColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CHASSI'
          Title.Caption = 'Num. S'#233'rie'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Title.Caption = 'Controle'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Equipamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Title.Caption = 'Voltagem'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Title.Caption = 'Modelo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBS'
          Title.Caption = 'Observa'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO_GUINCHO'
          Title.Caption = 'Local'
          Visible = True
        end>
    end
    object DBGridLocacao: TDBGrid [7]
      Left = 2
      Top = 128
      Width = 658
      Height = 269
      Hint = 'Pressione <ctrl+A> para ativar e <ctrl+D> para desativar'
      Ctl3D = False
      DataSource = DMPESSOA.DEquip
      FixedColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGridLocacaoDrawColumnCell
      OnKeyDown = DBGridLocacaoKeyDown
      OnTitleClick = DBGridLocacaoTitleClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'COD_SERVICO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Servi'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Equipamento'
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Title.Alignment = taCenter
          Title.Caption = 'Placa'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Title.Alignment = taCenter
          Title.Caption = 'Marca'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Title.Alignment = taCenter
          Title.Caption = 'Modelo'
          Width = 116
          Visible = True
        end>
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Top = 128
      Width = 658
      Height = 269
      PopupMenu = PopupMenu1
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnKeyDown = DBGridCadastroPadraoKeyDown
      OnTitleClick = DBGridCadastroPadraoTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_EQUIPAMENTO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NUM_FROTA'
          Title.Caption = 'N'#186' DA FROTA'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_CLIENTE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 265
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ANO'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COR'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CHASSI'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DTAQUISICAO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CONCESSIONARIA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MOTOR'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ANOMOTOR'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CHASSIMOTOR'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'KMATUAL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'UNIDRODAGEM'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MODELO_GUINCHO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ALTURAMAX'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PESOMAX'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SERVICO'
          Visible = False
        end>
    end
    inherited Painel: TPanel
      Left = 0
      Top = 0
      Width = 665
      inherited BtnFiltrar: TBitBtn
        Width = 143
        Caption = 'Transferir Propriet'#225'rio'
        OnClick = BtnFiltrarClick
      end
    end
    inherited GroupBox1: TGroupBox
      Top = 77
      Width = 662
      inherited EdNome: TFlatEdit
        Left = 155
        Width = 396
        Text = 'Nome/Descri'#231#227'o'
      end
      inherited BtnSelecionar: TBitBtn
        Left = 553
        Top = 19
        Width = 103
      end
      object EDFrota: TFlatEdit
        Left = 6
        Top = 19
        Width = 65
        Height = 25
        Hint = 
          'Digite aqui o numero da frota do ve'#237'culo, para ser localizado co' +
          'm maior facilidade.'
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
        Text = 'Frota'
        OnEnter = EDFrotaEnter
        OnExit = EDFrotaExit
        OnKeyDown = EDFrotaKeyDown
      end
      object MEPlaca: TFlatEdit
        Left = 74
        Top = 19
        Width = 78
        Height = 25
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorFlat = clWhite
        ParentColor = True
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Text = 'PLACA'
        OnEnter = MEPlaEnter
        OnExit = MEPlaExit
        OnKeyDown = MEPlaKeyDown
        OnKeyPress = MEPlaKeyPress
      end
    end
    object CBTodos: TCheckBox
      Left = 601
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Todos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = CBTodosClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 241
    Top = 272
    object AtivarDesativar1: TMenuItem
      Caption = 'Ativar/Desativar'
      OnClick = AtivarDesativar1Click
    end
  end
  object actMain: TActionList
    Images = DMPESSOA.il16x16
    Left = 536
    Top = 14
    object ActSearchPlaca: TAction
      ImageIndex = 1
      OnExecute = ActSearchPlacaExecute
      OnUpdate = ActSearchPlacaUpdate
    end
  end
end
