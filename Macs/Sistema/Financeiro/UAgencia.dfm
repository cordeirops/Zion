inherited FCadAgencia: TFCadAgencia
  Left = 300
  Top = 162
  Caption = 'FCadAgencia'
  ClientHeight = 423
  ClientWidth = 762
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PConsulta: TPanel
    Left = 10
    Top = 7
    Width = 742
    Height = 405
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 737
      Height = 309
      DataSource = DMBANCO.DWAgencia
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMBANC'
          Title.Caption = 'N'#186' Banco'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMAGENCIA'
          Title.Caption = 'N'#186' Ag'#234'ncia'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Ag'#234'ncia'
          Width = 516
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Width = 737
      inherited EdNome: TFlatEdit
        Width = 603
      end
      inherited BtnSelecionar: TBitBtn
        Left = 621
        Top = 20
        Width = 110
      end
    end
    inherited Painel: TPanel
      Width = 737
    end
  end
  inherited PCadastro: TPanel [1]
    Left = 9
    Top = 7
    Width = 741
    Height = 406
    inherited Panel4: TPanel
      Width = 737
      Height = 373
      inherited Label6: TLabel
        Left = 8
        Top = 8
      end
      inherited Label7: TLabel
        Left = 87
        Top = 8
        Width = 81
        Caption = 'N'#186' Agencia:'
      end
      object Label13: TLabel [2]
        Left = 8
        Top = 52
        Width = 62
        Height = 18
        Caption = 'Ag'#234'ncia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel [3]
        Left = 398
        Top = 56
        Width = 47
        Height = 18
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel [4]
        Left = 8
        Top = 98
        Width = 72
        Height = 18
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel [5]
        Left = 593
        Top = 143
        Width = 38
        Height = 18
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 8
        Top = 27
        Width = 73
        DataField = 'COD_AGENCIA'
        DataSource = DMBANCO.DAgencia
      end
      inherited DBDESC: TDBColorEdit
        Left = 86
        Top = 27
        Width = 83
        Color = 16758639
        DataField = 'NUMAGENCIA'
        DataSource = DMBANCO.DAgencia
      end
      object DBNOMEPJ: TDBColorEdit
        Left = 8
        Top = 72
        Width = 385
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'NOME'
        DataSource = DMPESSOA.DSPessoa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit2: TDBColorEdit
        Left = 397
        Top = 72
        Width = 332
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'BAIRRO'
        DataSource = DMPESSOA.DSPessoa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit4: TDBColorEdit
        Left = 8
        Top = 118
        Width = 721
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'ENDERECO'
        DataSource = DMPESSOA.DSPessoa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit13: TDBColorEdit
        Left = 593
        Top = 160
        Width = 136
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'CEP'
        DataSource = DMPESSOA.DSPessoa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 9
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object PageControl1: TPageControl
        Left = 6
        Top = 190
        Width = 723
        Height = 176
        ActivePage = TabSheet1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        MultiLine = True
        ParentFont = False
        TabOrder = 8
        TabPosition = tpLeft
        object TabSheet1: TTabSheet
          Caption = 'Telefones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = [fsItalic]
          ParentFont = False
          object GroupBox2: TGroupBox
            Left = 10
            Top = -3
            Width = 679
            Height = 167
            Caption = 'Telefones:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 2
              Top = 16
              Width = 675
              Height = 148
              Color = 16316657
              DataSource = DMPESSOA.DSTelefone
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Descri'#231#227'o do Telefone'
                  Width = 243
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CONTATO'
                  Title.Caption = 'Contato'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUMERO'
                  Title.Caption = 'N'#250'mero'
                  Width = 64
                  Visible = True
                end>
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'E- Mails'
          ImageIndex = 1
          object GroupBox3: TGroupBox
            Left = 16
            Top = -1
            Width = 673
            Height = 162
            Caption = 'E-Mails'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object DBGrid2: TDBGrid
              Left = 1
              Top = 16
              Width = 671
              Height = 144
              Color = 16316657
              DataSource = DMPESSOA.DSEmail
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 251
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EMAIL'
                  Title.Caption = 'E-Mail'
                  Width = 384
                  Visible = True
                end>
            end
          end
        end
      end
      inline FrmBuscaBanco: TFrmBusca
        Left = 172
        Top = 9
        Width = 561
        Height = 43
        Color = 16772332
        ParentColor = False
        TabOrder = 2
        inherited LTextoBusca: TLabel
          Width = 46
          Caption = 'Banco:'
        end
        inherited LUZOPEN: TShape
          Left = 511
        end
        inherited LUZMINUS: TShape
          Left = 531
        end
        inherited EdDescricao: TFlatEdit
          Width = 439
        end
        inherited BTNOPEN: TBitBtn
          Left = 513
          OnClick = FrmBuscaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 531
          Hint = 'Pressione para apagar o banco'
          OnClick = FrmBuscaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          OnKeyPress = FrmBuscaEDCodigoKeyPress
        end
      end
      inline FrmBusca1: TFrmBusca
        Left = 8
        Top = 144
        Width = 585
        Height = 43
        Color = 16772332
        ParentColor = False
        TabOrder = 6
        inherited LTextoBusca: TLabel
          Width = 50
          Caption = 'Cidade:'
        end
        inherited LUZOPEN: TShape
          Left = 527
        end
        inherited LUZMINUS: TShape
          Left = 547
        end
        inherited EdDescricao: TFlatEdit
          Width = 455
        end
        inherited BTNOPEN: TBitBtn
          Left = 529
          Hint = 'Pressione para selecionar '#224' Cidade'
          OnClick = FrmBusca1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 547
          Hint = 'Pressione para apagar '#224' Cidade'
          OnClick = FrmBusca1BTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          OnKeyPress = FrmBusca1EDCodigoKeyPress
        end
      end
    end
    inherited Panel1: TPanel
      Width = 737
    end
  end
  inherited PComunica: TPanel [2]
    Left = 114
    Top = 120
  end
end
