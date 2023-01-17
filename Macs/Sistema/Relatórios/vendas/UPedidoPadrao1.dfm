inherited FPedidoPadrao: TFPedidoPadrao
  Left = 12
  Top = 86
  Caption = 'FPedidoPadrao'
  ClientHeight = 522
  ClientWidth = 789
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape2: TShape
    Top = 495
    Width = 789
  end
  inherited Shape11: TShape
    Top = 500
  end
  inherited Shape4: TShape
    Top = 500
  end
  inherited PComunica: TPanel [3]
    Left = 120
    Width = 545
    Height = 121
  end
  inherited PForm: TPanel [4]
    Width = 789
    Height = 493
    inherited Shape1: TShape
      Width = 783
      Height = 464
    end
    inherited Shape14: TShape
      Width = 783
    end
    inherited Image1: TImage
      Width = 779
    end
    inherited BtnQuestao: TSpeedButton
      Left = 742
    end
    inherited BtnFecha: TSpeedButton
      Left = 763
    end
    inherited PConsulta: TPanel
      Height = 457
      inherited DBGridCadastroPadrao: TDBGrid
        Height = 363
      end
    end
    inherited PCadastro: TPanel
      Width = 777
      Height = 458
      inherited Panel4: TPanel
        Width = 773
        Height = 427
        object Label2: TLabel
          Left = 16
          Top = 16
          Width = 104
          Height = 17
          Caption = 'Nº Pedido:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 576
          Top = 232
          Width = 32
          Height = 13
          Caption = 'Label3'
        end
        object Label4: TLabel
          Left = 544
          Top = 232
          Width = 32
          Height = 13
          Caption = 'Label4'
        end
        object Label5: TLabel
          Left = 512
          Top = 232
          Width = 32
          Height = 13
          Caption = 'Label5'
        end
        object Label6: TLabel
          Left = 480
          Top = 224
          Width = 32
          Height = 13
          Caption = 'Label6'
        end
        object Label7: TLabel
          Left = 440
          Top = 224
          Width = 32
          Height = 13
          Caption = 'Label7'
        end
        object Label8: TLabel
          Left = 392
          Top = 224
          Width = 32
          Height = 13
          Caption = 'Label8'
        end
        object Label9: TLabel
          Left = 360
          Top = 224
          Width = 32
          Height = 13
          Caption = 'Label9'
        end
        object Label10: TLabel
          Left = 536
          Top = 16
          Width = 228
          Height = 17
          Caption = 'Valor Total do Pedido:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBColorEdit1: TDBColorEdit
          Left = 16
          Top = 32
          Width = 121
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          NotFoundText = 'Não Existe'
          InputText = 'Por favor entre na procura pelo critério'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit2: TDBColorEdit
          Left = 592
          Top = 32
          Width = 169
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          NotFoundText = 'Não Existe'
          InputText = 'Por favor entre na procura pelo critério'
          ButtonCaption = 'Ok'
        end
        object PPessoa: TPanel
          Left = 5
          Top = 59
          Width = 764
          Height = 46
          Color = 13750737
          TabOrder = 2
          object Label11: TLabel
            Left = 152
            Top = 1
            Width = 69
            Height = 16
            Caption = 'CPF/CNPJ:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 312
            Top = 1
            Width = 36
            Height = 16
            Caption = 'Nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 10
            Top = 1
            Width = 50
            Height = 16
            Caption = 'Código:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object ColorEditFloat1: TColorEditFloat
            Left = 8
            Top = 18
            Width = 129
            Height = 23
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '0'
            EditType = fltInteger
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'Não Existe'
            InputText = 'Por favor entre na procura pelo critério'
            ButtonCaption = 'Ok'
          end
          object ColorEditFloat2: TColorEditFloat
            Left = 152
            Top = 16
            Width = 153
            Height = 25
            Color = clInactiveBorder
            Ctl3D = False
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            Text = '02603180925'
            ValueFormat = '#,##0.00'
            ValueNumeric = 2603180925
            ValueInteger = -1691786371
            NotFoundText = 'Não Existe'
            InputText = 'Por favor entre na procura pelo critério'
            ButtonCaption = 'Ok'
          end
          object ColorEditFloat3: TColorEditFloat
            Left = 312
            Top = 16
            Width = 417
            Height = 25
            Color = clInactiveBorder
            Ctl3D = False
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = 'Alex Arlati Mazur'
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'Não Existe'
            InputText = 'Por favor entre na procura pelo critério'
            ButtonCaption = 'Ok'
          end
          object BtnOpenPes: TBitBtn
            Left = 729
            Top = 16
            Width = 25
            Height = 25
            TabOrder = 3
            Glyph.Data = {
              B6000000424DB60000000000000036000000280000000A000000040000000100
              18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
          end
        end
      end
      inherited Panel1: TPanel
        Width = 773
      end
    end
  end
  inherited PLogoSI: TPanel
    Top = 499
  end
  inherited FlatHint1: TFlatHint
    Left = 624
    Top = 32
  end
  inherited AutoSize: TFormAutoSize
    Left = 664
    Top = 32
  end
end
