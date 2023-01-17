inherited FCadCartao: TFCadCartao
  Caption = 'FCadCartao'
  ClientWidth = 608
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PConsulta: TPanel [0]
    Left = 8
    Top = 4
    Width = 597
    Height = 416
    inherited GroupBox1: TGroupBox
      Width = 590
      inherited EdNome: TFlatEdit
        Width = 443
        Text = ''
      end
      inherited BtnSelecionar: TBitBtn
        Left = 432
      end
    end
    inherited Painel: TPanel
      Width = 591
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 258
      Top = 161
      Width = 111
      Height = 96
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_CREDITO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PESSOA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_GERADOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOPES'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCRED'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOGERADOR'
          Visible = True
        end>
    end
    object DBGridConsulta: TDBGrid
      Left = 2
      Top = 90
      Width = 589
      Height = 319
      TabStop = False
      Color = 15794175
      Ctl3D = False
      DataSource = DMFINANC.DCartao
      FixedColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Cart'#227'o'
          Width = 335
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAXA'
          Title.Alignment = taRightJustify
          Title.Caption = 'Taxa'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCINI'
          Title.Alignment = taRightJustify
          Title.Caption = 'de'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCFIN'
          Title.Alignment = taRightJustify
          Title.Caption = 'at'#233
          Width = 24
          Visible = True
        end>
    end
  end
  inherited PComunica: TPanel [1]
    Left = 77
  end
  inherited PCadastro: TPanel [2]
    Width = 596
    inherited Panel4: TPanel
      Width = 591
      BevelInner = bvNone
      object Label1: TLabel
        Left = 30
        Top = 32
        Width = 70
        Height = 18
        Caption = 'Cart'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 262
        Top = 96
        Width = 50
        Height = 18
        Caption = 'Taxa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 30
        Top = 96
        Width = 90
        Height = 18
        Caption = 'Bandeira:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RGDebitoCredito: TRadioGroup
        Left = 30
        Top = 152
        Width = 219
        Height = 49
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Items.Strings = (
          'D'#233'bito'
          'Cr'#233'dito')
        ParentFont = False
        TabOrder = 3
        OnClick = RGDebitoCreditoClick
      end
      object PParcelas: TPanel
        Left = 18
        Top = 216
        Width = 361
        Height = 81
        BevelOuter = bvNone
        Color = clWhite
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 4
        object Label4: TLabel
          Left = 15
          Top = 9
          Width = 330
          Height = 18
          Caption = 'Taxa aplicada a parcelamentos de:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 138
          Top = 47
          Width = 10
          Height = 18
          Caption = 'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 206
          Top = 47
          Width = 80
          Height = 18
          Caption = 'parcelas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object EdPInicial: TColorEditFloat
          Left = 88
          Top = 40
          Width = 41
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
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
        object EdPFinal: TColorEditFloat
          Left = 160
          Top = 40
          Width = 41
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '0'
          EditType = fltInteger
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object EdCartao: TColorMaskEdit
        Left = 30
        Top = 51
        Width = 528
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdTaxa: TColorEditFloat
        Left = 262
        Top = 117
        Width = 67
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object CBBandeiras: TComboBox
        Left = 30
        Top = 117
        Width = 219
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 18
        ParentFont = False
        TabOrder = 1
        Items.Strings = (
          'Visa'
          'Visa Electron'
          'MasterCard'
          'Maestro'
          'Cabal'
          'Sicredi'
          'Multi'
          'American Express'
          'Sodexo'
          'Visa Vale'
          'Hipercard'
          'Diners'
          'Avista'
          'Sorocred'
          'Discover'
          'Mais!'
          'OUTROS')
      end
    end
    inherited Panel1: TPanel
      Width = 591
    end
  end
end
