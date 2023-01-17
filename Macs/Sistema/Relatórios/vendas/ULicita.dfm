inherited FLicita: TFLicita
  Left = 1
  Top = 23
  Caption = 'FLicita'
  ClientHeight = 522
  ClientWidth = 795
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 793
    Height = 487
  end
  inherited LDescTitulo: TLabel
    Left = 505
    Top = 18
    Width = 145
    Caption = 'Licita'#231#227'o de Vendas'
  end
  inherited PComunica: TPanel [5]
    Left = 165
    Top = 211
  end
  inherited PConsulta: TPanel [6]
    Left = 9
    Top = 47
    Width = 774
    Height = 464
    inherited GroupBox1: TGroupBox
      Width = 768
      inherited EdNome: TFlatEdit
        Left = 112
        Width = 529
      end
      inherited BtnSelecionar: TBitBtn
        Left = 652
        Top = 19
      end
      object EdNumOrc: TFlatEdit
        Left = 4
        Top = 19
        Width = 105
        Height = 25
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'N'#186' Or'#231'amento'
        OnKeyDown = EdNumOrcKeyDown
      end
    end
    inherited Painel: TPanel
      Width = 769
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 767
      Height = 373
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMLICITA'
          Title.Caption = 'N'#186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECLI'
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTABERT'
          Title.Caption = 'Abertura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTVALIDADE'
          Title.Caption = 'Validade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRTOTAL'
          Title.Caption = 'Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_FORMPAG'
          Title.Caption = 'Pagamento'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'Vendedor'
          Visible = False
        end>
    end
  end
  inherited PCadastro: TPanel [7]
    Left = 9
    Top = 49
    Width = 772
    Height = 464
    inherited Panel4: TPanel
      Top = 31
      Width = 768
      Height = 431
      object Label14: TLabel
        Left = 493
        Top = 61
        Width = 33
        Height = 16
        Caption = 'Obs:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 113
        Width = 70
        Height = 16
        Caption = 'Data Abert.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 112
        Top = 113
        Width = 70
        Height = 16
        Caption = 'Hora Abert.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 216
        Top = 113
        Width = 75
        Height = 16
        Caption = 'Dt. Validade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 753
        Height = 47
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label4: TLabel
          Left = 4
          Top = 6
          Width = 55
          Height = 16
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 142
          Top = 6
          Width = 78
          Height = 16
          Caption = 'CPF/CNPJ:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 308
          Top = 6
          Width = 47
          Height = 16
          Caption = 'Nome:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LUZOPEN: TShape
          Left = 722
          Top = 21
          Width = 22
          Height = 21
          Brush.Color = clRed
          Pen.Color = clRed
          Visible = False
        end
        object EdCodCli: TEdit
          Left = 4
          Top = 23
          Width = 133
          Height = 20
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, informe o cliente padr'#227'o consumidor'
          Color = 16121836
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '0'
          OnExit = EdCodCliExit
          OnKeyDown = EdCodCliKeyDown
        end
        object EdCPF: TEdit
          Left = 141
          Top = 23
          Width = 161
          Height = 20
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
            'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
            'essione <ESC>.'
          Color = 16121836
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 2
        end
        object EdNomeCli: TEdit
          Left = 307
          Top = 23
          Width = 414
          Height = 20
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
            'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
            'essione <ESC>.'
          Color = 16121836
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 3
        end
        object BtnProcPess: TBitBtn
          Left = 721
          Top = 23
          Width = 22
          Height = 21
          TabOrder = 4
          OnClick = BtnProcPessClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object PPesCad: TPanel
          Left = 138
          Top = 21
          Width = 584
          Height = 23
          BevelOuter = bvNone
          Color = 16772332
          Enabled = False
          TabOrder = 1
          object DBNomeCli: TDBColorEdit
            Left = 171
            Top = 2
            Width = 412
            Height = 20
            Hint = 
              'Digite o nome do cliente e pressione <ENTER>  para tentar locali' +
              'z'#225'-lo no cadastro'
            Color = 14540287
            Ctl3D = False
            DataField = 'NOMECLI'
            DataSource = DMSAIDA.DLicita
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnKeyPress = DBNomeCliKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBCPF: TDBColorEdit
            Left = 3
            Top = 2
            Width = 161
            Height = 20
            Color = 14540287
            Ctl3D = False
            DataField = 'CPFCNPJ'
            DataSource = DMSAIDA.DLicita
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      inline FrmVendedor: TFrmBusca
        Left = 7
        Top = 64
        Width = 256
        Height = 36
        AutoScroll = False
        Color = 16772332
        ParentColor = False
        TabOrder = 1
        inherited LTextoBusca: TLabel
          Top = -1
          Width = 59
          Caption = 'Vendedor:'
          Font.Name = 'Arial'
        end
        inherited LUZMINUS: TShape
          Left = 233
          Top = 11
          Width = 21
        end
        inherited EdDescricao: TFlatEdit
          Left = 49
          Top = 14
          Width = 184
          Height = 20
        end
        inherited BTNOPEN: TBitBtn
          Left = 233
          Top = 14
          OnClick = FrmVendedorBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 384
          Top = 14
          Enabled = False
        end
        inherited EDCodigo: TFlatEdit
          Left = 1
          Top = 14
          Width = 48
          Height = 20
          OnKeyDown = FrmVendedorEDCodigoKeyDown
        end
      end
      inline FrmFormPag1: TFrmBusca
        Left = 264
        Top = 60
        Width = 229
        Height = 43
        Color = 16772332
        ParentColor = False
        TabOrder = 2
        inherited LTextoBusca: TLabel
          Width = 145
          Caption = 'Forma de pagamento:'
        end
        inherited LUZOPEN: TShape
          Left = 186
          Width = 20
        end
        inherited LUZMINUS: TShape
          Left = 206
          Width = 20
        end
        inherited EdDescricao: TFlatEdit
          Left = 34
          Width = 151
          Height = 20
          ColorFlat = clWhite
        end
        inherited BTNOPEN: TBitBtn
          Left = 185
          OnClick = FrmFormPag1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 204
          OnClick = FrmFormPag1BTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 32
          Height = 20
          ColorFlat = 15269845
          OnKeyDown = FrmFormPag1EDCodigoKeyDown
        end
      end
      object DBOBS: TDBMemo
        Left = 529
        Top = 63
        Width = 233
        Height = 90
        Ctl3D = False
        DataField = 'OBS'
        DataSource = DMSAIDA.DLicita
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBDTABERT: TDBColorEdit
        Left = 8
        Top = 129
        Width = 92
        Height = 22
        Color = 15329769
        Ctl3D = False
        DataField = 'DTABERT'
        DataSource = DMSAIDA.DLicita
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBHRABERT: TDBColorEdit
        Left = 112
        Top = 129
        Width = 92
        Height = 22
        Color = 15329769
        Ctl3D = False
        DataField = 'HRABERT'
        DataSource = DMSAIDA.DLicita
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDTPREV: TDBColorEdit
        Left = 216
        Top = 129
        Width = 92
        Height = 22
        Color = 15597546
        Ctl3D = False
        DataField = 'DTVALIDADE'
        DataSource = DMSAIDA.DLicita
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object PCProdServ: TPageControl
        Left = 7
        Top = 160
        Width = 752
        Height = 265
        ActivePage = TabSheet1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Images = ImageList1
        MultiLine = True
        ParentFont = False
        TabOrder = 7
        TabPosition = tpBottom
        object TabSheet1: TTabSheet
          Caption = 'PRODUTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          object Shape6: TShape
            Left = 5
            Top = 0
            Width = 735
            Height = 237
            Brush.Color = 16772332
            Pen.Color = clMaroon
          end
          object GroupBox5: TGroupBox
            Left = 11
            Top = 97
            Width = 725
            Height = 138
            Caption = 'Lista de produtos da licita'#231#227'o'
            Color = 16772332
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 1
            object DbgProduto: TDBGrid
              Left = 3
              Top = 14
              Width = 719
              Height = 122
              Color = 15597546
              Ctl3D = False
              DataSource = DMESTOQUE.DSSlave
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
              Columns = <
                item
                  Expanded = False
                  FieldName = 'PRIMCOD'
                  Title.Caption = 'C'#243'd.'
                  Width = 48
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUMITEM'
                  Title.Caption = 'Item'
                  Width = 44
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTD'
                  Width = 42
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Produto'
                  Width = 263
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MARCA'
                  Title.Caption = 'Marca'
                  Width = 104
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRCOMPRA'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Compra'
                  Width = 59
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRREP'
                  Title.Caption = 'Reposi'#231#227'o'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCONTO'
                  Title.Alignment = taRightJustify
                  Title.Caption = '+ (%)'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTAL'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Vlr. Final'
                  Visible = True
                end>
            end
          end
          object Panel2: TPanel
            Left = 9
            Top = 4
            Width = 728
            Height = 93
            BevelInner = bvLowered
            Color = 16772332
            TabOrder = 0
            object LProduto: TLabel
              Left = 29
              Top = 60
              Width = 55
              Height = 16
              Caption = 'Produto'
              Font.Charset = ANSI_CHARSET
              Font.Color = 4868685
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label18: TLabel
              Left = 296
              Top = 4
              Width = 71
              Height = 16
              Caption = 'V. Comp.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 370
              Top = 5
              Width = 67
              Height = 16
              Caption = 'Vlr. Cust.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 514
              Top = 5
              Width = 37
              Height = 16
              Caption = '+ %:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 556
              Top = 5
              Width = 69
              Height = 16
              Caption = 'Vlr. Final:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LMarcaProd: TLabel
              Left = 30
              Top = 74
              Width = 38
              Height = 16
              Caption = 'Marca'
            end
            object LLocal: TLabel
              Left = 446
              Top = 56
              Width = 33
              Height = 16
              Caption = 'Local'
            end
            object Label9: TLabel
              Left = 448
              Top = 5
              Width = 49
              Height = 16
              Caption = 'Quant.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 634
              Top = 5
              Width = 62
              Height = 16
              Caption = 'N'#186' Item:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object PCodFab: TPanel
              Left = 168
              Top = 9
              Width = 126
              Height = 41
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 3
              Visible = False
              object Label10: TLabel
                Left = 1
                Top = 3
                Width = 120
                Height = 16
                Caption = 'C'#243'd. Fabricante:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EDCodFab: TColorMaskEdit
                Left = 0
                Top = 19
                Width = 125
                Height = 22
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                OnKeyDown = EDCodFabKeyDown
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object PCodInterno: TPanel
              Left = 168
              Top = 9
              Width = 126
              Height = 41
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 4
              Visible = False
              object Label17: TLabel
                Left = 2
                Top = 3
                Width = 112
                Height = 16
                Caption = 'Contrl. Interno:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EDCodInterno: TColorEditFloat
                Left = 0
                Top = 19
                Width = 125
                Height = 22
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                MaxLength = 13
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                Text = '0,00'
                OnKeyDown = EDCodInternoKeyDown
                EditType = fltString
                ValueFormat = '#,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object PCodComposto: TPanel
              Left = 168
              Top = 9
              Width = 129
              Height = 40
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 2
              Visible = False
              object Label16: TLabel
                Left = 2
                Top = 1
                Width = 116
                Height = 16
                Caption = 'C'#243'd. Composto:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EDCodComposto: TColorMaskEdit
                Left = 0
                Top = 18
                Width = 125
                Height = 22
                Ctl3D = False
                EditMask = '000.000.000-000;1;_'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                MaxLength = 15
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                Text = '   .   .   -   '
                OnKeyDown = EDCodCompostoKeyDown
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object PBPCodBarra: TPanel
              Left = 28
              Top = 14
              Width = 139
              Height = 36
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 1
              object Label15: TLabel
                Left = -1
                Top = -1
                Width = 82
                Height = 16
                Caption = 'C'#243'd. Barra:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EDCodBarra: TEdit
                Left = 0
                Top = 14
                Width = 137
                Height = 22
                BiDiMode = bdRightToLeft
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'BankGothic Md BT'
                Font.Style = []
                MaxLength = 13
                ParentBiDiMode = False
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                OnKeyDown = EDCodBarraKeyDown
              end
            end
            object BtnProcProd: TBitBtn
              Left = 8
              Top = 29
              Width = 20
              Height = 20
              Hint = 'Pressione para localizar o Produto'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = BtnProcProdClick
              Glyph.Data = {
                B6000000424DB60000000000000036000000280000000A000000040000000100
                18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
                C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
                90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
                90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
                C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
            end
            object BtnInsertProd: TBitBtn
              Left = 655
              Top = 48
              Width = 70
              Height = 21
              Hint = 
                'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                'na lista (ALT + I)'
              Caption = '&Inserir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              OnClick = BtnInsertProdClick
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                0400000000006800000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7000777777777777700077777707777770007777706077777000777706660777
                7000777066666077700077066666660770007000066600007000777706660777
                7000777706660777700077770666077770007777000007777000777777777777
                7000}
              Layout = blGlyphRight
              Spacing = 10
            end
            object BtnDeleteProd: TBitBtn
              Left = 655
              Top = 68
              Width = 70
              Height = 21
              Hint = 
                'Pressione para remover o produto selecionado na lista da mesma (' +
                'ALT + E)'
              Caption = '&Excluir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
              OnClick = BtnDeleteProdClick
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                0400000000006800000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7000777777777777700077770000077770007777066607777000777706660777
                7000777706660777700070000666000070007706666666077000777066666077
                7000777706660777700077777060777770007777770777777000777777777777
                7000}
              Layout = blGlyphRight
              Spacing = 10
            end
            object EdVlrComp: TColorEditFloat
              Left = 296
              Top = 21
              Width = 71
              Height = 22
              Color = 15857912
              Ctl3D = False
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              MaxLength = 13
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
              Text = '0,00'
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrRep: TColorEditFloat
              Left = 370
              Top = 21
              Width = 67
              Height = 22
              Color = 15857912
              Ctl3D = False
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              MaxLength = 13
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
              Text = '0,00'
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdAcrec: TColorEditFloat
              Left = 501
              Top = 21
              Width = 52
              Height = 22
              Color = 15329769
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              MaxLength = 13
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 8
              Text = '0,00'
              OnExit = EdQuantidadeExit
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrFinal: TColorEditFloat
              Left = 556
              Top = 21
              Width = 70
              Height = 22
              Hint = 
                'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
                'informe o valor em total e pressione <ENTER>'
              Color = 15329769
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              MaxLength = 13
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              Text = '0,00'
              OnExit = EdVlrFinalExit
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object BtnEscolheProc: TBitBtn
              Left = 282
              Top = 51
              Width = 11
              Height = 12
              Hint = 'Pressione para alterar o modo de procura (Alt+P)'
              Caption = '&P'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 13
              OnClick = BtnEscolheProcClick
            end
            object EdQuantidade: TColorEditFloat
              Left = 440
              Top = 21
              Width = 58
              Height = 22
              Color = 15329769
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              MaxLength = 13
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
              Text = '0,00'
              OnExit = EdQuantidadeExit
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdNumItem: TEdit
              Left = 630
              Top = 21
              Width = 66
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 10
            end
          end
        end
      end
    end
    inherited Panel1: TPanel
      Top = 2
      Width = 768
      object Label2: TLabel [0]
        Left = 315
        Top = 9
        Width = 30
        Height = 17
        Caption = 'N'#186':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel [1]
        Left = 620
        Top = 9
        Width = 19
        Height = 17
        Caption = '$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel [2]
        Left = 492
        Top = 9
        Width = 60
        Height = 16
        Caption = 'Desc(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited BtnGravar: TBitBtn
        TabOrder = 3
      end
      inherited BtnCancelar: TBitBtn
        TabOrder = 4
      end
      object DBNumPed: TDBColorEdit
        Left = 348
        Top = 3
        Width = 130
        Height = 25
        Color = 16772332
        Ctl3D = True
        DataField = 'NUMLICITA'
        DataSource = DMSAIDA.DLicita
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorPed: TColorEditFloat
        Left = 638
        Top = 3
        Width = 128
        Height = 25
        Hint = 
          'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
          'informe o valor em total e pressione <ENTER>'
        Color = 16772332
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '0,00'
        OnExit = EdValorPedExit
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDesc: TColorEditFloat
        Left = 552
        Top = 3
        Width = 64
        Height = 23
        Color = 16777175
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        OnExit = EdDescExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  object ImageList1: TImageList
    Left = 674
    Top = 49
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00000000005A5A63005252520000000000ADADAD00BDBDBD00000000000000
      00000000000000000000000000000000000000000000C6C6C600848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8CAD006363
      630000000000393963002929630000000000181842007B7BA500000000000000
      000000000000000000000000000000000000C6C6C60000000000C6C6C6008484
      8400FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD000000BD000000000000000000000000000000BD000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300313184000000
      520000007B0008088C0018189C0000007B0031319C0029298C00B5B5B5000000
      000000000000000000000000000000000000C6C6C600C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD000000BD00000000000000BD000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010106B0000004A004242
      C6001010420010108C0039399C00101042006B6BD60018184A0052525A000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6000000000000000000C6C6C600FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BD000000BD000000BD000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B008484
      EF007B7BCE00292984005A5A84004242C60000005A0000006B00393942000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005252CE003939D6008C8C
      D60063636300B5B5B50052525200101029007B7BE7006B6BBD004A4A4A000000
      0000B5B5B500BDBDBD0000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007373A50031316B007B7B
      A5007B7B7B00DEDEDE006B6B6B00393939007B7BDE0010182100393939000000
      00005A6B6B007B84840000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000052529C006B6B
      940042426300DEDEDE006B6B6B00000018007B7BFF002942520008393900007B
      7B00219494002929290063636300000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADBD009494
      A500A5A5A500A5A5A5007B7B7B004A5A5A003152AD00219CAD00398C8C00214A
      4A0073DEDE0008424200107373000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000000000000000000000000000000FF
      FF000000000000FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000BD000000BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00B5B5B5009C9C9C008CADAD007BB5B500216B6B004A6B6B0039C6
      C60063F7F70000737300007B7B00000000000000000000FFFF0000FFFF000000
      0000C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000BD0000000000000000000000BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073ADAD0052DEDE008CFFFF006B6B6B00CECECE00525252002931
      310039C6C60073B5B50052949400000000000000000000FFFF00C6C6C60000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484840000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000BD000000BD0000000000000000000000BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00296B6B007BD6D60073737300DEDEDE00636363003939
      390029ADAD00313939007B7B7B0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF00848484000000000000000000000000000000000000000000000000000000
      00000000BD0000000000000000000000BD000000BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005AA5A50084E7E700526B6B00E7E7E700636363000821
      2100298C8C004A4A4A00000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF008484840000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADBDBD0063A5A500ADADAD009C9C9C007B7B7B007373
      73009C9C9C00B5B5B50000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C6008484840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00ADADAD00A5A5A500A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF8FFFFFFF0000C93F03FFFFFF0000
      C93F00FFF9CF0000801F007FFC9F0000801F001FFE3F0000801FC001CB730000
      8013F800B7ED00008013F800B7EF0000C001E001B6ED0000C001C000C6730000
      F0018000FDBF0000F8018003F9BF0000F801C007F67F0000FC03C00FEFFF0000
      FC03F01FFFFF0000FF0FF87FFFFF000000000000000000000000000000000000
      000000000000}
  end
  object MEscolheProc: TPopupMenu
    Left = 218
    Top = 47
    object ControleInterno1: TMenuItem
      Caption = 'Controle Interno'
      OnClick = ControleInterno1Click
    end
    object CdFab1: TMenuItem
      Caption = 'C'#243'd. Fabricante'
      OnClick = CdFab1Click
    end
    object C1: TMenuItem
      Caption = 'C'#243'd. Composto'
      OnClick = C1Click
    end
  end
  object FSRel: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 392
    Top = 56
    ReportForm = {18000000}
  end
  object FSDSRel: TfrDBDataSet
    DataSet = DMESTOQUE.TSlave
    Left = 360
    Top = 56
  end
  object FSDSServ: TfrDBDataSet
    DataSet = DMESTOQUE.TSlaveServ
    Left = 304
    Top = 56
  end
  object FSDSDesp: TfrDBDataSet
    DataSet = DMESTOQUE.TDesp
    Left = 248
    Top = 48
  end
  object PmRelatorio: TPopupMenu
    Left = 333
    Top = 56
    object CompdeAbertura1: TMenuItem
      Caption = 'Imp. Licita'#231#227'o'
      OnClick = CompdeAbertura1Click
    end
  end
end
