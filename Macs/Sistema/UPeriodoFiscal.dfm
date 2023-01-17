inherited FPeriodoFiscal: TFPeriodoFiscal
  Left = 325
  Top = 165
  Caption = 'FPeriodoFiscal'
  ClientWidth = 482
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 730
    Top = 224
  end
  inherited PCadastro: TPanel
    Left = 13
    Top = 19
    Width = 452
    Color = clWhite
    inherited Panel4: TPanel
      Width = 447
      object Label1: TLabel
        Left = 88
        Top = 96
        Width = 104
        Height = 16
        Caption = 'Data Inicial:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 232
        Top = 96
        Width = 88
        Height = 16
        Caption = 'Data Final:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 32
        Top = 32
        Width = 64
        Height = 16
        Caption = 'Per'#237'odo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdData01: TColorMaskEdit
        Left = 88
        Top = 112
        Width = 129
        Height = 24
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '  /  /    '
        OnExit = EdData01Exit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdData02: TColorMaskEdit
        Left = 232
        Top = 112
        Width = 129
        Height = 24
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '  /  /    '
        OnExit = EdData01Exit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdPeriodo: TEdit
        Left = 32
        Top = 48
        Width = 385
        Height = 24
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    inherited Panel1: TPanel
      Width = 447
    end
  end
  inherited PConsulta: TPanel
    Left = 13
    Top = 19
    Width = 452
    inherited GroupBox1: TGroupBox
      Width = 447
      inherited EdNome: TFlatEdit
        Width = 325
      end
      inherited BtnSelecionar: TBitBtn
        Left = 336
      end
    end
    inherited Painel: TPanel
      Width = 235
      inherited BtnApagar: TBitBtn
        Left = 460
        Visible = False
      end
      inherited BtnConsultar: TBitBtn
        Left = 118
      end
      inherited BtnRelatorio: TBitBtn
        Left = 688
        Visible = False
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Left = 802
        Visible = False
        OnClick = BtnFiltrarClick
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 447
      DataSource = DMMACS.DPeriodoFiscal
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PERIODOFISCAL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Per'#237'odo'
          Width = 168
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTINICIAL'
          Title.Caption = 'Dt. Inicial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTFINAL'
          Title.Caption = 'Dt. Final'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHADO'
          Title.Caption = 'F'
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 330
      Top = 5
      Width = 119
      Height = 29
      BevelInner = bvLowered
      Color = clWhite
      TabOrder = 3
      object BitBtn1: TBitBtn
        Left = 2
        Top = 2
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para obter novo cadastro'
        Caption = 'Fechar Per'#237'odo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          9E020000424D9E0200000000000036000000280000000E0000000E0000000100
          1800000000006802000000000000000000000000000000000000F7F7F7F7F7F7
          F7F7F7D2CFC7EDEDEDF7F7F7F7F7F7F7F7F7DEDEE2D3D3DADDDDDFF7F7F7F7F7
          F7F7F7F70000F7F7F7F7F7F7F1F0EFBD7740BEBDB8F7F7F7F4F4F4AFAFD34444
          C65656D98181DBBFBED2F7F7F7F7F7F70000F7F7F7F7F7F7BB9D7CD163229D64
          379B663D9C80783030BC2828B62C2CC63737CF5554D3D9D8DCF7F7F70000F7F7
          F7D5CFC2D07424CD6D20CB6A20CE6821B48C8C6666DD3737D02B2BC32727B229
          29B5C2C1D8F7F7F70000F7F7F7CEAC6FD98820D78420D88221C69D6CCCBAAFAF
          AFED7C7CE24646D52A2ABC2828B5D3D3DCF7F7F70000F7F7F7F4F4F3EBDBC1E5
          B55DE39D21B6AE9DECEBEBC0BED5BABAF09797E86C6CDE9291D3F2F2F3F7F7F7
          0000F7F7F7F7F7F7F7F7F7F7F7F7EDE2CBC7BBA1F7F7F7EAEAEACFCED5CCCADD
          D3D1DDEFEFEFF7F7F7F7F7F70000F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
          F4F4F4F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F70000F7F7F7C4C0BA
          F7F7F7F7F7F7F7F7F7F7F7F7C5A872AA9F8DE8E8E8F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F70000F7F7F7E8D0A5A59686DFDFDFF6F6F6F7F7F7DCC297DD9B23BC88
          2EA2937DE1E1E0F7F7F7F7F7F7F7F7F70000F7F7F7F2EFEBE7B47FD18B4DAC76
          4AA1734EB47539CC8124CC8224D18824C6B499F7F7F7F7F7F7F7F7F70000F7F7
          F7F7F7F7F0EBE6DA9C74BD6328BD6427BC6626BB6726C16C26C48C59F3F3F2F7
          F7F7F7F7F7F7F7F70000F7F7F7F7F7F7F7F7F7F6F6F5E3D3C9D2AB95C89F87C4
          8560C36B36DDD5CFF7F7F7F7F7F7F7F7F7F7F7F70000F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F7F7F7F7F7F7E5CDBFC5A797F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
          0000}
      end
      object BitBtn2: TBitBtn
        Left = 460
        Top = 2
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
        Caption = 'Apagar - F8'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Visible = False
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
      end
      object BitBtn4: TBitBtn
        Left = 688
        Top = 2
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para visualizar tela de relat'#243'rios'
        Caption = '&Relat'#243'rios'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Visible = False
        OnClick = BtnRelatorioClick
        Glyph.Data = {
          96030000424D9603000000000000360000002800000010000000120000000100
          18000000000060030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80808080808080
          8080808080808080808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF8080808080805050503F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F7F7F
          7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF8080805050503F3F3FF0F0F0B0B0B09F
          8080AF8080B0B0B0E0E0E0B0B0B04F4F4F3F3F3F7F7F7FFFFFFFFFFFFF3F3F3F
          3F3F3FEFEFEFF0F0F0EFEFEFAFAFAF9090905F5F5F6F6F6F8F8F8FBFBFBFEFEF
          EFB0B0B07F7F7FFFFFFFFFFFFFAFAFAFFFFFFFF0F0F0DFDFDF9090907F7F7F9F
          9F9FB0B0B0A0A0A09090908F8F8F8F8F8F5F5F5F7F7F7FFFFFFFFFFFFFA0A0A0
          DFDFDFA0A0A09F9F9FCFCFCFAFAFAF8F8F8F808080808080A0A0A0BFBFBF70A0
          805050507F7F7FFFFFFFFFFFFF707070A0A0A0DFDFDFDFDFDFDFDFDFDFDFDFE0
          E0E0CFCFCFBFBFBF9F9F9F8F8F8F6F7F6F4F4F4F808080FFFFFFFFFFFF9F9F9F
          E0E0E0DFDFDFD0D0D0CFCFCFD0D0D0CFCFCFC0C0C0C0C0C0CFCFCFD0D0D0CFCF
          CF6F6F6FFFFFFFFFFFFFFFFFFF8F8F8FD0D0D0C0C0C0AFAFAFA0A0A0CFCFCFF0
          F0F0EFEFEFEFEFEFDFDFDFBFBFBFBFBFBF707070FFFFFFFFFFFFFFFFFFFFFFFF
          A0A0A0CFCFCFEFEFEFB0B0B0BFBFBFAFAFAFB0B0B0BFBFBFBFBFBF7070707070
          70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AFA0FFD0C0FFD0C0FFD0CFEF
          DFD0E0E0E0E0E0E06F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAF8F90FFDFB0FFDFBFFFDFBFFFD0B0FFD0AF605F5FFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB09F8FFFE0CFFFE0CFFFE0CFFF
          E0CFFFE0C0705F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFDFBFB0FFEFDFFFEFDFFFEFDFFFEFDF705F5FFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F90FFF0EFFFF0EFFFF0EFFFF0EFFF
          F0EF705F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          AF8F90AF8F90AF8F90AF8F90AF8F90AF8F90FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object BitBtn5: TBitBtn
        Left = 802
        Top = 2
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para filtrar os registros'
        Caption = '&Filtrar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Visible = False
        OnClick = BtnFiltrarClick
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          18000000000040030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFF1F1F1F606060404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF7F80A070
          7F9F6F6F6F404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF6090BF50AFFF707F9F707070404040FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFF5090BF50AFFF707F9F7070702F2F2FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF5090
          BF50AFFF707F9F4F4F4F5050507070707070704F4F4F1F1F1FFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30607F606F80A0908FE0CF
          AFFFF0CFFFFFD0DFCFB0606060101010FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF6F504FFFD0B0FFF0CFFFFFD0FFFFEFFFFFFFE0DF
          D05F5F5FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E0C0AFFFEFC0FFF0C0FFFFD0FFFFF0FFFFFFFFFFD0707070FFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C0FFDF9FFFE0BFFFFFD0
          FFFFD0FFFFD0FFFFD0A0907FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFD0C0AFFFF0CFFFE0BFFFEFBFFFF0CFFFF0CFFFF0CF705F50
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FF
          EFDFFFFFEFFFE0BFFFE0B0FFEFCFDFB0A01F1F1FFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FD0CFBFF0E0BFF0E0BFCF
          AF9F202020FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF303030606060606060FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      end
    end
  end
end
