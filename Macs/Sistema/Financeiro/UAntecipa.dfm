object frmAntecipa: TfrmAntecipa
  Left = 824
  Top = 146
  Width = 397
  Height = 443
  BorderIcons = [biSystemMenu]
  Caption = 'Antecipa'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PEspecie: TPanel
    Left = 16
    Top = 80
    Width = 350
    Height = 81
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 5
      Width = 70
      Height = 18
      Alignment = taRightJustify
      Caption = 'Esp'#233'cie'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbEspecie: TComboBox
      Left = 2
      Top = 30
      Width = 136
      Height = 29
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = []
      ItemHeight = 21
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = 'Carteira'
      OnChange = cbEspecieChange
      Items.Strings = (
        'Carteira'
        'Banco'
        'Pix'
        'Cheque')
    end
  end
  object PContaCorrente: TPanel
    Left = 153
    Top = 82
    Width = 211
    Height = 81
    BevelWidth = 2
    TabOrder = 1
    object Label2: TLabel
      Left = 2
      Top = 5
      Width = 112
      Height = 16
      Alignment = taRightJustify
      Caption = 'Conta Corrente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgContaCorrente: TDBGrid
      Left = 5
      Top = 24
      Width = 200
      Height = 50
      Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
      Color = 16121836
      Ctl3D = False
      DataSource = DMBANCO.DWCtaCor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMCTACOR'
          Title.Caption = 'Conta'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCBANCO'
          Title.Caption = 'Banco'
          Width = 90
          Visible = True
        end>
    end
  end
  object PBotoes: TPanel
    Left = 16
    Top = 221
    Width = 350
    Height = 70
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      350
      70)
    object BtnCancelar: TSpeedButton
      Left = 2
      Top = 13
      Width = 167
      Height = 38
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 0
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = []
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        F9F9FE6A67F5221CF10E08EF0F09EF100AEF100AEF100AEF100AEF100AEF100A
        EF0F09EF0E08EF221CF16A67F5F9F9FEFFFFFFFFFFFFFFFFFFC4C2FB0000ED04
        00EF0D07EF0F09EF1009EF1009EF1009EF1009EF1009EF1009EF1009EF1009EF
        0F09EF0D07EF0400EF0000EDC4C2FBFFFFFFFAFAFE0000ED0E07EF1009EF1009
        EF1009EF1009EF1009EF1009EF1009EF1009EF1009EF1009EF1009EF1009EF10
        09EF1009EF0E07EF0000EDFAFAFE6D69F50400EE1009EF1009EF1009F00700F1
        0600F00F09EF1009EF1009EF1009EF1009EF0F09EF0700F00800F11009F01009
        EF1009EF0400EE6D69F5231DF00D06EF1009EF1009F10000E44956D55B5FE700
        00EF0F09EF1009EF1009EF0F09EF0000EF5458E54350D60000E41009F11009EF
        0D06EF231DF00E08EF0F09EF100AEF0801F1414DD6FFFFFFFFFFFF8D8FEF0000
        EE0F09EF0F09EF0000EE8D8FEFFFFFFFFFFFFF3B46D60901F1100AEF0F09EF0E
        08EF0F09EF0F09EF0F09EF0801F04043E5FFFFFFFEFEFEFFFFFF8A8CEF0000EE
        0000EE8A8CEEFFFFFFFEFEFEFFFFFF4548E50801F01009EF1009EF0F09EF120C
        EF1C17F00E07EF0F09EF0000F0797BEDFFFFFFFEFEFEFFFFFF7879EE7879EEFF
        FFFFFEFEFEFFFFFF797BED0000F01009EF1009EF1009EF1009EF140EEF2F2AF1
        1812F00D07EF0F09EF0000EE7C7EEDFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFF
        FF7C7DED0000EE0F09EF1009EF1009EF1009EF1009EF1610F03F3AF23732F20F
        08EF0E08EF0F09EF0000EE7072EDFFFFFFFEFEFEFEFEFEFFFFFF7072ED0000EE
        0F09EF1009EF1009EF1009EF1009EF1009EF1812EF504CF34541F33E39F20B05
        EF0E08EF0000EE7072EEFFFFFFFFFFFFFFFFFFFFFFFF7072EE0000EE0F09EF10
        09EF1009EF1009EF1009EF1009EF1A14F0615DF45450F3504CF34844F30000EE
        7B7CEDFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFF7C7DED0000EE0F09EF1009
        EF1009EF1009EF1009EF1C16F0726FF56460F45E5BF44C47F4A1A2F2FFFFFFFE
        FEFEFFFFFF7879EE7879EEFFFFFFFEFEFEFFFFFF797AED0000EF1009EF1009EF
        1009EF1009EF1E17F08481F77370F66965F6878AEEFFFFFFFEFEFEFFFFFF8C8D
        EF0000EE0000EE898BEEFFFFFFFEFEFEFFFFFF484BE60800F01009F01009F00F
        09F01F1AF09592F88380F77A75F79198E7FFFFFFFFFFFFB7B8F4534EF44C47F3
        2721F10000EE8384EEFFFFFFFFFFFF424ED60400F10F09EF0F09EF0E08EF2620
        F1A9A7F99390F78D8AF87F7FF1A1A8E9A5A6F16965F5726FF66F6BF56D69F56A
        66F5443FF38C8FED7781DF2727E7312BF30F09EF0C06EF231DF05C57F4908EF7
        A8A5F99D9AF89894F98E8AF98784F78784F7827EF77D79F67774F6726EF66D69
        F6605BF55C57F65F5AF55D59F43F3AF20000EE6D69F5F6F6FE0000EEC8C6FBB3
        B1FAA8A5F9A29FF99C9AF89794F8918FF78C89F78684F7817EF67C78F67673F6
        716DF56C69F57370F6302BF10000EDFAFAFEFFFFFFBBB9FA0000EE9A97F8CDCC
        FBC4C3FBBEBDFAB8B7FAB3B1FAADAAF9A6A4F9A19EF89A98F89592F8908CF782
        7FF7312CF10000ECC4C2FBFFFFFFFFFFFFFFFFFFF5F4FE5954F41A14F01711F0
        1711F01711F01710F01610F01610F01610F01610F0150FF0140EF01610F06461
        F5F9F9FEFFFFFFFFFFFF}
      ParentFont = False
      OnClick = BtnCancelarClick
    end
    object BtnFinalizarAntecipacao: TSpeedButton
      Left = 176
      Top = 13
      Width = 167
      Height = 38
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Finalizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 0
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = []
      Glyph.Data = {
        8E050000424D8E05000000000000360000002800000017000000130000000100
        18000000000058050000465C0000465C00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCECD8ACE1C0A5DEBAB4E3C6DFF2E7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFF9FCFB72CB9525B15B27B35D27B25D27B25D
        27B25D26B25C33B666A0DCB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFBFE7CF26B15B2CB46128B35E69
        C88E99DAB3A4DEBA8ED6AA51C07C25B25C2AB35F41BB70FCFDFDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFBAE4CA22B05927B2
        5D7CCF9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F6EE50BF7A2CB46030
        B564FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFEEF8F2
        23B15A26B25DB4E3C7FFFFFFFFFFFFFFFFFFF5FBF8BEE7CEFFFFFFFFFFFFFFFF
        FFFFFFFF6DCA912CB4604ABE77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFF58C2812CB4618DD5A9FFFFFFFFFFFFFFFFFFFFFFFF36B66821B058
        8AD3A6FFFFFFFFFFFFFFFFFFFFFFFF4ABD7727B35DB5E3C7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000F0F8F424B15A33B666FFFFFFFFFFFFFFFFFFFFFFFF8C
        D4A831B6653DBA6D28B35E9CDAB4FFFFFFFFFFFFFFFFFFDAF1E326B25D48BD76
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ABE0C028B35E8BD5A8FFFFFFFFFF
        FFFFFFFFD5EFE025B15B39B96A3BB96C38B86926B25CA2DCB9FFFFFFFFFFFFFF
        FFFF3DB96D22B15AF9FCFAFFFFFFFFFFFFFFFFFFFFFFFF00000086D3A427B25D
        C3E9D2FFFFFFFFFFFFFAFCFB2CB36038B86943BB72FFFFFF53C17E34B76627B2
        5D99D9B3FFFFFFFFFFFF6CCB9127B25CCBEBD8FFFFFFFFFFFFFFFFFFFFFFFF00
        000078CF9A27B25DD6EFE0FFFFFFFFFFFF3CB86C37B86929B35EF8FCFAFFFFFF
        FFFFFF53C07E33B76629B35F84D2A3FFFFFFB1E2C513AB4EBCE6CDFFFFFFFFFF
        FFFFFFFFFFFFFF00000083D2A227B25DC7EAD5FFFFFFFFFFFF4BBE781AAD53D9
        F0E2FFFFFFFFFFFFFFFFFFFFFFFF5DC4852FB6642DB56265C78BFFFFFFC5E9D4
        C1E8D1FFFFFFFFFFFFFFFFFFFFFFFF000000A6DEBC28B35E95D8AFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73CB962AB46033
        B76642BB72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E7F5EC25B25B
        3BB86CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF9BDAB424B15A38B86A29B35EBAE5CCFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFF4BBE782BB460A4DDBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEF3E72CB46036B8682AB35F5FC587F7FB
        FAFFFFFFFFFFFF000000FFFFFFDFF3E622B05926B25CD3EEDFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DC99186D3A5FFFFFF5AC383
        2AB45F36B86826B25C7ACE9BFFFEFF000000FFFFFFFFFFFF9EDBB625B25C27B2
        5C9CDBB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFC5BC3842CB4611D
        AE55E6F5ECFFFFFFB9E5CB31B56430B66428B35D7ED09E000000FFFFFFFFFFFF
        FFFFFFA1DCB822B0592BB46034B66785D2A4B3E3C7BFE7CFA8DFBD69C98F26B2
        5D2CB46131B564EAF7EFFFFFFFFFFFFFFFFFFFFFFFFF9EDBB646BC73D6EFE000
        0000FFFFFFFFFFFFFFFFFFFFFFFFE4F4EB54C17F24B15B28B35E27B25D27B25D
        27B35D28B35E26B25D82D1A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F9F5B3
        E3C693D8AF8CD5A99CDBB5C5E9D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      ParentFont = False
      OnClick = BtnFinalizarAntecipacaoClick
    end
  end
  object Panel1: TPanel
    Left = 15
    Top = 10
    Width = 350
    Height = 70
    BevelOuter = bvNone
    Color = clActiveCaption
    TabOrder = 3
    object Label6: TLabel
      Left = 5
      Top = 12
      Width = 70
      Height = 20
      Alignment = taCenter
      Caption = 'Opera'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblTipoServico: TLabel
      Left = 80
      Top = 12
      Width = 119
      Height = 20
      Alignment = taCenter
      Caption = 'Ordem de Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 259
      Top = 12
      Width = 18
      Height = 20
      Alignment = taCenter
      Caption = 'N'#176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblNumero: TLabel
      Left = 282
      Top = 12
      Width = 64
      Height = 20
      Alignment = taCenter
      Caption = '00000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 5
      Top = 37
      Width = 52
      Height = 20
      Alignment = taCenter
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblNomeCliente: TLabel
      Left = 80
      Top = 37
      Width = 119
      Height = 20
      Alignment = taCenter
      Caption = 'Ordem de Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 16
    Top = 165
    Width = 350
    Height = 52
    BevelOuter = bvNone
    TabOrder = 4
    object Label3: TLabel
      Left = 4
      Top = 17
      Width = 66
      Height = 21
      Alignment = taRightJustify
      Caption = 'Valor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
  end
  object edValorAntecipacao: TFloatEdit
    Left = 92
    Top = 176
    Width = 265
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Text = '0,00'
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
end
