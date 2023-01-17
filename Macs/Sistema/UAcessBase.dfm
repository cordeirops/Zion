object FAcessBase: TFAcessBase
  Left = 192
  Top = 114
  BorderStyle = bsNone
  Caption = 'FAcessBase'
  ClientHeight = 137
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PAcessBase: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 137
    BevelWidth = 4
    Color = 13750737
    TabOrder = 0
    object Shape3: TShape
      Left = 4
      Top = 4
      Width = 249
      Height = 129
      Pen.Width = 2
    end
    object DBGBASES: TDBGrid
      Left = 6
      Top = 6
      Width = 245
      Height = 125
      Color = clWhite
      Ctl3D = False
      DataSource = DMMACS.DSBase
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
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnKeyPress = DBGBASESKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'TRILL'
          Title.Caption = 'Acesso'
          Width = 225
          Visible = True
        end>
    end
  end
end
