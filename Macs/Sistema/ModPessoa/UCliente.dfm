inherited FCliente: TFCliente
  Left = 120
  Top = 64
  Caption = 'FCliente'
  ClientHeight = 581
  ClientWidth = 780
  Scaled = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Top = 4
    Height = 574
    inherited Panel4: TPanel
      Top = 28
      Height = 546
      object Label83: TLabel [0]
        Left = 630
        Top = 526
        Width = 129
        Height = 13
        Caption = 'Obrigat'#243'rios para NF-e'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Shape4: TShape [1]
        Left = 616
        Top = 526
        Width = 12
        Height = 12
        Brush.Color = 13421823
      end
      inherited PTipoPessoa: TPanel
        Left = 240
        Top = 8
      end
      object PFichaOtica: TPanel [3]
        Left = 9
        Top = 29
        Width = 751
        Height = 365
        BevelOuter = bvNone
        Color = 13750737
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Visible = False
        object Panel5: TPanel
          Left = 113
          Top = 203
          Width = 524
          Height = 158
          BevelInner = bvLowered
          Color = 14933717
          TabOrder = 0
          object Label48: TLabel
            Left = 8
            Top = 25
            Width = 30
            Height = 16
            Caption = 'L OD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 8
            Top = 49
            Width = 29
            Height = 16
            Caption = 'L OE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Shape7: TShape
            Left = 4
            Top = 67
            Width = 515
            Height = 2
          end
          object Label51: TLabel
            Left = 24
            Top = 3
            Width = 62
            Height = 16
            Caption = 'Esf'#233'rico:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label52: TLabel
            Left = 152
            Top = 3
            Width = 70
            Height = 16
            Caption = 'Cilindrico:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label53: TLabel
            Left = 264
            Top = 3
            Width = 35
            Height = 16
            Caption = 'Eixo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label54: TLabel
            Left = 360
            Top = 3
            Width = 37
            Height = 16
            Caption = 'DNP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label55: TLabel
            Left = 448
            Top = 3
            Width = 45
            Height = 16
            Caption = 'Altura:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Shape8: TShape
            Left = 41
            Top = 16
            Width = 1
            Height = 108
          end
          object Label56: TLabel
            Left = 8
            Top = 81
            Width = 32
            Height = 16
            Caption = 'P OD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label57: TLabel
            Left = 8
            Top = 105
            Width = 31
            Height = 16
            Caption = 'P OE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Shape9: TShape
            Left = 135
            Top = 16
            Width = 1
            Height = 108
          end
          object Shape10: TShape
            Left = 232
            Top = 16
            Width = 1
            Height = 108
          end
          object Shape12: TShape
            Left = 328
            Top = 16
            Width = 1
            Height = 108
          end
          object Shape13: TShape
            Left = 424
            Top = 16
            Width = 1
            Height = 108
          end
          object Label58: TLabel
            Left = 80
            Top = 128
            Width = 54
            Height = 16
            Caption = 'Adi'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEsferLOD: TDBColorEdit
            Left = 45
            Top = 21
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ESFERLOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit37: TDBColorEdit
            Left = 45
            Top = 45
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ESFERLOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit38: TDBColorEdit
            Left = 141
            Top = 21
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'CILINDLOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit39: TDBColorEdit
            Left = 141
            Top = 45
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'CILINDLOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit40: TDBColorEdit
            Left = 237
            Top = 21
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'EIXOLOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit41: TDBColorEdit
            Left = 237
            Top = 45
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'EIXOLOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit42: TDBColorEdit
            Left = 333
            Top = 21
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'DNPLOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit43: TDBColorEdit
            Left = 333
            Top = 45
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'DNPLOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit44: TDBColorEdit
            Left = 429
            Top = 21
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ALTURALOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit45: TDBColorEdit
            Left = 429
            Top = 45
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ALTURALOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit10: TDBColorEdit
            Left = 45
            Top = 77
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ESFERPOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 10
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit14: TDBColorEdit
            Left = 45
            Top = 101
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ESFERPOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 15
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit27: TDBColorEdit
            Left = 141
            Top = 77
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'CILINDPOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit30: TDBColorEdit
            Left = 141
            Top = 101
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'CILINDPOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 16
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit31: TDBColorEdit
            Left = 237
            Top = 77
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'EIXOPOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 12
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit32: TDBColorEdit
            Left = 237
            Top = 101
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'EIXOPOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 17
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit33: TDBColorEdit
            Left = 333
            Top = 77
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'DNPPOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 13
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit34: TDBColorEdit
            Left = 333
            Top = 101
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'DNPPOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 18
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit35: TDBColorEdit
            Left = 428
            Top = 77
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ALTURAPOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 14
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit46: TDBColorEdit
            Left = 428
            Top = 101
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ALTURAPOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 19
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit51: TDBColorEdit
            Left = 141
            Top = 125
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ADICAO'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 20
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BitBtn4: TBitBtn
            Left = 332
            Top = 128
            Width = 89
            Height = 25
            Caption = '&Salvar'
            TabOrder = 21
            OnClick = BitBtn4Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              555555555555555555555555555555555555555555FF55555555555559055555
              55555555577FF5555555555599905555555555557777F5555555555599905555
              555555557777FF5555555559999905555555555777777F555555559999990555
              5555557777777FF5555557990599905555555777757777F55555790555599055
              55557775555777FF5555555555599905555555555557777F5555555555559905
              555555555555777FF5555555555559905555555555555777FF55555555555579
              05555555555555777FF5555555555557905555555555555777FF555555555555
              5990555555555555577755555555555555555555555555555555}
            NumGlyphs = 2
          end
        end
        object DBServOt: TDBGrid
          Left = 4
          Top = 7
          Width = 741
          Height = 191
          Color = 16121836
          Ctl3D = False
          DataSource = DMPESSOA.DSALX
          FixedColor = 11039232
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnCellClick = DBServOtCellClick
          OnKeyUp = DBServOtKeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMPED'
              Title.Caption = 'N'#186
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTPEDVEN'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_INTERNO'
              Title.Caption = 'C'#243'd:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Title.Caption = 'Marca'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FABRICANTE'
              Title.Caption = 'Fabricante'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODPRODFABR'
              Title.Caption = 'C'#243'd.: Fab.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDEPROD'
              Title.Caption = 'Qtd.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCPRO'
              Title.Caption = 'Desc($):'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALUNIT'
              Title.Caption = 'Vlr. Vend.:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORTOTAL'
              Title.Caption = 'Vlr. Total'
              Visible = True
            end>
        end
      end
      inherited TCPessoa: TFlatTabControl
        Height = 509
        Tabs.Strings = (
          '&Principal'
          'C&omplemento'
          '&Financeiro'
          '&F&icha '#211'tica'
          '&Hist'#243'rico')
        inherited PPrincipal: TPanel
          Left = 2
          Width = 749
          Height = 491
          inherited Label14: TLabel
            Left = 322
            Top = 86
          end
          inherited Label15: TLabel
            Left = 126
            Top = 86
          end
          inherited Label17: TLabel
            Left = 11
            Top = 86
          end
          inherited Label20: TLabel
            Left = 173
            Top = 120
            Width = 61
            Caption = 'Dt. Cad.:'
          end
          object Label47: TLabel [4]
            Left = 585
            Top = 319
            Width = 160
            Height = 13
            Caption = #218'lt. altera'#231#227'o realizada por:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object LUsuarioAltera: TLabel [5]
            Left = 734
            Top = 332
            Width = 12
            Height = 13
            Alignment = taRightJustify
            Caption = '...'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel [6]
            Left = 665
            Top = 306
            Width = 81
            Height = 14
            Caption = 'INFORMA'#199#213'ES:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited LProximidade: TLabel
            Left = 270
            Top = 121
          end
          object Label19: TLabel [8]
            Left = 594
            Top = 121
            Width = 72
            Height = 16
            Caption = 'Multa (%):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel [9]
            Left = 672
            Top = 121
            Width = 70
            Height = 16
            Caption = 'Juros (%):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object LTextoBusca: TLabel [10]
            Left = 13
            Top = 155
            Width = 31
            Height = 16
            Caption = 'Obs:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel [11]
            Left = 353
            Top = 154
            Width = 123
            Height = 16
            Caption = 'Endere'#231'o entrega:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel [12]
            Left = 353
            Top = 190
            Width = 53
            Height = 16
            Caption = 'C'#225'lculo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          inherited lbVerMapa: TLabel
            Left = 507
            Top = 88
          end
          object Label61: TLabel [14]
            Left = 414
            Top = 190
            Width = 62
            Height = 16
            Caption = 'Dia Venc.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          inherited LBENDNUM: TLabel
            Left = 672
            Top = 86
          end
          inherited Label68: TLabel
            Left = 52
            Top = 88
          end
          object Label69: TLabel [17]
            Left = 600
            Top = 345
            Width = 140
            Height = 16
            Caption = 'Frequ'#234'ncia de Venda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label76: TLabel [18]
            Left = 711
            Top = 363
            Width = 27
            Height = 16
            Caption = 'Dias'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label80: TLabel [19]
            Left = 486
            Top = 189
            Width = 98
            Height = 16
            Caption = 'Desconto (%):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object lbEmailPadrao: TLabel [20]
            Left = 14
            Top = 192
            Width = 222
            Height = 16
            Caption = 'E-mail Padr'#227'o para Envio de NF-e'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label81: TLabel [21]
            Left = 628
            Top = 240
            Width = 102
            Height = 14
            Caption = 'Contribuinte de ICMS:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label82: TLabel [22]
            Left = 12
            Top = 120
            Width = 83
            Height = 16
            Caption = 'Tel. Principal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox13: TGroupBox [23]
            Left = 608
            Top = 199
            Width = 137
            Height = 41
            Caption = 'Lim. de Cr'#233'dito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 26
            object DBColorEdit58: TDBColorEdit
              Left = 9
              Top = 15
              Width = 119
              Height = 22
              DataField = 'LIM_CRED'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              FocusColor = clTan
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object GroupBox14: TGroupBox [24]
            Left = 608
            Top = 159
            Width = 137
            Height = 40
            Caption = 'Cr'#233'd. de antecipa'#231#245'es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 22
            object DBColorEdit53: TDBColorEdit
              Left = 10
              Top = 16
              Width = 119
              Height = 22
              DataField = 'VLRCREDITO'
              DataSource = DMPESSOA.DSPessoa
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object DBColorEdit63: TDBColorEdit [25]
            Left = 487
            Top = 206
            Width = 97
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'DESCONTO'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 20
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit60: TDBColorEdit [26]
            Left = 414
            Top = 207
            Width = 69
            Height = 22
            Ctl3D = True
            DataField = 'DIAVENCIMENTO'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 9
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
            OnKeyPress = DBColorEdit60KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit56: TDBColorEdit [27]
            Left = 353
            Top = 208
            Width = 56
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'TAMANHO'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 18
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBEMAILPADRAO: TDBColorEdit [28]
            Left = 13
            Top = 208
            Width = 332
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'EMAILPADRAO'
            DataSource = DMPESSOA.DSPessoa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 34
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit55: TDBColorEdit [29]
            Left = 353
            Top = 171
            Width = 187
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'ENDENTRAGA'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit54: TDBColorEdit [30]
            Left = 13
            Top = 171
            Width = 335
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'OBS'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 17
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object PNovaTabela: TPanel [31]
            Left = 156
            Top = 334
            Width = 248
            Height = 65
            Color = clActiveCaption
            TabOrder = 32
            Visible = False
            object FashionPanel4: TFashionPanel
              Left = 2
              Top = 2
              Width = 244
              Height = 61
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
              TitleFont.Color = clWhite
              TitleFont.Height = -13
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold]
              Title = 'Adicionar Nova Tabela de Pre'#231'o'
              LineWidth = 0
              LineColor = clBlack
              Theme = ttCustom
              object EdNovaTabela: TEdit
                Left = 8
                Top = 24
                Width = 193
                Height = 24
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                MaxLength = 15
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
              end
              object BitBtn9: TBitBtn
                Left = 208
                Top = 25
                Width = 28
                Height = 25
                Hint = 
                  'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                  'na lista (ALT + I)'
                Caption = 'Ok'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = BitBtn9Click
                Layout = blGlyphRight
                Spacing = 10
              end
              object BitBtn10: TBitBtn
                Left = 225
                Top = 4
                Width = 15
                Height = 14
                Hint = 
                  'Pressione para remover o produto selecionado na lista da mesma (' +
                  'ALT + E)'
                Caption = 'X'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = BitBtn10Click
                Layout = blGlyphRight
                Spacing = 10
              end
            end
          end
          inherited FrmRegiao: TFrmBusca [32]
            Left = 276
            Top = 297
            Width = 269
            Height = 36
            TabOrder = 15
            inherited LUZOPEN: TShape
              Left = 243
            end
            inherited LUZMINUS: TShape
              Left = 85
            end
            inherited EdDescricao: TFlatEdit
              Left = 35
              Width = 210
              TabOrder = 2
            end
            inherited BTNOPEN: TBitBtn
              Left = 245
              TabOrder = 3
            end
            inherited BTNMINUS: TBitBtn
              Left = 87
              TabOrder = 0
              Visible = False
            end
            inherited EDCodigo: TFlatEdit
              Width = 31
              TabOrder = 1
            end
          end
          inherited DBDATACAD: TDBColorEdit [33]
            Left = 172
            Top = 136
            Width = 77
            MaxLength = 10
            TabOrder = 6
          end
          inherited FrmBusca1: TFrmBusca [34]
            Top = 233
            Width = 266
            Height = 33
            TabOrder = 10
            inherited LUZOPEN: TShape
              Left = 235
            end
            inherited LUZMINUS: TShape
              Left = 83
            end
            inherited EdDescricao: TFlatEdit
              Left = 33
              Width = 203
              ColorFlat = 15790335
              TabOrder = 1
            end
            inherited BTNOPEN: TBitBtn
              Left = 236
              TabOrder = 2
            end
            inherited BTNMINUS: TBitBtn
              Left = 84
              TabOrder = 3
              Visible = False
            end
            inherited EDCodigo: TFlatEdit
              Width = 30
              ColorFlat = 14803455
            end
          end
          inherited PPesFisica: TPanel [35]
            Left = 13
            Top = 4
            Height = 83
            inherited Label7: TLabel
              Left = 125
              Top = -2
            end
            inherited Label4: TLabel
              Left = 389
              Top = -2
            end
            inherited Label5: TLabel
              Left = 514
              Top = 42
            end
            inherited Label6: TLabel
              Left = 1
              Top = 41
            end
            inherited Label2: TLabel
              Left = 0
              Top = -2
            end
            inherited Label37: TLabel
              Left = 659
              Top = 42
              Width = 68
              Caption = 'Dt. Nasc.:'
            end
            inherited DBCPF: TDBColorEdit
              Left = 125
              Top = 17
              Width = 259
              Color = 15790335
              Font.Style = [fsBold]
            end
            inherited DBColorEdit1: TDBColorEdit
              Left = 389
              Top = 17
              Width = 182
            end
            inherited DBColorEdit3: TDBColorEdit
              Left = 514
              Top = 59
              Width = 141
              TabOrder = 6
            end
            inherited RGSexo: TRadioGroup
              Left = 573
              Top = -3
              Width = 154
              Font.Name = 'BankGothic Md BT'
            end
            inherited DBNOMEPF: TDBColorEdit
              Left = 0
              Top = 59
              Width = 512
              Color = 15790335
            end
            inherited DBINTERNO: TDBColorEdit
              Left = 0
              Top = 17
              Hint = #218'ltimo cliente cadastrado: '
              DataField = 'COD_INTERNO'
              DataSource = DMPESSOA.DSCliente
              ParentShowHint = False
              ShowHint = True
            end
            inherited DBColorEdit9: TDBColorEdit
              Left = 658
              Top = 59
              Width = 71
              TabOrder = 7
            end
            object cbVendaVista: TCheckBox
              Left = 126
              Top = 41
              Width = 138
              Height = 15
              Caption = 'SOMENTE A VISTA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
          end
          inherited PPesJuridica: TPanel [36]
            Top = 4
            Width = 743
            Height = 83
            inherited Label8: TLabel
              Left = 77
              Top = -2
            end
            inherited Label9: TLabel
              Left = 252
              Top = -2
            end
            inherited Label10: TLabel
              Left = 355
              Top = -2
            end
            inherited Label11: TLabel
              Top = 40
            end
            inherited Label12: TLabel
              Left = 553
              Top = -2
            end
            inherited Label13: TLabel
              Left = 317
              Top = 40
            end
            inherited Label45: TLabel
              Top = -2
              Width = 65
              Caption = 'C'#243'd. Int.:'
            end
            inherited Label3: TLabel
              Left = 668
              Top = 41
              Width = 70
              Caption = 'Funda'#231#227'o:'
            end
            object Label100: TLabel [8]
              Left = 464
              Top = -1
              Width = 41
              Height = 16
              Caption = 'IE ST:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            inherited DBCnpj: TDBColorEdit
              Left = 75
              Top = 17
              Width = 150
              Color = 15790335
            end
            inherited DBColorEdit5: TDBColorEdit
              Left = 252
              Top = 17
              Width = 101
              Color = 15790335
              TabOrder = 3
            end
            inherited DBColorEdit6: TDBColorEdit
              Left = 356
              Top = 17
              Width = 102
              TabOrder = 4
            end
            inherited DBColorEdit7: TDBColorEdit
              Left = 553
              Top = 17
              Width = 188
            end
            inherited DBColorEdit8: TDBColorEdit
              Width = 306
              Color = 15790335
              TabOrder = 7
            end
            inherited DBNOMEPJ: TDBColorEdit
              Left = 316
              Width = 346
              Color = 15790335
              TabOrder = 8
            end
            inherited DBCODINTERNOPJ: TDBColorEdit
              Top = 17
              Width = 65
              Hint = #218'ltimo cliente cadastrado: '
              DataSource = DMPESSOA.DSCliente
              ParentShowHint = False
              ShowHint = True
            end
            inherited DBColorEdit2: TDBColorEdit
              Left = 667
              Top = 60
              Width = 75
              TabOrder = 9
            end
            object DBColorEdit59: TDBColorEdit
              Left = 460
              Top = 17
              Width = 91
              Height = 22
              Ctl3D = True
              DataField = 'INS_ST'
              DataSource = DMPESSOA.DSPessoaJ
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object cbIndustria: TCheckBox
              Left = 668
              Top = -2
              Width = 73
              Height = 17
              TabStop = False
              Caption = 'Ind'#250'stria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
              OnClick = cbIndustriaClick
            end
            object btnBuscaCnpj: TBitBtn
              Left = 224
              Top = 16
              Width = 23
              Height = 22
              TabOrder = 2
              OnClick = btnBuscaCnpjClick
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
          inherited DBColorEdit4: TEdit [37]
            Left = 322
            Top = 101
            Width = 346
            Color = 15790335
            TabOrder = 4
          end
          inherited dbbairro: TDBColorEdit [38]
            Left = 125
            Top = 101
            Width = 193
            Color = 15790335
            TabOrder = 3
          end
          inherited PageControl1: TPageControl [39]
            Top = 369
            Width = 579
            Height = 120
            ActivePage = TabSheet2
            TabOrder = 21
            inherited TabSheet1: TTabSheet
              inherited GroupBox2: TGroupBox
                Width = 551
                Height = 99
                inherited Shape1: TShape
                  Left = 357
                  Top = 14
                end
                inherited Shape2: TShape
                  Left = 378
                  Top = 14
                end
                inherited DBGrid1: TDBGrid
                  Width = 400
                  Height = 51
                  TitleFont.Height = -9
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'DESCRICAO'
                      Title.Caption = 'Descri'#231#227'o do Telefone'
                      Width = 138
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CONTATO'
                      Title.Caption = 'Contato'
                      Width = 98
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'NUMERO'
                      Title.Caption = 'N'#250'mero'
                      Width = 123
                      Visible = True
                    end>
                end
                inherited Memo1: TMemo
                  Left = 405
                  Top = 8
                  Visible = False
                end
                inherited DBColorEdit47: TDBColorEdit
                  Left = 405
                  Top = 68
                  Visible = False
                end
                inherited edDescFone: TFlatEdit
                  Left = 1
                  Width = 133
                end
                inherited edContato: TFlatEdit
                  Left = 135
                  Width = 104
                end
                inherited edNumFone: TFlatEdit
                  Left = 240
                  Width = 115
                end
                inherited BtnAddFone: TBitBtn
                  Left = 360
                  Top = 17
                end
                inherited BtnRemFone: TBitBtn
                  Left = 380
                  Top = 16
                end
              end
            end
            inherited TabSheet2: TTabSheet
              inherited GroupBox3: TGroupBox
                Width = 561
                Height = 91
                inherited Shape456: TShape
                  Left = 516
                end
                inherited Shape7984: TShape
                  Left = 537
                end
                inherited DBGrid2: TDBGrid
                  Left = 2
                  Width = 556
                  Height = 47
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'DESCRICAO'
                      Title.Caption = 'Descri'#231#227'o'
                      Width = 131
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'EMAIL'
                      Title.Caption = 'E-Mail'
                      Width = 300
                      Visible = True
                    end>
                end
                inherited edDescEmail: TFlatEdit
                  Width = 123
                end
                inherited EdEmail: TFlatEdit
                  Left = 134
                  Width = 288
                end
                inherited btnAddEmail: TBitBtn
                  Left = 519
                end
                inherited btnRemEmail: TBitBtn
                  Left = 539
                end
              end
            end
          end
          inline FrmVendedor: TFrmBusca [40]
            Left = 276
            Top = 267
            Width = 272
            Height = 32
            Color = clWhite
            ParentColor = False
            TabOrder = 13
            inherited LTextoBusca: TLabel
              Top = -4
              Width = 67
              Caption = 'Vendedor:'
            end
            inherited LUZOPEN: TShape
              Left = 225
              Top = 8
            end
            inherited LUZMINUS: TShape
              Left = 244
              Top = 8
            end
            inherited EdDescricao: TFlatEdit
              Left = 34
              Top = 11
              Width = 193
              TabOrder = 1
            end
            inherited BTNOPEN: TBitBtn
              Left = 227
              Top = 11
              TabOrder = 2
              OnClick = FrmVendedorBTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 246
              Top = 11
              TabOrder = 3
              OnClick = FrmVendedorBTNMINUSClick
            end
            inherited EDCodigo: TFlatEdit
              Top = 11
              Width = 31
            end
          end
          inherited PEndereco: TPanel [41]
            TabOrder = 38
          end
          inherited FrmNatural: TFrmBusca [42]
            Left = 275
            Top = 233
            Width = 266
            Height = 33
            TabOrder = 11
            inherited LUZOPEN: TShape
              Left = 244
            end
            inherited LUZMINUS: TShape
              Left = 82
            end
            inherited EdDescricao: TFlatEdit
              Left = 33
              Width = 211
              TabOrder = 1
            end
            inherited BTNOPEN: TBitBtn
              Left = 245
              TabOrder = 2
            end
            inherited BTNMINUS: TBitBtn
              Left = 84
              TabOrder = 3
              Visible = False
            end
            inherited EDCodigo: TFlatEdit
              Width = 30
            end
          end
          inherited DBProximidade: TDBColorEdit [43]
            Left = 268
            Top = 136
            Width = 290
            TabOrder = 7
          end
          inherited DBColorEdit13: TDBColorEdit [44]
            Left = 13
            Top = 101
            Width = 108
            Color = 15790335
            TabOrder = 2
          end
          inherited DBEndNumero: TDBColorEdit
            Left = 672
            Top = 101
            Width = 75
            Color = 15790335
            TabOrder = 5
          end
          object CBATUALIZAR: TCheckBox
            Left = 581
            Top = 295
            Width = 166
            Height = 12
            Caption = 'MARCAR PARA ATUALIZAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 23
          end
          object CBINATIVO: TCheckBox
            Left = 603
            Top = 475
            Width = 126
            Height = 15
            Caption = 'CLIENTE INATIVO!!!'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 25
          end
          inline FrmFormPag: TFrmBusca
            Left = 11
            Top = 267
            Width = 258
            Height = 32
            Color = clWhite
            ParentColor = False
            TabOrder = 12
            inherited LTextoBusca: TLabel
              Top = -4
              Width = 145
              Caption = 'Forma de Pagamento:'
            end
            inherited LUZOPEN: TShape
              Left = 216
              Top = 8
            end
            inherited LUZMINUS: TShape
              Left = 234
              Top = 8
            end
            inherited EdDescricao: TFlatEdit
              Left = 33
              Top = 11
              Width = 184
              TabOrder = 1
            end
            inherited BTNOPEN: TBitBtn
              Left = 217
              Top = 11
              TabOrder = 2
              OnClick = FrmBusca2BTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 235
              Top = 11
              TabOrder = 3
              OnClick = FrmFormPagBTNMINUSClick
            end
            inherited EDCodigo: TFlatEdit
              Top = 11
              Width = 30
              OnKeyDown = FrmFormPagEDCodigoKeyDown
            end
          end
          object CBAtacadista: TCheckBox
            Left = 603
            Top = 458
            Width = 138
            Height = 15
            Caption = 'CLIENTE ATACADISTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 24
          end
          object DBColorEdit11: TDBColorEdit
            Left = 594
            Top = 136
            Width = 74
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'MULTA'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit52: TDBColorEdit
            Left = 672
            Top = 136
            Width = 74
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'JURO'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 16
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object CBSimplesNacional: TCheckBox
            Left = 603
            Top = 439
            Width = 134
            Height = 15
            Caption = 'SIMPLES NACIONAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 27
          end
          inline FrmTransp: TFrmBusca
            Left = 11
            Top = 297
            Width = 261
            Height = 36
            Color = clWhite
            ParentColor = False
            TabOrder = 14
            inherited LTextoBusca: TLabel
              Width = 106
              Caption = 'Transportadora:'
            end
            inherited LUZOPEN: TShape
              Left = 214
              Width = 23
            end
            inherited LUZMINUS: TShape
              Left = 236
            end
            inherited EdDescricao: TFlatEdit
              Left = 34
              Width = 181
              ColorFlat = clWhite
              TabOrder = 1
            end
            inherited BTNOPEN: TBitBtn
              Left = 216
              TabOrder = 2
              OnClick = FrmTransBTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 237
              TabOrder = 3
              OnClick = FrmTranspBTNMINUSClick
            end
            inherited EDCodigo: TFlatEdit
              Width = 31
              ColorFlat = clLightGreen
              OnKeyPress = FrmTransEDCodigoKeyPress
            end
          end
          object CBFinanceiro: TCheckBox
            Left = 613
            Top = 279
            Width = 137
            Height = 12
            Hint = 
              'Marque esta op'#231#227'o para fazer controle individual do financeiro d' +
              'este cliente.'
            Caption = 'Controle Financeiro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 28
          end
          object ContFrequencia: TCheckBox
            Left = 603
            Top = 383
            Width = 150
            Height = 17
            Hint = 
              'Marque esta op'#231#227'o para fazer controle individual de frequ'#234'ncia d' +
              'este cliente.'
            Caption = 'Ctrl. de Frequ'#234'ncia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 29
          end
          object EdFreqVenda: TEdit
            Left = 640
            Top = 361
            Width = 65
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 30
            Text = '0'
          end
          object PTabelaPreco: TPanel
            Left = 10
            Top = 333
            Width = 153
            Height = 35
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 31
            object Label79: TLabel
              Left = 1
              Top = -3
              Width = 105
              Height = 16
              Caption = 'Tabela de Pre'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 2
              Top = 13
              Width = 124
              Height = 22
              DataField = 'COD_TABPRECO'
              DataSource = DMPESSOA.DSCliente
              KeyField = 'COD_TABELAPRECO'
              ListField = 'DESCRICAO'
              ListSource = DMServ.DSTabPreco
              TabOrder = 0
            end
            object btnnovatabela: TBitBtn
              Left = 126
              Top = 12
              Width = 19
              Height = 23
              Hint = 'Adicione Nova Tabela de Pre'#231'o'
              Caption = '+'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = btnnovatabelaClick
            end
          end
          object cbTxEntrega: TCheckBox
            Left = 603
            Top = 401
            Width = 140
            Height = 17
            Caption = 'Taxa de entrega'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 33
          end
          object CBContribuinte: TCheckBox
            Left = 603
            Top = 420
            Width = 134
            Height = 15
            Caption = 'CONSUMIDOR FINAL'
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 35
          end
          object CbContribuinteIcms: TComboBox
            Left = 645
            Top = 254
            Width = 63
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 14
            ItemIndex = 1
            ParentFont = False
            TabOrder = 36
            Text = 'N'#227'o'
            Items.Strings = (
              'Sim'
              'N'#227'o'
              'Isento')
          end
          object DBTelPrincipal: TDBColorEdit
            Left = 13
            Top = 135
            Width = 145
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'TELREL'
            DataSource = DMPESSOA.DSPessoa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 40
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 37
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        inherited PCompletoFisica: TPanel
          Height = 491
          object Label1: TLabel [0]
            Left = 590
            Top = 25
            Width = 156
            Height = 18
            Caption = 'Tempo de Resid'#234'ncia:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel [1]
            Left = 8
            Top = 72
            Width = 126
            Height = 16
            Caption = 'Endere'#231'o de Entrega:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel [2]
            Left = 602
            Top = 72
            Width = 75
            Height = 16
            Caption = 'CADPRO/IE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label59: TLabel [3]
            Left = 437
            Top = 72
            Width = 93
            Height = 16
            Caption = 'Ramo Atividade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object labelctacontclipf: TLabel [4]
            Left = 14
            Top = 414
            Width = 89
            Height = 16
            Caption = 'Conta Cont'#225'bil:'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          inherited lbanexopf: TLabel
            Left = 128
            Top = 414
          end
          inherited RGCivil: TRadioGroup
            Font.Name = 'BankGothic Md BT'
          end
          inherited GBLOCALTRABALHO: TGroupBox
            Top = 113
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            TabOrder = 10
          end
          inherited GroupBox5: TGroupBox
            Width = 288
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            inherited Label26: TLabel
              Left = 117
              Width = 86
              Caption = 'Dt. Expedi'#231#227'o:'
            end
            inherited Label27: TLabel
              Left = 210
              Width = 70
              Caption = #211'rg'#227'o Exp.:'
            end
            inherited DBColorEdit19: TDBColorEdit
              Left = 116
              Width = 90
            end
            inherited DBColorEdit20: TDBColorEdit
              Left = 209
              Width = 74
            end
            inherited DBColorEdit21: TDBColorEdit
              Width = 108
              Font.Height = -11
            end
          end
          inherited GroupBox6: TGroupBox
            Top = 218
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            TabOrder = 7
          end
          inherited GroupBox7: TGroupBox
            Top = 315
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            TabOrder = 8
          end
          inherited btnanexopf: TButton
            Left = 581
            Top = 430
          end
          inherited eddocpf: TFlatEdit
            Left = 128
            Top = 430
            TabOrder = 11
          end
          object DBColorEdit36: TDBColorEdit
            Left = 591
            Top = 43
            Width = 154
            Height = 22
            Color = 15658717
            DataField = 'QTDTEMPORESID'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit48: TDBColorEdit
            Left = 7
            Top = 88
            Width = 426
            Height = 22
            Color = 15658717
            DataField = 'ENDENTRAGA'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit49: TDBColorEdit
            Left = 601
            Top = 88
            Width = 145
            Height = 22
            Color = 15658717
            DataField = 'CREDENCIAL'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit50: TDBColorEdit
            Left = 436
            Top = 88
            Width = 160
            Height = 22
            Color = 15658717
            DataField = 'RAMOATIV'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object edctacontclipf: TDBColorEdit
            Left = 14
            Top = 430
            Width = 103
            Height = 22
            Color = clWhite
            DataField = 'CONTA_CONTABIL'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object PHistorico: TPanel [2]
          Left = 1
          Top = 17
          Width = 751
          Height = 491
          BevelOuter = bvNone
          Color = 16772332
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          Visible = False
          object DRLabel1: TDRLabel
            Left = 16
            Top = 202
            Width = 119
            Height = 16
            Caption = 'Pedidos de Venda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object DRLabel2: TDRLabel
            Left = 440
            Top = 202
            Width = 107
            Height = 16
            Caption = 'Contas vencidas:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object DRLabel3: TDRLabel
            Left = 16
            Top = 301
            Width = 119
            Height = 16
            Caption = 'Ordem de Servi'#231'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object DRLabel4: TDRLabel
            Left = 598
            Top = 87
            Width = 96
            Height = 14
            Caption = 'M'#233'd. Dias Atraso:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object LMedia: TDRLabel
            Left = 698
            Top = 87
            Width = 44
            Height = 14
            Caption = 'N'#250'mero'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object MResumo: TMemo
            Left = 16
            Top = 19
            Width = 561
            Height = 83
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object DBGrid3: TDBGrid
            Left = 16
            Top = 218
            Width = 423
            Height = 79
            Color = 15794175
            Ctl3D = False
            DataSource = DMFINANC.DSALX
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
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
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
              end>
          end
          object DBGrid4: TDBGrid
            Left = 441
            Top = 218
            Width = 293
            Height = 79
            Color = 15794175
            Ctl3D = False
            DataSource = DMMACS.DSALX
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
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMPARC'
                Title.Caption = 'Parcela'
                Width = 73
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
                Title.Caption = 'Vencimento'
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
                FieldName = 'VALORPG'
                Title.Caption = 'Pago'
                Visible = True
              end>
          end
          object BitBtn5: TBitBtn
            Left = 597
            Top = 4
            Width = 131
            Height = 20
            Caption = 'Abrir Tela de vendas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = BitBtn5Click
          end
          object BitBtn6: TBitBtn
            Left = 597
            Top = 28
            Width = 131
            Height = 21
            Caption = 'Abrir Tela de Contas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = BitBtn6Click
          end
          object MOrdem: TMemo
            Left = 16
            Top = 115
            Width = 721
            Height = 83
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 5
          end
          object DBGrid5: TDBGrid
            Left = 16
            Top = 319
            Width = 721
            Height = 79
            Color = 15794175
            Ctl3D = False
            DataSource = DMServ.DWOrdem
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
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMERO'
                Title.Caption = 'N'#250'm. Ordem'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTABERT'
                Title.Caption = 'Dt. Abert.'
                Width = 69
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
                FieldName = 'STATUS'
                Title.Caption = 'Status'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORMAPAG'
                Title.Caption = 'Forma de Pagamento'
                Width = 321
                Visible = True
              end>
          end
          object BitBtn7: TBitBtn
            Left = 597
            Top = 54
            Width = 131
            Height = 21
            Caption = 'Imprimir Hist'#243'rico'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnClick = BitBtn7Click
          end
        end
        inherited PEspecifico: TPanel
          Left = 2
          Width = 749
          Height = 490
          object Label65: TLabel
            Left = 9
            Top = 6
            Width = 67
            Height = 16
            Caption = 'Informa'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label66: TLabel
            Left = 10
            Top = 47
            Width = 136
            Height = 16
            Caption = 'Observa'#231#227'o Financeira:'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox10: TGroupBox
            Left = 8
            Top = 313
            Width = 161
            Height = 84
            Caption = 'Lim. de Cr'#233'dito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object LIMCRED: TDBColorEdit
              Left = 3
              Top = 17
              Width = 155
              Height = 30
              DataField = 'LIM_CRED'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -21
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              FocusColor = clTan
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object BitBtn1: TBitBtn
              Left = 4
              Top = 47
              Width = 153
              Height = 34
              Caption = 'ca&lcular'
              TabOrder = 1
              OnClick = BitBtn1Click
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777700000000000000070777777777777707078078078078070707F07F07F07
                F07070777777777777707078078078078070707F07F07F07F070707777777777
                777070700000000077707070FFFFFFF077707070000000007770707777777777
                7770770000000000000777777777777777777777777777777777}
            end
          end
          object GroupBox8: TGroupBox
            Left = 8
            Top = 84
            Width = 161
            Height = 225
            Caption = 'RECEITAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object Label38: TLabel
              Left = 8
              Top = 124
              Width = 138
              Height = 18
              Caption = 'Honor'#225'rios Profiss.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 8
              Top = 174
              Width = 116
              Height = 18
              Caption = 'Outras Receitas:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 8
              Top = 26
              Width = 116
              Height = 18
              Caption = 'Sal'#225'rio Conjuge:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 8
              Top = 75
              Width = 107
              Height = 18
              Caption = 'Sal'#225'rio Cliente:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object SALCONJ: TDBColorEdit
              Left = 8
              Top = 43
              Width = 129
              Height = 24
              DataField = 'R_SAL_CONJ'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object SALCLI: TDBColorEdit
              Left = 8
              Top = 92
              Width = 129
              Height = 24
              DataField = 'R_SALARIO'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 1
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object HONPROF: TDBColorEdit
              Left = 8
              Top = 144
              Width = 129
              Height = 24
              DataField = 'R_HON_PROF'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 2
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object OUTREC: TDBColorEdit
              Left = 8
              Top = 193
              Width = 129
              Height = 24
              DataField = 'R_OUTREC'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 3
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object GroupBox9: TGroupBox
            Left = 168
            Top = 84
            Width = 161
            Height = 273
            Caption = 'DESPESAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label40: TLabel
              Left = 8
              Top = 24
              Width = 55
              Height = 18
              Caption = 'Aluguel:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label41: TLabel
              Left = 8
              Top = 74
              Width = 83
              Height = 18
              Caption = 'Resid'#234'ncia:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 8
              Top = 124
              Width = 54
              Height = 18
              Caption = 'Ve'#237'culo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label43: TLabel
              Left = 8
              Top = 174
              Width = 55
              Height = 18
              Caption = 'Fam'#237'lia:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 8
              Top = 224
              Width = 126
              Height = 18
              Caption = 'Outras Despesas:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DALUG: TDBColorEdit
              Left = 8
              Top = 43
              Width = 129
              Height = 24
              DataField = 'D_ALUGUEL'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DRESID: TDBColorEdit
              Left = 8
              Top = 92
              Width = 129
              Height = 24
              DataField = 'D_RESIDENCIA'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 1
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DVEIC: TDBColorEdit
              Left = 8
              Top = 144
              Width = 129
              Height = 24
              DataField = 'D_VEICULO'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 2
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DFAM: TDBColorEdit
              Left = 8
              Top = 193
              Width = 129
              Height = 24
              DataField = 'D_FAMILIAR'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 3
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object OUTDESP: TDBColorEdit
              Left = 8
              Top = 243
              Width = 129
              Height = 24
              DataField = 'D_OUTDESP'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 4
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object GroupBox11: TGroupBox
            Left = 336
            Top = 84
            Width = 409
            Height = 131
            Caption = 'Descri'#231#227'o dos bens do cliente '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object DBMemo1: TDBMemo
              Left = 8
              Top = 24
              Width = 393
              Height = 101
              DataField = 'BENS'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox12: TGroupBox
            Left = 334
            Top = 220
            Width = 411
            Height = 137
            Caption = 'Informa'#231#245'es Comerciais / Particularidades'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object DBMemo2: TDBMemo
              Left = 8
              Top = 24
              Width = 393
              Height = 109
              DataField = 'INFOCOM'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object DBColorEdit57: TDBColorEdit
            Left = 8
            Top = 24
            Width = 737
            Height = 22
            Color = clWhite
            DataField = 'INFORMACAO'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object GroupBox16: TGroupBox
            Left = 176
            Top = 360
            Width = 570
            Height = 81
            Caption = 'Pessoas autorizadas a comprar '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            object DBMemo3: TDBMemo
              Left = 8
              Top = 18
              Width = 555
              Height = 55
              DataField = 'AUTORIZADOS'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object DBColorEdit61: TDBColorEdit
            Left = 8
            Top = 62
            Width = 737
            Height = 22
            Color = clWhite
            DataField = 'OBSFINANCEIRA'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        inherited PComplementoJURIDICA: TPanel
          Height = 486
          object LInformacao: TLabel [0]
            Left = 8
            Top = 22
            Width = 67
            Height = 16
            Caption = 'Informa'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label67: TLabel [1]
            Left = 10
            Top = 71
            Width = 136
            Height = 16
            Caption = 'Observa'#231#227'o Financeira:'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object labelctacontclipj: TLabel [2]
            Left = 10
            Top = 223
            Width = 89
            Height = 16
            Caption = 'Conta Cont'#225'bil:'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          inherited lbanexopj: TLabel
            Left = 117
            Top = 222
          end
          inherited lbOrgaoPessoa: TLabel
            Left = 558
            Top = 36
          end
          inherited btnanexopj: TButton
            Left = 519
            Top = 238
            Width = 21
            TabOrder = 7
          end
          inherited eddocpj: TFlatEdit
            Left = 116
            Top = 238
            Width = 403
            TabOrder = 6
          end
          inherited CBOrgao_Municipal_Estadual: TCheckBox
            Left = 558
            Top = 60
            TabOrder = 0
          end
          inherited cbOrgao_Federal: TCheckBox
            Left = 558
            Top = 84
            TabOrder = 1
          end
          object DBInformacao: TDBColorEdit
            Left = 7
            Top = 43
            Width = 530
            Height = 22
            Color = clWhite
            DataField = 'INFORMACAO'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object GroupBox17: TGroupBox
            Left = 8
            Top = 120
            Width = 530
            Height = 96
            Caption = 'Pessoas autorizadas a comprar '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object DBMemo4: TDBMemo
              Left = 8
              Top = 18
              Width = 513
              Height = 72
              DataField = 'AUTORIZADOS'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object DBColorEdit62: TDBColorEdit
            Left = 8
            Top = 86
            Width = 530
            Height = 22
            Color = clWhite
            DataField = 'OBSFINANCEIRA'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object edctacontclipj: TDBColorEdit
            Left = 8
            Top = 238
            Width = 103
            Height = 22
            Color = clWhite
            DataField = 'CONTA_CONTABIL'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
    end
    inherited Panel1: TPanel
      Top = 1
      inherited DBNOMESUPER: TDBText
        Left = 209
        Width = 553
      end
      object Shape3: TShape [1]
        Left = 205
        Top = 4
        Width = 1
        Height = 21
      end
      object Shape5: TShape [2]
        Left = 202
        Top = 6
        Width = 1
        Height = 16
      end
      object Shape6: TShape [3]
        Left = 208
        Top = 6
        Width = 1
        Height = 16
      end
    end
    inherited btnDocumentos: TBitBtn
      Left = 567
      Top = 32
    end
  end
  object PRel: TPanel [1]
    Left = 232
    Top = 176
    Width = 377
    Height = 185
    BevelInner = bvLowered
    Color = 16772332
    TabOrder = 4
    Visible = False
    object LTituloRel: TLabel
      Left = 6
      Top = 12
      Width = 217
      Height = 16
      Caption = 'Filtros de Relat'#243'rio de Vendas.'
      Color = 16772332
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object BtGeraRel: TBitBtn
      Left = 96
      Top = 152
      Width = 85
      Height = 25
      Hint = 
        'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
        'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
        ' sua impress'#227'o.'
      Caption = '&Visualizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtGeraRelClick
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        18000000000040030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFF1F1F1F606060404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF7F80A070
        7F9F6F6F6F404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF6090BF50AFFF707F9F707070404040FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFFFFFFFF5090BF50AFFF707F9F7070702F2F2FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF5090
        BF50AFFF707F9F4F4F4F5050507070707070704F4F4F1F1F1FFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30607F606F80A0908FE0CF
        AFFFF0CFFFFFD0DFCFB0606060101010FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF6F504FFFD0B0FFF0CFFFFFD0FFFFEFFFFFFFE0DF
        D05F5F5FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E0C0AFFFEFC0FFF0C0FFFFD0FFFFF0FFFFFFFFFFD0707070FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C0FFDF9FFFE0BFFFFFD0
        FFFFD0FFFFD0FFFFD0A0907FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD0C0AFFFF0CFFFE0BFFFEFBFFFF0CFFFF0CFFFF0CF705F50
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FF
        EFDFFFFFEFFFE0BFFFE0B0FFEFCFDFB0A01F1F1FFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FD0CFBFF0E0BFF0E0BFCF
        AF9F202020FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF303030606060606060FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object BtCanRel: TBitBtn
      Left = 203
      Top = 152
      Width = 90
      Height = 25
      Hint = 
        'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
        'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
        ' sua impress'#227'o.'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtCanRelClick
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
    object GBData: TGroupBox
      Left = 14
      Top = 34
      Width = 249
      Height = 60
      Caption = 'Intervalo de datas'
      Color = 16772332
      Ctl3D = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 2
      object LDtIni: TLabel
        Left = 8
        Top = 16
        Width = 40
        Height = 13
        Caption = 'INICIAL:'
      end
      object LDtFim: TLabel
        Left = 128
        Top = 18
        Width = 33
        Height = 13
        Caption = 'FINAL:'
      end
      object EdDataIni: TMaskEdit
        Left = 8
        Top = 32
        Width = 113
        Height = 22
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object EdDataFim: TMaskEdit
        Left = 128
        Top = 32
        Width = 113
        Height = 22
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
      end
    end
    object RGPessoa: TRadioGroup
      Left = 272
      Top = 33
      Width = 97
      Height = 61
      Caption = 'Filtro '
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Adimplentes')
      TabOrder = 3
    end
    inline FrmCidade: TFrmBusca
      Left = 14
      Top = 103
      Width = 353
      Height = 45
      Color = 16772332
      ParentColor = False
      TabOrder = 4
      Visible = False
      inherited LTextoBusca: TLabel
        Left = 2
        Width = 44
        Caption = 'Cidade'
      end
      inherited LUZOPEN: TShape
        Left = 312
        Top = 14
      end
      inherited LUZMINUS: TShape
        Left = 333
        Top = 14
        Width = 20
      end
      inherited EdDescricao: TFlatEdit
        Left = 65
        Top = 17
        Width = 245
        Height = 20
        Font.Style = []
      end
      inherited BTNOPEN: TBitBtn
        Left = 312
        Top = 17
        Height = 20
        OnClick = FrmCidadeBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 331
        Top = 17
        Width = 20
        Height = 20
        OnClick = FrmCidadeBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Top = 17
        Width = 63
        Height = 20
      end
    end
  end
  object PListaCliente: TPanel [2]
    Left = 224
    Top = 147
    Width = 401
    Height = 305
    Caption = 'PListaCliente'
    Color = clGradientInactiveCaption
    TabOrder = 8
    object FashionPanel3: TFashionPanel
      Left = 2
      Top = 2
      Width = 397
      Height = 301
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
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Lista de vendas para Clientes'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object BtCancCli: TBitBtn
        Left = 212
        Top = 258
        Width = 107
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
        Caption = 'Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtCancCliClick
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
      object GroupBox18: TGroupBox
        Left = 14
        Top = 34
        Width = 249
        Height = 60
        Caption = 'Intervalo de datas'
        Color = 16772332
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 1
        object Label77: TLabel
          Left = 8
          Top = 16
          Width = 40
          Height = 13
          Caption = 'INICIAL:'
        end
        object Label78: TLabel
          Left = 128
          Top = 18
          Width = 33
          Height = 13
          Caption = 'FINAL:'
        end
        object EdDtInicial: TMaskEdit
          Left = 8
          Top = 32
          Width = 113
          Height = 22
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
        end
        object EdDtFinal: TMaskEdit
          Left = 128
          Top = 32
          Width = 113
          Height = 22
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object GroupBox19: TGroupBox
        Left = 8
        Top = 104
        Width = 377
        Height = 137
        Caption = 'Intervalo de Clientes'
        TabOrder = 2
        inline FrmBuscaCliInicial: TFrmBusca
          Left = 8
          Top = 23
          Width = 353
          Height = 42
          Color = 16772332
          ParentColor = False
          TabOrder = 0
          inherited LTextoBusca: TLabel
            Left = 2
            Width = 102
            Caption = 'Cliente inicial:'
            Font.Style = [fsBold]
          end
          inherited LUZOPEN: TShape
            Left = 312
            Top = 16
            Height = 22
          end
          inherited LUZMINUS: TShape
            Left = 333
            Top = 14
            Width = 20
          end
          inherited EdDescricao: TFlatEdit
            Left = 65
            Top = 17
            Width = 245
            Height = 20
            Font.Style = []
          end
          inherited BTNOPEN: TBitBtn
            Left = 311
            Top = 17
            Width = 20
            Height = 20
            OnClick = FrmBuscaCliInicialBTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 331
            Top = 17
            Width = 20
            Height = 20
            OnClick = FrmBuscaCliInicialBTNMINUSClick
          end
          inherited EDCodigo: TFlatEdit
            Top = 17
            Width = 63
            Height = 20
          end
        end
        inline FrmBuscaCliFinal: TFrmBusca
          Left = 8
          Top = 76
          Width = 353
          Height = 45
          Color = 16772332
          ParentColor = False
          TabOrder = 1
          inherited LTextoBusca: TLabel
            Left = 2
            Width = 90
            Caption = 'Cliente Final'
            Font.Style = [fsBold]
          end
          inherited LUZOPEN: TShape
            Left = 312
            Top = 14
          end
          inherited LUZMINUS: TShape
            Left = 333
            Top = 14
            Width = 20
          end
          inherited EdDescricao: TFlatEdit
            Left = 65
            Top = 17
            Width = 245
            Height = 20
            Font.Style = []
          end
          inherited BTNOPEN: TBitBtn
            Left = 311
            Top = 17
            Width = 20
            Height = 20
            OnClick = FrmBuscaCliFinalBTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 331
            Top = 17
            Width = 20
            Height = 20
            OnClick = FrmBuscaCliFinalBTNMINUSClick
          end
          inherited EDCodigo: TFlatEdit
            Top = 17
            Width = 63
            Height = 20
          end
        end
      end
      object BtImpCli: TBitBtn
        Left = 112
        Top = 258
        Width = 85
        Height = 25
        Hint = 
          'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
          'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
          ' sua impress'#227'o.'
        Caption = '&Visualizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BtImpCliClick
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          18000000000040030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFF1F1F1F606060404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF7F80A070
          7F9F6F6F6F404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF6090BF50AFFF707F9F707070404040FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFF5090BF50AFFF707F9F7070702F2F2FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF5090
          BF50AFFF707F9F4F4F4F5050507070707070704F4F4F1F1F1FFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30607F606F80A0908FE0CF
          AFFFF0CFFFFFD0DFCFB0606060101010FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF6F504FFFD0B0FFF0CFFFFFD0FFFFEFFFFFFFE0DF
          D05F5F5FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E0C0AFFFEFC0FFF0C0FFFFD0FFFFF0FFFFFFFFFFD0707070FFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C0FFDF9FFFE0BFFFFFD0
          FFFFD0FFFFD0FFFFD0A0907FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFD0C0AFFFF0CFFFE0BFFFEFBFFFF0CFFFF0CFFFF0CF705F50
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FF
          EFDFFFFFEFFFE0BFFFE0B0FFEFCFDFB0A01F1F1FFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FD0CFBFF0E0BFF0E0BFCF
          AF9F202020FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF303030606060606060FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      end
      object btLimpaData: TBitBtn
        Left = 267
        Top = 73
        Width = 20
        Height = 20
        Hint = 'Pressione para apagar as datas '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btLimpaDataClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
    end
  end
  object PEtqMala: TPanel [3]
    Left = 216
    Top = 27
    Width = 377
    Height = 441
    BorderStyle = bsSingle
    Color = 16772332
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 3
    object FashionPanel6: TFashionPanel
      Left = 4
      Top = 4
      Width = 365
      Height = 429
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
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Etiquetas p/ Mala Direta'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label70: TLabel
        Left = 10
        Top = 128
        Width = 49
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inline FrmBuscaNome: TFrmBusca
        Left = 8
        Top = 31
        Width = 353
        Height = 42
        Color = 16772332
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 47
          Caption = 'Nome:'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 312
          Top = 16
          Height = 22
        end
        inherited LUZMINUS: TShape
          Left = 333
          Top = 14
          Width = 20
        end
        inherited EdDescricao: TFlatEdit
          Left = 65
          Top = 17
          Width = 245
          Height = 20
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 311
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaNomeBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 331
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaNomeBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Top = 17
          Width = 63
          Height = 20
        end
      end
      inline FrmBuscaCid: TFrmBusca
        Left = 8
        Top = 79
        Width = 353
        Height = 45
        Color = 16772332
        ParentColor = False
        TabOrder = 1
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 55
          Caption = 'Cidade:'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 312
          Top = 14
        end
        inherited LUZMINUS: TShape
          Left = 333
          Top = 14
          Width = 20
        end
        inherited EdDescricao: TFlatEdit
          Left = 65
          Top = 17
          Width = 245
          Height = 20
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 311
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaCidBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 331
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaCidBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Top = 17
          Width = 63
          Height = 20
        end
      end
      object CBBAIRROETIQ: TComboBox
        Left = 16
        Top = 152
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 2
      end
      inline FrmBuscaUF: TFrmBusca
        Left = 8
        Top = 183
        Width = 353
        Height = 45
        Color = 16772332
        ParentColor = False
        TabOrder = 3
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 55
          Caption = 'Estado:'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 312
          Top = 14
        end
        inherited LUZMINUS: TShape
          Left = 333
          Top = 14
          Width = 20
        end
        inherited EdDescricao: TFlatEdit
          Left = 65
          Top = 17
          Width = 245
          Height = 20
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 311
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaUFBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 331
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaUFBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Top = 17
          Width = 63
          Height = 20
        end
      end
      object cbClienteSelecionado: TCheckBox
        Left = 8
        Top = 232
        Width = 233
        Height = 17
        Caption = 'Clientes Selecionado(s)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnExit = cbClienteSelecionadoExit
      end
      object GroupBox15: TGroupBox
        Left = 8
        Top = 264
        Width = 353
        Height = 121
        Caption = 'Configura'#231#227'o da Etiqueta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Label71: TLabel
          Left = 10
          Top = 24
          Width = 39
          Height = 13
          Caption = 'Linha:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label72: TLabel
          Left = 10
          Top = 56
          Width = 56
          Height = 13
          Caption = 'Margem:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label73: TLabel
          Left = 196
          Top = 24
          Width = 48
          Height = 13
          Caption = 'Altura: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label74: TLabel
          Left = 188
          Top = 56
          Width = 55
          Height = 13
          Caption = 'Largura:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label75: TLabel
          Left = 10
          Top = 88
          Width = 41
          Height = 13
          Caption = 'Fonte:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label84: TLabel
          Left = 167
          Top = 88
          Width = 77
          Height = 13
          Caption = 'Etq. p/ p'#225'g:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdLinha: TEdit
          Left = 72
          Top = 24
          Width = 81
          Height = 21
          TabOrder = 0
          Text = '8'
        end
        object EdMargem: TEdit
          Left = 72
          Top = 56
          Width = 81
          Height = 21
          TabOrder = 1
          Text = '10'
        end
        object EdAltura: TEdit
          Left = 248
          Top = 24
          Width = 81
          Height = 21
          TabOrder = 2
          Text = '5'
        end
        object EdLargura: TEdit
          Left = 248
          Top = 56
          Width = 81
          Height = 21
          TabOrder = 3
          Text = '40'
        end
        object EdFonte: TEdit
          Left = 72
          Top = 88
          Width = 81
          Height = 21
          TabOrder = 4
          Text = '10'
        end
        object EdQtdeEtqPagina: TEdit
          Left = 248
          Top = 88
          Width = 81
          Height = 21
          TabOrder = 5
          Text = '6'
        end
      end
      object BtnImpEtq: TBitBtn
        Left = 88
        Top = 402
        Width = 107
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para visualizar tela de relat'#243'rios'
        Caption = '&Imprimir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BtnImpEtqClick
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
      object BitBtn8: TBitBtn
        Left = 204
        Top = 402
        Width = 107
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
        Caption = 'Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = BitBtn8Click
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
    end
  end
  inherited PComunica: TPanel [4]
    Left = 194
    Top = 200
  end
  inherited PConsulta: TPanel [5]
    Top = 4
    Height = 574
    object LQtdCli: TLabel [0]
      Left = 712
      Top = 537
      Width = 56
      Height = 16
      Alignment = taRightJustify
      Caption = 'clientes.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lbCreditoCli: TLabel [1]
      Left = 571
      Top = 536
      Width = 29
      Height = 16
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object PAniversario: TPanel [2]
      Left = 349
      Top = 32
      Width = 284
      Height = 145
      BevelWidth = 3
      Caption = 'PAniversario'
      TabOrder = 4
      Visible = False
      object FashionPanel2: TFashionPanel
        Left = 4
        Top = 4
        Width = 277
        Height = 138
        BevelOuter = bvNone
        Caption = 'FashionPanel2'
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
        Title = 'Relat'#243'rio de Anivers'#225'rio'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttBlue
        object BitBtn2: TBitBtn
          Left = 40
          Top = 108
          Width = 75
          Height = 25
          Caption = 'Ok'
          TabOrder = 0
          OnClick = BitBtn2Click
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
          Left = 160
          Top = 108
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 1
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
        object GroupBox4: TGroupBox
          Left = 4
          Top = 61
          Width = 269
          Height = 41
          Caption = 'Escolha o m'#234's desejado'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object CBMes: TComboBox
            Left = 8
            Top = 14
            Width = 257
            Height = 24
            Color = 15658734
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ItemHeight = 16
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Items.Strings = (
              'TODOS'
              'Janeiro'
              'Fevereiro'
              'Mar'#231'o'
              'Abril'
              'Maio'
              'Junho'
              'Julho'
              'Agosto'
              'Setembro'
              'Outubro'
              'Novembro'
              'Dezembro')
          end
        end
        object RBCliente: TRadioButton
          Left = 56
          Top = 32
          Width = 73
          Height = 17
          Caption = 'Clientes'
          Checked = True
          TabOrder = 3
          TabStop = True
        end
        object RBConjuge: TRadioButton
          Left = 144
          Top = 32
          Width = 73
          Height = 17
          Caption = 'Conjuge'
          TabOrder = 4
        end
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid [3]
      Left = 8
      Top = 124
      Width = 760
      Height = 404
      Hint = 
        '<F10> Para inativar cliente. Somente ser'#225' possivel reativar clie' +
        'ntes com CPF/CNPJ'
      DataSource = DMPESSOA.DSVWCliente
      ParentShowHint = False
      PopupMenu = MenuSeparar
      ShowHint = True
      OnCellClick = DBGridCadastroPadraoCellClick
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'MARK'
          Title.Caption = 'M'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'Interno'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFCNPJ'
          Title.Caption = 'CPF/CNPJ'
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'TELREL'
          Title.Caption = 'Telefone'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Title.Caption = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELREL'
          Title.Caption = 'Telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAOSOCIAL'
          Title.Caption = 'Raz'#227'o Social'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox [4]
      Left = 233
      Top = 48
      Width = 537
      inherited EdNome: TFlatEdit
        Left = 89
        Width = 200
        TabOrder = 1
        OnKeyUp = EdNomeKeyUp
      end
      inherited BtnSelecionar: TBitBtn
        Left = 432
        Width = 101
        TabOrder = 3
      end
      inherited EdCodigo: TFlatEdit
        Width = 9
        Font.Color = clGray
        TabOrder = 4
        OnEnter = EdCodigoEnter
        OnExit = EdCodigoExit
        OnKeyUp = EdCodigoKeyUp
      end
      inherited EdCpf: TFlatEdit
        Left = 4
        Width = 83
        Font.Color = clGray
        TabOrder = 0
        Text = 'CPF/CNPJ'
        OnEnter = EdCpfEnter
        OnExit = EdCpfExit
        OnKeyUp = EdCpfKeyUp
      end
      object EdRazaoSocial: TFlatEdit
        Left = 290
        Top = 19
        Width = 141
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
        Text = 'Raz'#227'o Social'
        OnEnter = EdRazaoSocialEnter
        OnExit = EdRazaoSocialExit
        OnKeyDown = EdRazaoSocialKeyDown
        OnKeyUp = EdRazaoSocialKeyUp
      end
    end
    inherited Painel: TPanel
      inherited BtnNovo: TBitBtn
        Width = 100
      end
      inherited BtnApagar: TBitBtn
        Left = 101
        Width = 100
      end
      inherited BtnConsultar: TBitBtn
        Left = 200
        Width = 100
      end
      inherited BtnRelatorio: TBitBtn
        Left = 299
        Width = 100
      end
      inherited BtnFiltrar: TBitBtn
        Left = 398
        Width = 100
      end
      object btnEquip: TBitBtn
        Left = 497
        Top = 2
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para inserir um novo equipamento para o cli' +
          'ente selecionado'
        Caption = '&Equipamentos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnEquipClick
        Glyph.Data = {
          8E050000424D8E05000000000000360000002800000017000000130000000100
          18000000000058050000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBEBEBEAEAEAEBABABABFBFBF5F5F6041414D545456
          BFBFBFBCBCBCAEAEAEBCBCBCBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF8B8BAC1A1A48646464BFBFBF3C
          3C6600007F2B2B61BFBFBF7373731919407E7EA4BFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF4D4D9F0909
          9817174D3B3B4B21217B0E0E8F2222813B3B4B1C1C530808833E3EA4BFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBCBCBC
          7373733737870000A300005600007F0C0C8D7D7DFF1C1C9800007F1212573535
          9C2D2D8E737373B6B6B6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBF61616411116B0606483F3FCE4242C411114313138C7C7CFF39399C
          1313437878B66C6CD21C1C4F10106B53535DBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBF48484C00007F00007A2F2F6E8181ED7D7DCB2E
          2E874949875858874141C16565F300005A00006C00007F383846BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF6464945555CA3C3CD18585
          E28989D1626262B1B1B182828257575717172E4A4AC47C7CE66F6FBA5656B74A
          4A4CBFBFBFB6B6B69E9E9EBDBDBDBFBFBFBFBFBFBFBFBF000000BFBFBFBCBCBE
          7171A532326A3333B27F7FA07F7F7FDADADAA1A1A16C6C6C3D3D3D2B2B957F7F
          DE121E27003F3F383F3FBFBFBF5D69692351517D8080BFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBF48485C6161C27575F99191A1DADADAA1A1A16C6C6C
          00005A7171F31A1ACB001E341E9B9B192B2B2945451C7575078181434A4ABFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF55559F8080EB6F6F93444466DE
          DEDEA1A1A16C6C6C00001C1414847F7FFF2E46577EFFFF0D3A3A007F7F229090
          369A9A282F2F636363BCBCBCBFBFBF000000BFBFBFBFBFBFBFBFBFABABB95353
          A29595A6A6A6A6A0A0A0A3A3A37D7D7D4C5C5C44BED13150AF209EA981FFFF3B
          8D8D244F4F75DDDD6CC2C20A4040167777565959BFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFB9B9B9B1B1B1B7B7B79E9E9E8FAAAA7AF5F57EB4
          B4266F6F326F6F496F6F3FC1C167F0F0004F4F007777007F7F484C4CBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF76AAAA7EC9C950D9D9
          8CFFFF89B4B4696969CACACA8D8D8D5757572836363EC2C26AF0F071B3B35097
          976B6B6BBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB8
          BCBC86ABAB2F68687BD7D7A0A0A0737373DFDFDF9C9C9C6161613A3A3A2FADAD
          7AD1D1343838797979BCBCBCBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF4463637DD1D177F5F58EA1A1DFDFDF9C9C9C61
          616100717180FAFA26CACA434C4CBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF5CA6A684E2E25C7575536A
          6AE2E2E29C9C9C6464640B26262E888882DFDF494E4EBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFAFB9B9
          65A2A2ABB4B4AEAEAE9E9E9EABABAB7979797171719E9F9F525353B5B5B5BFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBABABAAEAEAEABABABA3A3A3A5A5A5BFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
      end
      object BtnObra: TButton
        Left = 596
        Top = 2
        Width = 81
        Height = 25
        Caption = 'Obra'
        TabOrder = 6
        OnClick = BtnObraClick
      end
      object btnhelp: TBitBtn
        Left = 676
        Top = 2
        Width = 90
        Height = 25
        Cursor = crHandPoint
        Hint = '[F1] - Clique aqui para obter ajuda do manual'
        Caption = 'Ajuda - F1'
        DragCursor = crHandPoint
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = btnhelpClick
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F003000000000000000000000000000000000000F2F2F2F2F2F2
          F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
          F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F20000F2F2F2F0F0F0F0F0F0F0F0F0F0F0
          F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
          F0F0F0F0F0F2F2F20000F2F2F2F0F0F0F0F0F0F0F0F0F0F0F0D9D9E0B9BCBBA2
          A6A48D92908D9290A2A6A4B9BCBBD9D9E0F0F0F0F0F0F0F0F0F0F0F0F0F2F2F2
          0000F2F2F2F0F0F0F0F0F0EFEFEF8182BA1919AAA9ADC7D0D5D3E0E4E2E0E4E2
          CFD4D2A8ABC61818AA8182B9EFEFEFF0F0F0F0F0F0F2F2F20000F2F2F2F0F0F0
          EFEFEF3F41AA3737C28E8EF49FA1EDD8DFDBD8DEDBD8DEDBD8DEDB9B9EEC8585
          F33334C13C3EA9EFEFEFF0F0F0F2F2F20000F2F2F2F0F0F08586BF3939C29696
          F74949F16E6FF0F4F5F7FCFCFCFCFDFCF7F8F98688F04646F18A8AF63334C181
          82B9F0F0F0F2F2F20000F2F2F2DCDDE31B1BAD9797F54B4BF27E7FF4CDCDF6A0
          A3C39EA2A09EA1A0A7A9C5E8E9F99D9DF54646F18888F31919AAD9D9E0F2F2F2
          0000F2F2F2C8CBCAB7BAD3A8A9F16A6BF2C4C5F53436A77D7EBCEAEBEAEAEAEA
          7C7DBB3536A6E2E3F78686F2A2A3F0A9ADC7B9BCBBF2F2F20000F2F2F2B9BEBD
          DCE1DFEEF1F0F9F9FD9D9EC27F80BEF0F0F0F0F0F0F0F0F0F0F0F07D7EBBA0A3
          C1FCFCFEEEF1EFD3D7D5A4A8A6F2F2F20000F2F2F2B0B6B3EDF0EFF7F8F8FBFB
          FBADB3B0EBEBEBF0F0F0F0F0F0F0F0F0F0F0F0EAEBEBA2A6A5FCFCFCF7F8F8E6
          EAE8949997F2F2F20000F2F2F2B4BBB7F0F2F1FDFDFDF9FAFAB1B6B4EBECECF0
          F0F0F0F0F0F0F0F0F0F0F0EBEBEBA5A9A7FAFBFBFDFDFDEAEDEC989E9CF2F2F2
          0000F2F2F2C4C9C7E7EAE9FEFEFEEEEFF97678CF7E80C2F0F0F0F0F0F0F0F0F0
          F0F0F07B7DC0797ACDF0F1F9FEFEFEDEE1E0AEB3B1F2F2F20000F2F2F2D4D8D6
          D0D4DEC5C5F93E3EF16060F21A1BB77F81C4ECECECECECEC7D7FC21B1BB77171
          F34545F1C7C8F8C2C5D1C5C8C7F2F2F20000F2F2F2E1E2E72F30AEDADAF77070
          F54141F15B5BF17577D0B7BEBBB5BCB97678CF6767F24B4BF18383F5CECFF426
          28A9DDDDE3F2F2F20000F2F2F2F0F0F09396CA6A6CC2E6E6FC7272F43C3CF1E7
          E8F2F0F2F2F1F2F2E7E9F33F3FF08484F4DCDCFB5C5DBB8B8DC3F0F0F0F2F2F2
          0000F2F2F2F0F0F0F0F0F0575BB86D6FC4E4E4FACFCFFBF9FAFAF6F7F7F6F7F7
          F9FAFACFCFFAD7D8F85E61BD5153B1EFEFEFF0F0F0F2F2F20000F2F2F2F0F0F0
          F0F0F0F0F0F09598CC3032B0DBDEE9F5F6F6FDFDFDFDFDFDF3F4F3D5D7E32C2D
          AD9092C7EFEFEFF0F0F0F0F0F0F2F2F20000F2F2F2F2F2F2F2F2F2F2F2F2F2F2
          F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
          F2F2F2F2F2F2F2F20000}
      end
    end
    inherited RGORDEM: TRadioGroup
      Width = 150
      Height = 58
    end
    object RGFiltro: TRadioGroup
      Left = 158
      Top = 38
      Width = 73
      Height = 59
      Caption = 'Filtro'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Filtro [0]'
        'Filtro [1]'
        'Inativos')
      ParentCtl3D = False
      TabOrder = 5
      OnClick = RGFiltroClick
    end
    object cbscpc: TCheckBox
      Left = 7
      Top = 104
      Width = 289
      Height = 17
      Caption = 'Remover da Lista clientes no SCPC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = cbscpcClick
    end
  end
  object QRAniver: TQuickRep [6]
    Left = 1040
    Top = 361
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DMPESSOA.TALX
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand13: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 74
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        195.791666666666700000
        1957.916666666667000000)
      BandType = rbPageHeader
      object QRLabel24: TQRLabel
        Left = -1
        Top = 1
        Width = 739
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          -2.645833333333330000
          2.645833333333330000
          1955.270833333330000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relat'#243'rio por Anivers'#225'rio de Clientes'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRSysData7: TQRSysData
        Left = 574
        Top = 1
        Width = 165
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1518.708333333330000000
          2.645833333333330000
          436.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Text = 'Pag.'
        Transparent = False
        FontSize = 10
      end
      object QRSysData8: TQRSysData
        Left = 470
        Top = 19
        Width = 269
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1243.541666666670000000
          50.270833333333300000
          711.729166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDateTime
        Text = 'Emiss'#227'o:'
        Transparent = False
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 6
        Top = 24
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          63.500000000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'FANTASIA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLIntervalo: TQRLabel
        Left = 6
        Top = 48
        Width = 203
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          127.000000000000000000
          537.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Aniversariantes de 01/07 At'#233' 30/07'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape10: TQRShape
        Left = 1
        Top = 67
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          177.270833333333000000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape11: TQRShape
        Left = 1
        Top = 70
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          185.208333333333000000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
    end
    object QRBand14: TQRBand
      Left = 38
      Top = 132
      Width = 740
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText21: TQRDBText
        Left = 74
        Top = 1
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          195.791666666667000000
          2.645833333333330000
          235.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'TELREL'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 164
        Top = 1
        Width = 205
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          433.916666666667000000
          2.645833333333330000
          542.395833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'NOME'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Left = 372
        Top = 1
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          984.250000000000000000
          2.645833333333330000
          341.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'BAIRRO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 505
        Top = 1
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1336.145833333330000000
          2.645833333333330000
          243.416666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'ENDERECO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 652
        Top = 1
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1725.083333333330000000
          2.645833333333330000
          193.145833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'CEP'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 3
        Top = 1
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          7.937500000000000000
          2.645833333333330000
          185.208333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'DTNASC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand15: TQRBand
      Left = 38
      Top = 112
      Width = 740
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1957.916666666667000000)
      BandType = rbColumnHeader
      object QRLabel25: TQRLabel
        Left = 75
        Top = 1
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          198.437500000000000000
          2.645833333333333000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fone:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 3
        Top = 1
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          2.645833333333333000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nasc.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 655
        Top = 1
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1733.020833333333000000
          2.645833333333333000
          84.666666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CEP'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 507
        Top = 1
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1341.437500000000000000
          2.645833333333333000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endere'#231'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 375
        Top = 1
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          2.645833333333333000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bairro'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 164
        Top = 1
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          433.916666666666700000
          2.645833333333333000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape12: TQRShape
        Left = 1
        Top = 17
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          44.979166666666700000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
    end
    object QRBand16: TQRBand
      Left = 38
      Top = 151
      Width = 740
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        1957.916666666667000000)
      BandType = rbPageFooter
      object QRShape13: TQRShape
        Left = 5
        Top = 4
        Width = 707
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          13.229166666666700000
          10.583333333333300000
          1870.604166666670000000)
        Pen.Style = psDash
        Shape = qrsRectangle
      end
      object QRDBText9: TQRDBText
        Left = 349
        Top = 8
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          923.395833333333300000
          21.166666666666670000
          71.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLoja
        DataField = 'TMP3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object QRAniverConj: TQuickRep [7]
    Left = 876
    Top = 352
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DMPESSOA.TALX
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 74
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        195.791666666666700000
        1957.916666666667000000)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = -1
        Top = 1
        Width = 739
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          -2.645833333333330000
          2.645833333333330000
          1955.270833333330000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relat'#243'rio por Anivers'#225'rio de Conjuge'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRSysData1: TQRSysData
        Left = 574
        Top = 1
        Width = 165
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1518.708333333330000000
          2.645833333333330000
          436.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Text = 'Pag.'
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 470
        Top = 19
        Width = 269
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1243.541666666670000000
          50.270833333333300000
          711.729166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDateTime
        Text = 'Emiss'#227'o:'
        Transparent = False
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 6
        Top = 24
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          63.500000000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'FANTASIA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 6
        Top = 48
        Width = 203
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          127.000000000000000000
          537.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Aniversariantes de 01/07 At'#233' 30/07'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 1
        Top = 67
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          177.270833333333000000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 1
        Top = 70
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          185.208333333333000000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 132
      Width = 740
      Height = 37
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        97.895833333333330000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 546
        Top = 1
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          2.645833333333333000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'CLIENTE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 78
        Top = 1
        Width = 233
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          206.375000000000000000
          2.645833333333330000
          616.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'NOME_CONJ'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 300
        Top = 17
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          793.750000000000000000
          44.979166666666670000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'BAIRRO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 300
        Top = 1
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          793.750000000000000000
          2.645833333333333000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'ENDERECO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 114
        Top = 17
        Width = 183
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          301.625000000000000000
          44.979166666666700000
          484.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'CEP'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 3
        Top = 1
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          7.937500000000000000
          2.645833333333330000
          185.208333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'DTNASC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 77
        Top = 17
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          44.979166666666670000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CEP:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 546
        Top = 17
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          44.979166666666670000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'TELREL'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 112
      Width = 740
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1957.916666666667000000)
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 547
        Top = 1
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1447.270833333333000000
          2.645833333333333000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 3
        Top = 1
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          2.645833333333333000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nasc.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 299
        Top = 1
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          791.104166666666700000
          2.645833333333333000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endere'#231'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 77
        Top = 1
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          2.645833333333333000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conjuge'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 1
        Top = 17
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          44.979166666666700000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 169
      Width = 740
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        1957.916666666667000000)
      BandType = rbPageFooter
      object QRShape4: TQRShape
        Left = 5
        Top = 4
        Width = 707
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          13.229166666666700000
          10.583333333333300000
          1870.604166666670000000)
        Pen.Style = psDash
        Shape = qrsRectangle
      end
      object QRDBText10: TQRDBText
        Left = 352
        Top = 8
        Width = 23
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          931.333333333333300000
          21.166666666666670000
          60.854166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLoja
        DataField = 'TMP3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
    end
  end
  object QREtiqMalaDireta: TQuickRep [8]
    Left = 56
    Top = 656
    Width = 794
    Height = 1134
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QREtiqMalaDiretaBeforePrint
    DataSet = DMPESSOA.TRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 2
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      0.000000000000000000
      3000.000000000000000000
      0.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      70.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand6: TQRBand
      Left = 38
      Top = 0
      Width = 346
      Height = 113
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand6BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        298.979166666666700000
        915.458333333333300000)
      BandType = rbDetail
      object QRDBText11: TQRDBText
        Left = 8
        Top = 27
        Width = 321
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          71.437500000000000000
          849.312499999999900000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TRel
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LbQEndereco: TQRLabel
        Left = 8
        Top = 45
        Width = 321
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          119.062500000000000000
          849.312499999999900000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LbQNome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LbQBairro: TQRLabel
        Left = 8
        Top = 62
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          164.041666666666700000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LbQNome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LbQCidade: TQRLabel
        Left = 8
        Top = 78
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          206.375000000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LbQNome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LbQCep: TQRLabel
        Left = 8
        Top = 94
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          248.708333333333300000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LbQNome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  inherited Relatorio: TPopupMenu
    Left = 1096
    Top = 8
    object Aniversrio1: TMenuItem
      Caption = 'Anivers'#225'rio'
      OnClick = Aniversrio1Click
    end
    object FichaOtica1: TMenuItem
      Caption = 'Ficha Otica'
      OnClick = FichaOtica1Click
    end
    object FichadeInformaes1: TMenuItem
      Caption = 'Ficha de Informa'#231#245'es'
      OnClick = FichadeInformaes1Click
    end
    object Extratodecontas1: TMenuItem
      Caption = 'Extrato de contas'
      OnClick = Extratodecontas1Click
    end
    object RelatriodeVendas1: TMenuItem
      Caption = 'Relat'#243'rio de Vendas'
      OnClick = RelatriodeVendas1Click
    end
    object RelatriodeCadastros1: TMenuItem
      Caption = 'Relat'#243'rio de Cadastros'
      OnClick = RelatriodeCadastros1Click
    end
    object RelatrioporCidade1: TMenuItem
      Caption = 'Relat'#243'rio por Cidade'
      OnClick = RelatrioporCidade1Click
    end
    object EtiquetaMalaDireta1: TMenuItem
      Caption = 'Etiqueta Mala Direta'
      OnClick = EtiquetaMalaDireta1Click
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      OnClick = Vendas1Click
    end
    object RelatriodeCrdito1: TMenuItem
      Caption = 'Relat'#243'rio de Cr'#233'dito'
      OnClick = RelatriodeCrdito1Click
    end
  end
  inherited XMLDocument1: TXMLDocument
    Left = 1248
    Top = 8
  end
  inherited AlteraPessoa: TPopupMenu
    Left = 1096
    Top = 104
  end
  inherited IdHTTP1: TIdHTTP
    Left = 1168
    Top = 8
  end
  inherited XMLBuscaCEP: TXMLDocument
    Left = 1248
    Top = 56
  end
  inherited mmDocumentos: TPopupMenu
    Left = 1096
    Top = 56
  end
  inherited OPD: TOpenDialog
    Left = 1032
    Top = 8
  end
  object MenuSeparar: TPopupMenu
    Left = 1096
    Top = 152
    object SCPC1: TMenuItem
      Caption = 'SCPC'
      OnClick = SCPC1Click
    end
    object Separar1: TMenuItem
      Caption = 'Filtro [0]'
      OnClick = Separar1Click
    end
    object Juntar1: TMenuItem
      Caption = 'Filtro [1]'
      OnClick = Juntar1Click
    end
    object AlteraFisicaJuridica2: TMenuItem
      Caption = 'Altera Fisica Juridica'
      OnClick = AlteraFisicaJuridica2Click
    end
    object MarcarDesmarcar1: TMenuItem
      Caption = 'Marcar/Desmarcar'
      OnClick = MarcarDesmarcar1Click
    end
    object MarcarDesmarcarTodos1: TMenuItem
      Caption = 'Marcar Todos'
      OnClick = MarcarDesmarcarTodos1Click
    end
    object DesmarcarTodos1: TMenuItem
      Caption = 'Desmarcar Todos'
      OnClick = DesmarcarTodos1Click
    end
    object Documentos1: TMenuItem
      Caption = 'Documentos'
      object AnexarDocumentos1: TMenuItem
        Caption = 'Anexar Documentos'
        OnClick = AnexarDocumentos1Click
      end
      object AbrirPasta1: TMenuItem
        Caption = 'Abrir Pasta'
        OnClick = AbrirPasta1Click
      end
    end
  end
  object FSRel: TfrReport
    Dataset = FDSCaixa
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 932
    Top = 8
    ReportForm = {18000000}
  end
  object FDSCaixa: TfrDBDataSet
    DataSource = DMCONTA.DRel
    Left = 932
    Top = 56
  end
  object RVRel: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    OnPrint = RVRelPrint
    Left = 988
    Top = 104
  end
  object FSMalaDireta: TfrReport
    Dataset = FDSMalaDireta
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 864
    Top = 8
    ReportForm = {18000000}
  end
  object FDSMalaDireta: TfrDBDataSet
    DataSource = DMPESSOA.DSRel
    Left = 864
    Top = 56
  end
  object FSVendaCli: TfrReport
    Dataset = FDSVendaCli
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 788
    Top = 8
    ReportForm = {18000000}
  end
  object FDSVendaCli: TfrDBDataSet
    DataSource = DMMACS.DTMP
    Left = 788
    Top = 56
  end
  object RvMalaDireta: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    OnPrint = RvMalaDiretaPrint
    OnBeforePrint = RvMalaDiretaBeforePrint
    Left = 932
    Top = 104
  end
  object FREL: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42402.696543541700000000
    ReportOptions.LastChange = 42450.697038726900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    Left = 988
    Top = 8
    Datasets = <
      item
        DataSet = FDBREL
        DataSetName = 'FDBREL'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 203.905643500000000000
          Top = 11.338590000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO DE CR'#195#8240'DITOS POR CLIENTE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015750470000000000
        Top = 207.874150000000000000
        Width = 740.409927000000000000
        DataSet = FDBREL
        DataSetName = 'FDBREL'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 102.425177570000000000
          Width = 87.685044250000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[FDBREL."TIPOCRED"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 1.133804570000000000
          Width = 98.645676610000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[FDBREL."DATA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 190.866151500000000000
          Width = 461.102340240000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[FDBREL."NOME"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 660.283457240000000000
          Width = 79.370076300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FDBREL."VALOR"]')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 102.047310000000000000
          Height = 26.456692910000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line1: TfrxLineView
          Left = 188.976500000000000000
          Height = 26.456692910000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 657.638220000000000000
          Height = 26.456692910000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line3: TfrxLineView
          Height = 26.456692910000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 740.787880000000000000
          Height = 26.456692910000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 740.787880000000000000
          Height = 26.456692910000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = -3.779530000000000000
          Top = 26.456710000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 68.031540000000000000
        Top = 117.165430000000000000
        Width = 740.409927000000000000
        Condition = 'FDBREL."COD_PESSOA"'
        object Memo6: TfrxMemoView
          Left = 102.047310000000000000
          Top = 52.913420000000000000
          Width = 86.929104570000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tipo Cr'#195#169'dito')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cliente :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Valor Total Cr'#195#169'dito :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 52.913420000000000000
          Width = 102.047224570000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 188.976500000000000000
          Top = 52.913420000000000000
          Width = 468.661634570000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cliente')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 657.638220000000000000
          Top = 52.913420000000000000
          Width = 83.149574570000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 627.024027000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FDBREL."NOME"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 132.283550000000000000
          Top = 30.236240000000000000
          Width = 98.267726300000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FDBREL."VLRCREDITO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 30.236227800000000000
        Top = 264.567100000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object FDBREL: TfrxDBDataset
    UserName = 'FDBREL'
    CloseDataSource = False
    DataSet = DMPESSOA.TALX
    BCDToCurrency = False
    Left = 988
    Top = 56
  end
  object ActionList1: TActionList
    Images = DMPESSOA.il16x16
    Left = 860
    Top = 172
    object actSearchCNPJ: TAction
      ImageIndex = 0
      ShortCut = 113
      OnExecute = actSearchCNPJExecute
      OnUpdate = actSearchCNPJUpdate
    end
  end
end
