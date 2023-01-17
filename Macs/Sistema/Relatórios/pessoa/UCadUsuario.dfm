inherited FCadUsuario: TFCadUsuario
  Left = 207
  Top = 83
  Caption = 'FCadUsuario'
  ClientHeight = 538
  ClientWidth = 747
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 745
    Height = 506
  end
  inherited LDescTitulo: TLabel
    Left = 505
    Top = 18
    Width = 155
    Caption = 'Cadastro de Usu'#225'rios'
  end
  inherited PConsulta: TPanel [5]
    Left = 8
    Top = 47
    Width = 725
    Height = 480
    object Label15: TLabel [0]
      Left = 40
      Top = 192
      Width = 38
      Height = 13
      Caption = 'Label15'
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 720
      Height = 387
      DataSource = DMMACS.DSUsuario
      Columns = <
        item
          Expanded = False
          FieldName = 'CODUSUARIO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGIN'
          Title.Caption = 'Login'
          Width = 142
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_CAD'
          Title.Caption = 'Data de Cadastro'
          Width = 142
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADM'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Width = 720
      inherited EdNome: TFlatEdit
        Width = 593
      end
      inherited BtnSelecionar: TBitBtn
        Left = 600
      end
    end
    inherited Painel: TPanel
      Width = 720
      inherited BtnRelatorio: TBitBtn
        PopupMenu = MenuRelatUsuario
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Width = 119
      end
    end
    object PainelModoRel: TPanel
      Left = 184
      Top = 112
      Width = 329
      Height = 217
      BorderStyle = bsSingle
      Color = 16772332
      TabOrder = 3
      Visible = False
      object GroupBox5: TGroupBox
        Left = 8
        Top = 8
        Width = 313
        Height = 145
        Caption = 'Modo de Relatorio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label16: TLabel
          Left = 16
          Top = 24
          Width = 66
          Height = 13
          Caption = 'Data Inicial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 176
          Top = 24
          Width = 59
          Height = 13
          Caption = 'Data Final'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EDtInicial: TColorMaskEdit
          Left = 16
          Top = 40
          Width = 120
          Height = 27
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EDtFinal: TColorMaskEdit
          Left = 176
          Top = 40
          Width = 120
          Height = 27
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        inline FrmBusca1: TFrmBusca
          Left = 12
          Top = 72
          Width = 293
          Height = 63
          Color = 16772332
          ParentColor = False
          TabOrder = 2
          TabStop = True
          inherited LTextoBusca: TLabel
            Left = 2
            Top = 4
            Width = 44
            Height = 13
            Caption = 'Usu'#225'rio'
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
          end
          inherited LUZOPEN: TShape
            Left = 251
            Top = 22
            Height = 25
          end
          inherited LUZMINUS: TShape
            Left = 273
            Top = 22
            Width = 18
            Height = 25
          end
          inherited EdDescricao: TFlatEdit
            Left = 33
            Top = 24
            Width = 219
            Height = 22
            TabStop = False
            ColorFlat = clWhite
            TabOrder = 2
          end
          inherited BTNOPEN: TBitBtn
            Left = 252
            Top = 25
            Width = 21
            Height = 20
            TabOrder = 0
            OnClick = FrmBusca1BTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 273
            Top = 25
            Height = 20
            TabOrder = 1
            OnClick = FrmBusca1BTNMINUSClick
          end
          inherited EDCodigo: TFlatEdit
            Top = 24
            Width = 31
            Height = 22
            TabStop = False
            TabOrder = 3
          end
        end
      end
      object Panel9: TPanel
        Left = 8
        Top = 160
        Width = 313
        Height = 49
        Color = 16772332
        TabOrder = 1
        object Button1: TButton
          Left = 48
          Top = 8
          Width = 89
          Height = 33
          Caption = 'IMPRIMIR'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 168
          Top = 8
          Width = 89
          Height = 33
          Caption = 'CANCELAR'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
  end
  inherited PCadastro: TPanel [6]
    Top = 47
    Width = 725
    Height = 481
    inherited Panel4: TPanel
      Left = 1
      Width = 721
      Height = 448
      inherited Label7: TLabel
        Left = 257
        Top = 16
        Width = 154
        Caption = 'Nome do Funcion'#225'rio:'
      end
      object Label2: TLabel [2]
        Left = 192
        Top = 16
        Width = 50
        Height = 18
        Caption = 'Interno:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [3]
        Left = 82
        Top = 16
        Width = 107
        Height = 18
        Caption = 'Data Cadastro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [4]
        Left = 16
        Top = 68
        Width = 123
        Height = 18
        Caption = 'Login do Usu'#225'rio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [5]
        Left = 151
        Top = 67
        Width = 127
        Height = 18
        Caption = 'Senha de Acesso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel [6]
        Left = 287
        Top = 67
        Width = 68
        Height = 18
        Caption = 'Confirme:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Width = 63
        DataField = 'CODUSUARIO'
        DataSource = DMMACS.DSUsuario
      end
      inherited DBDESC: TDBColorEdit
        Left = 255
        Top = 35
        Width = 416
        Color = clScrollBar
        TabOrder = 3
      end
      object DBCODFUNC: TDBColorEdit
        Left = 192
        Top = 35
        Width = 61
        Height = 22
        Color = clScrollBar
        Ctl3D = False
        DataSource = DMPESSOA.DSVWFuncionario
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDATA: TDBColorEdit
        Left = 83
        Top = 35
        Width = 104
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DATA_CAD'
        DataSource = DMMACS.DSUsuario
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBLOGIN: TDBColorEdit
        Left = 16
        Top = 89
        Width = 127
        Height = 24
        CharCase = ecUpperCase
        Color = 15658717
        Ctl3D = False
        DataField = 'LOGIN'
        DataSource = DMMACS.DSUsuario
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BTNOPEN: TBitBtn
        Left = 672
        Top = 35
        Width = 21
        Height = 22
        Hint = 'Pressione para selecionar outra cidade'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BTNOPENClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object BTNMINUS: TBitBtn
        Left = 693
        Top = 35
        Width = 22
        Height = 22
        Hint = 'Pressione para remover esta cidade'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BTNMINUSClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 128
        Width = 689
        Height = 154
        Caption = 'Lojas a qual o usu'#225'rio possui acesso'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        object DBGrid1: TDBGrid
          Left = 8
          Top = 16
          Width = 412
          Height = 132
          Color = clMoneyGreen
          DataSource = DMMACS.DSALX
          Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 3
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'BankGothic Md BT'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Loja'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FANTASIA'
              Title.Caption = 'Empresa'
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 421
          Top = 16
          Width = 262
          Height = 29
          BevelInner = bvLowered
          TabOrder = 0
          object BTNADICIONAR: TBitBtn
            Left = 2
            Top = 2
            Width = 258
            Height = 25
            Caption = 'Adic. nova loja para acesso '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BTNADICIONARClick
            Glyph.Data = {
              EE000000424DEE000000000000007600000028000000100000000F0000000100
              04000000000078000000130B0000130B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
              000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
              00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
              8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
              8888880BB088888888888800008888888888}
          end
        end
        object Panel3: TPanel
          Left = 421
          Top = 45
          Width = 262
          Height = 29
          BevelInner = bvLowered
          TabOrder = 1
          object BitBtn2: TBitBtn
            Left = 2
            Top = 2
            Width = 258
            Height = 25
            Caption = 'Remover acesso selecionado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn2Click
            Glyph.Data = {
              6E040000424D6E04000000000000360000002800000014000000120000000100
              18000000000038040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF7F7F7F7F7F7F606060606060707070707070707070FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFDFB0EFE0C0FFF0CFFFF0CFEFDFC0CFC0AFAFAF9F7F7F70606060707070FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCF
              FFEFC0EFD0BFDFB0AFE0CFBFEFCFBFFFEFD0FFFFDFC0C0B07F7F707F7F7FFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB0FFE0BFEFDFCFE0
              C0C0DFBFBF80BF6F60BF5F40B04080CF7FFFFFDFEFEFCF606060707070FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB0F0C090EFDFDFEFD0D0E0C0
              C080BF6F009F00109F1020A02070C060FFF0CF80807F8F8F8FFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB0FFF0EFF0EFEFE0CFCFE0B0B080BF6F
              009F0030AF30DFF0DF50BF4FDFE0AF8F8F808F8F8FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFE0BFFFE0C0FFFFFFF0F0EFD0AFAFEFBFBF80BF70CFDFBF50
              BF509FDF9FBFE0AFCFD090B0B0A08F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFE0BFFFFFE0FFFFF0E0CFCFD0AFAFE0BFBF60B050BFDFB09FDF9F009F
              0040B03FFFDFAFB0B09F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EFD0FFFFEFFFFFEFEFDFD0F0EFE0E0D0D0BFCFA0009F00109F10009F0040B03F
              FFE0BFDFD0B08F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFFF
              DFFFFFDFFFFFE0FFFFEFC0EFF0E0E0E0BFDFB080CF8080CF7F70C060FFF0DFDF
              D0B0707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0BFFFF0D0FFF0D0
              EFF0DFCFEFEFD0EFE0EFF0DFF0E0D0FFFFE0FFFFEFFFFFE0FFFFEFF0F0D06060
              60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B0F0CF8FF0DFAFD0F0E0D0
              EFDFF0F0DFE0F0FFE0CFCFF0EFEFEFF0EFFFCF9FFFEFC0FFFFDF606060FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFAF8F6FDFD0AFE0EFD0FFF0E0F0FF
              FFF0FFFFEFE0E0FFFFFFBFC0AFF0C080FFC08FFFDFB0707070FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFE0BFFFF0CFCFDFCF6FC0DFAFE0F0DFFFFFE0FFFF
              E0FFFFD0FFFFCFBF90AF9070C0B0A0FFC090707070FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFE0BFFFFFFFFFFFFF8FD0EF6FC0E07FD0EFAFF0F090
              E0EFFFC08FDFC0A0CFAF90FFCF908F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0E0EF70CFE070CFE0FFE0
              CFFFD0AFFFDFBFFFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
        end
        object Panel5: TPanel
          Left = 421
          Top = 74
          Width = 262
          Height = 29
          BevelInner = bvLowered
          TabOrder = 2
          object BitBtn3: TBitBtn
            Left = 2
            Top = 2
            Width = 258
            Height = 25
            Caption = 'Alterar/Consultar acesso selec.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn3Click
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
        end
      end
      object EDSenha: TColorMaskEdit
        Left = 151
        Top = 88
        Width = 121
        Height = 38
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 12
        ParentCtl3D = False
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 7
        OnExit = EDSenhaExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDConfirme: TColorMaskEdit
        Left = 287
        Top = 88
        Width = 121
        Height = 38
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 12
        ParentCtl3D = False
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 8
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object PADM: TPanel
        Left = 408
        Top = 63
        Width = 305
        Height = 19
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 10
        Visible = False
        object DBCBADM: TCheckBox
          Left = 24
          Top = 2
          Width = 257
          Height = 16
          Caption = 'Usu'#225'rio Administrador:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 284
        Width = 689
        Height = 155
        Caption = 'Caixas a qual o usu'#225'rio possui acesso'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        object DBGrid2: TDBGrid
          Left = 8
          Top = 16
          Width = 413
          Height = 124
          Color = 14085099
          DataSource = DMCAIXA.DAlx
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 3
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'BankGothic Md BT'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO1'
              Title.Caption = 'Caixa'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Loja'
              Width = 270
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRIMDIA'
              Title.Caption = 'De'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ULTDIA'
              Title.Caption = 'A'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA1'
              Title.Caption = 'Hor'#225'rio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTCAD'
              Title.Caption = 'Cadastro'
              Visible = True
            end>
        end
        object Panel6: TPanel
          Left = 422
          Top = 23
          Width = 262
          Height = 29
          BevelInner = bvLowered
          TabOrder = 0
          object BitBtn1: TBitBtn
            Left = 2
            Top = 2
            Width = 258
            Height = 25
            Caption = 'Adic. novo caixa para acesso '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn1Click
            Glyph.Data = {
              EE000000424DEE000000000000007600000028000000100000000F0000000100
              04000000000078000000130B0000130B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
              000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
              00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
              8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
              8888880BB088888888888800008888888888}
          end
        end
        object Panel7: TPanel
          Left = 422
          Top = 52
          Width = 262
          Height = 29
          BevelInner = bvLowered
          TabOrder = 1
          object BitBtn4: TBitBtn
            Left = 2
            Top = 2
            Width = 258
            Height = 25
            Caption = 'Remover acesso selecionado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn4Click
            Glyph.Data = {
              6E040000424D6E04000000000000360000002800000014000000120000000100
              18000000000038040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF7F7F7F7F7F7F606060606060707070707070707070FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFDFB0EFE0C0FFF0CFFFF0CFEFDFC0CFC0AFAFAF9F7F7F70606060707070FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCF
              FFEFC0EFD0BFDFB0AFE0CFBFEFCFBFFFEFD0FFFFDFC0C0B07F7F707F7F7FFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB0FFE0BFEFDFCFE0
              C0C0DFBFBF80BF6F60BF5F40B04080CF7FFFFFDFEFEFCF606060707070FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB0F0C090EFDFDFEFD0D0E0C0
              C080BF6F009F00109F1020A02070C060FFF0CF80807F8F8F8FFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB0FFF0EFF0EFEFE0CFCFE0B0B080BF6F
              009F0030AF30DFF0DF50BF4FDFE0AF8F8F808F8F8FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFE0BFFFE0C0FFFFFFF0F0EFD0AFAFEFBFBF80BF70CFDFBF50
              BF509FDF9FBFE0AFCFD090B0B0A08F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFE0BFFFFFE0FFFFF0E0CFCFD0AFAFE0BFBF60B050BFDFB09FDF9F009F
              0040B03FFFDFAFB0B09F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EFD0FFFFEFFFFFEFEFDFD0F0EFE0E0D0D0BFCFA0009F00109F10009F0040B03F
              FFE0BFDFD0B08F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFFF
              DFFFFFDFFFFFE0FFFFEFC0EFF0E0E0E0BFDFB080CF8080CF7F70C060FFF0DFDF
              D0B0707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0BFFFF0D0FFF0D0
              EFF0DFCFEFEFD0EFE0EFF0DFF0E0D0FFFFE0FFFFEFFFFFE0FFFFEFF0F0D06060
              60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B0F0CF8FF0DFAFD0F0E0D0
              EFDFF0F0DFE0F0FFE0CFCFF0EFEFEFF0EFFFCF9FFFEFC0FFFFDF606060FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFAF8F6FDFD0AFE0EFD0FFF0E0F0FF
              FFF0FFFFEFE0E0FFFFFFBFC0AFF0C080FFC08FFFDFB0707070FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFE0BFFFF0CFCFDFCF6FC0DFAFE0F0DFFFFFE0FFFF
              E0FFFFD0FFFFCFBF90AF9070C0B0A0FFC090707070FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFE0BFFFFFFFFFFFFF8FD0EF6FC0E07FD0EFAFF0F090
              E0EFFFC08FDFC0A0CFAF90FFCF908F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0E0EF70CFE070CFE0FFE0
              CFFFD0AFFFDFBFFFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
        end
        object Panel8: TPanel
          Left = 422
          Top = 81
          Width = 262
          Height = 29
          BevelInner = bvLowered
          TabOrder = 2
          object BitBtn5: TBitBtn
            Left = 2
            Top = 2
            Width = 258
            Height = 25
            Caption = 'Alterar/Consultar acesso selec.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn5Click
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
        end
      end
      object DBCBREVMOV: TCheckBox
        Left = 432
        Top = 86
        Width = 281
        Height = 16
        Caption = 'Revelar resumos de movimenta'#231#227'o ao entrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object PCaixa: TPanel
        Left = 24
        Top = 232
        Width = 449
        Height = 177
        BevelWidth = 3
        TabOrder = 12
        Visible = False
        OnExit = PCaixaExit
        object FPTitulo: TFashionPanel
          Left = 3
          Top = 4
          Width = 435
          Height = 169
          BevelOuter = bvNone
          Caption = 'FPTitulo'
          Color = 16772332
          TabOrder = 0
          RoundRect = True
          About = 'Orion Software'
          ShadowDepth = 2
          ShadowSpace = 5
          ShowShadow = False
          ShadowColor = clBlack
          TitleColor = clSkyBlue
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          Title = 'Title'
          LineWidth = 0
          LineColor = clBlack
          Theme = ttCustom
          object Label9: TLabel
            Left = 8
            Top = 28
            Width = 34
            Height = 13
            Caption = 'CAIXA:'
          end
          object GroupBox4: TGroupBox
            Left = 8
            Top = 54
            Width = 297
            Height = 107
            Caption = 'Controle de Turno'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            object Label10: TLabel
              Left = 8
              Top = 32
              Width = 17
              Height = 13
              Caption = 'De:'
            end
            object Label11: TLabel
              Left = 153
              Top = 32
              Width = 7
              Height = 13
              Caption = 'A'
            end
            object Label12: TLabel
              Left = 48
              Top = 56
              Width = 37
              Height = 13
              Caption = 'Hor'#225'rio:'
            end
            object Label13: TLabel
              Left = 134
              Top = 76
              Width = 16
              Height = 13
              Caption = 'At'#233
            end
            object DBCBDia1: TDBComboBox
              Left = 27
              Top = 24
              Width = 121
              Height = 21
              DataField = 'PRIMDIA'
              DataSource = DMCAIXA.DCaixaUsu
              ItemHeight = 13
              Items.Strings = (
                'Todos'
                'Segunda'
                'Ter'#231'a'
                'Quarta'
                'Quinta'
                'Sexta'
                'S'#225'bado'
                'Domingo')
              TabOrder = 0
            end
            object DBCBDia2: TDBComboBox
              Left = 168
              Top = 24
              Width = 121
              Height = 21
              DataField = 'ULTDIA'
              DataSource = DMCAIXA.DCaixaUsu
              ItemHeight = 13
              Items.Strings = (
                'Todos'
                'Segunda'
                'Ter'#231'a'
                'Quarta'
                'Quinta'
                'Sexta'
                'S'#225'bado'
                'Domingo')
              TabOrder = 1
            end
            object DBEDHora1: TDBColorEdit
              Left = 48
              Top = 72
              Width = 81
              Height = 19
              DataField = 'HORA1'
              DataSource = DMCAIXA.DCaixaUsu
              MaxLength = 5
              TabOrder = 2
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBEDHora2: TDBColorEdit
              Left = 156
              Top = 72
              Width = 81
              Height = 19
              DataField = 'HORA2'
              DataSource = DMCAIXA.DCaixaUsu
              MaxLength = 5
              TabOrder = 3
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object DBCBCaixa: TDBLookupComboBox
            Left = 48
            Top = 24
            Width = 257
            Height = 19
            Ctl3D = False
            DataField = 'COD_CAIXA'
            DataSource = DMCAIXA.DCaixaUsu
            KeyField = 'COD_CAIXA'
            ListField = 'DESCRICAO'
            ListSource = DMCAIXA.DCaixa
            ParentCtl3D = False
            TabOrder = 0
          end
          object BitBtn6: TBitBtn
            Left = 312
            Top = 103
            Width = 113
            Height = 25
            Hint = 'Pressione para confirmar'
            Caption = '&Ok'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BitBtn6Click
            Glyph.Data = {
              66030000424D6603000000000000360000002800000010000000110000000100
              18000000000030030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              BFBFBFFFFF000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F7F0000007F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFFFFF007F7F7F7F7F000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7FBFBFBF0000000000000000000000007F7F7F7F7F007F7F0000
              00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFFFFF00
              7F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F
              7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F
              7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F000000
              00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F
              7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F
              007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F
              007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F
              007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBF}
          end
          object BitBtn7: TBitBtn
            Left = 312
            Top = 135
            Width = 113
            Height = 25
            Hint = 'Pressione para confirmar'
            Caption = '&Cancelar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BitBtn7Click
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
      object BitBtn8: TBitBtn
        Left = 464
        Top = 106
        Width = 201
        Height = 25
        Caption = 'Imprimir Cod. Barras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = BitBtn8Click
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
          FF002728272B878787CE858585CC848484CB848484CB848484CB848484CB8484
          84CB848484CB858585CC848484CB1F1F1F22FFFFFF00FFFFFF00FFFFFF00FFFF
          FF005656567FF7F7F7FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF9F9F9FA57575778FFFFFF00FFFFFF00FFFFFF00FFFF
          FF005C5C5C6DE3E3E3ECF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFDDDDDDE560606068FFFFFF00FFFFFF005859597A4243
          429842434298969696EBC0C0C0FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD6D6D6FFDADADAFF8E8E8EE743434398434343985656567C717171F5DFDE
          DEFFBFBDBDFF414141FF6C6B6CFF6E6C6EFF6E6C6EFF6E6D6EFF6F6D6FFF6F6E
          6FFF6F6E6FFF6F6D6FFF434243FFBFBDBDFFDFDEDEFF717171F6747373F1E4E3
          E3FFC8C7C6FF323132FF4A484BFF4A484BFF484649FF454446FF444245FF4141
          43FF403F41FF3B3A3DFF272628FFC6C5C4FFE3E2E2FF757474F3717171E8EFEF
          EFFFDFDFDEFF565556FF838385FF7A7A7DFF737275FF6B6A6DFF636265FF5959
          5CFF515153FF464649FF2E2E2FFFDEDDDDFFEFEEEEFF747474EA7D7C7CD1EFEF
          EEFFDEDEDDFF686969FFB4B3B4FFB6B6B6FFB1B0B1FFA6A6A7FFA2A1A2FFA5A4
          A5FFA2A1A2FF909091FF515051FFE1E1E0FFF0F0F0FF808080D4919090ABF1F1
          F0FFF1F1F0FF6E6E6EFFBEBEBDFFC1C0BFFFB9B9B8FFBAB9B9FFB8B8B7FFB8B8
          B7FFBFBFBEFFBDBDBCFF6E6E6EFFF4F4F4FFF4F4F4FF969695AFBFBDBB3F9797
          96B6979796B69D9D9CF0A2A1A1FFA09F9FFFA1A1A0FFA1A1A0FFA1A0A0FFA0A0
          9FFF9F9F9FFFA1A0A0FF90908FF19B9A9AB69B9A9AB6C3C2C043FFFFFF00FFFF
          FF00FFFFFF00707070EEFCFBFBFFF9F8F8FFF9F8F8FFF9F8F8FFF9F8F8FFF9F8
          F8FFF9F8F8FFFDFCFCFF858584E4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00686868CFFFFFFFFFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
          F5FFF6F5F5FFFFFFFFFF7F7F7FBDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00626262A5FFFFFFFFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
          F5FFF6F5F5FFFFFFFFFF7170709EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00626262A6FFFFFFFFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
          F5FFF6F5F5FFFFFFFFFF717070A0FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00656565A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF747474A0FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF005959595DA2A1A1D1989797C9989797C9999898C9999898C99999
          98C9999999C9A3A2A2D263636362FFFFFF00FFFFFF00FFFFFF00}
      end
      object BitBtn9: TBitBtn
        Left = 673
        Top = 107
        Width = 20
        Height = 20
        TabOrder = 15
        OnClick = BitBtn9Click
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000001100010022000100210000
          000FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00040D0541102E10A1194619D81D4E1DED1C4C1CEB153D
          16D40B240C9702060337FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000070C260D8E215A21FA337432FF3E7E3CFF428140FF438241FF407F
          3EFF316F30FF1A4A1BF30615087B00000002FFFFFF00FFFFFF00FFFFFF000000
          00030B270C9E2C6A2BFF73A974FF73A974FF73A974FF74A975FF73A975FF73A9
          74FF73A974FF74A974FF225524FF05130784FFFFFF00FFFFFF00FFFFFF000211
          0363386F39FF73A974FF3D7C3AFF367634FF357635FF3F7D3EFF3D7C3BFF3675
          35FF387836FF468444FF74A974FF224D24FD00040148FFFFFF000000000C2045
          21D573A974FF458143FF3E7B3CFF4B874BFF4A8649FFDDE8DEFFCDDCCCFF4584
          41FF579055FF468645FF528F4FFF60975FFF0F2512BA000000030005003C5A88
          5BFF5F995DFF397935FF40823EFFEEF3EBFFEEF3EDFFFFFFFFFFFFFFFFFFEDF3
          EDFFF0F6F0FF4E8D4BFF4F8D4EFF71AB70FF416843F3000000250E1C0E616DA3
          6DFF4C8A4AFF42823FFF397E37FFFFFFFFFFEFF4EDFFA8CEA8FFA7CCA8FFFFFF
          FFFFFFFFFFFF50914CFF569455FF73AA71FF6E9A72FF01050146192B196865A0
          63FF519151FFBDD6BCFFE4EEE5FFFFFFFFFFA8CBA8FF488B45FF589554FFA6CA
          A5FFFFFFFFFFE4EFE3FFBED5BDFF76AF78FF89B38CFF070E084B1221124D629D
          5FFF609C5EFFBCD6BAFFFFFFFFFFFFFFFFFFA6C9A6FF478F48FF4B944BFFA6CA
          A6FFFFFFFFFFFFFFFFFFBBD5BCFF82B883FF96BB99FD080E0832060A061B6598
          64F17DB37DFF7BB17DFF73AD73FFFFFFFFFFF6FBF7FFA5C8A4FFA4C9A5FFFCFE
          FCFFFFFFFFFF79B179FF80B682FF9DCB9FFF8FA792DB0101010AFEFEFF004A6C
          4AA194C895FF86B987FF83B683FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF7DB581FF83B986FFABD8AFFF4B5D4E7FFDFDFD00FFFFFF000E16
          0F228DB690E9ABD5AEFFB0D2B2FFB0D3B3FFA0C7A4FFFFFFFEFFFBFBFBFF8FBF
          92FF99C69DFF9FC7A1FF9DCD9FFF719A73D703070311FFFFFF00FFFFFF00FFFE
          FE002A332B3DB9CFC2E5CCEAD4FFB0D4B6FFA4CDA8FFC7DFC9FFBDDAC0FF96C3
          9AFF9EC9A1FFA8D7A8FF75A076D70C170D26FCFBFC00FFFFFF00FFFFFF00FFFF
          FF00FFFEFD001A1D1B2086948D9EABB4B0FFD7ECDFFFCEEAD6FFC8E6CEFFC3E3
          C9FFADB5B1FF536F548F070C0613FBFBFA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFEFE00161A151F3F4A425658665D76536255743440
          364F0C100D17FAFAFB00FDFBFC00FFFFFF00FFFFFF00FFFFFF00}
      end
      object PConfigEt: TPanel
        Left = 463
        Top = 77
        Width = 202
        Height = 57
        Color = 16772332
        TabOrder = 16
        Visible = False
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 46
          Height = 16
          Caption = 'Largura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 96
          Top = 8
          Width = 39
          Height = 16
          Caption = 'Comp.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ELargura: TEdit
          Left = 8
          Top = 29
          Width = 68
          Height = 21
          TabOrder = 0
          Text = '2'
          OnExit = ELarguraExit
        end
        object EComp: TEdit
          Left = 96
          Top = 28
          Width = 68
          Height = 21
          TabOrder = 1
          Text = '6'
          OnExit = ECompExit
        end
        object BtnFechar: TBitBtn
          Left = 171
          Top = 30
          Width = 21
          Height = 21
          TabOrder = 2
          OnClick = BtnFecharClick
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00080857E41C1C66D91C1C6CD91C1C70D91D1D71D91C1C
            6ED91C1C69D9070757E2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00070756E52929B1FD2828FAFF2929FFFF2B2BFFFF2B2BFFFF2A2A
            FEFF2929FAFF2A2AAAF9060655E3FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00050555E52222A9FD1D1DF0FF1818EFFF2222F5FF2323F8FF2424F9FF2121
            F8FF1616F4FF1D1DF5FF2323A4F8050554E3FFFFFF00FFFFFF00FFFFFF000404
            53E51D1D95FD0F0FCEFF3636D6FF7171E4FF1717DEFF1717E1FF1616E2FF1A1A
            E2FF7474E6FF2F2FDBFF0F0FD5FF1D1D93F8030353E3FFFFFF00030352E51515
            7CFC0C0CA8FF3232B9FFB4B4CEFFD0CFBFFF8282D7FF0707C7FF0B0BC9FF8B8B
            D8FFD0D0BDFFAEADD1FF2A2ABFFF0D0DADFF181779F8030352E30A0A51E20606
            92FF00008EFF4343A0FFC9C9C3FFC7C6C3FFD3D3CBFF7F7FCDFF8787CFFFD3D3
            C9FFC7C7C4FFC5C5C1FF3A3A9FFF000091FF080895FF090950DB06064FDF0101
            6AFF000071FF000075FF444490FFD1D0D0FFD6D6D4FFDEDDD8FFDDDDD7FFD7D6
            D4FFCCCCCDFF3B3A91FF00007CFF000076FF010171FF06064FD905054DDF0606
            44FF050551FF060668FF000079FF4A4AA2FFE0E0E0FFE3E3E2FFE4E4E2FFDCDC
            DEFF4242A2FF00008CFF060685FF05056DFF06065EFF05054FD907074FDF1D1D
            5AFF1B1B6EFF171787FF14149EFF9393D5FFF4F4F2FFF6F6F4FFF6F6F4FFF3F3
            F1FF8B8BD8FF1414B2FF1919A5FF1B1B92FF1C1C84FF060651D9080854DF2626
            8BFF222295FF2626A9FFA4A4DEFFFFFFFFFFFFFFFFFFFCFCFDFFFDFDFDFFFFFF
            FFFFFFFFFFFF9B9BE3FF2727BEFF2626B0FF2626ACFF070755D90E0E59E23535
            BDFF2727BFFF7070CFFFFFFFFFFFFFFFFFFFEFEFF1FF5959C8FF6363CAFFF4F4
            F4FFFFFFFFFFFFFFFFFF6C6CD0FF3333C8FF3E3EC9FF0C0C57DC0B0B52C18C8C
            D6FF4545E6FF3D3DD5FFA2A2D3FFE8E8EAFF6868D0FF4141F5FF4141F2FF7171
            CFFFEAEAEAFF9C9CD2FF4848D6FF5555E5FF8F8FD4FE090951BBFFFFFF000E0E
            57C49B9BE9FF5C5CFFFF5050E6FF5B5BCDFF5A5AFAFF6667FFFF6868FFFF5D5D
            F9FF5F5FCCFF5858E8FF6A6AFFFF9D9DE5FE0C0C56BFFFFFFF00FFFFFF00FFFF
            FF0013135DC4AAAAF4FF7676FFFF7473FFFF7E7AFFFF817CFFFF807EFFFF7F7F
            FFFF7A7AFFFF8080FFFFAAAAF1FE11115BBFFFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00181861C4B9B9F7FFC5C0FFFFC8C0FFFFCBC2FFFFCAC2FFFFC5C2
            FFFFC4C4FFFFB9B9F5FE15155FBFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF001C1C64C12E2E79DF2F2E7BDF302F7BDF302F7BDF2E2E
            7ADF2E2E79DF191962BDFFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        end
      end
    end
    inherited Panel1: TPanel
      Width = 720
      object DBText1: TDBText [0]
        Left = 200
        Top = 8
        Width = 512
        Height = 17
        Alignment = taRightJustify
        DataField = 'LOGIN'
        DataSource = DMMACS.DSUsuario
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited PComunica: TPanel
    Left = 178
    Top = 203
    Height = 69
  end
  inherited PBotoes: TPanel
    inherited BtnFecha: TSpeedButton
      Left = 712
      Top = 5
    end
  end
  object MenuRelatUsuario: TPopupMenu
    Images = FMenu.ImageList1
    Left = 696
    Top = 135
    object HistoricoUsuario: TMenuItem
      Caption = 'Hist'#243'rico Usu'#225'rio'
      OnClick = HistoricoUsuarioClick
    end
    object ApagarHistrico1: TMenuItem
      Caption = 'Apagar Hist'#243'rico'
      OnClick = ApagarHistrico1Click
    end
  end
  object fsHistUsuario: TfrReport
    Dataset = FSDSHistUsuario
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 698
    Top = 204
    ReportForm = {18000000}
  end
  object FSDSHistUsuario: TfrDBDataSet
    DataSource = DMMACS.DSRel
    Left = 696
    Top = 167
  end
end
