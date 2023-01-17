inherited FCadLoja: TFCadLoja
  Left = 272
  Top = 163
  Caption = 'FCadLoja'
  ClientHeight = 281
  ClientWidth = 602
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Top = 7
    Width = 582
    Height = 268
    inherited Panel4: TPanel
      Width = 578
      Height = 235
      object Label9: TLabel [2]
        Left = 16
        Top = 122
        Width = 52
        Height = 13
        Caption = 'GERENTE'
        FocusControl = DBEdit4
      end
      object Label4: TLabel [3]
        Left = 16
        Top = 122
        Width = 52
        Height = 13
        Caption = 'GERENTE'
      end
      object Label17: TLabel [4]
        Left = 16
        Top = 170
        Width = 57
        Height = 13
        Caption = 'MULTA (%):'
      end
      object Label16: TLabel [5]
        Left = 91
        Top = 171
        Width = 53
        Height = 13
        Caption = 'JUROS(%):'
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Width = 59
        DataField = 'COD_LOJA'
      end
      inherited DBDESC: TDBColorEdit
        DataField = 'DESCRICAO'
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 138
        Width = 489
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'GERENTE'
        DataSource = DMMACS.DSLoja
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object BitBtn2: TBitBtn
        Left = 498
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Configura'#231#227'o'
        TabOrder = 3
        OnClick = BitBtn2Click
      end
      object EDJuros: TColorEditFloat
        Left = 90
        Top = 186
        Width = 55
        Height = 22
        Color = 15658717
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdMulta: TColorEditFloat
        Left = 16
        Top = 186
        Width = 55
        Height = 22
        Color = 15658717
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Panel1: TPanel
      Width = 578
    end
  end
  inherited PConsulta: TPanel [1]
    Left = 9
    Top = 7
    Height = 268
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 4
      Top = 88
      Width = 573
      Height = 175
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_LOJA'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Loja'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MULTA'
          Title.Caption = 'Multa (%)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUROS'
          Title.Caption = 'Juros (%)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GERENTE'
          Title.Caption = 'Gerente'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Left = 4
      Width = 573
      inherited EdNome: TFlatEdit
        Width = 451
      end
      inherited BtnSelecionar: TBitBtn
        Left = 460
        Top = 18
        Width = 106
      end
    end
    inherited Painel: TPanel
      Width = 576
    end
  end
  inherited PComunica: TPanel [2]
    Top = 72
  end
end
