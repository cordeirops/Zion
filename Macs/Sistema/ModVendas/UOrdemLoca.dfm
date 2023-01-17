inherited FOrdemLoca: TFOrdemLoca
  Left = 307
  Top = 134
  Caption = 'FOrdemLoca'
  ClientHeight = 563
  ClientWidth = 945
  Scaled = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 2
    Top = 0
    Width = 936
    Height = 553
    Color = clWhite
    inherited Panel1: TPanel [0]
      Left = 3
      Top = 2
      Width = 932
      Height = 30
      object Label13: TLabel [0]
        Left = 759
        Top = 5
        Width = 24
        Height = 19
        Caption = 'N'#186':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdNumero: TEdit [1]
        Left = 796
        Top = 2
        Width = 135
        Height = 30
        Color = clGradientInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      inherited BtnGravar: TBitBtn
        Width = 94
      end
      object cbNfse: TCheckBox
        Left = 656
        Top = 8
        Width = 97
        Height = 17
        Caption = 'Gera NFSE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    inherited Panel4: TPanel [1]
      Top = 34
      Width = 935
      Height = 511
      object Shape6: TShape
        Left = 2
        Top = 0
        Width = 932
        Height = 513
        Pen.Width = 3
      end
      object Label22: TLabel
        Left = 827
        Top = 10
        Width = 40
        Height = 16
        Caption = 'Data:'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object LTextoBusca: TLabel
        Left = 604
        Top = 45
        Width = 80
        Height = 16
        Caption = 'Observa'#231#227'o'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Shape4: TShape
        Left = 822
        Top = 91
        Width = 105
        Height = 74
        Pen.Color = clSkyBlue
        Pen.Width = 2
      end
      object Label1: TLabel
        Left = 833
        Top = 94
        Width = 56
        Height = 14
        Caption = 'Per'#237'odo:'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 15
        Top = 74
        Width = 149
        Height = 49
        Pen.Color = clSkyBlue
        Pen.Width = 2
      end
      object Label2: TLabel
        Left = 20
        Top = 76
        Width = 112
        Height = 14
        Caption = 'Tabela de Pre'#231'o:'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape3: TShape
        Left = 566
        Top = 171
        Width = 362
        Height = 201
        Pen.Color = clSkyBlue
        Pen.Width = 2
      end
      object Label15: TLabel
        Left = 688
        Top = 450
        Width = 39
        Height = 10
        Caption = 'DESC(%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 611
        Top = 422
        Width = 72
        Height = 16
        Caption = 'PRODUTOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 776
        Top = 443
        Width = 60
        Height = 18
        Caption = 'TOTAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 14
        Top = 126
        Width = 168
        Height = 16
        Caption = 'Respons'#225'vel retirada:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label37: TLabel
        Left = 637
        Top = 474
        Width = 115
        Height = 10
        Caption = 'EFETUAR ADIANTAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 777
        Top = 486
        Width = 51
        Height = 19
        Caption = 'Saldo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbSaldo: TLabel
        Left = 833
        Top = 486
        Width = 88
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label39: TLabel
        Left = 835
        Top = 382
        Width = 96
        Height = 16
        Caption = 'Tx. Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 664
        Top = 392
        Width = 3
        Height = 13
      end
      object Shape2: TShape
        Left = 13
        Top = 171
        Width = 550
        Height = 327
        Pen.Color = clSkyBlue
        Pen.Width = 2
      end
      object Label65: TLabel
        Left = 607
        Top = 474
        Width = 16
        Height = 10
        Caption = 'ISS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PAdicionaAcessorios: TPanel
        Left = 54
        Top = 120
        Width = 507
        Height = 224
        BevelInner = bvRaised
        BorderStyle = bsSingle
        TabOrder = 24
        Visible = False
        object DBGAcessoriosReservados: TDBGrid
          Left = 2
          Top = 2
          Width = 497
          Height = 183
          Color = clCream
          Ctl3D = False
          DataSource = DMESTOQUE.DSAlx
          FixedColor = clInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGAcessoriosReservadosDblClick
          OnKeyDown = DBGAcessoriosReservadosKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'CONTRINT'
              Title.Caption = 'C'#243'digo'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTFISICO'
              Title.Caption = 'Estoque'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PUREZA'
              Title.Caption = 'Reserva'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Acess'#243'rio'
              Width = 335
              Visible = True
            end>
        end
        object PAdicionaQuantidadeReserva: TPanel
          Left = 181
          Top = 38
          Width = 137
          Height = 52
          BevelWidth = 2
          TabOrder = 0
          Visible = False
          object Label12: TLabel
            Left = 9
            Top = 32
            Width = 119
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '<ENTER> ou <ESC>'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object EdQuantidadeAcessorioInserido: TFloatEdit
            Left = 8
            Top = 8
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            OnKeyDown = EdQuantidadeAcessorioInseridoKeyDown
            ValueFormat = '##,##0.00'
            ValueInteger = 0
          end
        end
        object Button3: TButton
          Left = 2
          Top = 190
          Width = 113
          Height = 25
          Caption = 'Cadastrar Acess'#243'rio'
          TabOrder = 2
          OnClick = Button3Click
        end
        object Button1: TButton
          Left = 344
          Top = 190
          Width = 75
          Height = 25
          Caption = 'Confirmar'
          TabOrder = 3
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 424
          Top = 190
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 4
          OnClick = Button2Click
        end
      end
      object pInfoRetorno: TPanel
        Left = 19
        Top = 176
        Width = 539
        Height = 154
        BevelInner = bvLowered
        TabOrder = 25
        Visible = False
        object lProdutoRetorno: TLabel
          Left = 18
          Top = 5
          Width = 4
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 162
          Top = 24
          Width = 88
          Height = 16
          Caption = 'Valor Unit.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 415
          Top = 24
          Width = 88
          Height = 16
          Caption = 'Vlr. Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 18
          Top = 24
          Width = 96
          Height = 16
          Caption = 'Faixa/Pre'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object pCtrlHoras2: TPanel
          Left = 40
          Top = 68
          Width = 473
          Height = 51
          BevelOuter = bvNone
          TabOrder = 5
          Visible = False
          object Label59: TLabel
            Left = 71
            Top = 5
            Width = 112
            Height = 16
            Caption = 'Horas Retorno:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 282
            Top = 4
            Width = 136
            Height = 16
            Caption = 'Horas Consumidas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object edQtdeHoraRetornoAtu: TColorEditFloat
            Left = 72
            Top = 20
            Width = 107
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            OnExit = edQtdeHoraRetornoAtuExit
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object edQtdeHoraConsumidaAtu: TColorEditFloat
            Left = 296
            Top = 19
            Width = 107
            Height = 24
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object pCtrlDesgaste: TPanel
          Left = 40
          Top = 68
          Width = 473
          Height = 51
          BevelOuter = bvNone
          TabOrder = 6
          object Label62: TLabel
            Left = 77
            Top = 4
            Width = 136
            Height = 16
            Caption = 'Qtde. de Retorno:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel
            Left = 285
            Top = 4
            Width = 128
            Height = 16
            Caption = 'Qtde. Consumida:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object edQtdeRetornoAtu: TColorEditFloat
            Left = 87
            Top = 20
            Width = 107
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            OnExit = edQtdeRetornoAtuExit
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object edQtdeConsumidaAtu: TColorEditFloat
            Left = 295
            Top = 20
            Width = 107
            Height = 24
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object pCtrlHoras: TPanel
          Left = 281
          Top = 24
          Width = 120
          Height = 41
          BevelOuter = bvNone
          TabOrder = 9
          Visible = False
          object Label58: TLabel
            Left = 12
            Top = 2
            Width = 96
            Height = 16
            Caption = 'Horas Sa'#237'da:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object edQtdeHoraSaidaAtu: TColorEditFloat
            Left = 7
            Top = 17
            Width = 107
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object pQtdeSaidaAtu: TPanel
          Left = 281
          Top = 24
          Width = 120
          Height = 42
          BevelOuter = bvNone
          TabOrder = 10
          object Label61: TLabel
            Left = 13
            Top = 1
            Width = 96
            Height = 16
            Caption = 'Qtde. Sa'#237'da:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object edQtdeSaidaAtu: TColorEditFloat
            Left = 6
            Top = 16
            Width = 107
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object pDiasQtde: TPanel
          Left = 281
          Top = 24
          Width = 129
          Height = 45
          BevelOuter = bvNone
          TabOrder = 2
          object Label51: TLabel
            Left = 13
            Top = -1
            Width = 40
            Height = 16
            Caption = 'Dias:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 74
            Top = 0
            Width = 48
            Height = 16
            Caption = 'Qtde.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object edDiasAtu: TColorEditFloat
            Left = 9
            Top = 16
            Width = 49
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '0,0'
            ValueFormat = '0.0'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object edQtdeAtu: TColorEditFloat
            Left = 71
            Top = 16
            Width = 49
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '0'
            ValueFormat = '0'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object pCtrlDtHora: TPanel
          Left = 40
          Top = 68
          Width = 473
          Height = 51
          BevelOuter = bvNone
          TabOrder = 4
          object Label53: TLabel
            Left = 11
            Top = 4
            Width = 88
            Height = 16
            Caption = 'Data Sa'#237'da:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label54: TLabel
            Left = 118
            Top = 4
            Width = 88
            Height = 16
            Caption = 'Hora Sa'#237'da:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label55: TLabel
            Left = 225
            Top = 4
            Width = 104
            Height = 16
            Caption = 'Data Retorno:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 353
            Top = 4
            Width = 104
            Height = 16
            Caption = 'Hora Retorno:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object edDtSaidaAtu: TDateTimePicker
            Left = 7
            Top = 21
            Width = 101
            Height = 24
            Date = 42034.566105763890000000
            Time = 42034.566105763890000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = edDtSaidaAtuExit
          end
          object edHrSaidaAtu: TMaskEdit
            Left = 134
            Top = 21
            Width = 48
            Height = 24
            EditMask = '00:00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 1
            Text = '  :  '
          end
          object edDtRetornoAtu: TDateTimePicker
            Left = 226
            Top = 21
            Width = 100
            Height = 24
            Date = 42034.566105763890000000
            Time = 42034.566105763890000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnExit = edDtRetornoAtuExit
          end
          object edHrRetornoAtu: TMaskEdit
            Left = 378
            Top = 21
            Width = 48
            Height = 24
            EditMask = '00:00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 3
            Text = '  :  '
            OnExit = edHrRetornoAtuExit
          end
        end
        object btnCancelarAtu: TBitBtn
          Left = 274
          Top = 122
          Width = 83
          Height = 25
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = btnCancelarAtuClick
        end
        object btnAtualizar: TBitBtn
          Left = 162
          Top = 122
          Width = 83
          Height = 25
          Caption = 'Atualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = btnAtualizarClick
        end
        object edVlrUnitAtu: TColorEditFloat
          Left = 160
          Top = 40
          Width = 120
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '0,00'
          OnExit = edVlrUnitAtuExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object edVlrTotalAtu: TColorEditFloat
          Left = 415
          Top = 40
          Width = 120
          Height = 24
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 16
          Top = 40
          Width = 137
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ListSource = DMESTOQUE.DSAlx1
          ParentFont = False
          TabOrder = 0
          OnDropDown = DBLookupComboBox1DropDown
          OnExit = DbFaixaPrecoExit
        end
      end
      object pItensProduto: TPanel
        Left = 15
        Top = 173
        Width = 544
        Height = 322
        BevelOuter = bvNone
        TabOrder = 23
        object Label3: TLabel
          Left = 6
          Top = 27
          Width = 112
          Height = 14
          Caption = '[F2] Procurar...'
          FocusControl = BtnApagar
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 160
          Top = 25
          Width = 96
          Height = 16
          Caption = 'Faixa/Pre'#231'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object LEstoqueAtual: TLabel
          Left = 8
          Top = 12
          Width = 98
          Height = 14
          Caption = 'Estoque Atual:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LProduto: TLabel
          Left = 7
          Top = 2
          Width = 534
          Height = 13
          AutoSize = False
          Caption = 'Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 6
          Top = 142
          Width = 147
          Height = 14
          Caption = 'Equipamentos Locados:'
          FocusControl = BtnApagar
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 442
          Top = 23
          Width = 88
          Height = 16
          Caption = 'Vlr. Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label64: TLabel
          Left = 275
          Top = 25
          Width = 40
          Height = 16
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object pQtdeRetorno: TPanel
          Left = 87
          Top = 70
          Width = 441
          Height = 46
          BevelOuter = bvNone
          TabOrder = 10
          Visible = False
          object Label43: TLabel
            Left = 62
            Top = 0
            Width = 136
            Height = 16
            Caption = 'Qtde. de Retorno:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 224
            Top = 0
            Width = 128
            Height = 16
            Caption = 'Qtde. Consumida:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object edQtdeRetorno: TColorEditFloat
            Left = 91
            Top = 15
            Width = 63
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            OnExit = edQtdeRetornoExit
            ValueFormat = '####0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object edQtdeConsumida: TColorEditFloat
            Left = 255
            Top = 15
            Width = 63
            Height = 24
            Color = 16772332
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            Text = '0,00'
            ValueFormat = '####0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object pData: TPanel
          Left = 116
          Top = 72
          Width = 421
          Height = 40
          BevelOuter = bvNone
          TabOrder = 4
          object Label8: TLabel
            Left = 10
            Top = 1
            Width = 81
            Height = 17
            Caption = 'Dt.Sa'#237'da:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 116
            Top = 1
            Width = 81
            Height = 17
            Caption = 'Hr.Sa'#237'da:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 208
            Top = 1
            Width = 99
            Height = 17
            Caption = 'Dt.Retorno:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 316
            Top = 1
            Width = 99
            Height = 17
            Caption = 'Hr.Retorno:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object EdDtSaida: TDateTimePicker
            Left = 6
            Top = 18
            Width = 106
            Height = 24
            Date = 40888.781167488430000000
            Time = 40888.781167488430000000
            Color = clMoneyGreen
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = EdDtSaidaExit
          end
          object EdHrSaida: TMaskEdit
            Left = 127
            Top = 18
            Width = 53
            Height = 24
            Color = clMoneyGreen
            EditMask = '!90:00;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 1
            Text = '  :  '
            OnExit = EdHrSaidaExit
          end
          object EdDtRetorno: TDateTimePicker
            Left = 207
            Top = 18
            Width = 103
            Height = 24
            Date = 40888.781167488430000000
            Time = 40888.781167488430000000
            Color = clInactiveCaption
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnExit = EdDtRetornoExit
          end
          object edHrRetorno: TMaskEdit
            Left = 336
            Top = 18
            Width = 54
            Height = 24
            Color = clInactiveCaption
            EditMask = '!90:00;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 3
            Text = '  :  '
            OnExit = edHrRetornoExit
          end
        end
        object PListaProdutos: TPanel
          Left = 23
          Top = 65
          Width = 461
          Height = 144
          TabOrder = 14
          Visible = False
          object DBGListaProdutos: TDBGrid
            Left = 4
            Top = 3
            Width = 454
            Height = 140
            Hint = 
              'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
              'sistema ir'#225' pesquisar pelo c'#243'digo'
            DataSource = DMESTOQUE.DWSimilar
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = DBGListaProdutosDblClick
            OnKeyPress = DBGListaProdutosKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'COD_ESTOQUE'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ESTFISICO'
                Title.Caption = 'Estoque'
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTRINT'
                Title.Caption = 'Controle'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Produto'
                Width = 225
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENDVARV'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vlr.'
                Width = 88
                Visible = True
              end>
          end
        end
        object pHrSaida: TPanel
          Left = 316
          Top = 23
          Width = 123
          Height = 41
          BevelOuter = bvNone
          TabOrder = 7
          Visible = False
          object Label45: TLabel
            Left = 9
            Top = 2
            Width = 96
            Height = 16
            Caption = 'Horas Sa'#237'da:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object edQtdeHrSaida: TColorEditFloat
            Left = 8
            Top = 17
            Width = 95
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            ValueFormat = '####0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object EdVlrUnitProd: TColorEditFloat
          Left = 263
          Top = 41
          Width = 57
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          OnExit = EdVlrUnitProdExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object pDias: TPanel
          Left = 319
          Top = 26
          Width = 119
          Height = 38
          BevelOuter = bvNone
          TabOrder = 3
          object Label36: TLabel
            Left = 16
            Top = 0
            Width = 32
            Height = 16
            Caption = 'Dias'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 62
            Top = -2
            Width = 56
            Height = 16
            Caption = 'Quant.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object EdNumeroDias: TColorEditFloat
            Left = 8
            Top = 15
            Width = 43
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0'
            OnExit = EdVlrUnitProdExit
            EditType = fltInteger
            ValueFormat = '0.0'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdQuantProd: TColorEditFloat
            Left = 57
            Top = 14
            Width = 58
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Text = '0,00'
            OnExit = EdVlrUnitProdExit
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object pHrRetorno: TPanel
          Left = 74
          Top = 68
          Width = 441
          Height = 46
          BevelOuter = bvNone
          TabOrder = 8
          Visible = False
          object Label46: TLabel
            Left = 56
            Top = 1
            Width = 112
            Height = 16
            Caption = 'Horas Retorno:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 233
            Top = 1
            Width = 136
            Height = 16
            Caption = 'Horas Consumidas:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object edQtdeHrRetorno: TColorEditFloat
            Left = 68
            Top = 16
            Width = 83
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            OnExit = edQtdeHrRetornoExit
            ValueFormat = '####0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object edQtdeHrConsumidas: TColorEditFloat
            Left = 261
            Top = 16
            Width = 83
            Height = 24
            Color = 16772332
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Text = '0,00'
            ValueFormat = '####0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object pQtdeSaida: TPanel
          Left = 322
          Top = 27
          Width = 117
          Height = 42
          BevelOuter = bvNone
          TabOrder = 9
          Visible = False
          object Label42: TLabel
            Left = 15
            Top = 0
            Width = 96
            Height = 16
            Caption = 'Qtde. Sa'#237'da:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object edQtdeSaida: TColorEditFloat
            Left = 30
            Top = 15
            Width = 63
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object DBGProdutos: TDBGrid
          Left = 5
          Top = 158
          Width = 538
          Height = 163
          Color = 15597546
          Ctl3D = False
          DataSource = DMESTOQUE.DSSlave
          FixedColor = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 12
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGProdutosDrawColumnCell
          OnDblClick = DBGProdutosDblClick
          OnKeyDown = DBGProdutosKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'contrint'
              Title.Caption = 'Patrim'#244'nio'
              Width = 65
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTD'
              Title.Caption = 'Quant.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 222
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'V. Total'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTRETIRADA'
              Title.Caption = 'Retirada'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HRRETIRADA'
              Title.Caption = 'Hr. Retirada'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTRETORNO'
              Title.Caption = 'Retorno'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HRRETORNO'
              Title.Caption = 'Hr. Retorno'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESGASTE_SAIDA'
              Title.Caption = 'Qtde. Sa'#237'da'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESGASTE_RETORNO'
              Title.Caption = 'Qtde. Retorno'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESGASTE_CONSUMIDO'
              Title.Caption = 'Qtde. Consumida'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE_HORA_SAIDA'
              Title.Caption = 'Qtde. Hr. Sa'#237'da'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE_HORA_RETORNO'
              Title.Caption = 'Qtde. Hr. Retorno'
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE_HORA_CONSUMIDA'
              Title.Caption = 'Qtde. Hr. Consumida'
              Width = 121
              Visible = True
            end>
        end
        object EdBuscaProduto: TEdit
          Left = 8
          Top = 41
          Width = 129
          Height = 24
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnKeyDown = EdBuscaProdutoKeyDown
          OnKeyUp = EdBuscaProdutoKeyUp
        end
        object DbFaixaPreco: TDBLookupComboBox
          Left = 144
          Top = 41
          Width = 115
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ListSource = DMESTOQUE.DSAlx1
          ParentFont = False
          TabOrder = 1
          OnDropDown = DbFaixaPrecoDropDown
          OnExit = DbFaixaPrecoExit
        end
        object CBItemRetiradoEstoque: TCheckBox
          Left = 6
          Top = 126
          Width = 269
          Height = 17
          Caption = 'Item J'#225' retirado do estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Visible = False
        end
        object BtnInsertProd: TBitBtn
          Left = 357
          Top = 119
          Width = 89
          Height = 22
          Hint = 
            'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
            'na lista (ALT + I)'
          BiDiMode = bdLeftToRight
          Caption = '&INSERIR'
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
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
          Spacing = 10
        end
        object BtnDeleteProd: TBitBtn
          Left = 454
          Top = 119
          Width = 89
          Height = 22
          Hint = 
            'Pressione para remover o produto selecionado na lista da mesma (' +
            'ALT + E)'
          BiDiMode = bdLeftToRight
          Caption = '&REMOVER'
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
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
          Spacing = 10
        end
        object EdVlrTotProd: TColorEditFloat
          Left = 440
          Top = 39
          Width = 89
          Height = 24
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object cbControleHora: TCheckBox
          Left = 6
          Top = 112
          Width = 153
          Height = 17
          Caption = 'Controle por Hora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          OnClick = cbControleHoraClick
        end
      end
      object PTabelaPreco: TPanel
        Left = 163
        Top = 90
        Width = 171
        Height = 108
        TabOrder = 14
        Visible = False
        object DBGTabelaPreco: TDBGrid
          Left = 1
          Top = 2
          Width = 168
          Height = 100
          Color = clCream
          Ctl3D = False
          DataSource = DMMACS.DSALX
          FixedColor = clInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ImeMode = imHanguel
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Courier New'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGTabelaPrecoDblClick
          OnKeyDown = DBGTabelaPrecoKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 167
              Visible = True
            end>
        end
      end
      inline FrmObra: TFrmBusca
        Left = 169
        Top = 76
        Width = 219
        Height = 41
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        TabStop = True
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 40
          Caption = 'Obra:'
          Font.Name = 'Courier New'
        end
        inherited LUZOPEN: TShape
          Left = 186
          Top = 13
          Width = 28
          Height = 25
        end
        inherited LUZMINUS: TShape
          Left = 399
        end
        inherited EdDescricao: TFlatEdit
          Left = 40
          Top = 16
          Width = 149
          Height = 22
          TabStop = False
          ColorFlat = 16318450
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 189
          Top = 18
          Width = 20
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Height = -13
          Font.Name = 'Courier New'
          ParentFont = False
          OnClick = FrmObraBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 398
          Enabled = False
          TabStop = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 16
          Width = 39
          Height = 22
          ColorFlat = 15400921
          CharCase = ecUpperCase
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          MaxLength = 8
          OnExit = FrmObraEDCodigoExit
        end
      end
      object EdObsFinanceira: TEdit
        Left = 15
        Top = 52
        Width = 366
        Height = 18
        Color = 16772332
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object PListaClientes: TPanel
        Left = 277
        Top = 1
        Width = 646
        Height = 174
        TabOrder = 12
        Visible = False
        object DBGListaCliente: TDBGrid
          Left = 3
          Top = 4
          Width = 638
          Height = 168
          Hint = 
            'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
            'sistema ir'#225' pesquisar pelo c'#243'digo'
          DataSource = DMPESSOA.DSVWCliente
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGListaClienteDblClick
          OnKeyUp = DBGListaClienteKeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Cliente'
              Width = 268
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CIDADE'
              Title.Caption = 'Cidade'
              Width = 154
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDERECO'
              Title.Caption = 'Endere'#231'o'
              Width = 340
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDNUMERO'
              Title.Caption = 'N'#250'mero'
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
              FieldName = 'CPFCNPJ'
              Title.Caption = 'Cpf/Cnpj'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELREL'
              Title.Caption = 'Telefone'
              Visible = True
            end>
        end
      end
      inline FrmCliente: TFrmBusca
        Left = 13
        Top = 5
        Width = 374
        Height = 47
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Left = 2
          Top = 6
          Width = 80
          Height = 18
          Caption = 'Cliente:'
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 342
          Top = 19
          Width = 30
          Height = 27
        end
        inherited LUZMINUS: TShape
          Left = 410
        end
        inherited BTNOPEN: TBitBtn [3]
          Left = 344
          Top = 23
          Width = 24
          Height = 23
          OnClick = FrmClienteBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn [4]
          Left = 436
          Enabled = False
          TabOrder = 3
        end
        inherited EDCodigo: TFlatEdit [5]
          Top = 23
          Width = 68
          Height = 23
          ColorFlat = clInactiveCaption
          Font.Height = -15
          Font.Name = 'Courier New'
          TabOrder = 2
          Visible = False
        end
        inherited EdDescricao: TFlatEdit [6]
          Left = 2
          Top = 23
          Width = 341
          Height = 22
          Enabled = True
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ReadOnly = False
          TabOrder = 0
          OnKeyDown = FrmClienteEdDescricaoKeyDown
          OnKeyUp = FrmClienteEdDescricaoKeyUp
        end
      end
      object PAcessorios: TPanel
        Left = 568
        Top = 180
        Width = 345
        Height = 191
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 11
        object Label4: TLabel
          Left = 14
          Top = 17
          Width = 175
          Height = 14
          Caption = '[F2] Acess'#243'rios Inclusos:'
          FocusControl = BtnApagar
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 208
          Top = 25
          Width = 49
          Height = 14
          Caption = 'Quant.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object LAcessorio: TLabel
          Left = 12
          Top = 64
          Width = 82
          Height = 13
          Caption = 'Acess'#243'rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGAcessorios: TDBGrid
          Left = 16
          Top = 82
          Width = 329
          Height = 103
          Color = clCream
          Ctl3D = False
          DataSource = DMESTOQUE.DSSlaveServ
          FixedColor = clInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ImeMode = imHanguel
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Courier New'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTD'
              Title.Caption = 'Quant.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'V. Total'
              Width = 81
              Visible = True
            end>
        end
        object EdBuscaAcessorio: TEdit
          Left = 13
          Top = 40
          Width = 171
          Height = 22
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = EdBuscaAcessorioEnter
          OnExit = EdBuscaAcessorioExit
          OnKeyDown = EdBuscaAcessorioKeyDown
          OnKeyUp = EdBuscaAcessorioKeyUp
        end
        object EdQuantAcessorio: TColorEditFloat
          Left = 188
          Top = 40
          Width = 72
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object BitBtn2: TBitBtn
          Left = 290
          Top = 39
          Width = 22
          Height = 22
          Hint = 
            'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
            'na lista (ALT + I)'
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BitBtn2Click
          Glyph.Data = {
            DE000000424DDE0000000000000076000000280000000D0000000D0000000100
            0400000000006800000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7000777777777777700077777707777770007777706077777000777706660777
            7000777066666077700077066666660770007000066600007000777706660777
            7000777706660777700077770666077770007777000007777000777777777777
            7000}
          Spacing = 10
        end
        object BitBtn3: TBitBtn
          Left = 314
          Top = 39
          Width = 22
          Height = 22
          Hint = 
            'Pressione para remover o produto selecionado na lista da mesma (' +
            'ALT + E)'
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BitBtn3Click
          Glyph.Data = {
            DE000000424DDE0000000000000076000000280000000D0000000D0000000100
            0400000000006800000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7000777777777777700077770000077770007777066607777000777706660777
            7000777706660777700070000666000070007706666666077000777066666077
            7000777706660777700077777060777770007777770777777000777777777777
            7000}
          Spacing = 10
        end
      end
      object EdData: TColorMaskEdit
        Left = 822
        Top = 61
        Width = 105
        Height = 24
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 7
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object MObs: TMemo
        Left = 604
        Top = 61
        Width = 214
        Height = 105
        Color = clGradientInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      inline FrmVendedor: TFrmBusca
        Left = 389
        Top = 72
        Width = 215
        Height = 40
        Color = clWhite
        ParentColor = False
        TabOrder = 3
        inherited LTextoBusca: TLabel
          Top = 3
          Width = 72
          Caption = 'Vendedor:'
          Font.Name = 'Courier New'
        end
        inherited LUZOPEN: TShape
          Left = 151
          Top = 16
          Width = 23
          Height = 22
        end
        inherited LUZMINUS: TShape
          Left = 191
          Top = 15
          Width = 23
        end
        inherited EdDescricao: TFlatEdit
          Left = 30
          Top = 18
          Width = 160
          Height = 22
          ColorFlat = clWhite
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 2
        end
        inherited BTNOPEN: TBitBtn
          Left = 192
          Top = 19
          Width = 17
          Height = 21
          OnClick = FrmVendedorBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 153
          Top = 19
          Height = 21
          TabOrder = 3
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 18
          Width = 27
          Height = 22
          ColorFlat = 15400921
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          OnKeyDown = FrmVendedorEDCodigoKeyDown
        end
      end
      object ColorMaskEdit1: TColorMaskEdit
        Left = 832
        Top = 110
        Width = 88
        Height = 22
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 8
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object ColorMaskEdit2: TColorMaskEdit
        Left = 832
        Top = 135
        Width = 88
        Height = 22
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 9
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdTabela_TabelaFaixa: TEdit
        Left = 21
        Top = 91
        Width = 116
        Height = 24
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object BtnTabelaPreco: TBitBtn
        Left = 137
        Top = 92
        Width = 23
        Height = 21
        Hint = 'Pressione para selecionar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnTabelaPrecoClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object EdDescProdutos: TColorEditFloat
        Left = 729
        Top = 440
        Width = 40
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        Text = '0,00'
        OnExit = EdDescProdutosExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorProdutos: TColorEditFloat
        Left = 624
        Top = 438
        Width = 60
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorOrd2: TColorEditFloat
        Left = 829
        Top = 435
        Width = 90
        Height = 26
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        Text = '0,00'
        OnExit = EdValorOrd2Exit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdResponsavelRetirada: TEdit
        Left = 15
        Top = 143
        Width = 365
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      inline FrmFormaPagamento: TFrmBusca
        Left = 390
        Top = 126
        Width = 215
        Height = 40
        Color = clWhite
        ParentColor = False
        TabOrder = 5
        inherited LTextoBusca: TLabel
          Top = 3
          Width = 152
          Caption = 'Forma de Pagamento:'
          Font.Name = 'Courier New'
        end
        inherited LUZOPEN: TShape
          Left = 152
          Top = 16
          Width = 23
          Height = 22
        end
        inherited LUZMINUS: TShape
          Left = 192
          Top = 15
          Height = 25
        end
        inherited EdDescricao: TFlatEdit
          Left = 30
          Top = 18
          Width = 160
          Height = 22
          ColorFlat = clWhite
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 2
        end
        inherited BTNOPEN: TBitBtn
          Left = 191
          Top = 19
          Height = 21
          OnClick = FrmFormaPagamentoBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 154
          Top = 19
          Height = 21
          TabOrder = 3
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 18
          Width = 27
          Height = 22
          ColorFlat = 15400921
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          OnKeyDown = FrmFormaPagamentoEDCodigoKeyDown
        end
      end
      object BtCancelaBaixaAdiantamento: TBitBtn
        Left = 741
        Top = 484
        Width = 22
        Height = 20
        Hint = 'Pressione para Cancelar o adiantamento'
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnClick = BtCancelaBaixaAdiantamentoClick
        Layout = blGlyphBottom
      end
      object BtBaixaAdiantamento: TBitBtn
        Left = 717
        Top = 484
        Width = 22
        Height = 20
        Hint = 'Pressione para lan'#231'ar o adiantamento'
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        OnClick = BtBaixaAdiantamentoClick
        Layout = blGlyphBottom
      end
      object EdVlrAdiantamento: TColorEditFloat
        Left = 630
        Top = 484
        Width = 79
        Height = 22
        Color = 14345214
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 21
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaption
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdTxEntrega: TColorEditFloat
        Left = 831
        Top = 398
        Width = 90
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
        Text = '0,00'
        OnExit = EdTxEntregaExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object PListaAcessorios: TPanel
        Left = 579
        Top = 242
        Width = 334
        Height = 147
        TabOrder = 18
        Visible = False
        object DBGListaAcessorios: TDBGrid
          Left = 2
          Top = 3
          Width = 329
          Height = 140
          Hint = 
            'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
            'sistema ir'#225' pesquisar pelo c'#243'digo'
          Color = 16768991
          DataSource = DMESTOQUE.DsAlx5
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGListaAcessoriosDblClick
          OnKeyUp = DBGListaAcessoriosKeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_ESTOQUE'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ESTFISICO'
              Title.Caption = 'Estoque'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTRINT'
              Title.Caption = 'Controle'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 266
              Visible = True
            end>
        end
      end
      object EdVlrIss: TColorEditFloat
        Left = 572
        Top = 484
        Width = 53
        Height = 22
        Color = 14345214
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 26
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaption
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object cbRtIss: TCheckBox
        Left = 574
        Top = 459
        Width = 75
        Height = 17
        Caption = 'Reter ISS'
        TabOrder = 27
      end
    end
  end
  object PFinanceiro: TPanel [1]
    Left = 220
    Top = 92
    Width = 497
    Height = 357
    BevelWidth = 4
    Color = clBlack
    TabOrder = 4
    Visible = False
    object PBanco: TPanel
      Left = 127
      Top = 107
      Width = 266
      Height = 108
      BevelWidth = 3
      Color = 16772332
      TabOrder = 1
      Visible = False
      object Label115: TLabel
        Left = 8
        Top = 8
        Width = 95
        Height = 16
        Caption = 'Cta. Corrente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGCTA: TDBGrid
        Left = 5
        Top = 24
        Width = 252
        Height = 73
        Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
        Color = 16121836
        Ctl3D = False
        DataSource = DMBANCO.DWCtaCor
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMAGENCIA'
            Title.Caption = 'Ag'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCTACOR'
            Title.Caption = 'Conta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCBANCO'
            Title.Caption = 'Banco'
            Width = 214
            Visible = True
          end>
      end
    end
    object FPFinanceiro: TFashionPanel
      Left = 6
      Top = 6
      Width = 485
      Height = 347
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 0
      RoundRect = True
      About = 'Orion Software'
      ShadowDepth = 2
      ShadowSpace = 5
      ShowShadow = False
      ShadowColor = clBlack
      TitleColor = clSkyBlue
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Informa'#231#245'es para o financeiro'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label26: TLabel
        Left = 8
        Top = 68
        Width = 116
        Height = 20
        Caption = 'Pagamento em :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 289
        Top = 72
        Width = 70
        Height = 16
        Caption = 'Dt. Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 385
        Top = 72
        Width = 69
        Height = 16
        Caption = 'Hs Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object BtnMoedaOK: TBitBtn
        Left = 134
        Top = 304
        Width = 91
        Height = 25
        Caption = '&Ok'
        TabOrder = 6
        OnClick = BtnMoedaOKClick
        Glyph.Data = {
          66030000424D6603000000000000360000002800000010000000110000000100
          18000000000030030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFFFFF000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F7F0000007F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFFFFF007F7F7F7F7F000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7FBFBFBF0000000000000000000000007F7F7F7F7F007F7F0000
          00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFFFFF00
          7F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F
          7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F
          7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F000000
          00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F
          7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F
          007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F
          007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F
          007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF}
      end
      object BtnMoedaCancelar: TBitBtn
        Left = 238
        Top = 304
        Width = 97
        Height = 25
        Caption = 'C&ancelar'
        TabOrder = 7
        OnClick = BtnMoedaCancelarClick
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
      object CBPagamento: TComboBox
        Left = 9
        Top = 89
        Width = 176
        Height = 24
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ItemHeight = 16
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = 'Carteira'
        Items.Strings = (
          'Carteira'
          'Cheque'
          'C - Cart'#227'o'
          'D - Cart'#227'o'
          'Banco')
      end
      inline FrmFormPag: TFrmBusca
        Left = 7
        Top = 23
        Width = 478
        Height = 43
        Color = 16772332
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Width = 145
          Caption = 'Forma de pagamento:'
        end
        inherited LUZOPEN: TShape
          Left = 429
        end
        inherited LUZMINUS: TShape
          Left = 453
        end
        inherited EdDescricao: TFlatEdit
          Width = 354
          ColorFlat = 16318450
        end
        inherited BTNOPEN: TBitBtn
          Left = 431
          Width = 18
          OnClick = FrmFormPagBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 450
          OnClick = FrmFormPagBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          ColorFlat = 15269845
        end
      end
      object DBDATAENTREGA: TColorMaskEdit
        Left = 290
        Top = 89
        Width = 87
        Height = 22
        Color = 15597546
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBHORAENTREGA: TColorMaskEdit
        Left = 386
        Top = 89
        Width = 87
        Height = 22
        Color = 15597546
        Ctl3D = False
        EditMask = '!90:00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '  :  '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      inline FrmContaServ: TFrmBusca
        Left = 6
        Top = 228
        Width = 472
        Height = 64
        Color = 16772332
        ParentColor = False
        TabOrder = 5
        inherited LTextoBusca: TLabel
          Width = 246
          Caption = 'Conta para Lan'#231'amento de Servi'#231'os:'
        end
        inherited LUZOPEN: TShape
          Left = 426
          Top = 39
        end
        inherited LUZMINUS: TShape
          Left = 450
          Top = 39
        end
        inherited EdDescricao: TFlatEdit
          Left = 2
          Top = 42
          Width = 423
          ColorFlat = clWhite
        end
        inherited BTNOPEN: TBitBtn
          Left = 425
          Top = 42
          OnClick = FrmContaServBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 447
          Top = 42
        end
        inherited EDCodigo: TFlatEdit
          Top = 16
          Width = 151
          ColorFlat = 15329769
        end
      end
      object Panel7: TPanel
        Left = 286
        Top = 117
        Width = 123
        Height = 39
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 4
        object Label29: TLabel
          Left = 4
          Top = 0
          Width = 93
          Height = 16
          Caption = 'Dt Fechamento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EdDtFech: TColorMaskEdit
          Left = 4
          Top = 15
          Width = 97
          Height = 22
          Color = 15597546
          Ctl3D = False
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object CBImpRecibo: TCheckBox
        Left = 10
        Top = 153
        Width = 123
        Height = 17
        Caption = 'Imprimir Recibo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object cbBonificacao: TCheckBox
        Left = 10
        Top = 176
        Width = 193
        Height = 17
        Caption = 'Bonifica'#231#227'o(N'#227'o gera financeiro)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = cbBonificacaoClick
      end
      object cbCancelamento: TCheckBox
        Left = 10
        Top = 200
        Width = 193
        Height = 17
        Caption = 'Cancelamento(N'#227'o gera financeiro)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = cbCancelamentoClick
      end
    end
  end
  inherited PConsulta: TPanel [2]
    Left = -2
    Top = -1
    Width = 940
    Height = 548
    object Shape7: TShape [0]
      Left = 3
      Top = 3
      Width = 934
      Height = 542
      Pen.Color = clTeal
      Pen.Width = 2
    end
    inherited DBGridCadastroPadrao: TDBGrid [1]
      Left = 7
      Top = 132
      Width = 924
      Height = 408
      PopupMenu = RightClickMenu
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'LOCALAT'
          Title.Caption = 'Faturado'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_CLIENTE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_FUNCIONARIO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'Status'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTABERT'
          Title.Caption = 'Dt. Abert.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTFECH'
          Title.Caption = 'Dt. Fech.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taRightJustify
          Title.Caption = 'Vlr. Total'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_ORDEM'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'OBRA'
          Title.Caption = 'Obra'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMPAG'
          Title.Caption = 'Pagamento'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox [2]
      Left = 226
      Top = 55
      Width = 694
      inherited EdNome: TFlatEdit
        Width = 603
        Visible = False
      end
      inherited BtnSelecionar: TBitBtn
        Left = 610
        Top = 20
        Visible = False
      end
    end
    object Panel5: TPanel [3]
      Left = 8
      Top = 113
      Width = 553
      Height = 18
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 7
      object Shape12: TShape
        Left = 136
        Top = 2
        Width = 15
        Height = 15
        Brush.Color = clNavy
        Pen.Color = clNavy
      end
      object Label31: TLabel
        Left = 153
        Top = 3
        Width = 126
        Height = 14
        Caption = 'Ordens Retornadas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape13: TShape
        Left = 416
        Top = 2
        Width = 15
        Height = 15
        Brush.Color = clRed
        Pen.Color = clRed
      end
      object Label32: TLabel
        Left = 433
        Top = 3
        Width = 98
        Height = 14
        Caption = 'Ordens Abertas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape14: TShape
        Left = 280
        Top = 2
        Width = 15
        Height = 15
        Brush.Color = clGreen
        Pen.Color = clGreen
      end
      object Label33: TLabel
        Left = 297
        Top = 3
        Width = 112
        Height = 14
        Caption = 'Ordens Retiradas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 21
        Top = 3
        Width = 112
        Height = 14
        Caption = 'Ordens Liberadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape5: TShape
        Left = 4
        Top = 2
        Width = 15
        Height = 15
        Brush.Color = clGray
        Pen.Color = clGray
      end
    end
    inherited Painel: TPanel [4]
      Left = 7
      Top = 9
      Width = 925
      Height = 54
      inherited BtnApagar: TBitBtn
        Enabled = False
      end
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Width = 126
      end
      object BtnCancelamentos: TBitBtn
        Left = 583
        Top = 2
        Width = 120
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita a troca de produtos dos pedido selecionado'
        Caption = 'Cancelamentos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnCancelamentosClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object btnExpedicao: TBitBtn
        Left = 702
        Top = 2
        Width = 113
        Height = 25
        Caption = 'Expedi'#231#227'o'
        TabOrder = 6
        OnClick = btnExpedicaoClick
      end
      object Button4: TButton
        Left = 814
        Top = 2
        Width = 109
        Height = 25
        Caption = 'Faturar'
        TabOrder = 7
        OnClick = Button4Click
      end
      object btnLiberar: TBitBtn
        Left = 2
        Top = 27
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = 'Apenas OS abertas poder'#227'o ser liberadas'
        Caption = 'Liberar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = btnLiberarClick
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000000000000000000000000000000000003EBE712AB662
          1BB4570BB34E0AC15300C75500CC5901D26002D3650BDD7303D87100D77609DC
          7E19DF8719D37F26DA8932D9904EE1A500002AB95D0FB04E0BBD5401BF5000C6
          5400D25B00DD6700DE690FEA7B0BDE7622F28E14E7850DE38405E28208E4860C
          DD8116DB8533E59A000016B04B0DB85006BE520BCC5D08D46302DB6802E37005
          E77811EA811DE8870BCE712DF4991AEB8F0BED8E00E88805EA8908E28415D986
          000017BB5014BD5610BF581ACE6915D46D14DF7817EC8519EE8B25F09338F09C
          00984900AB5C35F4A31CF19C0CF09500E98804EA8A0EDC83000010BB4F24C863
          45E78749EC914AF49B46FEA43EFEA744FFB049FFB356FEB9009250008F4D00A8
          6435F7AB1BF19E07EE9202E8880FE084000011BF5421C060008C370084350087
          3C009046009149009450008E4E00935B008954008B56008D5504AB6C38F3AB1A
          EC980DE58C0EDD81000017CC6304A2480083340086400A8F50038F50008B5000
          8A53028F5C008758028D61048F63008D5C00895105AB6A37F5A81FEC970BDA7E
          00000BCD6302AC5400893E008C4D00874F00844F08905C09906000885C018E65
          008962008A60008E5E008C5600915100AC6625E49310E082000009D06805B25E
          008742008950058E5B068D5D068A5C078A5F098E66008D6A008965008B630091
          64028E59009152007E3600AE5C0FE280000012DA7506AD5E0194560087560089
          5D098F65088C630E8D660A8D68008A69008F6D00906A00895E078D59007C3E00
          96481FE98E0FE87F000014DF7E01AE6400804700815400835B007F5800805900
          7F5A007F5C00876A008A6D008968008F6500814D00904D29F49F18F69210F080
          000016E5890FCF88007E4600754A00785200764F007851007E59007451007356
          008A6F048E6F00815900884E22F1A70AF6980DFF9309EE77000015E89222F4AE
          23F4BA27F6C925F2CB2BF6CF30F9D32DF4CE38F6D345EFD2009171008360007D
          4D27F1B412FAA802FF9803FF8A10F57C000015EDA018F8B113FCBE0CFAC50AFB
          CE0EFFD70EFDD615FED81EFAD622ECC700744B0082512AF0B61BF7B10FFCA505
          FE9109FF8814F681000018EEA710F6B40DFFC408FFD002FFD700FDD704FFE201
          FADA11FFDE1BFFD600BB8C1AF4B817F8B409FAAB05FC9E0DFF9306F27C19EE80
          000015E0A115F5BB0BFBC607FFD302FEDB03FEE100FAE100FDE201FEDD03FAD0
          0CFFCA0CFFBF00FCAD00FFAC00FD9806FA8B21FF8F25E882000031E8AE22F2BC
          19FBCB0EFED505FAD80AFFE305FEE400F9DC00FFDC00FDCE03FFC700FAB100FF
          AA00FFA200FD9614F88D27EF8A37E48A00004AE6B031E6B329F5C61AFAD018FF
          DD0AF9D80CFDDC08FCD906FFD204FFC800FBB509FFB20EFFA80BF9951BFA942B
          F29037E38B50DF960000}
      end
      object BtnFechaPed: TBitBtn
        Left = 458
        Top = 2
        Width = 125
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha a ordem de servi'#231'o  selecionada na tela abaixo'
        Caption = 'F&echar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = BtnFechaPedClick
        Glyph.Data = {
          B6030000424DB603000000000000360000002800000012000000100000000100
          18000000000080030000C40E0000C40E00000000000000000000C0C0C000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000000000000000FF0000FF0000FF
          0000FF0000FF0000FF0000FF00C0C0C00000C0C0C0C0C0C000FF0000FF0000FF
          0000FF0000FF0000000000000000000000000000FF0000FF0000FF0000FF0000
          FF00C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000000000FF0000FF0000FF0000FF00C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF0000FF00000000000000000000
          00000000FF0000FF0000FF00C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          BFBFBFBFBFBFBFBFBF00FF0000FF0000000000FF0000FF0000FF0000FF0000FF
          00BFBFBFBFBFBFC0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0BFBFBFBFBFBFBFBF
          BFC0C0C000FF0000000000000000000000000000FF00BFBFBFBFBFBFBFBFBFBF
          BFBFC0C0C0C0C0C00000C0C0C0C0C0C000FF0000FF0000FF0000FF0000FF0000
          FF0000000000000000FF0000FF0000FF0000FF0000FF0000FF00C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C0007F0000FF0000FF0000FF00000000000000
          00FF0000FF0000FF00007F00C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C08080807F7F7F7F7F00007F0000FF0000FF0000FF0000FF007F7F007F7F
          7F000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080
          80FF00007F00007F000000FF0000FF007F00007F00007F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0808080808080FF00007F00007F
          00007F00007F00007F00007F00007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0808080808080FF00007F00007F00007F00007F0000
          7F00007F00007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0808080808080FF00007F00007F00007F00007F00007F00007F00007F7F
          7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080
          807F0000FF00007F00007F00007F00007F00007F00007F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080807F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F8080807F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C08080807F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 10
      Top = 62
      Width = 105
      Height = 38
      Alignment = alTopLeft
      Caption = 'FILTRO'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 3
      object CBFILTRO: TcxComboBox
        Left = 0
        Top = 17
        Width = 105
        Height = 21
        Hint = 'FILTRAR ORDENS DE SERVI'#199'O'
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'TODAS'
          'ABERTAS'
          'FECHADAS'
          'LIBERADAS'
          'RETIRADAS'
          'RETORNADAS'
          'BONIFICADAS'
          'ANULADAS')
        ShowHint = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 0
        Text = 'ABERTAS'
        OnClick = CBFILTROClick
        OnExit = CBFILTROExit
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 117
      Top = 62
      Width = 94
      Height = 38
      Alignment = alTopLeft
      Caption = 'ORDEM'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 4
      object CBORDEM: TcxComboBox
        Left = 0
        Top = 17
        Width = 94
        Height = 21
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'NUMERO'
          'CLIENTE'
          'DATA')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 0
        Text = 'NUMERO'
        OnClick = CBORDEMClick
        OnExit = CBORDEMExit
      end
    end
    object GBPLACA: TcxGroupBox
      Left = 569
      Top = 63
      Width = 363
      Height = 40
      Alignment = alTopLeft
      Caption = 'LOCALIZAR - F2'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 5
      object EDNum: TFlatEdit
        Left = 7
        Top = 13
        Width = 92
        Height = 23
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'N'#250'mero'
        OnEnter = EDNumEnter
        OnExit = EDNumExit
        OnKeyDown = EDNumKeyDown
      end
      object EDCliente1: TFlatEdit
        Left = 101
        Top = 13
        Width = 259
        Height = 23
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'Cliente'
        OnEnter = EDCliente1Enter
        OnExit = EDCliente1Exit
        OnKeyDown = EDCliente1KeyDown
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 213
      Top = 62
      Width = 178
      Height = 38
      Alignment = alTopLeft
      Caption = 'PAGAMENTO'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 8
      object CbFiltroPagamentos: TcxComboBox
        Left = 0
        Top = 17
        Width = 178
        Height = 21
        Hint = 'FILTRAR ORDENS DE SERVI'#199'O'
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'TODAS'
          'ABERTAS'
          'FECHADAS')
        ShowHint = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 0
        Text = 'TODAS'
        OnClick = CbFiltroPagamentosClick
        OnExit = CbFiltroPagamentosExit
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 393
      Top = 63
      Width = 175
      Height = 38
      Alignment = alTopLeft
      Caption = 'FATURADAS'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 9
      object rbTodas: TFlatRadioButton
        Left = 6
        Top = 15
        Width = 57
        Height = 17
        Caption = 'Todas'
        Checked = True
        ColorDown = clBlack
        ColorBorder = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rbTodasClick
      end
      object rbSim: TFlatRadioButton
        Left = 70
        Top = 15
        Width = 51
        Height = 17
        Caption = 'Sim'
        ColorDown = clBlack
        ColorBorder = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rbTodasClick
      end
      object rbNao: TFlatRadioButton
        Left = 126
        Top = 15
        Width = 46
        Height = 17
        Caption = 'N'#227'o'
        ColorDown = clBlack
        ColorBorder = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = rbTodasClick
      end
    end
    object PItensdeRetorno: TPanel
      Left = 11
      Top = 548
      Width = 927
      Height = 509
      Color = clWhite
      TabOrder = 6
      Visible = False
      object Shape10: TShape
        Left = 9
        Top = 118
        Width = 15
        Height = 15
        Brush.Color = clGreen
        Pen.Color = clGreen
      end
      object Label25: TLabel
        Left = 26
        Top = 120
        Width = 217
        Height = 14
        Caption = 'Produtos Retirados pelo Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape11: TShape
        Left = 249
        Top = 118
        Width = 15
        Height = 15
        Brush.Color = clBlack
      end
      object Label30: TLabel
        Left = 266
        Top = 120
        Width = 245
        Height = 14
        Caption = 'Produtos N'#195'O Retirados pelo Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape15: TShape
        Left = 523
        Top = 118
        Width = 15
        Height = 15
        Brush.Color = clNavy
        Pen.Color = clNavy
      end
      object Label34: TLabel
        Left = 540
        Top = 119
        Width = 224
        Height = 14
        Caption = 'Produtos Retornados pelo Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 8
        Top = 0
        Width = 250
        Height = 113
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWhite
        TabOrder = 1
        object Shape8: TShape
          Left = 8
          Top = 6
          Width = 233
          Height = 99
          Pen.Color = clSkyBlue
        end
        object Label19: TLabel
          Left = 27
          Top = 10
          Width = 208
          Height = 16
          Caption = 'Filtro por Data de Retorno'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 18
          Top = 24
          Width = 56
          Height = 14
          Caption = 'Inicial:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 131
          Top = 24
          Width = 42
          Height = 14
          Caption = 'Final:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 117
          Top = 45
          Width = 6
          Height = 13
          Caption = #224
        end
        object EdDtInicialRetornoFiltro: TDateTimePicker
          Left = 16
          Top = 38
          Width = 96
          Height = 22
          Date = 40888.781167488430000000
          Time = 40888.781167488430000000
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = EdDtInicialRetornoFiltroExit
        end
        object EdDtFinalRetornoFiltro: TDateTimePicker
          Left = 131
          Top = 38
          Width = 96
          Height = 22
          Date = 40888.781167488430000000
          Time = 40888.781167488430000000
          Color = clInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnExit = EdDtFinalRetornoFiltroExit
        end
        object CbFiltroDataItensRetorno: TCheckBox
          Left = 11
          Top = 9
          Width = 13
          Height = 17
          TabOrder = 2
          OnExit = CbFiltroDataItensRetornoExit
        end
      end
      object Panel3: TPanel
        Left = 257
        Top = 0
        Width = 668
        Height = 113
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWhite
        TabOrder = 2
        object Shape9: TShape
          Left = 8
          Top = 6
          Width = 654
          Height = 99
          Pen.Color = clSkyBlue
        end
        object Label23: TLabel
          Left = 16
          Top = 7
          Width = 56
          Height = 16
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 109
          Top = 7
          Width = 80
          Height = 16
          Caption = 'Descri'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object EdContrintFiltroItemRetorno: TFlatEdit
          Left = 15
          Top = 21
          Width = 92
          Height = 23
          ColorBorder = clBlack
          ColorFlat = clWhite
          ParentColor = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = EdContrintFiltroItemRetornoKeyDown
        end
        object EdDescricaoFiltroItemRetorno: TFlatEdit
          Left = 108
          Top = 21
          Width = 547
          Height = 23
          ColorBorder = clBlack
          ColorFlat = clWhite
          ParentColor = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = EdDescricaoFiltroItemRetornoKeyDown
        end
        object GroupBox2: TGroupBox
          Left = 16
          Top = 48
          Width = 641
          Height = 49
          Caption = 'Localizar Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object EdLocCodCli: TFlatEdit
            Left = 7
            Top = 21
            Width = 82
            Height = 23
            ColorBorder = clBlack
            ColorFlat = clWhite
            ParentColor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Text = 'Cod'
            OnEnter = EdLocCodCliEnter
            OnExit = EdLocCodCliExit
            OnKeyDown = EdLocCodCliKeyDown
          end
          object EdLocNomeCli: TFlatEdit
            Left = 86
            Top = 21
            Width = 547
            Height = 23
            ColorBorder = clBlack
            ColorFlat = clWhite
            ParentColor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Text = 'Nome'
            OnEnter = EdLocNomeCliEnter
            OnExit = EdLocNomeCliExit
            OnKeyDown = EdLocNomeCliKeyDown
          end
        end
      end
      object DBGItensdeRetorno: TDBGrid
        Left = 8
        Top = 136
        Width = 914
        Height = 361
        Color = 15597546
        Ctl3D = False
        DataSource = DMESTOQUE.DSSlave
        FixedColor = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGItensdeRetornoDrawColumnCell
        OnDblClick = DBGItensdeRetornoDblClick
        OnKeyDown = DBGItensdeRetornoKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Caption = 'N'#186' OS'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Cliente'
            Width = 188
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contrint'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Width = 229
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Caption = 'Quant.'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'V. Total'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTRETIRADA'
            Title.Caption = 'Retirada'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTRETORNO'
            Title.Caption = 'Retorno'
            Width = 94
            Visible = True
          end>
      end
    end
    object BtnSelecionaOrdem: TBitBtn
      Left = 823
      Top = 107
      Width = 108
      Height = 23
      Caption = 'Selecionar - F9'
      TabOrder = 10
      Visible = False
      OnClick = BtnSelecionaOrdemClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777774F77777700000007777
        7777444F77777000000077777774444F777770000000700000444F44F7777000
        000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
        74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
        8777F07777774000000070FFFF00007777777000000070F88707077777777000
        000070FFFF007777777770000000700000077777777770000000777777777777
        777770000000}
    end
  end
  inherited PComunica: TPanel [3]
    Left = 225
    Top = 187
  end
  object QRReciboLocacao: TQuickRep
    Left = 120
    Top = 624
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DMFINANC.TAlx
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Ruler = False
    Page.Values = (
      0.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 4
    PrinterSettings.OutputBin = Manual
    PrintIfEmpty = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand6: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 439
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand6BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1161.520833333333000000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText62: TQRDBText
        Left = 4
        Top = 8
        Width = 733
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          10.583333333333330000
          21.166666666666670000
          1939.395833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLoja
        DataField = 'TITULOPRIM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText63: TQRDBText
        Left = 6
        Top = 30
        Width = 731
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          79.375000000000000000
          1934.104166666670000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLoja
        DataField = 'TITULOSEC'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape34: TQRShape
        Left = 3
        Top = 115
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          304.270833333333400000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape35: TQRShape
        Left = 3
        Top = 112
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          296.333333333333400000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape36: TQRShape
        Left = 3
        Top = 47
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          124.354166666666700000
          1942.041666666667000000)
        Pen.Style = psDash
        Shape = qrsRectangle
      end
      object QRShape37: TQRShape
        Left = 3
        Top = 77
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          203.729166666666700000
          1942.041666666667000000)
        Pen.Style = psDash
        Shape = qrsRectangle
      end
      object QRLabel84: TQRLabel
        Left = 16
        Top = 209
        Width = 223
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          42.333333333333330000
          552.979166666666700000
          590.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'REFERENTE: PAGTO DOCUMENTO '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel86: TQRLabel
        Left = 16
        Top = 179
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          473.604166666666700000
          338.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A IMPORT'#194'NCIA DE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel87: TQRLabel
        Left = 16
        Top = 128
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          338.666666666666700000
          293.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RECEBEMOS DE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape38: TQRShape
        Left = 3
        Top = 270
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          714.375000000000000000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRLabel88: TQRLabel
        Left = 3
        Top = 413
        Width = 734
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          7.937500000000000000
          1092.729166666670000000
          1942.041666666670000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Mzr Sistemas - Sistemas em gest'#227'o empresarial'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape39: TQRShape
        Left = 1
        Top = 412
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          1090.083333333330000000
          1942.041666666670000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRLabel89: TQRLabel
        Left = 0
        Top = 51
        Width = 745
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          134.937500000000000000
          1971.145833333334000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'RECIBO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 16
      end
      object QRLabel90: TQRLabel
        Left = 16
        Top = 88
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          232.833333333333300000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DOCUMENTO:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel91: TQRLabel
        Left = 544
        Top = 88
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          232.833333333333300000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR: R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel92: TQRLabel
        Left = 16
        Top = 273
        Width = 163
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          722.312500000000000000
          431.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Toledo, 1 de novembro 2005'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel93: TQRLabel
        Left = 0
        Top = 353
        Width = 745
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          933.979166666666600000
          1971.145833333334000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '________________________________________________________'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel94: TQRLabel
        Left = 0
        Top = 370
        Width = 745
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          978.958333333333200000
          1971.145833333334000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'A S S I N A T U R A'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText64: TQRDBText
        Left = 129
        Top = 128
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          341.312500000000000000
          338.666666666666700000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'CLIENTE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel95: TQRLabel
        Left = 128
        Top = 144
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          381.000000000000000000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText65: TQRDBText
        Left = 190
        Top = 145
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          502.708333333333300000
          383.645833333333300000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'ENDERECO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel96: TQRLabel
        Left = 128
        Top = 161
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          425.979166666666700000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Munic'#237'pio:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText66: TQRDBText
        Left = 192
        Top = 161
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          425.979166666666700000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'NOME1'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText67: TQRDBText
        Left = 590
        Top = 161
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          425.979166666666700000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'UF_ESTADO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel97: TQRLabel
        Left = 542
        Top = 161
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          425.979166666666700000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Estado:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText68: TQRDBText
        Left = 611
        Top = 128
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          338.666666666666700000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'CPFCNPJ'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel98: TQRLabel
        Left = 542
        Top = 128
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          338.666666666666700000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CPF/CNPJ:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel99: TQRLabel
        Left = 3
        Top = 423
        Width = 734
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          1119.187500000000000000
          1942.041666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'www.mzrsistemas.com'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QrlVlrImportancia: TQRLabel
        Left = 152
        Top = 179
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          402.166666666666700000
          473.604166666666700000
          338.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A IMPORT'#194'NCIA DE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRVLRSimples: TQRLabel
        Left = 622
        Top = 89
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1645.708333333333000000
          235.479166666666700000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'valor'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText69: TQRDBText
        Left = 116
        Top = 89
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          235.479166666666700000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'NUMERO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRRDocumento: TQRRichText
        Left = 27
        Top = 232
        Width = 704
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          71.437500000000000000
          613.833333333333400000
          1862.666666666667000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
      end
      object QRDataRec1: TQRLabel
        Left = 675
        Top = 60
        Width = 35
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1785.937500000000000000
          158.750000000000000000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '[TIME]'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 980
    Top = 98
    Width = 115
    Height = 25
    Cursor = crHandPoint
    Hint = 'Setar Equipamentos como Retirados Pelo Cliente'
    Caption = 'Retirada'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = BitBtn1Click
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000000000000000000000000000000000003EBE712AB662
      1BB4570BB34E0AC15300C75500CC5901D26002D3650BDD7303D87100D77609DC
      7E19DF8719D37F26DA8932D9904EE1A500002AB95D0FB04E0BBD5401BF5000C6
      5400D25B00DD6700DE690FEA7B0BDE7622F28E14E7850DE38405E28208E4860C
      DD8116DB8533E59A000016B04B0DB85006BE520BCC5D08D46302DB6802E37005
      E77811EA811DE8870BCE712DF4991AEB8F0BED8E00E88805EA8908E28415D986
      000017BB5014BD5610BF581ACE6915D46D14DF7817EC8519EE8B25F09338F09C
      00984900AB5C35F4A31CF19C0CF09500E98804EA8A0EDC83000010BB4F24C863
      45E78749EC914AF49B46FEA43EFEA744FFB049FFB356FEB9009250008F4D00A8
      6435F7AB1BF19E07EE9202E8880FE084000011BF5421C060008C370084350087
      3C009046009149009450008E4E00935B008954008B56008D5504AB6C38F3AB1A
      EC980DE58C0EDD81000017CC6304A2480083340086400A8F50038F50008B5000
      8A53028F5C008758028D61048F63008D5C00895105AB6A37F5A81FEC970BDA7E
      00000BCD6302AC5400893E008C4D00874F00844F08905C09906000885C018E65
      008962008A60008E5E008C5600915100AC6625E49310E082000009D06805B25E
      008742008950058E5B068D5D068A5C078A5F098E66008D6A008965008B630091
      64028E59009152007E3600AE5C0FE280000012DA7506AD5E0194560087560089
      5D098F65088C630E8D660A8D68008A69008F6D00906A00895E078D59007C3E00
      96481FE98E0FE87F000014DF7E01AE6400804700815400835B007F5800805900
      7F5A007F5C00876A008A6D008968008F6500814D00904D29F49F18F69210F080
      000016E5890FCF88007E4600754A00785200764F007851007E59007451007356
      008A6F048E6F00815900884E22F1A70AF6980DFF9309EE77000015E89222F4AE
      23F4BA27F6C925F2CB2BF6CF30F9D32DF4CE38F6D345EFD2009171008360007D
      4D27F1B412FAA802FF9803FF8A10F57C000015EDA018F8B113FCBE0CFAC50AFB
      CE0EFFD70EFDD615FED81EFAD622ECC700744B0082512AF0B61BF7B10FFCA505
      FE9109FF8814F681000018EEA710F6B40DFFC408FFD002FFD700FDD704FFE201
      FADA11FFDE1BFFD600BB8C1AF4B817F8B409FAAB05FC9E0DFF9306F27C19EE80
      000015E0A115F5BB0BFBC607FFD302FEDB03FEE100FAE100FDE201FEDD03FAD0
      0CFFCA0CFFBF00FCAD00FFAC00FD9806FA8B21FF8F25E882000031E8AE22F2BC
      19FBCB0EFED505FAD80AFFE305FEE400F9DC00FFDC00FDCE03FFC700FAB100FF
      AA00FFA200FD9614F88D27EF8A37E48A00004AE6B031E6B329F5C61AFAD018FF
      DD0AF9D80CFDDC08FCD906FFD204FFC800FBB509FFB20EFFA80BF9951BFA942B
      F29037E38B50DF960000}
  end
  object BitBtn4: TBitBtn
    Left = 1094
    Top = 98
    Width = 115
    Height = 25
    Cursor = crHandPoint
    Hint = 'Setar Equipamentos como Devolvidos pelo Cliente'
    Caption = 'Retorno'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = BitBtn4Click
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F00300000000000000000000000000000000000050C39238BD84
      1EB6751FC17F1EC4831FC5862ACD8F33D6992ED49728D59928DA9F2BDCA32ED8
      A33CDDAB42D6A84ED8AE59DEB664E2BE00003CBC8523BA7B17BF7C1BC78528CB
      8E2EC99045D9A336C99548E1AE36D9A530E2AD2AE0AA32E2AD35DEAD38D6A743
      DCAF46DDB055E2B9000028B67B20BF7F1AC78320CC8C32CD944ADAA640C89800
      835537C29648DFB13AE4B432E6B32FE3B038E7B53FE8B738DCAC3FE0B249E0B3
      000020B97C25C98822C88730D19351E1AC40C495098559057F56128D655DE5BB
      48E7BB3CE8B83CEDBC32E5B433E6B533E1B135DBAC42DDB0000023C48621C382
      43DC9D58E7AE37BA880A865A07815800744D1587621F997360EDC64FF0C33DEB
      BC37EEBC35E9B835E8B736E2B239DAAC000025C88A35D1943EC68C1A93600F84
      570E865D00754D239D770F7F5D17876535AE8C64F1CA49F1C636ECBC38ECBB36
      E9B831E4B332DCAC000023CC8D25C88B00733B00643210865B07825A0D997061
      EAC40479581E8B6B21907040BE9B58F2C94BF6C83BECBB32E5B42EE2B130DDAB
      000020D3942DDC9D43E5AB1AAD790061360071493CDCB254F3CB40C5A4087D5E
      1E886B1E8D6D3CBF9A5FF5CA4BF5C535E9B637E8B630DBA700001ED6962AE3A5
      33E7AC49F1BC51E6BA29C09849FACF4CFCD45EF8D50183641F8D71248B6F1D8E
      6D38BC9457F5C748F5C133E3AE32E0AA000024DCA02AEAAE2CF0B63DF9C54EF9
      CB4CF7CB46FDD145FFD547FAD349E5C2007154288C70278B6D1F936E08976A30
      D3A03AEBB22EE4AA00002AE1A72BECB338FCC739FDC944FED046FFD344FFD63E
      FCD343FFD94FF9D52CB294057458288C6E1E8A6611966B33D39F3CF2B829E9AA
      000031E3AE38F5C13DF9C840FECF40FFD240FFD63FFFD641FFD945FFDB51FFDE
      52F3D316A0810D795C2992710F92674AEAB638F7BA28F0B000003CEBB942FDCB
      3DF8CA43FFD53EFFD53DFFD73FFFD849FFE143FAD849FFDD51FFE34AEBCB0687
      680078550890664CEEBA34FBBD25F3B2000043F1C23DF8CA3EFFD53CFFD63FFF
      D843FFDD45FFDE4AFFE344FADC48FFE23FFCDD4DFFE159F6D400946E006F4239
      E3AF2BF5B82AF8B7000044EBC041F8CC3FFFD63CFFD744FFDC46FFDD49FFE04A
      FFE248FFE343FFE23CFEE03BFCDB48FCD94DFBD317C59626DCA63BFFC62DF3B3
      00004CE7C04CFAD246FBD449FFDD4AFFDE49FDE049FDE149FFE646FFE83EFCE3
      3EFFE63AFFDF39FDD93AFFD633FECD36FEC831F0B73DEFB4000059E4C24DEEC8
      50FBD54BFDD84BFEDD4FFFE64CFFE448FFE542FCE440FFE73AFDE338FFE134FF
      DD2EFED429FECD30FAC53DF1BC44E4AE00004AE6B031E6B329F5C61AFAD018FF
      DD0AF9D80CFDDC08FCD906FFD204FFC800FBB509FFB20EFFA80BF9951BFA942B
      F29037E38B50DF960000}
  end
  object BtnOrdemdeServico: TBitBtn
    Left = 979
    Top = 129
    Width = 115
    Height = 10
    Cursor = crHandPoint
    Hint = 'Pressione este bot'#227'o para obter novo cadastro'
    Caption = 'Ordem de Servi'#231'os'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    Visible = False
    OnClick = BtnOrdemdeServicoClick
  end
  object BtnItensretornados: TBitBtn
    Left = 1093
    Top = 129
    Width = 115
    Height = 10
    Cursor = crHandPoint
    Hint = 'Pressione este bot'#227'o para obter novo cadastro'
    Caption = 'Itens de Retorno'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    Visible = False
    OnClick = BtnItensretornadosClick
  end
  object Fsrel: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 200
    Top = 23
    ReportForm = {18000000}
  end
  object FSDSRel: TfrDBDataSet
    DataSet = DMServ.Alx
    Left = 261
    Top = 24
  end
  object PmRelatorio: TPopupMenu
    Left = 329
    Top = 32
    object CompdeAbertura1: TMenuItem
      Bitmap.Data = {
        0A020000424D0A0200000000000036000000280000000B0000000D0000000100
        180000000000D401000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFC3A18A823A09853F10EBE0D9FFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFC3A18A823A09853F10EBE0D9FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFC3A18A823A09853F10EBE0D9FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFC3A18A823A09853F10EBE0D9FFFF
        FFFFFFFFFFFFFF000000E4D4CAF1E8E3FFFFFFFFFFFFC3A18A823A09853F10EB
        E0D9FFFFFFFFFFFFDBC6B9000000DFCDC17E3402FFFFFFFFFFFFC3A18A823A09
        853F10EBE0D9FFFFFFE1CFC3874415000000E2D2C77A2E0094572DFFFFFFC6A5
        90823A09854010F2EBE6EADFD58037058E4F23000000E3D4CA7A2E00833C0C9E
        6741C6A791833C0B884516DECBBF874314843E0D8E4D21000000FFFFFFBA9479
        7F36048641128A47198945178A481A874212864112803807E0CFC2000000FFFF
        FFFFFFFFAB7A5A8138078945178A4719894618884415813806D3BAA9FFFFFF00
        0000FFFFFFFFFFFFFFFFFFA77653823A09894618894517813806D0B6A4FFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF9A6139823B0A803705BF9A82FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93562CB99176FF
        FFFFFFFFFFFFFFFFFFFFFF000000}
      Caption = 'C&omp. de Abertura'
      OnClick = CompdeAbertura1Click
    end
    object CompdeFechamento1: TMenuItem
      Bitmap.Data = {
        0A020000424D0A0200000000000036000000280000000B0000000D0000000100
        180000000000D401000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFB9917693562CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFBF9A82803705823B0A9A6139FFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD0B6A4813806894517894618823A09A77653FFFFFFFFFFFF
        FFFFFF000000FFFFFFD3BAA98138068844158946188A4719894517813807AB7A
        5AFFFFFFFFFFFF000000E0CFC28038078641128742128A481A8945178A471986
        41127F3604BA9479FFFFFF0000008E4D21843E0D874314DECBBF884516833C0B
        C6A7919E6741833C0C7A2E00E3D4CA0000008E4F23803705EADFD5F2EBE68540
        10823A09C6A590FFFFFF94572D7A2E00E2D2C7000000874415E1CFC3FFFFFFEB
        E0D9853F10823A09C3A18AFFFFFFFFFFFF7E3402DFCDC1000000DBC6B9FFFFFF
        FFFFFFEBE0D9853F10823A09C3A18AFFFFFFFFFFFFF1E8E3E4D4CA000000FFFF
        FFFFFFFFFFFFFFEBE0D9853F10823A09C3A18AFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFEBE0D9853F10823A09C3A18AFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFEBE0D9853F10823A09C3A18AFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFEBE0D9853F10823A09C3A18AFF
        FFFFFFFFFFFFFFFFFFFFFF000000}
      Caption = 'Comp. de Fechamento'
      OnClick = CompdeFechamento1Click
    end
    object Produtoslocados1: TMenuItem
      Caption = 'Produtos locados'
      OnClick = Produtoslocados1Click
    end
    object ContratoLocao1: TMenuItem
      Caption = 'Contrato Loca'#231#227'o'
      OnClick = ContratoLocao1Click
    end
  end
  object FSDSEquipamento: TfrDBDataSet
    DataSet = DMESTOQUE.TSlave
    Left = 290
    Top = 31
  end
  object PopupMenu1: TPopupMenu
    Left = 471
    Top = 212
    object AdicionarAcessrio1: TMenuItem
      Caption = 'Adicionar Acess'#243'rios'
      OnClick = AdicionarAcessrio1Click
    end
  end
  object FSDSacessorios: TfrDBDataSet
    DataSet = DMESTOQUE.TRel
    Left = 368
    Top = 23
  end
  object FSFORMPAG: TfrDBDataSet
    Left = 400
    Top = 31
  end
  object frxRel: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41831.352513032400000000
    ReportOptions.LastChange = 41977.423604502310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo30OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       if (<frxOrdem."USUARIO"> = '#39'111522'#39') then'
      '          Memo30.Text := '#39'SYSTEM LORD'#39
      '       else'
      '          Memo30.Text := <frxOrdem."USUARIO">;             '
      'end;'
      ''
      'procedure Memo56OnBeforePrint(Sender: TfrxComponent);'
      
        'begin                                                           ' +
        '      '
      '  if (<frxFinanceiro."VENCIMENTO"> <> 0) then                  '
      '    Memo56.Text := <frxFinanceiro."VENCIMENTO">;'
      '      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 568
    Top = 7
    Datasets = <
      item
        DataSet = frxCidade
        DataSetName = 'frxCidade'
      end
      item
        DataSet = frxCliente
        DataSetName = 'frxCliente'
      end
      item
        DataSet = frxEmpresa
        DataSetName = 'frxEmpresa'
      end
      item
        DataSet = frxFinanceiro
        DataSetName = 'frxFinanceiro'
      end
      item
        DataSet = frxItens
        DataSetName = 'frxItens'
      end
      item
        DataSet = frxLoja
        DataSetName = 'frxLoja'
      end
      item
        DataSet = frxOrdem
        DataSetName = 'frxOrdem'
      end
      item
        DataSet = frxProdPromissoria
        DataSetName = 'frxProdPromissoria'
      end
      item
        DataSet = frxTmp
        DataSetName = 'frxTmp'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 377.953000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Left = 1.779530000000000000
          Top = 3.559060000000000000
          Width = 404.409710000000000000
          Height = 90.708720000000000000
          ShowHint = False
          DataField = 'LOGOEMPRESA'
          DataSet = frxLoja
          DataSetName = 'frxLoja'
          Frame.Width = 0.100000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          Left = 410.968770000000000000
          Top = 14.779530000000000000
          Width = 302.362400000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Contrato de Loca'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 410.968770000000000000
          Top = 45.795300000000000000
          Width = 185.196970000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'de Bens M'#195#179'veis')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 1.779530000000000000
          Top = 96.267780000000000000
          Width = 714.331170000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxEmpresa."ENDERECO"] - [frxEmpresa."CEP"]'
            'CNPJ: [frxEmpresa."CNPJ"] - I.E: [frxEmpresa."INSC_EST"]'
            
              '[frxCidade."NOME"] [frxCidade."UF"] [frxEmpresa."FONE"] - Plant'#195 +
              #163'o: 9858-0220'
            
              'Site: [frxEmpresa."WEB_PAGE"] - E-mail: contato@beckerlocadora.c' +
              'om.br')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 1.779530000000000000
          Top = 340.181200000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Data do Contrato:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 1.559060000000000000
          Top = 357.858380000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Previs'#195#163'o de Retorno:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 1.897650000000000000
          Top = 181.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Faturar Para:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 78.448818900000000000
          Top = 163.504020000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cliente:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 78.448818900000000000
          Top = 180.622140000000000000
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxCliente."NOME"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 78.448818900000000000
          Top = 198.519790000000000000
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxCliente."ENDERECO"], [frxCliente."ENDNUMERO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 78.448818900000000000
          Top = 216.417440000000000000
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxCliente."BAIRRO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 78.448818900000000000
          Top = 234.315090000000000000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxCliente."CIDADE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 2.755605280000000000
          Top = 304.700990000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Telefone:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 77.811070000000000000
          Top = 304.700990000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxCliente."TELREL"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 443.748300000000000000
          Top = 180.094620000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 545.236550000000000000
          Top = 180.637910000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxCliente."CPFCNPJ"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 443.527830000000000000
          Top = 198.228510000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Assinado Por:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 545.016080000000000000
          Top = 198.771800000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxOrdem."CONTATO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 443.527830000000000000
          Top = 216.889920000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Solicitado Por:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 545.016080000000000000
          Top = 216.433210000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxOrdem."CONTATO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 425.527830000000000000
          Top = 234.464750000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Per'#195#173'odo de Contrato:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 545.016080000000000000
          Top = 235.008040000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' [frxItens."TIPO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 401.055350000000000000
          Top = 268.141930000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Criado Por:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 543.543600000000000000
          Top = 267.685220000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxOrdem."USUARIO"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 402.055350000000000000
          Top = 287.039580000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 543.543600000000000000
          Top = 287.582870000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxOrdem."VENDEDOR"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 401.921460000000000000
          Top = 304.937230000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Forma de Pagamento:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 543.543600000000000000
          Top = 305.480520000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxOrdem."FORMAPAGAMENTO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.220470000000000000
          Top = 268.110390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Obra:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 78.252010000000000000
          Top = 268.110390000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxOrdem."OBRA"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.220470000000000000
          Top = 286.803340000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Contato:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 78.141436930000000000
          Top = 286.803340000000000000
          Width = 321.259925510000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxOrdem."CONTATO"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 126.283550000000000000
          Top = 164.196970000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxCliente."COD_INTERNO"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 120.622140000000000000
          Top = 340.181200000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' [frxOrdem."ABERTURA"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 120.842610000000000000
          Top = 358.078850000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' [frxItens."DTRETORNO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        DataSet = frxItens
        DataSetName = 'frxItens'
        RowCount = 0
        object Memo46: TfrxMemoView
          Left = 43.133890000000000000
          Top = 0.779530000000000000
          Width = 461.102660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxItens."DESCRICAO"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 2.779530000000000000
          Top = 1.000000000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxItens."QTD"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 506.457020000000000000
          Top = 1.000000000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxItens."TOTAL"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object Memo35: TfrxMemoView
          Left = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTD')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 44.015770000000000000
          Top = 0.133714250000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'DESCRI'#195#8225#195#402'O')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 507.205010000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR LOCA'#195#8225#195#402'O')
          ParentFont = False
        end
      end
      object Memo1: TfrxMemoView
        Top = 674.976810000000000000
        Width = 720.000000000000000000
        Height = 260.245985650000000000
        ShowHint = False
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          
            'As   partes   t'#195#170'm  entre  si  justo  e  combinado   o   present' +
            'e   contrato    de   loca'#195#167#195#163'o   o   qual   vigor'#195#161'   mediante  ' +
            ' as seguintes condi'#195#167#195#181'es:'
          
            '1.   O   presente  contrato   tem   como  objeto   a  loca'#195#167#195#163'o ' +
            ' pela  LOCAT'#195#129'RIA(O)  do(s)    equipamento(s)   e  respectivos a' +
            'cess'#195#179'rio de propriedades da LOCADORA acima descritos.'
          
            '1.1 Os citados equipamentos  e  acess'#195#179'rios poder'#195#163'o,  a  exclus' +
            'ivo  crit'#195#169'rio da LOCADORA serem  substituidos por  outro simila' +
            'r a qualquer momento durante a vig'#195#170'ncia do contrato.'
          
            '2.   A  LOCAT'#195#129'RIA(O)   anui   expressamente    neste  ato que p' +
            'ara  o   pagamento dos  valores mensais a  titulo  de  loca'#195#167#195#163'o' +
            ',  sejam    emitidas     duplicatas   de      faturas.    Essas'
          
            'duplicatas para cobran'#195#167'a  do  aluguel,  ser'#195#163'o  emitidas ap'#195#179's ' +
            'o t'#195#169'rmino  do  per'#195#173'odo de loca'#195#167#195#163'o    e   ter'#195#163'o   como   ven' +
            'cimento   o   prazo  conforme  mencionado acima a data  de  sua'
          'emiss'#195#163'o,  atrav'#195#169's de  cobran'#195#167'a   banc'#195#161'ria.'
          
            '3.   Ao final  do  prazo  de  loca'#195#167#195#163'o  acima descrito os equip' +
            'amentos dever'#195#163'o ser devolvidos independente de notifica'#195#167#195#163'o ju' +
            'dicial  ou  exrajudicial,  salvo   prorroga'#195#167#195#163'o     de      pra' +
            'zo '
          
            'ajustado de comum acordo entre as partes, correndo por conta da ' +
            ' LOCAT'#195#129'RIA(O)  as despesas  de  carga,  descarga e transporte, ' +
            'sendo  ainda   respons'#195#161'vel por eventuais danos '
          'causados aos equipamentos durante o transporte.'
          
            '3.1  A  LOCAT'#195#129'RIA(O)  se  obriga  a  contratar '#195#160's suas expensa' +
            's seguro para cobertura de danos decorrentes de  riscos diversos' +
            '  inclusive  por ocasi'#195#163'o     do       transporte do '
          
            'equipamento locado. Eventual ressarcimento  de  quaisquer  danos' +
            ' por  seguradora  contratada  pela LOCADORA n'#195#163'o beneficiar'#195#161' a ' +
            'LOCAT'#195#129'RIA(O) em decorr'#195#170'ncia da subroga'#195#167#195#163'o '
          
            'pelo segurado nos valores indenizados exigiveis da LOCAT'#195#129'RIA(O)' +
            '.'
          
            '4.   Sobre o valor das duplicatas correspondentes ao aluguel, ap' +
            #195#179's o vencimento, incidir'#195#163'o juros morat'#195#179'rios de 1% (um porcent' +
            'o) ao m'#195#170's e multa  de 2% (dois porcento).'
          
            '5.   Este        contrato      obriga      as       partes,     ' +
            '  seus        herdeiros       e       sucessores      a      qua' +
            'lquer     t'#195#173'tulo.'
          
            '6.   S'#195#163'o  partes   integrantes   deste    contrato    as   cond' +
            'i'#195#167#195#181'es  gerais  que  se  encontram  no  verso  deste instrument' +
            'o.'
          
            '7.   As  partes  elegem como competente para qualquer a'#195#167#195#163'o dec' +
            'orrente deste contrato, com exclus'#195#163'o de qualquer outro, por mai' +
            's privilegiado que seja, o foro da cidade de Curitiba, '
          'Capital  do  Estado do Paran'#195#161'.'
          
            '8.   E   por   estarem,   assim,  de  pleno   e   comum   acordo' +
            '  com  as  condi'#195#167#195#181'es  estatuidas  no  presente  instrumento, a' +
            's partes  contratantes  o  assinam com duas testemunhas '
          'em 3 (tr'#195#170's)  vias  de igual  teor e forma, para um s'#195#179' efeito.')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 637.740570000000000000
        Top = 15.118120000000000000
        Width = 75.590600000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8 = (
          'N'#194#186' [frxOrdem."NRCONTRATO"]')
        ParentFont = False
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo2: TfrxMemoView
        Top = 1.000000000000000000
        Width = 714.440940000000000000
        Height = 894.362090000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haBlock
        Memo.UTF8 = (
          
            '                                                                ' +
            '                                                                ' +
            ' CONDI'#195#8225#195#8226'ES GERAIS'
          ''
          
            '1.     O(s) equipamento(s)  e  acess'#195#179'rios  objeto  deste,  deve' +
            'r'#195#163'o ser retirados pela LOCAT'#195#129'RIA(O) no estabelecimento da LOCA' +
            'DORA no endere'#195#167'o constante do anverso, '
          
            '        correndo as despesas  de  transporte por conta da   LOCA' +
            'T'#195#129'RIA(O) que     ser'#195#161'     respons'#195#161'vel    ainda,    por    eve' +
            'ntuais    danos    causado    ao     equipamento  '
          '        durante   o  transporte.'
          
            '2.     A  LOCAT'#195#129'RIA(O) se obriga a empregar o(s) equipamento(s)' +
            ' e acess'#195#179'rios locados em servi'#195#167'os pr'#195#179'prios ao seu uso,  provi' +
            'denciado,   ainda    para   que   n'#195#163'o   seja(m) '
          
            '        utilizados(s) de maneira descuidada  ou  em  servi'#195#167'os  ' +
            'demasiadamente  pesados, contr'#195#161'rios '#195#160's recomenda'#195#167#195#181'es do(s) f' +
            'abricante(s) e evitar que o(s) mesmo(s) seja(m) '
          '        entregue(s) a operadores sem pr'#195#161'tica ou incompetentes.'
          
            '2.1    Os itens de desgaste, tais como FPS,  escovas, BITS, disc' +
            'os de corte entre  outros conforme o equipamento locado, s'#195#163'o de' +
            '  responsabilidade   da   LOCAT'#195#129'RIA(O), e'
          
            '        dever'#195#163'o ser devolvidos  na  mesma  forma  que lhe  fora' +
            'm  entregues.'
          
            '3.     No ato da devolu'#195#167#195#163'o do(s)  equipamento(s) ser'#195#161'  feito ' +
            ' pela  LOCADORA,  uma  avalia'#195#167#195#163'o  do  referido  equipamento. S' +
            'e  forem constadas   irregularidades  em  virtude '
          
            '        do n'#195#163'o cumprimento da  cl'#195#161'usula  de   numero  02   pre' +
            'sente  contrato, a  LOCAT'#195#129'RIA(O)  ser'#195#161'  comunicada(o)  em caso' +
            '  de  sil'#195#170'ncio,   dentro de 48 horas, o mesmo '
          
            '        desde j'#195#161'  autoriza que  a  LOCADORA emita Nota Fiscal d' +
            'e cobran'#195#167'a e duplicata dos reparos necess'#195#161'rios   no(s)   equip' +
            'amento(s)   decorrentes  do  uso   indevido, '
          '        com base no artigo 585, II do C'#195#179'digo do Processo Civil.'
          
            '4.     Todo e qualquer conserto  dos  bens  locados, dever'#195#161' ser' +
            ' efetuado '#195#186'nica e exclusivamente pela LOCADORA, ou    pessoa   ' +
            ' por    ela    indicada,    caso    contr'#195#161'rio    a '
          
            '        LOCAT'#195#129'RIA(O) ser'#195#161' responsabilidade pelos danos eventua' +
            'lmente causados aos bens locados.'
          
            '5.     Obriga-se ainda a LOCAT'#195#129'RIA(O) a n'#195#163'o remover, desfigura' +
            'r ou ocultar qualquer numera'#195#167#195#163'o, letreiro ou insignia existent' +
            'es no(s) equipamento(s) locado(s), nem fazer '
          
            '        quaisquer  modifica'#195#167#195#181'es,   altera'#195#167#195#181'es,   liga'#195#167#195#181'es ' +
            '  e    adapta'#195#167#195#181'es de acess'#195#179'rios no(s) bem(ns) m'#195#179'vel(is) loca' +
            'do(s)  sem expressa e pr'#195#169'via anu'#195#170'ncia  da  LOCADORA.'
          
            '5.1    A LOCAT'#195#129'RIA(O) obriga-se  a  efetuar  manuten'#195#167#195#163'o  di'#195#161 +
            'ria,  conforme  especifica'#195#167#195#163'o   do fabricante   constante  do ' +
            'manual   de   opera'#195#167#195#163'o   (mediante verifica'#195#167#195#163'o '
          
            '        e complementa'#195#167#195#181'es dos  n'#195#173'veis dos '#195#179'leos lubrificante' +
            's e l'#195#173'quido do arrefecimento, pontos de lubrifica'#195#167#195#163'o), avisan' +
            'do a  LOCADORA  sempre que houver necessidade '
          
            '        de troca  de  filtros  ou      outros      componentes, ' +
            '    cuja     substitui'#195#167#195#163'o     ser'#195#161'     efetuada      exclusiv' +
            'amente       pela     LOCADORA.'
          
            '5.2    A LOCAT'#195#129'RIA(O) fica  ainda obrigado a  informar  a LOCAD' +
            'ORA a cada 15 dias a quantidade de horas registradas no hor'#195#173'met' +
            'ro do equipamento, quando o mesmo for '
          '        equipado     com     este    acess'#195#179'rio.'
          
            '5.3    A  LACAT'#195#129'RIA(O), se  obriga   a   parar  o equipamento  ' +
            'locado, se em opera'#195#167#195#163'o, nas datas e hor'#195#161'rios previamente info' +
            'rmados pela LOCADORA a fim de que esta, '
          
            '        atrav'#195#169's  de  seus t'#195#169'cnicos efetue '#195#160's suas expensas, a' +
            ' manuten'#195#167#195#163'o preventiva   do   equipamento. Saliente-se  que  a' +
            '  manuten'#195#167#195#163'o  s'#195#179'  ser'#195#161'  efetuada  de  '
          '        segunda-feira  '#195#160'  sexta-feira em hor'#195#161'rio comercial.'
          
            '5.4    O  n'#195#163'o  atendimento  da  cl'#195#161'usula 5.2  pela  LOCAT'#195#129'RIA' +
            '(O)  sujeitar'#195#161'  a  mesma,  ao  ressarcimento  de  eventuais des' +
            'pesas  com  m'#195#163'o-de-obra e pe'#195#167'as  de '
          
            '        reposi'#195#167#195#163'o para sanar  desgastes  e quebra decorrentes ' +
            'da n'#195#163'o realiza'#195#167#195#163'o da referida manuten'#195#167#195#163'o preventiva, uma ve' +
            'z que foi a  mesma que impediu a realiza'#195#167#195#163'o '
          
            '        da manuten'#195#167#195#163'o, com o que, desde j'#195#161',anui e aceita a em' +
            'iss'#195#163'o por  parte  da   LOCADORA  de documento fiscal e duplicat' +
            'a para cobran'#195#167'a destas despesas.'
          
            '6.     A  LOCAT'#195#129'RIA(O)   obriga-se  a devolver  o equipamento  ' +
            'ora  locado, com a  mesma  quantidade   de  combustivel, indicad' +
            'o no Anexo   II,  sob pena    de  ter  que '
          
            '        restituir   a  LOCADORA  pelo valor   de   mercado   do ' +
            ' combustivel  utilizado, acrescido de taxa de manuten'#195#167#195#163'o de 25' +
            '% sobre o valor do mesmo.'
          
            '7.     '#195#8240' vedado a LOCAT'#195#129'RIA(O) emprestar, arrendar ou sublocar' +
            ' os equipamentos lcoados ou por qualquer forma ceder o uso a ter' +
            'ceiros, ainda que a t'#195#173'tulo gratuito, '
          
            '        bem como transfer'#195#173'-lo para outro  local  que n'#195#163'o const' +
            'e  deste  contrato sem autoriza'#195#167#195#163'o pr'#195#169'via e por escrito da LO' +
            'CADORA, obrigando-se ainda a comunicar '
          
            '        imediatamente a LOCADORA sobre eventual arresto, penhora' +
            ' ou sequestro, ou qualquer turba'#195#167#195#163'o da posse por parte de terc' +
            'eiros do(s) equipamento(s) locado(s).'
          
            '8.     Quaisquer acidente ocorridos com o(s) equipamento(s) loca' +
            'do(s) ou danos por ele  causados a terceiro, desde sua retirada ' +
            'at'#195#169' a sua devolu'#195#167#195#163'o  e  seu efetivo '
          
            '        recebimento, ser'#195#163'o de exclusiva responsabilidade da LOC' +
            'AT'#195#129'RIA(O), exclu'#195#173'da a LOCADORA,de qualquer responsabilidade ci' +
            'vis ou penais e  do pagamento  '
          '        de  quaisquer  indeniza'#195#167#195#181'es, seja a que t'#195#173'tulo for.'
          
            '9.     A LOCAT'#195#129'RIA(O) fornecer'#195#161' o(s) operador(es) do(s) equipa' +
            'mento(s) locado(s) e responder'#195#161' por todas as obriga'#195#167#195#181'es traba' +
            'lhistas e   previd'#195#170'ncias    relacionada '
          
            '        com os mesmos.Fica  desde  j'#195#161' acordado  que  n'#195#163'o exist' +
            'e e jamais existir'#195#161' v'#195#173'nculo   empregat'#195#173'cio entre   os funcion' +
            #195#161'rios da LOCAT'#195#129'RIA e a LOCADORA '
          
            '        cabendo a esta, toda e  qualquer  responsabilidade  pecu' +
            'ni'#195#161'ria ou n'#195#163'o,por quaisquer   questionamentos judiciais, a'#195#167#195#181 +
            'es  trabalhistas,  etc, desta natureza. '
          
            '        Igualmente, a LOCAT'#195#129'RIA declara que tem conhecimento da' +
            '  S'#195#186'mula 331  do  Tribunal Superior do Trabalho (TST),   respon' +
            'dendo  perante a LOCADORA por '
          
            '        todas as verbas e encargos ou '#195#180'nus decorrentes de event' +
            'ual reconhecimento de v'#195#173'nculo empregat'#195#173'cio pela Justi'#195#167'a do Tr' +
            'abalho, em Reclamat'#195#179'ria Trabalhista que'
          
            '        viera ser promovida por empregado da LOCAT'#195#129'RIA contra  ' +
            'a LOCADORA.'
          
            '10.    A LOCADORA  poder'#195#161'  declara  antecipadamente  vencido  e' +
            'ste   instrumento, independentemente de interpela'#195#167#195#163'o, aviso ou' +
            ' notifica'#195#167#195#163'o judicial na ocorr'#195#170'ncia dos '
          '        seguinte eventos:'
          
            '        a)  O n'#195#163'o  pagamento,  ap'#195#179's dois dias do vencimento, d' +
            'e qualquer d'#195#169'bito que ocorra direta ou indiretamente deste inst' +
            'rumento.'
          
            '        b)  Falta    de      cumprimento      de       quaisquer' +
            '       das       obriga'#195#167#195#181'es      assumidas       neste      in' +
            'strumento.'
          
            '        c)  Protesto leg'#195#173'timo de t'#195#173'tulo  de cr'#195#169'dito,  insolv'#195 +
            #170'ncia, decreta'#195#167#195#163'o de fal'#195#170'ncia cessa'#195#167#195#163'o de atividad e  ou li' +
            'quida'#195#167#195#163'o judicial   ou   extra   judicial   da   LOCAT'#195#129'RIA(O)' +
            ' '
          
            '             bem   como   requerimento   de   concordata   pela ' +
            '  mesma.'
          
            '        d)  A  falsidade   de   qualquer  declara'#195#167#195#163'o  prestada' +
            '  pela  LOCAT'#195#129'RIA(O)  neste  instrumento ou de informa'#195#167#195#163'o '#195#160' ' +
            'LOCADORA.'
          
            '        e)  Se   a   LOCAT'#195#129'RIA(O)    transferir   a  terceiros ' +
            ' os  direitos  ou   obriga'#195#167#195#181'es  que   adquiriu neste instrumen' +
            'to.'
          
            '        f)  Se a LOCAT'#195#129'RIA(O) utilizar inadequadamente os equip' +
            'amentos locados ou utiliz'#195#161'-los para fins do  diversos do previs' +
            'to neste instrumento.'
          
            '11.    Em  ocorrendo qualquer uma das hip'#195#179'teses acima a LOCADOR' +
            'A poder'#195#161'  exigir  e obter  a  imediata  devolu'#195#167#195#163'o do(s) equip' +
            'amento(s), podendo inclusive, mas n'#195#163'o'
          
            '        necessariamente,  requerer  a  reintegra'#195#167#195#163'o  de posse ' +
            'liminar do(s) bem(ns objeto da presente loca'#195#167#195#163'o.'
          
            '12.    A    parte   que  infringir     qualquer    disposi'#195#167#195#163'o ' +
            '    do    presente  contrato  sujeitar-se-'#195#161' ao  pagamento  de  ' +
            'multa equivalente   a   3 (tr'#195#170's)    alugu'#195#169'is no valor '
          
            '        estipulado no anverso, sem preju'#195#173'zo das demais  obriga'#195 +
            #167#195#181'es  previstas especificamente.'
          
            '13.    A  LOCAT'#195#129'RIA(O)  recebe    neste  atos  os  equipamentos' +
            '  referidos  no  presente  instrumento  declarando, t'#195#170'-los test' +
            'ados e aprovados previamente e afirmado'
          
            '        que os mesmos  se  encontram  em   perfeito estado  rela' +
            'tivamente a seu funcionamento e seguran'#195#167'a, conforme "check list' +
            '" e fotos anexados ao presente.'
          
            '13.1  Declara   mais,  que  entende  detalhadamente  sua  corret' +
            'a  utiliza'#195#167#195#163'o,   pelo    que    se    obriga     devolv'#195#170'-lo  ' +
            'em id'#195#170'nticas   condi'#195#167#195#181'es   de   funcionamento '
          
            '        e seguran'#195#167'a    ao   final  desta  loca'#195#167#195#163'o   ou  nao h' +
            'ip'#195#179'tese  de rescis'#195#163'o       do presente contrato.'
          
            '13.2  Declara  ainda   que  o(s)  seu(s)  operador(es)   contrat' +
            'ado(s)  para  a  opera'#195#167#195#163'o  do(s)  equipamento(s)   locado(s) p' +
            'ossuem as necess'#195#161'rias e suficientes instru'#195#167#195#181'es '
          
            '        para operar(em)  relativamente  '#195#160' utiliza'#195#167#195#163'o  segura,' +
            ' manuten'#195#167#195#163'o, usos e cuidados, assumindo a LOCAT'#195#129'RIA(O) em car' +
            #195#161'ter irrevog'#195#161'vel, plena, '#195#173'ntegral e irrestrita'
          
            '        responsabilidade  por  todo  e qualquer dano  ou preju'#195#173 +
            'zo  que  lhe  resulte os que seu prepostos  venham  a  causar  a' +
            ' terceiros  durante  o  per'#195#173'odo  de   loca'#195#167#195#163'o  e '
          
            '        opera'#195#167#195#163'o  do(s)   equipamento(s)  locado(s),  objeto  ' +
            'deste  contrato, bem   assim  por  todo e  qualquer   dano ou  p' +
            'reju'#195#173'zo,  seja  qual  for  a  origem,  que  venham '
          
            '        a  ser  causados as m'#195#161'quinas, ferramentas, instrumentos' +
            '   e   instala'#195#167#195#181'es   e   outros   bens   de   sua   propriedad' +
            'e   ou   de  terceiros decorrentes  da   opera'#195#167#195#163'odo(s) '
          
            '        equipamento(s)    locado(s),   renunciando   desde  j'#195#161' ' +
            ' em   car'#195#161'ter   irrevog'#195#161'vel  e irretrat'#195#161'vel  por  si  seus  p' +
            'ropostos,  como  efetivamente  renunciado  tem  por  este '
          
            '        instrumento,  a  eventualmente reivindicar  direitos  pe' +
            'la ocorr'#195#170'ncia dos danos acima, exonerando e liberando desde j'#195#161 +
            ' a LOCADORA por eventuais danos materiais e '
          '        pessoais, a qualquer t'#195#173'tulo.'
          
            '14.    A   devolu'#195#167#195#163'o  dos  equipamentos ser'#195#161' acompanhada de n' +
            'ota fiscal de devolu'#195#167#195#163'o emitida pela LOCAT'#195#129'RIA(O) desde que o' +
            'brigado a este procedimento, assumindo '
          
            '        exclusiva responsabilidade  pelas infra'#195#167#195#181'es fiscais  d' +
            'e sua emiss'#195#163'o ou omiss'#195#163'o.'
          
            '15.    O presente contrato somente ser'#195#161' considerado encerrado a' +
            'p'#195#179's a devolu'#195#167#195#163'o total dos equipamentos nele relacionados acom' +
            'panhados da documenta'#195#167#195#163'o fiscal exigida '
          
            '        por lei, sendo que continuar'#195#161' a ser o prazo de loca'#195#167#195#163 +
            'o no caso de roubo do equipamento at'#195#169' o seu efetivo pagamento, ' +
            'ou em caso de acidente, at'#195#169' o encerramento do'
          '        conserto do mesmo.'
          
            '16.    Este instrumento cont'#195#169'm todas as vontades das partes con' +
            'tratantes, somente podendo ser alterado ou modificado atrav'#195#169's d' +
            'e adendos, e nada do que neles constar'
          
            '        poder'#195#161' originar para a LOCAT'#195#129'RIA(O) qualquer sobre o(s' +
            ') equipamento(s), al'#195#169'm de sua qualidade de LOCAT'#195#129'RIA(O).'
          
            '17.    Todos  os entendimentos sobre o andamento, modifica'#195#167#195#181'es' +
            ' ou altera'#195#167#195#181'es do objeto deste contrato dever'#195#163'o ser feitas me' +
            'diante troca de  correspond'#195#170'ncia, as quais '
          
            '        passar'#195#163'o a fazer parte integrante e completar da presen' +
            'te instrumento, sendo  de  nenhum efeito as combina'#195#167#195#181'es verbai' +
            's. Em caso de diverg'#195#170'ncia entre este contrato'
          
            '        e os documentos que a ele  forem  anexadas,  prevalecer'#195 +
            #161'  o  contrato. Em  caso  de  diverg'#195#170'ncia entre os documentos a' +
            'nexados, os mais recentes prevalecer'#195#163'o '
          '        sobre os mais antigos.')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 6.779530000000000000
        Top = 985.425196850000000000
        Width = 219.212740000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftTop]
        Memo.UTF8 = (
          'LOCADORA')
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        Left = 384.732530000000000000
        Top = 985.425790000000000000
        Width = 321.260050000000000000
        Height = 11.338590000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftTop]
        Memo.UTF8 = (
          'LOCAT'#195#129'RIA')
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 384.732530000000000000
        Top = 1005.221090000000000000
        Width = 321.260050000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'Nome:_________________________________________________')
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 384.732530000000000000
        Top = 1028.677800000000000000
        Width = 321.260050000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          
            'RG/CPF:_________________________________________________________' +
            '__________')
        ParentFont = False
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = frxProdPromissoria
        DataSetName = 'frxProdPromissoria'
        RowCount = 0
        object Memo59: TfrxMemoView
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            
              '[frxProdPromissoria."DESCRICAO"], [frxProdPromissoria."MARCA"], ' +
              '[frxProdPromissoria."LOCALESTANTE"], [frxProdPromissoria."ESPECI' +
              'FICACAO"] - R$ [frxProdPromissoria."VALOR"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 136.063080000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        object Memo60: TfrxMemoView
          Left = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'a quantia de')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 3.779530000000000000
          Top = 21.456710000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Emitente')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 510.236550000000000000
          Top = 21.456710000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Data da Emiss'#195#163'o')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 3.779530000000000000
          Top = 44.133890000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CNPJ')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 181.417440000000000000
          Top = 44.133890000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Endere'#195#167'o')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 90.708720000000000000
          Top = 115.944960000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'ASS. EMITENTE')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 536.693260000000000000
          Top = 115.944960000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'ASS. CLIENTE')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 49.133890000000000000
          Top = 44.133890000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxEmpresa."CNPJ"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 253.228510000000000000
          Top = 44.133890000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxEmpresa."ENDERECO"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 71.811070000000000000
          Top = 21.456710000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 634.961040000000000000
          Top = 21.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrdem."ABERTURA"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 94.488250000000000000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTmp."DESC500"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 11.338590000000000000
          Top = 112.385900000000000000
          Width = 260.787570000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 442.205010000000000000
          Top = 112.165430000000000000
          Width = 260.787570000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo54: TfrxMemoView
          Left = 619.842920000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'N'#194#186' [frxOrdem."NRCONTRATO"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 585.590910000000000000
          Top = 64.252010000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'R$ [frxTmp."VLR1"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 634.961040000000000000
          Top = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo56OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 3.779530000000000000
          Top = 88.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'A receber de')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 98.267780000000000000
          Top = 88.488250000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCliente."NOME"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 506.457020000000000000
          Top = 88.488250000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 585.827150000000000000
          Top = 88.488250000000000000
          Width = 128.503937010000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCliente."CPFCNPJ"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 3.779530000000000000
          Top = 107.606370000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              'por est'#195#161' '#195#186'nica via de NOTA PROMISS'#195#8220'RIA a loca'#195#167#195#163'o dos seguin' +
              'tes equipamentos:')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 548.031850000000000000
          Top = 41.574830000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vencimento')
          ParentFont = False
        end
      end
      object Picture2: TfrxPictureView
        Left = 3.779530000000000000
        Top = 15.118120000000000000
        Width = 294.803340000000000000
        Height = 68.031540000000000000
        ShowHint = False
        DataField = 'LOGOEMPRESA'
        DataSet = frxLoja
        DataSetName = 'frxLoja'
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo57: TfrxMemoView
        Left = 317.480520000000000000
        Top = 15.118120000000000000
        Width = 196.535560000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          'NOTA PROMISS'#195#8220'RIA')
        ParentFont = False
      end
    end
  end
  object frxEmpresa: TfrxDBDataset
    UserName = 'frxEmpresa'
    CloseDataSource = False
    DataSet = DMMACS.TEmpresa
    BCDToCurrency = False
    Left = 472
    Top = 4
  end
  object frxCliente: TfrxDBDataset
    UserName = 'frxCliente'
    CloseDataSource = False
    DataSet = DMPESSOA.WCliente
    BCDToCurrency = False
    Left = 504
    Top = 4
  end
  object frxOrdem: TfrxDBDataset
    UserName = 'frxOrdem'
    CloseDataSource = False
    DataSet = DMServ.Alx
    BCDToCurrency = False
    Left = 536
    Top = 4
  end
  object frxItens: TfrxDBDataset
    UserName = 'frxItens'
    CloseDataSource = False
    DataSet = DMESTOQUE.TRel
    BCDToCurrency = False
    Left = 600
    Top = 4
  end
  object frxCidade: TfrxDBDataset
    UserName = 'frxCidade'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 632
    Top = 4
  end
  object frxLoja: TfrxDBDataset
    UserName = 'frxLoja'
    CloseDataSource = False
    DataSet = DMMACS.TLoja
    BCDToCurrency = False
    Left = 801
    Top = 44
  end
  object frxProdPromissoria: TfrxDBDataset
    UserName = 'frxProdPromissoria'
    CloseDataSource = False
    DataSet = DMESTOQUE.Alx
    BCDToCurrency = False
    Left = 835
    Top = 36
  end
  object frxFinanceiro: TfrxDBDataset
    UserName = 'frxFinanceiro'
    CloseDataSource = False
    DataSet = DMFINANC.TAlx
    BCDToCurrency = False
    Left = 864
    Top = 34
  end
  object frxTmp: TfrxDBDataset
    UserName = 'frxTmp'
    CloseDataSource = False
    DataSet = DMMACS.TMP
    BCDToCurrency = False
    Left = 432
    Top = 2
  end
  object pmCancelamentos: TPopupMenu
    Left = 464
    Top = 65503
    object CancelarFechamento1: TMenuItem
      Caption = 'Cancelar Fechamento'
      OnClick = CancelarFechamento1Click
    end
    object CancelarFatura1: TMenuItem
      Caption = 'Cancelar Fatura'
      OnClick = CancelarFatura1Click
    end
  end
  object RightClickMenu: TPopupMenu
    Left = 61
    Top = 264
    object mnuImpNfse: TMenuItem
      Caption = 'Imprimir Nota Fiscal Eletr'#244'nica'
      OnClick = mnuImpNfseClick
    end
    object mnuConsultasdeNFe: TMenuItem
      Caption = 'Consultas de Nota Fiscal Eletr'#244'nica'
      object mnuVisualizarDanfe: TMenuItem
        Caption = 'Visualizar Danfe'
        OnClick = mnuVisualizarDanfeClick
      end
    end
    object mnuCancelamentodeNFE: TMenuItem
      Caption = 'Cancelar Nota Fiscal Eletr'#244'nica'
      OnClick = mnuCancelamentodeNFEClick
    end
    object RecuperadadosdaNFSe1: TMenuItem
      Caption = 'Recupera dados da NFS-e'
      OnClick = RecuperadadosdaNFSe1Click
    end
  end
end
