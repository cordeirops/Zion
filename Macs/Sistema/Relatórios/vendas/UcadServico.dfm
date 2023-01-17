inherited FCadServico: TFCadServico
  Caption = 'FCadServico'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 718
    Height = 429
  end
  inherited SpTitulo01: TShape
    Width = 505
  end
  inherited SpTitulo02: TShape
    Width = 500
  end
  inherited LDescTitulo: TLabel
    Left = 222
    Width = 131
    Caption = 'Grades de Servi'#231'o'
  end
  inherited PCadastro: TPanel
    inherited Panel4: TPanel
      object Label6: TLabel
        Left = 12
        Top = 43
        Width = 59
        Height = 18
        Caption = 'C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 84
        Top = 43
        Width = 61
        Height = 18
        Caption = 'Interno:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 96
        Width = 79
        Height = 18
        Caption = 'Descri'#231'ao:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 14
        Top = 166
        Width = 44
        Height = 16
        Caption = 'Grupo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 14
        Top = 222
        Width = 74
        Height = 16
        Caption = 'Sub Grupo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBPRIMEIRO: TDBColorEdit
        Left = 14
        Top = 63
        Width = 60
        Height = 26
        Color = clWhite
        Ctl3D = True
        DataField = 'COD_SERVICO'
        DataSource = DMServ.DServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBCODINT: TDBColorEdit
        Left = 84
        Top = 63
        Width = 59
        Height = 26
        Color = clWhite
        Ctl3D = True
        DataField = 'COD_INTERNO'
        DataSource = DMServ.DServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDESC: TDBColorEdit
        Left = 14
        Top = 116
        Width = 557
        Height = 26
        Color = clWhite
        Ctl3D = True
        DataField = 'DESCRICAO'
        DataSource = DMServ.DServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDCODGRUPO: TColorEditFloat
        Left = 13
        Top = 183
        Width = 55
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        MaxLength = 3
        ParentFont = False
        TabOrder = 3
        Text = '000'
        EditType = fltString
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBGRUPO: TColorEditFloat
        Left = 68
        Top = 183
        Width = 250
        Height = 24
        Color = clSilver
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        MaxLength = 3
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
      object BtnAddGrupo: TBitBtn
        Left = 319
        Top = 183
        Width = 22
        Height = 22
        Hint = 'Pressione para localizar um grupo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnAddGrupoClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object EDCODSUBGRUPO: TColorEditFloat
        Left = 13
        Top = 239
        Width = 55
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        MaxLength = 3
        ParentFont = False
        TabOrder = 6
        Text = '000'
        EditType = fltString
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBSUBGRUPO: TColorEditFloat
        Left = 68
        Top = 239
        Width = 250
        Height = 24
        Color = clSilver
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        MaxLength = 3
        ParentFont = False
        TabOrder = 7
        Text = '0,00'
        EditType = fltString
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnAddSubGrupo: TBitBtn
        Left = 319
        Top = 240
        Width = 22
        Height = 22
        Hint = 'Pressione para localizar um sub grupo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = BtnAddSubGrupoClick
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
  inherited PComunica: TPanel [6]
  end
  inherited PConsulta: TPanel [7]
    Left = 8
    Top = 36
    inherited DBGridCadastroPadrao: TDBGrid
      DataSource = DMServ.DServ
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_SUBGRUPOSERV'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_SERVICO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_GRUPOSERV'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Grade'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APLICACAO'
          Title.Caption = 'Aplica'#231#227'o'
          Visible = False
        end>
    end
  end
end
