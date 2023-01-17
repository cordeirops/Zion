inherited FRelEstrutResult: TFRelEstrutResult
  Left = 131
  Top = 108
  Caption = 'Orion Macs - Estrutura de Resultados'
  ClientHeight = 386
  ClientWidth = 458
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeExterno: TShape
    Top = 24
    Width = 457
    Height = 344
  end
  inherited ShapeInterno: TShape
    Top = 29
    Width = 446
    Height = 333
  end
  inherited Image1: TImage
    Left = 153
    Top = 368
  end
  inherited LCaixa: TLabel
    Left = 325
    Top = 371
  end
  inherited LUsuario: TLabel
    Left = 160
    Top = 371
  end
  inherited ShapeRodape1: TShape
    Left = 321
    Top = 371
  end
  inherited ShapeRodape2: TShape
    Left = 319
    Top = 371
  end
  object DRLabel1: TDRLabel [7]
    Left = 28
    Top = 90
    Width = 161
    Height = 16
    Caption = 'Intervalo entre Datas:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HiColor = clBlue
    LoColor = clNavy
    Border = boNone
    Ctl3D = True
    BlinkInterval = 300
    Blink = blNone
    Deep = 1
  end
  object Label1: TLabel [8]
    Left = 28
    Top = 106
    Width = 69
    Height = 16
    Caption = 'Dt. Inicial:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel [9]
    Left = 172
    Top = 106
    Width = 61
    Height = 16
    Caption = 'Dt. Final:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited PTitulo: TPanel [10]
    Width = 458
    TabOrder = 8
    inherited ImgTitulo: TImage
      Width = 457
    end
    inherited LDescTitulo: TDRLabel
      Left = 154
      Width = 250
      Caption = 'Estrutura de Resultados'
    end
    inherited PBotoes: TPanel
      inherited BtnFecha: TSpeedButton
        Left = 409
      end
    end
  end
  inherited GroupBox1: TGroupBox [11]
    Left = 21
    Top = 310
    Width = 415
    TabOrder = 7
    inherited GroupBox3: TGroupBox
      Left = 163
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
    inherited GroupBox4: TGroupBox
      Left = 315
    end
  end
  inherited PComunica: TPanel [12]
    Left = 52
    Top = 138
    Width = 359
    Color = clWhite
    TabOrder = 9
    object LBloco: TLabel
      Left = 6
      Top = 60
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 74
      Width = 349
      Height = 19
      Ctl3D = False
      DataSource = DMCONTA.DPlnCta
      Options = []
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CLASSIFICACAO'
          Visible = True
        end>
    end
  end
  object RGTipoEstrut: TRadioGroup [13]
    Left = 28
    Top = 37
    Width = 401
    Height = 41
    Color = 16772332
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Regime de Caixa'
      'Regime de Compet'#234'ncia')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object EdDTIni: TColorMaskEdit [14]
    Left = 28
    Top = 122
    Width = 121
    Height = 22
    Ctl3D = False
    EditMask = '!99/99/0000;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Text = '  /  /    '
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EdDtFim: TColorMaskEdit [15]
    Left = 172
    Top = 122
    Width = 121
    Height = 22
    Ctl3D = False
    EditMask = '!99/99/0000;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Text = '  /  /    '
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  inline FrmBuscaConta1: TFrmBusca [16]
    Left = 28
    Top = 155
    Width = 401
    Height = 43
    Color = 16772332
    ParentColor = False
    TabOrder = 3
    inherited LTextoBusca: TLabel
      Width = 130
      Caption = 'Totalizadora Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 350
      Width = 23
      Height = 22
    end
    inherited LUZMINUS: TShape
      Left = 370
      Visible = True
    end
    inherited EdDescricao: TFlatEdit
      Width = 279
      ColorFlat = clWhite
    end
    inherited BTNOPEN: TBitBtn
      Left = 353
      OnClick = FrmBuscaConta1BTNOPENClick
    end
    inherited EDCodigo: TFlatEdit [5]
      ColorFlat = clLightGreen
      OnKeyPress = FrmBuscaConta1EDCodigoKeyPress
    end
    inherited BTNMINUS: TBitBtn [6]
      Left = 371
      OnClick = FrmBuscaConta1BTNMINUSClick
    end
  end
  inline FrmBuscaConta2: TFrmBusca [17]
    Left = 27
    Top = 199
    Width = 410
    Height = 43
    Color = 16772332
    ParentColor = False
    TabOrder = 4
    inherited LTextoBusca: TLabel
      Width = 122
      Caption = 'Totalizadora Final:'
    end
    inherited LUZOPEN: TShape
      Left = 350
      Width = 23
      Height = 22
    end
    inherited LUZMINUS: TShape
      Left = 370
      Visible = True
    end
    inherited EdDescricao: TFlatEdit
      Width = 279
      ColorFlat = clWhite
    end
    inherited BTNOPEN: TBitBtn
      Left = 353
      OnClick = FrmBuscaConta2BTNOPENClick
    end
    inherited EDCodigo: TFlatEdit [5]
      ColorFlat = clLightGreen
      OnKeyPress = FrmBuscaConta2EDCodigoKeyPress
    end
    inherited BTNMINUS: TBitBtn [6]
      Left = 371
      OnClick = FrmBuscaConta2BTNMINUSClick
    end
  end
  object RGTipoRel: TRadioGroup
    Left = 36
    Top = 239
    Width = 383
    Height = 36
    Color = 16772332
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Anal'#237'tico'
      'Sint'#233'tico')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 5
  end
  object CBVISUCTAVAL: TCheckBox
    Left = 70
    Top = 288
    Width = 311
    Height = 17
    Caption = 'Visualizar apenas contas com valores'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  inherited FSRel: TfrReport
    Left = 412
    Top = 42
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Left = 380
    Top = 42
  end
end
