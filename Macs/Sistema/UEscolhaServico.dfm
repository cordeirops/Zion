object FEscolhaServico: TFEscolhaServico
  Left = 607
  Top = 351
  Width = 450
  Height = 305
  Caption = 'Escolha o servi'#231'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010020000000000B00000001600000028000000100000002000
    0000010001000000000080000000000000000000000000000000000000000000
    0000FFFFFF000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
    0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
    0000FFFF0000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  DesignSize = (
    434
    267)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 29
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 85
    Top = 28
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 4
    Top = 5
    Width = 135
    Height = 16
    Caption = 'Buscar servi'#231'o por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbServico: TDBGrid
    Left = 2
    Top = 99
    Width = 430
    Height = 165
    Anchors = []
    DataSource = DMServ.DSAlx
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object edCodigo: TEdit
    Left = 4
    Top = 45
    Width = 65
    Height = 21
    TabOrder = 1
    OnEnter = edCodigoEnter
    OnKeyDown = edCodigoKeyDown
  end
  object edDescricao: TEdit
    Left = 85
    Top = 44
    Width = 345
    Height = 21
    TabOrder = 2
    OnEnter = edDescricaoEnter
    OnKeyDown = edDescricaoKeyDown
  end
  object btBusca: TButton
    Left = 252
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = btBuscaClick
  end
  object btSelecionar: TButton
    Left = 356
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 4
    OnClick = btSelecionarClick
  end
end
