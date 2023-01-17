inherited FCtrlEntrega: TFCtrlEntrega
  Left = 194
  Top = 176
  Caption = 'FCtrlEntrega'
  ClientHeight = 460
  ClientWidth = 722
  PixelsPerInch = 96
  TextHeight = 13
  inherited PConsulta: TPanel
    inherited Painel: TPanel
      object LNumPedV: TDRLabel [0]
        Left = 464
        Top = 3
        Width = 225
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = '532'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        HiColor = clBlue
        LoColor = clNavy
        Border = boNone
        Ctl3D = True
        BlinkInterval = 300
        Blink = blNone
        Deep = 1
      end
      inherited BtnFiltrar: TBitBtn
        Left = 706
        Visible = False
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      PopupMenu = pm
      Columns = <
        item
          Expanded = False
          FieldName = 'DTENTREGA'
          Title.Caption = 'Data'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RESPONSAVEL'
          Title.Caption = 'Respons'#225'vel'
          Width = 507
          Visible = True
        end>
    end
  end
  inherited PCadastro: TPanel
    inherited Panel4: TPanel
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 80
        Height = 13
        Caption = 'Data Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 140
        Top = 16
        Width = 78
        Height = 13
        Caption = 'Respons'#225'vel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 121
        Height = 21
        DataField = 'DTENTREGA'
        DataSource = DMSAIDA.DEntrega
        MaxLength = 10
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 140
        Top = 32
        Width = 541
        Height = 21
        DataField = 'RESPONSAVEL'
        DataSource = DMSAIDA.DEntrega
        TabOrder = 1
        OnExit = DBEdit2Exit
      end
      object Panel2: TPanel
        Left = 5
        Top = 64
        Width = 685
        Height = 309
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 16772332
        TabOrder = 2
        object GroupBox2: TGroupBox
          Left = 4
          Top = 2
          Width = 362
          Height = 303
          Caption = 'Vendido'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 4
            Top = 16
            Width = 355
            Height = 284
            Color = 15794175
            Ctl3D = False
            DataSource = DMESTOQUE.DSSlave
            FixedColor = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -9
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            OnCellClick = DBGrid1CellClick
            OnKeyUp = DBGrid1KeyUp
            Columns = <
              item
                Expanded = False
                FieldName = 'CONTRINT'
                Title.Caption = 'C'#243'd.'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDEPROD'
                Title.Alignment = taRightJustify
                Title.Caption = 'Quant.'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDENTREGUE'
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtd. Dev'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Produto'
                Width = 306
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Title.Caption = 'Marca'
                Visible = True
              end>
          end
        end
        object GroupBox3: TGroupBox
          Left = 371
          Top = 68
          Width = 309
          Height = 237
          Caption = 'Lista de Entregas'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object DBGrid2: TDBGrid
            Left = 4
            Top = 16
            Width = 302
            Height = 218
            Color = 15794175
            Ctl3D = False
            DataSource = DMESTOQUE.DSAlx
            FixedColor = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -9
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taRightJustify
                Title.Caption = 'Quant.'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Produto'
                Visible = True
              end>
          end
        end
        object Panel3: TPanel
          Left = 371
          Top = 8
          Width = 309
          Height = 59
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 16772332
          TabOrder = 2
          object DBText1: TDBText
            Left = 8
            Top = 27
            Width = 50
            Height = 13
            AutoSize = True
            DataSource = DMESTOQUE.DSSlave
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 8
            Top = 42
            Width = 50
            Height = 13
            AutoSize = True
            DataSource = DMESTOQUE.DSSlave
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 120
            Top = 16
            Width = 81
            Height = 16
            Caption = 'Qtd. Entregue'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object EdQtdEntregue: TFloatEdit
            Left = 208
            Top = 8
            Width = 93
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            OnKeyDown = EdQtdEntregueKeyDown
            ValueFormat = '##,##0.00'
            ValueInteger = 0
          end
          object BitBtn1: TBitBtn
            Left = 253
            Top = 32
            Width = 25
            Height = 24
            Hint = 'Inserir Produto na lista'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn1Click
            Glyph.Data = {
              EE030000424DEE03000000000000360000002800000012000000110000000100
              180000000000B803000000000000000000000000000000000000DEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFEFC7BDDEBEB5DEBAB5DEBEB5DEBEB5DEBAB5E7BEB5E7C3
              BDF7CFC6FFD7CEDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFEFCFC6DEBA
              B5D6B2ADE7CBC6EFE3DEF7EBEFF7EFEFF7E7E7EFDFDEDEC7C6DEBAB5E7C3BDFF
              D7CEDEEBEFDEEBEF0000DEEBEFDEEBEFEFCBC6D6B6ADDEC3BDF7E7E7FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7EFDBD6D6BAB5E7C3BDFFD7CEDEEBEF
              0000DEEBEFF7CFC6DEB6ADDEC3BDF7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFEFDFDEDEBAB5EFCBBDDEEBEF0000F7D3CEE7C3B5
              D6B6B5F7EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE7D3CEDEBAB5F7D3C60000EFCBC6DEB6ADE7D3CEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7
              EBEFDEBEB5F7CFC60000EFCBBDD6B6ADF7E7E7FFFFFFFFFFFFFFFFFFFFFFFFA5
              3C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFBFFDEC7C6EFCBBD
              0000E7C3BDDEBAB5F7EFEFFFFBFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFF
              FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFE7CBC6EFCBBD0000E7C3BDDEBAB5
              F7EFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFE7CBC6EFC7BD0000E7C3B5DEBAB5F7EBE7FFFBF7FFFF
              FFFFFFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFDEC7BDEFCBBD0000E7C3BDD6B6ADEFDFDEFFF7F7FFFBFFFFFFFFFFFFFFA5
              3C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFF7EFEFD6BAB5F7CFC6
              0000E7C7BDD6B6ADE7CBC6F7F3EFFFF7F7FFFBFFA53C00A53C00FFFFFFFFFFFF
              FFFFFFA53C00A53C00FFFFFFFFFFFFE7D3CEDEB6ADF7D3C60000DEEBEFDEBAAD
              D6B6ADEFDBD6FFF3EFFFF7F7FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEFE3E7D6B6B5E7C3B5FFD7CE0000DEEBEFE7BEB5D6B2ADDEBAB5EFDB
              D6F7F3EFFFF3EFFFF7F7FFFBF7FFFBF7FFFBF7FFFBF7FFFBF7EFE3DED6BAB5DE
              BAADF7CFC6DEEBEF0000DEEBEFDEEBEFE7BEB5D6B2ADD6BAB5E7D3CEF7E7E7F7
              EFEFFFF3EFFFF3EFFFF3EFF7EBE7E7D7CED6B6B5DEB6ADDEEBEFDEEBEFDEEBEF
              0000DEEBEFDEEBEFDEEBEFE7BEB5DEB6ADD6B2ADDEBAB5DEC7C6E7CBC6E7CBC6
              DEC7C6DEBEB5DEBEB5DEB6ADDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEBAB5DEBAADDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDEEB
              EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000}
          end
          object BitBtn2: TBitBtn
            Left = 277
            Top = 32
            Width = 25
            Height = 24
            Hint = 'Remover Produto da lista'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BitBtn2Click
            Glyph.Data = {
              EE030000424DEE03000000000000360000002800000012000000110000000100
              180000000000B803000000000000000000000000000000000000DEEBEFDEEBEF
              DEEBEFDEEBEFDEEBEFDEEBEFDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDEBAADDEBA
              B5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEB6
              ADDEBEB5DEBEB5DEC7C6E7CBC6E7CBC6DEC7C6DEBAB5D6B2ADDEB6ADE7BEB5DE
              EBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEB6ADD6B6B5E7D7CEF7EBE7FF
              F3EFFFF3EFFFF3EFF7EFEFF7E7E7E7D3CED6BAB5D6B2ADE7BEB5DEEBEFDEEBEF
              0000DEEBEFF7CFC6DEBAADD6BAB5EFE3DEFFFBF7FFFBF7FFFBF7FFFBF7FFFBF7
              FFF7F7FFF3EFF7F3EFEFDBD6DEBAB5D6B2ADE7BEB5DEEBEF0000FFD7CEE7C3B5
              D6B6B5EFE3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFF7
              F7FFF3EFEFDBD6D6B6ADDEBAADDEEBEF0000F7D3C6DEB6ADE7D3CEFFFFFFFFFF
              FFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFBFFFFF7F7F7F3EFE7
              CBC6D6B6ADE7C7BD0000F7CFC6D6BAB5F7EFEFFFFFFFFFFFFFFFFFFFA53C00A5
              3C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFBFFFFF7F7EFDFDED6B6ADE7C3BD
              0000EFCBBDDEC7BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C00A53C00
              FFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F7EBE7DEBAB5E7C3B50000EFC7BDE7CBC6
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFBFFF7EFEFDEBAB5E7C3BD0000EFCBBDE7CBC6FFFFFFFFFFFFFFFF
              FFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFBFFF7
              EFEFDEBAB5E7C3BD0000EFCBBDDEC7C6FFFBFFFFFFFFFFFFFFFFFFFFA53C00A5
              3C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7E7E7D6B6ADEFCBBD
              0000F7CFC6DEBEB5F7EBEFFFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C00A53C00
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7D3CEDEB6ADEFCBC60000F7D3C6DEBAB5
              E7D3CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF7EFEFD6B6B5E7C3B5F7D3CE0000DEEBEFEFCBBDDEBAB5EFDFDEFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7DEC3BDDE
              B6ADF7CFC6DEEBEF0000DEEBEFFFD7CEE7C3BDD6BAB5EFDBD6FFF7F7FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7DEC3BDD6B6ADEFCBC6DEEBEFDEEBEF
              0000DEEBEFDEEBEFFFD7CEE7C3BDDEBAB5DEC7C6EFDFDEF7E7E7F7EFEFF7EBEF
              EFE3DEE7CBC6D6B2ADDEBAB5EFCFC6DEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
              DEEBEFFFD7CEF7CFC6E7C3BDE7BEB5DEBAB5DEBEB5DEBEB5DEBAB5DEBEB5EFC7
              BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000}
          end
        end
      end
    end
    inherited Panel1: TPanel
      inherited BtnGravar: TBitBtn
        Width = 93
      end
    end
  end
  inherited PComunica: TPanel
    Left = 117
  end
  object pm: TPopupMenu
    Left = 535
    Top = 81
    object Comprovante1: TMenuItem
      Caption = 'Comprovante'
      OnClick = Comprovante1Click
    end
  end
  object FSRel: TfrReport
    Dataset = FDSCaixa
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 384
    Top = 40
    ReportForm = {18000000}
  end
  object FDSCaixa: TfrDBDataSet
    DataSource = DMESTOQUE.DSSlave
    Left = 352
    Top = 40
  end
end
