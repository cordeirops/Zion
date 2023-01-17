inherited FAluguel: TFAluguel
  Left = 179
  Top = 163
  Caption = 'Aluguel'
  ClientHeight = 467
  ClientWidth = 723
  PixelsPerInch = 96
  TextHeight = 13
  inherited LDescTitulo: TDRLabel
    Caption = 'Aluguel'
  end
  inherited PConsulta: TPanel [4]
    inherited GroupBox1: TGroupBox
      Height = 67
      TabOrder = 1
      object Label8: TLabel [0]
        Left = 7
        Top = 20
        Width = 57
        Height = 16
        Caption = 'N'#176' Ped.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel [1]
        Left = 113
        Top = 20
        Width = 107
        Height = 16
        Caption = 'Cod. Container:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel [2]
        Left = 232
        Top = 20
        Width = 53
        Height = 16
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited BtnSelecionar: TBitBtn [3]
        Left = 527
        Top = 42
        Width = 17
        Height = 12
        TabOrder = 3
      end
      inherited EdNome: TFlatEdit [4]
        Left = 232
        Top = 38
        Width = 454
        Height = 21
        Font.Height = -12
        TabOrder = 2
        Text = ''
      end
      object EdPedVendaTP: TFlatEdit
        Left = 7
        Top = 38
        Width = 98
        Height = 21
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyDown = EdPedVendaTPKeyDown
      end
      object EdCodAluguelTP: TFlatEdit
        Left = 113
        Top = 38
        Width = 112
        Height = 21
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyDown = EdCodAluguelTPKeyDown
      end
    end
    inherited Painel: TPanel
      TabOrder = 0
      inherited BtnNovo: TBitBtn
        Left = 567
        Width = 126
        TabOrder = 3
        Visible = False
      end
      inherited BtnApagar: TBitBtn
        Left = 226
        Width = 109
        Caption = 'Abrir'
        TabOrder = 2
        Glyph.Data = {
          CA020000424DCA0200000000000036000000280000000E0000000F0000000100
          18000000000094020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF4F6F704F5F5F2F2F
          2F303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFF80CFE06FC0EF40A0C03F809F3F6F7F4F5F602F2F2F303030FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60C0EF9FE0FF7FE0FF7FE0FF70DFFF60
          D0F04FB0D0408FA0405F6FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60C0EF90
          DFF080EFFF80EFFF80EFFF80EFFF8FEFFF8FEFFF4FA0BF2F2F2FFFFFFFFFFFFF
          0000FFFFFFFFFFFF6FCFF070CFEF9FFFFF90FFFF90EFF08FF0FF90FFFF8FF0FF
          90EFF040606FFFFFFFFFFFFF0000FFFFFFFFFFFF7FCFF05FCFF0B0EFF0B0FFFF
          EFE0C0C0DFCF9FFFFFAFDFD0D0EFE05F9FAF303030FFFFFF0000FFFFFFFFFFFF
          80DFF07FE0FF70DFFF70DFF080C0D0DFE0DFEFE0CFFFEFCFF0F0E0BFE0EF4F5F
          60FFFFFF0000FFFFFFFFFFFF9FEFF090FFFF90FFFF90E0DFC0AF80D0CFAFC0E0
          E0B0CFC08FBFC0BFE0F04F7F8FFFFFFF0000FFFFFFFFFFFFA0E0F09FFFFF9FF0
          EFE0B07FFFEFDFFFDFBFFFE0CFFFEFDFA07F4F4F4040FFFFFFFFFFFF0000FFFF
          FFFFFFFF5F9FAFAFE0F0A0E0F0608F9070604FEFBF90FFDFAFD0B08FF0CFA08F
          6F4FFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
          805FF0CFA03F2F1FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF70604FE0B080202020FFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000}
      end
      inherited BtnConsultar: TBitBtn
        Left = 452
        Width = 118
        TabOrder = 4
        Visible = False
      end
      inherited BtnRelatorio: TBitBtn
        Left = 109
        Width = 118
        TabOrder = 1
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Left = 335
        Width = 118
        TabOrder = 5
        Visible = False
      end
      object BitBtn1: TBitBtn
        Left = 2
        Top = 2
        Width = 108
        Height = 25
        Caption = 'Entregue'
        TabOrder = 0
        OnClick = BtnSelecionarClick
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
    inherited DBGridCadastroPadrao: TDBGrid
      Top = 107
      Height = 303
      DataSource = DMESTOQUE.DsAlx5
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnDblClick = DBGridCadastroPadraoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PEDVENDA'
          Title.Caption = 'Cod. Ped.'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECLI'
          Title.Caption = 'Cliente'
          Width = 270
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTSAIDA'
          Title.Caption = 'Dt. Saida'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEMPOALUGUEL'
          Title.Caption = 'Tempo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTDEVOLUCAO'
          Title.Caption = 'Dt. Devolu'#231#227'o'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_FROTA'
          Title.Caption = 'N'#250'm. Frota'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descricao'
          Width = 200
          Visible = True
        end>
    end
  end
  inherited PComunica: TPanel [5]
  end
  inherited PCadastro: TPanel [6]
    Top = 51
    inherited Panel4: TPanel
      object Label1: TLabel
        Left = 25
        Top = 16
        Width = 93
        Height = 16
        Caption = 'Cod. Aluguel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 24
        Top = 72
        Width = 53
        Height = 16
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 25
        Top = 131
        Width = 100
        Height = 16
        Caption = 'Equipamento: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 120
        Top = 187
        Width = 96
        Height = 16
        Caption = 'Tem. Aluguel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 25
        Top = 187
        Width = 73
        Height = 16
        Caption = 'Dt. Sa'#237'da: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 342
        Top = 187
        Width = 42
        Height = 16
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 242
        Top = 187
        Width = 86
        Height = 16
        Caption = 'Dt. Entrega: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 144
        Top = 131
        Width = 171
        Height = 16
        Caption = 'Descri'#231#227'o Equipamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdCodAluguel: TFlatEdit
        Left = 25
        Top = 35
        Width = 97
        Height = 19
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EdCodCliente: TFlatEdit
        Left = 24
        Top = 88
        Width = 65
        Height = 19
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdNomeCliente: TFlatEdit
        Left = 88
        Top = 88
        Width = 433
        Height = 19
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object EdCodEquipamento: TFlatEdit
        Left = 25
        Top = 150
        Width = 96
        Height = 19
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object EdTemAluguel: TEdit
        Left = 117
        Top = 203
        Width = 105
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EdDataSaida: TMaskEdit
        Left = 24
        Top = 203
        Width = 73
        Height = 21
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = '  /  /    '
      end
      object FloatEdit1: TFloatEdit
        Left = 342
        Top = 203
        Width = 49
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        Text = '0,00'
        ValueFormat = '###,##0.00'
        ValueInteger = 0
      end
      object EdDescEquipamento: TFlatEdit
        Left = 144
        Top = 150
        Width = 377
        Height = 19
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object EdDtEntrega: TMaskEdit
        Left = 242
        Top = 203
        Width = 81
        Height = 21
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        Text = '  /  /    '
      end
    end
  end
  inherited PTitulo: TPanel
    Width = 721
    inherited ImgTitulo: TImage
      Left = -32
      Width = 753
    end
  end
  inherited PBotoes: TPanel
    Left = 679
    object BtnFechar: TSpeedButton
      Left = 0
      Top = 0
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 'Pressione para fechar o sistema. <ESC>'
      Flat = True
      Glyph.Data = {
        06030000424D060300000000000036000000280000000F0000000F0000000100
        180000000000D0020000C40E0000C40E00000000000000000000996733996733
        9967339967339967339967339967339967339967339967339967339967339967
        33996733996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
        9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733B99D94
        9967339967339967339967339967339967339967339967339967339967339967
        33B99D94996733000000996733B99D9499673399673399673399673399673399
        6733996733996733996733996733996733B99D94996733000000996733B99D94
        9967339967330000009967339967339967339967339967330000009967339967
        33B99D94996733000000996733B99D9499673399673399673300000099673399
        6733996733000000996733996733996733B99D94996733000000996733B99D94
        9967339967339967339967330000009967330000009967339967339967339967
        33B99D94996733000000996733B99D9499673399673399673399673399673300
        0000996733996733996733996733996733B99D94996733000000996733B99D94
        9967339967339967339967330000009967330000009967339967339967339967
        33B99D94996733000000996733B99D9499673399673399673300000099673399
        6733996733000000996733996733996733B99D94996733000000996733B99D94
        9967339967330000009967339967339967339967339967330000009967339967
        33B99D94996733000000996733B99D9499673399673399673399673399673399
        6733996733996733996733996733996733B99D94996733000000996733B99D94
        9967339967339967339967339967339967339967339967339967339967339967
        33B99D94996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
        9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733996733
        9967339967339967339967339967339967339967339967339967339967339967
        33996733996733000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnFechaClick
    end
  end
  object TAluguel: TfrDBDataSet
    DataSource = DMESTOQUE.DSAlx
    Left = 640
    Top = 76
  end
  object FSRel: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 672
    Top = 76
    ReportForm = {18000000}
  end
  object PMRel: TPopupMenu
    Left = 212
    Top = 69
    object AlVencido: TMenuItem
      Caption = 'Alugueis vencidos'
      OnClick = AlVencidoClick
    end
    object AlaVencer: TMenuItem
      Caption = 'Alugueis '#224' vencer'
      OnClick = AlaVencerClick
    end
    object AlDia: TMenuItem
      Caption = 'Alugueis do dia'
      OnClick = AlDiaClick
    end
  end
end
