object FCredDev: TFCredDev
  Left = 352
  Top = 126
  Width = 658
  Height = 392
  Caption = 'FCredDev'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PCredDev: TPanel
    Left = 0
    Top = 0
    Width = 641
    Height = 353
    TabOrder = 0
    object DbDev: TDBGrid
      Left = 4
      Top = 4
      Width = 629
      Height = 301
      Color = 15794175
      Ctl3D = False
      DataSource = DMSAIDA.DAlx
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
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DbDevDrawColumnCell
      OnDblClick = DbDevDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMECLI'
          Title.Caption = 'Fonecedor'
          Width = 260
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTPEDVEN'
          Title.Caption = 'Data'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMFISCAL'
          Title.Caption = 'N'#186' Fiscal'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMPED'
          Title.Caption = 'N'#186' Pedido'
          Width = 101
          Visible = True
        end>
    end
    object BtnOk: TBitBtn
      Left = 276
      Top = 310
      Width = 91
      Height = 33
      Caption = '&OK'
      TabOrder = 1
      OnClick = BtnOkClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777774F77777700000007777
        7777444F77777000000077777774444F777770000000700000444F44F7777000
        000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
        74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
        8777F07777774000000070FFFF00007777777000000070F88707077777777000
        000070FFFF007777777770000000700000077777777770000000777777777777
        777770000000}
    end
  end
end
