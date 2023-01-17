inherited FExpImpXML: TFExpImpXML
  Left = 212
  Top = 135
  Caption = 'FExpImpXML'
  ClientHeight = 437
  ClientWidth = 682
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Top = 96
  end
  object PagePrincipal: TPageControl
    Left = 8
    Top = 8
    Width = 665
    Height = 417
    ActivePage = TabSheet1
    MultiLine = True
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Exportar'
      object PageExportacao: TPageControl
        Left = 0
        Top = 0
        Width = 657
        Height = 376
        ActivePage = TabVenda
        TabOrder = 0
        object TabVenda: TTabSheet
          Caption = 'Pedidos de Venda'
          object rgFiltro: TcxRadioGroup
            Left = 5
            Top = 0
            Width = 185
            Height = 36
            Alignment = alTopLeft
            Caption = 'Filtrar'
            ItemIndex = 0
            ParentColor = False
            ParentCtl3D = False
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = 'ABERTAS'
                Tag = 0
              end
              item
                Caption = 'FECHADAS'
                Tag = 0
              end>
            Style.Color = 16711164
            TabOrder = 0
            Ctl3D = False
            OnClick = rgFiltroClick
          end
          object cxGrid1: TcxGrid
            Left = 8
            Top = 40
            Width = 630
            Height = 312
            TabOrder = 1
            object cxGrid1DBTableView1: TcxGridDBTableView
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  FieldName = 'VALOR'
                  Column = cxGrid1DBTableView1DBColumn4
                end>
              DataController.Summary.SummaryGroups = <>
              NavigatorButtons.ConfirmDelete = False
              OptionsSelection.CellSelect = False
              OptionsSelection.HideSelection = True
              object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
                Caption = 'N. Ped.'
                Options.Editing = False
                Options.Filtering = False
                Width = 57
                DataBinding.FieldName = 'NUMPED'
              end
              object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
                Caption = 'Cliente'
                Options.Editing = False
                Options.Filtering = False
                SortOrder = soAscending
                Width = 216
                DataBinding.FieldName = 'NOMECLI'
              end
              object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
                Caption = 'Data'
                Options.Editing = False
                Options.Filtering = False
                Width = 99
                DataBinding.FieldName = 'DTPEDVEN'
              end
              object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
                Caption = 'Valor'
                Options.Editing = False
                Options.Filtering = False
                Width = 81
                DataBinding.FieldName = 'VALOR'
              end
              object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
                Caption = 'Pagamento'
                Options.Editing = False
                Options.Filtering = False
                Width = 156
                DataBinding.FieldName = 'FORMPAG'
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object btnExportar: TBitBtn
            Left = 520
            Top = 8
            Width = 115
            Height = 25
            Caption = 'EXPORTAR'
            TabOrder = 2
            OnClick = btnExportaraClick
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
            Layout = blGlyphRight
            NumGlyphs = 2
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Importar'
      ImageIndex = 1
      object PageImportacao: TPageControl
        Left = 0
        Top = 0
        Width = 657
        Height = 393
        ActivePage = tbPedidoVenda
        TabOrder = 0
        object tbPedidoVenda: TTabSheet
          Caption = 'Pedidos de Venda'
          object Label1: TLabel
            Left = 8
            Top = 0
            Width = 64
            Height = 13
            Caption = 'Arquivo XML:'
          end
          object edUrl: TEdit
            Left = 8
            Top = 16
            Width = 385
            Height = 19
            BevelOuter = bvRaised
            Color = 12713983
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object PImportaPV: TPanel
            Left = 2
            Top = 52
            Width = 642
            Height = 310
            BorderStyle = bsSingle
            Ctl3D = False
            ParentBackground = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
            object Label2: TLabel
              Left = 11
              Top = 14
              Width = 44
              Height = 16
              Caption = 'Cliente:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 11
              Top = 40
              Width = 69
              Height = 16
              Caption = 'Pagamento:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton1: TSpeedButton
              Left = 18
              Top = 279
              Width = 28
              Height = 22
              Cursor = crHandPoint
              Caption = '|<<'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial Black'
              Font.Style = []
              Layout = blGlyphRight
              ParentFont = False
              OnClick = SpeedButton1Click
            end
            object Label5: TLabel
              Left = 11
              Top = 64
              Width = 88
              Height = 16
              Caption = 'Total Produtos:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton2: TSpeedButton
              Left = 51
              Top = 279
              Width = 28
              Height = 22
              Cursor = crHandPoint
              Caption = '<'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial Black'
              Font.Style = []
              Layout = blGlyphRight
              ParentFont = False
              OnClick = SpeedButton2Click
            end
            object SpeedButton3: TSpeedButton
              Left = 84
              Top = 279
              Width = 28
              Height = 22
              Cursor = crHandPoint
              Caption = '>'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial Black'
              Font.Style = []
              Layout = blGlyphRight
              ParentFont = False
              OnClick = SpeedButton3Click
            end
            object SpeedButton4: TSpeedButton
              Left = 117
              Top = 279
              Width = 28
              Height = 22
              Cursor = crHandPoint
              Caption = '>>|'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial Black'
              Font.Style = []
              Layout = blGlyphRight
              ParentFont = False
              OnClick = SpeedButton4Click
            end
            object Label10: TLabel
              Left = 195
              Top = 69
              Width = 68
              Height = 16
              Caption = 'Valor Total:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object edNomeCliente: TEdit
              Left = 105
              Top = 11
              Width = 425
              Height = 24
              BevelInner = bvNone
              BevelOuter = bvSpace
              Color = 16708845
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object edPagamento: TEdit
              Left = 105
              Top = 38
              Width = 313
              Height = 24
              BevelInner = bvNone
              BevelOuter = bvSpace
              Color = 16708845
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object edTotalProdutos: TEdit
              Left = 105
              Top = 64
              Width = 51
              Height = 24
              BevelInner = bvNone
              BevelOuter = bvSpace
              Color = 15527167
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object gbProdutos: TGroupBox
              Left = -1
              Top = 97
              Width = 642
              Height = 171
              Caption = 'Produtos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              object Label4: TLabel
                Left = 15
                Top = 29
                Width = 60
                Height = 16
                Caption = 'Descri'#231#227'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label6: TLabel
                Left = 15
                Top = 56
                Width = 70
                Height = 16
                Caption = 'Quantidade:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 15
                Top = 87
                Width = 83
                Height = 16
                Caption = 'Valor Unit'#225'rio:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 15
                Top = 114
                Width = 91
                Height = 16
                Caption = 'Valor Desconto:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 16
                Top = 142
                Width = 68
                Height = 16
                Caption = 'Valor Total:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edDescricaoProduto: TEdit
                Left = 130
                Top = 27
                Width = 463
                Height = 24
                BevelInner = bvNone
                BevelOuter = bvSpace
                Color = 16708845
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                Text = 'Edit1'
              end
              object edValorDesconto: TEdit
                Left = 130
                Top = 111
                Width = 73
                Height = 24
                BevelInner = bvNone
                BevelOuter = bvSpace
                BiDiMode = bdRightToLeft
                Color = 15269855
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentBiDiMode = False
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
                Text = 'edValorDesconto'
              end
              object edQntProduto: TEdit
                Left = 130
                Top = 54
                Width = 71
                Height = 24
                BevelInner = bvNone
                BevelOuter = bvSpace
                BiDiMode = bdRightToLeft
                Color = 15527167
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentBiDiMode = False
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
                Text = 'Edit1'
              end
              object edValorUnitario: TEdit
                Left = 130
                Top = 83
                Width = 73
                Height = 24
                BevelInner = bvNone
                BevelOuter = bvSpace
                BiDiMode = bdRightToLeft
                Color = 15269855
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentBiDiMode = False
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
                Text = 'Edit1'
              end
              object edValorTotal: TEdit
                Left = 130
                Top = 139
                Width = 73
                Height = 24
                BevelInner = bvNone
                BevelOuter = bvSpace
                BiDiMode = bdRightToLeft
                Color = 15269855
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentBiDiMode = False
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 4
                Text = 'edValorTotal'
              end
            end
            object edValorTotalVenda: TEdit
              Left = 274
              Top = 64
              Width = 103
              Height = 24
              BevelInner = bvNone
              BevelOuter = bvSpace
              BiDiMode = bdRightToLeft
              Color = 15269855
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
              Text = 'edValorTotalVenda'
            end
            object btnImportarPedVenda: TBitBtn
              Left = 495
              Top = 275
              Width = 114
              Height = 25
              Caption = 'IMPORTAR'
              TabOrder = 5
              OnClick = btnImportarPedVendaClick
              Glyph.Data = {
                06030000424D060300000000000036000000280000000F0000000F0000000100
                180000000000D002000000000000000000000000000000000000EFEBEFEFEBEF
                EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEB
                EFEFEBEFEFEBEF000000EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEF
                EBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEF000000EFEBEFEFEBEF
                6361636B696B636163636163EFEBEFEFEBEFEFEBEF6361636B6163636163EFEB
                EFEFEBEFEFEBEF000000EFEBEF6B61639C86848471736B61637B797B6B6163EF
                EBEF6B6163CEAEADA58E8C8471736B696BEFEBEFEFEBEF000000EFEBEF636163
                DEDFDED6BEBDBD9694847173636163EFEBEF6B696BD6C7C6CEB6B5BD96949C71
                73636163EFEBEF000000EFEBEFEFEBEFBDA6A5D6AEADB586849C86849CA6946B
                6163CEC7C6D6C7C6C69694C69694A58E8C636163EFEBEF000000EFEBEFBDA6A5
                F7C77BD69694DEAE843971395238316B51529C965AD6A6A5CE696B94696B7371
                73EFEBEFEFEBEF000000EFEBEFBDA6A5FFBE4AE7AE42D6A64A31613139A62152
                3831735118BD8E31DEAE84B586846B6163EFEBEFEFEBEF000000EFEBEFBDA6A5
                FFCF6B31613139A62139713921C74A08A618524110735118BD8E31F7AE42BD8E
                31636163EFEBEF000000EFEBEFBDA6A5FFE7943971394AE77B31D76B21BE4A18
                B63110AE21524110A57942E7B663C67973636163EFEBEF000000EFEBEFBDA6A5
                EFE7BD3161315AF78C4AE77B31D76B21BE4A18B631009E00D6BE84F7C77B9C96
                5A6B6163EFEBEF000000EFEBEFEFEBEFBDA6A539713939A62139A621009E0031
                D76B009E00D6BE84F7DF9CFFE794636163EFEBEFEFEBEF000000EFEBEFEFEBEF
                EFEBEFEFEBEFEFEBEFEFEBEF009E00009E009C8684BDA6A5BDA6A5E7CFA56361
                63EFEBEFEFEBEF000000EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEF009E00EF
                EBEFEFEBEFEFEBEFEFEBEFBDA6A5BDA6A5EFEBEFEFEBEF000000EFEBEFEFEBEF
                EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEB
                EFEFEBEFEFEBEF000000}
              Layout = blGlyphRight
            end
          end
          object btnAbrir: TBitBtn
            Left = 514
            Top = 11
            Width = 92
            Height = 25
            Caption = 'ABRIR'
            TabOrder = 2
            OnClick = btnAbriraClick
            Glyph.Data = {
              E6010000424DE601000000000000360000002800000010000000090000000100
              180000000000B001000000000000000000000000000000000000C0C0C0948E8E
              7B73737B73737B73737B73737B73737B73737B73737B73737B73737B73737B73
              737B73739F9999C0C0C0A29B9B5E5959B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4
              AFB0B4AFB0B4AFB0B4AFB0B4AFB097C6A5B4AFB05E5959A29B9B7B7373B4AFB0
              D8D6D5E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D87975753DB1
              625F5C5CB4AFB07B73737B7373B4AFB0D8D6D5E5D9D8E5D9D8E5D9D8E5D9D8E5
              D9D8E5D9D8E5D9D8E5D9D8618E6E0AEA54545151B4AFB07B73737B7373BDB8B9
              D8D6D5E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D879757531C0
              60646563B5B0B17B73737B7373C4BFBFD8D6D5FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC9F7D9D9D6D6C6C2C17B7373CECBCBBCB8B8
              B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B5B0
              B1B4AFB0BCB8B8CECBCBC0C0C0E7E6E6D7D5D4C9C6C5E1E0E1EBEBEDEDEDEFED
              EDEFEDEDEFEDEDEFECECEEDFDEDFC9C6C5D7D5D4E7E6E6C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0DDDBDBD4D2D1CFCDCCCFCDCCCFCDCCCFCDCCD6D4D3DDDBDBC0C0
              C0C0C0C0C0C0C0C0C0C0}
            Layout = blGlyphRight
          end
          object btnProcurar: TBitBtn
            Left = 398
            Top = 16
            Width = 30
            Height = 20
            TabOrder = 3
            OnClick = btnProcurarASClick
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
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'XML|*.xml'
    InitialDir = '%USERPROFILE%\Meus documentos'
    Title = 'Abrir'
    Left = 568
    Top = 65520
  end
  object SaveDialog1: TSaveDialog
    InitialDir = '%USERPROFILE%\Meus documentos'
    Left = 600
    Top = 65520
  end
  object xmlExporta: TXMLDocument
    Left = 628
    Top = 16
    DOMVendorDesc = 'MSXML'
  end
end
