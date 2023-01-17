inherited FConvertUnid: TFConvertUnid
  Left = 132
  Top = 159
  Caption = 'FConvertUnid'
  ClientHeight = 254
  ClientWidth = 534
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 98
    Top = 72
    Width = 319
    Height = 65
  end
  inherited PCadastro: TPanel
    Top = 11
    Width = 504
    Height = 234
    inherited Panel4: TPanel
      Left = 0
      Top = 30
      Width = 500
      Height = 201
      object LTextoBusca: TLabel
        Left = 41
        Top = 128
        Width = 123
        Height = 20
        Caption = 'Qtde. Convertida:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      inline FrmUnidEnt: TFrmBusca
        Left = 39
        Top = 17
        Width = 426
        Height = 43
        Color = 16772332
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Width = 135
          Caption = 'Unidade a Converter'
        end
        inherited LUZOPEN: TShape
          Left = 367
        end
        inherited LUZMINUS: TShape
          Left = 386
        end
        inherited EdDescricao: TFlatEdit
          Left = 72
          Width = 297
          ColorFlat = 15658719
        end
        inherited BTNOPEN: TBitBtn
          Left = 369
          OnClick = FrmUnidEntBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 387
          OnClick = FrfUnidEntBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 69
          ColorFlat = 14606014
          OnKeyPress = FrmUnidEntEDCodigoKeyPress
        end
      end
      inline FrmUnidSai: TFrmBusca
        Left = 40
        Top = 72
        Width = 426
        Height = 43
        Color = 16772332
        ParentColor = False
        TabOrder = 1
        inherited LTextoBusca: TLabel
          Width = 128
          Caption = 'Unidade Convertida'
        end
        inherited LUZOPEN: TShape
          Left = 368
        end
        inherited LUZMINUS: TShape
          Left = 386
        end
        inherited EdDescricao: TFlatEdit
          Left = 72
          Width = 297
          ColorFlat = 16772313
        end
        inherited BTNOPEN: TBitBtn
          Left = 369
          OnClick = FrmUnidSaiBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 387
          OnClick = FrmUnidSaiBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 69
          ColorFlat = 16632752
          OnKeyPress = FrmUnidSaiEDCodigoKeyPress
        end
      end
      object EdQtd: TFloatEdit
        Left = 168
        Top = 124
        Width = 145
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 15
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '0,0000000000'
        ValueFormat = '##,##########0.0000000000'
        ValueInteger = 0
      end
    end
    inherited Panel1: TPanel
      Left = 0
      Top = 1
      Width = 500
    end
  end
  inherited PConsulta: TPanel
    Top = 11
    Width = 504
    Height = 233
    inherited GroupBox1: TGroupBox
      Left = 6
      Top = 40
      Width = 484
      Visible = False
    end
    inherited Painel: TPanel
      Left = 4
      Width = 491
      inherited BtnFiltrar: TBitBtn
        Left = 530
        Visible = False
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 4
      Top = 40
      Width = 490
      Height = 185
      DataSource = DMESTOQUE.DSAlx
      Columns = <
        item
          Expanded = False
          FieldName = 'DESC_UNID'
          Title.Caption = 'Entrada'
          Width = 189
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC_UNID1'
          Title.Caption = 'Sa'#237'da'
          Width = 194
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDCONVERT'
          Title.Alignment = taRightJustify
          Title.Caption = 'Qtde.'
          Width = 75
          Visible = True
        end>
    end
  end
end
