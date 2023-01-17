inherited FComissao: TFComissao
  Left = 158
  Top = 161
  Caption = ''
  ClientHeight = 309
  ClientWidth = 779
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 66
    Top = 130
  end
  object PComissao: TPanel
    Left = 11
    Top = 12
    Width = 752
    Height = 228
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 1
    object Shape15: TShape
      Left = 2
      Top = 4
      Width = 749
      Height = 220
      Brush.Color = 16772332
      Pen.Color = clBlue
      Pen.Style = psInsideFrame
      Pen.Width = 2
    end
    object Label13: TLabel
      Left = 115
      Top = 33
      Width = 74
      Height = 16
      Caption = 'Comiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 9
      Top = 16
      Width = 184
      Height = 16
      Caption = 'Vlrs Aplicados a produtos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 8
      Top = 33
      Width = 102
      Height = 16
      Caption = 'Base de C'#225'lc.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 209
      Top = 16
      Width = 182
      Height = 16
      Caption = 'Vlrs Aplicados a servi'#231'os:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 208
      Top = 33
      Width = 102
      Height = 16
      Caption = 'Base de C'#225'lc.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 316
      Top = 33
      Width = 74
      Height = 16
      Caption = 'Comiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LInformation: TLabel
      Left = 10
      Top = 70
      Width = 279
      Height = 13
      Caption = 'A Base de C'#225'lc. para produtos se refere ao total do pedido.'
    end
    inline FrmComissionado: TFrmBusca
      Left = 408
      Top = 36
      Width = 274
      Height = 33
      AutoScroll = False
      Color = 16772332
      ParentColor = False
      TabOrder = 0
      inherited LTextoBusca: TLabel
        Top = -2
        Width = 128
        Height = 14
        Caption = 'Selecione o comissionado:'
        Font.Height = -11
        Font.Name = 'Arial'
      end
      inherited LUZOPEN: TShape
        Left = 210
        Top = 13
      end
      inherited LUZMINUS: TShape
        Left = 249
        Top = 10
        Height = 22
      end
      inherited EdDescricao: TFlatEdit
        Left = 41
        Top = 11
        Width = 208
        Height = 21
        ColorFlat = 15658719
        Font.Height = -12
      end
      inherited BTNOPEN: TBitBtn
        Left = 250
        Top = 12
        OnClick = FrmComissionadoBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 384
        Top = 14
        Enabled = False
      end
      inherited EDCodigo: TFlatEdit
        Left = 1
        Top = 11
        Width = 40
        Height = 21
        ColorFlat = 14606014
        Font.Height = -12
        OnKeyDown = FrmComissionadoEDCodigoKeyDown
      end
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 88
      Width = 738
      Height = 132
      Color = 15269864
      Ctl3D = False
      DataSource = DMFINANC.DSlctComis
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FUNC'
          Title.Caption = 'Funcion'#225'rio'
          Width = 322
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'VLRPROD'
          Title.Alignment = taRightJustify
          Title.Caption = 'Vlr. Prod.'
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'PERPROD'
          Title.Alignment = taRightJustify
          Title.Caption = '% '
          Width = 40
          Visible = True
        end
        item
          Alignment = taRightJustify
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'VLRCOMISPROD'
          Title.Alignment = taRightJustify
          Title.Caption = 'C. Prod.:'
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'VLRSERV'
          Title.Alignment = taRightJustify
          Title.Caption = 'Vlr. Serv.'
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'PERSERV'
          Title.Alignment = taRightJustify
          Title.Caption = '%'
          Width = 42
          Visible = True
        end
        item
          Alignment = taRightJustify
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'VLRCOMISSERV'
          Title.Alignment = taRightJustify
          Title.Caption = 'C. Serv.:'
          Visible = True
        end>
    end
    object EDComisProd: TColorEditFloat
      Left = 115
      Top = 47
      Width = 64
      Height = 22
      Hint = 
        'Informe aqui o percentual que este comissionado ir'#225' ganhar sobre' +
        ' a base de c'#225'lculo de produtos.'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object Edit3: TEdit
      Left = 178
      Top = 47
      Width = 19
      Height = 22
      Hint = 
        'Informe aqui o percentual que este comissionado ir'#225' ganhar sobre' +
        ' o valor total de produto.'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Text = '%'
    end
    object BitBtn2: TBitBtn
      Left = 691
      Top = 62
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
      TabOrder = 5
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
    object EdBCProd: TColorEditFloat
      Left = 8
      Top = 47
      Width = 103
      Height = 22
      Hint = 'Vlr. referente a base de c'#225'culo de comiss'#227'o para produtos'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdBCServ: TColorEditFloat
      Left = 208
      Top = 47
      Width = 104
      Height = 22
      Hint = 'Vlr. referente a base de c'#225'culo de comiss'#227'o para servi'#231'os.'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdComisServ: TColorEditFloat
      Left = 316
      Top = 47
      Width = 64
      Height = 22
      Hint = 
        'Informe aqui o percentual que este comissionado ir'#225' ganhar sobre' +
        ' a base de c'#225'lculo de servi'#231'os.'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object Edit4: TEdit
      Left = 379
      Top = 47
      Width = 19
      Height = 22
      Hint = 
        'Informe aqui o percentual que este comissionado ir'#225' ganhar sobre' +
        ' o valor total de produto.'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      Text = '%'
    end
    object BitBtn4: TBitBtn
      Left = 718
      Top = 62
      Width = 28
      Height = 27
      TabOrder = 6
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
    object Panel9: TPanel
      Left = 178
      Top = 48
      Width = 1
      Height = 20
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 10
    end
    object Panel10: TPanel
      Left = 379
      Top = 48
      Width = 1
      Height = 20
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 11
    end
  end
  object Panel4: TPanel
    Left = 176
    Top = 254
    Width = 109
    Height = 46
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 2
    object Shape7: TShape
      Left = 0
      Top = 19
      Width = 107
      Height = 27
      Brush.Color = 13750737
      Pen.Color = -2147483622
      Pen.Style = psInsideFrame
      Pen.Width = 2
    end
    object Label5: TLabel
      Left = 33
      Top = 0
      Width = 62
      Height = 20
      Caption = '% Serv.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 86
      Top = 23
      Width = 17
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object LTPServ: TLabel
      Left = 4
      Top = 23
      Width = 84
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel7: TPanel
    Left = 286
    Top = 254
    Width = 122
    Height = 46
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 3
    object Shape8: TShape
      Left = -1
      Top = 19
      Width = 117
      Height = 27
      Brush.Color = 13750737
      Pen.Color = -2147483622
      Pen.Style = psInsideFrame
      Pen.Width = 2
    end
    object Label9: TLabel
      Left = 4
      Top = 0
      Width = 110
      Height = 20
      Caption = 'Comiss. Serv.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LTCServ: TLabel
      Left = 1
      Top = 23
      Width = 112
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
  end
  object PTotProd: TPanel
    Left = 407
    Top = 254
    Width = 109
    Height = 46
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 4
    object Shape10: TShape
      Left = 0
      Top = 19
      Width = 107
      Height = 27
      Brush.Color = 13750737
      Pen.Color = clBlue
      Pen.Style = psInsideFrame
      Pen.Width = 2
    end
    object Label7: TLabel
      Left = 41
      Top = 0
      Width = 63
      Height = 20
      Caption = '% Prod.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 86
      Top = 23
      Width = 17
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object LTPProd: TLabel
      Left = 4
      Top = 23
      Width = 84
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 518
    Top = 254
    Width = 122
    Height = 46
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 5
    object Shape6: TShape
      Left = -1
      Top = 19
      Width = 117
      Height = 27
      Brush.Color = 13750737
      Pen.Color = clBlue
      Pen.Style = psInsideFrame
      Pen.Width = 2
    end
    object Label1: TLabel
      Left = 4
      Top = 0
      Width = 111
      Height = 20
      Caption = 'Comiss. Prod.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LTCProd: TLabel
      Left = 1
      Top = 23
      Width = 112
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel11: TPanel
    Left = 646
    Top = 253
    Width = 122
    Height = 46
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 6
    object Shape12: TShape
      Left = -1
      Top = 19
      Width = 117
      Height = 27
      Brush.Color = 13750737
      Pen.Color = clNavy
      Pen.Style = psInsideFrame
      Pen.Width = 2
    end
    object Label22: TLabel
      Left = 5
      Top = 0
      Width = 109
      Height = 20
      Caption = 'Comiss. Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LTComiss: TLabel
      Left = 1
      Top = 23
      Width = 112
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
  end
end
