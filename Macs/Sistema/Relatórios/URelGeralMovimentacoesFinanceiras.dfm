inherited FRelGeralMovimentacoesFinanceiras: TFRelGeralMovimentacoesFinanceiras
  Left = 179
  Top = 113
  Caption = 'Rel. Geral de Mov. Financeiras'
  ClientHeight = 386
  ClientWidth = 630
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 50
    Top = 80
  end
  inherited GroupBox1: TGroupBox
    Top = 332
    Width = 604
    inherited GroupBox3: TGroupBox
      Left = 248
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
    inherited GroupBox4: TGroupBox
      Left = 503
    end
  end
  object PGeral: TPanel [2]
    Left = 8
    Top = 8
    Width = 615
    Height = 329
    BevelOuter = bvNone
    TabOrder = 2
    object Shape4: TShape
      Left = 0
      Top = 2
      Width = 613
      Height = 94
      Brush.Color = clBtnFace
      Pen.Color = clGray
      Pen.Width = 8
    end
    object Label1: TLabel
      Left = 159
      Top = 16
      Width = 88
      Height = 22
      Caption = 'Per'#237'odo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 160
      Top = 34
      Width = 96
      Height = 16
      Caption = 'Dt. Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 307
      Top = 34
      Width = 80
      Height = 16
      Caption = 'Dt. Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 240
      Top = 104
      Width = 119
      Height = 14
      Caption = 'Tipo do Relat'#243'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 175
      Top = 120
      Width = 249
      Height = 32
    end
    object Label5: TLabel
      Left = 236
      Top = 232
      Width = 144
      Height = 13
      Caption = 'Filtros em Data de fechamento'
      Transparent = True
    end
    object Label6: TLabel
      Left = 514
      Top = 184
      Width = 70
      Height = 13
      Caption = 'Data de d'#233'bito'
      Transparent = True
    end
    object Label7: TLabel
      Left = 259
      Top = 184
      Width = 100
      Height = 13
      Caption = 'Data de Fechamento'
      Transparent = True
    end
    object Label8: TLabel
      Left = 92
      Top = 184
      Width = 83
      Height = 13
      Caption = 'Data de Cadastro'
      Transparent = True
    end
    object Label9: TLabel
      Left = 62
      Top = 231
      Width = 70
      Height = 13
      Caption = 'Data de d'#233'bito'
      Transparent = True
    end
    object Label10: TLabel
      Left = 526
      Top = 232
      Width = 83
      Height = 13
      Caption = 'Data de Dep'#243'sito'
      Transparent = True
    end
    object Label11: TLabel
      Left = 295
      Top = 280
      Width = 64
      Height = 13
      Caption = 'Posi'#231#227'o atual'
      Transparent = True
    end
    object Label12: TLabel
      Left = 525
      Top = 280
      Width = 83
      Height = 13
      Caption = 'Data de Dep'#243'sito'
      Transparent = True
    end
    object Label13: TLabel
      Left = 27
      Top = 280
      Width = 148
      Height = 13
      Caption = 'Separa pagamento de compras'
      Transparent = True
    end
    object Label14: TLabel
      Left = 70
      Top = 290
      Width = 105
      Height = 13
      Caption = 'de outros pagamentos'
      Transparent = True
    end
    object edData1: TcxDateEdit
      Left = 160
      Top = 49
      Width = 140
      Height = 30
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Courier New'
      Style.Font.Style = [fsBold]
      TabOrder = 0
    end
    object edData2: TcxDateEdit
      Left = 307
      Top = 49
      Width = 140
      Height = 30
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Courier New'
      Style.Font.Style = [fsBold]
      TabOrder = 1
    end
    object CBOrdens: TCheckBox
      Left = 197
      Top = 216
      Width = 188
      Height = 17
      Caption = 'Ord. de Servi'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object RbSintetico: TRadioButton
      Left = 182
      Top = 128
      Width = 113
      Height = 17
      Caption = 'Sint'#233'tico'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = RbSinteticoClick
    end
    object RbAnalitico: TRadioButton
      Left = 302
      Top = 128
      Width = 113
      Height = 17
      Caption = 'Anal'#237'tico'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = RbSinteticoClick
    end
    object CBRecebimentos: TCheckBox
      Left = 436
      Top = 168
      Width = 155
      Height = 17
      Caption = 'Recebimentos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object CbPedVenda: TCheckBox
      Left = 197
      Top = 168
      Width = 169
      Height = 17
      Caption = 'Ped. de Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object CBPedCompra: TCheckBox
      Left = 5
      Top = 168
      Width = 175
      Height = 17
      Caption = 'Ped. de Compra'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object CBPagamentos: TCheckBox
      Left = 5
      Top = 215
      Width = 184
      Height = 17
      Caption = 'Pagamentos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object CBCaixa: TCheckBox
      Left = 436
      Top = 216
      Width = 175
      Height = 17
      Caption = 'Saldo de Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object CBEstoque: TCheckBox
      Left = 197
      Top = 264
      Width = 175
      Height = 17
      Caption = 'Vlrs. Estoque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object CBBanco: TCheckBox
      Left = 435
      Top = 264
      Width = 175
      Height = 17
      Caption = 'Saldo de Banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object CBSeparar: TCheckBox
      Left = 5
      Top = 264
      Width = 184
      Height = 17
      Caption = 'Separar Pagam.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
  end
  inherited FSRel: TfrReport
    Top = 65528
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Top = 65528
  end
end
