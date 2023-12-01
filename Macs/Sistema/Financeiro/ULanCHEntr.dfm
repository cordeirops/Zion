inherited FLanCHEntr: TFLanCHEntr
  Left = 394
  Top = 120
  Caption = 'Cheques'
  ClientHeight = 447
  ClientWidth = 690
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel
    Width = 670
    Height = 432
    inherited PLanUnic: TPanel
      Width = 668
      Height = 399
      inherited Label7: TLabel
        Left = 239
        Top = 112
      end
      inherited Label9: TLabel
        Left = 452
        Top = 111
      end
      inherited Label1: TLabel
        Top = 211
      end
      inherited Label2: TLabel
        Left = 353
        Top = 112
      end
      object Label8: TLabel [4]
        Left = 35
        Top = 112
        Width = 83
        Height = 20
        Caption = 'N'#186' Agencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = BitBtn1Click
      end
      object Label10: TLabel [5]
        Left = 137
        Top = 112
        Width = 68
        Height = 20
        Caption = 'N'#186' Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = BitBtn1Click
      end
      object Label12: TLabel [6]
        Left = 35
        Top = 160
        Width = 68
        Height = 20
        Caption = 'Emitente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = BitBtn1Click
      end
      object Label13: TLabel [7]
        Left = 465
        Top = 160
        Width = 79
        Height = 20
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = BitBtn1Click
      end
      object Label15: TLabel [8]
        Left = 315
        Top = 275
        Width = 68
        Height = 20
        Caption = 'Dt. Lan'#231'.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      inherited FrmBusca1: TFrmBusca
        Top = 23
        inherited EDCodigo: TFlatEdit
          OnEnter = FrmBusca1EDCodigoEnter
        end
      end
      inherited DBDTVENC: TDBColorEdit
        Left = 239
        Top = 131
        Width = 106
        TabOrder = 4
      end
      inherited DBNUMCHEQUEEMIT: TDBColorEdit
        Left = 452
        Top = 131
        Width = 141
        TabOrder = 6
      end
      inherited DBColorEdit3: TDBColorEdit
        Top = 230
        DataField = 'HISTORICO'
        TabOrder = 9
      end
      inherited DBColorEdit4: TDBColorEdit
        Left = 353
        Top = 131
        Width = 90
        DataField = 'VALOR'
        TabOrder = 5
      end
      inherited RGMOVIMENTO: TRadioGroup
        Top = 271
        TabOrder = 10
        OnClick = RGMOVIMENTOClick
        OnExit = RGMOVIMENTOExit
      end
      inline FrmBuscaBanco: TFrmBusca
        Left = 32
        Top = 64
        Width = 504
        Height = 40
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        inherited LTextoBusca: TLabel
          Width = 46
          Caption = 'Banco:'
        end
        inherited LUZOPEN: TShape
          Left = 455
        end
        inherited LUZMINUS: TShape
          Left = 473
        end
        inherited EdDescricao: TFlatEdit
          Left = 73
          Width = 383
          ColorFlat = 15395583
        end
        inherited BTNOPEN: TBitBtn
          Left = 456
          OnClick = FrmBuscaBancoBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 474
          Hint = 'Pressione para apagar o banco'
          OnClick = FrmBuscaBancoBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          ColorFlat = 14803455
          OnKeyPress = FrmBuscaBancoEDCodigoKeyPress
        end
      end
      object DBNUMAG: TDBColorEdit
        Left = 35
        Top = 131
        Width = 94
        Height = 22
        Ctl3D = False
        DataField = 'NUMAGENCIA'
        DataSource = DMBANCO.DChequeRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnExit = DBDTVENCExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBNUMCTA: TDBColorEdit
        Left = 137
        Top = 131
        Width = 94
        Height = 22
        Ctl3D = False
        DataField = 'NUMCONTA'
        DataSource = DMBANCO.DChequeRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnExit = DBDTVENCExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit5: TDBColorEdit
        Left = 35
        Top = 179
        Width = 422
        Height = 22
        Ctl3D = False
        DataField = 'EMITENTE'
        DataSource = DMBANCO.DChequeRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnExit = DBDTVENCExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit6: TDBColorEdit
        Left = 465
        Top = 179
        Width = 128
        Height = 22
        Ctl3D = False
        DataField = 'CPFEMIT'
        DataSource = DMBANCO.DChequeRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        OnExit = DBColorEdit6Exit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDtLanc: TColorMaskEdit
        Left = 315
        Top = 296
        Width = 82
        Height = 22
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        Text = 'EdDtLanc'
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object PDTDep: TPanel
        Left = 403
        Top = 264
        Width = 109
        Height = 65
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 12
        Visible = False
        object Label16: TLabel
          Left = 0
          Top = 12
          Width = 93
          Height = 20
          Caption = 'Dt. Dep'#243'sito:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EdDtDep: TColorMaskEdit
          Left = 1
          Top = 32
          Width = 82
          Height = 22
          Ctl3D = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = 'EdDtLanc'
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
    end
    inherited PLancmult: TPanel [1]
      Width = 668
      Height = 398
      Color = 16772332
      inherited LTextoBusca: TLabel
        Left = 9
        Top = 53
      end
      inherited Label3: TLabel
        Left = 9
        Top = 101
        Width = 70
        Caption = 'Vlr. Tot.:'
      end
      inherited Label4: TLabel
        Left = 90
        Top = 101
        Width = 61
        Caption = 'N'#186' fol.:'
      end
      inherited Label5: TLabel
        Left = 154
        Top = 101
        Width = 37
        Caption = 'Int.:'
      end
      inherited Label6: TLabel
        Left = 399
        Top = 53
      end
      object Label11: TLabel [5]
        Left = 206
        Top = 97
        Width = 49
        Height = 20
        Caption = 'N'#186' Ag.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = BitBtn1Click
      end
      object Label14: TLabel [6]
        Left = 263
        Top = 97
        Width = 68
        Height = 20
        Caption = 'N'#186' Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = BitBtn1Click
      end
      object Label17: TLabel [7]
        Left = 498
        Top = 50
        Width = 100
        Height = 20
        Caption = 'N'#186' 1'#186' Cheque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel [8]
        Left = 8
        Top = 148
        Width = 68
        Height = 20
        Caption = 'Emitente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = BitBtn1Click
      end
      object Label19: TLabel [9]
        Left = 446
        Top = 148
        Width = 35
        Height = 20
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = BitBtn1Click
      end
      inherited BitBtn1: TBitBtn
        Left = 399
        Top = 204
        TabOrder = 12
        OnClick = BitBtn1Click
      end
      inherited DBGParc: TDBGrid
        Top = 232
        Height = 158
        TabOrder = 13
      end
      inherited FrmBusca2: TFrmBusca
        Left = 8
        Top = 8
        Width = 601
        Color = 16772332
        inherited LUZOPEN: TShape
          Left = 554
        end
        inherited LUZMINUS: TShape
          Left = 575
        end
        inherited EdDescricao: TFlatEdit
          Width = 457
        end
        inherited BTNOPEN: TBitBtn
          Left = 555
        end
        inherited BTNMINUS: TBitBtn
          Left = 577
        end
        inherited EDCodigo: TFlatEdit
          Width = 92
        end
      end
      inherited EdHistorico: TFlatEdit
        Left = 9
        Top = 71
        Width = 387
      end
      inherited EdVlrTotal: TColorEditFloat
        Left = 8
        Top = 119
        Width = 77
        TabOrder = 4
      end
      inherited EdNumFolha: TSpinEdit
        Left = 89
        Top = 117
        TabOrder = 5
      end
      inherited EdIntervalo: TSpinEdit
        Left = 153
        Top = 117
        Width = 48
        TabOrder = 6
      end
      inherited EdPrimeiroCH: TMaskEdit
        Left = 399
        Top = 71
        TabOrder = 2
      end
      object EdNumAg: TFlatEdit
        Left = 207
        Top = 117
        Width = 51
        Height = 22
        ColorBorder = clBlack
        ColorFlat = 15794169
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object EdNumCta: TFlatEdit
        Left = 263
        Top = 117
        Width = 75
        Height = 22
        ColorBorder = clBlack
        ColorFlat = 15794169
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object EdNumPrimCh: TFlatEdit
        Left = 498
        Top = 71
        Width = 108
        Height = 22
        ColorBorder = clBlack
        ColorFlat = 15794169
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object EdPortador: TFlatEdit
        Left = 9
        Top = 168
        Width = 432
        Height = 22
        ColorBorder = clBlack
        ColorFlat = 15794169
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object Edfone: TFlatEdit
        Left = 445
        Top = 168
        Width = 162
        Height = 22
        ColorBorder = clBlack
        ColorFlat = 15794169
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      inline FrmBuscaBancoMult: TFrmBusca
        Left = 340
        Top = 99
        Width = 273
        Height = 40
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 9
        inherited LTextoBusca: TLabel
          Width = 46
          Caption = 'Banco:'
        end
        inherited EdDescricao: TFlatEdit
          Left = 57
          Width = 190
          ColorFlat = 15395583
        end
        inherited BTNOPEN: TBitBtn
          Left = 248
          OnClick = FrmBuscaBancoBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 296
          Hint = 'Pressione para apagar o banco'
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Width = 55
          ColorFlat = 14803455
          OnKeyPress = FrmBuscaBancoLMEDCodigoKeyPress
        end
      end
    end
    inherited Panel4: TPanel [2]
      Width = 668
      Height = 399
    end
    inherited Panel1: TPanel
      Width = 668
    end
  end
  inherited PComunica: TPanel
    Left = 85
    Top = 99
    TabOrder = 3
  end
  object PMovCheque: TPanel [2]
    Left = 80
    Top = 23
    Width = 530
    Height = 244
    BevelWidth = 3
    Caption = 'PMovCheque'
    TabOrder = 2
    Visible = False
    object FashionPanel1: TFashionPanel
      Left = 3
      Top = 3
      Width = 524
      Height = 237
      BevelOuter = bvNone
      Caption = 'FashionPanel1'
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
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Movimentando cheque'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object DBText1: TDBText
        Left = 145
        Top = 1
        Width = 65
        Height = 17
        Color = 12615680
        DataField = 'NUMCHEQUE'
        DataSource = DMBANCO.DWChequeRec
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label20: TLabel
        Left = 13
        Top = 184
        Width = 124
        Height = 16
        Caption = 'Destino do Cheque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 325
        Top = 184
        Width = 73
        Height = 16
        Caption = 'Data Mov.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object PCtaCor: TPanel
        Left = 10
        Top = 141
        Width = 569
        Height = 42
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 2
        Visible = False
        inline FrmCtaCor: TFrmBusca
          Left = 2
          Top = -3
          Width = 506
          Height = 36
          Color = 16772332
          ParentColor = False
          TabOrder = 0
          OnExit = FrmCtaCorExit
          inherited LTextoBusca: TLabel
            Width = 221
            Caption = 'Conta corrente para lan'#231'amento:'
          end
          inherited LUZOPEN: TShape
            Left = 455
          end
          inherited LUZMINUS: TShape
            Left = 473
          end
          inherited EdDescricao: TFlatEdit
            Left = 73
            Width = 383
            ColorFlat = 15794169
          end
          inherited BTNOPEN: TBitBtn
            Left = 456
            OnClick = FrmCtaCorBTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 474
            Hint = 'Pressione para apagar o banco'
            OnClick = FrmCtaCorBTNMINUSClick
          end
          inherited EDCodigo: TFlatEdit
            ColorFlat = 15597546
            OnKeyPress = FrmCtaCorEDCodigoKeyPress
          end
        end
      end
      object RGLANCAR: TRadioGroup
        Left = 12
        Top = 25
        Width = 281
        Height = 48
        Caption = 'Movimentar em '
        Columns = 2
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Caixa'
          'Conta corrente')
        ParentCtl3D = False
        TabOrder = 0
        OnClick = RGLANCARClick
        OnExit = RGLANCARExit
      end
      object BtnOkMov: TBitBtn
        Left = 392
        Top = 24
        Width = 128
        Height = 25
        Caption = 'Ok'
        TabOrder = 5
        OnClick = BtnOkMovClick
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
        Left = 392
        Top = 48
        Width = 128
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 6
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
      inline FrmConta: TFrmBusca
        Left = 10
        Top = 93
        Width = 510
        Height = 42
        Color = 16772332
        ParentColor = False
        TabOrder = 1
        inherited LTextoBusca: TLabel
          Width = 164
          Caption = 'Conta para Lan'#231'amento:'
        end
        inherited LUZOPEN: TShape
          Left = 455
        end
        inherited LUZMINUS: TShape
          Left = 473
        end
        inherited EdDescricao: TFlatEdit
          Left = 73
          Width = 383
        end
        inherited BTNOPEN: TBitBtn
          Left = 456
          OnClick = FrmContaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 474
          OnClick = FrmContaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          OnKeyPress = FrmContaEDCodigoKeyPress
        end
      end
      object EdDestinoChq: TFlatEdit
        Left = 14
        Top = 199
        Width = 302
        Height = 19
        ColorBorder = clSkyBlue
        ColorFlat = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object EdDtMovBaixa: TColorMaskEdit
        Left = 326
        Top = 199
        Width = 87
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object PCaixaLancamento: TPanel
        Left = 11
        Top = 141
        Width = 569
        Height = 42
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 7
        inline FrmCaixaLancamento: TFrmBusca
          Left = 2
          Top = -3
          Width = 506
          Height = 36
          Color = 16772332
          ParentColor = False
          TabOrder = 0
          inherited LTextoBusca: TLabel
            Width = 215
            Caption = 'Caixa para Dep'#243'sito do Dinheiro:'
          end
          inherited LUZOPEN: TShape
            Left = 455
          end
          inherited LUZMINUS: TShape
            Left = 473
          end
          inherited EdDescricao: TFlatEdit
            Left = 73
            Width = 383
            ColorFlat = 15794169
          end
          inherited BTNOPEN: TBitBtn
            Left = 456
            OnClick = FrmCaixaLancamentoBTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 474
            Hint = 'Pressione para apagar o banco'
            OnClick = FrmCaixaLancamentoBTNMINUSClick
          end
          inherited EDCodigo: TFlatEdit
            ColorFlat = 15597546
            OnKeyPress = FrmCaixaLancamentoEDCodigoKeyPress
          end
        end
      end
    end
  end
  inherited PConsulta: TPanel
    Width = 667
    inherited DBGridCadastroPadrao: TDBGrid
      Height = 257
      Columns = <
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMCHEQUE'
          Title.Caption = 'N'#186' Cheque'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMCTA'
          Title.Caption = 'N'#186' Conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMAG'
          Title.Caption = 'N'#186' Agencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANCO'
          Title.Caption = 'Banco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PORTADOR'
          Title.Caption = 'Portador'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTLANC'
          Title.Caption = 'Lanc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTVENC'
          Title.Caption = 'Prev. Mov.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Caption = 'Usu'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASSCONTA'
          Title.Caption = 'Conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTA'
          Visible = True
        end>
    end
    inherited Panel2: TPanel
      Width = 671
      Height = 409
      inherited TCConsultCH: TFlatTabControl
        Left = 13
        Top = 45
        Width = 652
        Height = 322
        inherited PMov: TPanel [0]
          Top = 18
          Width = 649
          Height = 302
          inherited DBGMOV: TDBGrid
            Top = 0
            Width = 649
            Height = 301
            DataSource = DMBANCO.DWChequeRec
            FixedColor = clSkyBlue
            OnDrawColumnCell = DBGMOVDrawColumnCell
            OnKeyDown = DBGMOVKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMCHEQUE'
                Title.Caption = 'N'#186' Cheque'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMITENTE'
                Title.Caption = 'Emitente'
                Width = 183
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
                Title.Caption = 'Prev. Mov.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTMOV'
                Title.Caption = 'Dt. Mov'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HISTORICO'
                Title.Caption = 'Hist'#243'rico'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANCO'
                Title.Caption = 'Banco'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMAG'
                Title.Caption = 'N'#186' Ag'#234'ncia'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMCTA'
                Title.Caption = 'N'#186' Conta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESTINO'
                Title.Caption = 'Destino'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CPFEMIT'
                Title.Caption = 'CPF Emitente'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Title.Caption = 'Usu'#225'rio'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLASSCONTA'
                Title.Caption = 'Conta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTACORLAN'
                Title.Caption = 'Cta Corrente (cheque lan'#231'ado)'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'DESTINO'
                Title.Caption = 'Destino'
                Visible = True
              end>
          end
        end
        inherited PVenc: TPanel [1]
          Width = 656
          Height = 304
          inherited DBGVENC: TDBGrid
            Width = 649
            Height = 303
            DataSource = DMBANCO.DWChequeRec
            FixedColor = clSkyBlue
            OnDrawColumnCell = DBGVENCDrawColumnCell
            OnKeyDown = DBGVENCKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMCHEQUE'
                Title.Caption = 'N'#186' Cheque'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMITENTE'
                Title.Caption = 'Emitente'
                Width = 183
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
                Title.Caption = 'Prev. Mov.'
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
                FieldName = 'HISTORICO'
                Title.Caption = 'Hist'#243'rico'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANCO'
                Title.Caption = 'Banco'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMAG'
                Title.Caption = 'N'#186' Agencia'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMCTA'
                Title.Caption = 'Cta. Corrente'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CPFEMIT'
                Title.Caption = 'CPF Emitente'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Title.Caption = 'Usu'#225'rio'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESTINO'
                Title.Caption = 'Destino'
                Visible = True
              end>
          end
        end
        inherited PNMov: TPanel [2]
          Width = 650
          Height = 305
          inherited DBGNMOV: TDBGrid
            Width = 649
            Height = 304
            DataSource = DMBANCO.DWChequeRec
            FixedColor = clSkyBlue
            OnDrawColumnCell = DBGNMOVDrawColumnCell
            OnKeyDown = DBGNMOVKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMCHEQUE'
                Title.Caption = 'N'#186' cheque'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMITENTE'
                Title.Caption = 'Emitente'
                Width = 183
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
                Title.Caption = 'Prev. Mov.'
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
                FieldName = 'HISTORICO'
                Title.Caption = 'Hist'#243'rico'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANCO'
                Title.Caption = 'Banco'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMAG'
                Title.Caption = 'N'#186' Agencia'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMCTA'
                Title.Caption = 'Conta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESTINO'
                Title.Caption = 'Destino'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CPFEMIT'
                Title.Caption = 'CPF Emitente'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Title.Caption = 'Usu'#225'rio'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESTINO'
                Title.Caption = 'Destino'
                Visible = True
              end>
          end
        end
      end
      inherited PPesquisa: TPanel
        Width = 664
        Height = 42
        inherited GroupBox6: TGroupBox
          Left = 1
          Width = 88
          Height = 39
          inherited EDNUMCHQ: TColorMaskEdit
            Width = 80
            Height = 20
          end
        end
        inherited GroupBox10: TGroupBox
          Left = 93
          Width = 92
          Height = 39
          inherited EDLANC: TColorMaskEdit
            Height = 21
          end
        end
        inherited GroupBox11: TGroupBox
          Left = 188
          Height = 39
          inherited EDVENC: TColorMaskEdit
            Height = 22
          end
        end
        inherited GroupBox8: TGroupBox
          Left = 378
          Width = 158
          Height = 39
          inherited EDHIST: TColorMaskEdit
            Width = 152
            Height = 22
          end
        end
        inherited EDMOV: TGroupBox
          Left = 283
          Height = 39
          inherited EdDtMov: TColorMaskEdit
            Height = 22
          end
        end
        object GroupBox2: TGroupBox
          Left = 543
          Top = 2
          Width = 114
          Height = 39
          Caption = 'Emitente'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          object EDEmitente: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 103
            Height = 24
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnKeyPress = EDEmitenteKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
    end
    inherited GroupBox1: TGroupBox
      Left = 15
      Top = -6
      Width = 581
      Height = 33
    end
    inherited Painel: TPanel
      Left = 6
      Width = 619
      inherited BtnNovo: TBitBtn
        Width = 95
      end
      inherited BtnApagar: TBitBtn
        Left = 96
        Width = 95
      end
      inherited BtnConsultar: TBitBtn
        Left = 190
        Width = 95
      end
      inherited BtnRelatorio: TBitBtn
        Left = 284
        Width = 95
      end
      inherited BtnFiltrar: TBitBtn
        Visible = False
      end
      object BtnMovimentar: TBitBtn
        Left = 378
        Top = 2
        Width = 112
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione para efetuar a movimenta'#231#227'o do lan'#231'amento selecionado'
        Caption = 'Movimentar - F9'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnMovimentarClick
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
      object BtnTroca: TBitBtn
        Left = 489
        Top = 2
        Width = 112
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione para efetuar cancelamento do lan'#231'amento selecionado'
        Caption = 'Cancelar Mov. '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BtnTrocaClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777770000000000000007777747770FFFFFF000000007777
          744770F8888F000000007444444470FFFFFF000000007777744770F8888F0000
          00007777747770FFFFFF000000007777777770F8888F000000007770000070FF
          FFFF000000007770FFF07000000000000000700000F0777777777000000070FF
          F0F0777777777000000070F8F000777777777000000070F8F007777777777000
          000070FF00777777777770000000700007777777777770000000777777777777
          777770000000}
      end
    end
    inherited EDTotal: TFloatEdit
      Left = 428
      Top = 398
    end
    object Panel3: TPanel
      Left = 208
      Top = 448
      Width = 185
      Height = 41
      Caption = 'Panel3'
      TabOrder = 5
    end
  end
  inherited PMNovo: TPopupMenu
    Left = 350
    Top = 65517
  end
end
