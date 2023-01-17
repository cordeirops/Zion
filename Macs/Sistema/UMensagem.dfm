inherited FMensagem: TFMensagem
  Left = 208
  Top = 225
  Caption = 'FMensagem'
  ClientHeight = 250
  ClientWidth = 604
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 9
    Top = 39
    Width = 584
    Height = 196
    inherited Panel4: TPanel
      Width = 581
      Height = 164
      inherited Label6: TLabel
        Left = 442
        Top = 8
        Width = 60
        Height = 12
        Caption = 'Revelar em:'
        Font.Height = -9
        Font.Name = 'Verdana'
      end
      inherited Label7: TLabel
        Top = 43
        Width = 33
        Height = 12
        Caption = 'Texto:'
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
      end
      object Label1: TLabel [2]
        Left = 17
        Top = 83
        Width = 61
        Height = 12
        Caption = 'Enviado em:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 441
        Top = 20
        Width = 68
        Height = 18
        Color = clWhite
        DataField = 'DT_SHOW'
        DataSource = DMMACS.DMens
        Font.Height = -9
        Font.Name = 'Verdana'
        MaxLength = 10
        ReadOnly = False
        TabOrder = 1
      end
      inherited DBDESC: TDBColorEdit
        Top = 55
        Width = 549
        Height = 18
        Color = clWhite
        DataField = 'MENSAGEM'
        DataSource = DMMACS.DMens
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        TabOrder = 3
      end
      inline FrmBusca1: TFrmBusca
        Left = 15
        Top = 8
        Width = 352
        Height = 32
        Color = 16772332
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Width = 27
          Height = 12
          Caption = 'Para:'
          Font.Height = -9
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Top = 9
          Width = 20
          Height = 19
        end
        inherited LUZMINUS: TShape
          Left = 380
          Top = 9
        end
        inherited EdDescricao: TFlatEdit
          Left = 71
          Top = 11
          Height = 18
          ColorFlat = clWhite
          Font.Height = -9
        end
        inherited BTNOPEN: TBitBtn
          Left = 326
          Top = 11
          Width = 20
          Height = 18
          OnClick = FrmBusca1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 378
          Top = 11
          Width = 20
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Left = 1
          Top = 11
          Height = 18
          ColorFlat = -2147483620
          Font.Height = -9
          OnKeyDown = FrmBusca1EDCodigoKeyDown
        end
      end
      object DBColorEdit1: TDBColorEdit
        Left = 508
        Top = 20
        Width = 55
        Height = 18
        Color = clWhite
        Ctl3D = False
        DataField = 'HR_SHOW'
        DataSource = DMMACS.DMens
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit2: TDBColorEdit
        Left = 16
        Top = 95
        Width = 68
        Height = 18
        Color = clWhite
        Ctl3D = False
        DataField = 'DT_ENVIO'
        DataSource = DMMACS.DMens
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit3: TDBColorEdit
        Left = 83
        Top = 95
        Width = 55
        Height = 18
        Color = clWhite
        Ctl3D = False
        DataField = 'HR_ENVIO'
        DataSource = DMMACS.DMens
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Panel1: TPanel
      Width = 581
    end
  end
  inherited PComunica: TPanel [1]
    Top = 104
  end
  inherited PConsulta: TPanel
    Left = 10
    Top = 41
    Height = 196
    object Shape3: TShape [0]
      Left = 6
      Top = 39
      Width = 575
      Height = 129
      Pen.Color = 11039232
      Pen.Width = 2
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 8
      Top = 41
      Width = 571
      Height = 125
      Color = clWhite
      DataSource = DMMACS.DAlxMens
      FixedColor = 15066597
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      Columns = <
        item
          Expanded = False
          FieldName = 'LOGIN'
          Title.Caption = 'DE:'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MENSAGEM'
          Title.Caption = 'Texto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_ENVIO'
          Title.Caption = 'Enviado em:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HR_ENVIO'
          Title.Caption = '    '
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_SHOW'
          Title.Caption = 'Revelar em:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HR_SHOW'
          Title.Caption = '     '
          Visible = True
        end>
    end
    object GEnviados: TDBGrid [2]
      Left = 8
      Top = 41
      Width = 571
      Height = 125
      Color = 15527167
      Ctl3D = False
      DataSource = DMMACS.DAlxMens
      FixedColor = 15066597
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'LOGIN'
          Title.Caption = 'PARA:'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MENSAGEM'
          Title.Caption = 'Texto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_ENVIO'
          Title.Caption = 'Enviado em:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HR_ENVIO'
          Title.Caption = '   '
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_SHOW'
          Title.Caption = 'Revelar em:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HR_SHOW'
          Title.Caption = '    '
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Left = 591
      Visible = False
    end
    inherited Painel: TPanel
      inherited BtnNovo: TBitBtn
        Caption = 'NOVA - F4'
      end
      inherited BtnConsultar: TBitBtn
        Enabled = False
        Visible = False
      end
      inherited BtnRelatorio: TBitBtn
        Enabled = False
        Visible = False
      end
      inherited BtnFiltrar: TBitBtn
        Enabled = False
        Visible = False
      end
    end
    object BtnRecebidos: TFlatButton
      Left = 6
      Top = 168
      Width = 96
      Height = 18
      Color = 13750737
      ColorFocused = -2147483621
      Caption = 'RECEBIDOS'
      ParentColor = False
      TabOrder = 3
      OnClick = BtnRecebidosClick
    end
    object BtnEnviados: TFlatButton
      Left = 102
      Top = 168
      Width = 96
      Height = 18
      Color = 13750737
      ColorFocused = -2147483621
      Caption = 'ENVIADOS'
      ParentColor = False
      TabOrder = 4
      OnClick = BtnEnviadosClick
    end
  end
end
