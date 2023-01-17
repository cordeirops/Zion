inherited FConsPlnCta: TFConsPlnCta
  Left = 294
  Top = 11
  Caption = 'FConsPlnCta'
  ClientHeight = 514
  ClientWidth = 728
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 10
    Height = 505
    inherited Panel4: TPanel
      Top = 31
      Height = 474
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 101
        Height = 16
        Caption = 'Classifica'#231#227'o..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 145
        Height = 16
        Caption = 'Descri'#231#227'o da Conta..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 120
        Width = 75
        Height = 16
        Caption = 'Natureza..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 144
        Top = 120
        Width = 44
        Height = 16
        Caption = 'Tipo..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 430
        Top = 120
        Width = 111
        Height = 16
        Caption = 'C'#243'd. Gerencial..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 240
        Top = 120
        Width = 47
        Height = 16
        Caption = 'N'#237'vel..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 328
        Top = 120
        Width = 58
        Height = 16
        Caption = 'Ordem..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object PProgramada: TPanel
        Left = 8
        Top = 168
        Width = 673
        Height = 225
        BevelOuter = bvNone
        BevelWidth = 2
        BiDiMode = bdRightToLeftNoAlign
        Color = 16777164
        ParentBiDiMode = False
        TabOrder = 12
        Visible = False
        object Label6: TLabel
          Left = 8
          Top = 6
          Width = 58
          Height = 18
          Hint = 'Conta de C'#225'lculo Fixo'
          Caption = 'C.C.F.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        inline FrmTCF: TFrmBusca
          Left = 75
          Top = 12
          Width = 185
          Height = 43
          AutoScroll = False
          Color = 16777164
          ParentColor = False
          TabOrder = 1
          inherited LTextoBusca: TLabel
            Top = 1
            Width = 178
            Height = 13
            Caption = 'Totalizadora de Custo Fixo:'
            Font.Height = -11
            Font.Style = [fsBold]
          end
          inherited LUZOPEN: TShape
            Left = 478
            Width = 23
            Height = 22
          end
          inherited LUZMINUS: TShape
            Left = 502
          end
          inherited EdDescricao: TFlatEdit
            Left = 49
            Width = 136
            Height = 20
            ColorFlat = clWhite
            Enabled = True
            ReadOnly = False
            TabOrder = 1
          end
          inherited BTNOPEN: TBitBtn
            Left = 477
            TabOrder = 2
          end
          inherited BTNMINUS: TBitBtn
            Left = 499
            TabOrder = 3
          end
          inherited EDCodigo: TFlatEdit
            Width = 47
            Height = 20
            ColorFlat = clLightGreen
            OnKeyPress = FrmTCFEDCodigoKeyPress
          end
        end
        object CBCONTACALC: TComboBox
          Left = 10
          Top = 25
          Width = 63
          Height = 24
          Hint = 'Conta de C'#225'lculo Fixo'
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 16
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyPress = CBOperKeyPress
          Items.Strings = (
            'PE'
            'CMV')
        end
        inline FrmTMc: TFrmBusca
          Left = 261
          Top = 12
          Width = 209
          Height = 43
          AutoScroll = False
          Color = 16777164
          ParentColor = False
          TabOrder = 2
          inherited LTextoBusca: TLabel
            Width = 207
            Height = 13
            Caption = 'Totalizadora de % Marg. Contr.:'
            Font.Height = -11
            Font.Style = [fsBold]
          end
          inherited LUZOPEN: TShape
            Left = 478
            Width = 23
            Height = 22
          end
          inherited LUZMINUS: TShape
            Left = 502
          end
          inherited EdDescricao: TFlatEdit
            Left = 49
            Width = 152
            Height = 20
            ColorFlat = clWhite
            Enabled = True
            ReadOnly = False
            TabOrder = 1
          end
          inherited BTNOPEN: TBitBtn
            Left = 477
            TabOrder = 2
          end
          inherited BTNMINUS: TBitBtn
            Left = 499
            TabOrder = 3
          end
          inherited EDCodigo: TFlatEdit
            Width = 47
            Height = 20
            ColorFlat = clLightGreen
            OnKeyPress = FrmTMcEDCodigoKeyPress
          end
        end
      end
      object PCalcConta: TPanel
        Left = 8
        Top = 166
        Width = 673
        Height = 226
        BevelOuter = bvNone
        Color = 13041663
        TabOrder = 6
        Visible = False
        object GroupBox2: TGroupBox
          Left = 40
          Top = 8
          Width = 594
          Height = 215
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object LTextoBusca: TLabel
            Left = 8
            Top = 14
            Width = 56
            Height = 18
            Caption = 'Oper.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGrid3: TDBGrid
            Left = 10
            Top = 81
            Width = 579
            Height = 128
            DataSource = DMCONTA.DAlx
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 3
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'OPER'
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'O'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLASSIFICACAO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsItalic]
                Title.Caption = 'Conta'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsItalic]
                Visible = True
              end>
          end
          object CBOper: TComboBox
            Left = 10
            Top = 33
            Width = 41
            Height = 24
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ItemHeight = 16
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '+'
            OnKeyPress = CBOperKeyPress
            Items.Strings = (
              '+'
              '-'
              '*'
              '/')
          end
          object BitBtn2: TBitBtn
            Left = 535
            Top = 29
            Width = 28
            Height = 27
            Hint = 'Pressione para remover o comissionado selecionado na lista'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn2Click
            Glyph.Data = {
              AE060000424DAE06000000000000360000002800000018000000170000000100
              1800000000007806000000000000000000000000000000000000DEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFEFC7BDDEBEB5DEBAB5DEBEB5DEBEB5DEBAB5E7BEB5E7
              C3BDF7CFC6FFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFEFCFC6DEBAB5D6B2ADE7CBC6EFE3DEF7EBEFF7EF
              EFF7E7E7EFDFDEDEC7C6DEBAB5E7C3BDFFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFCBC6D6B6ADDEC3BDF7E7E7FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7EFDBD6D6BAB5E7C3BDFFD7CEDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEB6ADDEC3BDF7
              F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDE
              DEBAB5EFCBBDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7D3CEE7C3
              B5D6B6B5F7EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFE7D3CEDEBAB5F7D3C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFEFCBC6DEB6ADE7D3CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C
              00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7EBEFDEBEB5F7CFC6DEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFEFCBBDD6B6ADF7E7E7FFFFFFFFFFFFFFFFFFFFFFFF
              A53C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFBFFDEC7C6EFCB
              BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C3BDDEBAB5F7EFEFFFFBFFFF
              FFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFF
              FFFFFFE7CBC6EFCBBDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C3BDDEBA
              B5F7EFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFE7CBC6EFC7BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFE7C3B5DEBAB5F7EBE7FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C
              00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEC7BDEFCBBDDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFE7C3BDD6B6ADEFDFDEFFF7F7FFFBFFFFFFFFFFFFFF
              A53C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFF7EFEFD6BAB5F7CF
              C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C7BDD6B6ADE7CBC6F7F3EFFF
              F7F7FFFBFFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFF
              E7D3CEDEB6ADF7D3C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEBA
              ADD6B6ADEFDBD6FFF3EFFFF7F7FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFEFE3E7D6B6B5E7C3B5FFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFE7BEB5D6B2ADDEBAB5EFDBD6F7F3EFFFF3EFFFF7F7FFFBF7FFFB
              F7FFFBF7FFFBF7FFFBF7EFE3DED6BAB5DEBAADF7CFC6DEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7BEB5D6B2ADD6BAB5E7D3CEF7E7E7
              F7EFEFFFF3EFFFF3EFFFF3EFF7EBE7E7D7CED6B6B5DEB6ADDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7BEB5DE
              B6ADD6B2ADDEBAB5DEC7C6E7CBC6E7CBC6DEC7C6DEBEB5DEBEB5DEB6ADDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEBAB5DEBAADDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF}
          end
          object BitBtn4: TBitBtn
            Left = 562
            Top = 29
            Width = 28
            Height = 27
            TabOrder = 2
            OnClick = BitBtn4Click
            Glyph.Data = {
              AE060000424DAE06000000000000360000002800000018000000170000000100
              1800000000007806000000000000000000000000000000000000DEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDEBAADDE
              BAB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADDEBEB5DEBEB5DEC7C6E7CBC6E7CB
              C6DEC7C6DEBAB5D6B2ADDEB6ADE7BEB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADD6B6B5E7D7CEF7EBE7
              FFF3EFFFF3EFFFF3EFF7EFEFF7E7E7E7D3CED6BAB5D6B2ADE7BEB5DEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEBAADD6BAB5EF
              E3DEFFFBF7FFFBF7FFFBF7FFFBF7FFFBF7FFF7F7FFF3EFF7F3EFEFDBD6DEBAB5
              D6B2ADE7BEB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3
              B5D6B6B5EFE3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FF
              F7F7FFF3EFEFDBD6D6B6ADDEBAADDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFF7D3C6DEB6ADE7D3CEFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFF
              FFA53C00A53C00FFFBFFFFF7F7F7F3EFE7CBC6D6B6ADE7C7BDDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFF7CFC6D6BAB5F7EFEFFFFFFFFFFFFFFFFFFFA53C00
              A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFBFFFFF7F7EFDFDED6B6ADE7C3
              BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFCBBDDEC7BDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFBF7
              F7EBE7DEBAB5E7C3B5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFC7BDE7CB
              C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFBFFF7EFEFDEBAB5E7C3BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFEFCBBDE7CBC6FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFF
              FFA53C00A53C00FFFFFFFFFFFFFFFBFFF7EFEFDEBAB5E7C3BDDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFEFCBBDDEC7C6FFFBFFFFFFFFFFFFFFFFFFFFA53C00
              A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7E7E7D6B6ADEFCB
              BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEBEB5F7EBEFFFFFFFFF
              FFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              E7D3CEDEB6ADEFCBC6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7D3C6DEBA
              B5E7D3CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF7EFEFD6B6B5E7C3B5F7D3CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFEFCBBDDEBAB5EFDFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF7F3F7DEC3BDDEB6ADF7CFC6DEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3BDD6BAB5EFDBD6FFF7F7FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7DEC3BDD6B6ADEFCBC6DEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3BDDE
              BAB5DEC7C6EFDFDEF7E7E7F7EFEFF7EBEFEFE3DEE7CBC6D6B2ADDEBAB5EFCFC6
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFFFD7CEF7CFC6E7C3BDE7BEB5DEBAB5DEBEB5DEBEB5DEBAB5DEBEB5EF
              C7BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
              EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF}
          end
          object PConta: TPanel
            Left = 64
            Top = 7
            Width = 468
            Height = 57
            BevelOuter = bvNone
            Color = 13041663
            TabOrder = 4
            Visible = False
            inline FrmConta: TFrmBusca
              Left = 3
              Top = 14
              Width = 462
              Height = 43
              AutoScroll = False
              Color = 13041663
              ParentColor = False
              TabOrder = 0
              inherited LTextoBusca: TLabel
                Width = 48
                Caption = 'Conta:'
                Font.Style = [fsBold]
              end
              inherited LUZOPEN: TShape
                Left = 478
                Width = 23
                Height = 22
              end
              inherited LUZMINUS: TShape
                Left = 502
              end
              inherited EdDescricao: TFlatEdit
                Left = 98
                Width = 364
                ColorFlat = clWhite
                Enabled = True
                ReadOnly = False
                TabOrder = 1
              end
              inherited BTNOPEN: TBitBtn
                Left = 477
                TabOrder = 2
              end
              inherited BTNMINUS: TBitBtn
                Left = 499
                TabOrder = 3
              end
              inherited EDCodigo: TFlatEdit
                Width = 96
                ColorFlat = clLightGreen
                OnKeyPress = FrmContaEDCodigoKeyPress
              end
            end
          end
        end
      end
      object DBCLASS: TDBColorEdit
        Left = 16
        Top = 35
        Width = 217
        Height = 24
        Ctl3D = True
        DataField = 'CLASSIFICACAO'
        DataSource = DMCONTA.DPlnCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit2: TDBColorEdit
        Left = 16
        Top = 83
        Width = 666
        Height = 24
        Ctl3D = True
        DataField = 'DESCRICAO'
        DataSource = DMCONTA.DPlnCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 45
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBCBNatureza: TDBComboBox
        Left = 90
        Top = 112
        Width = 49
        Height = 24
        Ctl3D = True
        DataField = 'NATUREZA'
        DataSource = DMCONTA.DPlnCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'C'
          'D'
          'X'
          '#')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnExit = DBCBNaturezaExit
        OnKeyPress = DBCBNaturezaKeyPress
      end
      object DBComboBox2: TDBComboBox
        Left = 188
        Top = 112
        Width = 46
        Height = 24
        Ctl3D = True
        DataField = 'TIPO'
        DataSource = DMCONTA.DPlnCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'T'
          'N')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnExit = DBCBNaturezaExit
        OnKeyPress = DBComboBox2KeyPress
      end
      object DBColorEdit3: TDBColorEdit
        Left = 544
        Top = 117
        Width = 137
        Height = 24
        Ctl3D = True
        DataField = 'CODIGOGER'
        DataSource = DMCONTA.DPlnCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit1: TDBColorEdit
        Left = 288
        Top = 117
        Width = 33
        Height = 24
        Ctl3D = True
        DataField = 'NIVEL'
        DataSource = DMCONTA.DPlnCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit4: TDBColorEdit
        Left = 386
        Top = 116
        Width = 33
        Height = 24
        Ctl3D = True
        DataField = 'ORDEM'
        DataSource = DMCONTA.DPlnCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object CBFinanceiro: TCheckBox
        Left = 248
        Top = 28
        Width = 129
        Height = 17
        Caption = 'Controle Financeiro'
        TabOrder = 8
      end
      object CBCtaPadrao: TCheckBox
        Left = 16
        Top = 144
        Width = 209
        Height = 17
        Caption = 'Tornar essa Conta Padr'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        Visible = False
      end
      object cbGerencial: TCheckBox
        Left = 248
        Top = 48
        Width = 209
        Height = 17
        Caption = 'Conta aparece no relat'#243'rio gerencial'
        TabOrder = 10
      end
      object Memo1: TMemo
        Left = 16
        Top = 429
        Width = 665
        Height = 40
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Natureza:'
          
            #39'X'#39' - Determina que deveremos montar uma f'#243'rmula para a conta. S' +
            'endo preciso preencher a tabela e tamb'#233'm definir a ordem. (O Tip' +
            'o deve ser '#39'T'#39');'
          
            #39'#'#39' - Determina que a conta '#233' pr'#233' definida pelo sistema, devendo' +
            ' ser selecionada o c'#225'lculo.  (O Tipo deve ser '#39'N'#39')')
        ParentFont = False
        TabOrder = 11
      end
    end
    inherited Panel1: TPanel
      Top = 2
    end
  end
  object Pproduto: TPanel [1]
    Left = 24
    Top = 208
    Width = 513
    Height = 129
    BevelOuter = bvNone
    Color = 16772332
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object Shape2: TShape
      Left = 0
      Top = 16
      Width = 497
      Height = 113
    end
    object PSubGrupo: TGroupBox
      Left = 16
      Top = 16
      Width = 481
      Height = 57
      Caption = 'Produto'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object EDCodigo: TEdit
        Left = 8
        Top = 22
        Width = 80
        Height = 19
        Color = 16763799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = EDCodigoKeyDown
      end
      object EdDescricao: TEdit
        Left = 88
        Top = 22
        Width = 369
        Height = 19
        Color = 16772313
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object BTNOPEN: TBitBtn
        Left = 458
        Top = 22
        Width = 19
        Height = 19
        Hint = 'Pressione para selecionar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BTNOPENClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
    end
    object CBVisNormal: TCheckBox
      Left = 16
      Top = 80
      Width = 225
      Height = 17
      Caption = 'Mostrar visualiza'#231#227'o normal'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
  end
  inherited PComunica: TPanel
    Left = 181
    Top = 115
  end
  inherited PConsulta: TPanel [3]
    Left = 10
    Top = 8
    Height = 505
    inherited GroupBox1: TGroupBox
      Top = 34
      inherited EdNome: TFlatEdit
        Left = 160
        Width = 421
        Text = 'Loc. pela Conta'
      end
      inherited BtnSelecionar: TBitBtn
        Left = 583
        Top = 19
      end
      object EDCLASSIFICACAO: TFlatEdit
        Left = 3
        Top = 19
        Width = 156
        Height = 25
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade'
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
        Text = 'Loc. pela Classifica'#231#227'o'
        OnKeyPress = EDCLASSIFICACAOKeyPress
      end
    end
    inherited Painel: TPanel
      Left = 1
      Top = 2
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Top = 104
      Height = 394
      Font.Charset = ANSI_CHARSET
      Font.Height = -9
      Font.Name = 'Verdana'
      Columns = <
        item
          Expanded = False
          FieldName = 'CLASSIFICACAO'
          Title.Caption = 'Classifica'#231#227'o'
          Width = 158
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'Totalizadora'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NATUREZA'
          Title.Caption = 'D'#233'bito/Cr'#233'dito'
          Visible = True
        end>
    end
    object CheckBox1: TCheckBox
      Left = 566
      Top = 86
      Width = 135
      Height = 17
      Caption = 'Revelar Contas Padr'#227'o'
      TabOrder = 3
    end
  end
end
