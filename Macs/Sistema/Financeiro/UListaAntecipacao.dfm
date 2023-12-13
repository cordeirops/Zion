object frmListaAntecipacao: TfrmListaAntecipacao
  Left = 382
  Top = 179
  Width = 830
  Height = 341
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
    Width = 817
    Height = 49
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 348
      Height = 24
      Caption = 'Listando antecipa'#231#245'es para a ordem:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 360
      Top = 16
      Width = 63
      Height = 24
      Caption = 'Label2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object BtExcluir: TBitBtn
      Left = 656
      Top = 4
      Width = 121
      Height = 41
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 52
    Width = 813
    Height = 249
    Caption = 'Panel2'
    TabOrder = 1
    object DBGridConsulta: TDBGrid
      Left = 1
      Top = 1
      Width = 811
      Height = 247
      Align = alClient
      Color = clWhite
      Ctl3D = True
      DataSource = MDO.DConsulta
      FixedColor = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -13
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGridConsultaDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMERO_ORDEM'
          Title.Caption = 'N'#186' Ordem'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Cliente'
          Width = 232
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_ANTECIPACAO'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Caption = 'Usu'#225'rio'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_ANTECIPACAO'
          Title.Caption = 'Valor R$'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_MOVIMENTO'
          Title.Caption = 'Movimento'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_MOVIMENTO'
          Title.Caption = 'Cod. Movimento'
          Visible = True
        end>
    end
  end
end
