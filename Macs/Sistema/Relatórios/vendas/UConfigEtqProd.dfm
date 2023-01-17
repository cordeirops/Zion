inherited FConfigEtqProd: TFConfigEtqProd
  Left = 161
  Caption = 'FConfigEtqProd'
  ClientHeight = 450
  ClientWidth = 556
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 553
    Height = 414
  end
  inherited LDescTitulo: TLabel
    Left = 313
    Width = 210
    Caption = 'Config. de Etiquetas de Prod.'
  end
  object PForm: TPanel [5]
    Left = 58
    Top = 50
    Width = 409
    Height = 388
    BevelOuter = bvNone
    Color = 16772332
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 4
      Top = 152
      Width = 403
      Height = 229
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = GroupBox1Enter
      object Label1: TLabel
        Left = 8
        Top = 56
        Width = 161
        Height = 14
        Caption = 'Configura'#231#227'o de P'#225'gina:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 69
        Width = 39
        Height = 13
        Caption = 'Altura:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 97
        Top = 69
        Width = 49
        Height = 13
        Caption = 'Largura:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 11
        Width = 176
        Height = 16
        Caption = 'Descri'#231#227'o da Configura'#231#227'o'
      end
      object Label5: TLabel
        Left = 234
        Top = 56
        Width = 157
        Height = 14
        Caption = 'Quantidades na P'#225'gina:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 234
        Top = 69
        Width = 57
        Height = 13
        Caption = 'Etiquetas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 323
        Top = 69
        Width = 51
        Height = 13
        Caption = 'Colunas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 8
        Top = 120
        Width = 105
        Height = 14
        Caption = 'Intervalo entre:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 133
        Width = 41
        Height = 13
        Caption = 'Linhas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 97
        Top = 133
        Width = 51
        Height = 13
        Caption = 'Colunas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 234
        Top = 120
        Width = 150
        Height = 14
        Caption = 'Tamanho C'#243'digo Barra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 234
        Top = 133
        Width = 49
        Height = 13
        Caption = 'Largura:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 323
        Top = 133
        Width = 48
        Height = 13
        Caption = 'Compr.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 8
        Top = 179
        Width = 116
        Height = 14
        Caption = 'In'#237'cio Impress'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 8
        Top = 192
        Width = 41
        Height = 13
        Caption = 'Linhas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 97
        Top = 192
        Width = 51
        Height = 13
        Caption = 'Colunas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 234
        Top = 180
        Width = 60
        Height = 14
        Caption = 'Tamanho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 234
        Top = 193
        Width = 36
        Height = 13
        Caption = 'Fonte:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 323
        Top = 193
        Width = 68
        Height = 13
        Caption = 'Max. Descr.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBColorEdit1: TDBColorEdit
        Left = 9
        Top = 81
        Width = 68
        Height = 22
        DataField = 'ALTPAG'
        DataSource = DMMACS.DEtqProd
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit2: TDBColorEdit
        Left = 97
        Top = 81
        Width = 68
        Height = 22
        DataField = 'LARGPAG'
        DataSource = DMMACS.DEtqProd
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDesc: TDBColorEdit
        Left = 8
        Top = 28
        Width = 385
        Height = 22
        DataField = 'DESCRICAO'
        DataSource = DMMACS.DEtqProd
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit4: TDBColorEdit
        Left = 323
        Top = 81
        Width = 68
        Height = 22
        DataField = 'QTDCOLPAG'
        DataSource = DMMACS.DEtqProd
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit5: TDBColorEdit
        Left = 235
        Top = 81
        Width = 68
        Height = 22
        DataField = 'QTDETQPAG'
        DataSource = DMMACS.DEtqProd
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit6: TDBColorEdit
        Left = 9
        Top = 145
        Width = 68
        Height = 22
        DataField = 'INTERVLINHA'
        DataSource = DMMACS.DEtqProd
        TabOrder = 5
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit7: TDBColorEdit
        Left = 97
        Top = 145
        Width = 68
        Height = 22
        DataField = 'INTERVCOL'
        DataSource = DMMACS.DEtqProd
        TabOrder = 6
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit8: TDBColorEdit
        Left = 323
        Top = 145
        Width = 68
        Height = 22
        DataField = 'COMPCODBARRA'
        DataSource = DMMACS.DEtqProd
        TabOrder = 8
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit9: TDBColorEdit
        Left = 235
        Top = 145
        Width = 68
        Height = 22
        DataField = 'LARGCODBARRA'
        DataSource = DMMACS.DEtqProd
        TabOrder = 7
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit10: TDBColorEdit
        Left = 97
        Top = 204
        Width = 68
        Height = 22
        DataField = 'COLUNAINI'
        DataSource = DMMACS.DEtqProd
        TabOrder = 10
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit11: TDBColorEdit
        Left = 9
        Top = 204
        Width = 68
        Height = 22
        DataField = 'LINHAINI'
        DataSource = DMMACS.DEtqProd
        TabOrder = 9
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit3: TDBColorEdit
        Left = 235
        Top = 205
        Width = 68
        Height = 22
        DataField = 'TAMFONTE'
        DataSource = DMMACS.DEtqProd
        TabOrder = 11
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit12: TDBColorEdit
        Left = 323
        Top = 205
        Width = 68
        Height = 22
        DataField = 'TAMDESC'
        DataSource = DMMACS.DEtqProd
        TabOrder = 12
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object DBGridCadastroPadrao: TDBGrid
      Left = 3
      Top = 1
      Width = 403
      Height = 104
      Color = 15794175
      Ctl3D = False
      DataSource = DMMACS.DEtqProd
      FixedColor = 11039232
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o da Configura'#231#227'o'
          Width = 380
          Visible = True
        end>
    end
    object GroupBox3: TGroupBox
      Left = 4
      Top = 107
      Width = 404
      Height = 47
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      object GroupBox2: TGroupBox
        Left = 1
        Top = 6
        Width = 402
        Height = 35
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object BtnNovo: TBitBtn
          Left = 3
          Top = 8
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 'Pressione este bot'#227'o para obter novo cadastro'
          Caption = 'Novo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnNovoClick
          Glyph.Data = {
            EE030000424DEE03000000000000360000002800000012000000110000000100
            180000000000B8030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF6060606060606060
            6060606060606060606060606060606060606060606060606060606060606060
            6060FFFFFFFFFFFF0000FFFFFF60606060CFDF009FCF2090C020A0CF20A0CF20
            A0CF30AFCF30AFCF30BFDF40BFD040BFD040BFD06F9FBF606060FFFFFFFFFFFF
            0000FFFFFF409FBF60CFDF0F70A02F90BF2F90BF2F90BF2F90BF2F90BF2F90BF
            2F90BF2F90BF2F90BF2F90BF2F90BF4080A0606060FFFFFF0000FFFFFF409FBF
            60CFDF2F8FB0B0FFFFB0FFFFB0FFFFAFFFFF90EFF090EFF090EFF0AFFFFFAFFF
            FFAFFFFF40AFC0606060FFFFFFFFFFFF0000FFFFFF409FBF4FB0CF70B0CFC0FF
            FFC0FFFFCFCFAFA0604FA0604FA0604F506F6F10A0D0B0FFFFB0FFFF4080A060
            6060FFFFFFFFFFFF0000FFFFFF409FBF4FB0CFBFE0EFD0FFFFCFCFAFAF40009F
            30009F3000A03F10BF5030706F6F40BFD0B0FFFF5F80A0606060FFFFFFFFFFFF
            0000FFFFFF409FBF40AFC0BFE0EFE0F0E0AF4000AF4000904F00106000AF4000
            A03F008F502F30809FB0FFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF3090B0
            30AFCFCFE0EFF0D090BF5000D06F006F70000F8000BF6F00A05F004F70007F70
            4F8FDFEF5F80A0606060FFFFFFFFFFFF0000FFFFFF3090B030AFCFD0E0EFE0AF
            60D07000508F00AF8F00E09000EF80001F70000060004F5F00A0E0FF5F80A060
            6060FFFFFFFFFFFF0000FFFFFF3090B02F90BFD0E0EFF0EFB08F8F0020BF402F
            C050FFCF6FFF9000AF8F001F700030702FEFFFFF5F80A0606060FFFFFFFFFFFF
            0000FFFFFF308FB01F90BFD0E0EFFFFFEF20BF404FD070AFEFAFCFF0B0F0B04F
            D090004F7000AFCFAFFFFFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF308FB0
            0080B0D0E0EFFFFFFFBFEFC090D070CFF0B0D0E0904FC050EF8000CFA050FFFF
            FFFFFFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF2F8FB00080B0D0E0EFFFFF
            FFFFFFFFF0F0CFD0E0908FDF806FCF6FF0D090FFFFFFFFFFFFFFFFFF5F80A060
            6060FFFFFFFFFFFF0000FFFFFF2F8FB0007FB0D0E0EFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9FBF606060FFFFFFFFFFFF
            0000FFFFFF308FB000609F1F8FB01F90BF1F90BF1F90BF1F90BF1F90BF1F90BF
            1F90BF1F90BF1F90BF1F90BF6F9FBF606060FFFFFFFFFFFF0000FFFFFFFFFFFF
            5090C0B0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DF
            EFBFE0F06F9FBFFFFFFFFFFFFFFFFFFF0000}
          Spacing = 2
        end
        object BtnApagar: TBitBtn
          Left = 102
          Top = 8
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
          Caption = 'Apagar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BtnApagarClick
          Glyph.Data = {
            B6030000424DB603000000000000360000002800000012000000100000000100
            18000000000080030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00009FFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFF3030CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            3030CF309FFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF3030CF0060
            FF0000CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFF
            FFFFFFFFFFFFFFFFFFFFFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
            0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009F0000FF00009FFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00
            00FF00009F0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
            0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFF0000CF0000FF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000
            9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0000CF309FFF0000
            FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00009FFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60609F0000CF60609FFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
          Spacing = 2
        end
        object BtnGravar: TBitBtn
          Left = 201
          Top = 8
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 
            'Pressione este bot'#227'o para gravar as altera'#231#245'es ou inclus'#245'es real' +
            'izadas'
          Caption = 'Gravar - F5'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BtnGravarClick
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000013000000120000000100
            18000000000038040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFF606060505050707070707070FFFFFFFFFFFF7070707070706F6F6F707070
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF808080A0A0
            A07F7F7F5F5F5F4040403F3030604F4F8F6F6F9070706F5F5F3F30302F2F2FFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA0AFAFD0D0D0FFFFF0E0F0D0
            FFF0E0EFC09FC0807FF0AFAFFFC0C0FFDFDFFFEFEFD0C0C04F3F3F2F2F2FFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFB0B0B0D0CFCFF0EFD020AF202FAF209F
            9F60FF9FA0FFA0A0FFAFAFFFBFBFFFEFEFFFFFFFD0C0C03F3030707070FFFFFF
            FFFFFF000000FFFFFFFFFFFFB0B0B0EFE0E0F0E0CF30C04000A0009F9F70FFB0
            BFFFA0A0FFB0BFFFBFD0FFF0F0FFFFFFFFFFFF7F6060303030FFFFFFFFFFFF00
            0000FFFFFFFFFFFFB0B0B0EFE0E0F0E0BF50E06F1FB02FCFAF9FFFCFCFFFCFCF
            E0C0D0C0B0AFF0E0E0FFF0F0FFF0F0C0A0A02F2F2FFFFFFFFFFFFF000000FFFF
            FFFFFFFFB0B0B0EFEFEFF0DFB05FE0B030A0CFC0A0BFFFCFCFFFDFDFE0D0DFBF
            A09FEFCFCFFFCFCFFFCFCFCFA0A03F3F3FFFFFFFFFFFFF000000FFFFFFFFFFFF
            B0B0B0F0DFB0F0D0AF60AFF03F90FFA0A0C0FFF0F0FFFFFFFFF0FFF0BFDFFFC0
            CFFF9F9FFFB0B0BF8080707070FFFFFFFFFFFF000000FFFFFFFFFFFFD0A06FF0
            AF50FFD0A0F0CF9FDFC0A0CFA09FEFEFEFFFFFFFFFF0F0FFCFD0FFB0B0FFA0A0
            FF9F9F806060FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFCFAF8FE0B08FFFC0
            70FFBF5FFFC06FFFB06FD0A080EFE0EFFFF0F0FFDFDFFFCFCFFFB0B0B07F7FFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFBFBFC0DFD0C0FFC070FFCF80
            FFC07FFFBF6FF0B050D09F5FE0B09FE0BFAFB090909F7F7FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFD0D0D0EFE0DFE0D0C0EFEFF0EFEFEFEF
            E0E0E0E0DFE0D0B0E0BF80E0B070706060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFDFCFCFDFC0BFB08070B08080BF8F8FC09F9FCFA0
            AFDFCFD0EFF0FFE0E0EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFDFCFCFDFD0C0FFCF90FFC08FFFC09FF0BFA0EFB0A0E0B0A0EFC0C0
            FFEFEFFFEFEF5050504F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFDFCFCFF0CF90FFC08FFFCFA0FFCFAFFFCFB0FFD0BFFFD0C0CFAFAFEFDFDFFF
            FFFFC0C0C0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFCFCF
            DFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCF
            CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        end
        object BtnCancelar: TBitBtn
          Left = 300
          Top = 8
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 
            'Pressione este bot'#227'o para cancelar esta opera'#231#227'o e retornar para' +
            ' o painel de consulta'
          Caption = 'Cancelar - F7'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BtnCancelarClick
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
  inherited PComunica: TPanel
    Left = 62
    Top = 186
    Width = 404
  end
  inherited PBotoes: TPanel
    inherited BtnFecha: TSpeedButton
      Left = 410
    end
  end
end
