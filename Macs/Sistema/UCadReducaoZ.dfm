inherited FCadReducaoZ: TFCadReducaoZ
  Left = 156
  Top = 149
  Caption = 'FCadReducaoZ'
  ClientHeight = 453
  ClientWidth = 772
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 194
    Top = 150
  end
  inherited PConsulta: TPanel [1]
    Left = 8
    Top = 50
    Width = 753
    Height = 271
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 746
      Height = 184
      Columns = <
        item
          Expanded = False
          FieldName = 'DTEMISSAO'
          Title.Caption = 'Emiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMSERIE'
          Title.Caption = 'N'#186' de S'#233'rie'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMORDEM'
          Title.Caption = 'N'#186' de Ordem'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTREINICIO'
          Title.Caption = 'Qtde. Rein'#237'cio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCONTREDZ'
          Title.Caption = 'Qtde. Redu'#231#227'o Z'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRVNDBRUTA'
          Title.Caption = 'Venda Bruta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRTGERAL'
          Title.Caption = 'Total Geral'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Width = 746
      inherited EdNome: TFlatEdit
        Width = 731
      end
    end
    inherited Painel: TPanel
      Width = 747
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
    end
  end
  inherited PCadastro: TPanel [2]
    Top = 50
    Width = 753
    Height = 271
    inherited Panel4: TPanel
      Width = 749
      Height = 234
      inherited Label6: TLabel
        Width = 94
        Height = 16
        Caption = 'Data Emiss'#227'o:'
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
      end
      inherited Label7: TLabel
        Left = 122
        Top = 16
        Width = 81
        Height = 16
        Caption = 'N'#186' de S'#233'rie:'
        Font.Height = -13
        Font.Name = 'Verdana'
      end
      object Label1: TLabel [2]
        Left = 269
        Top = 16
        Width = 90
        Height = 16
        Caption = 'N'#186' de Ordem:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [3]
        Left = 16
        Top = 64
        Width = 96
        Height = 16
        Caption = 'Qnt. Redu'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [4]
        Left = 269
        Top = 64
        Width = 78
        Height = 16
        Caption = #218'lt. Cupom:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [5]
        Left = 122
        Top = 64
        Width = 70
        Height = 16
        Caption = '1'#186' Cupom:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [6]
        Left = 269
        Top = 112
        Width = 104
        Height = 16
        Caption = 'Sub. Tribut'#225'ria:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel [7]
        Left = 122
        Top = 112
        Width = 99
        Height = 16
        Caption = 'Cancelamento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel [8]
        Left = 16
        Top = 112
        Width = 89
        Height = 16
        Caption = 'Qnt. Rein'#237'cio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel [9]
        Left = 269
        Top = 160
        Width = 78
        Height = 16
        Caption = 'Total Geral:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel [10]
        Left = 122
        Top = 160
        Width = 87
        Height = 16
        Caption = 'Venda Bruta:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel [11]
        Left = 16
        Top = 160
        Width = 68
        Height = 16
        Caption = 'Desconto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Top = 31
        Width = 94
        Color = 15658717
        DataField = 'DTEMISSAO'
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ReadOnly = False
        Visible = False
        OnExit = DBPRIMEIROExit
      end
      inherited DBDESC: TDBColorEdit
        Left = 122
        Top = 31
        Width = 135
        DataField = 'NUMSERIE'
        Font.Name = 'Verdana'
        TabOrder = 13
        Visible = False
      end
      object GroupBox2: TGroupBox
        Left = 400
        Top = 26
        Width = 332
        Height = 171
        Caption = ' TRIBUTA'#199#195'O '
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 14
        object Label13: TLabel
          Left = 34
          Top = 24
          Width = 82
          Height = 16
          Caption = 'Tributa'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 178
          Top = 24
          Width = 43
          Height = 16
          Caption = 'Valor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 255
          Top = 24
          Width = 66
          Height = 16
          Caption = 'Imposto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBColorEdit17: TEdit
          Left = 13
          Top = 39
          Width = 21
          Height = 22
          Color = clSilver
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          MaxLength = 3
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '01'
        end
        object Edit1: TEdit
          Left = 13
          Top = 64
          Width = 21
          Height = 22
          Color = clSilver
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          MaxLength = 3
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = '02'
        end
        object Edit2: TEdit
          Left = 13
          Top = 89
          Width = 21
          Height = 22
          Color = clSilver
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          MaxLength = 3
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Text = '03'
        end
        object Edit3: TEdit
          Left = 13
          Top = 114
          Width = 21
          Height = 22
          Color = clSilver
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          MaxLength = 3
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          Text = '04'
        end
        object Edit4: TEdit
          Left = 13
          Top = 139
          Width = 21
          Height = 22
          Color = clSilver
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          MaxLength = 3
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          Text = '05'
        end
        object Alq01: TEdit
          Left = 33
          Top = 39
          Width = 87
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Text = 'Alq01'
        end
        object Alq02: TEdit
          Left = 33
          Top = 64
          Width = 87
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          Text = 'Alq02'
        end
        object Alq03: TEdit
          Left = 33
          Top = 89
          Width = 87
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          Text = 'Alq03'
        end
        object Alq04: TEdit
          Left = 33
          Top = 114
          Width = 87
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
          Text = 'Alq04'
        end
        object Alq05: TEdit
          Left = 33
          Top = 139
          Width = 87
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 17
          Text = 'Alq05'
        end
        object Vlr01: TEdit
          Left = 129
          Top = 39
          Width = 91
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          Text = 'Vlr01'
        end
        object Vlr02: TEdit
          Left = 129
          Top = 64
          Width = 91
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          Text = 'Vlr02'
        end
        object Vlr03: TEdit
          Left = 129
          Top = 89
          Width = 91
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
          Text = 'Vlr03'
        end
        object Vlr04: TEdit
          Left = 129
          Top = 114
          Width = 91
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
          Text = 'Vlr04'
        end
        object Vlr05: TEdit
          Left = 129
          Top = 139
          Width = 91
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 18
          Text = 'Vlr05'
        end
        object Imp01: TEdit
          Left = 230
          Top = 39
          Width = 91
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          Text = 'Imp01'
        end
        object Imp02: TEdit
          Left = 230
          Top = 64
          Width = 91
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          Text = 'Imp02'
        end
        object Imp03: TEdit
          Left = 230
          Top = 89
          Width = 91
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
          Text = 'Imp03'
        end
        object Imp04: TEdit
          Left = 230
          Top = 114
          Width = 91
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 16
          Text = 'Imp04'
        end
        object Imp05: TEdit
          Left = 230
          Top = 139
          Width = 91
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 19
          Text = 'Imp05'
        end
      end
      object EdNumSerie: TEdit
        Left = 120
        Top = 32
        Width = 135
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = 'EdNumSerie'
      end
      object EdQtdReduc: TEdit
        Left = 16
        Top = 80
        Width = 94
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = 'EdQtdReduc'
      end
      object EdQtdReinicio: TEdit
        Left = 16
        Top = 128
        Width = 94
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        Text = 'EdQtdReinicio'
      end
      object EdDesconto: TEdit
        Left = 16
        Top = 176
        Width = 94
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        Text = 'EdDesconto'
      end
      object EdCupomIni: TEdit
        Left = 120
        Top = 80
        Width = 135
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = 'EdCupomIni'
      end
      object EdCancelamento: TEdit
        Left = 120
        Top = 128
        Width = 135
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        Text = 'EdCancelamento'
      end
      object EdVendBruta: TEdit
        Left = 120
        Top = 176
        Width = 135
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        Text = 'EdCancelamento'
      end
      object EdNumOrdem: TEdit
        Left = 264
        Top = 32
        Width = 113
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = 'EdNumOrdem'
      end
      object EdCupomFim: TEdit
        Left = 264
        Top = 80
        Width = 113
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        Text = 'EdCupomFim'
      end
      object EdSubTrib: TEdit
        Left = 264
        Top = 128
        Width = 113
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        Text = 'EdSubTrib'
      end
      object EdTotalGeral: TEdit
        Left = 264
        Top = 176
        Width = 113
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        Text = 'EdTotalGeral'
      end
      object EdDtEmissao: TMaskEdit
        Left = 16
        Top = 32
        Width = 92
        Height = 22
        Ctl3D = False
        EditMask = '!90/90/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
      end
    end
    inherited Panel1: TPanel
      Width = 749
      object Label16: TLabel [0]
        Left = 216
        Top = 8
        Width = 106
        Height = 16
        Caption = 'Per'#237'odo Fiscal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel [1]
        Left = 336
        Top = 8
        Width = 57
        Height = 16
        Caption = 'Label17'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 634
        Top = 2
        Width = 113
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para cancelar esta opera'#231#227'o e retornar para' +
          ' o painel de consulta'
        Caption = 'Per'#237'odo Fiscal'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn1Click
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF60606060606060606060606060
          6060606060606060606060606060606060606060606060606060FFFFFFFFFFFF
          0000FFFFFFFFFFFF1F80B01F80B0107FB0107FAF107FAF0F70AF0F70A00F70A0
          006FA0006F9F006F9F00609F00609F606060606060FFFFFF0000FFFFFF2080BF
          60CFFF1F80BF9FFFFF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0
          FF3FA0D09FFFFF00609F606060FFFFFF0000FFFFFF208FBF60CFFF208FBF9FFF
          FF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF3FA0D09FFFFF00
          609F606060FFFFFF0000FFFFFF208FC060CFFF2F90C09FFFFFFF8F6FFF8F6FFF
          8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6F00609FDF0000FFFFFF
          0000FFFFFF2F8FC060CFFF309FCF9FFFFFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFF
          D0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00609FDF0000FFFFFF0000FFFFFF2F90C0
          6FD0FF309FCF9FFFFFFF8F6FD0FFFFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
          CFCFCFCFCFCFCF00609FDF0000FFFFFF0000FFFFFF2F90C07FE0FF2F90C0FFFF
          FFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00
          609FDF0000FFFFFF0000FFFFFF3090CF80EFFF80E0FF2F90C02F90C02F90C02F
          90C02F90C02F90C02F90C02F90C02F90C02F90C02F90C0E0E0E0DF0000FFFFFF
          0000FFFFFF309FCF90F0FF8FF0FF8FF0FFDF0000E0E0E0F0FFFFF0FFFFF0FFFF
          F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFE0E0E0DF0000FFFFFF0000FFFFFF309FCF
          FFFFFF9FFFFF9FFFFFDF0000E0E0E0CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
          CFCFCFCFCFCFCFE0E0E0DF0000FFFFFF0000FFFFFFFFFFFF309FCFFFFFFFFFFF
          FFDF0000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
          E0E0DF0000FFFFFF0000FFFFFFFFFFFFFFFFFF309FCF309FCFDF0000FF5020FF
          5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020DF0000FFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF0000FF5020FF5020FF5020FF5020
          FF5020FF5020FFAF8FFFAF8F2050FF004FDFDF0000FFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF8F6FFF5020FF5020FF5020FF5020FF5020FF5020FF50
          20FF5020FF5020FF5020FF8F6FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
      end
    end
  end
end
