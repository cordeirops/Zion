inherited FClienteCob: TFClienteCob
  Left = 0
  Caption = 'FClienteCob'
  ClientWidth = 792
  PixelsPerInch = 96
  TextHeight = 13
  inherited LDescTitulo: TDRLabel
    Width = 433
    Caption = 'Clientes'
  end
  inherited PConsulta: TPanel
    inherited GroupBox1: TGroupBox
      Left = 230
      Top = 33
      Width = 540
      Height = 37
      Font.Charset = ANSI_CHARSET
      Font.Name = 'Verdana'
      ParentFont = False
      inherited EdNome: TFlatEdit
        Top = 14
        Width = 421
        Height = 19
        Font.Height = -11
        Font.Name = 'Verdana'
      end
      inherited BtnSelecionar: TBitBtn
        Left = 429
        Top = 8
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Top = 73
      Height = 416
      DataSource = DMPESSOA.DWClienteCob
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Cliente'
          Width = 353
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFCNPJ'
          Title.Caption = 'Cpf/Cnpj'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Title.Caption = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Visible = True
        end>
    end
    inherited Painel: TPanel
      Left = 0
      Top = 2
      Width = 770
      object BitBtn1: TBitBtn
        Left = 572
        Top = 2
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para filtrar os registros'
        Caption = '&Devedores'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BitBtn1Click
        Glyph.Data = {
          86050000424D8605000000000000360000002800000016000000140000000100
          1800000000005005000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFBFFFF2C3D2E09
          0600CED9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FDF9EDE9F1FFFFFF4E3F4D000000
          14131000000F0E0200010004D9E8DEFFF8FBFFFBFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFF7FAFAFFFFFFEEEDED5653530401010B0A
          0A0C0D0DDEE1E13F3F3F070707181818070707090909EDEDEDF7F7F7FDFDFDFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFEF8F7F9F3F3F36363630B0B0B0303032E
          2E2EBFBFBFF7F7F7DEDEDE151515C7C7C7FEFEFE2424240D0D0D0303030A0A0A
          EDEDEDF5FCEAF6F0FFFFFFFF0000FFFFFFE5EBFF7C7675040202000000272828
          B0B2B2E2E4E4D0D1D1CCCBCBEEECEC121212CBCBCBD5D5D5DFDFDFFFFFFF2929
          29181818010101000007FFFFFFFFFFFF0000FFFFFF947189000704181717A2A2
          A2F7F7F7E8E9E9C8C9C9DFE0E0D5D5D5DEDDDD1B1B1BACACACE2E2E2DEDEDECF
          CFCFE1E1E1D5D5D51F1F1F05000000080BFFFFFF0000FFFFFF8C84840000015F
          6161B2B3B3ADACACB1AEAED8D6D6ECEBEBD2D3D3E4E6E6202020A9A9A9D9D9D9
          D5D5D5C3C3C3E2E2E2A1A1A1C2C2C2031009140203F7FAFF0000FFFFFF9C9496
          0B1411898D8DFBFCFCB4B3B3AAA6A6C3BFBFB6B5B5C9CACAE1E4E4111111C0C0
          C0C8C8C8DADADA9F9F9F919191DDDDDDD1D1D1030004090800FDFFFF0000FFFF
          FF91998F181117929090E0E0E0DBDCDCCBCCCCDEDFDFDADBDBA2A1A1B5B4B420
          2020818181D3D3D3D3D3D3DEDEDED3D3D3D7D7D7D5D5D50D15101C191BFDFFFF
          0000FFFFFF9193933432399B9D9DE9EBEBC8C9C9D1D1D1E5E4E4B5B4B49B9999
          706E6E656767888787959393D4D5D5DFE0E0D0CFCFDDDCDCE3E4E436352F3532
          3CF7F8FA0000FFFFFF989A9A3F3E41989696E4E2E2E6E5E5B3B3B3989999696A
          6A6C6D6DD4D6D6BCC2C27F7979827C7C7F8585999F9FE1DBDBDDD7D7CFD5D544
          423E3B3A40FDFDFF0000FFFFFFA1A2A2494844AAA8A8C3C1C1B2B1B16B6B6B7B
          7B7BD3D4D4E7E8E8D2D4D4ACA6A6D1D7D7E3E9E9948E8E746E6E828888979D9D
          E8E2E24A484A484B48FFFFFF0000FFFFFFA2A4A453524B8B8D8D8D8F8F8E8F8F
          D1D1D1F1F1F1D5D4D4E0DEDEECEAEABCBBBBD9DADAD3D5D5DFDEDEDEDDDDA0A1
          A1999B9B918F8F48454A636860FFFCFC0000FFFFFFC2C4C58B8B865B5D5D9FA1
          A1B2B3B3CFCFCFEEEEEEE2E0E0D8D7D7CFCECEA6AEAEDBD4D4E2DADAEAF1F1E4
          EBEBB5AEAEB6AFAF676E6E716D6FABB1ABFFFFFF0000FFFFFFFAFCFDDEDEDDBC
          BABA6B6A6A7A79798E8D8DA2A3A3D8D9D9E4E6E6ECEEEEB9B5B5EBEFEFE5E9E9
          BBB7B7B0ACAC656969707474B4B0B0B9B3B2FFFFFFFFF8FF0000FFFFFFFFFFFF
          FFFFFFFEFFFFDBDCDBBFBEB889868477787A979D9DB6B8B9E3E0E4CCD3D4ABB0
          B3B2B4AB7E7F8971727AC6C7BBBEC0C5FAFAFFF4F6FBFFFFFFF7FFFE0000FFFF
          FFFFFFFFFFFFFFFFFFFFFDFBFEFFFFFFF2F6ECBEC1B88F9193898786ADA497B3
          AA9D8A8990848B8BAEB4B5DAD9D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFF5EEEBCBCFC9
          96A0A99290A3CFCBCEE6E2D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
      end
    end
    inherited RGORDEM: TRadioGroup
      Left = 2
      Top = 33
      Width = 227
      Height = 37
      Columns = 3
      Font.Height = -9
      ParentFont = False
    end
  end
  inherited PCadastro: TPanel
    inherited Panel4: TPanel
      inherited TCPessoa: TFlatTabControl
        inherited PPrincipal: TPanel
          inherited Label17: TLabel
            Left = 560
          end
          inherited Label20: TLabel
            Left = 662
          end
          object Label1: TLabel [6]
            Left = 312
            Top = 217
            Width = 69
            Height = 13
            Caption = 'Multa (%):'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label16: TLabel [7]
            Left = 393
            Top = 217
            Width = 69
            Height = 13
            Caption = 'Juros (%):'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          inherited PPesFisica: TPanel
            inherited DBINTERNO: TDBColorEdit
              DataField = 'COD_INTERNO'
              DataSource = DMPESSOA.DClienteCob
            end
          end
          inherited DBColorEdit13: TDBColorEdit
            Left = 560
            Width = 97
            TabOrder = 7
          end
          inherited PageControl1: TPageControl
            TabOrder = 14
          end
          inherited DBDATACAD: TDBColorEdit
            Left = 660
            Width = 83
            TabOrder = 8
          end
          inherited FrmBusca1: TFrmBusca
            Width = 286
            inherited LUZOPEN: TShape
              Left = 241
            end
            inherited LUZMINUS: TShape
              Left = 259
            end
            inherited EdDescricao: TFlatEdit
              Left = 40
              Width = 200
            end
            inherited BTNOPEN: TBitBtn
              Left = 242
            end
            inherited BTNMINUS: TBitBtn
              Left = 260
            end
            inherited EDCodigo: TFlatEdit
              Width = 47
            end
          end
          inherited FrmRegiao: TFrmBusca
            Left = 294
            Top = 176
            Width = 265
            Height = 38
            TabOrder = 6
            inherited LUZOPEN: TShape
              Left = 223
            end
            inherited LUZMINUS: TShape
              Left = 242
            end
            inherited EdDescricao: TFlatEdit
              Left = 41
              Width = 184
            end
            inherited BTNOPEN: TBitBtn
              Left = 225
            end
            inherited BTNMINUS: TBitBtn
              Left = 243
            end
            inherited EDCodigo: TFlatEdit
              Width = 39
            end
          end
          inherited FrmNatural: TFrmBusca
            Width = 281
            TabOrder = 9
            inherited LUZOPEN: TShape
              Left = 239
            end
            inherited LUZMINUS: TShape
              Left = 257
            end
            inherited EdDescricao: TFlatEdit
              Left = 40
              Width = 200
            end
            inherited BTNOPEN: TBitBtn
              Left = 241
            end
            inherited BTNMINUS: TBitBtn
              Left = 259
            end
            inherited EDCodigo: TFlatEdit
              Width = 47
            end
          end
          inherited DBEndNumero: TDBColorEdit
            TabOrder = 15
          end
          object DBColorEdit10: TDBColorEdit
            Left = 312
            Top = 232
            Width = 73
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'MULTA'
            DataSource = DMPESSOA.DClienteCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 9
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 10
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit11: TDBColorEdit
            Left = 393
            Top = 232
            Width = 73
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'JUROS'
            DataSource = DMPESSOA.DClienteCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 9
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object RBSimples: TRadioButton
            Left = 480
            Top = 219
            Width = 92
            Height = 17
            Caption = 'Simples'
            Checked = True
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 12
            TabStop = True
          end
          object RBComposto: TRadioButton
            Left = 480
            Top = 235
            Width = 92
            Height = 17
            Caption = 'Composto'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 13
          end
        end
      end
    end
  end
  inherited PTitulo: TPanel
    Width = 793
  end
  inherited Relatorio: TPopupMenu
    inherited Sinttico1: TMenuItem
      Caption = 'Devedores'
    end
  end
end
