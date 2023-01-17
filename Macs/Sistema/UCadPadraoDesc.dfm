inherited FCadPadraoDesc: TFCadPadraoDesc
  Left = 185
  Top = 175
  Caption = ''
  ClientHeight = 429
  ClientWidth = 609
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 66
  end
  inherited PCadastro: TPanel
    Width = 578
    inherited Panel4: TPanel
      Top = 31
      Width = 574
      TabOrder = 0
      object Label6: TLabel
        Left = 16
        Top = 16
        Width = 62
        Height = 19
        Caption = 'C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 72
        Width = 76
        Height = 18
        Caption = 'Descri'#231'ao:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBPRIMEIRO: TDBColorEdit
        Left = 16
        Top = 35
        Width = 113
        Height = 22
        Color = 16758639
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDESC: TDBColorEdit
        Left = 16
        Top = 89
        Width = 489
        Height = 22
        Color = 15658717
        Ctl3D = False
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
    end
    inherited Panel1: TPanel
      Top = 2
      Width = 574
      TabOrder = 1
    end
  end
  inherited PConsulta: TPanel
    Width = 580
    inherited DBGridCadastroPadrao: TDBGrid [0]
      Width = 576
    end
    inherited Painel: TPanel
      Width = 575
    end
    inherited GroupBox1: TGroupBox [2]
      Width = 575
      inherited EdNome: TFlatEdit
        Width = 444
      end
      inherited BtnSelecionar: TBitBtn
        Left = 453
        Width = 116
      end
    end
  end
end
