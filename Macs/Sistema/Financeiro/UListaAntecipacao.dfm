object frmListaAntecipacao: TfrmListaAntecipacao
  Left = 381
  Top = 179
  Width = 811
  Height = 312
  Caption = 'Listagem de Anteciapa'#231#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -4
    Top = 0
    Width = 781
    Height = 65
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 175
      Height = 13
      Caption = 'Listando antecipa'#231#245'es para a ordem:'
    end
    object Label2: TLabel
      Left = 188
      Top = 8
      Width = 57
      Height = 13
      Caption = 'Label2'
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 68
    Width = 777
    Height = 493
    DataSource = MDO.DConsulta
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_ANTECIPACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_ORDEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_ANTECIPACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_ANTECIPACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_MOVIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_MOVIMENTO'
        Visible = True
      end>
  end
end
