inherited FFormPag: TFFormPag
  Left = 257
  Top = 174
  Caption = 'FFormPag'
  ClientHeight = 362
  ClientWidth = 674
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 673
    Height = 325
  end
  inherited LDescTitulo: TLabel
    Left = 505
    Top = 18
    Width = 164
    Caption = 'Formas de Pagamento'
  end
  inherited PComunica: TPanel [5]
    Top = 131
  end
  inherited PCadastro: TPanel [6]
    Left = 41
    Top = 55
    Height = 274
    inherited Panel4: TPanel
      Height = 242
      inherited Label7: TLabel
        Top = 66
      end
      object Label2: TLabel [2]
        Left = 16
        Top = 114
        Width = 76
        Height = 18
        Caption = '1'#186' Parcela:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = BtnApagarClick
      end
      object Label3: TLabel [3]
        Left = 96
        Top = 112
        Width = 164
        Height = 18
        Caption = 'Intervalo entre parcelas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = BtnApagarClick
      end
      object Label4: TLabel [4]
        Left = 272
        Top = 112
        Width = 137
        Height = 18
        Caption = 'Quant. de Parcelas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = BtnApagarClick
      end
      object Label5: TLabel [5]
        Left = 16
        Top = 164
        Width = 76
        Height = 18
        Caption = 'M'#233'd. Dias:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = BtnApagarClick
      end
      object Label8: TLabel [6]
        Left = 111
        Top = 168
        Width = 84
        Height = 18
        Caption = 'Juros Aplic.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel [7]
        Left = 207
        Top = 168
        Width = 120
        Height = 18
        Caption = 'Desc. Para ECF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel [8]
        Left = 149
        Top = 16
        Width = 106
        Height = 18
        Caption = 'C'#243'digo Interno:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel [9]
        Left = 375
        Top = 168
        Width = 126
        Height = 18
        Caption = 'Desc. Pedidos %:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        DataField = 'COD_FORMPAG'
        DataSource = DMFINANC.DSFORMPAG
      end
      inherited DBDESC: TDBColorEdit
        Top = 83
        Width = 542
        DataField = 'DESCRICAO'
        DataSource = DMFINANC.DSFORMPAG
        TabOrder = 2
      end
      object EDPRIMPARCELA: TSpinEdit
        Left = 16
        Top = 130
        Width = 73
        Height = 28
        Hint = 
          'Informe a quantidade de dias que ter'#225' de intervalo entre a data ' +
          'atual e a 1'#186' parcela de pagamento'
        Color = 15658717
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        MaxValue = 365
        MinValue = 0
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Value = 0
      end
      object EDINTERVALO: TSpinEdit
        Left = 96
        Top = 130
        Width = 169
        Height = 28
        Hint = 
          'Informe o intervalo de que haver'#225' entre a 1'#186' parcela e as demais' +
          '.'
        Color = 15658717
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        MaxValue = 365
        MinValue = 1
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Value = 1
      end
      object EDQUANTPARCELA: TSpinEdit
        Left = 272
        Top = 130
        Width = 145
        Height = 28
        Hint = 
          'Informe o intervalo de que haver'#225' entre a 1'#186' parcela e as demais' +
          '.'
        Color = 15658717
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        MaxValue = 60
        MinValue = 0
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Value = 0
        OnExit = EDQUANTPARCELAExit
      end
      object EDMEDIADIAS: TSpinEdit
        Left = 16
        Top = 180
        Width = 89
        Height = 28
        Hint = 
          'Informe a quantidade de dias que ter'#225' de intervalo entre a data ' +
          'atual e a 1'#186' parcela de pagamento'
        Color = 15658717
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        MaxValue = 365
        MinValue = 1
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Value = 1
      end
      object DBColorEdit1: TDBColorEdit
        Left = 110
        Top = 186
        Width = 91
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'JUROAPLIC'
        DataSource = DMFINANC.DSFORMPAG
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object CBFORMPAGVISTA: TRadioButton
        Left = 344
        Top = 8
        Width = 209
        Height = 17
        Caption = 'Forma de pagamento '#224' vista'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object CBCADERNETA: TRadioButton
        Left = 344
        Top = 24
        Width = 209
        Height = 17
        Caption = 'Forma de Caderneta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object DBColorEdit2: TDBColorEdit
        Left = 206
        Top = 186
        Width = 163
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DESCFISC'
        DataSource = DMFINANC.DSFORMPAG
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object CBCredito: TRadioButton
        Left = 344
        Top = 40
        Width = 225
        Height = 17
        Caption = 'Forma de Cr'#233'dito Antecipa'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object DBCodInterno: TDBColorEdit
        Left = 149
        Top = 35
        Width = 155
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'COD_INTERNO'
        DataSource = DMFINANC.DSFORMPAG
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit3: TDBColorEdit
        Left = 374
        Top = 186
        Width = 123
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DESCFORMPAG'
        DataSource = DMFINANC.DSFORMPAG
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object cbAtivaDesconto: TCheckBox
        Left = 16
        Top = 216
        Width = 265
        Height = 17
        Caption = 'Ativar descontos em pedidos.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object CBMobile: TCheckBox
        Left = 448
        Top = 216
        Width = 113
        Height = 17
        Caption = 'Exportar Mobile'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
    end
  end
  inherited PConsulta: TPanel [7]
    Left = 41
    Top = 55
    Height = 274
    inherited DBGridCadastroPadrao: TDBGrid
      Height = 184
      DataSource = DMFINANC.DSFORMPAG
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnDblClick = DBGridCadastroPadraoDblClick
      OnKeyDown = DBGridCadastroPadraoKeyDown
      OnKeyPress = DBGridCadastroPadraoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'Cod Interno'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_FORMPAG'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Forma de Pagamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRIMPARCELA'
          Title.Caption = '1'#186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INTERVALO'
          Title.Caption = 'Interv.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTPARCELA'
          Title.Caption = 'N'#186' Parc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUROAPLIC'
          Title.Caption = 'Juros'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MEDIADIAS'
          Title.Caption = 'M'#233'dia Dias'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      inherited EdNome: TFlatEdit
        Top = 21
        Width = 445
      end
      inherited BtnSelecionar: TBitBtn
        Left = 455
      end
    end
  end
end
