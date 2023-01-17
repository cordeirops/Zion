object FNumeroNfse: TFNumeroNfse
  Left = 842
  Top = 398
  Width = 282
  Height = 140
  Caption = 'I N F O R M A '#199' '#195' O'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  DesignSize = (
    266
    102)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 253
    Height = 16
    Caption = 'Informe o n'#250'mero da Nfse a ser cancelada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edNumeroNfse: TEdit
    Left = 96
    Top = 36
    Width = 81
    Height = 21
    Anchors = []
    TabOrder = 0
    OnKeyDown = edNumeroNfseKeyDown
  end
  object btAcao: TButton
    Left = 88
    Top = 72
    Width = 97
    Height = 25
    Caption = 'Cancelar Nfse'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btAcaoClick
  end
  object FRNfse: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 40
    Top = 32
    ReportForm = {18000000}
  end
  object FRDSNfse: TfrDBDataSet
    Left = 216
    Top = 40
  end
end
