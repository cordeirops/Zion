inherited FFiscalEntradas: TFFiscalEntradas
  Left = 356
  Top = 124
  Caption = 'FFiscalEntradas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Shape35: TShape
      Top = 46
    end
    inherited Shape1: TShape
      Top = 76
    end
    inherited Label1: TLabel
      Top = 3
    end
    inherited Shape5: TShape
      Top = 78
    end
    inherited Label2: TLabel
      Top = 77
    end
    inherited Shape6: TShape
      Top = 114
    end
    inherited Label3: TLabel
      Left = 747
      Top = 113
    end
    inherited Shape7: TShape
      Top = 150
    end
    inherited Label4: TLabel
      Top = 149
    end
    inherited Shape8: TShape
      Top = 46
    end
    inherited LCfop: TLabel
      Top = 46
    end
    inherited Label6: TLabel
      Top = 31
    end
    inherited Label30: TLabel
      Top = 31
    end
    inherited LNatOp: TLabel
      Top = 46
    end
    inherited Shape37: TShape
      Top = 7
    end
    inherited LPeriodoFiscal: TLabel
      Top = 10
    end
    inherited Shape45: TShape
      Top = 38
    end
    inherited Label44: TLabel
      Top = 38
    end
    inherited LNomePessoa: TLabel
      Top = 77
    end
    inherited PFalha: TPanel [20]
    end
    inherited PageControl2: TPageControl [21]
    end
    inherited cbsaida: TCheckBox [22]
    end
    inherited cbTipoDocumento: TFlatComboBox [23]
      Top = 53
    end
    inherited cbentrada: TCheckBox [24]
    end
    inherited BitBtn2: TBitBtn [25]
      Left = 600
      Top = 110
    end
    inherited BitBtn3: TBitBtn [26]
      Left = 600
      Top = 57
    end
    inherited BtnImprimir: TButton [27]
      Left = 600
      Top = 137
    end
    inherited pNfe: TPanel [28]
      Top = 120
      Width = 573
      Height = 32
      inherited Shape2: TShape
        Top = 6
      end
      inherited LCpfCnpj: TLabel
        Top = 7
      end
      inherited Shape4: TShape
        Top = 6
      end
      inherited Shape3: TShape
        Top = 6
      end
      inherited Shape39: TShape
        Top = 6
      end
      inherited LCodIbge: TLabel
        Top = 6
      end
    end
    inherited BtnAlterarPeriodo: TBitBtn [29]
      Top = 9
    end
    inherited PErro: TPanel [30]
    end
    inherited PChaveAcesso: TPanel [31]
      inherited btnInsereChave: TBitBtn
        Top = 16
      end
      inherited EdChaveNFE: TFlatEdit
        Top = 16
      end
    end
    inherited PageControl1: TPageControl [32]
      inherited LBFatura: TTabSheet
        inherited DbGridProdutos: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#211'DIGO'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODUTO'
              Width = 335
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'COD_SIT_TRIB'
              Title.Alignment = taCenter
              Title.Caption = 'S.T.'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CFOP'
              Title.Alignment = taCenter
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDADE'
              Title.Caption = 'UNID.'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Alignment = taRightJustify
              Title.Caption = 'QUANT.'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRUNIT'
              Title.Alignment = taRightJustify
              Title.Caption = 'VLR. UNIT'#193'RIO'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'VLR. TOTAL'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMS'
              Title.Alignment = taRightJustify
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASEICMS'
              Title.Alignment = taRightJustify
              Title.Caption = 'B. Icms'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRICMS'
              Title.Alignment = taRightJustify
              Title.Caption = 'V. Icms'
              Width = 54
              Visible = True
            end>
        end
        inherited LbFaturaNF: TMemo
          Left = 5
        end
      end
    end
    inherited EdNumeroFiscal: TColorEditFloat [33]
      Top = 1
    end
    inherited BtnProcuraPessoa: TBitBtn [34]
      Top = 76
    end
    inherited EdDtEmissao: TColorMaskEdit [35]
      Top = 94
    end
    inherited EdDtsaidaEntrada: TColorMaskEdit [36]
      Top = 130
    end
    inherited EdHoraSaida: TColorMaskEdit [37]
      Top = 166
    end
    inherited pNfce: TPanel [38]
      Top = 122
    end
    inherited btnContingencia: TBitBtn
      Left = 600
      Top = 83
    end
  end
end
