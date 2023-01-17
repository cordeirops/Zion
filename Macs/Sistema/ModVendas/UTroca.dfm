inherited FTroca: TFTroca
  Left = 0
  Top = 11
  Caption = 'FTroca'
  ClientHeight = 490
  ClientWidth = 780
  KeyPreview = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 114
    Top = 144
  end
  object Panel1: TPanel
    Left = 8
    Top = 7
    Width = 768
    Height = 29
    BevelInner = bvLowered
    Color = 16772332
    TabOrder = 2
    object BtnGravar: TBitBtn
      Left = 2
      Top = 2
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Pressione este bot'#227'o para gravar as altera'#231#245'es ou inclus'#245'es real' +
        'izadas'
      Caption = 'Gravar - F5'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
  end
  object PPedido: TPanel
    Left = 8
    Top = 37
    Width = 768
    Height = 447
    BevelInner = bvLowered
    Color = 14933717
    TabOrder = 1
    object Label10: TLabel
      Left = 284
      Top = 9
      Width = 143
      Height = 13
      Caption = 'Forma de Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 168
      Top = 9
      Width = 34
      Height = 13
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LSelectPessoa: TLabel
      Left = 7
      Top = 27
      Width = 58
      Height = 13
      Caption = 'CLIENTE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 432
      Top = 27
      Width = 66
      Height = 13
      Caption = 'Vendedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 71
      Top = 9
      Width = 20
      Height = 13
      Caption = 'N'#186':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 632
      Top = 9
      Width = 38
      Height = 13
      Caption = 'Valor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 66
      Top = 27
      Width = 49
      Height = 13
      AutoSize = True
      DataField = 'NOMECLI'
      DataSource = DMSAIDA.DWPedV
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 435
      Top = 9
      Width = 49
      Height = 13
      AutoSize = True
      DataField = 'FORMPAG'
      DataSource = DMSAIDA.DWPedV
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 206
      Top = 9
      Width = 49
      Height = 13
      AutoSize = True
      DataField = 'DTPEDVEN'
      DataSource = DMSAIDA.DWPedV
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 95
      Top = 9
      Width = 49
      Height = 13
      AutoSize = True
      DataField = 'NUMPED'
      DataSource = DMSAIDA.DWPedV
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 673
      Top = 9
      Width = 54
      Height = 13
      AutoSize = True
      DataField = 'VALOR'
      DataSource = DMSAIDA.DWPedV
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 499
      Top = 27
      Width = 49
      Height = 13
      AutoSize = True
      DataField = 'VENDEDOR'
      DataSource = DMSAIDA.DWPedV
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Shape6: TShape
      Left = 3
      Top = 2
      Width = 61
      Height = 23
      Brush.Color = clTan
      Pen.Color = clRed
    end
    object Label35: TLabel
      Left = 8
      Top = 6
      Width = 49
      Height = 16
      Caption = 'Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object Shape7: TShape
      Left = 3
      Top = 163
      Width = 762
      Height = 5
      Brush.Color = clBlue
    end
    object Label7: TLabel
      Left = 664
      Top = 111
      Width = 95
      Height = 13
      Caption = 'Vlr. Devolvido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LVlrDevolvido: TLabel
      Left = 661
      Top = 124
      Width = 97
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 659
      Top = 144
      Width = 40
      Height = 13
      Caption = 'Saldo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox5: TGroupBox
      Left = 5
      Top = 44
      Width = 652
      Height = 115
      Caption = 'Lista de produtos do pedido'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 3
        Top = 13
        Width = 647
        Height = 100
        Color = 16119285
        Ctl3D = False
        DataSource = DMESTOQUE.DSAlx
        FixedColor = 14735049
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
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'OPERACAO'
            Title.Alignment = taCenter
            Title.Caption = 'ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRIMCOD'
            Title.Caption = '1'#186' C'#243'd.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDEPROD'
            Title.Caption = 'Quant.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALUNIT'
            Title.Caption = 'Unit'#225'rio ($)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Title.Caption = 'Total ($)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEGCOD'
            Title.Caption = '2'#186' C'#243'd.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCPRO'
            Title.Caption = 'Desc (%)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Title.Caption = 'Marca'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Vendedor'
            Visible = True
          end>
      end
    end
    object BtnDevolver: TBitBtn
      Left = 659
      Top = 48
      Width = 99
      Height = 25
      Hint = 'Pressione para devolver o produto selecionado na lista (ALT + D)'
      Caption = '&Devolver'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnDevolverClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      Spacing = 0
    end
    object BitBtn1: TBitBtn
      Left = 659
      Top = 72
      Width = 99
      Height = 25
      Hint = 'Pressione para devolver o produto selecionado na lista (ALT + D)'
      Caption = '&Abrir Troca'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        1E060000424D1E06000000000000360000002800000018000000150000000100
        180000000000E8050000CA0E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302F60302F7F7F
        7FCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF9790
        FF979000FFFF60302F60302FCF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF
        9790FFC8CFFFC8CFFFC8CF00FFFFFFC8CF60302FCF6760CF6760CF67607F7F7F
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F6030
        2FFF9790FFC8CF00FFFFCFFFFFFFC8CFFFC8CFCFFFFFFFC8CFCF676060302FCF
        6760CF6760CF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        7F7F7FCF6760FFC8CF00FFFFFFC8CFFFC8CF7F7F7F7F7F7FCFFFFFFFC8CFCFFF
        FFFFC8CF60302FFF0000CF6760CF6760CF67607F7F7F7F7F7FBFBFBFBFBFBFBF
        BFBFBFBFBF7F7F7FFF9790FFC8CF00FFFFCFFFFF7F7F7F7F7F7FFFC8CF00FFFF
        FFC8CF00FFFFFFC8CFCFFFFFCF67600000FFFF0000FF00007F7F7F7F7F7F7F7F
        7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF00FFFFFFC8CFFFC8CF7F7F7FFFC8CFCF
        FFFFFFC8CF7F7F7F7F7F7FCFFFFFCFFFFFFFC8CFCFFFFF60302F0000FFFF0000
        CF67607F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFF
        FFFFFFFF00FFFF7F7F7F7F7F7FCFFFFFCFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCF
        6760FF97900000FFFF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFFFC8CFFFFFFFFFFFFF1F201F7F7F7FCFFFFFCFFFFF7F7F7F7F7F7FCFFF
        FFFFC8CFCFFFFFFFC8CF60302FFFC8CF0000FFFF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8CFCF6760CF67601F201F7F7F7F7F7F7F
        CFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCFFFFFCF6760CFFFFFFF97900000FFFF00
        00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8CFFF9790CF
        67601F201F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFC8CFFFFFFF60302F
        CFFFFFFF97900000FFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8
        CFFFC8CFFF9790FF9790CF67601F201F7F7F7FCFFFFFFFFFFFCFFFFFFFFFFFCF
        FFFFFFC8CFCF6760FFFFFFFFFFFFFF00000000FFCF6760BFBFBFBFBFBFBFBFBF
        CF6760FFC8CFFFC8CFFFC8CFFF9790FF9790FF9790CF67601F201F7F7F7FFFFF
        FFFFFFFFFFFFFFFFC8CFCFFFFFFFC8CFFFFFFFFFFFFFFFFFFFCF6760CF6760BF
        BFBFBFBFBFCF6760FFC8CFFFFFFFFFC8CFFFC8CFFF9790CF6760CF6760CF6760
        CF67601F201F7F7F7FFFFFFF3F3700CFFFFFCF6760FFFFFF0000FF0000FF0000
        FFCF6760BFBFBFBFBFBFBFBFBF60302F60302F60302FFFC8CFFFC8CFFF9790CF
        67601F201F1F201F1F201F1F201F1F201FFFFFFFFFFFFFFFC8CFFFFFFFFFFFFF
        FFFFFFFFC8CFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8
        CFFFC8CFFF9790CF67601F201F60302F60302F60302F60302FFFC8CFFFC8CFFF
        FFFFFF0000FF0000CF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        FF9790FFC8CFFFC8CFFFFFFFFF9790CF67601F201F60302F0000FF0000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFCF6760FFFFFFFFFFFFFFC8CFFF9790CF67601F201F60302F
        BFBFBFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FF9790FF9790FF9790FF9790CF
        67601F201F60302FBFBFBFBFBFBFFF0000FF0000BFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760CF6760CF67
        60CF6760CF67601F201F60302F7F7F7FFFC8CFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF}
      NumGlyphs = 2
    end
    object PTroca: TPanel
      Left = 2
      Top = 171
      Width = 764
      Height = 274
      BevelInner = bvLowered
      Color = 16772332
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
      object Label29: TLabel
        Left = 412
        Top = 10
        Width = 20
        Height = 13
        Caption = 'N'#186':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 642
        Top = 10
        Width = 12
        Height = 13
        Caption = '$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object luzvendedor: TShape
        Left = 734
        Top = 45
        Width = 22
        Height = 21
        Brush.Color = clRed
        Pen.Color = clRed
        Visible = False
      end
      object luzformpag: TShape
        Left = 227
        Top = 78
        Width = 21
        Height = 21
        Brush.Color = clRed
        Pen.Color = clRed
        Visible = False
      end
      object Label6: TLabel
        Left = 6
        Top = 68
        Width = 143
        Height = 13
        Caption = 'Forma de Pagamento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 517
        Top = 36
        Width = 66
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 253
        Top = 68
        Width = 34
        Height = 13
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 311
        Top = 68
        Width = 61
        Height = 13
        Caption = 'Desc(%):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 378
        Top = 68
        Width = 28
        Height = 13
        Caption = 'Obs:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LVlrComissao: TLabel
        Left = 676
        Top = 25
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'Comis.: 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape8: TShape
        Left = 3
        Top = 3
        Width = 61
        Height = 23
        Brush.Color = clMoneyGreen
        Pen.Color = clRed
      end
      object Label34: TLabel
        Left = 9
        Top = 6
        Width = 40
        Height = 16
        Caption = 'Troca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object DBNUMPED: TDBColorEdit
        Left = 440
        Top = 5
        Width = 89
        Height = 19
        Color = clActiveBorder
        Ctl3D = False
        DataField = 'NUMPED'
        DataSource = DMSAIDA.DPedv
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorPed: TColorEditFloat
        Left = 656
        Top = 5
        Width = 101
        Height = 19
        Hint = 
          'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
          'informe o valor em total e pressione <ENTER>'
        Color = clActiveBorder
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '0,00'
        OnExit = EdValorPedExit
        OnKeyPress = EdValorPedKeyPress
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdCodVend: TColorEditFloat
        Left = 517
        Top = 48
        Width = 56
        Height = 19
        Color = 16121836
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '0'
        OnKeyDown = EdCodVendKeyDown
        EditType = fltString
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDNOMEVENDEDOR: TColorEditFloat
        Left = 573
        Top = 48
        Width = 159
        Height = 19
        Color = 16121836
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = '0,00'
        EditType = fltString
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnProcVend: TBitBtn
        Left = 733
        Top = 47
        Width = 22
        Height = 20
        TabOrder = 5
        OnClick = BtnProcVendClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object EDCODFORMPAG: TColorEditFloat
        Left = 6
        Top = 80
        Width = 62
        Height = 19
        Color = 16121836
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        Text = '0'
        OnKeyDown = EDCODFORMPAGKeyDown
        EditType = fltInteger
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDFORMPAG: TColorEditFloat
        Left = 68
        Top = 80
        Width = 159
        Height = 19
        Color = 16121836
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        Text = '0,00'
        EditType = fltString
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnProcFormPag: TBitBtn
        Left = 227
        Top = 80
        Width = 20
        Height = 19
        Hint = 'Pressione para selecionar um forma de pagamento para o pedido'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = BtnProcFormPagClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object DBDATA: TDBColorEdit
        Left = 252
        Top = 80
        Width = 57
        Height = 19
        Color = 16121836
        Ctl3D = False
        DataField = 'DTPEDVEN'
        DataSource = DMSAIDA.DPedv
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDDescPed: TDBColorEdit
        Left = 311
        Top = 80
        Width = 60
        Height = 19
        Color = 16121836
        Ctl3D = False
        DataField = 'DESCONTO'
        DataSource = DMSAIDA.DPedv
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        OnExit = EDDescPedExit
        OnKeyPress = EDDescPedKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBMemo2: TDBMemo
        Left = 414
        Top = 70
        Width = 342
        Height = 29
        Color = 16121836
        Ctl3D = False
        DataField = 'OBS'
        DataSource = DMSAIDA.DPedv
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
      object Panel4: TPanel
        Left = 7
        Top = 28
        Width = 506
        Height = 40
        BevelInner = bvLowered
        Color = 16772332
        TabOrder = 2
        OnEnter = Panel4Enter
        object Label25: TLabel
          Left = 4
          Top = 4
          Width = 48
          Height = 13
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 67
          Top = 4
          Width = 67
          Height = 13
          Caption = 'CPF/CNPJ:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 308
          Top = 20
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
          Left = 480
          Top = 14
          Width = 22
          Height = 21
          Brush.Color = clRed
          Pen.Color = clRed
          Visible = False
        end
        object EdCodCli: TEdit
          Left = 4
          Top = 17
          Width = 61
          Height = 19
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, informe o cliente padr'#227'o consumidor'
          Color = 16121836
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
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
          Left = 66
          Top = 17
          Width = 116
          Height = 19
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
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 3
        end
        object EdNomeCli: TEdit
          Left = 184
          Top = 17
          Width = 294
          Height = 19
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
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 4
        end
        object BtnProcPess: TBitBtn
          Left = 479
          Top = 16
          Width = 22
          Height = 21
          TabOrder = 2
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
          Left = 66
          Top = 17
          Width = 413
          Height = 21
          BevelOuter = bvNone
          Color = 13750737
          Enabled = False
          TabOrder = 1
          object DBCPF: TDBColorEdit
            Left = 0
            Top = 0
            Width = 116
            Height = 19
            Color = 14540287
            Ctl3D = False
            DataField = 'CPFCNPJ'
            DataSource = DMSAIDA.DPedv
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBNomeCli: TDBColorEdit
            Left = 118
            Top = 0
            Width = 294
            Height = 19
            Hint = 
              'Digite o nome do cliente e pressione <ENTER>  para tentar locali' +
              'z'#225'-lo no cadastro'
            Color = 14540287
            Ctl3D = False
            DataField = 'NOMECLI'
            DataSource = DMSAIDA.DPedv
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      object Panel10: TPanel
        Left = 5
        Top = 101
        Width = 751
        Height = 64
        BevelInner = bvLowered
        Color = 16772332
        TabOrder = 11
        OnEnter = Panel10Enter
        object Label50: TLabel
          Left = 21
          Top = 2
          Width = 72
          Height = 13
          Caption = 'C'#243'd. Barra:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label51: TLabel
          Left = 322
          Top = 2
          Width = 46
          Height = 13
          Caption = 'Quant.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 399
          Top = 2
          Width = 60
          Height = 13
          Caption = 'Vlr. Unit.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 495
          Top = 2
          Width = 65
          Height = 13
          Caption = 'Desc.(%):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label54: TLabel
          Left = 575
          Top = 2
          Width = 37
          Height = 13
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LEstoque2: TLabel
          Left = 657
          Top = 2
          Width = 40
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = '000000000000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object LSaldoEstoque2: TLabel
          Left = 705
          Top = 2
          Width = 40
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = '000000000000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object PCodComposto2: TPanel
          Left = 188
          Top = 4
          Width = 134
          Height = 29
          BevelOuter = bvNone
          Color = 16772332
          Enabled = False
          TabOrder = 3
          Visible = False
          object Label58: TLabel
            Left = 3
            Top = -2
            Width = 100
            Height = 13
            Caption = 'C'#243'd. Composto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdCodcomposto2: TColorMaskEdit
            Left = 0
            Top = 10
            Width = 129
            Height = 19
            Ctl3D = False
            EditMask = '000.000.000-000;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 15
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '   .   .   -   '
            OnKeyDown = EdCodcomposto2KeyDown
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object PCodInterno2: TPanel
          Left = 188
          Top = 4
          Width = 131
          Height = 29
          BevelOuter = bvNone
          Color = 16772332
          Enabled = False
          TabOrder = 2
          Visible = False
          object Label60: TLabel
            Left = 2
            Top = -2
            Width = 96
            Height = 13
            Caption = 'Contr. Interno:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdCodInterno2: TColorEditFloat
            Left = 0
            Top = 10
            Width = 129
            Height = 19
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '0'
            OnExit = EdCodInterno2Exit
            OnKeyDown = EdCodInterno2KeyDown
            EditType = fltString
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object PCodFab2: TPanel
          Left = 188
          Top = 4
          Width = 131
          Height = 29
          BevelOuter = bvNone
          Color = 16772332
          Enabled = False
          TabOrder = 4
          object Label59: TLabel
            Left = 1
            Top = -2
            Width = 106
            Height = 13
            Caption = 'C'#243'd. Fabricante:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdCodFab2: TColorMaskEdit
            Left = 0
            Top = 10
            Width = 129
            Height = 19
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnExit = EdCodFab2Exit
            OnKeyDown = EdCodFab2KeyDown
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object BtnProcProd2: TBitBtn
          Left = 3
          Top = 15
          Width = 18
          Height = 18
          Hint = 'Pressione para localizar o Produto'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnProcProd2Click
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EdCodBarra2: TEdit
          Left = 21
          Top = 14
          Width = 165
          Height = 19
          BiDiMode = bdRightToLeft
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 13
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object BtnInserir: TBitBtn
          Left = 678
          Top = 17
          Width = 70
          Height = 22
          Hint = 
            'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
            'na lista (ALT + I)'
          Caption = '&Inserir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = BtnInserirClick
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
        object BtnDelete: TBitBtn
          Left = 678
          Top = 38
          Width = 70
          Height = 22
          Hint = 
            'Pressione para remover o produto selecionado na lista da mesma (' +
            'ALT + E)'
          Caption = '&Excluir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = BtnDeleteClick
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
        object Panel14: TPanel
          Left = 3
          Top = 37
          Width = 657
          Height = 24
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 11
          object Bevel2: TBevel
            Left = 4
            Top = 9
            Width = 649
            Height = 15
          end
          object Label61: TLabel
            Left = 4
            Top = -1
            Width = 113
            Height = 10
            Caption = 'PRODUTO SELECIONADO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LSimilar2: TLabel
            Left = 8
            Top = 10
            Width = 369
            Height = 13
            AutoSize = False
            Caption = 'teste'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LMarca2: TLabel
            Left = 380
            Top = 10
            Width = 181
            Height = 13
            AutoSize = False
            Caption = 'teste'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LLocal2: TLabel
            Left = 568
            Top = 10
            Width = 78
            Height = 13
            AutoSize = False
            Caption = 'teste'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object EdQuantidade2: TColorEditFloat
          Left = 322
          Top = 14
          Width = 73
          Height = 19
          Color = 15329769
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          MaxLength = 13
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Text = '0,00'
          OnExit = EdQuantidade2Exit
          ValueFormat = '#,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdValUnit2: TColorEditFloat
          Left = 399
          Top = 14
          Width = 93
          Height = 19
          Color = 15329769
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          MaxLength = 13
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          Text = '0,00'
          OnEnter = EdValUnit2Enter
          OnExit = EdQuantidade2Exit
          ValueFormat = '#,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EDdesc2: TColorEditFloat
          Left = 495
          Top = 14
          Width = 77
          Height = 19
          Color = 15329769
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          MaxLength = 13
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          Text = '0,00'
          OnExit = EdQuantidade2Exit
          OnKeyPress = EDdesc2KeyPress
          ValueFormat = '#,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdTotal2: TColorEditFloat
          Left = 575
          Top = 14
          Width = 81
          Height = 19
          Hint = 
            'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
            'informe o valor em total e pressione <ENTER>'
          Color = 15329769
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          MaxLength = 13
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          Text = '0,00'
          OnExit = EdTotal2Exit
          OnKeyPress = EdTotal2KeyPress
          ValueFormat = '#,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object BtnEscolheProc2: TBitBtn
          Left = 305
          Top = 33
          Width = 12
          Height = 12
          Hint = 'Pressione para alterar o modo de procura (Alt+P)'
          Caption = '&P'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnClick = BtnEscolheProc2Click
        end
      end
      object DBGrid2: TDBGrid
        Left = 5
        Top = 166
        Width = 751
        Height = 106
        Color = 15794175
        Ctl3D = False
        DataSource = DMESTOQUE.DSSlave
        FixedColor = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'OPERACAO'
            Title.Alignment = taCenter
            Title.Caption = 'ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRIMCOD'
            Title.Caption = '1'#186' C'#243'd.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEGCOD'
            Title.Caption = '2'#186' C'#243'd.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Width = 340
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDEPROD'
            Title.Caption = 'Quant.'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALUNIT'
            Title.Caption = 'Unit'#225'rio ($)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Title.Caption = 'Total ($)'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCPRO'
            Title.Caption = 'Desc (%)'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMISSAO'
            Title.Caption = 'Comis.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Title.Caption = 'Marca'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Vendedor'
            Visible = True
          end>
      end
    end
    object EdVlrSaldo: TColorEditFloat
      Left = 699
      Top = 139
      Width = 59
      Height = 19
      Hint = 'Saldo de cr'#233'dito do cliente para com a loja'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
  end
  object MEscolheProc: TPopupMenu
    Left = 618
    Top = 7
    object ControleInterno1: TMenuItem
      Caption = 'Controle Interno'
    end
    object CdFab1: TMenuItem
      Caption = 'C'#243'd. Fabricante'
    end
    object C1: TMenuItem
      Caption = 'C'#243'd. Composto'
    end
  end
  object MEscolheProc2: TPopupMenu
    Left = 650
    Top = 7
    object MenuItem1: TMenuItem
      Caption = 'Controle Interno'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'C'#243'd. Fabricante'
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = 'C'#243'd. Composto'
      OnClick = MenuItem3Click
    end
  end
end
