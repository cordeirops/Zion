unit UOrdemMec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDropDownEdit,
  TFlatEditUnit, cxGroupBox, Grids, DBGrids, EditFloat, ColorEditFloat,
  Mask, DBCtrls, DBColorEdit, cxCheckBox, UFrmBusca, ComCtrls, Menus,
  ColorMaskEdit, cxGraphics, IBQuery, DB, Ibdatabase, FashionPanel, DateUtils,
  FR_Class, FR_DSet, FR_DBSet, UInfoClienteEquip, ClipBrd, FR_Shape, UCadPlaca,
  QRCtrls, QuickRpt, TransBtn, RpDefine, RpBase, RpSystem, RpRave,
  RpRender, RpRenderRTF, AppEvnts, ActnList, ImgList;

type
  TFOrdemMec = class(TFPadrao)
    PConsulta: TPanel;
    PBotoesConsulta: TPanel;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnRelatorio: TBitBtn;
    BtnFiltrar: TBitBtn;
    CBORDEM: TcxComboBox;
    EDCliente1: TFlatEdit;
    EDNum: TFlatEdit;
    EDBox: TFlatEdit;
    MEPLACA: TFlatEdit;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    CBFILTRO: TcxComboBox;
    GBPLACA: TcxGroupBox;
    DBGridConsulta: TDBGrid;
    PCadastro: TPanel;
    PTOPCADASTRO: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    DBNumOrd: TDBColorEdit;
    EdValorOrd: TColorEditFloat;
    BtnDadosAdic: TBitBtn;
    GBPRINCIPALCADASTRO: TcxGroupBox;
    FrmCliente: TFrmBusca;
    FBEquipPlaca: TFrmBusca;
    LBox: TLabel;
    CBGarantia: TcxCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BtnProcProd: TBitBtn;
    Label18: TLabel;
    EDQuantidade: TColorEditFloat;
    Label20: TLabel;
    EDDesc: TColorEditFloat;
    Label19: TLabel;
    EDValUnit: TColorEditFloat;
    Label21: TLabel;
    EDTotal: TColorEditFloat;
    BtnInsertProd: TBitBtn;
    BtnDeleteProd: TBitBtn;
    PPesquisaProduto: TPopupMenu;
    CdigodeBarra1: TMenuItem;
    ControleInterno1: TMenuItem;
    Descrio1: TMenuItem;
    CdigoFabricante1: TMenuItem;
    DBGrid2: TDBGrid;
    cxGroupBox3: TcxGroupBox;
    Label60: TLabel;
    EDesricaoServico: TEdit;
    Label64: TLabel;
    ETotalServItem: TColorEditFloat;
    BtnInserir: TBitBtn;
    BBExcluir: TBitBtn;
    FrmEquipe: TFrmBusca;
    Label62: TLabel;
    Label61: TLabel;
    Label63: TLabel;
    EValorServ: TColorEditFloat;
    EQtdServ: TColorEditFloat;
    EDescServ: TColorEditFloat;
    cxGroupBox4: TcxGroupBox;
    DBGrid4: TDBGrid;
    Label42: TLabel;
    EdDescTProd: TColorEditFloat;
    EdtotalProd: TColorEditFloat;
    Label31: TLabel;
    EdDescTServ: TColorEditFloat;
    Label41: TLabel;
    EdTotalserv: TColorEditFloat;
    Label32: TLabel;
    EdTotDesp: TColorEditFloat;
    Label26: TLabel;
    EdDescTOrdem: TColorEditFloat;
    Label40: TLabel;
    EdTotalOrd: TColorEditFloat;
    Label34: TLabel;
    LEstoque: TLabel;
    LSaldoEstoque: TLabel;
    LProduto: TLabel;
    LLocal: TLabel;
    Label1: TLabel;
    PPrecos: TPanel;
    FashionPanel3: TFashionPanel;
    Label73: TLabel;
    Label74: TLabel;
    Label59: TLabel;
    Label71: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    EdVlrVarejoVista: TColorEditFloat;
    EdVlrVarejoPrazo: TColorEditFloat;
    EdVlrAtacadoVista: TColorEditFloat;
    EdVlrAtacadoPrazo: TColorEditFloat;
    PRemoverProduto: TPopupMenu;
    RemoverProduto1: TMenuItem;
    RemoverTudo1: TMenuItem;
    PRemoverServico: TPopupMenu;
    RemoverServio1: TMenuItem;
    RemoverTudo2: TMenuItem;
    PPesquisa: TPanel;
    DBGridPesquisa: TDBGrid;
    PmRelatorio: TPopupMenu;
    CompdeAbertura1: TMenuItem;
    Garantia1: TMenuItem;
    FSDSServ: TfrDBDataSet;
    FSDSDesp: TfrDBDataSet;
    FSDSRel: TfrDBDataSet;
    PFinanceiro: TPanel;
    FPFinanceiro: TFashionPanel;
    Label25: TLabel;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    CBPagamento: TComboBox;
    FrmConta: TFrmBusca;
    FrmFormPag: TFrmBusca;
    FrmContaServ: TFrmBusca;
    Panel7: TPanel;
    LTextoBusca: TLabel;
    EdDtFech: TColorMaskEdit;
    CBGeraFinanceiro: TCheckBox;
    PBanco: TPanel;
    Label115: TLabel;
    DBGCTA: TDBGrid;
    PGrid: TPopupMenu;
    NovaOS1: TMenuItem;
    ApagarOS1: TMenuItem;
    Consultar1: TMenuItem;
    BtnCancelamentos: TBitBtn;
    ReeimprimirNF1: TMenuItem;
    N2: TMenuItem;
    ExportarPedido1: TMenuItem;
    PExp: TPanel;
    PBExport: TProgressBar;
    CancelarFechamento2: TMenuItem;
    PMCancelamento: TPopupMenu;
    CancelarFechamento3: TMenuItem;
    N4: TMenuItem;
    LBCONEXAO: TLabel;
    PInfoCliente: TFInfoClienteEquip;
    Label5: TLabel;
    MObs: TMemo;
    Cancelar1: TMenuItem;
    Equipamentos1: TMenuItem;
    CommesmoCliente1: TMenuItem;
    FDSRelTeste: TfrDBDataSet;
    Verificar1: TMenuItem;
    fsteste: TfrReport;
    RelatriosdeOrdens1: TMenuItem;
    frShapeObject1: TfrShapeObject;
    EdFiscal: TFlatEdit;
    DBKM: TDBColorEdit;
    LBKM: TLabel;
    lbNumFrota: TLabel;
    PListaProdutos: TPanel;
    DBGrid1: TDBGrid;
    BitBtn8: TBitBtn;
    BtnFechaPed: TBitBtn;
    QRDUPLICATA: TQuickRep;
    QRIMPDUPLICATA: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape6: TQRShape;
    QRLabel15: TQRLabel;
    QRShape7: TQRShape;
    QRLabel16: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRLabel7: TQRLabel;
    QRRODAPEDUPLICATA: TQRDBRichText;
    QRShape8: TQRShape;
    QRLabel17: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRDBText16: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel24: TQRLabel;
    QRShape16: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel27: TQRLabel;
    QRDBText20: TQRDBText;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape2: TQRShape;
    QRLabel28: TQRLabel;
    QRShape4: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel30: TQRLabel;
    QRShape21: TQRShape;
    QRLabel29: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape22: TQRShape;
    QRLabel31: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape23: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape1: TQRShape;
    ImgLogo: TImage;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape9: TQRShape;
    Duplicata1: TMenuItem;
    Fsrel: TfrReport;
    QRDBText26: TQRDBText;
    QrshapeImage: TQRShape;
    QrImageLogo: TQRImage;
    CBVENDABALCAO: TCheckBox;
    QRShape3: TQRShape;
    QrImageLogo02: TQRImage;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText39: TQRDBText;
    QRShape35: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape36: TQRShape;
    QRLabel48: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRDBText45: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText48: TQRDBText;
    QRLabel55: TQRLabel;
    QRShape37: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRDBText49: TQRDBText;
    QRShape38: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRDBRichText3: TQRDBRichText;
    QRSysData2: TQRSysData;
    BtnLiberaExporta: TBitBtn;
    N5: TMenuItem;
    Vendas1: TMenuItem;
    OrdporSubstituioTributria1: TMenuItem;
    BitBtn1: TBitBtn;
    QRLabel60: TQRLabel;
    QRDBText50: TQRDBText;
    QRLabel61: TQRLabel;
    QRDBText51: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel5: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText55: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText54: TQRDBText;
    FSDSTmp: TfrDBDataSet;
    PValidacoesFiscais: TPopupMenu;
    Valida1: TMenuItem;
    PInterfaceValidacoes: TPanel;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    EDUltNota: TColorMaskEdit;
    EDProxNota: TColorMaskEdit;
    MBrechas: TMemo;
    Button2: TButton;
    MDuplicados: TMemo;
    Label4: TLabel;
    Label7: TLabel;
    BRastrear: TButton;
    EDataInicial: TColorMaskEdit;
    EDataFinal: TColorMaskEdit;
    Label8: TLabel;
    Label9: TLabel;
    PCadastroRapido: TPanel;
    edNome: TColorMaskEdit;
    Label10: TLabel;
    cbConsumidor: TCheckBox;
    CheckBox1: TCheckBox;
    RGTIPO: TRadioGroup;
    edCNPJCPF: TColorMaskEdit;
    Label11: TLabel;
    edPlaca: TColorMaskEdit;
    Label12: TLabel;
    edModelo: TColorMaskEdit;
    Label13: TLabel;
    edFone: TColorMaskEdit;
    Label14: TLabel;
    FrmCidade: TFrmBusca;
    edNumFrota: TColorMaskEdit;
    Label15: TLabel;
    btnConfirmar: TBitBtn;
    Panel1: TPanel;
    TransparentButton1: TTransparentButton;
    EspelhoNotaFiscal1: TMenuItem;
    frDBDataSet1: TfrDBDataSet;
    fsdsrel3: TfrDBDataSet;
    SintticodeOrdens1: TMenuItem;
    AnalticodeOrdens1: TMenuItem;
    ServiosPorEquipe1: TMenuItem;
    LCst: TLabel;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    EdObsFinanceira: TEdit;
    FSDSBanco: TfrDBDataSet;
    ServiosporEquipecomFrota1: TMenuItem;
    MObsOrdem: TMemo;
    Label16: TLabel;
    EfetuarDevoluodeNotaFiscal1: TMenuItem;
    ConsultasNotaFiscalEletrnica1: TMenuItem;
    VisualizarDanfe1: TMenuItem;
    VisualizarnoSefaz1: TMenuItem;
    ConsultarStatusNFe1: TMenuItem;
    N9: TMenuItem;
    RecuperarDados1: TMenuItem;
    VerificarServidorSefaz1: TMenuItem;
    N10: TMenuItem;
    ListaNfe1: TMenuItem;
    CancelarNFe1: TMenuItem;
    RelatriodeDanfes1: TMenuItem;
    LEmissor: TLabel;
    NotaFiscalEletrnica1: TMenuItem;
    InutilizarNumerao1: TMenuItem;
    NOTAFISCALFORMULRIO2: TMenuItem;
    N11: TMenuItem;
    NFeNF1: TMenuItem;
    N12: TMenuItem;
    GeraNFeDistribuio1: TMenuItem;
    SalvarXMLDistribuio1: TMenuItem;
    FSDSFinan: TfrDBDataSet;
    FrmFormPag1: TFrmBusca;
    RelatriodeOrdenseProdutos1: TMenuItem;
    cbTerceiros: TCheckBox;
    edCustoTerceiros: TColorEditFloat;
    Label23: TLabel;
    RelatriodeOrdenseServios1: TMenuItem;
    lbComissaoServ: TLabel;
    Label27: TLabel;
    RvSystem1: TRvSystem;
    N1: TMenuItem;
    GerarXMLporPerodo1: TMenuItem;
    CartasdeCorreo1: TMenuItem;
    ICMSIndevido1: TMenuItem;
    QrAbertOrdem13: TQuickRep;
    QRBand11: TQRBand;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRDBText104: TQRDBText;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText68: TQRDBText;
    QRSysData5: TQRSysData;
    QRShape46: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRDBText79: TQRDBText;
    QRLabel73: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRShape43: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape58: TQRShape;
    BandProd: TQRSubDetail;
    QRDBText65: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape63: TQRShape;
    QRDBText80: TQRDBText;
    BandServ: TQRSubDetail;
    QRDBText69: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    GroupFooterBand1: TQRBand;
    BandFinal: TQRBand;
    QRLabel89: TQRLabel;
    QRDBText76: TQRDBText;
    QRDBText83: TQRDBText;
    QRLTotalFinalOrdem: TQRLabel;
    QRShape45: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape44: TQRShape;
    QRLabel72: TQRLabel;
    QRDBText70: TQRDBText;
    QRShape53: TQRShape;
    QRBand1: TQRBand;
    ProdutoseServios1: TMenuItem;
    QrAbertOrdem14MeiaPagina: TQuickRep;
    QRBand3: TQRBand;
    QRLabel71: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRDBText81: TQRDBText;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRDBText82: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRSysData6: TQRSysData;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape54: TQRShape;
    QRDBText95: TQRDBText;
    QRLabel93: TQRLabel;
    QRSysData7: TQRSysData;
    QRBand4: TQRBand;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape72: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText96: TQRDBText;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRDBText101: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRDBText105: TQRDBText;
    QRDBText106: TQRDBText;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRBand5: TQRBand;
    QRBand6: TQRBand;
    QRLabel100: TQRLabel;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRLTotalFinalOrdem14MeiaPagina: TQRLabel;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRLabel102: TQRLabel;
    QRDBText109: TQRDBText;
    QRShape86: TQRShape;
    QRBand7: TQRBand;
    QRDBRichText4: TQRDBRichText;
    QrObs14MeiaPagina: TQRRichText;
    QRLabel88: TQRLabel;
    QrAbertOrdem14Completo: TQuickRep;
    QRBand8: TQRBand;
    QRLabel101: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRDBText110: TQRDBText;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    QRDBText115: TQRDBText;
    QRDBText116: TQRDBText;
    QRDBText117: TQRDBText;
    QRDBText118: TQRDBText;
    QRDBText119: TQRDBText;
    QRDBText120: TQRDBText;
    QRDBText121: TQRDBText;
    QRDBText122: TQRDBText;
    QRSysData8: TQRSysData;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRDBText123: TQRDBText;
    QRLabel121: TQRLabel;
    QRSysData9: TQRSysData;
    QRDBRichText5: TQRDBRichText;
    QrObs14PaginaCompleta: TQRRichText;
    QRLabel122: TQRLabel;
    QRBand9: TQRBand;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRSubDetail3: TQRSubDetail;
    QRDBText124: TQRDBText;
    QRDBText125: TQRDBText;
    QRDBText126: TQRDBText;
    QRDBText127: TQRDBText;
    QRDBText128: TQRDBText;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRDBText129: TQRDBText;
    QRSubDetail4: TQRSubDetail;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRDBText132: TQRDBText;
    QRDBText133: TQRDBText;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRBand10: TQRBand;
    QRBand12: TQRBand;
    QRLabel129: TQRLabel;
    QRDBText134: TQRDBText;
    QRDBText135: TQRDBText;
    QRLTotalFinalOrdem14PaginaCompleta: TQRLabel;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRLabel131: TQRLabel;
    QRDBText136: TQRDBText;
    QRShape108: TQRShape;
    QRBand13: TQRBand;
    RecuperareEnviarXMLdeCancelamento1: TMenuItem;
    QRLabel130: TQRLabel;
    QRLabel132: TQRLabel;
    QrlDescontoOrdem14MeiaPagina: TQRLabel;
    QrlDescontoOrdem14PaginaToda: TQRLabel;
    QrAbertOrdem15MeiaPagina: TQuickRep;
    QRBand14: TQRBand;
    QRLabel134: TQRLabel;
    QRLabel138: TQRLabel;
    QRDBText137: TQRDBText;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel144: TQRLabel;
    QRDBText138: TQRDBText;
    QRDBText139: TQRDBText;
    QRDBText140: TQRDBText;
    QRDBText141: TQRDBText;
    QRDBText143: TQRDBText;
    QRDBText144: TQRDBText;
    QRDBText145: TQRDBText;
    QRDBText146: TQRDBText;
    QRDBText148: TQRDBText;
    QRDBText149: TQRDBText;
    QRSysData10: TQRSysData;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRDBText150: TQRDBText;
    QrObs15MeiaPagina: TQRRichText;
    QRLabel147: TQRLabel;
    QRBand15: TQRBand;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRSubDetail5: TQRSubDetail;
    QRDBText151: TQRDBText;
    QRDBText152: TQRDBText;
    QRDBText153: TQRDBText;
    QRDBText154: TQRDBText;
    QRDBText155: TQRDBText;
    QRShape117: TQRShape;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRDBText156: TQRDBText;
    QRSubDetail6: TQRSubDetail;
    QRDBText157: TQRDBText;
    QRDBText158: TQRDBText;
    QRDBText159: TQRDBText;
    QRDBText160: TQRDBText;
    QRShape122: TQRShape;
    QRShape123: TQRShape;
    QRShape125: TQRShape;
    QRBand16: TQRBand;
    QRBand17: TQRBand;
    QRLabel154: TQRLabel;
    QRDBText161: TQRDBText;
    QRDBText162: TQRDBText;
    QRLTotalFinalOrdem15MeiaPagina: TQRLabel;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape129: TQRShape;
    QRLabel156: TQRLabel;
    QRDBText163: TQRDBText;
    QRShape130: TQRShape;
    QRLabel157: TQRLabel;
    QrlDescontoOrdem15MeiaPagina: TQRLabel;
    QRLabel145: TQRLabel;
    QRDBText142: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRDBRichText8: TQRDBRichText;
    QRDBText191: TQRDBText;
    QRDBText192: TQRDBText;
    QRDBText194: TQRDBText;
    QRShape57: TQRShape;
    QRLEquipe: TQRLabel;
    QRLabel70: TQRLabel;
    DBBox: TColorMaskEdit;
    EdContatoCliente: TColorMaskEdit;
    QuickRep1: TQuickRep;
    QRBand24: TQRBand;
    QRLabel137: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRLabel186: TQRLabel;
    QRDBText75: TQRDBText;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel190: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRDBText193: TQRDBText;
    QRDBText195: TQRDBText;
    QRDBText196: TQRDBText;
    QRDBText197: TQRDBText;
    QRDBText198: TQRDBText;
    QRDBText199: TQRDBText;
    QRDBText200: TQRDBText;
    QRDBText201: TQRDBText;
    QRDBText202: TQRDBText;
    QRDBText203: TQRDBText;
    QRDBText204: TQRDBText;
    QRDBText205: TQRDBText;
    QRSysData11: TQRSysData;
    QRShape62: TQRShape;
    QRShape153: TQRShape;
    QRShape154: TQRShape;
    QRDBText206: TQRDBText;
    QRLabel195: TQRLabel;
    QRSysData14: TQRSysData;
    QRBand25: TQRBand;
    QRLabel196: TQRLabel;
    QRLabel197: TQRLabel;
    QRLabel198: TQRLabel;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRShape155: TQRShape;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRShape158: TQRShape;
    QRLabel201: TQRLabel;
    QRSubDetail9: TQRSubDetail;
    QRDBText207: TQRDBText;
    QRDBText208: TQRDBText;
    QRDBText209: TQRDBText;
    QRDBText210: TQRDBText;
    QRShape159: TQRShape;
    QRShape160: TQRShape;
    QRShape161: TQRShape;
    QRShape162: TQRShape;
    QRDBText211: TQRDBText;
    QRSubDetail10: TQRSubDetail;
    QRDBText212: TQRDBText;
    QRDBText213: TQRDBText;
    QRDBText214: TQRDBText;
    QRDBText215: TQRDBText;
    QRShape163: TQRShape;
    QRShape164: TQRShape;
    QRShape165: TQRShape;
    QRShape166: TQRShape;
    QRShape167: TQRShape;
    QRLabel202: TQRLabel;
    QRBand26: TQRBand;
    QRBand27: TQRBand;
    QRLabel203: TQRLabel;
    QRDBText216: TQRDBText;
    QRDBText217: TQRDBText;
    QRLabel204: TQRLabel;
    QRShape168: TQRShape;
    QRShape169: TQRShape;
    QRShape170: TQRShape;
    QRShape171: TQRShape;
    QRLabel205: TQRLabel;
    QRDBText218: TQRDBText;
    QRShape172: TQRShape;
    QRBand28: TQRBand;
    QrAbertOrdem16: TQuickRep;
    QRBand29: TQRBand;
    QRLabel206: TQRLabel;
    QRLabel207: TQRLabel;
    QRLabel208: TQRLabel;
    QRLabel209: TQRLabel;
    QRLabel210: TQRLabel;
    QRLabel211: TQRLabel;
    QRDBText219: TQRDBText;
    QRLabel212: TQRLabel;
    QRLabel213: TQRLabel;
    QRLabel214: TQRLabel;
    QRLabel215: TQRLabel;
    QRLabel216: TQRLabel;
    QRLabel217: TQRLabel;
    QRLabel218: TQRLabel;
    QRLabel219: TQRLabel;
    QRDBText220: TQRDBText;
    QRDBText221: TQRDBText;
    QRDBText222: TQRDBText;
    QRDBText223: TQRDBText;
    QRDBText224: TQRDBText;
    QRDBText225: TQRDBText;
    QRDBText226: TQRDBText;
    QRDBText227: TQRDBText;
    QRDBText228: TQRDBText;
    QRDBText229: TQRDBText;
    QRDBText230: TQRDBText;
    QRDBText231: TQRDBText;
    QRSysData15: TQRSysData;
    QRShape173: TQRShape;
    QRShape174: TQRShape;
    QRShape175: TQRShape;
    QRDBText232: TQRDBText;
    QRLabel220: TQRLabel;
    QRSysData16: TQRSysData;
    QRBand30: TQRBand;
    QRLabel222: TQRLabel;
    QRLabel223: TQRLabel;
    QRLabel224: TQRLabel;
    QRLabel225: TQRLabel;
    QRShape176: TQRShape;
    QRShape177: TQRShape;
    QRShape178: TQRShape;
    QRShape179: TQRShape;
    QRDBText233: TQRDBText;
    QRDBText234: TQRDBText;
    QRDBText235: TQRDBText;
    QRDBText236: TQRDBText;
    QRShape180: TQRShape;
    QRShape181: TQRShape;
    QRShape182: TQRShape;
    QRShape183: TQRShape;
    QRDBText238: TQRDBText;
    QRDBText239: TQRDBText;
    QRDBText240: TQRDBText;
    QRDBText241: TQRDBText;
    QRShape184: TQRShape;
    QRShape185: TQRShape;
    QRShape186: TQRShape;
    QRShape187: TQRShape;
    QRShape188: TQRShape;
    QRBand31: TQRBand;
    QRBand32: TQRBand;
    QRLabel228: TQRLabel;
    QRDBText242: TQRDBText;
    QRDBText243: TQRDBText;
    QRLTotalFinalOrdem16: TQRLabel;
    QRShape189: TQRShape;
    QRShape190: TQRShape;
    QRShape191: TQRShape;
    QRShape192: TQRShape;
    QRLabel230: TQRLabel;
    QRDBText244: TQRDBText;
    QRShape193: TQRShape;
    QRBand33: TQRBand;
    QRLabel226: TQRLabel;
    QRDBText237: TQRDBText;
    QRDBText245: TQRDBText;
    QRDBText246: TQRDBText;
    QRLabel221: TQRLabel;
    QRDBText247: TQRDBText;
    qrmObservacao: TQRMemo;
    QRLabel227: TQRLabel;
    PanelPlacaAdicional: TPanel;
    EdPlaca2: TFlatEdit;
    EdPlaca3: TFlatEdit;
    LabelPlacaAdicional: TLabel;
    QRDBText248: TQRDBText;
    QRLabel229: TQRLabel;
    QRLabel231: TQRLabel;
    QRDBText249: TQRDBText;
    QRLabel232: TQRLabel;
    QRDBText250: TQRDBText;
    QRDBText251: TQRDBText;
    QRDBText253: TQRDBText;
    QRLabel235: TQRLabel;
    Label22: TLabel;
    ServiosporClassificao1: TMenuItem;
    ServiosporClassificaoGrfico1: TMenuItem;
    CancelarNfse: TMenuItem;
    ConsultasdeNotaFiscalEletrnica1: TMenuItem;
    VisualizaNfse: TMenuItem;
    QRLabel236: TQRLabel;
    QRDBText254: TQRDBText;
    ConsultaNfse: TMenuItem;
    EdMaxRegistro: TFlatEdit;
    ReimprimirNFSe: TMenuItem;
    RecuperarDadosdaNfse1: TMenuItem;
    QRShape198: TQRShape;
    QRShape199: TQRShape;
    QRShape200: TQRShape;
    QRLabel238: TQRLabel;
    QRDBText256: TQRDBText;
    QrAbertOrdem15Completo: TQuickRep;
    QRBand19: TQRBand;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRLabel165: TQRLabel;
    QRDBText164: TQRDBText;
    QRDBText165: TQRDBText;
    QRDBText166: TQRDBText;
    QRDBText167: TQRDBText;
    QRDBText168: TQRDBText;
    QRDBText169: TQRDBText;
    QRDBText170: TQRDBText;
    QRShape131: TQRShape;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QrObs15PaginaCompleta: TQRRichText;
    QRLabel166: TQRLabel;
    QRDBImage2: TQRDBImage;
    QRDBText180: TQRDBText;
    QRLabel168: TQRLabel;
    QRDBText181: TQRDBText;
    QRBand20: TQRBand;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRLabel173: TQRLabel;
    QRLabel174: TQRLabel;
    QRLabel175: TQRLabel;
    QRShape134: TQRShape;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRShape137: TQRShape;
    QRShape138: TQRShape;
    QRShape139: TQRShape;
    QRLabel176: TQRLabel;
    QRSubDetail7: TQRSubDetail;
    QRDBText182: TQRDBText;
    QRDBText183: TQRDBText;
    QRDBText184: TQRDBText;
    QRDBText185: TQRDBText;
    QRDBText186: TQRDBText;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRShape143: TQRShape;
    QRShape144: TQRShape;
    QRDBText187: TQRDBText;
    QRShape145: TQRShape;
    QRSubDetail8: TQRSubDetail;
    QRDBText188: TQRDBText;
    QRDBText189: TQRDBText;
    QRDBText190: TQRDBText;
    QRDBText252: TQRDBText;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRShape148: TQRShape;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRDBText255: TQRDBText;
    QRBand21: TQRBand;
    QRBand22: TQRBand;
    QRLabel177: TQRLabel;
    QRDBText257: TQRDBText;
    QRDBText258: TQRDBText;
    QRLTotalFinalOrdem15PaginaCompleta: TQRLabel;
    QRShape151: TQRShape;
    QRShape152: TQRShape;
    QRShape194: TQRShape;
    QRShape195: TQRShape;
    QRLabel180: TQRLabel;
    QRDBText259: TQRDBText;
    QRShape196: TQRShape;
    QRLabel181: TQRLabel;
    QrlDescontoOrdem15PaginaToda: TQRLabel;
    QRBand23: TQRBand;
    QRDBText147: TQRDBText;
    QRLabel135: TQRLabel;
    QRDBText171: TQRDBText;
    QRDBText172: TQRDBText;
    QRLabel155: TQRLabel;
    QRDBText173: TQRDBText;
    QRDBText174: TQRDBText;
    pIss: TPanel;
    lbIss: TLabel;
    EdTotIss: TColorEditFloat;
    cbRtIss: TCheckBox;
    cxGroupBox5: TcxGroupBox;
    edDtInicial: TMaskEdit;
    edDtFinal: TMaskEdit;
    Label33: TLabel;
    Label35: TLabel;
    RadioGroup1: TRadioGroup;
    rbAbertura: TRadioButton;
    rbFechamento: TRadioButton;
    numfiscalnfse: TQRDBText;
    QRLabel159: TQRLabel;
    QRDBText179: TQRDBText;
    QRLabel167: TQRLabel;
    QRDBText260: TQRDBText;
    EDFISCALNFSE: TFlatEdit;
    QRLabel150: TQRLabel;
    QRShape112: TQRShape;
    QRShape118: TQRShape;
    QRShape124: TQRShape;
    QRShape197: TQRShape;
    QRLabel233: TQRLabel;
    QRLabel133: TQRLabel;
    CartadeCorreoEletrnica1: TMenuItem;
    QrAbertOrdem13Completo: TQuickRep;
    QRBand18: TQRBand;
    QRLabel136: TQRLabel;
    QRLabel169: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    QRLabel182: TQRLabel;
    QRLabel234: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel237: TQRLabel;
    QRLabel239: TQRLabel;
    QRLabel240: TQRLabel;
    QRLabel241: TQRLabel;
    QRLabel242: TQRLabel;
    QRLabel243: TQRLabel;
    QRLabel244: TQRLabel;
    QRLabel245: TQRLabel;
    QRDBText261: TQRDBText;
    QRDBText262: TQRDBText;
    QRDBText263: TQRDBText;
    QRDBText264: TQRDBText;
    QRDBText265: TQRDBText;
    QRDBText266: TQRDBText;
    QRDBText267: TQRDBText;
    QRDBText268: TQRDBText;
    QRDBText269: TQRDBText;
    QRDBText270: TQRDBText;
    QRDBText271: TQRDBText;
    QRDBText272: TQRDBText;
    QRSysData13: TQRSysData;
    QRShape201: TQRShape;
    QRShape202: TQRShape;
    QRShape203: TQRShape;
    QRDBText273: TQRDBText;
    QRLabel246: TQRLabel;
    QRSysData17: TQRSysData;
    QRDBText274: TQRDBText;
    QRLabel247: TQRLabel;
    QRDBText275: TQRDBText;
    QRBand34: TQRBand;
    QRLabel248: TQRLabel;
    QRLabel249: TQRLabel;
    QRLabel250: TQRLabel;
    QRLabel251: TQRLabel;
    QRLabel252: TQRLabel;
    QRShape204: TQRShape;
    QRShape205: TQRShape;
    QRShape206: TQRShape;
    QRShape207: TQRShape;
    QRLabel253: TQRLabel;
    QRSubDetail13: TQRSubDetail;
    QRDBText276: TQRDBText;
    QRDBText277: TQRDBText;
    QRDBText278: TQRDBText;
    QRDBText279: TQRDBText;
    QRShape208: TQRShape;
    QRShape209: TQRShape;
    QRShape210: TQRShape;
    QRShape211: TQRShape;
    QRDBText280: TQRDBText;
    QRSubDetail14: TQRSubDetail;
    QRDBText281: TQRDBText;
    QRDBText282: TQRDBText;
    QRDBText283: TQRDBText;
    QRDBText284: TQRDBText;
    QRShape212: TQRShape;
    QRShape213: TQRShape;
    QRShape214: TQRShape;
    QRShape215: TQRShape;
    QRShape216: TQRShape;
    QRLabel254: TQRLabel;
    QRBand35: TQRBand;
    QRBand36: TQRBand;
    QRLabel255: TQRLabel;
    QRDBText285: TQRDBText;
    QRDBText286: TQRDBText;
    QRLTotalFinalOrdem13Completo: TQRLabel;
    QRShape217: TQRShape;
    QRShape218: TQRShape;
    QRShape219: TQRShape;
    QRShape220: TQRShape;
    QRLabel257: TQRLabel;
    QRDBText287: TQRDBText;
    QRShape221: TQRShape;
    QRBand37: TQRBand;
    qrObservacaoOSMdl16: TQRDBText;
    QRLabel256: TQRLabel;
    ProdutosVendidosModelo011: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    QRDBText288: TQRDBText;
    QRLabel258: TQRLabel;
    QrAbertOrdem19: TQuickRep;
    QRBand38: TQRBand;
    QRLabel259: TQRLabel;
    QRLabel260: TQRLabel;
    QRLabel261: TQRLabel;
    QRLabel262: TQRLabel;
    QRLabel263: TQRLabel;
    QRLabel264: TQRLabel;
    QRDBText289: TQRDBText;
    QRLabel265: TQRLabel;
    QRLabel266: TQRLabel;
    QRLabel267: TQRLabel;
    QRLabel268: TQRLabel;
    QRLabel269: TQRLabel;
    QRLabel270: TQRLabel;
    QRLabel271: TQRLabel;
    QRLabel272: TQRLabel;
    QRDBText290: TQRDBText;
    QRDBText291: TQRDBText;
    QRDBText292: TQRDBText;
    QRDBText293: TQRDBText;
    QRDBText294: TQRDBText;
    QRDBText295: TQRDBText;
    QRDBText296: TQRDBText;
    QRDBText297: TQRDBText;
    QRDBText298: TQRDBText;
    QRDBText299: TQRDBText;
    QRDBText300: TQRDBText;
    QRDBText301: TQRDBText;
    QRSysData18: TQRSysData;
    QRShape222: TQRShape;
    QRShape223: TQRShape;
    QRShape224: TQRShape;
    QRDBText302: TQRDBText;
    QRLabel273: TQRLabel;
    QRSysData19: TQRSysData;
    QRDBText303: TQRDBText;
    QRLabel274: TQRLabel;
    QRDBText304: TQRDBText;
    QRBand39: TQRBand;
    QRLabel275: TQRLabel;
    QRLabel276: TQRLabel;
    QRLabel277: TQRLabel;
    QRLabel278: TQRLabel;
    QRShape225: TQRShape;
    QRShape226: TQRShape;
    QRShape227: TQRShape;
    QRShape228: TQRShape;
    QRLabel279: TQRLabel;
    QRLabel280: TQRLabel;
    QRBand40: TQRBand;
    QRBand41: TQRBand;
    QRLabel281: TQRLabel;
    QRDBText305: TQRDBText;
    QRDBText306: TQRDBText;
    QRLTotalFinalProd19: TQRLabel;
    QRShape229: TQRShape;
    QRShape230: TQRShape;
    QRShape231: TQRShape;
    QRShape232: TQRShape;
    QRLabel283: TQRLabel;
    QRDBText307: TQRDBText;
    QRShape233: TQRShape;
    qrObservacao19: TQRMemo;
    QRLabel284: TQRLabel;
    QRBand42: TQRBand;
    QRSubDetail15: TQRSubDetail;
    QRDBText308: TQRDBText;
    QRDBText309: TQRDBText;
    QRDBText310: TQRDBText;
    QRDBText311: TQRDBText;
    QRShape234: TQRShape;
    QRShape235: TQRShape;
    QRShape236: TQRShape;
    QRShape237: TQRShape;
    QRDBText312: TQRDBText;
    QRDBText313: TQRDBText;
    QRSubDetail16: TQRSubDetail;
    QRDBText314: TQRDBText;
    QRDBText315: TQRDBText;
    QRDBText316: TQRDBText;
    QRDBText317: TQRDBText;
    QRShape238: TQRShape;
    QRShape239: TQRShape;
    QRShape240: TQRShape;
    QRShape241: TQRShape;
    QRShape242: TQRShape;
    qrObservacaoFinanc: TQRMemo;
    QRLabel282: TQRLabel;
    btnConsultarProdutos: TBitBtn;
    Label36: TLabel;
    Label37: TLabel;
    QRLabel285: TQRLabel;
    QRLabel286: TQRLabel;
    QRLabel287: TQRLabel;
    QrAbertOrdem20MeiaPagina: TQuickRep;
    QRBand43: TQRBand;
    QRLabel291: TQRLabel;
    QRLabel292: TQRLabel;
    QRDBText318: TQRDBText;
    QRLabel293: TQRLabel;
    QRLabel294: TQRLabel;
    QRLabel295: TQRLabel;
    QRLabel296: TQRLabel;
    QRLabel297: TQRLabel;
    QRLabel298: TQRLabel;
    QRDBText319: TQRDBText;
    QRDBText320: TQRDBText;
    QRDBText321: TQRDBText;
    QRDBText322: TQRDBText;
    QRDBText323: TQRDBText;
    QRDBText324: TQRDBText;
    QRDBText325: TQRDBText;
    QRDBText326: TQRDBText;
    QRDBText327: TQRDBText;
    QRSysData20: TQRSysData;
    QRShape243: TQRShape;
    QRShape244: TQRShape;
    QRShape245: TQRShape;
    QRDBText328: TQRDBText;
    QRRichText1: TQRRichText;
    QRLabel299: TQRLabel;
    QRLabel300: TQRLabel;
    QRDBText329: TQRDBText;
    QRDBImage3: TQRDBImage;
    QRDBText330: TQRDBText;
    QRDBText331: TQRDBText;
    QRDBText332: TQRDBText;
    QRDBText333: TQRDBText;
    QRLabel301: TQRLabel;
    QRDBText334: TQRDBText;
    QRDBText335: TQRDBText;
    QRLabel302: TQRLabel;
    QRLabel303: TQRLabel;
    QRLabel304: TQRLabel;
    QRLabel305: TQRLabel;
    QRBand44: TQRBand;
    QRLabel306: TQRLabel;
    QRLabel307: TQRLabel;
    QRLabel308: TQRLabel;
    QRLabel309: TQRLabel;
    QRLabel310: TQRLabel;
    QRShape246: TQRShape;
    QRShape247: TQRShape;
    QRShape248: TQRShape;
    QRShape249: TQRShape;
    QRShape250: TQRShape;
    QRLabel311: TQRLabel;
    QRLabel312: TQRLabel;
    QRShape251: TQRShape;
    QRSubDetail17: TQRSubDetail;
    QRDBText336: TQRDBText;
    QRDBText337: TQRDBText;
    QRDBText338: TQRDBText;
    QRDBText339: TQRDBText;
    QRDBText340: TQRDBText;
    QRShape252: TQRShape;
    QRShape253: TQRShape;
    QRShape254: TQRShape;
    QRShape255: TQRShape;
    QRDBText341: TQRDBText;
    QRShape256: TQRShape;
    QRShape257: TQRShape;
    QRSubDetail18: TQRSubDetail;
    QRDBText342: TQRDBText;
    QRDBText343: TQRDBText;
    QRDBText344: TQRDBText;
    QRDBText345: TQRDBText;
    QRShape258: TQRShape;
    QRShape259: TQRShape;
    QRShape260: TQRShape;
    QRShape261: TQRShape;
    QRDBText346: TQRDBText;
    QRShape262: TQRShape;
    QRBand45: TQRBand;
    QRBand46: TQRBand;
    QRLabel313: TQRLabel;
    QRDBText347: TQRDBText;
    QRDBText348: TQRDBText;
    QRLabel314: TQRLabel;
    QRShape263: TQRShape;
    QRShape264: TQRShape;
    QRShape265: TQRShape;
    QRShape266: TQRShape;
    QRLabel315: TQRLabel;
    QRDBText349: TQRDBText;
    QRShape267: TQRShape;
    QRLabel316: TQRLabel;
    QRLabel317: TQRLabel;
    QRShape268: TQRShape;
    TermoContrat: TMenuItem;
    QrCompTermoContratacao: TQuickRep;
    QRBand47: TQRBand;
    QRLabel318: TQRLabel;
    QRLabel319: TQRLabel;
    QRLabel320: TQRLabel;
    QRLabel321: TQRLabel;
    QRLabel322: TQRLabel;
    QRLabel323: TQRLabel;
    QRDBText350: TQRDBText;
    QRDBText351: TQRDBText;
    QRDBText352: TQRDBText;
    QRDBText353: TQRDBText;
    QRDBText354: TQRDBText;
    QRDBText355: TQRDBText;
    QRDBText356: TQRDBText;
    QRShape269: TQRShape;
    QRShape270: TQRShape;
    QRShape271: TQRShape;
    QRRichText2: TQRRichText;
    QRLabel324: TQRLabel;
    QRDBImage4: TQRDBImage;
    QRDBText357: TQRDBText;
    QRLabel325: TQRLabel;
    QRDBText358: TQRDBText;
    QRDBText359: TQRDBText;
    QRLabel326: TQRLabel;
    QRDBText360: TQRDBText;
    QRDBText361: TQRDBText;
    QRLabel327: TQRLabel;
    QRDBText362: TQRDBText;
    QRDBText364: TQRDBText;
    QRLabel328: TQRLabel;
    QRDBText365: TQRDBText;
    QRLabel329: TQRLabel;
    QRSysData21: TQRSysData;
    QRDBText366: TQRDBText;
    QRDBText367: TQRDBText;
    QRLabel330: TQRLabel;
    QRLabel331: TQRLabel;
    QRLabel332: TQRLabel;
    QRBand48: TQRBand;
    QRLabel333: TQRLabel;
    QRLabel334: TQRLabel;
    QRLabel335: TQRLabel;
    QRLabel336: TQRLabel;
    QRLabel337: TQRLabel;
    QRLabel338: TQRLabel;
    QRShape272: TQRShape;
    QRShape273: TQRShape;
    QRShape274: TQRShape;
    QRShape275: TQRShape;
    QRShape276: TQRShape;
    QRShape277: TQRShape;
    QRLabel339: TQRLabel;
    QRSubDetail19: TQRSubDetail;
    QRDBText368: TQRDBText;
    QRDBText369: TQRDBText;
    QRDBText370: TQRDBText;
    QRDBText371: TQRDBText;
    QRDBText372: TQRDBText;
    QRShape278: TQRShape;
    QRShape279: TQRShape;
    QRShape280: TQRShape;
    QRShape281: TQRShape;
    QRShape282: TQRShape;
    QRDBText373: TQRDBText;
    QRShape283: TQRShape;
    QRSubDetail20: TQRSubDetail;
    QRDBText374: TQRDBText;
    QRDBText375: TQRDBText;
    QRDBText376: TQRDBText;
    QRDBText377: TQRDBText;
    QRShape284: TQRShape;
    QRShape285: TQRShape;
    QRShape286: TQRShape;
    QRShape287: TQRShape;
    QRShape288: TQRShape;
    QRDBText378: TQRDBText;
    QRBand49: TQRBand;
    QRBand50: TQRBand;
    QRLabel340: TQRLabel;
    QRDBText379: TQRDBText;
    QRDBText380: TQRDBText;
    TotalTermoContratacao: TQRLabel;
    QRShape289: TQRShape;
    QRShape290: TQRShape;
    QRShape291: TQRShape;
    QRShape292: TQRShape;
    QRLabel342: TQRLabel;
    QRDBText381: TQRDBText;
    QRShape293: TQRShape;
    QRLabel343: TQRLabel;
    QRLabel344: TQRLabel;
    QRBand51: TQRBand;
    QRDBText382: TQRDBText;
    QRDBText383: TQRDBText;
    pClassServico: TPanel;
    Label29: TLabel;
    DbServicoClassificacao: TDBLookupComboBox;
    BTNOPEN: TBitBtn;
    BTNMINUS: TBitBtn;
    QRLabel341: TQRLabel;
    QRLabel345: TQRLabel;
    QRDBText363: TQRDBText;
    QRDBText384: TQRDBText;
    QRLabel346: TQRLabel;
    QRDBText385: TQRDBText;
    QRLabel347: TQRLabel;
    QRDBText386: TQRDBText;
    Panel2: TPanel;
    Label24: TLabel;
    edTotalRecebido: TColorEditFloat;
    lbCredito: TLabel;
    ExtratodeOrdensdeServio1: TMenuItem;
    pPesquisaRapida: TPanel;
    LPesquisa: TLabel;
    Label30: TLabel;
    EDCodFab: TColorMaskEdit;
    pPesqBarraInterno: TPanel;
    Label28: TLabel;
    EDCodBarra: TEdit;
    RecuperareEnviarXML1: TMenuItem;
    BtnSelecionar: TBitBtn;
    EdVlrCompra: TColorEditFloat;
    LblVlrComp: TLabel;
    RelatoriodeDanfces1: TMenuItem;
    N3: TMenuItem;
    N13: TMenuItem;
    QRDBText387: TQRDBText;
    QRLabel348: TQRLabel;
    QRDBText388: TQRDBText;
    QRLabel349: TQRLabel;
    QrAbertOrdem13Desc: TQRLabel;
    QRLabel351: TQRLabel;
    QrAbertOrdem13CompletoDesconto: TQRLabel;
    QRLabel352: TQRLabel;
    ComprasDestinadasasOrdensdeServio1: TMenuItem;
    BitBtn2: TBitBtn;
    PCalculoHora: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    EdQtdHora: TMaskEdit;
    ProdutosVendidoscomValordeCusto1: TMenuItem;
    FrmVendedor: TFrmBusca;
    edDtAbertura: TColorMaskEdit;
    Label17: TLabel;
    QrAbertOrdem21: TQuickRep;
    QRBand52: TQRBand;
    QRDBText389: TQRDBText;
    QRLabel354: TQRLabel;
    QRLabel355: TQRLabel;
    QRLabel357: TQRLabel;
    QRDBText390: TQRDBText;
    QRDBText391: TQRDBText;
    QRDBText392: TQRDBText;
    QRDBText393: TQRDBText;
    QRDBText394: TQRDBText;
    QRDBText395: TQRDBText;
    QRDBText396: TQRDBText;
    QRDBText397: TQRDBText;
    QRDBText398: TQRDBText;
    QRShape294: TQRShape;
    QRShape295: TQRShape;
    QRDBText399: TQRDBText;
    QRDBText400: TQRDBText;
    QRDBText401: TQRDBText;
    QRDBText402: TQRDBText;
    QRDBText403: TQRDBText;
    QRDBText404: TQRDBText;
    QRLabel362: TQRLabel;
    QRDBText405: TQRDBText;
    QRDBText406: TQRDBText;
    QRLabel363: TQRLabel;
    QRLabel365: TQRLabel;
    QRBand53: TQRBand;
    QRLabel367: TQRLabel;
    QRLabel368: TQRLabel;
    QRLabel369: TQRLabel;
    QRLabel370: TQRLabel;
    QRLabel371: TQRLabel;
    QRShape297: TQRShape;
    QRShape298: TQRShape;
    QRShape299: TQRShape;
    QRShape300: TQRShape;
    QRShape301: TQRShape;
    QRLabel372: TQRLabel;
    QRLabel373: TQRLabel;
    QRShape302: TQRShape;
    QRSubDetail21: TQRSubDetail;
    QRDBText407: TQRDBText;
    QRDBText408: TQRDBText;
    QRDBText409: TQRDBText;
    QRDBText410: TQRDBText;
    QRDBText411: TQRDBText;
    QRShape303: TQRShape;
    QRShape304: TQRShape;
    QRShape305: TQRShape;
    QRShape306: TQRShape;
    QRDBText412: TQRDBText;
    QRShape307: TQRShape;
    QRShape308: TQRShape;
    QRSubDetail22: TQRSubDetail;
    QRDBText413: TQRDBText;
    QRDBText414: TQRDBText;
    QRDBText415: TQRDBText;
    QRDBText416: TQRDBText;
    QRShape309: TQRShape;
    QRShape310: TQRShape;
    QRShape311: TQRShape;
    QRShape312: TQRShape;
    QRDBText417: TQRDBText;
    QRShape313: TQRShape;
    QRBand54: TQRBand;
    QRBand55: TQRBand;
    QRLabel374: TQRLabel;
    QRDBText418: TQRDBText;
    QrlTotalOrdem21: TQRLabel;
    QRShape314: TQRShape;
    QRShape315: TQRShape;
    QRShape316: TQRShape;
    QRShape317: TQRShape;
    QRLabel376: TQRLabel;
    QRDBText420: TQRDBText;
    QRLabel377: TQRLabel;
    QrlTotaldesconto21: TQRLabel;
    QRImage1: TQRImage;
    QRLabel350: TQRLabel;
    QRShape320: TQRShape;
    QRLabel360: TQRLabel;
    QrObservacao: TQRRichText;
    QRLabel353: TQRLabel;
    QRDBText419: TQRDBText;
    QRShape296: TQRShape;
    QRShape318: TQRShape;
    QRDBText421: TQRDBText;
    QRDBText422: TQRDBText;
    ProdutosporVendedor1: TMenuItem;
    MEVeiculo: TFlatEdit;
    btnPagamentos: TBitBtn;
    ReimprimirNFCeemcontingncia1: TMenuItem;
    EdHoraFech: TColorMaskEdit;
    QRDBText423: TQRDBText;
    QRLabel143: TQRLabel;
    QRDBText175: TQRDBText;
    QRDBText176: TQRDBText;
    QRSysData12: TQRSysData;
    QRLabel158: TQRLabel;
    QRLabel164: TQRLabel;
    QRDBText177: TQRDBText;
    QRDBText178: TQRDBText;
    QRLabel288: TQRLabel;
    QRDBText424: TQRDBText;
    QrAbertOrdem22: TQuickRep;
    QRBand56: TQRBand;
    QRLabel289: TQRLabel;
    QRLabel290: TQRLabel;
    QRLabel356: TQRLabel;
    QRDBText426: TQRDBText;
    QRDBText427: TQRDBText;
    QRDBText428: TQRDBText;
    QRDBText429: TQRDBText;
    QRDBText430: TQRDBText;
    QRDBText431: TQRDBText;
    QRDBText432: TQRDBText;
    QRDBText433: TQRDBText;
    QRDBText434: TQRDBText;
    QRDBText435: TQRDBText;
    QRDBText436: TQRDBText;
    QRDBText437: TQRDBText;
    QRDBText438: TQRDBText;
    QRDBText439: TQRDBText;
    QRDBText440: TQRDBText;
    QRLabel359: TQRLabel;
    QRLabel361: TQRLabel;
    QRImage2: TQRImage;
    QRLabel364: TQRLabel;
    QRDBText441: TQRDBText;
    QRDBText442: TQRDBText;
    QRShape324: TQRShape;
    QRBand57: TQRBand;
    QRLabel378: TQRLabel;
    QRLabel379: TQRLabel;
    QRLabel380: TQRLabel;
    QRLabel381: TQRLabel;
    QRShape325: TQRShape;
    QRShape326: TQRShape;
    QRShape327: TQRShape;
    QRShape329: TQRShape;
    QRLabel382: TQRLabel;
    QRLabel383: TQRLabel;
    QRShape330: TQRShape;
    QRSubDetail23: TQRSubDetail;
    QRDBText444: TQRDBText;
    QRDBText445: TQRDBText;
    QRDBText447: TQRDBText;
    QRDBText448: TQRDBText;
    QRShape331: TQRShape;
    QRShape332: TQRShape;
    QRShape333: TQRShape;
    QRDBText449: TQRDBText;
    QRShape335: TQRShape;
    QRShape336: TQRShape;
    QRSubDetail24: TQRSubDetail;
    QRDBText450: TQRDBText;
    QRDBText451: TQRDBText;
    QRDBText452: TQRDBText;
    QRDBText453: TQRDBText;
    QRShape337: TQRShape;
    QRShape339: TQRShape;
    QRShape340: TQRShape;
    QRDBText454: TQRDBText;
    QRShape341: TQRShape;
    QRBand58: TQRBand;
    QRBand59: TQRBand;
    QRLabel384: TQRLabel;
    QRDBText455: TQRDBText;
    QrlTotalOrdem22: TQRLabel;
    QRShape342: TQRShape;
    QRShape343: TQRShape;
    QRShape344: TQRShape;
    QRShape345: TQRShape;
    QRLabel386: TQRLabel;
    QRDBText456: TQRDBText;
    QRLabel387: TQRLabel;
    QrlTotalDesconto22: TQRLabel;
    QRLabel389: TQRLabel;
    QrlObs22: TQRRichText;
    QRDBText457: TQRDBText;
    QRLabel390: TQRLabel;
    QRShape319: TQRShape;
    QRShape321: TQRShape;
    QrAbertOrdem22MeiaPagina: TQuickRep;
    QRBand60: TQRBand;
    QRImage3: TQRImage;
    QRLabel358: TQRLabel;
    QRLabel366: TQRLabel;
    QRLabel375: TQRLabel;
    QRDBText425: TQRDBText;
    QRDBText443: TQRDBText;
    QRDBText446: TQRDBText;
    QRDBText459: TQRDBText;
    QRDBText460: TQRDBText;
    QRDBText461: TQRDBText;
    QRDBText462: TQRDBText;
    QRDBText463: TQRDBText;
    QRDBText464: TQRDBText;
    QRDBText465: TQRDBText;
    QRDBText466: TQRDBText;
    QRDBText467: TQRDBText;
    QRDBText468: TQRDBText;
    QRLabel391: TQRLabel;
    QRLabel392: TQRLabel;
    QRLabel393: TQRLabel;
    QRDBText469: TQRDBText;
    QRDBText470: TQRDBText;
    QRShape322: TQRShape;
    QRDBText471: TQRDBText;
    QRLabel394: TQRLabel;
    QRShape323: TQRShape;
    QRDBText472: TQRDBText;
    QRBand61: TQRBand;
    QRLabel395: TQRLabel;
    QRLabel396: TQRLabel;
    QRLabel397: TQRLabel;
    QRLabel398: TQRLabel;
    QRShape328: TQRShape;
    QRShape334: TQRShape;
    QRShape338: TQRShape;
    QRShape346: TQRShape;
    QRLabel399: TQRLabel;
    QRLabel400: TQRLabel;
    QRShape347: TQRShape;
    QRSubDetail25: TQRSubDetail;
    QRDBText473: TQRDBText;
    QRDBText474: TQRDBText;
    QRDBText475: TQRDBText;
    QRDBText476: TQRDBText;
    QRShape348: TQRShape;
    QRShape349: TQRShape;
    QRShape350: TQRShape;
    QRDBText477: TQRDBText;
    QRShape351: TQRShape;
    QRShape352: TQRShape;
    QRSubDetail26: TQRSubDetail;
    QRDBText478: TQRDBText;
    QRDBText479: TQRDBText;
    QRDBText480: TQRDBText;
    QRDBText481: TQRDBText;
    QRShape353: TQRShape;
    QRShape354: TQRShape;
    QRShape355: TQRShape;
    QRDBText482: TQRDBText;
    QRShape356: TQRShape;
    QRShape357: TQRShape;
    QRBand62: TQRBand;
    QRBand63: TQRBand;
    QRLabel401: TQRLabel;
    QRDBText483: TQRDBText;
    QrlTotalOrdem22MeiaPagina: TQRLabel;
    QRShape358: TQRShape;
    QRShape359: TQRShape;
    QRShape360: TQRShape;
    QRShape361: TQRShape;
    QRLabel403: TQRLabel;
    QRDBText484: TQRDBText;
    QRLabel404: TQRLabel;
    QrlTotalDescon22MeiaPagina: TQRLabel;
    QRLabel406: TQRLabel;
    QrObs22MeiaPagina: TQRRichText;
    QRDBText485: TQRDBText;
    PMultiplosvendedores: TPanel;
    btnInserirMultiplosVendedores: TButton;
    sgMultiplosVendedoresProduto: TStringGrid;
    btnRemoveVendedorProduto: TButton;
    PSelecionaMultiploVendedor: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    btnAdicionaMultiploVendedor: TButton;
    DBGMultiploVendedor: TDBGrid;
    Comisses1: TMenuItem;
    Comissodeprodutoscombase1: TMenuItem;
    Comisses2: TMenuItem;
    Comissodevendasdeprodutos1: TMenuItem;
    QRDBText458: TQRDBText;
    QRDBText486: TQRDBText;
    pMultiplosVendedoresServico: TPanel;
    btnAddVendedorServico: TButton;
    sgMultiplosVendedoresServico: TStringGrid;
    btnRemoveVendedorServico: TButton;
    pOpcoesProduto: TPopupMenu;
    Mostrarcomissionados1: TMenuItem;
    pOpcoesServico: TPopupMenu;
    comissionadoserv: TMenuItem;
    ProdutovendidovalorcustoNFe1: TMenuItem;
    QRDBText487: TQRDBText;
    QRLabel385: TQRLabel;
    QRDBText488: TQRDBText;
    QRLabel388: TQRLabel;
    QRLabel402: TQRLabel;
    QRDBText489: TQRDBText;
    QRDBText490: TQRDBText;
    QRLabel405: TQRLabel;
    QRSubTotalOrdem21: TQRLabel;
    QRLabel408: TQRLabel;
    SearchPlaca: TBitBtn;
    actMain: TActionList;
    ActSearchPlaca: TAction;
    procedure FormActivate(Sender: TObject);
    procedure CBFILTROPropertiesChange(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EDNumKeyPress(Sender: TObject; var Key: Char);
    procedure EDBoxKeyPress(Sender: TObject; var Key: Char);
    procedure MEPLACAKeyPress(Sender: TObject; var Key: Char);
    procedure EDCliente1KeyPress(Sender: TObject; var Key: Char);
    procedure EDNumEnter(Sender: TObject);
    procedure EDNumExit(Sender: TObject);
    procedure EDBoxExit(Sender: TObject);
    procedure MEPLACAEnter(Sender: TObject);
    procedure MEPLACAExit(Sender: TObject);
    procedure EDCliente1Enter(Sender: TObject);
    procedure EDCliente1Exit(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FrmClienteEDCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    procedure FBEquipPlacaEDCodigoExit(Sender: TObject);
    procedure FBEquipPlacaEDCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FBEquipPlacaBTNOPENClick(Sender: TObject);
    procedure FrmFormPag1EDCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FrmFormPag1BTNOPENClick(Sender: TObject);
    procedure FrmFormPag1EDCodigoExit(Sender: TObject);
    procedure FBEquipPlacaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmFormPag1BTNMINUSClick(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure CdigodeBarra1Click(Sender: TObject);
    procedure ControleInterno1Click(Sender: TObject);
    procedure CdigoFabricante1Click(Sender: TObject);
    procedure Descrio1Click(Sender: TObject);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EDQuantidadeExit(Sender: TObject);
    procedure EDDescKeyPress(Sender: TObject; var Key: Char);
    procedure EDQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EDDescExit(Sender: TObject);
    procedure EDValUnitExit(Sender: TObject);
    procedure EDValUnitKeyPress(Sender: TObject; var Key: Char);
    procedure EDTotalKeyPress(Sender: TObject; var Key: Char);
    procedure EDTotalExit(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure BtnDeleteProdClick(Sender: TObject);
    procedure RemoverTudo1Click(Sender: TObject);
    procedure EDesricaoServicoKeyPress(Sender: TObject; var Key: Char);
    procedure EValorServKeyPress(Sender: TObject; var Key: Char);
    procedure EValorServExit(Sender: TObject);
    procedure EQtdServKeyPress(Sender: TObject; var Key: Char);
    procedure EDescServExit(Sender: TObject);
    procedure EDescServKeyPress(Sender: TObject; var Key: Char);
    procedure EQtdServExit(Sender: TObject);
    procedure FrmEquipeEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmEquipeEDCodigoExit(Sender: TObject);
    procedure FrmEquipeBTNOPENClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BBExcluirClick(Sender: TObject);
    procedure RemoverTudo2Click(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnDadosAdicClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure MEPLACAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EDCliente1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PPesquisaExit(Sender: TObject);
    procedure EDCliente1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CBFILTROClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure CompdeAbertura1Click(Sender: TObject);
    procedure Garantia1Click(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure FrmFormPagBTNOPENClick(Sender: TObject);
    procedure FrmFormPagBTNMINUSClick(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure FrmFormPagEDCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CBPagamentoExit(Sender: TObject);
    procedure DBGCTAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmContaServEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmContaServBTNOPENClick(Sender: TObject);
    procedure FrmContaServBTNMINUSClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure FrmFormPagExit(Sender: TObject);
    procedure b(Sender: TObject; ACanvas: TCanvas; ARect: TRect; State: TOwnerDrawState);
    procedure BtnCancelamentosClick(Sender: TObject);
    procedure CancTotClick(Sender: TObject);
    procedure CancFechaClick(Sender: TObject);
    procedure ReeimprimirNF1Click(Sender: TObject);
    procedure ExportarPedido1Click(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure EdDescTProdExit(Sender: TObject);
    procedure EdtotalProdExit(Sender: TObject);
    procedure EdDescTServExit(Sender: TObject);
    procedure EdTotalservExit(Sender: TObject);
    procedure cxGroupBox1Click(Sender: TObject);
    procedure cxGroupBox2Click(Sender: TObject);
    procedure FrmClienteEDCodigoExit(Sender: TObject);
    procedure CBFILTROExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure LimpaInfoCliente(Sender: TObject);
    procedure Devoluo1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure CommesmoCliente1Click(Sender: TObject);
    procedure Verificar1Click(Sender: TObject);
    procedure RelatriosdeOrdens1Click(Sender: TObject);
    procedure EdFiscalEnter(Sender: TObject);
    procedure EdFiscalExit(Sender: TObject);
    procedure EdFiscalKeyPress(Sender: TObject; var Key: Char);
    procedure FCadPlaca1btnConfirmarClick(Sender: TObject);
    procedure FrmCidadeBTNOPENClick(Sender: TObject);
    procedure FrmCidadeBTNMINUSClick(Sender: TObject);
    procedure FrmCidadeEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn8Click(Sender: TObject);
    procedure Duplicata1Click(Sender: TObject);
    procedure QRDUPLICATABeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure BtnLiberaExportaClick(Sender: TObject);
    procedure OrdporSubstituioTributria1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Valida1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BRastrearClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edPlacaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPlacaKeyPress(Sender: TObject; var Key: Char);
    procedure TransparentButton1Click(Sender: TObject);
    procedure EspelhoNotaFiscal1Click(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure edCNPJCPFExit(Sender: TObject);
    procedure SintticodeOrdens1Click(Sender: TObject);
    procedure AnalticodeOrdens1Click(Sender: TObject);
    procedure ServiosPorEquipe1Click(Sender: TObject);
    procedure DBGridConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ServiosporEquipecomFrota1Click(Sender: TObject);
    procedure EfetuarDevoluodeNotaFiscal1Click(Sender: TObject);
    procedure VisualizarDanfe1Click(Sender: TObject);
    procedure VisualizarnoSefaz1Click(Sender: TObject);
    procedure ConsultarStatusNFe1Click(Sender: TObject);
    procedure RecuperarDados1Click(Sender: TObject);
    procedure VerificarServidorSefaz1Click(Sender: TObject);
    procedure CancelarNFe1Click(Sender: TObject);
    procedure RelatriodeDanfes1Click(Sender: TObject);
    procedure ListaNfe1Click(Sender: TObject);
    procedure InutilizarNumerao1Click(Sender: TObject);
    procedure EDCodFabKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SalvarXMLDistribuio1Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RelatriodeOrdenseProdutos1Click(Sender: TObject);
    procedure cbTerceirosClick(Sender: TObject);
    procedure RelatriodeOrdenseServios1Click(Sender: TObject);
    procedure RvSystem1PrintHeader(Sender: TObject);
    procedure CompAbertura2vias1Click(Sender: TObject);
    procedure RvSystem1BeforePrint(Sender: TObject);

    procedure RvSystem1Print(Sender: TObject);
    procedure GerarXMLporPerodo1Click(Sender: TObject);
    procedure ICMSIndevido1Click(Sender: TObject);
    procedure BandFinalBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QrAbertOrdem13BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure BandProdBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ProdutoseServios1Click(Sender: TObject);
    procedure QrAbertOrdem14MeiaPaginaBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QrAbertOrdem14CompletoBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure RecuperareEnviarXMLdeCancelamento1Click(Sender: TObject); procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QrAbertOrdem15MeiaPaginaBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRBand14BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand17BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand19BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail7BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail8BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand22BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BandServBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail11BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand32BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure EdPlaca2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPlaca2KeyPress(Sender: TObject; var Key: Char);
    procedure EdPlaca3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPlaca3KeyPress(Sender: TObject; var Key: Char);
    procedure BtnInserirEnter(Sender: TObject);
    procedure BtnInserirExit(Sender: TObject);
    procedure BtnInsertProdEnter(Sender: TObject);
    procedure BtnInsertProdExit(Sender: TObject);
    procedure ServiosporClassificao1Click(Sender: TObject);
    procedure ServiosporClassificaoGrfico1Click(Sender: TObject);
    procedure CancelarNfseClick(Sender: TObject);
    procedure VisualizaNfseClick(Sender: TObject);
    procedure ConsultaNfseClick(Sender: TObject);
    procedure EdMaxRegistroExit(Sender: TObject);
    procedure EdMaxRegistroKeyPress(Sender: TObject; var Key: Char);
    procedure ReimprimirNFSeClick(Sender: TObject);
    procedure RecuperarDadosdaNfse1Click(Sender: TObject);
    procedure cbRtIssClick(Sender: TObject);
    procedure edDtInicialKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edDtFinalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BTNOPENClick(Sender: TObject);
    procedure BTNMINUSClick(Sender: TObject);
    procedure EDFISCALNFSEEnter(Sender: TObject);
    procedure EDFISCALNFSEExit(Sender: TObject);
    procedure EDFISCALNFSEKeyPress(Sender: TObject; var Key: Char);
    procedure EDBoxEnter(Sender: TObject);
    procedure CartadeCorreoEletrnica1Click(Sender: TObject);
    procedure QRBand36BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ProdutosVendidosModelo011Click(Sender: TObject);
    procedure EDCodFabEnter(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QRBand41BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QrAbertOrdem19BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure btnConsultarProdutosClick(Sender: TObject);
    procedure TermoContratClick(Sender: TObject);
    procedure ExtratodeOrdensdeServio1Click(Sender: TObject);
    procedure EDCodBarraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RecuperareEnviarXML1Click(Sender: TObject);
    procedure CancelarDevoluo1Click(Sender: TObject);
    procedure QRSubDetail14BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure RelatoriodeDanfces1Click(Sender: TObject);
    procedure ComprasDestinadasasOrdensdeServio1Click(Sender: TObject);
    procedure PCalculoHoraExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EdQtdHoraExit(Sender: TObject);
    procedure ProdutosVendidoscomValordeCusto1Click(Sender: TObject);
    procedure FrmVendedorEDCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FrmVendedorBTNOPENClick(Sender: TObject);
    procedure QrAbertOrdem21BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRSubDetail21BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand55BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ProdutosporVendedor1Click(Sender: TObject);
    procedure MEVeiculoEnter(Sender: TObject);
    procedure MEVeiculoExit(Sender: TObject);
    procedure MEVeiculoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MEVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure btnPagamentosClick(Sender: TObject);
    procedure ReimprimirNFCeemcontingncia1Click(Sender: TObject);
    procedure QRBand60BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail25BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail26BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand63BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand43BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand56BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail23BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail24BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand59BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure btnInserirMultiplosVendedoresClick(Sender: TObject);
    procedure PSelecionaMultiploVendedorExit(Sender: TObject);
    procedure btnAdicionaMultiploVendedorClick(Sender: TObject);
    procedure DBGMultiploVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure btnAdicionaMultiploVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure btnRemoveVendedorProdutoClick(Sender: TObject);
    procedure Comissodeprodutoscombase1Click(Sender: TObject);
    procedure Comissodevendasdeprodutos1Click(Sender: TObject);
    procedure comissionadoservClick(Sender: TObject);
    procedure Mostrarcomissionados1Click(Sender: TObject);
    procedure ProdutovendidovalorcustoNFe1Click(Sender: TObject);
    procedure ActSearchPlacaUpdate(Sender: TObject);
    procedure ActSearchPlacaExecute(Sender: TObject);
    //procedure GBPRINCIPALCADASTROClick(Sender: TObject);

  private
    { Private declarations }

 //filtra grid consulta
    procedure AtualizaGridConsulta(FILTRO: string);
    //Procedure para imprimir o modelo de comprovante numero 10
    procedure ImpCompModelo10;
    //Procedure para imprimir o modelo de comprovante numero 17
    procedure ImpCompModelo17;
    // Procedure para imprimir o comprovante de ordem de serviços numero 18
    procedure ImpCompModelo18;
    //Comprovante de OS numero 18 - Cabecalho
    procedure ImpCompModelo18_Cabecalho;
    //Comprovante de OS numero 18 - Cabecalho do cliente
    procedure ImpCompModelo18_Cabecalho_Cliente;
    //Comprovante de OS numero 18 - Cabecalho de produtos
    procedure ImpCompModelo18_Cabecalho_Produtos;
    //Comprovante de OS numero 18 - Imprime os dados de Produto
    procedure ImpCompModelo18_ItemdeProduto;
    //Comprovante de OS numero 18 - Imprime os dados de Serviços
    procedure ImpCompModelo18_ItemdeServicos;
    //Comprovante de OS numero 18 - Imprime os dados de Forma de Pagamento
    procedure ImpCompModelo18_FormadePagamento;
    //LIMPAR TODOS OS CAMPOS PRINCIPAIS
    procedure LimpaCampos;
    //LIMPAR CAMPOS PRODUTOS
    procedure LimpaCamposProd;
    //LIMPAR CAMPOS SERVIÇO
    procedure LimpaCamposServ;

    //pesquisa codigo do equipamento
    procedure PesquisaCodigoEquipamento(codigo: string; cliente: boolean);
    //pesquisa codigo equipe
    procedure PesquisaCodigoEquipe(codigo: string);
    //pesquisa codigo forma pagamento
    procedure PesquisaCodigoPagamento(codigo: string);
    //seleciona forma de pagamento e vendedor de acordo com o cliente
    procedure SelecionaFormaPagamento;
    //Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
    procedure EscreveLabelsPROD;
    //Alex 14/03/2018 - Função utilizada para limpar a string grid de multiplos vendedores
    function LimpaGradeMultiplosVendedores(xTipoOperacao: string): Boolean;
    //opções de pesquisa para o produto
    procedure TipoPesquisaProduto(tipo: string);
    //pesquisa PRODUTO
    //Procedure PesquisaProduto(str:String);
    //FILTRA OS REGISTROS DE PRODUTOS E SERVIÇOS PERTENCENTES A ORDEM
    procedure FiltraSlave;
    // função para calcular data de garantia
    function Calcula_Garantia(Qtde, Tipo: string): TDateTime;
    // remover produto selecionado
    procedure RemoverProduto;
    // remover serviço selecionado
    procedure RemoverServico;
    //modo pesquisa
    procedure SelecionarModoPesquisa(mostrar: Boolean; tipo: string);
    procedure PesquisaGrid(str: string);
    function ProxPesq: string;
    function AntPesq: string;
    function RetNomeGrid: string;

    // travar paines principais
    procedure TravarPaines(oi: boolean);
    //Fecha pedido (Atualiza estoque e joga no financeiro
    function FechaOrd(CODPEDIDO: string; DTFECH: string): Boolean;
    //Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
    function CancelLanOrd(CodPedido: string): Boolean;
    // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
    procedure Exporta_OrdensServico;
    // Conecta banco de ddos para exportar Ordens
    function ConectaBancoDados(XEndereco: string): boolean;

    // verifica se jah existe o funcionario no banco de fora, e se na estiver jah cadastra na hora
    function VerificaFuncionario(Atividade: string; Cod_funcionario: string): integer;
    // verifica se o cliente esta cadastrado no banco, se nao tiver jah cadastra na hora
    function VerificaCliente(Cod_Cliente: integer): integer;
    // verifica se existe a cidade do cliente, se nao jah cadastra
    function VerificaCidade: integer;
    // verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
    function VerificaEstado: integer;
    // VERIFICA SE NO BANCO DE FORA ESTAH CADASTRADO O EQUIPAMENTO DA ORDEM, SE NAO TIVER JAH CADASTRA
    function VerificaEquipamento(Cod_equipamento: string): integer;
    // busca forma de pagamento, se necessario cadastra a nova forma
    function Forma_Pagamento: integer;
    // procura dados na tabela unidade tanto no banco local como o de fora e insere novos dads se necessario
    function DadosUnidade: integer;
    // VERIFICA SE NO BANCO DE FORA TEM A EQUIPE CADASTRADA JUNTO COM SEU RESPONSAVEL E FUNCIONARIO
    function VerificaEquipe(Cod_equipe: string; Cod_responsavel: string): integer;
    // CADASTRO DE FUNCIONARIO
    function CadastroFuncionario: integer;
    // VERTIFICA A FORMA DE PAGAMENTO NO CADASTRO DO CLIENTE
    function FormaPgto_Cliente: integer;
    // Quando eh informado o valor de desconto do total dos produtos em "%" eh efetuado calculo para cada produto da ordem
    procedure CalcPercentProd;
    //FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
    function CalcComisTotVend: Boolean;
    //verifa se nao ordem passada no parametro existem (produtos - prod / serviços - serv) conforme solicitado e retorna true caso encontrar
    function VerificaProdutosServicos(NumOrdem: Integer; prod: Boolean; serv: Boolean): Boolean;
    //atualizar os dados do funcionario no banco externo
    function AtualizarFuncionarioBancoExterno(codFunInt: integer; codFunExt: integer): Boolean;
    //pesquisa equipamento do cliente e seta no localizar
    procedure PesquisaEquipCliente(codigo: string);
    //ALEX: 19/01/2009 - Funcção Utilizada para realizar devolução total da ordem selecionada
    function DevTotPed(XCod_PedDev: Integer): Boolean;
    //Djonathan 23/11/2009: Função utilizada para retornar valores maximos e minimos da funcao
    function EncontraValores(XSqlTabelaA: string; XSQLTabelaAux: string; XInicial: string; XFinal: string; XDesc: string): Integer;
    //Djonathan 23/11/2009: Funcao utilizada para comparar tabela com parametro
    function ComparaValores(XSqlTabelaA: string; XCodigoB: string; XCount: Integer): Boolean;
    //Djonathan 24/11/2009: Função utilizada para retornar se existe na tabela um valor igual ao parametro
    function ComparaValoresInternos(XSqlTabelaA: string; XView: string; XCodigoV: string; XCodigoB: string; XCount: Integer): Boolean;
    //DJ 27/11/2009: Verifica dados da pessoa, mesma função da UCadplaca
    function verificaPessoa(msg: Boolean): Boolean;
    //DJ 27/11/2009: Limpa os dados o painel cadastro rapido(ctrl + N),igual a UCadPlaca
    procedure limpar(pessoa, equipamento: Boolean);
    // - 04/02/2009: passar como parametro placa (passar true para definir placa como ativa)e será retornado o seu respectivo código (caso não axar result := -1)
    function VerificaPlacaAtiva(placa: string): Boolean;

    // VERIFICA CST PARA EXPORTAÇÃO
    function VerificaCST(XCod_Cst: Integer): integer;
    //Função responsável por efetuar a leitura do campo que limita a quantidade de registros a serem visualizados na ordem de serviços
    function LerMaxRegistroXmlConfig: Boolean;
    //Função responsável por efetuar a gravação do campo que limita a quantidade de registros a serem visualizados na ordem de serviços
    function GravaMaxRegistroXmlConfig: Boolean;

    //Gera documento fiscal para a ordem
    function GeraFiscal: Boolean;
    //Função Utilizada para gerar a tela do fiscal a partir da tela de consulta
    function AbreFiscal: Boolean;
    procedure funcaocordup;
    //Função Para calcular desconto da ordem
    function EfetuaDesconto(OrigemDesconto: string; TipoDesconto: string): Boolean;
    //Função utilizada para buscar o cliente atravez do nome o cpfcnpj
    function BuscaCliente(XTipo: string; XValor: string): Boolean;
    //Função utilizada para buscar o veiculo do cliente atravez da placa
    function BuscaPlaca(XValor: string): Boolean;
    //Função que efetua a devolução total de Nota Fiscal Normal e Nota Fiscal Eletronica, emitindo as Notas Fiscais de entrada Correspondente
    function DevNotaFiscal(XCod_PedDev: Integer): Boolean;
    //Função para inserir o vendedor a lista de vendedores
    function InsereMultiploVendedor(XCod_VendedorMultiplo: Integer; xTipoOperacao: string): Boolean;
    //Função para remover o vendedor selecionado da string grid
    function RemoveMultiploVendedor(xTipoOperacao: string): Boolean;
    //Função Auxiliar para Devolução de Nota Fiscal - Efetua Estorno do Financeiro
    function DevNotaFiscal_EstornoFinanceiro: Boolean;
    //Função Auxiliar para Devolução de Nota Fiscal - Tentar registrar o cliente da nota fiscal de saída como fornecedor da NF de entrada
    function DevNotaFiscal_SetaClienteFornecedor: Boolean;
    //Função Auxiliar para Devolução de Nota Fiscal - Verifica Configurações necessárias para devolução
    function DevNotaFiscal_VerificaConfigs: Boolean;
    //Função Auxiliar para Devolução de Nota Fiscal - Gera Pedido de compra e lançao itens
    function DevNotaFiscal_EfetuaDevolucao: Boolean;
    //Filtra Tabela Slave e calcula total
    procedure FiltraSlaveDev(XCod_PedSlave: Integer);
    //Função Auxiliar para Devolução de Nota Fiscal - Fecha o pedido e seta dados do fiscal
    function DevNotaFiscal_SetaFiscal: Boolean;
    //Função Auxiliar para Devolução de Nota Fiscal - Fecha o pedido e seta dados do fiscal
    function DevNotaFiscal_EmiteFiscal: Boolean;
    //Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
    function RetornaNumPed: Integer;
    //Paulo 29/11/2011:busca a comissão do responsavel da equipe
    procedure RetornaComissao(CodResp: Integer);
    //Paulo 29/11/2011:Imprime imagem no relatório do rave report
    procedure PrintImage(RVSystem: TRvSystem; Row, Col, ImageWidth, ImageHeight: Double; Bitmap: TBitmap; FileName: string = '');
    //Paulo 19/04/2012: Função Utilizada para gerar a tela do fiscal para serviços a partir da tela de consulta
    function AbreFiscalServicos: Boolean;
    //Edmar - 28/03/2014 - Efetua o calculo do ISS
    function EfetuaCalculoISS: Boolean;
    //Edmar - 01/04/2014 - Efetua retenção do ISS
    function RetemIss: Boolean;
    //Edmar - 04/04/2014 - Filtra a GRID de ORDEM pela data (abertura ou fechamento)
    procedure FiltraOrdemData(xDataInicial, xDataFinal, xSituacao: string);
    //Edmar - 10/07/2014 - insere classificação para o serviço
    procedure InsereClassificacaoServico;
    //Edmar - 11/07/2014 - Imprime cabeçalho da empresa
    procedure ImpCompModelo10_Cabecalho_Empresa;
    //Edmar - 11/07/2014 - Imprime cabeçalho do cliente
    procedure ImpCompModelo10_Cabecalho_Cliente;
    //Edmar - 11/07/2014 - Imprime cabeçalho de produtos
    procedure ImpCompModelo10_Cabecalho_Produtos;
    //Edmar - 11/07/2014 - Imprime corpo produtos
    procedure ImpCompModelo10_Corpo_Produtos;
    //Edmar - 11/07/2014 - Imprime cabeçalho de serviços
    procedure ImpCompModelo10_Cabecalho_Servicos;
    //Edmar - 11/07/2014 - Imprime corpo serviços
    procedure ImpCompModelo10_Corpo_Servicos;
    //Edmar - 21/07/2014 - Busca os totais corretos da ordem e retorna para os edits
    procedure RetornaValoresBanco;
    //Imprime Comprovante de OS numero 21
    procedure ImpComprovante21;
    //Alex - 16/03/218: Função utilizada para inserir os multiplos vendedores junto ao banco de dados
    function InsereMultiploVendedorBD(xCodigoItemVenda: Integer; xTipoOperacao: string): Boolean;
    //Função utilizada para remover os multiplo vendedores do banco de dados
    function RemoveMultiploVendedorBD(xCodigoItemVenda: Integer; xTipoOperacao: string): Boolean;
  public

    { Public declarations }

  end;

var
  FOrdemMec: TFOrdemMec;

  //VARIAVEIS RESPONSÁVEIS POR ARMAZENAR OS VALORES DAS CHAVES PRIMÁRIAS E ESTRANGEIRAS UTILIZADAS NA ORDEM
  XCOD_ORDEM, XCOD_CLIENTE, XCOD_EQUIPAMENTO, XCOD_CONTABANCO, XCOD_VENDEDOR, XCOD_FUNCIONARIO, XCOD_FORMPAG, XCOD_CONTA, XCOD_CONTASERV: INTEGER;
  XCOD_ITPROD, XCOD_ITSERV, XCOD_ITDESP, XCOD_SERVICOCLASSIFICACAO: INTEGER;
  XDATA: string;
  XResult: real; // armazena valores das horas calculadas para calculo
  XNum_Horas: string; // armazena as horas normais e extras para executar calculo financeiro
  XESTADO: string; //Controla o estado inserçao ou edição
  XLIBDESCPROD, XLIBMARGEMSEG: Boolean; //Variável que controla se foi liberado um desconto superior ao cadastrado para o produto
  XALIQCOMISS: REAL; // Armazena o percentual Total de comissão utilizado para caso haja mais de um comissionado
  XVLRUNITVISTA, XVLRTVISTA, XVLRTOTAL, XVLRTPROD, XVLRTSERV: REAL; // ARMARZENA VALOR TOTAL DO PEDIDO
  XLIBERA_MARK: Boolean; // se o campo for TRUE o campo MARK eh liberado na grid do funcionario
  XDiaSemana: integer; // recebe de retorno o numero q representa o dia da semana
  xAliquotaIss: Real;
  XPESPROD: Integer; // pesquisa de produto 1 - codigo de barra, 0 - controle interno, 2 - codigo do fabricante, 3 - descricao
  //Estes valores devem ser passados no on show de cada formulario que inheritar o fcadpadrao
//	XTabela: TIBQuery; //Nome da tabela padrão para se trabalhar no Cadastro Padrão
  XCampo: string; //Nome do campo Principal da tabela padrão para se trabalhar no Cadastro Padrão
  //   XPkTabela: String; //Nome da PK da tabela padrão para se trabalhar no Cadastro Padrão
  //   XTransaction: TIBTransaction; //Nome do Transaction padrão para se trabalhar no Cadastro Padrão
  XView: TIBQuery; // Nome da View Padrao
  XTab: Boolean; // Caso true Define que a query de consulta é a Xtabela
  XDescricao: string; // Descriçao da tabela padrão em andamento utilizado nas mensagens
  //   XSQLTABELA: String; // Nome da tabela no BD para consultas Sql
  XSQLVIEW: string; // Nome da VIEW no BD para consultas Sql
  XLiberaDados: string; //String que passa mais uma consulta na procedure liberadados
  XCODPKCOMIS: Integer; //Chave primaria para lançamento automático de comissão ao fechar o pedido
  XVLRCOMIS: REAL; // Armazena o Vlr da Comissão que o vendedor receberá no pedido

  XCod_usuario: Integer;
  XDtGarantia: string;
  XQtdGarantia: Integer;

  XNumOrdem: string; // - 19/03/2009: armazena numero da ordem
  //07/11/2018 - armazena qual o tipo a comissão do vendedor vai ser aplicada (PROD or SERV)
  xTipoComissaoVendedor: string;

  XCOD_CLIENTE_SELECT: Integer;

  XTipoProc: Smallint; //0 = procura normal 1=procura pelo nome

  XTipoPes: string;
  XContPes: string;

  XCod_PedCompra, XCod_PedVendaDev, XCod_FornecedorDev, XCodSlaveDev, XCOD_FISCAL: Integer; //ALEX : 19/01/09 - Variaveis auxiliares para controle de devolução de ordem de serviço
  XCfopDev: string; //Variavel para armazenar temporariamente o cfop de devolução
  XOrdem: string;
  XCodTmpEstoque: string; //Armaena de forma temporaria o codigo do estoque durante a pesquisa automatica (inteligente)
  XInicialSQl, XFinalSql: string; //Djonathan 26/11/2009
  XMin, XMax: string; //Djonathan 26/11/2009
  XOK: Boolean; // - 27/04/2009: ser variavel estiver como true é que ja foi encontrado uma placa com cliente correspondente
  XCONTROLECONSULTA: Boolean; //DJ 02/12/2009: Indica se esta acontecendo uma consulta
  XcontroleCtrlN, XControleCadPlaca: Boolean; //Determina se o cadastro de ctrln esta cadastrando ou consultando
  XFatOrd: Boolean; //Paulo 14/03/2011: PAra controle de fatura
  XCARTACORRECAO, XComp2Vias: Boolean; //Paulo 20/01/2012: Para impressão de ordem em 2 vias
  Xcop, XNovaPag, xcont, xContaLinha: Integer;

  //relatorio QRAbertOrdem13
  xTotalProd, xTotalServ, xTotalDescProd, xTotalDescServ: Double;
  xTotalFinalServ, xTotalFinalProd, xTotalFinalOrdem: Double;

  xExisteProd, xExisteServ: Boolean; //Jônatas 09/10/2013 - Variável para verificar a existência de produtos e serviços na OS
  XLinha: Double;
  XtipoImp: string; //Define o tipo de impressão 'MEIA' ou 'INTEIRA' Meia Pagina ou Pagina inteira de A4
  XContPagina: Integer;
  xPesquisaDesc, xPesquisaCtrlInt, xPesquisaCodFabr: Boolean;
  XVLR_CREDITO_OS: Real;
  //variaveis de controle de multiplos vendedores
  xcodMultiplovendedor: integer;
  xComissaoMultiploVendedor: real;
  XTotalAliquota: Real;
  XTotalVendedoresProd, XTotalVendedoresServ: Integer; //Numero de vendedores inseridos a grade
  xPrimeiraAliqProd, xPrimeiraAliqServ: Real; //armazena a primeira aliquota do primeiro vendedor selecionado
implementation

uses AlxMessage, Alxor32, UMenu, UDmServ, UDMEstoque, UDMMacs, UDMPessoa,
  UCliente, UCadEquipamento, UFormPag, UDMFinanc, UProduto, USenha,
  Alxorprn, UCadEquipe, UDMGEOGRAFIA, UFiscal, UDMSaida, UDMCaixa,
  UDmBanco, UDMConta, UConsPlncta, UPedidoPadrao, UDMEntrada, UDMExporta,
  UExpImp, URelMecanica, Math, UOrcamento, UCadCidade, UFiscalOrdem,
  URelEquipe, UFiscalEntradas, UMzrNfe, URelPeriodoFiscal, UPedVenda,
  UPadraoFiscal, UListaNfe, UMDO, URelOrdem, UFServico, URelData, ComObj,
  UOrcamentoMac, UMzrNFSe, UEscolhaServico, UServico, Cripto, StrUtils,
  UOrcamento3, UConsProduto, ULancTroco {, UPadraoContas}, UDevolucao,
  UFuncionario, URelComissaoProd, DBClient;

{$R *.dfm}

//Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa

function TFOrdemMec.RetornaNumPed: Integer;
var
  XFlag: Integer;
begin
  Result := -1;
  XFlag := -1;

  try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('SELECT EMPRESA.PROX_OS FROM EMPRESA WHERE EMPRESA.COD_EMPRESA = :COD_EMP');
    MDO.Query.ParamByName('COD_EMP').AsString := FMenu.LCODEMPRESA.Caption;
    MDO.Query.Open;

    if MDO.Query.FieldByName('PROX_OS').AsString = '' then
      XNumOrdem := '1'
    else
      XNumOrdem := MDO.Query.FieldByName('PROX_OS').AsString;

    while XFlag = -1 do
    begin
      if FiltraTabela(DMMACS.TALX, 'VWORDEM', 'numero', XNumOrdem, '') = True then
        XNumOrdem := IntToStr((StrToInt(XNumOrdem) + 1))
      else
        XFlag := 1;
    end;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('UPDATE EMPRESA SET EMPRESA.PROX_OS = :NUMOS WHERE EMPRESA.COD_EMPRESA = :COD_EMP');
    MDO.Query.ParamByName('NUMOS').AsString := IntToStr(StrToInt(XNumOrdem) + 1);
    MDO.Query.ParamByName('COD_EMP').AsString := FMenu.LCODEMPRESA.Caption;

    try
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    except
      MDO.Transac.RollbackRetaining;
    end;

    Result := StrToInt(XNumOrdem);
  except
    Result := StrToInt(XNumOrdem);
  end;

  {Try
    //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
      FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
    //Recebe o Código de vendas
      If DMMacs.TEmpresa.FieldByName('PROX_OS').AsString = '' Then
          XNumOrdem := '1'
      Else
          XNumOrdem := DMMacs.TEmpresa.FieldByName('PROX_OS').AsString;

      While XFlag = -1 Do
      Begin
          If FiltraTabela(DMMACS.TALX, 'VWORDEM', 'numero', XNumOrdem, '') = True
              Then Begin
              XNumOrdem := IntToStr((StrToInt(XNumOrdem) + 1));
          End
          Else Begin
              XFlag := 1;
          End;
      End;
    //Incrementa o codigo de vendas em Empresa
      DMMACS.TEmpresa.Edit;
      DMMacs.TEmpresa.FieldByName('PROX_OS').AsString := IntToStr(StrToInt(XNumOrdem) + 1);
      DMMACS.TEmpresa.Post;
    //Atualiza e confirma os Dados de empresa
      Try
          DMMacs.Transaction.CommitRetaining;
      Except
          DMMacs.Transaction.RollbackRetaining;
      End;
      Result := StrToInt(XNumOrdem);
  Except
      Result := StrToInt(XNumOrdem);
  End; }
end;

//Função Auxiliar para Devolução de Nota Fiscal - Verifica Configurações necessárias para devolução

function TFOrdemMec.DevNotaFiscal_VerificaConfigs: Boolean;
begin
  Result := True;
  try
    FMenu.MAux.Lines.Clear;
    //Verifica se existe a forma de pagamento a vista
    if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '') = False then
    begin
      Result := False;
      FMenu.MAux.Lines.Add('Financeiro : É necessário ter forma de pagamento A VISTA cadastrada');
    end;

    //Verifica Cfop para devolução de mercadoria
    XCfopDev := '1202'

  except
    Result := False
  end;
end;
//Função Auxiliar para Devolução de Nota Fiscal - Tentar registrar o cliente da nota fiscal de saída como fornecedor da NF de entrada

function TFOrdemMec.DevNotaFiscal_SetaClienteFornecedor: Boolean;
begin
  Result := True;
  try
    //Procura fornecedor com o mesmo código pessoa que o código do cliente
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('  select pessoa.cod_pessoa, vwcliente.cod_cliente, vwfornec.cod_fornec from ordem ');
    DMMACS.TALX.SQL.Add('   left join vwcliente on ordem.cod_cliente=vwcliente.cod_cliente ');
    DMMACS.TALX.SQL.Add('   left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
    DMMACS.TALX.SQL.Add('   left join vwfornec on pessoa.cod_pessoa = vwfornec.cod_pessoa ');
    DMMACS.TALX.SQL.Add('   Where ordem.cod_ordem=:codigo ');
    DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_PedVendaDev;
    DMMACS.TALX.Open;
    if DMMACS.TALX.FieldByName('cod_fornec').AsInteger <= 0 then
    begin
      //Não existe fornecedor cadastrado, devemos cadastrar
      XCod_FornecedorDev := InserReg(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC');
      DMPESSOA.TFornecedor.Edit;
      DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsInteger := DMMACS.TALX.FieldByname('COD_PESSOA').AsInteger;
      DMPESSOA.TFornecedor.FieldByName('COD_INTERNO').AsInteger := XCod_FornecedorDev;
      DMPESSOA.TFornecedor.FieldByName('DATA_CAD').AsDateTime := Date();
      DMPESSOA.TFornecedor.Post;
    end
    else
    begin
      //Já existe um fornecedor cadastrado para este caso
      XCod_FornecedorDev := DMMACS.TALX.FieldByName('cod_fornec').AsInteger
    end;
  except
    Result := False
  end;
end;
//Função Auxiliar para Devolução de Nota Fiscal - Efetua Estorno do Financeiro

function TFOrdemMec.DevNotaFiscal_EstornoFinanceiro: Boolean;
begin
  Result := True;
  try
    //Chama Função já existente para cancelar financeiro
    if CancelLanOrd(IntToStr(XCod_PedVendaDev)) = False then
      Result := False;
  except
    Result := False
  end;
end;

//Filtra Tabela Slave e calcula total

procedure TFOrdemMec.FiltraSlaveDev(XCod_PedSlave: Integer);
begin
  //INSERE COMANDOS PARA FILTRAR
  DMESTOQUE.TSlave.Close;
  DMESTOQUE.TSlave.SQL.Clear;
  DMESTOQUE.TSlave.SQL.Add(' Select * From itprodord ');
  DMESTOQUE.TSlave.SQL.Add(' left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
  DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
  DMESTOQUE.TSlave.SQL.Add(' Where itprodord.cod_ordem = :CODPEDVENDA ');
  DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsInteger := XCod_PedVendaDev;
  DMESTOQUE.TSlave.Open;
  //INSERE COMANDOS PARA FILTRAR ITENS DEVOLVIDOS
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  DMESTOQUE.Alx.SQL.Add(' Select * ');
  DMESTOQUE.Alx.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
  DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
  DMESTOQUE.Alx.SQL.Add(' Where itprodord.cod_ordem = :CODPEDVENDA ');
  DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsInteger := XCod_PedCompra;
  DMESTOQUE.Alx.Open;
end;
//Função Auxiliar para Devolução de Nota Fiscal - Gera Pedido de compra e lançao itens

function TFOrdemMec.DevNotaFiscal_EfetuaDevolucao: Boolean;
var
  XProxPed: Integer;
begin
  Result := True;
  try
    //PASSO 01 - Seta dados do pedido de venda como devolvido
    if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCod_PedVendaDev), '') = True then
    begin
      DMServ.TOrd.Edit;
      DMServ.TOrd.FieldByName('status').AsString := 'DEVOLVIDO';
      DMServ.TOrd.FieldByName('COMISSAO').AsCurrency := 0;
      DMServ.TOrd.Post;
    end
    else
    begin
      Result := False;
      FMenu.MAux.Lines.Add('A o efetuar devolução A oRDEM DE sERVIÇO não foi encontrado para setar status como devolvido');
    end;
    //PASSO 02 - Criar e gravar cabeçalho de novo pedido de compra

    //filtra as formas de pagamento
    FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '');
    XProxPed := DMMACS.TEmpresa.FieldByName('PROXPEDCOMP').AsInteger;
    DMMACS.TEmpresa.Edit;
    DMMACS.TEmpresa.FieldByName('PROXPEDCOMP').AsInteger := DMMACS.TEmpresa.FieldByName('PROXPEDCOMP').AsInteger + 1;
    DMMACS.TEmpresa.Post;
    //ABRE NOVO PEDIDO DE COMPRA PARA SUPORTAR A DEVOLUÇÃO
    XCod_PedCompra := InserReg(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP'); //Insere novo registro de pedido de compra com codigo novo
    DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger := XCod_PedCompra;
    DMENTRADA.TPedC.FieldByName('NUMPED').AsInteger := XProxPed;
    DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime := DATE();
    DMENTRADA.TPedC.FieldByName('DTFECH').AsDateTime := DATE();
    DMENTRADA.TPedC.FieldByName('FISCO').AsString := 'NF';
    DMENTRADA.TPedC.FieldByName('COBRANCA').AsString := 'CARTEIRA';
    DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger := XCod_FornecedorDev;
    DMENTRADA.TPedC.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
    DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency := DMServ.WOrdem.FieldByName('TOTAL').AsCurrency;
    DMENTRADA.TPedC.FieldByName('COD_DEVOLUCAO').AsInteger := XCod_PedVendaDev;
    DMENTRADA.TPedC.FieldByName('NUMDEV').AsString := DMServ.WOrdem.FieldByName('NUMFISCAL').AsString;
    DMENTRADA.TPedC.FieldByName('COD_FORMPAG').AsInteger := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
    DMENTRADA.TPedC.FieldByName('SITUACAO').AsString := 'FECHADO';
    DMENTRADA.TPedC.Post;

    //PASSO 03 - Insere os itens de pedido
    FiltraSlaveDev(XCod_PedVendaDev); //seleciona items do pedido
    //Percorremos todos os itens do pedido de venda para efetuar os laçamentos de entrada
    DMESTOQUE.TSlave.First;
    while not DMESTOQUE.TSlave.Eof do
    begin
      //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
      if FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '') = False then
      begin
        Result := False;
        FMenu.MAux.Lines.Add('Estoque: Verifique a ocorrencia de itens de venda com problemas de código de estoque');
        Exit;
      end;
      if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '') = False then
      begin
        Result := False;
        FMenu.MAux.Lines.Add('Vwsimilar: Verifique a ocorrencia de itens de venda com problemas de código de estoque');
        Exit;
      end;
      if FiltraTabela(DMServ.TPOrd, 'itprodord', 'cod_itprodord', DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsString, '') = False then
      begin
        Result := False;
        FMenu.MAux.Lines.Add('Itens de de venda: Verifique a ocorrencia de itens de venda com problemas de código de estoque');
        Exit;
      end;
      //Seta informações do item de venda como devolvido
      DMServ.TPOrd.Edit;
      DMServ.TPOrd.FieldByName('OPERACAO').AsString := 'DVL';
      DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency := 0;
      DMServ.TPOrd.FieldByName('QTDDEV').AsCurrency := DMServ.TPOrd.FieldByName('qtd').AsCurrency;
      DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency := 0;
      DMServ.TPOrd.FieldByName('LUCMOE').AsCurrency := 0;
      DMServ.TPOrd.Post;

      //INSERE PRODUTO EM ITENS DE PEDIDO DE COMPRA
      XCodSlaveDev := InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');
      DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger := XCodSlaveDev;
      DMENTRADA.TItemPC.FieldByName('COD_DEVOLUCAO').AsInteger := DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsInteger;
      DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency := DMESTOQUE.TSlave.FieldByName('ALIQICMS').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency := DMESTOQUE.TSlave.FieldByName('BASEICMS').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency := DMESTOQUE.TSlave.FieldByName('VLRICMS').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('REDUCBASEICMS').AsCurrency := DMESTOQUE.TSlave.FieldByName('REDUCBASEICMS').AsCurrency;
      if DMESTOQUE.TSlave.FieldByName('APLICARST').AsString = '1' then
      begin
        DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency := DMESTOQUE.TSlave.FieldByName('BASEICMSSUBS').AsCurrency;
        DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency := DMESTOQUE.TSlave.FieldByName('VLRICMSSUBS').AsCurrency;
      end
      else
      begin
        DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency := 0;
        DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency := 0;
      end;
      DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency := DMESTOQUE.TSlave.FieldByName('ALIQIPI').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('VLRIPI').AsCurrency := DMESTOQUE.TSlave.FieldByName('VLRIPI').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('FRETE').AsCurrency := 0;
      DMENTRADA.TItemPC.FieldByName('EMBPROD').AsCurrency := 0;
      DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger := XCod_PedCompra;
      DMENTRADA.TItemPC.FieldByName('DATA').AsString := DateToStr(Date());
      DMENTRADA.TItemPC.FieldByName('QTDEST').AsCurrency := DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
      DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency := DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency := DMESTOQUE.TSlave.FieldByName('desconto').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency := DMESTOQUE.TSlave.FieldByName('DESCNF').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency := DMESTOQUE.TSlave.FieldByName('VALUNIT').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency := DMESTOQUE.TSlave.FieldByName('total').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('COD_CST').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_CST').AsInteger;
      DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCfopDev;
      DMENTRADA.TItemPC.Post;
      //ATULIZA ESTOQUE
      DMESTOQUE.TEstoque.Edit;
      DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency := DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency + DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency;
      DMESTOQUE.TEstoque.Post;
      DMESTOQUE.TSlave.Next;
    end;

  except
    Result := False
  end;
end;

//Função Auxiliar para Devolução de Nota Fiscal - Fecha o pedido e seta dados do fiscal

function TFOrdemMec.DevNotaFiscal_SetaFiscal: Boolean;
begin
  Result := True;
  try
    //Filtra documento fiscal de Saída
    if FiltraTabela(DMSAIDA.TAlx, 'docfisord', 'COD_ORDEM', IntToStr(XCod_PedVendaDev), '') = True then
    begin
      //Sql para localizar todos os periodos fiscais em aberto
      DMMACS.TPeriodoFiscal.Close;
      DMMACS.TPeriodoFiscal.SQL.Clear;
      DMMACS.TPeriodoFiscal.SQL.Add(' Select * from periodofiscal where (periodofiscal.fechado=''N'')');
      DMMACS.TPeriodoFiscal.Open;
      DMMACS.TPeriodoFiscal.Last;
      if DMMACS.TPeriodoFiscal.RecordCount > 1 then
      begin
        Result := False;
        FMenu.MAux.Lines.Add('Documento Fiscal: Erro ao selecionar documento fiscal de saída');
        Exit;
      end;
      //INSERE FISCAL EM PEDIDO DE COMPRA
      XCOD_FISCAL := InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC');
      DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsInteger := XCod_PedCompra;
      DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger := XCOD_FISCAL;
      DMENTRADA.TFiscPC.FieldByName('COD_PERIODOFISCAL').AsInteger := DMSAIDA.TAlx.FieldByName('COD_CFOP').AsInteger;
      DMENTRADA.TFiscPC.FieldByName('COD_PERIODOFISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
      DMENTRADA.TFiscPC.FieldByName('DTEMISSAO').AsDateTime := DMSAIDA.TAlx.FieldByName('DTEMISSAO').AsDateTime;
      DMENTRADA.TFiscPC.FieldByName('DTENTSAID').AsDateTime := DMSAIDA.TAlx.FieldByName('DTENTSAID').AsDateTime;
      DMENTRADA.TFiscPC.FieldByName('HORASAID').AsDateTime := DMSAIDA.TAlx.FieldByName('HORASAID').AsDateTime;
      DMENTRADA.TFiscPC.FieldByName('BASEICMS').AsCurrency := DMSAIDA.TAlx.FieldByName('BASEICMS').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRICMS').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRICMS').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency := DMSAIDA.TAlx.FieldByName('BASCALSUBS').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRICMSUBS').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRSEG').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRSEG').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRTOTIPI').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRTOTIPI').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLROUTRASDESP').AsCurrency := DMSAIDA.TAlx.FieldByName('VLROUTRASDESP').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRTOTPROD').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRTOTPROD').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRTOTDOCNF').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRTOTDOCNF').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRISENTOICMS').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRISENTOICMS').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('SERIE').AsString := '1';
      DMENTRADA.TFiscPC.FieldByName('MODELONF').AsString := DMSAIDA.TAlx.FieldByName('MODELONF').AsString;
      DMENTRADA.TFiscPC.FieldByName('obs').AsString := 'Ref. Devolução da NF: ' + DMSAIDA.TAlx.FieldByName('numdocfis').AsString;
      DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString := DMSAIDA.TAlx.FieldByName('FRETECOMP').AsString;
      DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRFRETE').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsCurrency := DMSAIDA.TAlx.FieldByName('COD_TRANSP').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('QUANTFRETE').AsCurrency := DMSAIDA.TAlx.FieldByName('QUANTFRETE').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('ESPECIEFRETE').AsString := DMSAIDA.TAlx.FieldByName('ESPECIEFRETE').AsString;
      DMENTRADA.TFiscPC.FieldByName('MARCAFRETE').AsString := DMSAIDA.TAlx.FieldByName('MARCAFRETE').AsString;
      DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString := DMSAIDA.TAlx.FieldByName('NUMCONHEC').AsString;
      DMENTRADA.TFiscPC.FieldByName('PLACA').AsString := DMSAIDA.TAlx.FieldByName('PLACA').AsString;
      DMENTRADA.TFiscPC.FieldByName('UFPLACA').AsString := DMSAIDA.TAlx.FieldByName('UFPLACA').AsString;
      DMENTRADA.TFiscPC.FieldByName('PESOBRUTO').AsCurrency := DMSAIDA.TAlx.FieldByName('PESOBRUTO').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('PESOLIQ').AsCurrency := DMSAIDA.TAlx.FieldByName('PESOLIQ').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('FRETECONTA').AsString := DMSAIDA.TAlx.FieldByName('FRETECONTA').AsString;
      DMENTRADA.TFiscPC.FieldByName('TIPODOCFIS').AsString := '1';
      DMENTRADA.TFiscPC.FieldByName('SERIE').AsString := '1';
      DMENTRADA.TFiscPC.FieldByName('EMISSAOPROPRIA').AsString := '1';
      DMENTRADA.TFiscPC.Post;
    end
    else
    begin
      Result := False;
      FMenu.MAux.Lines.Add('Documento Fiscal: Erro ao selecionar documento fiscal de saída');
    end;
  except
    Result := False
  end;
end;

//Função Auxiliar para Devolução de Nota Fiscal - Fecha o pedido e seta dados do fiscal

function TFOrdemMec.DevNotaFiscal_EmiteFiscal: Boolean;
begin
  Result := True;
  try
    //Confirma alterações
    try
      DMPESSOA.TransacPessoa.CommitRetaining;
      DMServ.IBT.CommitRetaining;
      DMENTRADA.IBT.CommitRetaining;

      FMenu.TIPOREL := 'NF';
      FMenu.TIPOAUX := '';
      FMenu.XNotaEntrada := True;
      if FiltraTabela(DMENTRADA.WPedc, 'VWPEDC', 'COD_PEDCOMP', IntToStr(XCod_PedCompra), '') = True then
      begin
        AbrirForm(TFFiscalEntradas, FFiscalEntradas, 0);
      end
      else
      begin
        Result := False;
        FMenu.MAux.Lines.Add('Fiscal: Erro ao localizar visão do pedido após confirmar dados')
      end;

      FMenu.XNotaEntrada := False;
    except
      Result := False;
      FMenu.MAux.Lines.Add('Fiscal: Erro ');
      DMPESSOA.TransacPessoa.RollbackRetaining;
      DMServ.IBT.RollbackRetaining;
      DMENTRADA.IBT.RollbackRetaining;
    end;
  except
    Result := False;
    FMenu.MAux.Lines.Add('Fiscal: Erro ')
  end;
end;

//Função para inserir o vendedor a lista de vendedores
function TFOrdemMec.InsereMultiploVendedor(XCod_VendedorMultiplo: Integer; xTipoOperacao: string): Boolean;
var
  I, I2, XTotalVendedoresInseridos: Integer;
  xVendedorAuxiliar: string;
  xStringGridAux: TStringGrid;
  XAliquotaVendedor: Real;
begin
  try
    if XCod_VendedorMultiplo = -1 then
    begin
      if FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', DMServ.TAlx2.FieldByName('cod_func').AsString, '') = True then
      begin //CASO CONSEGUIU SELECIONAR CLIENTE
        XCod_VendedorMultiplo := DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
        FrmVendedor.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
        FrmVendedor.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
      end
      else
      begin
        MessageDlg('Selecione um vendedor base', mtWarning, [mbOK], 0);
        FrmVendedor.BTNOPEN.SetFocus;
        Exit;
      end;
    end;

    //atribui para string grid auxiliar qual é a grid que está sendo manipulada
    if xTipoOperacao = 'PROD' then
      xStringGridAux := sgMultiplosVendedoresProduto
    else
      xStringGridAux := sgMultiplosVendedoresServico;

    //Buscamos a comissão referente ao vendedor
    DMPESSOA.TAux1.Close;
    DMPESSOA.TAux1.SQL.Clear;
    DMPESSOA.TAux1.SQL.Add(' Select funcargo.comissao_vvpro as comissaoprod, funcargo.comissao_vvser as comissaoserv ');
    DMPESSOA.TAux1.SQL.Add(' from funcargo ');
    DMPESSOA.TAux1.SQL.Add(' Where funcargo.cod_funcionario=:Codigo order by funcargo.cod_funcargo desc ');
    DMPESSOA.TAux1.ParamByName('Codigo').AsInteger := XCod_VendedorMultiplo;
    DMPESSOA.TAux1.Open;

    if DMPESSOA.TAux1.IsEmpty then
    begin
      MessageDlg('Informe a aliquota de comissão do vendedor.', mtWarning, [mbOK], 0);
      if FrmVendedor.Visible then
        FrmVendedor.BTNOPEN.SetFocus;
      LimpaCamposProd;
      Exit;
    end
    else
    begin
      if xTipoOperacao = 'PROD' then
      begin
        XAliquotaVendedor := DMPESSOA.TAux1.FieldByName('comissaoprod').AsCurrency;
        //
        if (xPrimeiraAliqProd = 0) then
          xPrimeiraAliqProd := XAliquotaVendedor
        else
          XAliquotaVendedor := xPrimeiraAliqProd;
      end
      else
      begin
        XAliquotaVendedor := DMPESSOA.TAux1.FieldByName('comissaoserv').AsCurrency;
        //
        if (xPrimeiraAliqServ = 0) then
          xPrimeiraAliqServ := XAliquotaVendedor
        else
          XAliquotaVendedor := xPrimeiraAliqServ;
      end;
    end;
    xStringGridAux.ColWidths[0] := 17;
    xStringGridAux.ColWidths[1] := 30;
    xStringGridAux.ColWidths[2] := 14;
    xStringGridAux.ColWidths[3] := 90;
    XTotalAliquota := 0;
    if FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(XCod_VendedorMultiplo), '') then
    begin
      //Alex - 15/03/2018 Valida quanto a aliquota
      if XAliquotaVendedor <= 0 then
      begin
        MessageDlg('Informe um vendedor para ser capturado a comissão.', mtWarning, [mbOK], 0);
        FrmVendedor.BTNOPEN.SetFocus;
        Exit;
      end;
      //Alex - 14/03/2018 Inserimos o vendedor
      for I := 0 to xStringGridAux.RowCount - 1 do
      begin
        xVendedorAuxiliar := xStringGridAux.Cells[3, I];
        if (xVendedorAuxiliar = DMPESSOA.VWFuncionario.fieldByName('Nome').AsString) then
        begin
          //               	MessageDlg('Este vendedor já foi comissionado.', mtWarning, [mbOK], 0);
          DBGMultiploVendedor.SetFocus;
          Exit;
        end;
        if xStringGridAux.Cells[0, I] = '' then
        begin
          if xTipoOperacao = 'PROD' then
          begin
            XTotalVendedoresProd := XTotalVendedoresProd + 1;
            XTotalVendedoresInseridos := XTotalVendedoresProd;
          end
          else
          begin
            XTotalVendedoresServ := XTotalVendedoresServ + 1;
            XTotalVendedoresInseridos := XTotalVendedoresServ;
          end;

          xStringGridAux.Cells[0, I] := IntToStr(XCod_VendedorMultiplo);
          xStringGridAux.Cells[1, I] := FormatFloat('0.00', XAliquotaVendedor / XTotalVendedoresInseridos);
          xStringGridAux.Cells[2, I] := '%';
          xStringGridAux.Cells[3, I] := DMPESSOA.VWFuncionario.fieldByName('Nome').AsString;
          xStringGridAux.Cells[4, I] := IntToStr(I + 1);
          //Alex 15/03/2018 - Percorre novamente a grade redistribuindo as comissões
          for I2 := 0 to xStringGridAux.RowCount - 1 do
          begin
            if xStringGridAux.Cells[0, I2] <> '' then
            begin
              xStringGridAux.Cells[1, I2] := FormatFloat('0.00', XAliquotaVendedor / XTotalVendedoresInseridos);
            end;
          end;
          xStringGridAux.RowCount := xStringGridAux.RowCount + 1;
          Exit;
        end
        else
        begin
          XTotalAliquota := XTotalAliquota + StrToFloat(xStringGridAux.Cells[1, I]);
        end;
      end;
    end;
    xStringGridAux.Repaint;
  except

  end;
end;

//Função para remover o vendedor selecionado da string grid
function TFOrdemMec.RemoveMultiploVendedor(xTipoOperacao: string): Boolean;
var
  I, I2, XTotalVendedoresInseridos: Integer;
  xStringGridAux: TStringGrid;
  xPrimeiraAliquota: Real;
begin
  try
    //atribui para string grid auxiliar qual é a grid que está sendo manipulada
    if xTipoOperacao = 'PROD' then
      xStringGridAux := sgMultiplosVendedoresProduto
    else
      xStringGridAux := sgMultiplosVendedoresServico;

    if xStringGridAux.Cells[3, xStringGridAux.Row] = '' then
      Exit;

    if MessageDlg('Remover o vendedor ' + xStringGridAux.Cells[3, xStringGridAux.Row] + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if xStringGridAux.Cells[0, xStringGridAux.Row] <> '' then
      begin
        if xTipoOperacao = 'PROD' then
        begin
          XTotalVendedoresProd := XTotalVendedoresProd - 1;
          XTotalVendedoresInseridos := XTotalVendedoresProd;
          //
          xPrimeiraAliquota := xPrimeiraAliqProd;
        end
        else
        begin
          XTotalVendedoresServ := XTotalVendedoresServ - 1;
          XTotalVendedoresInseridos := XTotalVendedoresServ;
          //
          xPrimeiraAliquota := xPrimeiraAliqServ;
        end;

        //Alex 15/03/2018 - Percorre novamente a grade PARA REAJUSTAR AS LINHAS APÓS REMOÇÃO
        for I := xStringGridAux.Row to xStringGridAux.RowCount - 1 do
        begin
          if xStringGridAux.Cells[0, I + 1] = '' then
          begin
            xStringGridAux.Cells[0, I] := '';
            xStringGridAux.Cells[1, I] := '';
            xStringGridAux.Cells[2, I] := '';
            xStringGridAux.Cells[3, I] := '';
            xStringGridAux.Cells[4, I] := '';
          end
          else
          begin
            xStringGridAux.Cells[0, I] := xStringGridAux.Cells[0, I + 1];
            xStringGridAux.Cells[1, I] := xStringGridAux.Cells[1, I + 1];
            xStringGridAux.Cells[2, I] := xStringGridAux.Cells[2, I + 1];
            xStringGridAux.Cells[3, I] := xStringGridAux.Cells[3, I + 1];
            xStringGridAux.Cells[4, I] := xStringGridAux.Cells[4, I + 1];
          end;
        end;
        //Alex 15/03/2018 - Percorre novamente a grade redistribuindo as comissões
        for I2 := 0 to xStringGridAux.RowCount - 1 do
        begin
          if xStringGridAux.Cells[0, I2] <> '' then
            xStringGridAux.Cells[1, I2] := FormatFloat('0.00', xPrimeiraAliquota / XTotalVendedoresInseridos);
        end;
        xStringGridAux.RowCount := xStringGridAux.RowCount - 1;

        if xStringGridAux.Cells[0, 0] = '' then
        begin
          if xTipoOperacao = 'PROD' then
            xPrimeiraAliqProd := 0
          else
            xPrimeiraAliqServ := 0;
        end;
      end;
    end;
    xStringGridAux.Repaint;
  except
  end;
end;

//Função que efetua a devolução total de Nota Fiscal Normal e Nota Fiscal Eletronica, emitindo as Notas Fiscais de entrada Correspondente
function TFOrdemMec.DevNotaFiscal(XCod_PedDev: Integer): Boolean;
begin
  Result := True;
  try
    XCod_PedVendaDev := XCod_PedDev; //Seta para o código genérico o código do pedido de venda para devolução
    //PASSO 01 - Verificar Configurações para Garantir Devolução financeira e de Estoque junto com possibilidade para o Fiscal
    if DevNotaFiscal_VerificaConfigs = True then
    begin
      //PASSO 02 - Estornar Financeiro
      if DevNotaFiscal_EstornoFinanceiro = True then
      begin
        //PASSO 03 - Transformar Cliente em Fornecedor
        if DevNotaFiscal_SetaClienteFornecedor = True then
        begin
          //PASSO 04 - Gerar novo Pedido de Compra e Lançar devoluções dos Itens
          if DevNotaFiscal_EfetuaDevolucao = True then
          begin
            //PASSO 05 - Fechar o Pedido sem gerar Financeiro e setar documento fiscal
            if DevNotaFiscal_SetaFiscal = True then
            begin
              //PASSO 06 - Emitir Documentos Fiscais
              if DevNotaFiscal_EmiteFiscal = False then
              begin

              end;
            end
            else
            begin
              Result := False;
              if MessageDlg('Erro ao gerar documento fiscal para a Nota Fiscal de Devolução. Deseja visualizar estes erro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                MessageDlg('Mensagem:' + FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
            end;
          end
          else
          begin
            Result := False;
            if MessageDlg('Erro ao gerar devolução para a Nota Fiscal de saída. Deseja visualizar estes erro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              MessageDlg('Mensagem:' + FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
          end;
        end
        else
        begin
          Result := False;
          if MessageDlg('Erro ao setar Cliente/Fornecedor para a Nota Fiscal de Devolução. Deseja visualizar estes erro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            MessageDlg('Mensagem:' + FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
        end;
      end
      else
      begin
        Result := False;
        if MessageDlg('Erro ao estornar movimentações financeiras da Nota fiscal de Saída. Deseja visualizar estes erro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          MessageDlg('Mensagem:' + FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
      end;
    end
    else
    begin
      Result := False;
      if MessageDlg('Erro ao validar configurações para devolução de Nota Fiscal. Deseja visualizar estes erro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        MessageDlg('Mensagem:' + FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
    end;
  except
    Result := False;
  end;
  if Result = True then
  begin
    try
      DMPESSOA.TransacPessoa.CommitRetaining;
      DMSAIDA.IBT.CommitRetaining;
      DMENTRADA.IBT.CommitRetaining;
      MessageDlg('Devolução ocorrida com seucesso!', mtWarning, [mbOK], 0);
    except
      DMPESSOA.TransacPessoa.RollbackRetaining;
      DMSAIDA.IBT.RollbackRetaining;
      DMENTRADA.IBT.RollbackRetaining;
      MessageDlg('Não foi possível gravar devolução. Os dados foram retornados', mtWarning, [mbOK], 0);
    end;
  end
  else
  begin
    DMPESSOA.TransacPessoa.RollbackRetaining;
    DMSAIDA.IBT.RollbackRetaining;
    DMENTRADA.IBT.RollbackRetaining;
    MessageDlg('Não foi possível gravar devolução. Os dados foram retornados', mtWarning, [mbOK], 0);
  end;
end;

//Função utilizada para buscar o cliente atravez do nome o cpfcnpj

function TFOrdemMec.BuscaCliente(XTipo: string; XValor: string): Boolean;
begin
  //Limpa SQl
  DMPESSOA.TALX.Close;
  DMPESSOA.TALX.SQL.Clear;
  DMPESSOA.TALX.SQL.Add('SELECT * FROM VWCLIENTE ');
  if XTipo = 'NOME' then
  begin
    DMPESSOA.TALX.SQL.Add(' WHERE upper(VWCLIENTE.NOME)=:NOME');
    DMPESSOA.TALX.ParamByName('NOME').AsString := XValor;
  end;
  if XTipo = 'CPFCNPJ' then
  begin
    DMPESSOA.TALX.SQL.Add(' WHERE VWCLIENTE.CPFCNPJ=:CPFCNPJ');
    DMPESSOA.TALX.ParamByName('CPFCNPJ').AsString := XValor;
  end;

  DMPESSOA.TALX.Open;
  if not DMPESSOA.TALX.IsEmpty then
  begin
    //Seleciona cidade
    DMGEOGRAFIA.WCidade.Close;
    DMGEOGRAFIA.WCidade.SQL.Clear;
    DMGEOGRAFIA.WCidade.SQL.Add(' Select * from vwcidade where vwcidade.cod_cidade=:codigo ');
    DMGEOGRAFIA.WCidade.ParamByName('codigo').AsInteger := DMPESSOA.TALX.FieldByName('COD_CIDADE').AsInteger;
    DMGEOGRAFIA.WCidade.Open;
    if not DMGEOGRAFIA.TCidade.IsEmpty then
    begin
      XCOD_CIDADE := DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
      FrmCidade.EdDescricao.Text := DMGEOGRAFIA.WCidade.FieldByName('UF').AsString + '-' + DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
      FrmCidade.EDCodigo.text := DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    end;
    if MessageDlg('Foi encontrado o cliente: ' + #13 + DMPESSOA.TALX.FieldByName('NOME').AsString + #13 + 'CPF/CNPJ: ' + DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString + #13 + FrmCidade.EdDescricao.Text + #13 + 'Deseja editar este cliente?', mtWarning, [mbyes, mbno], 0) = mryes then
    begin
      XcontroleCtrlN := True;
      XCOD_CLIENTE := DMPESSOA.TALX.FieldByName('COD_CLIENTE').AsInteger;
      edNome.Text := DMPESSOA.TALX.FieldByName('NOME').AsString;
      edCNPJCPF.Text := DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString;
      edFone.Text := DMPESSOA.TALX.FieldByName('TELREL').AsString;
    end;
  end
  else
  begin
    XcontroleCtrlN := False;
  end;
end;

//Função utilizada para buscar o veiculo do cliente atravez da placa

function TFOrdemMec.BuscaPlaca(XValor: string): Boolean;
begin
  if edPlaca.Text <> '' then
  begin
    //Limpa SQl
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add(' select * from equipamento where (equipamento.placa=:placa) ');
    DMPESSOA.TALX.ParamByName('placa').AsString := edPlaca.Text;
    DMPESSOA.TALX.Open;
    if not DMPESSOA.TALX.IsEmpty then
    begin
      XControleCadPlaca := True;
      XCOD_EQUIPAMENTO := DMPESSOA.TALX.FieldByName('COD_EQUIPAMENTO').AsInteger;
      edModelo.Text := DMPESSOA.TALX.FieldByName('modelo').AsString;
      edNumFrota.Text := DMPESSOA.TALX.FieldByName('num_frota').AsString;
    end
    else
    begin
      XControleCadPlaca := False;
      XCOD_EQUIPAMENTO := -1;
    end;
  end;
end;

//Função Para calcular desconto da ordem

function TFOrdemMec.EfetuaDesconto(OrigemDesconto: string; TipoDesconto: string): Boolean;
begin
  //se nao tiver nenhum desconto zerar o desconto de produto
  if DMESTOQUE.TSlave.IsEmpty then
    EdDescTProd.ValueNumeric := 0;

  //se nao tiver nenhum desconto zerar o desconto de serviço
  if DMESTOQUE.TDesp.IsEmpty then
    EdDescTServ.ValueNumeric := 0;

  //CALCULA DESCONTOS
    //SERVICOS
  if (OrigemDesconto = 'SERVICO') or (OrigemDesconto = 'GERAL') then
  begin
    if XVLRTSERV <> 0 then
    begin
      //Efetua desconto somente para serviços
      if TipoDesconto = 'PERCENTO' then
      begin
        EdTotalserv.ValueNumeric := XVLRTSERV - (EdDescTServ.ValueNumeric * XVLRTSERV) / 100
      end
      else
      begin
        EdDescTServ.ValueNumeric := ((XVLRTSERV - EdTotalserv.ValueNumeric) * 100) / XVLRTSERV;
      end;
    end
    else
    begin
      EdDescTServ.ValueNumeric := 0;
      EdTotalserv.ValueNumeric := 0;
    end
  end;
  //PRODUTOS
  if (OrigemDesconto = 'PRODUTO') or (OrigemDesconto = 'GERAL') then
  begin
    if XVLRTPROD <> 0 then
    begin
      //Efetua desconto somente para serviços
      if TipoDesconto = 'PERCENTO' then
        EdtotalProd.ValueNumeric := XVLRTPROD - (EdDescTProd.ValueNumeric * XVLRTPROD) / 100
      else
        EdDescTProd.ValueNumeric := ((XVLRTPROD - EdtotalProd.ValueNumeric) * 100) / XVLRTPROD;
    end
    else
    begin
      EdtotalProd.ValueNumeric := 0;
      EdDescTProd.ValueNumeric := 0
    end;
  end;

  //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
  EdValorOrd.ValueNumeric := EdTotalserv.ValueNumeric + EdtotalProd.ValueNumeric + EdTotDesp.ValueNumeric;
  EdTotalOrd.ValueNumeric := EdValorOrd.ValueNumeric;
  EdDescTOrdem.ValueNumeric := ((XVLRTOTAL - EdValorOrd.ValueNumeric) * 100) / XVLRTOTAL;

  {   //DJ 03/12/2009: Condicao inserida para nao ser refeito os calculos de desconto quando for apenas consultas ou relatorios
     if(XCONTROLECONSULTA = false)
     then begin
      //CALCULA DESCONTOS PARA PRODUTO
      If EdDescTProd.ValueNumeric<>0
      Then Begin
          CalcPercent(StrToFloat(EdDescTProd.text) , XVLRTPROD, XVLRTPROD, 'D');
       If AlxValor<>0 Then
      EdtotalProd.Text:=FormatFloat('#,##0.00', AlxCalculo)
     Else
      EdtotalProd.Text:='0,00';
      End;

     //DJ 02/11/2009: Se for uma consulta nao aplica desconto
     if (XCONTROLECONSULTA = false)then
     begin
      EdTotalOrd.ValueNumeric:=EdValorOrd.ValueNumeric;

      CalcPercent(0, XVLRTOTAL-EdValorOrd.ValueNumeric, XVLRTOTAL , 'D');

      EdDescTOrdem.ValueNumeric:=AlxPercento;
     end;
     if EdTotalOrd.ValueNumeric = 0
     then begin
          EdDescTOrdem.ValueNumeric := 0;
     end;

   }
end;
//Função Utilizada para gerar a tela do fiscal a partir da tela de consulta

function TFOrdemMec.AbreFiscal: Boolean;
begin
  Result := True;
  try
    DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
    AbrirForm(TFFiscalOrdem, FFiscalOrdem, 0);
  except
    Result := False;
  end
end;

//Paulo 19/04/2012: Função Utilizada para gerar a tela do fiscal para serviços a partir da tela de consulta

function TFOrdemMec.AbreFiscalServicos: Boolean;
begin
  Result := True;
  try
    DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
    AbrirForm(TFfServico, FfServico, 0);
  except
    Result := False;
  end
end;

//Gera documento fiscal para a ordem

function TFOrdemMec.GeraFiscal: Boolean;
begin
  //Jônatas 09/10/2013 - Incializa como se houvessem produtos e serviços
  xExisteProd := true;
  xExisteServ := true;
  // verifica se jah existe ordem com o mesmo numero
  DMServ.TAlx1.Close;
  DMServ.TAlx1.SQL.Clear;
  DMServ.TAlx1.SQL.Add('select * from ordem where (ordem.numero = :numero)');
  DMServ.TAlx1.ParamByName('numero').AsString := DBNumOrd.Text;
  DMServ.TAlx1.Open;

  if (not DMServ.TAlx1.IsEmpty) and (DMServ.TAlx1.FieldByName('cod_ordem').AsInteger <> XCOD_ORDEM) then
  begin
    Mensagem('   A T E N Ç Ã O   ', 'Já existe outra ordem de serviço com o mesmo número. Por favor, altere o valor.', '', 1, 1, false, 'I');
    DBNumOrd.SetFocus;
    Exit;
  end;

  // seleciona todos os produtos da ordem de serviço
  try
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('select * from itprodord where itprodord.cod_ordem = :cod_ordem');
    DMESTOQUE.Alx1.ParamByName('cod_ordem').AsInteger := XCOD_ORDEM;
    DMESTOQUE.Alx1.Open;
    //Jônatas 09/10/2013 - verifica se existem produtos na ordem
    if DMESTOQUE.Alx1.IsEmpty then
    begin
      xExisteProd := false; //Jônatas 09/10/2013 - Não existem produtos
    end;
  except
    showmessage('Erro ao verificar produtos para tela do fiscal.');
    xExisteProd := false;
  end;

  // na tabela despadic eh feito uma verificação se possui servico relacionado a ordem
  try
    DMESTOQUE.Alx2.Close;
    DMESTOQUE.Alx2.SQL.Clear;
    DMESTOQUE.Alx2.SQL.Add('select * from despadic where (despadic.GERADOR=''ORDEM'') AND (DESPADIC.COD_GERADOR=:Codigo)  AND ((despadic.nfse_status<>' + '1' + ') or (despadic.nfse_status is null))');
    DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := XCOD_ORDEM;
    DMESTOQUE.Alx2.Open;
    //Jônatas 09/10/2013 - verifica se existem serviços na ordem
    if DMESTOQUE.Alx2.IsEmpty then
    begin
      xExisteServ := false; //Jônatas 09/10/2013 - Não existem serviços
    end;
  except
    showmessage('Erro ao verificar serviços para tela do fiscal.');
    xExisteServ := false;
  end;

  // se nao possui servico e nem produtos eh exibido a mensagem - SEGUNDO SOLICITAÇÃO É OBRIGATORIO PODER GRAVAR SEM SERVICO
  if ((DMESTOQUE.Alx1.IsEmpty) and (DMESTOQUE.Alx2.IsEmpty)) then
  begin
    if Mensagem('   A T E N Ç Ã O   ', 'A Ordem de Serviço atual não possui produtos e serviços inclusos. Deseja apagá-la ?', '', 2, 3, false, 'A') = 2 then
    begin
      //Apaga ORDEM
      FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
      DMServ.TOrd.Delete;

      //REGISTRA COMANDO DO USUARIO
      try
        Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº ' + DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: ' + DMServ.TOrd.FieldByName('TOTORD').AsString);
      except
      end;

      //Confirma Transação
      DMSERV.IBT.CommitRetaining;
    end;
  end;

  //VALIDA CAMPOS NECESSÁRIOS
  if (XCOD_CLIENTE = -1) or (FrmCliente.EDCodigo.Text = '') then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um Cliente para Ordem de Serviço', '', 1, 1, False, 'a');
    FrmCliente.EDCodigo.SetFocus;
    Exit;
  end;

  if ((XCOD_EQUIPAMENTO = -1) or (FBEquipPlaca.EDCodigo.Text = '')) and (CBVENDABALCAO.Checked = FALSE) then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe uma placa para Ordem de Serviço', '', 1, 1, False, 'a');
    FBEquipPlaca.EDCodigo.SetFocus;
    Exit;
  end;

  if (XCOD_FORMPAG = -1) or (FrmFormPag1.EDCodigo.Text = '') then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe a Forma de Pagamento para a Ordem de Serviço', '', 1, 1, False, 'a');
    FrmFormPag1.EDCodigo.SetFocus;
    Exit;
  end;

  if XCOD_CLIENTE = DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger then
  begin
    if FrmFormPag1.EdDescricao.Text <> 'À VISTA' then
    begin
      Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
      FrmFormPag1.BTNOPEN.SetFocus;
      Exit;
    end;
  end;

  if (DBBox.Text = '') and (CBVENDABALCAO.Checked = False) then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe o box para Ordem de Serviço', '', 1, 1, False, 'a');
    Exit;
  end;

  //VERIFICA SE O PEDIDO JÁ POSSUI DOC FI PARA EDITAR O VALOR
  if FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido=' + #39 + IntToStr(XCOD_ORDEM) + #39 + ')') = True then
  begin
    //EDITAL FISCAL EXISTENTE
    DMSAIDA.TFiscPV.Edit;
    DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency := DMServ.TOrd.FieldByName('VALOR').AsCurrency;
    DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency := DMServ.TOrd.FieldByName('VALOR').AsCurrency;
    DMSAIDA.TFiscPV.Post;
  end;

  DMServ.TOrd.Edit;
  if CBGarantia.Checked then
    DMServ.TOrd.FieldByName('GARANTIA').AsString := '1'
  else
    DMServ.TOrd.FieldByName('GARANTIA').AsString := '';

  //INFORMA CODIGO DO USUARIO
  DMServ.TOrd.FieldByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
  //INFORMA CODIGO DO CLIENTE
  DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
  //INFORMA CODIGO DO EQUIPAMENTO
  DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO;
  DMServ.TOrd.Post;
  //FILTRA VENDEDOR
  FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
  DMServ.TOrd.Edit;
  //INFORMA CODIGO DO VENDEDOR
  DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger := DMPESSOA.VWFuncionario.fieldByName('COD_FUNC').AsInteger;
  //INFORMA CODIGO DO RESPONSÁVEL
  DMServ.TOrd.FieldByName('COD_FUNCIONARIO').AsInteger := DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
  //INFORMA CODIGO DA LOJA
  DMServ.TOrd.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
  //INFORMA FORMA DE PAGAMENTO
  DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger := XCOD_FORMPAG;
  DMServ.TOrd.FieldByName('observacao').AsString := MObs.Lines.Text;
  //GRAVA TOTAIS
  DMServ.TOrd.FieldByName('TOTORD').AsCurrency := EdValorOrd.ValueNumeric;
  DMServ.TOrd.FieldByName('TOTPROD').AsCurrency := EdtotalProd.ValueNumeric;
  DMServ.TOrd.FieldByName('TOTSERV').AsCurrency := EdTotalserv.ValueNumeric;
  DMServ.TOrd.FieldByName('TOTDESP').AsCurrency := EdTotDesp.ValueNumeric;
  DMServ.TOrd.FieldByName('DESCONTO').AsCurrency := EdDescTOrdem.ValueNumeric;
  DMServ.TOrd.FieldByName('DESCPROD').AsCurrency := EdDescTProd.ValueNumeric;
  DMServ.TOrd.FieldByName('DESCSERV').AsCurrency := EdDescTServ.ValueNumeric;
  //Informa Situação do pedido
  DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
  if (CBVENDABALCAO.Checked = true) and (DMServ.TOrd.FieldByName('BOX').AsString = '') then
  begin
    DMServ.TOrd.FieldByName('BOX').AsString := '-1';
    DBBox.Text := '-1';
  end;
  if (CBVENDABALCAO.Checked = true) then
    DMServ.TOrd.FieldByName('LOCALAT').AsString := 'BALCÃO';

  DMServ.TOrd.Post;
  try
    DMServ.IBT.CommitRetaining;
  except
    DMServ.IBT.RollbackRetaining;
  end;
  if ((xExisteProd = false) and (xExisteServ = false)) then
  begin
    showmessage('Não existem produtos ou serviços para geração do fiscal.');
  end
  else
    AbrirForm(TFFiscalOrdem, FFiscalOrdem, 0);
  { Begin
      If xExisteProd = true Then //Jônatas 09/10/2013 - Só chama a tela de fiscal de produtos caso hajam produtos
          AbrirForm(TFFiscalOrdem, FFiscalOrdem, 0);
      If xExisteServ = true Then //Jônatas 09/10/2013 - Só chama a tela de fiscal de serviços caso hajam serviços
          AbrirForm(TFfServico, FfServico, 0); //Jônatas 09/10/2013 - Incluída chamada da tela fiscal de Serviços
  End; }
  FiltraSlave;
  //Chama função para calcular descontos
  EfetuaDesconto('GERAL', 'MOEDA');
end;

// DJ 27/11/2009: VERIFICA OS CADASTROS DA PESSOA, VALIDA CPF CNPJ

function TFOrdemMec.verificaPessoa(msg: Boolean): Boolean;
begin
  Result := False;
  // - 27/04/2009: verificar se CPF/CNPJ ja existe
  if Trim(edCNPJCPF.Text) <> '' then
  begin
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add('select * from pessoa');
    DMPESSOA.TALX.SQL.Add('where pessoa.cpfcnpj like :CPFCNPJ and pessoa.cod_pessoa in ( select cliente.cod_pessoa from cliente)');
    DMPESSOA.TALX.ParamByName('CPFCNPJ').AsString := Trim(edCNPJCPF.Text);
    DMPESSOA.TALX.Open;

    if not DMPESSOA.TALX.IsEmpty then
    begin

      if msg then
      begin

        if Mensagem('   A T E N Ç Ã O   ', 'Foi encontrado um cliente com este CPF/CNPJ. Deseja utiliza-lo?', '', 2, 3, false, 'A') = 2 then
        begin

          XCOD_PESSOA := DMPESSOA.TALX.FieldByName('COD_PESSOA').AsInteger;
          FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_PESSOA', DMPESSOA.TALX.FieldByName('COD_PESSOA').AsString, '');
          XCOD_CLIENTE := DMPESSOA.TCliente.FieldByName('cod_cliente').AsInteger;

          edNome.Text := DMPESSOA.TALX.FieldByName('NOME').AsString;
          edFone.Text := DMPESSOA.TALX.FieldByName('TELREL').AsString;

          // selecionando dados da tabela pessoa fisica
          DMPESSOA.TPessoaF.Close;
          DMPESSOA.TPessoaF.SQL.Clear;
          DMPESSOA.TPessoaF.SQL.Add('select * from pessoaf where pessoaf.cod_pessoa = :codigo');
          DMPESSOA.TPessoaF.ParamByName('codigo').AsInteger := XCOD_PESSOA;
          DMPESSOA.TPessoaF.Open;

          if DMPESSOA.TPessoaF.IsEmpty then
            RGTIPO.ItemIndex := 1
          else
            RGTIPO.ItemIndex := 0;

          if SelectRegistro('VWCIDADE', 'COD_CIDADE', DMPESSOA.TALX.FieldByName('COD_CIDADE').AsString) = True then
          begin //Slecionou o registro procurado
            XCOD_CIDADE := DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
            FrmCidade.EDCodigo.text := DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
            FrmCidade.EdDescricao.Text := DMMACS.TSelect.FieldByName('UF').AsString + '-' + DMMACS.TSelect.FieldByName('NOME').AsString;
          end
          else
          begin
            XCOD_CIDADE := -1;
            FrmCidade.EDCodigo.Text := '';
            FrmCidade.EdDescricao.Text := '';
          end;

          Result := True;

          edPlaca.SetFocus;
        end
        else
        begin
          limpar(True, False);
          Result := False;
        end;
      end
      else
      begin
        XCOD_PESSOA := DMPESSOA.TALX.FieldByName('COD_PESSOA').AsInteger;
        FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_PESSOA', DMPESSOA.TALX.FieldByName('COD_PESSOA').AsString, '');
        XCOD_CLIENTE := DMPESSOA.TCliente.FieldByName('cod_cliente').AsInteger;
        Result := True;
      end;
    end;
  end;
end;

//Djonathan 23/11/2009 : Funcao que retorna o minimo e o maximo de uma tabela

function TFOrdemMec.EncontraValores(XSqlTabelaA: string; XSQLTabelaAux: string; XInicial: string; XFinal: string; XDesc: string): Integer;
begin
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  DMESTOQUE.Alx.SQL.Add('select first 1 ' + XSQLTabelaAux + ',numdocfis from ' + XSqlTabelaA + ' where ');
  if ((XInicial <> '') and (XFinal <> '')) then
  begin
    DMESTOQUE.Alx.SQL.Add('dtemissao between :dtemissao and :dtemissao2 and ');
    DMESTOQUE.Alx.ParamByName('dtemissao').AsDate := StrToDate(XInicial);
    DMESTOQUE.Alx.ParamByName('dtemissao2').AsDate := StrToDate(XFinal);
  end;
  DMESTOQUE.Alx.SQL.Add('numdocfis is not null and numdocfis <> '''' order by ' + XSQLTabelaAux + XDesc);
  DMESTOQUE.Alx.Open;
  if ((XInicial <> '') and (XFinal <> '') and (DMESTOQUE.Alx.FieldByName('numdocfis').AsString = '')) then
    Result := 0
  else
    Result := StrToInt(DMESTOQUE.Alx.FieldByName('numdocfis').AsString);
end;

//Djonathan 23/11/2009: Funcao que compara tabela com parametro

function TFOrdemMec.ComparaValores(XSqlTabelaA: string; XCodigoB: string; XCount: Integer): Boolean;
begin
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  DMESTOQUE.Alx.SQL.Add('select ' + XCodigoB + ',numdocfis from ' + XSQLTabelaA + ' where numdocfis = :numdocfis');
  DMESTOQUE.Alx.ParamByName('numdocfis').AsString := IntToStr(XCount);
  DMESTOQUE.Alx.Open;
  if (DMESTOQUE.Alx.FieldByName('numdocfis').AsString = '') or (DMESTOQUE.Alx.FieldByName('numdocfis').AsString = '0') then
    Result := true
  else
    Result := false;
end;

//Djonathan 23/11/2009: BUSCA VALORES DENTRO DE UMA TABELA ONDE O PARAMETRO FOR IGUAL AO CAMPO DA TABELA

function TFOrdemMec.ComparaValoresInternos(XSqlTabelaA: string; XView: string; XCodigoV: string; XCodigoB: string; XCount: Integer): Boolean;
begin
  DMESTOQUE.Alx.SQL.Clear;
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Add('select count(numdocfis) as registros from ' + XSQLTabelaA + ' left join ' + XView);
  DMESTOQUE.Alx.SQL.Add(' on ' + XSQLTabelaA + '.' + XCodigoB + ' = ' + XView + '.' + XCodigoV + ' where ' + XView + '.' + XCodigoV + ' is not null and numdocfis = :numdocfis');
  DMESTOQUE.Alx.ParamByName('numdocfis').AsString := IntToStr(XCount);
  DMESTOQUE.Alx.Open;
  if (DMESTOQUE.Alx.FieldByName('registros').AsInteger >= 2) then
    Result := true
  else
    Result := false;
end;

//Função que efetua a devolução total do pedido de venda

function TFOrdemMec.DevTotPed(XCod_PedDev: Integer): Boolean;
var
  XTotPedDev: Real;
begin
  try
    XTotPedDev := 0;
    if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCod_PedDev), '') = False then
    begin
      Mensagem('Atenção', 'O Sistema não encontrou o pedido especificado. Reinicie o sistema e tente novamente, se o problema persistir entre em contato com a equipe de suporte', '', 1, 1, False, 'a');
      Exit; //Caso não encontrar cancelar
    end;
    if FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', IntToStr(XCod_PedDev), '') = False then
    begin
      Mensagem('Atenção', 'O Sistema não encontrou o documento fiscal especificado. Reinicie o sistema e tente novamente, se o problema persistir entre em contato com a equipe de suporte', '', 1, 1, False, 'a');
      Exit; //Caso não encontrar cancelar
    end;

    if DMServ.TOrd.FieldByName('STATUS').AsString <> 'FECHADO' then
    begin
      Mensagem('ATENÇÃO', 'Este pedido esta aberto ou já passou por um processo de devolução.', '', 1, 1, False, 'A');
      Exit;
    end;
    //ABRE NOVO PEDIDO DE COMPRA PARA SUPORTAR A DEVOLUÇÃO
    XCod_PedCompra := InserReg(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP');
    DMServ.TOrd.Edit;
    DMServ.TOrd.FieldByName('COMISSAO').AsCurrency := 0;
    DMServ.TOrd.Post;
    DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger := XCod_PedCompra;
    DMENTRADA.TPedC.FieldByName('NUMPED').AsString := DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString;
    DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime := DATE();
    DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger := DMMACS.TLoja.FieldByName('COD_FORDEV').AsInteger;
    DMENTRADA.TPedC.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
    DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency := DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
    DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime := Date();
    DMENTRADA.TPedC.FieldByName('COD_DEVOLUCAO').AsInteger := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
    DMENTRADA.TPedC.FieldByName('NUMDEV').AsString := DMServ.TOrd.FieldByName('NUMERO').AsString;
    //filtra as formas de pagamento
    FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '');
    DMENTRADA.TPedC.FieldByName('COD_FORMPAG').AsInteger := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
    DMENTRADA.TPedC.FieldByName('SITUACAO').AsString := 'ABERTO';
    DMENTRADA.TPedC.Post;
    FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
    DMMACS.TEmpresa.Edit;
    DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString := IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString) + 1);
    DMMACS.TEmpresa.Post;
    //FILTRA TODOS OS ITENS DO PEDIDO
  //seleciona items do pedido
    //INSERE COMANDOS PARA FILTRAR
    DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;
    DMESTOQUE.TSlave.SQL.Add(' Select * From itprodord ');
    DMESTOQUE.TSlave.SQL.Add(' left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
    DMESTOQUE.TSlave.SQL.Add(' Where itprodord.cod_ordem = :CODPEDVENDA ');
    DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsInteger := XCod_PedDev;
    DMESTOQUE.TSlave.Open;
    //INSERE COMANDOS PARA FILTRAR ITENS DEVOLVIDOS
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('Select * ');
    DMESTOQUE.Alx.SQL.Add('From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
    DMESTOQUE.Alx.SQL.Add('Where itenspedc.cod_pedcompra = :CODPEDVENDA ');
    DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsInteger := XCod_PedCompra;
    DMESTOQUE.Alx.Open;

    DMESTOQUE.TSlave.First;
    while not DMESTOQUE.TSlave.Eof do
    begin
      //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
      FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
      FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
      FiltraTabela(DMServ.TPOrd, 'itprodord', 'cod_itprodord', DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsString, '');
      DMServ.TPOrd.Edit;
      DMServ.TPOrd.FieldByName('OPERACAO').AsString := 'DVL';
      DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency := 0;
      DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency := 0;
      DMServ.TPOrd.FieldByName('LUCMOE').AsCurrency := 0;
      DMServ.TPOrd.Post;

      //INSERE PRODUTO EM ITENS DE PEDIDO DE COMPRA
      XCodSlaveDev := InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');
      DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger := XCodSlaveDev;
      DMENTRADA.TItemPC.FieldByName('COD_DEVOLUCAO').AsInteger := DMServ.TPOrd.FieldByName('cod_itprodord').AsInteger;
      DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency := DMServ.TPOrd.FieldByName('ALIQICMS').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency := DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency := DMServ.TPOrd.FieldByName('VLRICMS').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('REDUCBASEICMS').AsCurrency := DMServ.TPOrd.FieldByName('REDUCBASEICMS').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency := DMServ.TPOrd.FieldByName('BASEICMSSUBS').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency := DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency := DMServ.TPOrd.FieldByName('ALIQIPI').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('VLRIPI').AsCurrency := DMServ.TPOrd.FieldByName('VLRIPI').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('FRETE').AsCurrency := 0;
      DMENTRADA.TItemPC.FieldByName('EMBPROD').AsCurrency := 0;
      DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger := XCod_PedCompra;
      DMENTRADA.TItemPC.FieldByName('DATA').AsString := DateToStr(Date());
      DMENTRADA.TItemPC.FieldByName('QTDEST').AsCurrency := DMServ.TPOrd.FieldByName('QTD').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger := DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsInteger;
      DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency := DMServ.TPOrd.FieldByName('QTD').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency := DMServ.TPOrd.FieldByName('DESCONTO').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency := DMServ.TPOrd.FieldByName('vlrunit').AsCurrency;
      DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency := DMServ.TPOrd.FieldByName('total').AsCurrency;
      XTotPedDev := XTotPedDev + DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency;
      DMENTRADA.TItemPC.Post;
      //ATULIZA ESTOQUE
      DMESTOQUE.TEstoque.Edit;
      DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency := DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency + DMServ.TPOrd.FieldByName('QTD').AsCurrency;
      DMESTOQUE.TEstoque.Post;
      DMESTOQUE.TransacEstoque.CommitRetaining;

      DMESTOQUE.TSlave.Next;
    end;
    DMENTRADA.TPedC.Edit;
    DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency := XTotPedDev;
    DMENTRADA.TPedC.Post;
    //VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
    if FiltraTabela(DMSAIDA.TAlx, 'DOCFISORD', 'COD_DOCFIS', '', '(cod_ORDEM=' + #39 + IntToStr(XCod_PedDev) + #39 + ')') = True then
    begin
      //INSERE FISCAL EM PEDIDO DE COMPRA
      XCOD_FISCAL := InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC');
      FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_CFOPDEV').AsString, '');
      DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsInteger := XCod_PedCompra;
      DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger := XCOD_FISCAL;
      DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsInteger := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
      DMENTRADA.TFiscPC.FieldByName('DTEMISSAO').AsDateTime := DMSAIDA.TAlx.FieldByName('DTEMISSAO').AsDateTime;
      DMENTRADA.TFiscPC.FieldByName('DTENTSAID').AsDateTime := DMSAIDA.TAlx.FieldByName('DTENTSAID').AsDateTime;
      DMENTRADA.TFiscPC.FieldByName('HORASAID').AsDateTime := DMSAIDA.TAlx.FieldByName('HORASAID').AsDateTime;
      DMENTRADA.TFiscPC.FieldByName('BASEICMS').AsCurrency := DMSAIDA.TAlx.FieldByName('BASEICMS').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRICMS').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRICMS').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency := DMSAIDA.TAlx.FieldByName('BASCALSUBS').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRICMSUBS').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRSEG').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRSEG').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRTOTIPI').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRTOTIPI').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLROUTRASDESP').AsCurrency := DMSAIDA.TAlx.FieldByName('VLROUTRASDESP').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('VLRTOTPROD').AsCurrency := XTotPedDev;
      DMENTRADA.TFiscPC.FieldByName('VLRTOTDOCNF').AsCurrency := XTotPedDev;
      DMENTRADA.TFiscPC.FieldByName('VLRISENTOICMS').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRISENTOICMS').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('SERIE').AsString := '1';
      DMENTRADA.TFiscPC.FieldByName('MODELONF').AsString := DMMACS.TLoja.FieldByName('MODELONF').AsString;
      DMENTRADA.TFiscPC.FieldByName('OBS').AsString := 'Dev. NF: ' + DMSAIDA.TAlx.FieldByName('numdocfis').AsString + ' - ' + DMSAIDA.TAlx.FieldByName('OBS').AsString;
      DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString := DMSAIDA.TAlx.FieldByName('FRETECOMP').AsString;
      DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency := DMSAIDA.TAlx.FieldByName('VLRFRETE').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsCurrency := DMSAIDA.TAlx.FieldByName('COD_TRANSP').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('QUANTFRETE').AsCurrency := DMSAIDA.TAlx.FieldByName('QUANTFRETE').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('ESPECIEFRETE').AsString := DMSAIDA.TAlx.FieldByName('ESPECIEFRETE').AsString;
      DMENTRADA.TFiscPC.FieldByName('MARCAFRETE').AsString := DMSAIDA.TAlx.FieldByName('MARCAFRETE').AsString;
      DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString := DMSAIDA.TAlx.FieldByName('NUMCONHEC').AsString;
      DMENTRADA.TFiscPC.FieldByName('PLACA').AsString := DMSAIDA.TAlx.FieldByName('PLACA').AsString;
      DMENTRADA.TFiscPC.FieldByName('UFPLACA').AsString := DMSAIDA.TAlx.FieldByName('UFPLACA').AsString;
      DMENTRADA.TFiscPC.FieldByName('PESOBRUTO').AsCurrency := DMSAIDA.TAlx.FieldByName('PESOBRUTO').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('PESOLIQ').AsCurrency := DMSAIDA.TAlx.FieldByName('PESOLIQ').AsCurrency;
      DMENTRADA.TFiscPC.FieldByName('FRETECONTA').AsString := DMSAIDA.TAlx.FieldByName('FRETECONTA').AsString;
      DMENTRADA.TFiscPC.Post;
    end;
    {       If CancelaFinac(IntToStr(XCod_PedDev))=True Then
            Result:=True
           Else
            Result:=False;}
    Result := True;
    MessageDlg('Ordem Devolvida como Ped. Compra Nº ' + DMENTRADA.TPedC.FieldByName('NUMPED').AsString, mtWarning, [mbOK], 0);
  except
    Result := False;
  end;
end;

//DJ 27/11/2009: LIMPA CAMPOS DO CADASTRO RAPIDO (ctrl + N)

procedure TFOrdemMec.limpar(pessoa, equipamento: Boolean);
begin
  if (pessoa) then
  begin
    edNome.Text := '';
    RGTIPO.ItemIndex := 0;
    edCNPJCPF.Text := '';
    edFone.Text := '';
    FrmCidade.EDCodigo.Text := '';
    FrmCidade.EdDescricao.Text := '';
    XCOD_PESSOA := -1;
    XCOD_PESSOA := -1;
    XCOD_CIDADE := -1;
    cbConsumidor.Checked := True;
  end;

  if (equipamento) then
  begin
    edPlaca.Text := '';
    edModelo.Text := '';
    edNumFrota.Text := '';
    XCOD_EQUIPAMENTO := -1;
  end;

  XOK := False;

end;

//Função responsável por efetuar a leitura do campo que limita a quantidade de registros a serem visualizados na ordem de serviços
function TFOrdemMec.LerMaxRegistroXmlConfig: Boolean;
begin
  try
    Result := True;
    //Edmar - 11/09/2014 - Busca o usuario logado no sistema
    FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption, '');
    //Edmar - 11/09/2014 - Se o usuario tem salvo o numero de registro que serão mostrados na OS
    //coloca o seu valor correspondente
    if DMMACS.TUsuario.FieldByName('MAXREGISTROOS').AsString <> '' then
      EdMaxRegistro.Text := DMMACS.TUsuario.FieldByName('MAXREGISTROOS').AsString
    else //Edmar - 11/09/2014 - Senão, joga valor 50 como padrão
      EdMaxRegistro.Text := '50';
  except
    Result := False;
  end;
end;

//Função responsável por efetuar a gravação do campo que limita a quantidade de registros a serem visualizados na ordem de serviços
function TFOrdemMec.GravaMaxRegistroXmlConfig: Boolean;
begin
  try
    Result := True;
    //Edmar - 11/09/2014 - Monta SQL para atualizar o numero de registro do usuario
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' UPDATE USUARIO SET USUARIO.MAXREGISTROOS = :MAXREG WHERE USUARIO.CODUSUARIO = :USUARIO ');
    DMMACS.TALX.ParamByName('MAXREG').AsString := EdMaxRegistro.Text;
    DMMACS.TALX.ParamByName('USUARIO').AsString := FMenu.LCODUSUARIO.Caption;

    DMMACS.TALX.ExecSQL;
    DMMACS.Transaction.CommitRetaining;
  except
    Result := False;
    DMMACS.Transaction.RollbackRetaining;
  end;
end;

// form activate
procedure TFOrdemMec.FormActivate(Sender: TObject);
var
  xPosEncontrada, xI: integer;
  xB: char;
  xStrRetornada, xNumeroDocumento, xResultadoConsulta: string;
  xRps: file;
begin
  DMMACS.Transaction.CommitRetaining;
  DMServ.IBT.CommitRetaining;
  Caption := 'Ordem de Serviço';
  inherited;
  //Alex: 13/03/2018- mostra ou esconde campo de multiplos vendedor
  if (DMMACS.TLoja.FieldByName('USARMULTIPLOSVENDEDORESOS').AsString = '1') then
  begin
    pMultiplosVendedoresServico.Visible := True;
    PMultiplosvendedores.Visible := True;
    PMultiplosvendedores.BringToFront;
    pMultiplosVendedoresServico.BringToFront;
  end
  else
  begin
    PMultiplosvendedores.Visible := False;
    pMultiplosVendedoresServico.Visible := False;
  end;

  //Alex: 05/09/2016- mostra ou esconde campo de vendedor
  if (DMMACS.TLoja.FieldByName('USARVENDEDOROSMEC').AsString = '1') then
    FrmVendedor.Visible := True
  else
    FrmVendedor.Visible := False;

  //Edmar - 07/07/2014 - Controla a visibilidade do botão fiscal somente para a senha mestre
  if FMenu.LCODUSUARIO.Caption = '111522' then
    BtnDadosAdic.Visible := True
  else
    BtnDadosAdic.Visible := False;

  EDCodFabEnter(sender);

  //Efetua a leitura da quantidade do campo em Xml que determina a quantidade maxima de registros a retornar nas consultas de OS
  LerMaxRegistroXmlConfig;
  XComp2Vias := False;

  FMenu.XTIPOBOLTO := '';
  if DMMACS.TLoja.FieldByName('ORDENAORDEM').AsString <> '' then
    CBORDEM.Text := DMMACS.TLoja.FieldByName('ORDENAORDEM').AsString;
  //Desmarca as opções de remessa para garantia e devolução
  FMenu.XRemessaGarantia := False;
  FMenu.XSimplesRemessa := False;
  FMenu.XOutrosEnt := False;
  FMenu.XDevolucao := False;
  FMenu.TIPOREL := ''; //demarca para não ocorrer caso de reimpressão de nota por erro

  XTipoProc := 0; //0 = procura de produtos normal 1=procura pelo nome
  XCampo := 'NUMERO';
  XView := DMSERV.WOrdem;
  XTab := False;
  XDescricao := ' a ordem ';
  XSQLVIEW := 'VWORDEM';

  //SETA DBS
  DBGridConsulta.DataSource := DMSERV.DWOrdem;

  //setar o focus em algum lugar ###################

  AtualizaGridConsulta('');

  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('ADM', '') then
  begin
    RemoverTudo1.Enabled := True;
    RemoverTudo2.Enabled := True;
  end
  else
  begin
    RemoverTudo1.Enabled := False;
    RemoverTudo2.Enabled := False;
  end;

  // BUSCA OS DADOS DA TABELA USUARIO PARA SELECIONAR O FUNCIONARIO VENDEDOR
  if FMenu.LCODUSUARIO.Caption = '111522' then
  begin
    XCod_usuario := -1;
  end
  else
  begin
    FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption, '');

    FiltraTabela(DMPESSOA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC', DMMACS.TUsuario.FieldByname('COD_FUNCIONARIO').AsString, '');
    try
      xcod_usuario := DMPESSOA.TFuncionario.FieldByname('cod_func').AsInteger;
    except
      xcod_usuario := -1;
    end;
  end;
  if FileExists('C:\MZR\Arquivos\LayoutGrid\Ordemmec.lgm') then
    DBGridConsulta.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\Ordemmec.lgm');

  //VERIFICA INFORMAÇÕES NECESSÁRIAS PARA CONTROLES DE CÁLCULOS FISCAIS
  if FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '') = True then
  begin
    //Localiza o caixa em questão para verificar se suas configurações são de Nota Fiscal
    if (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString = 'NF') and (DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString <> '') then
      //BitBtn17.Visible := True
    else
      {//BitBtn17.Visible := False;} if (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString = 'NFe')
        or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
        or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
      begin
        DBGridConsulta.Hint := 'Pressione Ctrl+s para salvar o lay-out do grid e Ctrl+c para copiar a chave de acesso da NFe';
        DBGridConsulta.ShowHint := True;
      end
      else
      begin
        DBGridConsulta.Hint := 'Pressione Ctrl+s para salvar o lay-ou do grid';
        DBGridConsulta.ShowHint := True;
      end;
    if (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString = 'NFe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
      LEmissor.Caption := 'Emissão: Nota Fiscal Eletrônica';
    if (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString = 'NF') then
      LEmissor.Caption := 'Emissão: Nota Fiscal';
    if (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString = 'ECF') then
      LEmissor.Caption := 'Emissão: Cupom Fiscal';
  end;

  //Jônatas 26/06/2013 - controle para mostrar Edits para placas adicionais para mecânica
  PanelPlacaAdicional.Visible := false;
  if DMMACS.TLoja.FieldByName('USAPLACASADICIONAIS').AsString = '1' then
  begin
    //mais coisa vai aqui ainda
    PanelPlacaAdicional.Visible := true;
    PanelPlacaAdicional.BringToFront;
    EdPlaca2.Height := 24;
    EdPlaca3.Height := 24;
  end;

  xAliquotaIss := DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency;
  //Edmar - 02/04/2014 - Só mostra o valor do ISS e o check box se a empresa emite nfse
  if DMMACS.TLoja.FieldByName('GERANFSE').AsString <> '1' then
  begin
    pIss.Visible := false;
  end;

  //Edmar - 04/02/2015 - Marcação na loja que controla se deve mostrar
  //a opção de selecionar a classificação do serviço
  if DMMACS.TLoja.FieldByName('EXIBECLASSSERV').AsString = '1' then
  begin
    pClassServico.Visible := True;
    pClassServico.BringToFront;
    Label60.Left := 235;
    EDesricaoServico.Left := 236;
    EDesricaoServico.Width := 280;
  end
  else
  begin
    Label60.Left := 2;
    EDesricaoServico.Left := 2;
    EDesricaoServico.Width := 517;
    pClassServico.Visible := False;
    pClassServico.SendToBack;
  end;

  if (DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '1') then
  begin
    pPesquisaRapida.TabOrder := 1;
    //
    pPesquisaRapida.Visible := True;
    pPesquisaRapida.BringToFront;
    pPesquisaRapida.Enabled := True;
    //
    pPesqBarraInterno.Visible := False;
    pPesqBarraInterno.SendToBack;
    pPesqBarraInterno.Enabled := False;
  end
  else
  begin
    pPesqBarraInterno.TabOrder := 1;
    //
    pPesqBarraInterno.Visible := True;
    pPesqBarraInterno.BringToFront;
    pPesqBarraInterno.Enabled := True;
    //
    pPesquisaRapida.Visible := False;
    pPesquisaRapida.SendToBack;
    pPesquisaRapida.Enabled := False;
  end;

  PConsulta.Visible := True;
  PConsulta.BringToFront;
  PCadastro.Visible := False;
  PCadastro.SendToBack;

  FMenu.XCodOrdemVinculo := -1;
  FMenu.SelectedForm := False; //inicia com false para dizer que o botão selecionar não foi pressionado
  //Edmar - 19/08/2015 - verifica o tipo do formulário para posicionar
  //a grid corretamente e mostrar ou não o botão para seleção
  if Tag = 20 then //form de seleção
  begin
    DBGridConsulta.Top := 179;
    DBGridConsulta.Height := 378;
    BtnSelecionar.Visible := True;
  end
  else
  begin //form de cadastro
    DBGridConsulta.Top := 156;
    DBGridConsulta.Height := 400;
    BtnSelecionar.Visible := False;
  end;
  EdVlrCompra.ValueNumeric := 0;
  if (DMMACS.TLoja.FieldByName('EXIBVLRCOMPOS').AsString = '1') then
  begin
    pPesqBarraInterno.Width := 236;
    EDCodBarra.Width := 232;
    pPesquisaRapida.Width := 236;
    EDCodFab.Width := 232;
    EdVlrCompra.Visible := True;
    LblVlrComp.Visible := True;
  end
  else
  begin
    pPesqBarraInterno.Width := 317;
    EDCodBarra.Width := 312;
    pPesquisaRapida.Width := 317;
    EDCodFab.Width := 312;
    LblVlrComp.Visible := False;
    EdVlrCompra.Visible := False;
  end;
end;

procedure TFOrdemMec.AtualizaGridConsulta(FILTRO: string);
var
  xPlacaLimpa: string;
begin
  if FILTRO = 'ORIGEM' then
  begin
    CBFILTRO.Text := 'ABERTAS';
    if DMMACS.TLoja.FieldByName('ORDENAORDEM').AsString <> '' then
      CBORDEM.Text := DMMACS.TLoja.FieldByName('ORDENAORDEM').AsString
    else
      CBORDEM.Text := 'BOX';
  end;
  try
    if (StrToInt(EdMaxRegistro.Text) < 0) then
    begin
      MessageDlg('Verifique o campo que informa o número máximo de registro a serem retornados.', mtWarning, [mbOK], 0);
      EdMaxRegistro.SetFocus;
    end;
  except
    EdMaxRegistro.Text := '';
  end;
  DMServ.WOrdem.Close;
  DMServ.WOrdem.SQL.Clear;
  if (EdMaxRegistro.Text <> '') and (EdMaxRegistro.Text <> '0') then
    DMServ.WOrdem.SQL.Add('select   FIRST ' + EdMaxRegistro.Text + ' * from VWORDEM')
  else
    DMServ.WOrdem.SQL.Add('select  * from VWORDEM');
  //Jônatas 27/06/2013 - se o campo de placas adicionais for verdadeiro
  //inclui na filtragem as placas adicionais
  if DMMACS.TLoja.FieldByName('USAPLACASADICIONAIS').AsString = '1' then
  begin
    DMServ.WOrdem.SQL.Add('LEFT JOIN ordem ON ordem.cod_ordem = vwordem.cod_ordem');
  end;
  DMServ.WOrdem.SQL.Add(' WHERE (vwordem.COD_LOJA=' + FMenu.LCODLOJA.Caption + ')');

  DMServ.WOrdem.SQL.Add(' AND vwordem.COD_ORDEM IS NOT NULL ');

  //FILTRO PARA EDIT'S
  if FILTRO = 'NUMERO' then
    DMServ.WOrdem.SQL.Add(' AND vwordem.numero = ' + #39 + TRIM(EDNum.Text) + #39)
  else if FILTRO = 'BOX' then
    DMServ.WOrdem.SQL.Add(' AND (upper (VWordem.box)) like (upper (' + #39 + TRIM(EDBox.Text) + '%' + #39 + '))')
  else if FILTRO = 'PLACA' then
  begin
    xPlacaLimpa := Trim(UpperCase(StringReplace(StringReplace(MEPlaca.Text, '-', '', [rfReplaceAll]), ' ', '', [rfReplaceAll])));
    //Jônatas 28/06/2013 - Inclui as placas adicionais para fazer a filtragem
    if DMMACS.TLoja.FieldByName('USAPLACASADICIONAIS').AsString = '1' then
      DMServ.WOrdem.SQL.Add(' AND (upper(replace(replace(vwordem.placa, ''-'', ''''), '' '', ''''))) like (upper (' + #39 + xPlacaLimpa + '%' + #39 + ')) OR (upper(replace(replace(ordem.placa2, ''-'', ''''), '' '', ''''))) like (upper (' + #39 + xPlacaLimpa + '%' + #39 + ')) OR (upper(replace(replace(ordem.placa3, ''-'', ''''), '' '', ''''))) like (upper (' + #39 + xPlacaLimpa + '%' + #39 + '))')
    else
      DMServ.WOrdem.SQL.Add(' AND (upper(replace(replace(vwordem.placa, ''-'', ''''), '' '', ''''))) like (upper (' + #39 + xPlacaLimpa + '%' + #39 + '))');

  end
  else if FILTRO = 'CLIENTE' then
    DMServ.WOrdem.SQL.Add(' AND(upper (VWordem.cliente)) like (upper (' + #39 + TRIM(EDCliente1.Text) + '%' + #39 + '))')
  else if FILTRO = 'NUMFISCAL' then
    DMServ.WOrdem.SQL.Add(' AND vwordem.numfiscal = ' + #39 + TRIM(EdFiscal.Text) + #39)
  else if FILTRO = 'NFSE' then
    DMServ.WOrdem.SQL.Add(' AND vwordem.numfiscalnfse = ' + #39 + TRIM(EdFiscalNfse.Text) + #39)
  else if FILTRO = 'VEICULO' then
    DMServ.WOrdem.SQL.Add(' AND(upper (VWordem.Equipamento)) like (upper (' + #39 + TRIM(MEVeiculo.Text) + '%' + #39 + '))')
  else
    FILTRO := '';

  if FILTRO = '' then
  begin
    //FILTRO COMBO
    if CBFILTRO.Text = 'ABERTAS' then
      DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'ABERTO' + #39 + ')')
    else if CBFILTRO.Text = 'FECHADAS' then
      DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'FECHADO' + #39 + ')')
    else if CBFILTRO.Text = 'TERMINADAS' then
      DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'TERMINADO' + #39 + ')')
    else if CBFILTRO.Text = 'NFE2' then
      DMServ.WOrdem.SQL.Add(' AND (vwordem.FISCO=' + #39 + 'NFE2' + #39 + ')')
    else if CBFILTRO.Text = 'CANCELADO' then
      DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'CANCELADO' + #39 + ')');

  end;

  //ORDENAÇÃO COMBO
  if CBORDEM.Text = 'NUMERO' then //ordenar pelo número
    DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.NUMERO DESC, vwordem.STATUS DESC, vwordem.BOX, vwordem.DTABERT DESC')
  else if CBORDEM.Text = 'CLIENTE' then //ordenar pelo cliente
    DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.CLIENTE, vwordem.STATUS DESC,vwordem.BOX,vwordem.DTABERT DESC')
  else if CBORDEM.Text = 'DATA' then //ordenar pela data
    DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.DTABERT DESC, vwordem.STATUS DESC, vwordem.BOX')
  else if CBORDEM.Text = 'PLACA' then //ordenar pela placa
    DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.placa, vwordem.DTABERT DESC, vwordem.STATUS DESC, vwordem.BOX')
  else if CBORDEM.Text = 'BOX' then //ordenar pelo box
    DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.BOX, vwordem.PLACA, vwordem.STATUS DESC, vwordem.STATUS, vwordem.DTABERT DESC');
  if CBORDEM.Text = 'FISCAL' then //ordenar pelo box
    DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.numfiscalINT DESC, vwordem.PLACA, vwordem.STATUS DESC, vwordem.STATUS, vwordem.DTABERT DESC');

  DMServ.WOrdem.Open;

end;

// MUDA FILTRO OU ORDENAÇÃO

procedure TFOrdemMec.CBFILTROPropertiesChange(Sender: TObject);
begin
  inherited;
end;

//SETA CORES NA GRID DE CONSULTA

procedure TFOrdemMec.DBGridConsultaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (DMServ.WOrdem.FieldByName('STATUS').AsString = 'ABERTO') or (DMServ.WOrdem.FieldByName('FISCO').AsString = 'NFE2') then
  begin
    if DMServ.WOrdem.FieldByName('GARANT').AsString = '1' then
    begin
      DBGridConsulta.Canvas.Font.Color := clBlue;
      DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else
    begin
      DBGridConsulta.Canvas.Font.Color := clRed;
      DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  end;

  if (DMServ.WOrdem.FieldByName('STATUS').AsString <> 'ABERTO') and (DMServ.WOrdem.FieldByName('STATUSNFSE').AsString = '3') then
  begin
    DBGridConsulta.Canvas.Font.Color := clPurple;
    DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  if DMServ.WOrdem.FieldByName('FISCO').AsString = 'CONT' then
  begin
    DBGridConsulta.Canvas.Font.Color := clYellow;
    DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

//PRESS ENTER CAMPO NUMEOR LOCALIZAR

procedure TFOrdemMec.EDNumKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    AtualizaGridConsulta('NUMERO');
    EDNum.SelectAll;
  end;

  if key = #27 then
  begin
    CBORDEM.Text := 'NUMERO';
    AtualizaGridConsulta('');
    //CBORDEM.Text := 'BOX';
    EDNum.SelectAll;
  end;
end;
//PRESS ENTER CAMPO BOX LOCALIZAR

procedure TFOrdemMec.EDBoxKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    AtualizaGridConsulta('BOX');
    EDBox.SelectAll;
  end;

  if key = #27 then
  begin
    CBORDEM.Text := 'BOX';
    AtualizaGridConsulta('');
    EDBox.SelectAll;
  end;
end;
//PRESS ENTER CAMPO PLACA LOCALIZAR

procedure TFOrdemMec.MEPLACAKeyPress(Sender: TObject; var Key: Char);
var
  xPlacaLimpa: string;
begin
  inherited;
  xPlacaLimpa := Trim(UpperCase(StringReplace(StringReplace(MEPLACA.Text, '-', '', [rfReplaceAll]), ' ', '', [rfReplaceAll])));

  if (Length(xPlacaLimpa) = 4) and not (Key = #8)
    and not (Key = #13) and not (Key = #27) then
  begin
    if not (Key in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[1] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[2] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[3] in ['a'..'z', 'A'..'Z']) then // PADRÃO ANTIGO ABC 1234
    begin
      MEPLACA.Text := xPlacaLimpa[1] + xPlacaLimpa[2] + xPlacaLimpa[3] + '-' + xPlacaLimpa[4];
      MEPLACA.SelStart := 5;
    end;
  end;

  if (Length(xPlacaLimpa) = 7) and not (Key = #8) and not (Key = #13) and not (Key = #27) then
    Key := #0;

  {If Not (key In ['a'..'z', 'A'..'Z', '0'..'9', #8, #13, #27])
      Then
      Key := #0
  Else Begin // ['A'..'Z','a'..'z'
      If Length(MEPLACA.Text) < 4 Then
          If Not (key In ['a'..'z', 'A'..'Z', #8, #13, #27]) Then
              Key := #0;

      If (Length(MEPLACA.Text) > 3) Then
          If Not (key In ['0'..'9', #8, #13, #27]) Then
              Key := #0
  End;}

  if key = #13 then
  begin
    AtualizaGridConsulta('PLACA');
    PesquisaEquipCliente(MEPLACA.Text);
    MEPLACA.SelectAll;
  end;

  if key = #27 then
  begin
    CBORDEM.Text := 'PLACA';
    AtualizaGridConsulta('');
    //CBORDEM.Text := 'BOX';
    MEPLACA.SelectAll;
  end;

end;
//PRESS ENTER CAMPO CLIENTE LOCALIZAR

procedure TFOrdemMec.EDCliente1KeyPress(Sender: TObject; var Key: Char);
var
  pos: integer;
  tmp: string;
begin
  inherited;
  // If (shift=[ssCtrl]) and (key = 74) then
  //   Exit;

  if XContPes = 'DOWN' then
  begin
    pos := EDCliente1.SelStart;
    EDCliente1.Text := ProxPesq;
    EDCliente1.SelStart := pos - 1;
    //EDCliente1.SelLength := 30;
    //EDCliente1.SelText := Copy(EDCliente1.Text, EDCliente1.SelStart+ 1, Length(EDCliente1.Text));
  end
  else if XContPes = 'UP' then
  begin
    pos := EDCliente1.SelStart;
    EDCliente1.Text := AntPesq;
    EDCliente1.SelStart := pos + 1;
    //EDCliente1.SelLength := 30;
    //teste:=Copy(EDCliente1.Text, pos + 1, Length(EDCliente1.Text));
    //EDCliente1.SelText := teste;
  end
  else
  begin
    //PesquisaGrid(Copy(EDCliente1.Text,1, EDCliente1.SelStart));
    //tmp := RetNomeGrid;
    //if tmp <> '' then
        //EDCliente1.Text := EDCliente1.Text+Copy(tmp,Length(EDCliente1.Text)+1,Length(tmp));
  end;
  if key = #27 then
  begin
    CBORDEM.Text := 'CLIENTE';
    AtualizaGridConsulta('');
    //CBORDEM.Text := 'BOX';
    EDCliente1.SelectAll;
  end;
end;

procedure TFOrdemMec.EDNumEnter(Sender: TObject);
begin
  inherited;
  if EDNum.Text = 'Número' then
    EDNum.Text := ''
  else
    EDNum.SelectAll;

  EDNum.Font.Color := clBlack;
end;

procedure TFOrdemMec.EDNumExit(Sender: TObject);
begin
  inherited;
  if Trim(EdNum.Text) = '' then
    EDNum.Text := 'Número';
  EDNum.Font.Color := clGray;
end;

procedure TFOrdemMec.EDBoxExit(Sender: TObject);
begin
  inherited;
  if Trim(EDBox.Text) = '' then
    EDBox.Text := 'BOX';

  EDBox.Font.Color := clGray;
end;

procedure TFOrdemMec.MEPLACAEnter(Sender: TObject);
begin
  inherited;
  if MEPLACA.Text = 'PLACA' then
    MEPLACA.Text := ''
  else
    MEPLACA.SelectAll;

  MEPLACA.Font.Color := clBlack;
end;

procedure TFOrdemMec.MEPLACAExit(Sender: TObject);
begin
  inherited;
  if Trim(MEPLACA.Text) = '' then
    MEPLACA.Text := 'PLACA';

  MEPLACA.Font.Color := clGray;
end;

procedure TFOrdemMec.EDCliente1Enter(Sender: TObject);
begin
  inherited;
  if EDCliente1.Text = 'CLIENTE' then
    EDCliente1.Text := ''
  else
    EDCliente1.SelectAll;

  EDCliente1.Font.Color := clBlack;
end;

procedure TFOrdemMec.EDCliente1Exit(Sender: TObject);
begin
  inherited;
  if Trim(EDCliente1.Text) = '' then
    EDCliente1.Text := 'CLIENTE';

  EDCliente1.Font.Color := clGray;
  SelecionarModoPesquisa(FALSE, '');
  //BtnNovo.SetFocus;
end;

//CLICK BOTAO NOVO PAINEL CONSULTAR

procedure TFOrdemMec.BtnNovoClick(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('ABRIRORD', 'M') = False then
    Exit;

  DMMACS.Transaction.CommitRetaining;
  FiltraTabela(DMMACS.TEmpresa, 'empresa', '', '', '');
  if DMMACS.TEmpresa.FieldByName('EMEXPORTA').AsString = '1' then
  begin
    MessageDlg('Por Favor, verifique o processo de exportação de ordens em andamento.', mtWarning, [mbOK], 0);
    Exit;
  end;
  inherited;

  CBVENDABALCAO.Checked := False;

  // INICIALIZANDO VARIAVEL
  XCOD_ORDEM := -1;
  XCOD_CLIENTE := -1;
  XCOD_EQUIPAMENTO := -1;
  XCOD_FUNCIONARIO := -1;
  XCOD_ITPROD := -1;
  XCOD_ITSERV := -1;
  XCOD_VENDEDOR := -1;
  XCOD_FORMPAG := -1;
  XALIQCOMISS := 0;
  FrmVendedor.BTNOPEN.Enabled := True;
  FrmVendedor.BTNMINUS.Enabled := true;
  FrmVendedor.EDCodigo.ReadOnly := false;

  // GERA NUMERO DA ORDEM
  XNumOrdem := IntToStr(RetornaNumPed);
  DBNumOrd.Text := XNumOrdem;

  try
    DMServ.TOrd.Insert;
    XCOD_ORDEM := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
    XCODPKMESTRE := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
    DMServ.TOrd.FieldByName('NUMERO').AsString := XNumOrdem;
    DMServ.TOrd.FieldByName('DTABERT').AsDateTime := Date();
    edDtAbertura.Text := DateToStr((date()));
    DMServ.TOrd.FieldByName('HRABERT').AsDateTime := Time();
    DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
    DMServ.TOrd.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
    DMServ.TOrd.FieldByName('LOCALAT').AsString := '';
    DMServ.TOrd.FieldByName('EDIT').AsString := '1';
    DMServ.TOrd.Post;
    DMServ.TOrd.ApplyUpdates;
    DMServ.TOrd.Transaction.CommitRetaining;
  except
    MessageDlg('A Odem não foi inserida no banco, tente inserir novamente', mtError, [mbOK], 0);
    Exit;
  end;

  // - 19/03/2009: verificar se OS foi inserida
  if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCODPKMESTRE), '') = False then
  begin
    Mensagem('Mzr Sistemas - INFORMAÇÃO', 'A Ordem inserida foi perdida.' + #13 + 'Para evitar outras falhas Reinicie o sistema.', '', 1, 1, false, 'i');
    Exit;
  end;

  Registra('ORDEM', 'ABRE ORDEM', DateToStr(Date()), 'Nº: ' + XNumOrdem + '; Cód. ordem: ' + IntToStr(XCOD_ORDEM), '');

  //Seleciona somente os registros corretos
  FiltraSlave;
  //Chama função para calcular descontos
  EfetuaDesconto('GERAL', 'MOEDA');

  //VERIFICA RESTRICOES DE USUARIO
  if ControlAccess('USAGARANT', '') = False then
  begin
    CBGarantia.Checked := False;
    CBGarantia.Enabled := False;
  end
  else
  begin
    CBGarantia.Enabled := True;
  end;
  if DMMACS.TLoja.FieldByName('USAGARANTIA').AsString = '1' then
  begin
    CBGarantia.Visible := True;
    CBGarantia.BringToFront;
  end
  else
  begin
    CBGarantia.Visible := False;
  end;

  XEstado := 'INSERT'; //Define como estado de inserção

  // limpa todos os campos
  LimpaCampos;
  LimpaCamposProd;
  LimpaCamposServ;

  //limpar todos os campos de cadastro
  LimpaCampos;
  LimpaCamposProd;
  LimpaCamposServ;

  //MOSTRAR PAINEL DE CADASTRO
  PCadastro.Visible := True;
  PCadastro.BringToFront;
  PConsulta.Visible := False;
  PConsulta.SendToBack;
  PageControl1.ActivePageIndex := 0;
  //Busca vendedor de acordo com o usuario locado
  if FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'codusuario', FMenu.LCODUSUARIO.Caption, '') = true then
  begin
    if FiltraTabela(DMPESSOA.VWFuncionario, 'vwfuncionario', 'cod_func', DMMACS.TUsuario.FieldByName('cod_funcionario').AsString, '') = true then
    begin
      XCOD_VENDEDOR := DMPESSOA.VWFuncionario.FieldByName('cod_func').AsInteger;
      FrmVendedor.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByName('cod_func').AsString;
      FrmVendedor.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('nome').AsString;
    end;
  end;

  //bUSCA FORMA DE PAGAMENTO A VISTA COMO PADRÃO
  if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '') then
  begin
    XCOD_FORMPAG := DMFINANC.TFormPag.FieldByName('cod_formpag').AsInteger;
    FrmFormPag1.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
    FrmFormPag1.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('cod_interno').AsString;
  end;
  //Filtra todos os subserviços
  FiltraTabela(DMServ.WSubServ, 'vwsubservico', '', '', '');
  FrmCliente.EDCodigo.SetFocus;
  FrmCliente.Repaint;
  FrmEquipe.Repaint;
  FBEquipPlaca.Repaint;
  FrmFormPag1.Repaint;
end;

// limpa CAMPOS PRINCIPAIS

procedure TFOrdemMec.LimpaCampos;
begin
  FrmCliente.EDCodigo.Text := '';
  FrmCliente.EdDescricao.Text := '';
  FrmEquipe.EDCodigo.Text := '';
  FrmEquipe.EdDescricao.Text := '';
  FrmVendedor.EDCodigo.Text := '';
  FrmVendedor.EdDescricao.Text := '';

  FrmFormPag1.EDCodigo.Text := '';
  FrmFormPag1.EdDescricao.Text := '';
  EdDescTProd.Text := '0,00';
  EdtotalProd.Text := '0,00';
  FBEquipPlaca.EDCodigo.Text := '';
  FBEquipPlaca.EdDescricao.Text := '';
  DBBox.Text := '0';
  EdValorOrd.Text := '0,00';
  EdContatoCliente.Text := '';
  CBGarantia.Checked := False;
  EdObsFinanceira.Text := '';
  EdPlaca2.Text := ''; //Jônatas 23/08/2013 - Incluído para limpar os edits das placas
  EdPlaca3.Text := '';
  EdDescTServ.Text := '0,00';
  EdTotalserv.Text := '0,00';
  EdTotDesp.Text := '0,00';

  EdDescTOrdem.Text := '0,00';
  EdTotalOrd.Text := '0,00';

  MObs.Lines.Clear;
  MObsOrdem.Lines.Clear;

  lbNumFrota.Caption := '';
  lbNumFrota.Repaint;
end;

procedure TFOrdemMec.LimpaCamposProd;
begin
  EDCodFab.Clear;
  EDQuantidade.Text := '0,00';
  EDValUnit.Text := '0,00';
  EDDesc.Text := '0,00';
  EDTotal.Text := '0,00';
  LEstoque.Caption := '';
  LSaldoEstoque.Caption := '';
  LProduto.Caption := '';
  LLocal.Caption := '';
  LCst.Caption := '';
  EdVlrCompra.Text := '0,00';

  //limpa edits do painel de preços
  EdVlrAtacadoPrazo.text := '0,00';
  EdVlrAtacadoVista.text := '0,00';
  EdVlrVarejoPrazo.text := '0,00';
  EdVlrVarejoVista.text := '0,00';

  //Edmar - 24/03/2015 - Verifica qual é o tipo de pesquisa que está ativo
  if pPesqBarraInterno.Visible then
    EDCodBarra.Text := ''
  else
    EDCodFab.Text := '';
end;

procedure TFOrdemMec.LimpaCamposServ;
begin
  ETotalServItem.Text := '0,00';
  EValorServ.Text := '0,00';
  EQtdServ.Text := '0,00';
  edCustoTerceiros.Text := '0,00';
  EdTotIss.Text := '0,00';
  edCustoTerceiros.Enabled := False;
  EDesricaoServico.Clear;
  FrmEquipe.EDCodigo.Clear;
  FrmEquipe.EdDescricao.Clear;
end;

//press key codigo do cliente

procedure TFOrdemMec.FrmClienteEDCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_return then
  begin
    if FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO=' + #39 + FrmCliente.EDCodigo.Text + #39) = True then
    begin //CASO CONSEGUIU SELECIONAR CLIENTE
      XCOD_CLIENTE := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
      FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
      FrmCliente.EDCodigo.Hint := DMPESSOA.WCliente.FieldByName('NOME').AsString;
      FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
      if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '') = True then
        EdObsFinanceira.Text := DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
      else
        EdObsFinanceira.Text := '';

      //SelectFormPag_Vendedor;       #################################
      FBEquipPlaca.EDCodigo.SetFocus;
    end
    else
    begin //CASO NÃO CONSEGUIU SELECIONAR CLIENTE
      XCOD_CLIENTE := -1;
      FrmCliente.EdDescricao.Text := '';
      FrmCliente.EDCodigo.Hint := '';
      FrmCliente.EDCodigo.Text := '';
      EdObsFinanceira.Text := '';
    end;
  end;
  // - 27/04/2009: pressionar Ctrl+N chama painel de cadastro cliente/placa
  if (shift = [ssCtrl]) and (key = 78) then
  begin
    limpar(true, true);
    PCadastroRapido.Visible := True;
    PCadastroRapido.BringToFront;
    //Localiza Cidade
    if FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '') = True then
    begin
      XCOD_CIDADE := DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
      FrmCidade.EdDescricao.Text := DMGEOGRAFIA.WCidade.FieldByName('UF').AsString + '-' + DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
      FrmCidade.EDCodigo.Text := DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    end
    else
    begin
      XCOD_CIDADE := -1;
      FrmCidade.EdDescricao.Text := '';
      FrmCidade.EDCodigo.Text := '';
    end;
    CheckBox1.Checked := True;
    edNome.SetFocus;
  end;

  FrmCliente.Repaint;
end;

// press botao cliente

procedure TFOrdemMec.FrmClienteBTNOPENClick(Sender: TObject);
begin
  // inherited;
  FrmCliente.BTNOPENClick(Sender);
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME'); //LIBERA TODOS OS REGISTROS PARA CONSULTA
  if AbrirForm(TFCliente, FCliente, 1) = 'Selected' then
  begin
    if DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString = '1' then
      MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS', mtWarning, [mbOK], 0);
    if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '') = True then
    begin
      if (DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency >= XVLRTOTAL) and (DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency <> 0) then
        Mensagem('INFORMAÇÃO', 'Este cliente possui créditos!' + #13 + 'Valor de crédito: ' + FormatFloat('0.00', DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency), '', 1, 1, false, 'i');
    end;
    //VEERIFICA SE DIAS DE INTERVALO MAIOR QUE ZERO, SE IGUAL OU MENOR A ZERO O SISTEMA NÃO DEVE FAZER CONTROLE
    if DMMACS.TLoja.FieldByName('DIASBLOQCLI').AsInteger <> 0 then
    begin
      if VerificBloqCli(IntToStr(DMPESSOA.WCliente.FieldByName('COD_cliente').AsInteger)) = True then
        Mensagem('C R É D I T O   B L O Q U E A D O', 'Cliente possui Crédito Bloqueado. Por atrasos de ' + DIASATRASO + '/' + IntToStr(StrToInt(DIASATRASO) - DMMACS.TLoja.FieldByNAme('DIASBLOQCLI').AsInteger) + ' dias em suas contas!', '', 1, 1, false, 'i');
    end;
    XCOD_CLIENTE := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
    FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
    FrmCliente.EDCodigo.Hint := DMPESSOA.WCliente.FieldByName('NOME').AsString;
    FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
    DMPESSOA.TCliente.Close;
    DMPESSOA.TCliente.SQL.Clear;
    DMPESSOA.TCliente.SQL.Add(' Select * from cliente where cliente.cod_cliente=:Codigo ');
    DMPESSOA.TCliente.ParamByName('Codigo').AsInteger := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
    DMPESSOA.TCliente.Open;
    if not DMPESSOA.TCliente.IsEmpty then
      EdObsFinanceira.Text := DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
    else
      EdObsFinanceira.Text := '';

    SelecionaFormaPagamento;

    FBEquipPlaca.EDCodigo.SetFocus;

  end
  else
  begin
    if XCOD_CLIENTE = -1 then
    begin
      //XCOD_CLIENTE:=-1;
      FrmCliente.EDCodigo.Text := '';
      FrmCliente.EDCodigo.Hint := '';
      FrmCliente.EdDescricao.Text := '';
      EdObsFinanceira.Text := '';
    end;
  end;

  FrmCliente.Repaint;
  FrmEquipe.Repaint;
  FBEquipPlaca.Repaint;
  FrmFormPag1.Repaint;
end;

//pesquisa codigo equipamento

procedure TFOrdemMec.PesquisaCodigoEquipamento(codigo: string; cliente: boolean);
var
  Tmp: Boolean;
begin
  // letras maiusculas
  codigo := Trim(UpperCase(StringReplace(StringReplace(codigo, '-', '', [rfReplaceAll]), ' ', '', [rfReplaceAll])));
  if codigo <> '' then
  begin
    DMESTOQUE.Alx.close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select * from equipamento');
    DMESTOQUE.Alx.SQL.Add('where upper(replace(replace(equipamento.placa, ''-'', ''''), '' '', '''')) like upper (' + #39 + codigo + #39 + ')  AND ((EQUIPAMEnTO.ATIVO=' + #39 + '1' + #39 + ') OR (EQUIPAMEnTO.ATIVO IS NULL) or (EQUIPAMEnTO.ATIVO=' + #39 + 'S' + #39 + ') )'); //Jônatas 23/08/2013 - Alterado pois estava com erro
    DMESTOQUE.Alx.Open;
    DMESTOQUE.Alx.first;
    if not DMESTOQUE.alx.IsEmpty then
    begin
      XCOD_EQUIPAMENTO := DMESTOQUE.Alx.FieldByName('COD_EQUIPAMENTO').AsInteger;
      FBEquipPlaca.EdDescricao.Text := DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;
      if DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> '' then
      begin
        lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
      end
      else
      begin
        lbNumFrota.Caption := '';
      end;
      if cliente then
      begin
        // busca o cliente q esta atrelado ao equipamento
        FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMESTOQUE.Alx.FieldByname('cod_cliente').AsString, '');
        if not DMPESSOA.WCliente.IsEmpty then
        begin
          if DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString = '1' then
            MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS', mtWarning, [mbOK], 0);

          XCOD_CLIENTE := DMPESSOA.WCliente.FieldByname('COD_CLIENTE').AsInteger;
          FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByname('cod_interno').AsString;
          FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByname('nome').AsString;
          if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '') = True then
            EdObsFinanceira.Text := DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
          else
            EdObsFinanceira.Text := '';
        end
        else
        begin
          XCOD_CLIENTE := -1;
          FrmCliente.EdDescricao.Text := '';
          FrmCliente.EDCodigo.Text := '';
          EdObsFinanceira.Text := '';
        end;
      end;
      DBBox.SetFocus;
      DBBox.SelectAll;
    end
    else
    begin
      XCOD_EQUIPAMENTO := -1;
      FBEquipPlaca.EdDescricao.Text := '';
      lbNumFrota.Caption := '';
      FBEquipPlaca.EDCodigo.SelectAll;
    end;
    FrmCliente.Repaint;
    FrmEquipe.Repaint;
    FBEquipPlaca.Repaint;
    FrmFormPag1.Repaint;
    lbNumFrota.Repaint;
  end;
end;
// exit codigo equipamento

procedure TFOrdemMec.FBEquipPlacaEDCodigoExit(Sender: TObject);
begin
  inherited;
  if FBEquipPlaca.EDCodigo.Text = '' then
  begin
    XCOD_EQUIPAMENTO := -1;
    FBEquipPlaca.EDCodigo.Text := '';
    FBEquipPlaca.EdDescricao.Text := '';
  end;
end;

// key down codigo equipamento

procedure TFOrdemMec.FBEquipPlacaEDCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (FBEquipPlaca.EDCodigo.SelLength > 0) and not (KEY = 8) and not (KEY = 13) then
  begin
    FBEquipPlaca.EDCodigo.Text := '';
  end;

  {If (Length(FBEquipPlaca.EDCodigo.Text) = 3) And Not (KEY = 8) Then Begin
      FBEquipPlaca.EDCodigo.Text := FBEquipPlaca.EDCodigo.Text + '-';
      FBEquipPlaca.EDCodigo.SelStart := 4;
  End;}
  if key = 13 then
  begin
    if FBEquipPlaca.EDCodigo.Text <> '' then
      PesquisaCodigoEquipamento(FBEquipPlaca.EDCodigo.Text, true);
  end;
end;

// click botao equipamento

procedure TFOrdemMec.FBEquipPlacaBTNOPENClick(Sender: TObject);
begin
  inherited;
  FBEquipPlaca.BTNOPENClick(Sender);
  //FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', '', ' ORDER BY EQUIPAMENTO.DESCRICAO');//LIBERA TODOS OS REGISTROS PARA CONSULTA
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCOD_CLIENTE), '');
  if AbrirForm(TFCadEquipamento, FCadEquipamento, 1) = 'Selected' then
  begin
    XCOD_EQUIPAMENTO := DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
    FBEquipPlaca.EDCodigo.Text := DMPESSOA.TEquip.FieldByName('PLACA').AsString;
    FBEquipPlaca.EdDescricao.Text := DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
    if DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> '' then
    begin
      lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
    end
    else
    begin
      lbNumFrota.Caption := '';
    end;
    // FrmFormPag1.EDCodigo.SetFocus;

  end
  else
  begin
    if XCOD_EQUIPAMENTO = -1 then
    begin
      //XCOD_EQUIPAMENTO:=-1;
      FBEquipPlaca.EDCodigo.Text := '';
      FBEquipPlaca.EdDescricao.Text := '';
      lbNumFrota.Caption := '';
      FBEquipPlaca.EDCodigo.SetFocus;
    end;
  end;

  XLiberaDados := '';
  FBEquipPlacaEDCodigoExit(Sender);

  FrmCliente.Repaint;
  FrmEquipe.Repaint;
  FBEquipPlaca.Repaint;
  FrmFormPag1.Repaint;
  lbNumFrota.Repaint;
end;

//pesquisa pelo codigo da forma de pagamento

procedure TFOrdemMec.PesquisaCodigoPagamento(codigo: string);
begin
  // letras maiusculas
  codigo := Trim(UpperCase(codigo));

  if codigo <> '' then
  begin
    //seleciona a forma de pagamento
    if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', codigo, '') = true then
    begin
      XCOD_FORMPAG := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
      FrmFormPag1.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
      FrmFormPag1.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      //DBBox.SetFocus;
    end
    else
    begin
      XCOD_FORMPAG := -1;
      FrmFormPag1.EDCodigo.Text := '';
      FrmFormPag1.EdDescricao.Text := '';
    end;
    FrmCliente.Repaint;
    FrmEquipe.Repaint;
    FBEquipPlaca.Repaint;
    FrmFormPag1.Repaint;
  end;
end;
// key press codigo equipamento

procedure TFOrdemMec.FrmFormPag1EDCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    if FrmFormPag1.EDCodigo.Text <> '' then
    begin
      PesquisaCodigoPagamento(FrmFormPag1.EDCodigo.Text);
    end;
  end;
end;
//click botao forma de pagamento

procedure TFOrdemMec.FrmFormPag1BTNOPENClick(Sender: TObject);
var
  XBoxAux: string;
begin
  inherited;
  FrmFormPag1.BTNOPENClick(Sender);
  if AbrirForm(TFFormPag, FFormPag, 1) = 'Selected' then
  begin
    XCOD_FORMPAG := DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
    FrmFormPag1.EDCodigo.Text := DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
    FrmFormPag1.EdDescricao.Text := DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
    FrmFormPag1.Repaint;
    XBoxAux := DBBox.Text;
    DBBox.SetFocus;
    DBBox.Text := XBoxAux;
  end
  else
  begin
    if XCOD_FORMPAG = -1 then
    begin
      //XCOD_FORMPAG:=-1;
      FrmFormPag1.EDCodigo.Text := '';
      FrmFormPag1.EdDescricao.Text := '';
    end;
  end;
end;
// exit codigo equipamento

procedure TFOrdemMec.FrmFormPag1EDCodigoExit(Sender: TObject);
begin
  inherited;
  if FrmFormPag1.EDCodigo.Text <> '' then
  begin
    PesquisaCodigoPagamento(FrmFormPag1.EDCodigo.Text);
  end
  else
  begin
    XCOD_FORMPAG := -1;
    FrmFormPag1.EDCodigo.Text := '';
    FrmFormPag1.EdDescricao.Text := '';
  end;
end;

//seleciona forma de pagamento e vendedor de acordo com o cliente

procedure TFOrdemMec.SelecionaFormaPagamento;
begin
  //Insere forma de pagamento para o cliente
  if DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsInteger <> -1 then
  begin
    if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsString, '') = True then
    begin
      XCOD_FORMPAG := DMFINANC.TFormPag.FieldByname('COD_FORMPAG').AsInteger;
      FrmFormPag1.EDCodigo.Text := DMFINANC.TFormPag.FieldByname('COD_INTERNO').AsString;
      FrmFormPag1.EdDescricao.Text := DMFINANC.TFormPag.FieldByname('DESCRICAO').AsString;
    end
    else
    begin
      XCOD_FORMPAG := -1;
      FrmFormPag1.EDCodigo.Text := '';
      FrmFormPag1.EdDescricao.Text := '';
    end;
  end
  else
  begin
    XCOD_FORMPAG := -1;
    FrmFormPag1.EDCodigo.Text := '';
    FrmFormPag1.EdDescricao.Text := '';
  end;
end;

//press key codigo equipamento

procedure TFOrdemMec.FBEquipPlacaEDCodigoKeyPress(Sender: TObject; var Key: Char);
var
  xPlacaLimpa: string;
begin
  inherited;
  xPlacaLimpa := Trim(UpperCase(StringReplace(StringReplace(FBEquipPlaca.EDCodigo.Text, '-', '', [rfReplaceAll]), ' ', '', [rfReplaceAll])));

  if (Length(xPlacaLimpa) = 4) and not (Key = #8)
    and not (Key = #13) and not (Key = #27) then
  begin
    if not (Key in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[1] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[2] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[3] in ['a'..'z', 'A'..'Z']) then // PADRÃO ANTIGO ABC 1234
    begin
      FBEquipPlaca.EDCodigo.Text := xPlacaLimpa[1] + xPlacaLimpa[2] + xPlacaLimpa[3] + '-' + xPlacaLimpa[4];
      FBEquipPlaca.EDCodigo.SelStart := 5;
    end;
  end;

  if (Length(xPlacaLimpa) = 7) and not (Key = #8) and not (Key = #13) and not (Key = #27) then
    Key := #0;

  {FBEquipPlaca.EDCodigoKeyPress(Sender, Key);

  If Not (key In ['a'..'z', 'A'..'Z', '0'..'9', #8, #13])
      Then
      Key := #0
  Else Begin // ['A'..'Z','a'..'z'
      If Length(FBEquipPlaca.EDCodigo.Text) < 4 Then
          If Not (key In ['a'..'z', 'A'..'Z', #8, #13]) Then
              Key := #0;
      If (Length(FBEquipPlaca.EDCodigo.Text) > 3) Then
          If Not (key In ['0'..'9', #8, #13]) Then
              Key := #0
  End;

  FBEquipPlaca.Repaint;}

end;
//click limpar forma de pagamento

procedure TFOrdemMec.FrmFormPag1BTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmFormPag1.BTNMINUSClick(Sender);
  XCOD_FORMPAG := -1;
  FrmFormPag1.EDCodigo.Text := '';
  FrmFormPag1.EdDescricao.Text := '';
  FrmFormPag1.Repaint;
end;

//click botao produto

procedure TFOrdemMec.BtnProcProdClick(Sender: TObject);
var
  aux: string;
begin
  inherited;
  aux := FMenu.TIPOAUX;
  //set no fmenu soh pro focus ficar na descrição
  FMenu.TIPOAUX := 'PEDVENDA';
  //abre formulario de produto para seleção
  if AbrirForm(TFProduto, FProduto, 1) = 'Selected' then
  begin
    //Depois de selecionado escreve nas labels o produto
    EscreveLabelsPROD;
    EDCodFab.Text := '';
    EDQuantidade.Text := '1,00';
    EDQuantidadeExit(Sender);
    if EdVlrCompra.Visible = True then
      EdVlrCompra.SetFocus
    else
      EDQuantidade.SetFocus;
    //Panel4.Repaint;
  end
  else
  begin
    LimpaCamposProd;
    LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
  end;
  FMenu.TIPOAUX := aux;
end;

//Alex 14/03/2018 - Função utilizada para limpar a string grid de multiplos vendedores
function TFOrdemMec.LimpaGradeMultiplosVendedores(xTipoOperacao: string): Boolean;
var
  I: integer;
  xStringGridAux: TStringGrid;
begin
  try
    //atribui para string grid auxiliar qual é a grid que está sendo manipulada
    if xTipoOperacao = 'PROD' then
    begin
      xStringGridAux := sgMultiplosVendedoresProduto;
      XTotalVendedoresProd := 0;
      xPrimeiraAliqProd := 0;
    end
    else
    begin
      xStringGridAux := sgMultiplosVendedoresServico;
      XTotalVendedoresServ := 0;
      xPrimeiraAliqServ := 0;
    end;

    xStringGridAux.ColWidths[0] := 0;
    xStringGridAux.ColWidths[1] := 0;
    xStringGridAux.ColWidths[2] := 0;
    xStringGridAux.ColWidths[3] := 100;
    for I := 0 to xStringGridAux.RowCount - 1 do
      xStringGridAux.Rows[I].Clear;
    xStringGridAux.Cells[3, 0] := 'adicione vendedores';
  except
    MessageDlg('O Sistema não redefiniu os vendedores do items. Verifique!', mtWarning, [mbOK], 0);
  end;
end;

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
procedure TFOrdemMec.EscreveLabelsPROD;
begin
  //Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
  if FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '') = False then
    Exit;

  //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
  if FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '') = False then
    Exit;

  //Filtra tabela de CST
  FiltraTabela(DMEstoque.TCST, 'CST', 'COD_CST', DMEstoque.TSubProd.FieldByName('COD_CST').AsString, '');
  //Exit;

// por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
  XCOD_ESTOQUE := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;

  // nao está selecionando apenas valores á prazo
  if DMMACS.TLoja.FieldByName('tipovenda').AsString = '0' then
  begin
    if (EDQuantidade.ValueNumeric >= DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) and (DMEstoque.TSubProd.FieldByName('QTDATC').AsString <> '') then
    begin //caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
      if FrmFormPag1.EdDescricao.Text = 'À VISTA' then
      begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
        EDValUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency);
      end
      else
      begin
        EDValUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
      end;
    end
    else
    begin
      if FrmFormPag1.EdDescricao.Text = 'À VISTA' then
      begin
        EDValUnit.Text := FormatCurr('0.00', DMEstoque.WSimilar.FieldByName('VENDVARV').AsCurrency);
      end
      else
      begin
        EDValUnit.Text := FormatCurr('0.00', DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency);
      end;
    end;
  end
    // forçando venda a prazo
  else
  begin
    if (EDQuantidade.ValueNumeric >= DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) and (DMEstoque.TSubProd.FieldByName('QTDATC').AsString <> '') then
    begin //caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
      EDValUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
    end
    else
    begin
      EDValUnit.Text := FormatCurr('0.00', DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency);
    end;
  end;

  InsereMultiploVendedor(XCOD_VENDEDOR, 'PROD');
  //Passa os valores do produto selecionado para as labels
  LProduto.Caption := DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
  if DMEstoque.TSubProd.FieldByName('Marca').asstring <> '' then
    LProduto.Caption := LProduto.Caption + '     Marca: ' + dMEstoque.TSubProd.FieldByName('Marca').asstring;
  if DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring <> '' then
    LLocal.Caption := 'Estante: ' + DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring;
  LEstoque.Caption := FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency);
  LSaldoEstoque.Caption := FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency);
  if DMESTOQUE.TCST.FieldByName('VENDA').AsString = '1' then
    LCst.Caption := 'C.S.T.: ' + DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString + '/Venda'
  else
    LCst.Caption := 'C.S.T.: ' + DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString + '/Não Venda';

  //PASSA VALORES PARA O PAINEL DE CONSULTA DE PREÇOS
  EdVlrAtacadoPrazo.ValueNumeric := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
  EdVlrAtacadoVista.ValueNumeric := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
  EdVlrVarejoPrazo.ValueNumeric := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
  EdVlrVarejoVista.ValueNumeric := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;

  EDQuantidade.Text := '1,00';
  if EdVlrCompra.Visible = True then
    EdVlrCompra.SetFocus
  else
    EDQuantidade.SetFocus;

  EdVlrCompra.ValueNumeric := DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency;
end;

//opções de pesquisa para o produto

procedure TFOrdemMec.TipoPesquisaProduto(tipo: string);
begin
  CdigodeBarra1.Checked := False;
  ControleInterno1.Checked := False;
  CdigoFabricante1.Checked := False;
  Descrio1.Checked := False;

  if tipo = 'BARRA' then
  begin
    CdigodeBarra1.Checked := True;
    LPesquisa.Caption := 'Código de Barra:';
    XPESPROD := 1;
  end
  else if TIPO = 'FABRICANTE' then
  begin
    CdigoFabricante1.Checked := True;
    LPesquisa.Caption := 'Código do Fabricante:';
    XPESPROD := 2;
  end
  else if TIPO = 'DESCRICAO' then
  begin
    Descrio1.Checked := True;
    LPesquisa.Caption := 'Descrição do Produto:';
    XPESPROD := 3;
  end
  else
  begin
    ControleInterno1.Checked := True;
    LPesquisa.Caption := 'Controle Interno:';
    XPESPROD := 0;
  end;
end;

procedure TFOrdemMec.CdigodeBarra1Click(Sender: TObject);
begin
  inherited;
  TipoPesquisaProduto('BARRA');
end;

procedure TFOrdemMec.ControleInterno1Click(Sender: TObject);
begin
  inherited;
  TipoPesquisaProduto('');
end;

procedure TFOrdemMec.CdigoFabricante1Click(Sender: TObject);
begin
  inherited;
  TipoPesquisaProduto('FABRICANTE');
end;

procedure TFOrdemMec.Descrio1Click(Sender: TObject);
begin
  inherited;
  TipoPesquisaProduto('DESCRICAO');
end;
{
//pesquisa PRODUTO
Procedure PesquisaProduto(str:String);
begin

end;  }

//press pesquisa produto

procedure TFOrdemMec.EDCodFabKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  str: string;
begin
  inherited;
  if DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '0' then
  begin
    // ALEX - 21/05/2009: pressionar Ctrl+P chama painel de busca de produtos pelo nome
    if (shift = [ssCtrl]) and (key = 78) then
    begin
      if XTipoProc = 0 then
      begin
        XTipoProc := 1;
        PListaProdutos.Visible := true;
        PListaProdutos.BringToFront;
      end
      else
      begin
        XTipoProc := 0;
        PListaProdutos.Visible := False;
      end;
    end;
    // End;

    if XTipoProc = 1 then
    begin
      if Key = Vk_Down then
      begin
        DMESTOQUE.WSimilar.Next;
      end;
      if Key = Vk_UP then
      begin
        DMESTOQUE.WSimilar.Prior;
      end;
    end;

    if Key = VK_Return then
    begin
      if XTipoProc = 0 then
      begin
        //TIPO DE BUSCA
        if XPESPROD = 1 then
          str := 'CODBARRA'
        else if XPESPROD = 2 then
          str := 'CODFABRICANTE'
        else if XPESPROD = 3 then
          str := 'DESCRICAO'
        else
          str := 'CONTRINT';

        {Edmar - 14/08/2014 - Trecho comentado pois não é mais usado esse metodo para busca
      //Paulo 12/07/2011: Busca o produto pelo código conforme determinado na config loja
           If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CI' Then
           Begin
               If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(EDCodFab.Text), '') = True
                   Then Begin
                   EscreveLabelsPROD;
                   EDCodFab.Text := '';
                   EDQuantidade.Text := '1,00';

             // EDQuantidade.SetFocus;
               End
               Else Begin
                   LimpaCamposProd;
                   LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
               End;
           End;
           If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CF' Then
           Begin
               If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(EDCodFab.Text), '') = True
                   Then Begin
                   EscreveLabelsPROD;
                   EDCodFab.Text := '';
                   EDQuantidade.Text := '1,00';
             // EDQuantidade.SetFocus;
               End
               Else Begin
                   LimpaCamposProd;
                   LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
               End;
           End;
           If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CB' Then
           Begin
               If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(EDCodFab.Text), '') = True
                   Then Begin
                   EscreveLabelsPROD;
                   EDCodFab.Text := '';
                   EDQuantidade.Text := '1,00';
             // EDQuantidade.SetFocus;
               End
               Else Begin
                   LimpaCamposProd;
                   LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
               End;
           End;}

      //Paulo 12/07/2011: Se não existe config na loja
        if (DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'NC') then
        begin
          if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(EDCodFab.Text), '') = True then
          begin
            EscreveLabelsPROD;
            EDCodFab.Text := '';
            EDQuantidade.Text := '1,00';
            // EDQuantidade.SetFocus;
          end
          else
          begin
            if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(EDCodFab.Text), '') = True then
            begin
              EscreveLabelsPROD;
              EDCodFab.Text := '';
              EDQuantidade.Text := '1,00';
              // EDQuantidade.SetFocus;
            end
            else
            begin
              if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(EDCodFab.Text), '') = True then
              begin
                EscreveLabelsPROD;
                EDCodFab.Text := '';
                EDQuantidade.Text := '1,00';
                //   EDQuantidade.SetFocus;
              end
              else
              begin
                if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'DESCRICAO', UpperCase(EDCodFab.Text), '') = True then
                begin
                  EscreveLabelsPROD;
                  EDCodFab.Text := '';
                  EDQuantidade.Text := '1,00';
                  //   EDQuantidade.SetFocus;
                end
                else
                begin
                  LimpaCamposProd;
                  LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
                end;
              end;
            end;
          end;
        end;
      end
      else
      begin
        str := EDCodFab.Text;
        if str[1] = '.' then
        begin
          EDCodFab.Text := TiraCaracterEmPosicao(str, 1);
          FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA=' + FMenu.LCODLOJA.Caption + ') AND (upper(CODFABRICANTE) like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
        end
        else
        begin
          FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA=' + FMenu.LCODLOJA.Caption + ') AND (upper(DESCRICAO) like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
        end;
      end;
    end;
  end;
  if Key = Vk_F2 then
  begin
    DMESTOQUE.WSimilar.Close;
    DMESTOQUE.WSimilar.SQL.Clear;
    DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR where (vwsimilar.descricao like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
    DMESTOQUE.WSimilar.Open;
    XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
    //EscreveLabelsPROD;
    //EDCodFab.Text := '';
    EDQuantidade.Text := '1,00';
  end;
end;

procedure TFOrdemMec.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if PConsulta.Visible = True then
  begin
    if (Key = VK_Down) then
      XView.Next;
    if (Key = VK_Up) then
      XView.Prior;
  end;

  //Edmar - 12/09/2014 - Abre Tela de Consultar Produto na ordem de serviço a pedido da BS
  //solicitação 188
  if Key = VK_F10 then
  begin
    btnConsultarProdutosClick(sender);
  end;

  //CONTROLE PARA PAINEL DE PRECOS
  //pressionando F1 busca os valores de venda do produto que está selecionado
  if Key = Vk_F1 then
  begin
    PPrecos.Visible := True;
    PPrecos.BringToFront;
    PPrecos.SetFocus;
    //EdVlrVarejoVista.SetFocus;
  end;
  //pressionando esc, fecha o painel de consulta de preços do produto
  if Key = Vk_Escape then
  begin
    if PPrecos.Visible = True then
    begin
      PPrecos.Visible := False;
    end;
    if PInfoCliente.Visible = True {// se estiver aparecendo info de cliente limpa} then
    begin
      LimpaInfoCliente(Self);
    end;
    if PListaProdutos.Visible = True then
      PListaProdutos.Visible := False;
  end;

  //botão GRAVAR
  if Key = vk_f5 then
    if PCadastro.Visible then
      BtnGravar.Click;

  //botão CANCELAR
  if Key = vk_f7 then
    if PCadastro.Visible then
      BtnCancelar.Click;

  if (Key = VK_F9) and (PConsulta.Visible) then
    BtnSelecionar.Click;

  // se estiver com painel cadastro acionado nao deixar fazer as ações abaixo
  //if PCadastro.Visible = true then
     //Exit;

  // CTRL + D -> eh o comando para desbloquear a ordem de servico caso tenha ocorrido algum problema
  // qdo estava sendo consultada e caiu energia, ou foi pressionado F4 (por exemplo) e nao passou pelo
  // botão GRAVAR ou CANCELAR que liberar a ordem
  if (shift = [ssCtrl]) and (key = 68) then
  begin
    // faz o filtro na tabela para verificar se ela esta realmente bloqueada
    FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByname('cod_ordem').AsString, '');

    // se ela nao estiver bloqueada eh exibida a msg e finalizada a operação
    if DMServ.TOrd.FieldByName('EDIT').AsString = '1' then
    begin
      if Mensagem('   A T E N Ç Ã O   ', 'Deseja desbloquear a Ordem nº ' + DMServ.WOrdem.FieldByName('numero').AsString + ' ?', '', 2, 3, false, 'A') = 2 then
      begin

        // abre formulario de senha
        AbrirForm(TFSenha, FSenha, 0);

        // caso tenha informado os dados do administrador correto, a OS eh liberada
        if XAlxResult = true then
        begin
          //If ControlAccess('EDITAVENDEDOROS', 'GERACANC') = True
            //Then Begin
          DMServ.TOrd.Edit;
          DMServ.TOrd.FieldByName('EDIT').AsString := '0';
          DMServ.TOrd.Post;
          DMServ.TOrd.ApplyUpdates;
          DMServ.IBT.CommitRetaining;
          //End
          //Else Begin
          //	MessageDlg('A sua conta de usuário não tem permissão para desbloquear este registro!'+#13+'Acesse o sistema como um usuário que possua essa permissão para poder executar o seu comando', mtWarning, [mbOK], 0);
          //End;
        end;
      end;
    end;
  end;
  //CTRL+P // MOSTRA INFORMAÇÕES CLIENTE
  if (shift = [ssCtrl]) and ((key = 80) or (key = 50)) then
  begin
    PInfoCliente.Top := (PConsulta.Height - PInfoCliente.PPrincipal.Height) div 2;
    PInfoCliente.left := (PConsulta.Width - PInfoCliente.PPrincipal.Width) div 2;
    PInfoCliente.OnExit := LimpaInfoCliente;
    if (PCadastro.Visible = True) and (Trim(FrmCliente.EDCodigo.Text) <> '') then
      PInfoCliente.PesquisaCodigoInterno(FrmCliente.EDCodigo.Text)
    else
      PInfoCliente.LimpaCampos;
    PInfoCliente.Visible := True;
    PInfoCliente.BringToFront;
    PInfoCliente.FrmCliente.EDCodigo.SetFocus;
    PInfoCliente.Repaint;
    Exit;
  end;

  //controle de botões
   //botão novo
  if Key = vk_f4 then
    if PConsulta.Visible then
      BtnNovo.Click;

  //botão apagar
  if Key = vk_f8 then
    if PConsulta.Visible then
      BtnApagar.Click;

  //botão consultar
  if Key = vk_f6 then
    if PConsulta.Visible then
      BtnConsultar.Click;

  //FOCUS EM LOCALIZAR
  if Key = vk_f2 then
    if PConsulta.Visible then
    begin
      AtualizaGridConsulta('ORIGEM');
      EDNum.SetFocus;
    end;

  inherited;
end;

// on exit campo qnt produto

procedure TFOrdemMec.EDQuantidadeExit(Sender: TObject);
begin
  inherited;
  if (EDQuantidade.ValueNumeric <> 0) and (EDValUnit.ValueNumeric <> 0) then
  begin
    CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
    EDTotal.ValueNumeric := AlxCalculo;
  end;
end;
//press key desconto produto

procedure TFOrdemMec.EDDescKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if key = #13 then
  begin
    EDDesc.SetFocus;
    exit;
  end;
  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('DESCPROD', 'M') = False then
    Key := #0;
end;

//pres key qnt produto

procedure TFOrdemMec.EDQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    EDDesc.SetFocus;
end;
//exit desconto produto

procedure TFOrdemMec.EDDescExit(Sender: TObject);
begin
  inherited;

  if (EDQuantidade.ValueNumeric <> 0) and (EDValUnit.ValueNumeric <> 0) then
  begin
    CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
    EDTotal.ValueNumeric := AlxCalculo;
  end;
end;
//exit valor unitario produto

procedure TFOrdemMec.EDValUnitExit(Sender: TObject);
begin
  inherited;
  if (EDQuantidade.ValueNumeric <> 0) and (EDValUnit.ValueNumeric <> 0) then
  begin
    CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
    EDTotal.ValueNumeric := AlxCalculo;
  end;
end;
//key press valor unitario produto

procedure TFOrdemMec.EDValUnitKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    EDTotal.SetFocus;
end;
//pres key campo total do produto

procedure TFOrdemMec.EDTotalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    CalcPercent(0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric) - EDTotal.ValueNumeric, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
    EDDesc.ValueNumeric := AlxPercento;
    BtnInsertProd.SetFocus;
  end;
end;
//exit campo total do produto

procedure TFOrdemMec.EDTotalExit(Sender: TObject);
begin
  inherited;
  CalcPercent(0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric) - EDTotal.ValueNumeric, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
  EDDesc.ValueNumeric := AlxPercento;
end;

//Função utilizada para remover os multiplo vendedores do banco de dados
function TFOrdemMec.RemoveMultiploVendedorBD(xCodigoItemVenda: Integer; xTipoOperacao: string): Boolean;
begin
  try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' Delete from comprod ');
    MDO.Query.SQL.Add(' where (comprod.cod_gerador=:CodigoGerador) ');
    if xTipoOperacao = 'PROD' then
      MDO.Query.SQL.Add(' and (comprod.tipo=''COMOS'')')
    else
      MDO.Query.SQL.Add(' and (comprod.tipo=''COMOSSERV'')');
    MDO.Query.ParamByName('CodigoGerador').AsInteger := xCodigoItemVenda;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
  except
  end;
end;

//Função utilizada para inserir junto ao banco de dados os multiplos vendedores inseridos
function TFOrdemMec.InsereMultiploVendedorBD(xCodigoItemVenda: Integer; xTipoOperacao: string): Boolean;
var
  I: Integer;
  xStringGridAux: TStringGrid;
begin
  try
    //atribui para string grid auxiliar qual é a grid que está sendo manipulada
    if xTipoOperacao = 'PROD' then
      xStringGridAux := sgMultiplosVendedoresProduto
    else
      xStringGridAux := sgMultiplosVendedoresServico;

    //Alex 15/03/2018 - Percorre novamente a grade redistribuindo as comissões
    for I := 0 to xStringGridAux.RowCount - 1 do
    begin
      if xStringGridAux.Cells[0, I] = '' then
      begin
      end
      else
      begin
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' INSERT INTO COMPROD (COD_GERADOR, COD_FUNCIONARIO, PERCENTO, TIPO) ');
        MDO.Query.SQL.Add(' VALUES (:COD_GERADOR, :COD_FUNCIONARIO, :PERCENTO, :TIPO) ');
        MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoItemVenda;
        MDO.Query.ParamByName('COD_FUNCIONARIO').AsString := xStringGridAux.Cells[0, I];
        if xTipoOperacao = 'PROD' then
          MDO.Query.ParamByName('TIPO').AsString := 'COMOS'
        else
          MDO.Query.ParamByName('TIPO').AsString := 'COMOSSERV';
        MDO.Query.ParamByName('PERCENTO').AsCurrency := StrToFloat(xStringGridAux.Cells[1, I]);
        MDO.Query.ExecSQL;
      end;
    end;
    Result := True;
    MDO.Transac.CommitRetaining;
  except
    Result := False;
  end;
end;

procedure TFOrdemMec.BtnInsertProdClick(Sender: TObject);
var
  XEstReserv, xestfisico, xqnt: real;
  xcod_item: Integer;
  I, xCodigoItemProdutoOrdem: Integer;
  xLancouItem: Boolean; //Controle para verificar se o item foi lançado
begin
  inherited;
  xLancouItem := False;
  //Valida se foi encontrado algum produto
  if LProduto.Caption = '' then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Selecione um Produto antes de Inserir.', '', 1, 1, False, 'a');
    EDCodFab.SetFocus;
    Exit;
  end;

  //Valida quanto a quantidade
  if EDQuantidade.ValueNumeric <= 0 then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'O Produto não pode ser inserido a lista com quantidade inferior a 1 (um).', '', 1, 1, False, 'a');
    EDQuantidade.SetFocus;
    Exit;
  end;

  //Valida quanto ao valor unitario do produto
  if EDValUnit.ValueNumeric <= 0 then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'O Produto não pode ser inserido a lista com o Valor Unitário igual ou inferior a 0 (zero).', '', 1, 1, False, 'a');
    EDValUnit.SetFocus;
    Exit;
  end;

  //Valida quanto ao valor total do produto
  if EDTotal.ValueNumeric <= 0 then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o Valor Total igual ou inferior a 0 (zero).', '', 1, 1, False, 'a');
    EDTotal.SetFocus;
    Exit;
  end;
  //Valida quanto a CST
  if DMESTOQUE.TCST.FieldByName('VENDA').AsString <> '1' then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'O produto selecionado possui um C.S.T que não esta marcado para venda, verifique o seu produto (código de situação tributária).', '', 1, 1, False, 'a');
    Exit;
  end;

  if (DMMACS.TLoja.FieldByName('controlprodlista').AsString = '1') or (DMMACS.TLoja.FieldByName('controlprodlista').AsString = null) then
  begin
    //VERIFICA SE JÁ EXISTE ALGUM PRODUTO IGUAL AO CORRENTE INSERIDO A LISTA
    //SE ENCONTRAR PEDIR SE O USUÁRIO DESEJA ALTERAR O LANÇAMENTO.
    DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;
    DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
    DMESTOQUE.TSlave.SQL.Add('itprodord.desconto, itprodord.data, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, ');
    DMESTOQUE.TSlave.sql.Add(' subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS PRIMCOD, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL2').AsString + ' AS SEGCOD ');
    DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
    DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
    DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
    DMESTOQUE.TSlave.SQL.Add('Where (itprodord.cod_ordem = :CODORDEM) AND (itprodord.cod_estoque=:CODESTOQUE) ');
    DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
    DMESTOQUE.TSlave.ParamByName('CODESTOQUE').AsString := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString;
    DMESTOQUE.TSlave.Open;
    if not DMESTOQUE.TSlave.IsEmpty then
    begin
      if Mensagem('A T E N Ç Ã O !', 'O sistema encontrou o mesmo produto já lançado a lista. com ' + DMESTOQUE.TSlave.FieldByName('QTD').AsString + ' qtdes.' + #13 + 'Deseja alterar este produto já lançado?', '', 2, 3, False, 'c') = 2 then
      begin
        //o usuario decidiu alterar o lançamento anterior este é cancelado e o outro é excluido da lista
        xqnt := DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency + EDQuantidade.ValueNumeric;
        RemoverProduto;
        FiltraSlave;
        //Chama função para calcular descontos
        EfetuaDesconto('GERAL', 'PERCENTO');
        EDQuantidade.ValueNumeric := xqnt;
        CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
        EDTotal.ValueNumeric := AlxCalculo;
        EDQuantidade.SetFocus;
        exit;
      end
    end;
  end;

  //Verifica se o vlr unitário esta dentro da margem de segurança
  if ((EDTotal.ValueNumeric / EDQuantidade.ValueNumeric) < DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency) then
  begin
    if Mensagem('A T E N Ç Ã O !', 'O Produto está com o Valor abaixo da margem de segurança. Deseja continuar?', '', 2, 3, False, 'c') = 2 then
    begin
      // parametro para passar na verificação do usuario que tem margem de segurança disponivel
      FMenu.TIPOREL := 'VERIFICMARGEM';
      if ControlAccess('MARGEMSEG', '') = False then
      begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
        if Mensagem('A T E N Ç Ã O !', 'Usuário sem permissão.' + #13 + 'Deseja solicitar a senha de um administrador?', '', 2, 3, False, 'c') = 2 then
        begin
          AbrirForm(TFSENHA, FSENHA, 0);
          //repassa resultado da tela de autenticação de senha para as variáveis de controle
          if XAlxResult = True then
            XLIBMARGEMSEG := True
          else
            XLIBMARGEMSEG := False;
        end
        else
        begin
          XLIBMARGEMSEG := False;
        end;
      end
      else
      begin
        XLIBMARGEMSEG := True;
      end;
    end
    else
    begin
      XLIBMARGEMSEG := False;
      Exit;
    end;
  end
  else
  begin
    XLIBMARGEMSEG := True;
  end;
  // limpando a variavel utilizada como paramtro para verificar se o usuario tem permissao para vender itens abaixo da margem de segurança
  FMenu.TIPOREL := '';

  //Verifica se o desconto dado no produto é superior ao permitido
  if DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency = 0 then
  begin //Se não ha restrições de desconto do produto em empresa procura em produto
    if (EDDesc.ValueNumeric > DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency) then
    begin
      if Mensagem('A T E N Ç Ã O !', 'O Desconto concedido é maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c') = 2 then
      begin
        if ControlAccess('DESCPMAIOR', '') = False then
        begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
          if Mensagem('A T E N Ç Ã O !', 'Usuário sem permissão.' + #13 + 'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c') = 2 then
          begin
            AbrirForm(TFSENHA, FSENHA, 0);
            //repassa resultado da tela de autenticação de senha para as variáveis de controle
            if XAlxResult = True then
              XLIBDESCPROD := True
            else
              XLIBDESCPROD := False;
          end
          else
          begin
            XLIBDESCPROD := False;
          end;
        end
        else
        begin
          XLIBDESCPROD := True;
        end;
      end;
    end
    else
    begin
      XLIBDESCPROD := True;
    end;
  end
  else
  begin
    if (EDDesc.ValueNumeric > DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency) then
    begin
      if Mensagem('A T E N Ç Ã O !', 'O Desconto concedido é maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c') = 2 then
      begin
        if ControlAccess('DESCPMAIOR', '') = False then
        begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
          if Mensagem('A T E N Ç Ã O !', 'Usuário sem permissão.' + #13 + 'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c') = 2 then
          begin
            AbrirForm(TFSENHA, FSENHA, 0);
            //repassa resultado da tela de autenticação de senha para as variáveis de controle
            if XAlxResult = True then
              XLIBDESCPROD := True
            else
              XLIBDESCPROD := False;
          end
          else
          begin
            XLIBDESCPROD := False;
          end;
        end
        else
        begin
          XLIBDESCPROD := True;
        end;
      end;
    end
    else
    begin
      XLIBDESCPROD := True;
    end;
  end;
  //Verifica se a Margem de Seguranca do produto foi obedecida
  if XLIBMARGEMSEG = False then
  begin
    if ControlAccess('MARGEMSEG', '') = False then
      Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para vender este produto abaixo da margem de segurança!', '', 1, 1, False, 'a');
    EDValUnit.SetFocus;
    EXIT;
  end;
  //Verifica se o desconto do produto foi liberado
  if XLIBDESCPROD = False then
  begin
    if ControlAccess('DESCPMAIOR', '') = False then
      Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para vender este produto com tal desconto!', '', 1, 1, False, 'a');
    EDDesc.SetFocus;
    EXIT;
  end;

  //Valida quanto ao estoque físico (verifca se ha estoque suficiente
  if DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString = '1' then
  begin //se o estoque deve ser atualizado no pedido executa procedimento
    if DMMacs.TLoja.FieldByName('VENDESTNEG').AsString = '0' then
    begin
      if LEstoque.Caption <> '' then
      begin
        if EDQuantidade.ValueNumeric > StrToFloat(TiraPonto(LEstoque.caption)) then
        begin //o estoque que esta sendo negociado é maior que o estoque físico e segundo configuraçãoes isto não é permitido
          Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
          EDQuantidade.SetFocus;
          FiltraSlave;
          //Chama função para calcular descontos
          EfetuaDesconto('GERAL', 'PERCENTO');
          Exit;
        end;
      end
      else
      begin
        Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
        EDQuantidade.SetFocus;
        FiltraSlave;
        //Chama função para calcular descontos
        EfetuaDesconto('GERAL', 'PERCENTO');
        Exit;
      end;
    end;
  end;
  try
    // seleciona todos os dados de subproduto que tenha o mesmo cod_subprod que a tabela estoque
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('select estoque.cod_estoque, subproduto.cod_cst, estoque.cod_subprod, subproduto.cod_subproduto, subproduto.quantgarantia, subproduto.tipogarantia');
    DMServ.TAlx1.SQL.Add('from estoque left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
    DMServ.TAlx1.SQL.Add('where estoque.cod_estoque = :codigo');
    DMServ.TAlx1.ParamByName('codigo').AsInteger := DMEstoque.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
    DMServ.TAlx1.Open;

    // verifica se no produto foi lancado algum tipo de garantia. O tipo de garantia nao pode ser em horas                          ** função para remover os espaços **
    if (DMServ.TAlx1.FieldByname('quantgarantia').AsString <> '') and (DMServ.TAlx1.FieldByname('tipogarantia').AsString <> '') and (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString, ' ', '') <> 'Hs') then
    begin
      // função para retornar a data de termino da garantia
      XDtGarantia := DateToStr(Calcula_Garantia(DMServ.TAlx1.FieldByname('quantgarantia').AsString, DMServ.TAlx1.FieldByname('tipogarantia').AsString));
    end;
    // verifica se no produto foi lancado algum tipo de garantia. O tipo de garantia deve ser em horas
    if (DMServ.TAlx1.FieldByname('quantgarantia').AsString <> '') and (DMServ.TAlx1.FieldByname('tipogarantia').AsString <> '') and ((SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString, ' ', '') = 'Hs') or (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString, ' ', '') = 'Km')) then
    begin
      // função para retornar a data de termino da garantia
      XDtGarantia := '01/01/1900';
    end;
    if (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString, ' ', '') = 'Km') then
    begin
      // SELECIONA TODOS OS DADOS DE EQUIPAMENTO COM O MESMO CODIGO
      FiltraTabela(DMESTOQUE.Alx, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(XCOD_EQUIPAMENTO), '');

      // armazena o KM final do equipamento que sera o limite de sua garantia
      XQtdGarantia := DMESTOQUE.Alx.FieldByname('KMATUAL').AsInteger + DMServ.TAlx1.FieldByname('quantgarantia').AsInteger;
    end;
  except
    XQtdGarantia := 0;
    XDtGarantia := '';
  end;

  //Tenta gravar as informações
  try
    //Alex: 13/03/2018- mostra ou esconde campo de multiplos vendedor
    if (DMMACS.TLoja.FieldByName('USARMULTIPLOSVENDEDORESOS').AsString = '1') then
    begin
      if sgMultiplosVendedoresProduto.Cells[0, 0] = '' then
      begin
        MessageDlg('Antes de inserir o item, informe o vendedor para receber a comissão.', mtWarning, [mbOK], 0);
        btnInserirMultiplosVendedores.SetFocus;
        Exit;
      end;
    end;
    //Alex - 16/03/2018: Buscamos o código de ITPRODORD para retornar ao inserir multiplos vendedores
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('  select gen_id(GEN_ITPRODORD_ID, 0) as codigo from rdb$database ');
    MDO.QConsulta.Open;
    xCodigoItemProdutoOrdem := MDO.QConsulta.FieldByName('codigo').AsInteger + 1;

    //Inserir Produto a lista do pedido
    DMSERV.TPOrd.Close;
    DMSERV.TPOrd.SQL.Clear;
    DMSERV.TPOrd.SQL.Add('insert into itprodord');
    DMSERV.TPOrd.SQL.Add('(COD_ESTOQUE, COD_ORDEM, QTD, VLRUNIT, DESCONTO, TOTAL,');
    DMSERV.TPOrd.SQL.Add('DATA, COD_FUNCIONARIO, COD_CST, VALCUSTO, COEFDIV, VALCOMP, LUCMOE, LUCPER, VALREP,');
    DMSERV.TPOrd.SQL.Add('NUMREQ, QTDRET, COMISSAO, VLRVENDBD, LUCREL, OPERACAO, ALIQICMS, BASEICMS,');
    DMSERV.TPOrd.SQL.Add('VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI, REDUCBASEICMS, VLRICMSSUBS,DATA_GARANTIA,KMGARANTIA)');
    DMSERV.TPOrd.SQL.Add('values');
    DMSERV.TPOrd.SQL.Add('(:COD_ESTOQUE, :COD_ORDEM, :QTD, :VLRUNIT, :DESCONTO,');
    DMSERV.TPOrd.SQL.Add(':TOTAL, :DATA, :COD_FUNCIONARIO, :COD_CST, :VALCUSTO, :COEFDIV, :VALCOMP, :LUCMOE,');
    DMSERV.TPOrd.SQL.Add(':LUCPER, :VALREP, :NUMREQ, :QTDRET, :COMISSAO, :VLRVENDBD, :LUCREL,');
    DMSERV.TPOrd.SQL.Add(':OPERACAO, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRIPI, :ALIQIPI,');
    DMSERV.TPOrd.SQL.Add(':REDUCBASEICMS, :VLRICMSSUBS, :DATA_GARANTIA, :KMGARANTIA)');

    CalcLuc(EDTotal.ValueNumeric, EDDesc.ValueNumeric, EDQuantidade.ValueNumeric);

    DMSERV.TPOrd.ParamByName('ALIQICMS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
    DMSERV.TPOrd.ParamByName('ALIQIPI').AsCurrency := 0;
    DMSERV.TPOrd.ParamByName('BASEICMS').AsCurrency := EDTotal.ValueNumeric;
    DMSERV.TPOrd.ParamByName('BASEICMSSUBS').AsCurrency := 0;
    DMSERV.TPOrd.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
    DMSERV.TPOrd.ParamByName('COD_FUNCIONARIO').AsInteger := XCOD_VENDEDOR;
    DMSERV.TPOrd.ParamByName('COD_CST').AsInteger := DMServ.TAlx1.FieldByName('COD_CST').AsInteger;
    DMSERV.TPOrd.ParamByName('COD_ORDEM').AsInteger := XCOD_ORDEM;
    DMSERV.TPOrd.ParamByName('COEFDIV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;

    if DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency <> 0 then
    begin
      DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);
      if (EDTotal.ValueNumeric <> 0) then
      begin
        DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := EDTotal.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);
        DMSERV.TPOrd.ParamByName('LUCPER').AsCurrency := ((EDTotal.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) * 100) / EDTotal.ValueNumeric;
      end;

    end
    else
    begin
      DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := 0;
    end;

    DMSERV.TPOrd.ParamByName('DATA').AsDateTime := Date();
    DMSERV.TPOrd.ParamByName('DESCONTO').AsCurrency := EDDesc.ValueNumeric;

    if XDtGarantia <> '' then
      DMSERV.TPOrd.ParamByName('DATA_GARANTIA').AsString := XDtGarantia;

    if XQtdGarantia <> 0 then
      DMSERV.TPOrd.ParamByName('KMGARANTIA').AsInteger := XQtdGarantia;
    DMSERV.TPOrd.ParamByName('OPERACAO').AsString := 'VND';
    DMSERV.TPOrd.ParamByName('QTD').AsCurrency := EDQuantidade.ValueNumeric;
    DMSERV.TPOrd.ParamByName('QTDRET').AsCurrency := EDQuantidade.ValueNumeric;
    DMSERV.TPOrd.ParamByName('REDUCBASEICMS').AsCurrency := 0;
    DMSERV.TPOrd.ParamByName('TOTAL').AsCurrency := EDTotal.ValueNumeric;
    //Angelo - 27-08/2015 - Solicitação 405
    if (EdVlrCompra.ValueNumeric > 0) then
      DMSERV.TPOrd.ParamByName('VALCOMP').AsCurrency := EdVlrCompra.ValueNumeric * EDQuantidade.ValueNumeric
    else
      DMSERV.TPOrd.ParamByName('VALCOMP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency * EDQuantidade.ValueNumeric;
    DMSERV.TPOrd.ParamByName('VALCUSTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
    DMSERV.TPOrd.ParamByName('VALREP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
    DMSERV.TPOrd.ParamByName('VLRICMS').AsCurrency := (EDTotal.ValueNumeric * DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency) / 100;
    DMSERV.TPOrd.ParamByName('VLRICMSSUBS').AsCurrency := 0;
    DMSERV.TPOrd.ParamByName('VLRIPI').AsCurrency := 0;
    DMSERV.TPOrd.ParamByName('VLRUNIT').AsCurrency := EDValUnit.ValueNumeric;
    DMSERV.TPOrd.ParamByName('COMISSAO').AsCurrency := XALIQCOMISS;
    try
      DMSERV.TPOrd.ExecSQL;
      DMServ.IBT.CommitRetaining;
      //Busca os custos mais antigos do estoque em questão para dar saida
      //quando o estoque não for suficiente, busca do proximo
      if AplicaSaidaCustoEstoque(XCOD_ESTOQUE, xCodigoItemProdutoOrdem, 'ORDEM', EDQuantidade.ValueNumeric) = False then
      begin
        DMServ.IBT.RollbackRetaining;
        MDO.Transac.RollbackRetaining;
        Exit;
      end;
      MDO.Transac.CommitRetaining;

      xLancouItem := true;
      try
        //Atualiza Estoque
        DMEstoque.TEstoque.edit;
        DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency := DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency - EDQuantidade.ValueNumeric;
        DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
        DMESTOQUE.TEstoque.Post;
        DMESTOQUE.TransacEstoque.CommitRetaining;
      except
        DMESTOQUE.TransacEstoque.RollbackRetaining;
        MessageDlg('O ESTOQUE NÃO FOI ATUALIZADO', mtWarning, [mbOK], 0);
      end;
    except
      DMServ.IBT.RollbackRetaining;
      MessageDlg('O ITEM NÃO FOI INSERIDO A LISTA', mtWarning, [mbOK], 0);
    end;
  except
    MessageDlg('OCORRERAM PROBLEMAS AO INSERIR O ITEM. VERIFIQUE!', mtWarning, [mbOK], 0);
  end;
  //limpa labels de seleção
  LimpaCamposProd;
  //Filtra slaves e calcula total
  FiltraSlave;
  //Chama função para calcular descontos
  EfetuaDesconto('GERAL', 'PERCENTO');

  //Edmar - 24/03/2015 - Verifica qual é o tipo de pesquisa que está ativo
  if pPesqBarraInterno.Visible then
    EDCodBarra.SetFocus
  else
    EDCodFab.SetFocus;

  if (xLancouItem = True) and (DMMACS.TLoja.FieldByName('USARMULTIPLOSVENDEDORESOS').AsString = '1') then
  begin
    if InsereMultiploVendedorBD(xCodigoItemProdutoOrdem, 'PROD') = false then
    begin
      MessageDlg('O Sistema não conseguiu lançar as comissões dos vendedores, e esta cancelando o lançamento da venda,', mtWarning, [mbOK], 0);
      LimpaGradeMultiplosVendedores('PROD');
      RemoverProduto;
      //VOLTA VALORES AS LABELS
      EscreveLabelsPROD;
      EDQuantidade.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTD').Value;
      EDValUnit.ValueNumeric := DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency;
      EDDesc.ValueNumeric := DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency;
      EDTotal.ValueNumeric := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
      //Filtra registros escrsavos
      FiltraSlave;
      //Chama função para calcular descontos
      EfetuaDesconto('GERAL', 'PERCENTO');
    end
    else
    begin
      LimpaGradeMultiplosVendedores('PROD');
    end;
  end;
end;

//FILTRA OS REGISTROS DE PRODUTOS E SERVIÇOS PERTENCENTES A ORDEM

procedure TFOrdemMec.FiltraSlave;
var
  XDESCMOEDA: real;
begin
  XVLRTVISTA := 0;
  XVLRUNITVISTA := 0;
  FrmCliente.Repaint;
  FrmEquipe.Repaint;
  FBEquipPlaca.Repaint;
  FrmFormPag1.Repaint;
  //TRABALHA COM PRODUTOS DA ORDEM
   //CALCULA TOTAL
  DMESTOQUE.TSlave.Close;
  DMESTOQUE.TSlave.SQL.Clear;
  DMESTOQUE.TSlave.SQL.Add('Select Sum(ITPRODORD.total) as TOTAL From ITPRODORD');
  DMESTOQUE.TSlave.SQL.Add('Where ITPRODORD.COD_ORDEM = :CODORDEM ');
  DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
  DMESTOQUE.TSlave.Open;
  EdTotalPROD.ValueNumeric := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
  XVLRTPROD := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;

  //INSERE COMANDOS PARA FILTRAR
  DMESTOQUE.TSlave.Close;
  DMESTOQUE.TSlave.SQL.Clear;
  DMESTOQUE.TSlave.SQL.Add(' Select itprodord.cod_itprodord, unidade.sigla_unid as UNIDADE, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
  DMESTOQUE.TSlave.SQL.Add(' itprodord.desconto, itprodord.data, itprodord.cod_funcionario, itprodord.vlrunit, subproduto.contrint, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, itprodord.operacao,');
  DMESTOQUE.TSlave.SQL.Add(' itprodord.baseicms, itprodord.vlricms, itprodord.aliqicms, cst.cod_sit_trib, itprodord.descnf as DESCONTONF, subproduto.ncm, itprodord.VALCOMP, ');
  DMESTOQUE.TSlave.sql.Add(' subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS PRIMCOD, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL2').AsString + ' AS SEGCOD ');
  DMESTOQUE.TSlave.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
  DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
  DMESTOQUE.TSlave.SQL.Add(' left join cst ON itprodord.cod_cst = cst.cod_cst ');
  DMESTOQUE.TSlave.SQL.Add(' Left Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
  DMESTOQUE.TSlave.SQL.Add(' Where itprodord.cod_ordem = :CODORDEM ');
  DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
  DMESTOQUE.TSlave.SQL.Add('order by itprodord.cod_itprodord desc');
  DMESTOQUE.TSlave.Open;

  //TRABALHANDO COM DESPESAS
  DMESTOQUE.Alx2.Close;
  DMESTOQUE.Alx2.SQL.Clear;
  DMESTOQUE.Alx2.SQL.Add('select Sum(despadic.vlrtotfin) AS VLRTOTFIN From despadic Where (despadic.gerador=' + #39 + 'ORDEM' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
  DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsInteger := XCOD_ORDEM;
  DMESTOQUE.Alx2.Open;
  EdTotalserv.ValueNumeric := DMESTOQUE.Alx2.FieldByName('VLRTOTFIN').AsCurrency;
  XVLRTSERV := DMESTOQUE.Alx2.FieldByName('VLRTOTFIN').AsCurrency;

  DMESTOQUE.Alx3.Close;
  DMESTOQUE.Alx3.SQL.Clear;
  DMESTOQUE.Alx3.SQL.Add(' select * from despadic');
  DMESTOQUE.Alx3.SQL.Add(' left join equipe on despadic.cod_equipe = equipe.cod_equipe');
  DMESTOQUE.Alx3.SQL.Add(' left join vwsubservico on despadic.cod_servico = vwsubservico.cod_subservico ');
  DMESTOQUE.Alx3.SQL.Add(' where (despadic.cod_gerador= :cod) and (despadic.gerador=' + #39 + 'ORDEM' + #39 + ')');
  DMESTOQUE.Alx3.SQL.Add(' order by despadic.cod_despadic desc');
  DMESTOQUE.Alx3.ParamByName('cod').AsInteger := XCOD_ORDEM;
  DMESTOQUE.Alx3.Open;

  //FILTRA DESPESAS
  DMESTOQUE.TDesp.Close;
  DMESTOQUE.TDesp.SQL.Clear;
  DMESTOQUE.TDesp.SQL.Add('select despadic.*, equipe.cod_equipe, equipe.descricao ');
  DMESTOQUE.TDesp.SQL.Add('From despadic ');
  DMESTOQUE.TDesp.SQL.Add('LEFT JOIN EQUIPE ON DESPADIC.COD_EQUIPE = EQUIPE.COD_EQUIPE');
  DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador=' + #39 + 'ORDEM' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
  DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger := XCOD_ORDEM;
  DMESTOQUE.TDesp.SQL.Add('order by despadic.cod_despadic desc');
  DMESTOQUE.TDesp.Open;

  XCONTROLECONSULTA := False;
  //ATRIBUI TOTAL VENDIDO SEM DESCONTO À VARIAVEL
  XVLRTOTAL := XVLRTPROD + XVLRTSERV + EdTotDesp.ValueNumeric;

  //Edmar - 11/12/2015 - efetua o desconto após popular os valores de produto e serviço
  EdDescTServExit(nil);
  EdDescTProdExit(nil);
end;

// função para calcular data de garantia

function TFOrdemMec.Calcula_Garantia(Qtde, Tipo: string): TDateTime;
begin
  // se tipo da garantia informado no cadastro do produto for em Dias

  // função para remover os espaços
  Tipo := SubstituiCaracter(Tipo, ' ', '');

  Result := Date();

  if Tipo = 'Dias' then
  begin
    Result := IncDay(Date, StrToInt(Qtde));
  end;
  if Tipo = 'Meses' then
  begin
    Result := IncMonth(Date, StrToInt(Qtde));
  end;
  if Tipo = 'Ano' then
  begin
    Result := IncYear(Date, StrToInt(Qtde));
  end;

end;

// CLICK REMOVER PRODUTO

procedure TFOrdemMec.BtnDeleteProdClick(Sender: TObject);
begin
  inherited;
  if DMESTOQUE.TSlave.RecordCount <> 0 then
  begin //caso a tabela esteja vasia não pode apagar
    if DMServ.TOrd.FieldByName('EXPORTADO').AsString <> '#' then
    begin
      DMServ.TAlx1.Close;
      DMServ.TAlx1.SQL.Clear;
      DMServ.TAlx1.SQL.Add('select * from estoque');
      DMServ.TAlx1.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
      DMServ.TAlx1.SQL.Add('where estoque.cod_estoque = :codigo');
      DMServ.TAlx1.ParamByName('codigo').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
      DMServ.TAlx1.Open;

      // verifica o tamanho do produto para colocar abreviação se necessario
      if Length(DMServ.TAlx1.FieldByname('descricao').AsString) > 20 then
      begin
        // se clicar em não, o produto naum sera apagado
        if Mensagem('   A T E N Ç Ã O   ', 'Deseja realmente apagar o produto ' + Copy(DMServ.TAlx1.FieldByname('descricao').AsString, 0, 20) + '. ?', '', 2, 3, false, 'I') = 3 then
          Exit;
      end
      else
      begin
        // se clicar em não, o produto naum sera apagado
        if Mensagem('   A T E N Ç Ã O   ', 'Deseja realmente apagar o produto ' + DMServ.TAlx1.FieldByname('descricao').AsString + ' ?', '', 2, 3, false, 'I') = 3 then
          Exit;
      end;
      //Alex: 13/03/2018- mostra ou esconde campo de multiplos vendedor
      if (DMMACS.TLoja.FieldByName('USARMULTIPLOSVENDEDORESOS').AsString = '1') then
      begin
        //Alex: 04/04/2018 - Se o usuário logado não possuir permissão para editar o vendedor, bloquearemos o mesmo de remover itens e editar vendedor
        if ControlAccess('EDITAVENDEDOROS', '') = False then
        begin
          if MessageDlg('Usuário sem permissão para remover o item da lista.' + #13 + #10 + 'Solicitar permissão de administrador?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
          begin
            //Solicita senha de administrador
            AbrirForm(TFSENHA, FSENHA, 0);
            if XAlxResult = False then
            begin
              //para senhas erradas não liberamos acesso
              MessageDlg('Acesso negado', mtWarning, [mbOK], 0);
              Exit;
            end
            else
            begin
              //Usuario com permissão para remoção de itens
              LimpaGradeMultiplosVendedores('PROD');
              InsereMultiploVendedor(XCOD_VENDEDOR, 'PROD');
            end;
          end
          else
          begin
            //abandona comandos
            Exit;
          end;
        end
        else
        begin
          //Usuario com permissão para remoção de itens
          LimpaGradeMultiplosVendedores('PROD');
          InsereMultiploVendedor(XCOD_VENDEDOR, 'PROD');
        end;
      end;

      RemoverProduto;

      //VOLTA VALORES AS LABELS
      EscreveLabelsPROD;
      EDQuantidade.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTD').Value;
      EDValUnit.ValueNumeric := DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency;
      EDDesc.ValueNumeric := DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency;
      EDTotal.ValueNumeric := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
      //Filtra registros escrsavos
      FiltraSlave;
      //Chama função para calcular descontos
      EfetuaDesconto('GERAL', 'PERCENTO');
      //Panel2.OnEnter(Sender);
    end
    else
    begin
      if Mensagem('   A T E N Ç Ã O   ', 'Deseja remover TODOS os PRODUTOS da lista?', '', 2, 3, false, 'I') = 3 then
        Exit;

      DMESTOQUE.TSlave.First;

      while not DMESTOQUE.TSlave.Eof do
      begin
        RemoverProduto;
        FiltraSlave;
        //Chama função para calcular descontos
        EfetuaDesconto('GERAL', 'PERCENTO');
        DMESTOQUE.TSlave.First;
      end;

      LimpaCamposProd;
    end;
    if EdVlrCompra.Visible = True then
      EdVlrCompra.SetFocus
    else
      EDQuantidade.SetFocus;
  end;
  DMESTOQUE.WSimilar.Close;
  DMESTOQUE.WSimilar.SQL.Clear;
  DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR ');
  DMESTOQUE.WSimilar.Open;
end;
//click popup remover tudo

procedure TFOrdemMec.RemoverTudo1Click(Sender: TObject);
begin
  inherited;

  if Mensagem('   A T E N Ç Ã O   ', 'Deseja remover TODOS os produtos da lista?', '', 2, 3, false, 'I') = 3 then
    Exit;

  DMESTOQUE.TSlave.First;

  while not DMESTOQUE.TSlave.Eof do
  begin
    RemoverProduto;
    FiltraSlave;
    //Chama função para calcular descontos
    EfetuaDesconto('GERAL', 'PERCENTO');
    DMESTOQUE.TSlave.First;
  end;

  LimpaCamposProd;
end;

//remover produto selecionado

procedure TFOrdemMec.RemoverProduto;
var
  XAPAGA: Integer; //controla se é uma ordem exportada para que sejam excluídos todos os itens da ordem de serviço da mercescan
begin
  inherited;
  XAPAGA := 0;
  if DMESTOQUE.TSlave.RecordCount <> 0 then
  begin //caso a tabela esteja vazia não pode apagar

    // se a atividade for equipe eh feita uma outra verificação
    if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE' then
    begin
      DMServ.TAlx1.Close;
      DMServ.TAlx1.SQL.Clear;
      DMServ.TAlx1.SQL.Add('select * from estoque');
      DMServ.TAlx1.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
      DMServ.TAlx1.SQL.Add('where estoque.cod_estoque = :codigo');
      DMServ.TAlx1.ParamByName('codigo').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
      DMServ.TAlx1.Open;

    end;

    if XAPAGA = 0 then
    begin
      //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
      FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
      FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
      FiltraTabela(DMSERV.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsString, '');
      //Atualiza Estoque
      DMEstoque.TEstoque.edit;
      DMEstoque.TEstoque.FieldByName('ESTFISICO').Value := DMEstoque.TEstoque.FieldByName('ESTFISICO').Value + DMServ.TPOrd.FieldByName('QTD').Value;
      DMEstoque.TEstoque.FieldByName('ESTRESERV').Value := DMEstoque.TEstoque.FieldByName('ESTRESERV').Value - DMServ.TPOrd.FieldByName('QTD').Value;
      DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
      DMEstoque.TEstoque.Post;
      //Atualiza saldo de estoque
      //prepara estoque em pedido de compra
      try
        DMEstoque.TEstoque.Edit;
        DMEstoque.TEstoque.FieldByName('ESTSALDO').Value := (DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency - DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency) + DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency;
        DMEstoque.TEstoque.Post;
      except
      end;

      if DesfazSaidaCustoEstoque(DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsInteger, 'ORDEM') = False then
      begin
        MessageDlg('NÃO FOI DESFEITA A SAÍDA DO CUSTO', mtWarning, [mbOK], 0);
        DMESTOQUE.TransacEstoque.RollbackRetaining;
        MDO.Transac.RollbackRetaining;
        Exit;
      end;

      DMESTOQUE.TransacEstoque.CommitRetaining;
      MDO.Transac.CommitRetaining;

      // essa variavel eh soh para fazer verificação na função "calcula comissao" e nao precisar usar o mesmo filtratabela igual ao debaixo
      XCampo := '1';
      // filtra estoque para buscar os valores das porcentagens das comissoes
      FiltraTabela(DMESTOQUE.Alx4, 'ESTOQUE', 'COD_ESTOQUE', DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsString, '');
      XCOD_ULTPROD := DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsInteger;

      //APAGA ITEM
      DMSERV.TPOrd.Delete;
      if DMSERV.TPOrd.UpdatesPending then
        DMSERV.TPOrd.ApplyUpdates;

      //CONFIRMA TRANZAÇÃO
      try
        DMServ.IBT.CommitRetaining;
        RemoveMultiploVendedorBD(DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsInteger, 'PROD');
      except
        DMServ.IBT.RollbackRetaining;
      end;

      //VOLTA VALORES AS LABELS
      EscreveLabelsPROD;
      EDQuantidade.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTD').Value;
      EDValUnit.ValueNumeric := DMESTOQUE.TSlave.FieldByName('VLRUNIT').Value;
      EDDesc.ValueNumeric := DMESTOQUE.TSlave.FieldByName('DESCONTO').Value;
      EDTotal.ValueNumeric := DMESTOQUE.TSlave.FieldByName('TOTAL').Value;
      //Filtra registros escrsavos
      //FiltraSlave;
      //Panel2.OnEnter(Sender);
    end
    else
    begin

      FiltraTabela(DMServ.TPOrd, 'ITPRODORD', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
      DMServ.TPOrd.First;

      while not DMServ.TPOrd.Eof do
      begin
        //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
        FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsString, '');
        //  FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsString, '');
         // FiltraTabela(DMSERV.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsString, '');
          //Atualiza Estoque
        DMEstoque.TEstoque.edit;
        DMEstoque.TEstoque.FieldByName('ESTFISICO').Value := DMEstoque.TEstoque.FieldByName('ESTFISICO').Value + DMServ.TPOrd.FieldByName('QTD').Value;
        DMEstoque.TEstoque.FieldByName('ESTRESERV').Value := DMEstoque.TEstoque.FieldByName('ESTRESERV').Value - DMServ.TPOrd.FieldByName('QTD').Value;
        DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
        DMEstoque.TEstoque.Post;
        //Atualiza saldo de estoque
        //prepara estoque em pedido de compra
        try
          DMEstoque.TEstoque.Edit;
          DMEstoque.TEstoque.FieldByName('ESTSALDO').Value := (DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency - DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency) + DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency;
          DMEstoque.TEstoque.Post;
        except
        end;
        DMESTOQUE.TransacEstoque.CommitRetaining;

        // essa variavel eh soh para fazer verificação na função "calcula comissao" e nao precisar usar o mesmo filtratabela igual ao debaixo
        XCampo := '1';
        // filtra estoque para buscar os valores das porcentagens das comissoes
     //   FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsString,'');
    //    XCOD_ULTPROD := DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsInteger;

        //APAGA ITEM
        DMSERV.TPOrd.Delete;
        DMSERV.TPOrd.ApplyUpdates;
        DMServ.IBT.CommitRetaining;

        //VOLTA VALORES AS LABELS
        EscreveLabelsPROD;
        EDQuantidade.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTD').Value;
        EDValUnit.ValueNumeric := DMESTOQUE.TSlave.FieldByName('VLRUNIT').Value;
        EDDesc.ValueNumeric := DMESTOQUE.TSlave.FieldByName('DESCONTO').Value;
        EDTotal.ValueNumeric := DMESTOQUE.TSlave.FieldByName('TOTAL').Value;
        //Filtra registros escrsavos
        //FiltraSlave;
        //Panel2.OnEnter(Sender);
       // DMServ.TPOrd.Next;
      end;
    end;
  end;
end;

//key press descricao serviço

procedure TFOrdemMec.EDesricaoServicoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    EValorServ.SetFocus;
end;
//key pres valor do serviço

procedure TFOrdemMec.EValorServKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    EQtdServ.Text := '1,00';
    EQtdServ.SetFocus;
  end;
end;
// on exit valor do serviço

procedure TFOrdemMec.EValorServExit(Sender: TObject);
begin
  inherited;
  if EQtdServ.ValueNumeric = 0 then
    //EQtdServ.Text := '1,00';
    EQtdServExit(Sender);
end;
//key pres qnt serviço

procedure TFOrdemMec.EQtdServKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    EDescServ.SetFocus;
end;
//exit desconto do serviço

procedure TFOrdemMec.EDescServExit(Sender: TObject);
begin
  inherited;
  ETotalServItem.ValueNumeric := (EValorServ.ValueNumeric * EQtdServ.ValueNumeric);
  ETotalServItem.ValueNumeric := (ETotalServItem.ValueNumeric - ((ETotalServItem.ValueNumeric / 100) * EDescServ.ValueNumeric));
end;
//press key desconto serviço

procedure TFOrdemMec.EDescServKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    ETotalServItem.ValueNumeric := (EValorServ.ValueNumeric * EQtdServ.ValueNumeric);
    ETotalServItem.ValueNumeric := (EValorServ.ValueNumeric - ((EValorServ.ValueNumeric / 100) * EDescServ.ValueNumeric));
    FrmEquipe.edcodigo.setfocus;
  end;
end;
//on exit qnt serviço

procedure TFOrdemMec.EQtdServExit(Sender: TObject);
begin
  inherited;
  ETotalServItem.ValueNumeric := (EValorServ.ValueNumeric * EQtdServ.ValueNumeric);
end;

//pesquisa codigo equipe

procedure TFOrdemMec.PesquisaCodigoEquipe(codigo: string);
begin
  // letras maiusculas
  codigo := Trim(UpperCase(codigo));

  if codigo <> '' then
  begin
    // seleciona equipe que tiver o mesmo codigo
    DMServ.Alx.Close;
    DMServ.Alx.SQL.Clear;
    DMServ.Alx.SQL.Add(' SELECT EQUIPE.* FROM EQUIPE ');
    DMServ.Alx.SQL.Add(' LEFT JOIN FUNCIONARIO ON EQUIPE.COD_RESPONSAVEL = FUNCIONARIO.COD_FUNC ');
    DMServ.Alx.SQL.Add(' WHERE (EQUIPE.COD_EQUIPE = :CODIGO) AND ((FUNCIONARIO.ATIVO = 0) OR (FUNCIONARIO.ATIVO IS NULL)) ');
    DMServ.Alx.ParamByName('codigo').AsString := codigo;
    DMServ.Alx.Open;

    if not DMServ.Alx.IsEmpty then
    begin
      FrmEquipe.EdDescricao.Text := DMServ.Alx.FieldByname('descricao').AsString;
      RetornaComissao(DMServ.Alx.fieldbyname('cod_responsavel').AsInteger);
      LimpaGradeMultiplosVendedores('SERV');
      InsereMultiploVendedor(XCOD_VENDEDOR, 'SERV');
      BtnInserir.SetFocus;
    end
    else
    begin
      FrmEquipe.EdDescricao.Text := '';
      FrmEquipe.EDCodigo.SelectAll;
      //FrmEquipe.EDCodigo.SetFocus;
    end;
    FrmCliente.Repaint;
    FrmEquipe.Repaint;
    FBEquipPlaca.Repaint;
    FrmFormPag1.Repaint;
  end;
end;

// pres key codigo da equipe

procedure TFOrdemMec.FrmEquipeEDCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  FrmEquipe.EDCodigoKeyPress(Sender, Key);

  if not (key in ['0'..'9', #8, #13]) then
    Key := #0;

  if Key = #13 then
  begin
    if FrmEquipe.EDCodigo.Text <> '' then
    begin
      PesquisaCodigoEquipe(FrmEquipe.EDCodigo.Text);
    end;
  end;
end;

//on exit codigo equipe

procedure TFOrdemMec.FrmEquipeEDCodigoExit(Sender: TObject);
begin
  inherited;
  if FrmEquipe.EDCodigo.Text <> '' then
  begin
    PesquisaCodigoEquipe(FrmEquipe.EDCodigo.Text);
  end
  else
  begin
    FrmEquipe.EdDescricao.Text := '';
  end;
end;
// click botao equipe

procedure TFOrdemMec.FrmEquipeBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmEquipe.BTNOPENClick(Sender);
  if AbrirForm(TFCadEquipe, FCadEquipe, 1) = 'Selected' then
  begin
    FrmEquipe.EDCodigo.Text := DMPESSOA.TALX1.fieldbyname('Cod_Equipe').AsString;
    FrmEquipe.EdDescricao.Hint := DMPESSOA.TALX1.fieldbyname('descricao').AsString;
    FrmEquipe.EdDescricao.Text := DMPESSOA.TALX1.fieldbyname('descricao').AsString;
    BtnInserir.SetFocus;
    RetornaComissao(DMPESSOA.TALX1.fieldbyname('cod_responsavel').AsInteger);
    LimpaGradeMultiplosVendedores('SERV');
    InsereMultiploVendedor(XCOD_VENDEDOR, 'SERV');
  end
  else
  begin
    FrmEquipe.EDCodigo.Text := '';
    FrmEquipe.EdDescricao.Hint := '';
    FrmEquipe.EdDescricao.Text := '';
  end;
end;
//btn inserir serviço

procedure TFOrdemMec.BtnInserirClick(Sender: TObject);
var
  xcod_despesa: Integer;
begin
  inherited;

  // eh necesario informar a descricao de uma equipe
  if EDesricaoServico.Text = '' then
  begin
    Mensagem('   A T E N Ç Ã O   ', 'É necessário informar a descrição do serviço.', '', 1, 1, false, 'I');
    EDesricaoServico.SetFocus;
    Exit;
  end;

  // se o servico nao possuir valor eh exibido uma mensagem para o
  //usuario se ele tem certeza que deseja inserir um servico sem valor
  if EValorServ.ValueNumeric = 0 then
    Mensagem('   A T E N Ç Ã O   ', 'O valor unitário do serviço é igual a ZERO! ', '', 1, 1, false, 'I');

  // eh necessario selecionar uma equipe p serviço
  if FrmEquipe.EDCodigo.Text = '' then
  begin
    Mensagem('   A T E N Ç Ã O   ', 'Selecione uma equipe', '', 1, 1, false, 'I');
    FrmEquipe.EDCodigo.SetFocus;
    Exit;
  end;

  if EQtdServ.ValueNumeric = 0 then
  begin
    Mensagem('   A T E N Ç Ã O   ', 'A quantidade do serviços é igual a ZERO! ', '', 1, 1, false, 'I');
    //ETotalServItem.SetFocus;
    //Exit;
  end;

  //Paulo 30/06/2011: Não deixa inserir um serviço com o valor zerado
  if ETotalServItem.ValueNumeric = 0 then
  begin
    Mensagem('   A T E N Ç Ã O   ', 'O valor total do serviço é igual a ZERO! ', '', 1, 1, false, 'I');
  end;

  if (DMMACS.TLoja.FieldByName('USARMULTIPLOSVENDEDORESOS').AsString = '1') then
  begin
    if sgMultiplosVendedoresServico.Cells[0, 0] = '' then
    begin
      MessageDlg('Antes de inserir o serviço, informe o vendedor para receber a comissão.', mtWarning, [mbOK], 0);
      btnAddVendedorServico.SetFocus;
      Exit;
    end;
  end;

  FiltraTabela(DMESTOQUE.TDesp, 'DESPADIC', 'COD_GERADOR', '', '(COD_GERADOR = ' + IntToStr(XCOD_ORDEM) + ') AND (GERADOR = ' + #39 + 'ORDEM' + #39 + ')');

  try
    DMServ.IBT.CommitRetaining;
    DMServ.Alx.Close;
    DMServ.Alx.SQL.Clear;
    DMServ.Alx.SQL.Add(' insert into despadic(COD_GERADOR, GERADOR, DESPESA, QTD, VLRREAL, VLRFINAL, VLRTOTFIN, DESCONTO, MARCA, ');
    DMServ.Alx.SQL.Add('                      UNIDADE, COD_EQUIPE, COD_FUNCIONARIO, CST, COMISSAO, CLASSIFICACAO, COD_SERVICO) ');
    DMServ.Alx.SQL.Add('             values(:COD_GERADOR, :GERADOR, :DESPESA, :QTD, :VLRREAL, :VLRFINAL, :VLRTOTFIN, :DESCONTO, :MARCA, ');
    DMServ.Alx.SQL.Add('             :UNIDADE, :COD_EQUIPE, :COD_FUNCIONARIO, :CST, :COMISSAO, :CLASSIFICACAO, :COD_SERVICO) ');
    DMServ.Alx.ParamByName('COD_GERADOR').AsInteger := XCOD_ORDEM;
    DMServ.Alx.ParamByName('GERADOR').AsString := 'ORDEM';
    DMServ.Alx.ParamByName('DESPESA').AsString := EDesricaoServico.Text;
    DMServ.Alx.ParamByName('QTD').AsCurrency := EQtdServ.ValueNumeric;
    DMServ.Alx.ParamByName('VLRFINAL').AsCurrency := EValorServ.ValueNumeric;
    DMServ.Alx.ParamByName('VLRTOTFIN').AsCurrency := ETotalServItem.ValueNumeric;
    DMServ.Alx.ParamByName('DESCONTO').AsCurrency := EDescServ.ValueNumeric;
    DMServ.Alx.ParamByName('COD_EQUIPE').AsString := FrmEquipe.EDCodigo.Text;
    DMServ.Alx.ParamByName('COD_FUNCIONARIO').AsInteger := XCod_usuario;
    DMServ.Alx.ParamByName('COD_SERVICO').AsInteger := XCOD_SERVICOCLASSIFICACAO;
    DMServ.Alx.ParamByName('CST').AsString := '041';
    DMServ.Alx.ParamByName('COMISSAO').AsFloat := StrToFloat(lbComissaoServ.Caption);
    //Paulo 31/10/2011: Para identificar se o serviço é de terceiros ou não
    if (cbTerceiros.Checked = true) then
      DMServ.Alx.ParamByName('UNIDADE').AsString := '1'
    else
      DMServ.Alx.ParamByName('UNIDADE').AsString := '0';
    if (edCustoTerceiros.ValueNumeric <= 0) and (pClassServico.Visible = True) and (DbServicoClassificacao.Text <> '') then
    begin
      if FiltraTabela(DMServ.TSubserv, 'subservico', 'cod_subservico', DMServ.WSubServ.FieldByName('cod_subservico').AsString, '') = True then
        DMServ.Alx.ParamByName('VLRREAL').AsCurrency := DMServ.TSubserv.FieldByName('VLRUNIT').AsCurrency
      else
        DMServ.Alx.ParamByName('VLRREAL').AsCurrency := edCustoTerceiros.ValueNumeric;
    end
    else
    begin
      DMServ.Alx.ParamByName('VLRREAL').AsCurrency := edCustoTerceiros.ValueNumeric;
    end;
    DMServ.Alx.ExecSQL;
    DMServ.IBT.CommitRetaining;

  except
    on E: Exception do
    begin
      if AnsiContainsText(E.Message, 'attempt to store duplicate value (visible to active transactions) in unique index "DESPADIC_IDX1"') then
      begin
        try
          DMServ.IBT.RollbackRetaining;
          //Jônatas 12/06/2013
          //pega o valor do gerador e armazena em XCOD
          DMMACS.TALX.Close;
          DMMACS.TALX.SQL.Clear;
          DMMACS.TALX.SQL.Add('  select gen_id(GEN_DESPADIC_ID, 0) as codigo from rdb$database ');
          DMMACS.TALX.Open;
          //Incrementa o gerador para fazer a Chave primária ser válida na inserção
          xcod_despesa := DMMACS.TALX.FieldByName('codigo').AsInteger + 100;
          DMMACS.TALX.Close;
          DMMACS.TALX.SQL.Clear;
          DMMACS.TALX.SQL.Add('SET GENERATOR GEN_DESPADIC_ID TO ' + IntToStr(xcod_despesa));
          DMMACS.TALX.ExecSQL;
          DMMACS.Transaction.CommitRetaining;
          DMServ.IBT.CommitRetaining;
          ShowMessage('Um erro foi encontrado e corrigido. Tente novamente.');
          //Jônatas 26/09/2013 - Não limpar os campos da tela, mas fazer as refiltragens pra garantir que ão foram feitas alterações erradas
          FiltraSlave;
          //Chama função para calcular descontos
          EfetuaDesconto('GERAL', 'PERCENTO');
          EDesricaoServico.SetFocus;
          Exit;

        except
          ShowMessage('Falha ao gerar código do serviço.' + #13 + ' Foi encontrado um erro ao inserir o serviço. Entre em contato com o suporte e informe oerro ocorrido');
          DMMACS.Transaction.RollbackRetaining;
          DMServ.IBT.RollbackRetaining;
        end;
      end
      else
      begin
        MessageDlg('O ITEM NÃO PODE SER INSERIDO. VERIFIQUE!' + #13 + 'Erro: 1348', mtWarning, [mbOK], 0);
        DMServ.IBT.RollbackRetaining;
        FiltraSlave;
        //Chama função para calcular descontos
        EfetuaDesconto('GERAL', 'PERCENTO');
        Exit;
      end;
    end;
  end;

  //
  if (DMMACS.TLoja.FieldByName('USARMULTIPLOSVENDEDORESOS').AsString = '1') then
  begin
    //Alex - 16/03/2018: Buscamos o código de despadic para retornar ao inserir multiplos vendedores
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('  select gen_id(GEN_DESPADIC_ID, 0) as codigo from rdb$database ');
    MDO.QConsulta.Open;

    InsereMultiploVendedorBD(MDO.QConsulta.FieldByName('codigo').AsInteger, 'SERV');
  end;

  DMESTOQUE.TransacEstoque.CommitRetaining;
  DMServ.IBT.CommitRetaining;
  FiltraSlave;
  //Chama função para calcular descontos
  EfetuaDesconto('GERAL', 'PERCENTO');
  LimpaCamposServ;
  LimpaGradeMultiplosVendedores('SERV');
  EfetuaCalculoISS;
  RetemIss;
  XCOD_SERVICOCLASSIFICACAO := -1;
  try
    DbServicoClassificacao.KeyValue := '';
  except
  end;
  DbServicoClassificacao.ListField := '';
  DbServicoClassificacao.ListField := 'DESCRICAO';
  EDesricaoServico.SetFocus;
end;
//click botao remover

procedure TFOrdemMec.BBExcluirClick(Sender: TObject);
begin
  inherited;
  if DMServ.TOrd.FieldByName('EXPORTADO').AsString <> '#' then
  begin
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.sql.Add('select * from despadic');
    DMESTOQUE.Alx1.sql.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
    DMESTOQUE.Alx1.sql.Add('where despadic.cod_despadic= :cod');
    DMESTOQUE.Alx1.ParamByName('cod').AsString := DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsString;
    DMESTOQUE.Alx1.Open;

    if Length(DMESTOQUE.Alx1.FieldByName('DESPESA').AsString) > 20 then
    begin
      if Mensagem('   A T E N Ç Ã O   ', 'Deseja realmente excluir o serviço ' + #39 + Copy(DMESTOQUE.Alx1.FieldByname('DESPESA').AsString, 0, 20) + #39 + '. ?', '', 2, 3, false, 'I') = 3 then
        Exit;
    end
    else
    begin
      if Mensagem('   A T E N Ç Ã O   ', 'Deseja realmente excluir o serviço ' + #39 + DMESTOQUE.Alx1.FieldByname('DESPESA').AsString + #39 + ' ?', '', 2, 3, false, 'I') = 3 then
        Exit;
    end;

    //Alex: 13/03/2018- mostra ou esconde campo de multiplos vendedor
    if (DMMACS.TLoja.FieldByName('USARMULTIPLOSVENDEDORESOS').AsString = '1') then
    begin
      //Alex: 04/04/2018 - Se o usuário logado não possuir permissão para editar o vendedor, bloquearemos o mesmo de remover itens e editar vendedor
      if ControlAccess('EDITAVENDEDOROS', '') = False then
      begin
        if MessageDlg('Usuário sem permissão para remover o serviço da lista.' + #13 + #10 + 'Solicitar permissão de administrador?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
        begin
          //Solicita senha de administrador
          AbrirForm(TFSENHA, FSENHA, 0);
          if XAlxResult = False then
          begin
            //para senhas erradas não liberamos acesso
            MessageDlg('Acesso negado', mtWarning, [mbOK], 0);
            Exit;
          end
          else
          begin
            //Usuario com permissão para remoção de itens
            LimpaGradeMultiplosVendedores('SERV');
            InsereMultiploVendedor(XCOD_VENDEDOR, 'SERV');
          end;
        end
        else
        begin
          //abandona comandos
          Exit;
        end;
      end
      else
      begin
        //Usuario com permissão para remoção de itens
        LimpaGradeMultiplosVendedores('SERV');
        InsereMultiploVendedor(XCOD_VENDEDOR, 'SERV');
      end;
    end;

    //volta valores do serviço para as grids de edição
    EDesricaoServico.Text := DMESTOQUE.Alx3.fieldbyname('DESPESA').AsString;
    EValorServ.Text := DMESTOQUE.Alx3.fieldbyname('VLRFINAL').AsString;
    EQtdServ.Text := DMESTOQUE.Alx3.fieldbyname('QTD').AsString;
    EDescServ.Text := DMESTOQUE.Alx3.fieldbyname('DESCONTO').AsString;
    ETotalServItem.Text := DMESTOQUE.Alx3.fieldbyname('VLRTOTFIN').AsString;
    FrmEquipe.EDCodigo.Text := DMESTOQUE.Alx3.fieldbyname('COD_EQUIPE').AsString;
    FrmEquipe.EdDescricao.Text := DMESTOQUE.Alx3.fieldbyname('DESCRICAO').AsString;

    RemoverServico;
  end
  else
  begin
    if Mensagem('   A T E N Ç Ã O   ', 'Deseja remover TODOS os SERVIÇOS da lista?', '', 2, 3, false, 'I') = 3 then
      Exit;

    DMESTOQUE.Alx3.First;

    while not DMESTOQUE.Alx3.Eof do
    begin
      RemoverServico;
    end;

    LimpaCamposServ;
  end;
  EfetuaCalculoISS;
  RetemIss;
end;

// remover serviço selecionado
procedure TFOrdemMec.RemoverServico;
var
  XAPAGA: Integer; //controla para que sejama apagados todos os serviços da ordem exportada
begin
  inherited;
  XAPAGA := 0;

  if XAPAGA = 0 then
  begin

    //exclui serviço/despesa do banco
    DMESTOQUE.Alx.close;
    dmestoque.Alx.SQL.clear;
    DMESTOQUE.Alx.sql.Add('delete from despadic where (despadic.cod_gerador= :cod1)');
    DMESTOQUE.Alx.SQL.Add('and despadic.cod_despadic= :cod2');
    DMESTOQUE.Alx.ParamByName('cod1').AsInteger := XCOD_ORDEM;
    DMESTOQUE.Alx.ParamByName('cod2').AsInteger := DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsInteger;
    DMESTOQUE.Alx.ExecSQL;

    RemoveMultiploVendedorBD(DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsInteger, 'SERV');

    DMESTOQUE.TransacEstoque.CommitRetaining;

    FiltraSlave;
    //Chama função para calcular descontos
    EfetuaDesconto('GERAL', 'PERCENTO');

  end
  else
  begin

    //exclui serviço/despesa do banco
    DMESTOQUE.Alx.close;
    dmestoque.Alx.SQL.clear;
    DMESTOQUE.Alx.sql.Add('delete from despadic where (despadic.cod_gerador= :cod1)');
    //DMESTOQUE.Alx.SQL.Add('and despadic.cod_despadic= :cod2');
    DMESTOQUE.Alx.ParamByName('cod1').AsInteger := XCOD_ORDEM;
    //     DMESTOQUE.Alx.ParamByName('cod2').AsInteger:=DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsInteger;
    DMESTOQUE.Alx.ExecSQL;
    DMESTOQUE.TransacEstoque.CommitRetaining;

    FiltraSlave;
    //Chama função para calcular descontos
    EfetuaDesconto('GERAL', 'PERCENTO');

  end;
end;

// click poupup remover tudo os serviços

procedure TFOrdemMec.RemoverTudo2Click(Sender: TObject);
begin
  inherited;
  if Mensagem('   A T E N Ç Ã O   ', 'Deseja remover todos os SERVIÇOS da lista?', '', 2, 3, false, 'I') = 3 then
    Exit;

  DMESTOQUE.Alx3.First;

  while not DMESTOQUE.Alx3.Eof do
  begin
    RemoverServico;
  end;

  LimpaCamposServ;

end;
//click botao gravar

procedure TFOrdemMec.BtnGravarClick(Sender: TObject);
var
  XFlagControlNumero: Integer;
begin
  inherited;
  DMServ.TAlx3.Close;
  DMServ.TAlx3.SQL.Clear;
  DMServ.TAlx3.SQL.Add(' SELECT VWORDEM.STATUS, vwordem.numero, vwordem.total FROM VWORDEM WHERE vwordem.cod_ordem = :Codigo');
  DMServ.TAlx3.ParamByName('CODIGO').AsInteger := XCOD_ORDEM;
  DMServ.TAlx3.Open;

  if DMServ.TAlx3.FieldByName('STATUS').AsString = 'FECHADO' then
  begin
    MessageDlg('Essa Ordem já foi fechada em outro computador. ' + #13 + ' Verifique se os seus itens não foram alterados.', mtWarning, [mbOK], 0);
    Registra('ORDEM', 'FECHAR', DateToStr(DATE()), 'Nº ' + DMServ.TAlx3.FieldByName('NUMERO').AsString, 'Valor: ' + DMServ.TAlx3.FieldByName('total').AsString);
    PCadastro.Visible := false;
    PCadastro.SendToBack;
    PConsulta.Visible := true;
    PConsulta.BringToFront;
    XEstado := '';
    AtualizaGridConsulta('ORIGEM');
    Exit;
  end;

  FMenu.XTIPOBOLTO := '';
  //Verificamos se existe algum texto digitado nos dados de serviço, muitas vezes ocorre de o usuario digitar e esquecer de inserir os valores a lista
  if EDesricaoServico.Text <> '' then
  begin
    MessageDlg('Existe um texto digitado no campo de serviços, talvez você tenha esquecido de inserir o serviço na lista.' + #13 + 'Para continuar, insira ou limpe o texto e pressione gravar novamente', mtWarning, [mbOK], 0);
    PageControl1.ActivePage := TabSheet2;
    EDesricaoServico.SetFocus;
    Exit;
  end;

  //CONTROLE DA NUMERAÇÃO DA ORDEM DE SERVIÇO
  XFlagControlNumero := 1;
  while XFlagControlNumero = 1 do
  begin
    if FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'numero', '', ' (numero=' + #39 + DBNumOrd.Text + #39 + ') AND (VWORDEM.cod_ordem<>' + IntToStr(XCOD_ORDEM) + ') ') = True then
    begin
      //caso já exista o mesmo numero em outro pedido incrementamos mais um numero de acordo com a tabela empresa e continuamos loop para teste
      DBNumOrd.Text := IntToStr(RetornaNumPed);
      MessageDlg('O Número anteriormente informado para a O.S. já existia em banco.' + #13 + #10 + 'O Sistema alterou automaticamente para ' + DBNumOrd.Text, mtWarning, [mbOK], 0)
    end
    else
    begin
      try
        //Testamos o numero do edit para garantir que é um numero
        StrToInt(DBNumOrd.Text);
        if XNumOrdem <> DBNumOrd.Text then
          MessageDlg('O Número anteriormente informado para a O.S. já existia em banco.' + #13 + #10 + 'O Sistema alterou automaticamente para ' + DBNumOrd.Text, mtWarning, [mbOK], 0)
      except
      end;
      XFlagControlNumero := 0;
    end;
  end;
  // seleciona todos os produtos da ordem de serviço
  DMESTOQUE.Alx1.Close;
  DMESTOQUE.Alx1.SQL.Clear;
  DMESTOQUE.Alx1.SQL.Add('select * from itprodord where itprodord.cod_ordem = :cod_ordem');
  DMESTOQUE.Alx1.ParamByName('cod_ordem').AsInteger := XCOD_ORDEM;
  DMESTOQUE.Alx1.Open;

  // se nao possuir nenhum produto verifica se existem servico na ordem
  if DMESTOQUE.Alx1.IsEmpty then
  begin

    // na tabela despadic eh feito uma verificação se possui servico relacionado a ordem
    DMESTOQUE.Alx2.Close;
    DMESTOQUE.Alx2.SQL.Clear;
    DMESTOQUE.Alx2.SQL.Add('select * from despadic where despadic.cod_gerador = :codigo');
    DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := XCOD_ORDEM;
    DMESTOQUE.Alx2.Open;

  end;

  // se nao possui servico e nem produtos eh exibido a mensagem - SEGUNDO SOLICITAÇÃO É OBRIGATORIO PODER GRAVAR SEM SERVICO
  if (DMESTOQUE.Alx2.IsEmpty) then
  begin
    if Mensagem('   A T E N Ç Ã O   ', 'A Ordem de Serviço atual não possui produtos e serviços inclusos. Deseja apagá-la ?', '', 2, 3, false, 'A') = 2 then
    begin
      //Apaga ORDEM
      FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
      Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº ' + DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: ' + DMServ.TOrd.FieldByName('TOTORD').AsString);
      DMServ.TOrd.Delete;
      DMServ.TOrd.ApplyUpdates;

      //Confirma Transação
      DMServ.TOrd.Transaction.CommitRetaining;

      //atualiza vew
      AtualizaGridConsulta('ORIGEM');

      PCadastro.Visible := False;
      PConsulta.Visible := true;
      PConsulta.BringToFront;
      XEstado := '';

      Exit;
    end;
  end;

  //VALIDA CAMPOS NECESSÁRIOS
  if (XCOD_CLIENTE = -1) or (FrmCliente.EDCodigo.Text = '') then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um Cliente para Ordem de Serviço', '', 1, 1, False, 'a');
    FrmCliente.EDCodigo.SetFocus;
    Exit;
  end;

  if ((XCOD_EQUIPAMENTO = -1) or (FBEquipPlaca.EDCodigo.Text = '')) and (CBVENDABALCAO.Checked = FALSE) then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe uma placa para Ordem de Serviço', '', 1, 1, False, 'a');
    FBEquipPlaca.EDCodigo.SetFocus;
    Exit;
  end;

  if (DMMACS.TLoja.FieldByName('USARVENDEDOROSMEC').AsString = '1') and (XCOD_VENDEDOR = -1) then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, selecione o vendedor para a ordem de serviço', '', 1, 1, False, 'a');
    FrmVendedor.BTNOPEN.SetFocus;
    Exit;
  end;

  if (XCOD_FORMPAG = -1) or (FrmFormPag1.EDCodigo.Text = '') then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe a Forma de Pagamento para a Ordem de Serviço', '', 1, 1, False, 'a');
    FrmFormPag1.EDCodigo.SetFocus;
    Exit;
  end;

  if XCOD_CLIENTE = DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger then
  begin
    if FrmFormPag1.EdDescricao.Text <> 'À VISTA' then
    begin
      Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
      FrmFormPag1.BTNOPEN.SetFocus;
      Exit;
    end;
  end;

  if ((DBBox.Text = '') and (CBVENDABALCAO.Checked = False)) and (DBBox.Text <> '0') then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe o box para Ordem de Serviço', '', 1, 1, False, 'a');
    Exit;
  end;

  //ALEX: 13/05/2009 - O TRECHO ABAIXO FOI COMENTADO  PEDIDO DA MERCESCAN
  //COMENTAR PAR MERCESCAN
  if (XCOD_EQUIPAMENTO > 0) then
  begin
    //verifica se o equipamento selecionado pertence ao cliente selecionado
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' select * from equipamento where equipamento.cod_equipamento=:codigo ');
    DMServ.TAlx1.ParamByName('codigo').AsString := DMServ.TOrd.FieldByName('cod_equipamento').AsString;
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      if CBVENDABALCAO.Checked = False then
      begin
        if (DMServ.TAlx1.FieldByName('cod_cliente').AsString <> IntToStr(XCOD_CLIENTE)) and ((DMServ.TAlx1.FieldByName('cod_cliente').AsString <> '') or (DMServ.TAlx1.FieldByName('cod_cliente').AsString <> '0')) then
        begin
          Mensagem('   A T E N Ç Ã O   ', 'O Equipamento selecionado na ordem não corresponde com o cliente selecionado. Altere por favor!', '', 1, 1, false, 'I');
          FrmCliente.EDCodigo.SetFocus;
          Exit;
        end;
      end;
    end
    else
    begin
      Mensagem('   A T E N Ç Ã O   ', 'O Equipamento selecionado na ordem não foi encontrado', '', 1, 1, false, 'I');
      Exit;
    end;
  end;

  DMServ.TOrd.Edit;
  if CBGarantia.Checked then
    DMServ.TOrd.FieldByName('GARANTIA').AsString := '1'
  else
    DMServ.TOrd.FieldByName('GARANTIA').AsString := '';

  //INFORMA CODIGO DO USUARIO
  DMServ.TOrd.FieldByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
  //INFORMA CODIGO DO CLIENTE
  DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
  //INFORMA CODIGO DO EQUIPAMENTO
  DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO;
  DMServ.TOrd.Post;
  //FILTRA VENDEDOR
  FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
  //Filtra CLIENTE
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCOD_CLIENTE), '');
  DMServ.TOrd.Edit;
  //INFORMA CODIGO DO VENDEDOR
  DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger := XCOD_VENDEDOR;
  //INFORMA CODIGO DO RESPONSÁVEL
  DMServ.TOrd.FieldByName('COD_FUNCIONARIO').AsInteger := DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
  //INFORMA CODIGO DA LOJA
  DMServ.TOrd.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
  //INFORMA FORMA DE PAGAMENTO
  DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger := XCOD_FORMPAG;
  DMServ.TOrd.FieldByName('observacao').AsString := MObs.Lines.Text;
  DMServ.TOrd.FieldByName('OBSORDEM').AsString := MObsOrdem.Lines.Text;
  DMServ.TOrd.FieldByName('box').AsString := DBBox.Text;
  DMServ.TOrd.FieldByName('contato').AsString := EdContatoCliente.Text;
  DMServ.TOrd.FieldByName('NOMECLI').AsString := DMPESSOA.WCliente.FieldByName('NOME').AsString;
  DMServ.TOrd.FieldByName('CPFCNPJ').AsString := DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
  DMServ.TOrd.FieldByName('DTABERT').AsString := edDtAbertura.Text;
  //GRAVA TOTAIS
  DMServ.TOrd.FieldByName('TOTORD').AsCurrency := EdValorOrd.ValueNumeric;
  DMServ.TOrd.FieldByName('TOTPROD').AsCurrency := EdtotalProd.ValueNumeric;
  DMServ.TOrd.FieldByName('TOTSERV').AsCurrency := EdTotalserv.ValueNumeric;
  DMServ.TOrd.FieldByName('TOTDESP').AsCurrency := EdTotDesp.ValueNumeric;
  DMServ.TOrd.FieldByName('TOTISS').AsCurrency := EdTotIss.ValueNumeric;
  DMServ.TOrd.FieldByName('DESCONTO').AsCurrency := EdDescTOrdem.ValueNumeric;
  DMServ.TOrd.FieldByName('DESCPROD').AsCurrency := EdDescTProd.ValueNumeric;
  DMServ.TOrd.FieldByName('DESCSERV').AsCurrency := EdDescTServ.ValueNumeric;
  //Informa Situação do pedido
  if FMenu.XTIPOBOLTO <> 'OSABERTA' then
    DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
  DMServ.TOrd.FieldByName('EDIT').AsString := '0';
  if (CBVENDABALCAO.Checked = true) and (DMServ.TOrd.FieldByName('BOX').AsString = '') then
  begin
    DMServ.TOrd.FieldByName('BOX').AsString := '-1';
    DBBox.Text := '-1';
  end;
  if (CBVENDABALCAO.Checked = true) then
    DMServ.TOrd.FieldByName('LOCALAT').AsString := 'BALCÃO'
  else
    DMServ.TOrd.FieldByName('LOCALAT').AsString := '';

  //Edmar - 27/03/2014 - Testa se salva a retenção do ISS
  // 1 retem e 2 não retem
  if cbRtIss.Checked then
    DMServ.TOrd.FieldByName('RT_ISS').AsString := '1'
  else
    DMServ.TOrd.FieldByName('RT_ISS').AsString := '2';

  DMServ.TOrd.Post;

  //Jônatas 27/06/2013 - Gravar as placas adicionais
  DMServ.TAlx2.Close;
  DMServ.TAlx2.SQL.Clear;
  DMServ.TAlx2.SQL.Add('UPDATE ordem');
  DMServ.TAlx2.SQL.Add(' SET ordem.placa2=:PLACA2 , ordem.placa3=:PLACA3');
  DMServ.TAlx2.SQL.Add(' WHERE ordem.numero=:NUMERO_ORDEM');
  DMServ.TAlx2.ParamByName('NUMERO_ORDEM').AsString := XNumOrdem;
  DMServ.TAlx2.ParamByName('PLACA2').AsString := EdPlaca2.Text;
  DMServ.TAlx2.ParamByName('PLACA3').AsString := EdPlaca3.Text;
  DMServ.TAlx2.ExecSQL;

  try
    DMServ.IBT.CommitRetaining;
  except
    DMServ.IBT.RollbackRetaining;
    MessageDlg('ERRO 6488: Ocorreu um erro ao gravar a OS.' + #13 + #10 + 'Consulte e verifique seus dados e tente gravar novamente', mtWarning, [mbOK], 0);
  end;

  //Atualiza View da tela de Consulta
  AtualizaGridConsulta('ORIGEM');
  LimpaGradeMultiplosVendedores('PROD');
  LimpaGradeMultiplosVendedores('SERV');

  PCadastro.Visible := False;
  PCadastro.SendToBack;
  PConsulta.Visible := True;
  PConsulta.BringToFront;
  XEstado := '';
end;
//click em cancelar

procedure TFOrdemMec.BtnCancelarClick(Sender: TObject);
begin
  FMenu.XTIPOBOLTO := '';
  FiltraSlave;
  RetornaValoresBanco;
  BtnGravar.Click;
end;

//click fiscal

procedure TFOrdemMec.BtnDadosAdicClick(Sender: TObject);
begin
  inherited;
  GeraFiscal;
end;
//click botao apagar

procedure TFOrdemMec.BtnApagarClick(Sender: TObject);
begin
  inherited;
  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('EXCORD', 'M') = False then
    Exit;

  FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '');

  if DMSERV.TOrd.IsEmpty then
  begin
    Mensagem('    A T E N Ç Ã O   ', 'A ORDEM JÁ FOI REMOVIDA.', '', 1, 1, false, 'I');
    AtualizaGridConsulta('');
    Exit;
  end;

  XCOD_ORDEM := XView.FieldByName('COD_ORDEM').AsInteger;

  // BUSCANDO DADOS DA ORDEM
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');

  // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
  if DMServ.TOrd.FieldByName('EDIT').AsString = '1' then
  begin
    Mensagem('    A T E N Ç Ã O   ', 'A ORDEM ESTÁ SENDO USADA NO MOMENTO.' + #13 + 'Use Ctrl+D para destravar', '', 1, 1, false, 'I');
    AtualizaGridConsulta('');
    Exit;
  end
  else
  begin
    DMServ.TOrd.Edit;
    DMServ.TOrd.FieldByName('EDIT').AsString := '1';
    DMServ.TOrd.Post;
    DMServ.TOrd.ApplyUpdates;
    DMServ.IBT.CommitRetaining;
  end;

  if (DMSERV.WOrdem.FieldByName('STATUS').AsString <> 'TERMINADA') and (DMSERV.WOrdem.FieldByName('STATUS').AsString <> 'FECHADA') then
  begin //se passar pelas restrições de apagamento da ordem
    if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'DESEJA APAGAR A ORDEM DE SERVIÇO ' + #13 + 'Nº ' + XView.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
    begin

      //Filtra registros do pedido
      FiltraSlave;
      //VERIFICA SE EXISTEM ITENS NA ORDEM, ELA SOMENTE PODERÁ SER APAGADA SE ESTIVER SEM ITENS
      if (not DMESTOQUE.TSlave.IsEmpty) or (not DMESTOQUE.TDesp.IsEmpty) or (not DMESTOQUE.TSlaveServ.IsEmpty) then
      begin
        Mensagem('OPÇÃO BLOQUEADA', 'ANTES DE REMOVER ESTA ORDEM É NECESSÁRIO REMOVER TODOS OS PRODUTOS E SERVIÇOS DA ORDEM ' + 'Nº ' + XView.FieldByName('NUMERO').AsString + '.', '', 1, 1, False, 'a');
        DMServ.TOrd.Edit;
        DMServ.TOrd.FieldByName('EDIT').AsString := '0';
        DMServ.TOrd.Post;
        DMServ.TOrd.ApplyUpdates;
        DMServ.IBT.CommitRetaining;
        AtualizaGridConsulta('ORIGEM');
        Exit;
      end;

      //REGISTRA COMANDO DO USUARIO
      try
        Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº ' + DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: ' + DMServ.TOrd.FieldByName('TOTORD').AsString);
      except
      end;

      try

        //Apaga ORDEM
        FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '');
        DMServ.TOrd.Delete;

        //Confirma Tranzaçào
        DMSERV.IBT.CommitRetaining;

        //atualiza view
        AtualizaGridConsulta('ORIGEM');
      except
        //caso não conseguiu executar as tranzações acima retorna as informações anteriores
        DMSERV.IBT.RollbackRetaining
      end;
    end
    else
    begin
      DMServ.TOrd.Edit;
      DMServ.TOrd.FieldByName('EDIT').AsString := '0';
      DMServ.TOrd.Post;
      DMServ.TOrd.ApplyUpdates;
      DMServ.IBT.CommitRetaining;
      AtualizaGridConsulta('ORIGEM');
    end;
  end;
end;

//CLICK BOTAO CONSULTAR

procedure TFOrdemMec.BtnConsultarClick(Sender: TObject);
begin
  XCONTROLECONSULTA := true; //DJ 02/11/2009: Indica que esta acontecendo uma consulta

  LimpaCamposProd;
  LimpaCamposServ;

  //Filtra todos os subserviços
  FiltraTabela(DMServ.WSubServ, 'vwsubservico', '', '', '');

  // repassando valor do cidgo da ordem para variavel
  XCOD_ORDEM := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;
  XNumOrdem := DMServ.WOrdem.FieldByname('NUMERO').AsString;
  //ALEX: 20/04/2016 - Atualizamos o dmserv aqui para garantir que outras alterações (de outras máquinas) sejam pegas, e isso é feito aqui para que as váriaveis peguem o codigo da OS em questão
  DMServ.IBT.CommitRetaining;
  // BUSCANDO DADOS DA ORDEM
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
  FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');

  if DMSERV.TOrd.FieldByName('STATUS').Asstring = 'FECHADO' then
  begin
    Mensagem('    A T E N Ç Ã O   ', 'A ORDEM JÁ FOI FECHADA.', '', 1, 1, false, 'I');
    AtualizaGridConsulta('ORIGEM');
    Exit;
  end;

  if DMSERV.TOrd.IsEmpty then
  begin
    Mensagem('    A T E N Ç Ã O   ', 'A ORDEM JÁ FOI REMOVIDA.', '', 1, 1, false, 'I');
    AtualizaGridConsulta('ORIGEM');
    Exit;
  end;

  // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
  if DMServ.TOrd.FieldByName('EDIT').AsString = '1' then
  begin
    Mensagem('    A T E N Ç Ã O   ', 'A ORDEM ESTÁ SENDO USADA NO MOMENTO.' + #13 + 'Use Ctrl+D para destravar', '', 1, 1, False, 'I');
    AtualizaGridConsulta('ORIGEM');
    Exit;
  end
  else
  begin
    //DMServ.TOrd.Edit;
    //DMServ.TOrd.FieldByName('EDIT').AsString := '1'; //seta a ordem como em uso
   // DMServ.TOrd.Post;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('update ordem set ordem.edit = :EDITAR');
    DMServ.TAlx1.SQL.Add('where ordem.cod_ordem = :COD');
    DMServ.TAlx1.ParamByName('EDITAR').AsInteger := 1;
    DMServ.TAlx1.ParamByName('COD').AsInteger := XCOD_ORDEM;
    DMServ.TAlx1.ExecSQL;
    DMServ.IBT.CommitRetaining;
  end;

  if (XView.FieldByName('STATUS').AsString <> 'FECHADO') or (FMenu.XTIPOBOLTO = 'OSABERTA') {//se a ordem ja não estiver fechada} then
  begin
    inherited;
    PageControl1.ActivePage := TabSheet1;

    // If FiltraTabela(XTabela, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '')=False Then
      //    Exit;//Caso não encontrar cancelar

     //VERIFICA RESTRICOES DE USUARIO
    { If ControlAccess('USAGARANT', '')=False
     Then Begin
          CBGarantia.Checked:=False;
          CBGarantia.Enabled:=False;
     End
     Else Begin
          CBGarantia.Enabled:=True;
     End; }

     {If DMMACS.TLoja.FieldByName('USAGARANTIA').AsString='1'
     Then Begin
          CBGarantia.Visible:=True;
          CBGarantia.BringToFront;
     End
     Else Begin
          CBGarantia.Visible:=False;
     End;   }

    DMServ.TOrd.Edit;
    XESTADO := 'EDIT'; //recebe estado de edição da ordem de serviço

    //VERIFICA VENDA BALCÃO
    if DMServ.TOrd.FieldByName('localat').AsString = 'BALCÃO' then
      CBVENDABALCAO.Checked := True
    else
      CBVENDABALCAO.Checked := False;

    //Edmar - 27/03/2014 - Testa se a ordem está retendo ISS
    // 1 retem e 2 não retem
    if DMServ.TOrd.FieldByName('RT_ISS').AsString = '1' then
      cbRtIss.Checked := true
    else
      cbRtIss.Checked := False;

    //VERIFICA RESTRICOES DE USUARIO
    if ControlAccess('USAGARANT', '') = False then
    begin
      CBGarantia.Checked := False;
      CBGarantia.Enabled := False;
    end
    else
    begin
      CBGarantia.Enabled := True;
    end;

    //filtra cliente para atribuir dados as variáveis e edits
    if FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', XView.FieldByName('COD_CLIENTE').AsString, '') = True then
    begin
      XCOD_CLIENTE := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
      FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
      FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
      DMPESSOA.TCliente.Close;
      DMPESSOA.TCliente.SQL.Clear;
      DMPESSOA.TCliente.SQL.Add(' Select * from cliente where cliente.cod_cliente=:Codigo ');
      DMPESSOA.TCliente.ParamByName('Codigo').AsInteger := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
      DMPESSOA.TCliente.Open;
      if not DMPESSOA.TCliente.IsEmpty then
        EdObsFinanceira.Text := DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
      else
        EdObsFinanceira.Text := '';
    end
    else
    begin
      XCOD_CLIENTE := -1;
      FrmCliente.EDCodigo.Text := '';
      FrmCliente.EdDescricao.Text := '';
      EdObsFinanceira.Text := '';
    end;
    XCOD_VENDEDOR := DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger;
    XCOD_FORMPAG := DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
    //filtra forma de pagamento para atribuir valores para variáveis de controle e edits
    if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '') = True then
    begin
      XCOD_FORMPAG := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
      FrmFormPag1.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
      FrmFormPag1.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
    end
    else
    begin
      XCOD_FORMPAG := -1;
      FrmFormPag1.EDCodigo.Text := '';
      FrmFormPag1.EdDescricao.Text := '';
    end;
    //Busca vendedor de acordo com o usuario locado
    if FiltraTabela(DMPESSOA.VWFuncionario, 'vwfuncionario', 'cod_func', InttoStr(XCOD_VENDEDOR), '') = true then
    begin
      XCOD_VENDEDOR := DMPESSOA.VWFuncionario.FieldByName('cod_func').AsInteger;
      FrmVendedor.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByName('cod_func').AsString;
      FrmVendedor.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('nome').AsString;
      // busca a comissão do funcionario
      DMPESSOA.TALX.Close;
      DMPESSOA.TALX.SQL.Clear;
      DMPESSOA.TALX.SQL.Add(' SELECT FUNCARGO.COMISSAO_VVPRO FROM FUNCARGO ');
      DMPESSOA.TALX.SQL.Add(' WHERE FUNCARGO.COD_FUNCIONARIO = :VENDEDOR ');
      DMPESSOA.TALX.ParamByName('VENDEDOR').AsInteger := XCOD_VENDEDOR;
      DMPESSOA.TALX.Open;
      XALIQCOMISS := DMPESSOA.TALX.FieldByName('COMISSAO_VVPRO').AsCurrency;
      //Alex: 05/01/2018 - Se o usuário logado não possuir permissão para editar o vendedor, bloquearemos os meios para isso
      if ControlAccess('EDITAVENDEDOROS', '') = False then
      begin
        FrmVendedor.BTNOPEN.Enabled := False;
        FrmVendedor.BTNMINUS.Enabled := False;
        FrmVendedor.EDCodigo.ReadOnly := True;
      end
      else
      begin
        FrmVendedor.BTNOPEN.Enabled := True;
        FrmVendedor.BTNMINUS.Enabled := true;
        FrmVendedor.EDCodigo.ReadOnly := false;
      end;
    end
    else
    begin
      XCOD_VENDEDOR := -1;
      FrmVendedor.EDCodigo.Text := '';
      FrmVendedor.EdDescricao.Text := '';
    end;

    XCOD_EQUIPAMENTO := DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger;
    //se for MERCESCAN, aparece o formulario de busca pela placa do veículo
       // VERIFICA PRIMEIRO SE A ORDEM POSSUI EQUIPAMENTO
    if FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(XCOD_EQUIPAMENTO), '') = TRUE then
    begin
      FBEquipPlaca.EDCodigo.Text := DMPESSOA.TEquip.FieldByName('PLACA').AsString;
      FBEquipPlaca.EdDescricao.Text := DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;

      XCOD_EQUIPAMENTO := DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;

      if DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> '' then
      begin
        lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
      end
      else
      begin
        lbNumFrota.Caption := '';
      end;

    end
    else
    begin
      XCOD_EQUIPAMENTO := -1;
      FBEquipPlaca.EdDescricao.Text := '';
      FBEquipPlaca.EDCodigo.Text := '';
      lbNumFrota.Caption := '';
    end;
    //Jônatas 27/06/2013 - Busca as placas adicionais na tabela ordem
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMserv.TAlx1.SQL.Add('SELECT ordem.placa2, ordem.placa3 FROM ordem');
    DMserv.TAlx1.SQL.Add(' LEFT JOIN equipamento ON ordem.cod_equipamento = equipamento.cod_equipamento');
    DMserv.TAlx1.SQL.Add(' WHERE (equipamento.placa = :PLACA) AND (ordem.numero = :NUMORDEM)');
    DMServ.TAlx1.ParamByName('PLACA').AsString := DMPESSOA.TEquip.FieldByName('PLACA').AsString;
    DMServ.TAlx1.ParamByName('NUMORDEM').AsString := XNumOrdem;
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      EdPlaca2.Text := DMServ.TAlx1.FieldByName('PLACA2').AsString;
      EdPlaca3.Text := DMServ.TAlx1.FieldByName('PLACA3').AsString;
    end
    else
    begin
      EdPlaca2.Text := '';
      EdPlaca3.Text := '';
    end;

    //atualiza o número da frota
    lbNumFrota.Repaint;

    //Informa outros valores
    DBNumOrd.Text := XNumOrdem; //DMServ.TOrd.FieldByName('NUMERO').AsString;

    {Edmar - 21/07/2014 - Trecho comentado e movido para o procedimento "RetornaValoresBanco"
    EdtotalProd.ValueNumeric := DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
    EdtotalServ.ValueNumeric := DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;
    EdValorOrd.ValueNumeric := DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;
    EdTotIss.ValueNumeric := DMServ.TOrd.FieldByName('TOTISS').AsCurrency;
    EdDescTOrdem.ValueNumeric := DMServ.TOrd.FieldByName('DESCONTO').AsCurrency;
    EdDescTProd.ValueNumeric := DMServ.TOrd.FieldByName('DESCPROD').AsCurrency;
    EdDescTServ.ValueNumeric := DMServ.TOrd.FieldByName('DESCSERV').AsCurrency;
      //DJ 02/11/2009: Parametro aplicado no sistema, evita erro ao apresentar valores na consulta
    EdTotalOrd.ValueNumeric := DMServ.TOrd.FieldByName('TOTORD').AsCurrency;
    EdValorOrd.ValueNumeric := EdTotalOrd.ValueNumeric;}

    RetornaValoresBanco;

    MObs.Lines.Text := DMServ.TOrd.FieldByName('observacao').AsString;
    MObsOrdem.Lines.Text := DMServ.TOrd.FieldByName('OBSORDEM').AsString;
    DBBox.Text := DMServ.TOrd.FieldByName('box').AsString;
    EdContatoCliente.Text := DMServ.TOrd.FieldByName('contato').AsString;
    //seleciona items da ordem
    FiltraSlave;

    if DMServ.TOrd.FieldByName('GARANTIA').AsString = '1' then
      CBGarantia.Checked := True
    else
      CBGarantia.Checked := False;

    //VERIFICA QUAL O COMPONENTE DE BUSCA DE PRODUTO DEVE APARECER
    if DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI' then
    begin
      TipoPesquisaProduto('');
    end;
    if DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC' then
    begin
      TipoPesquisaProduto('');
    end;
    if DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF' then
    begin
      TipoPesquisaProduto('');
    end;

    PConsulta.Visible := False;
    PConsulta.SendToBack;
    PCadastro.Visible := True;
    PCadastro.BringToFront;
    if pPesquisaRapida.Visible = True then
      EDCodFab.SetFocus
    else
      EDCodBarra.SetFocus;
  end
  else
  begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'PEDIDO FECHADO!' + #13 + 'NÃO É POSSÍVEL ALTERAR/CONSULTAR.', '', 1, 1, False, 'a');
    AtualizaGridConsulta('ORIGEM');
    Exit;
  end;

  //Edmar - 01/04/2014 - Só re-efetua o calculo do ISS se for primeira vez
  if (DMServ.TOrd.FieldByName('RT_ISS').AsString <> '1') and (DMServ.TOrd.FieldByName('RT_ISS').AsString <> '2') then
    EfetuaCalculoISS;
  try
    edDtAbertura.Text := DMServ.TOrd.FieldByName('DTABERT').AsString;
  except
  end;

  inherited;

end;

procedure TFOrdemMec.MEPLACAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (shift = [ssCtrl]) and (key = 70) {//CTRL+F} then
  begin
    PInfoCliente.Top := (PConsulta.Height - PInfoCliente.PPrincipal.Height) div 2;
    PInfoCliente.left := (PConsulta.Width - PInfoCliente.PPrincipal.Width) div 2;
    PInfoCliente.OnExit := LimpaInfoCliente;
    PInfoCliente.PesquisaPlaca(MEPLACA.Text);
    PInfoCliente.Visible := True;
    PInfoCliente.BringToFront;
    PInfoCliente.FrmCliente.EDCodigo.SetFocus;
    PInfoCliente.Repaint;
    Exit;
  end;
  if (shift = [ssCtrl]) then
    Exit;

  if (MEPLACA.SelLength > 0) and not (KEY = 8) and not (KEY = 13) and not (KEY = 27) then
  begin
    MEPLACA.Text := '';
  end;

  {If (Length(MEPLACA.Text) = 3) And Not (KEY = 8) Then Begin
      MEPLACA.Text := MEPLACA.Text + '-';
      MEPLACA.SelStart := 4;
  End; }
end;
//modo pesquisa

procedure TFOrdemMec.SelecionarModoPesquisa(mostrar: Boolean; tipo: string);
begin
  if not mostrar then
  begin
    PPesquisa.SendToBack;
    PPesquisa.Visible := False;
    XTipoPes := '';
  end
  else
  begin
    PPesquisa.BringToFront;
    PPesquisa.Visible := True;

    XTipoPes := tipo;

    if tipo = 'CLIENTE' then
    begin
      DBGridPesquisa.DataSource := DMPESSOA.DSALX;
      DBGridPesquisa.Columns.Items[0].FieldName := 'NOME';
      DBGridPesquisa.Columns.Items[1].FieldName := 'COD_INTERNO';
    end;
  end;
end;

procedure TFOrdemMec.PesquisaGrid(str: string);
begin
  if XTipoPes = 'CLIENTE' then
  begin
    DMPESSOA.TALX.close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add('SELECT cliente.cod_pessoa,pessoa.cod_pessoa, cliente.cod_interno,pessoa.nome');
    DMPESSOA.TALX.SQL.Add(' FROM CLIENTE JOIN PESSOA ON cliente.cod_pessoa = pessoa.cod_pessoa');
    //DMPESSOA.WCliente.SQL.Add('left join  cidade ON pessoa.cod_cidade = cidade.cod_cidade');
    DMPESSOA.TALX.SQL.Add(' where (upper(NOME) like upper(' + #39 + str + '%' + #39 + ')) order by nome');
    DMPESSOA.TALX.Open;
    //FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'NOME', '', ' (upper(NOME) like upper('+#39+str+'%'+#39+'))')
  end;
end;

procedure TFOrdemMec.EDCliente1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  key2: Char;
  POS: INTEGER;
begin
  inherited;
  XContPes := '';

  if (shift = [ssCtrl]) and (key = 70) {//CTRJ+F} then
  begin
    PInfoCliente.Top := (PConsulta.Height - PInfoCliente.PPrincipal.Height) div 2;
    PInfoCliente.left := (PConsulta.Width - PInfoCliente.PPrincipal.Width) div 2;
    PInfoCliente.OnExit := LimpaInfoCliente;
    PInfoCliente.PesquisaDescricao(EDCliente1.Text);
    PInfoCliente.Visible := True;
    PInfoCliente.BringToFront;
    PInfoCliente.FrmCliente.EDCodigo.SetFocus;
    PInfoCliente.Repaint;
    Exit;
  end;

  if (shift = [ssCtrl]) then
    Exit;

  if key = vk_return then
  begin
    AtualizaGridConsulta('CLIENTE');
    EDCliente1.SelectAll;
    SelecionarModoPesquisa(FALSE, '');
  end
  else
    if key = vk_up then
    begin
      if PPesquisa.Visible then
      begin
        XContPes := 'UP';
        EDCliente1KeyPress(Sender, key2);

      end;
    end
    else if key = vk_down then
    begin

      if not PPesquisa.Visible then
      begin
        SelecionarModoPesquisa(true, 'CLIENTE');
        PesquisaGrid(EDCliente1.Text);
        pos := EDCliente1.SelStart;
        EDCliente1.Text := AntPesq;
        EDCliente1.SelStart := pos + 1;

      end
      else
      begin
        XContPes := 'DOWN';
        EDCliente1KeyPress(Sender, key2);
      end;
    end
    else
    begin
      EDCliente1.Text := copy(EDCliente1.Text, 1, EDCliente1.SelStart);
      EDCliente1.SelStart := Length(EDCliente1.Text);
    end;

  // end;

end;

procedure TFOrdemMec.PPesquisaExit(Sender: TObject);
begin
  inherited;
  SelecionarModoPesquisa(false, '');
end;

function TFOrdemMec.ProxPesq: string;
begin
  Result := '';
  if XTipoPes = 'CLIENTE' then
  begin
    DMPESSOA.TALX.Next;
    Result := DMPESSOA.TALX.FieldByName('NOME').AsString;
  end;
end;

function TFOrdemMec.AntPesq: string;
begin
  Result := '';
  if XTipoPes = 'CLIENTE' then
  begin
    DMPESSOA.TALX.Prior;
    Result := DMPESSOA.TALX.FieldByName('NOME').AsString;
  end;
end;

function TFOrdemMec.RetNomeGrid: string;
begin
  Result := '';
  if XTipoPes = 'CLIENTE' then
  begin
    Result := DMPESSOA.TALX.FieldByName('NOME').AsString;
  end;
end;

procedure TFOrdemMec.EDCliente1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if PPesquisa.Visible then
  begin
    if XContPes = '' then
      PesquisaGrid(Copy(EDCliente1.Text, 1, EDCliente1.SelStart));
  end;
end;

//click filtro ou ordem

procedure TFOrdemMec.CBFILTROClick(Sender: TObject);
begin
  inherited;
  AtualizaGridConsulta('');
end;
//click em relatórios

procedure TFOrdemMec.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
  PmRelatorio.Popup(Left + PConsulta.left + PBotoesConsulta.left + BtnRelatorio.Left, top + PConsulta.Top + PBotoesConsulta.top + BtnRelatorio.Top + BtnRelatorio.Height);
end;
//click comprovante de abertura popup

//Imprime Comprovante de OS numero 21
procedure TFOrdemMec.ImpComprovante21;
begin
  try

    //Buscamos a tabela Ordem
    if FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsString, '') = False then
    begin
      MessageDlg('O Comprovante não será gerado. Dados de OS não foram encontrados.', mtWarning, [mbOK], 0);
      Exit;
    end;
    //Buscamos a tabela VwOrdem
    if FiltraTabela(DMSERV.WOrdem, 'vwordem', 'COD_ORDEM', DMSERV.TOrd.FieldByNAme('COD_ORDEM').AsString, '') = False then
    begin
      MessageDlg('O Comprovante não será gerado. Dados de OS não foram encontrados.', mtWarning, [mbOK], 0);
      Exit;
    end;
    //Retorna dados de Clientes
    if FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '') = false then
    begin
      MessageDlg('O Comprovante não será gerado. Dados de Cliente não foram encontrados.', mtWarning, [mbOK], 0);
      Exit;
    end;
    //Retorna dados de Cidade
    if FiltraTabela(DMGEOGRAFIA.WCidade, 'vwcidade', 'cod_cidade', DMPESSOA.WCliente.FieldByNAme('cod_cidade').AsString, '') = false then
    begin
      MessageDlg('O Comprovante não será gerado. Dados de Cidade não foram encontrados.', mtWarning, [mbOK], 0);
      Exit;
    end;
    //Retorna dados de Funcionarios para vendedor
    if FiltraTabela(DMPESSOA.VWFuncionario, 'vwfuncionario', 'cod_func', DMSERV.WOrdem.FieldByNAme('cod_vendedor').AsString, '') = false then
    begin
      MessageDlg('O Comprovante não será gerado. Dados de Vendedor não foram encontrados.', mtWarning, [mbOK], 0);
      Exit;
    end;
    //Retorna dados de Veiculos
    if (FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', DMSERV.WOrdem.FieldByNAme('cod_equipamento').AsString, '') = false) then
    begin
      if (DMSERV.WOrdem.FieldByNAme('cod_equipamento').AsString <> '-1') then
      begin
        MessageDlg('O Comprovante não será gerado. Dados de Veículo não foram encontrados.', mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    //Filtra dados de Produtos e Serviços
    XCOD_ORDEM := DMSERV.WOrdem.fieldbyname('COD_ORDEM').AsInteger;
    FiltraSlave;

    //Visualiza Comprovante
    QrAbertOrdem21.Preview;
  except

  end;
end;

procedure TFOrdemMec.CompdeAbertura1Click(Sender: TObject);
var
  ContParc, Cod_Tmp: Integer;
  Xdesc1, Xdesc2, Xdesc3: string;
begin
  inherited;
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  PmRelatorio.Tag := 0; //Componente pararealizar o controle de paginas nos relatórios
  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('RELABERTORD', 'M') = False then
    Exit;

  if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 21 then
  begin
    ImpComprovante21;
  end
  else
  begin

    //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
    if FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = False then
      Exit;
    //FILTRA DADOS PARA CABEÇALHO DA ORDEM
    DMServ.Alx.Close;
    DMServ.Alx.SQL.Clear;
    DMServ.Alx.SQL.Add(' Select ordem.cod_ordem, pessoa.nome, pessoaj.razao_social, pessoa.cpfcnpj, vwcidade.nome as cidade, ');
    DMServ.Alx.SQL.Add(' vwcidade.uf AS UF_ESTADO, pessoa.CEP, pessoa.bairro, pessoa.telrel, pessoa.endereco, pessoa.endnumero, vwfuncionario.nome as vendedor ');
    DMServ.Alx.SQL.Add(' from ordem ');
    DMServ.Alx.SQL.Add(' Left Join cliente on ordem.cod_cliente = cliente.cod_cliente ');
    DMServ.Alx.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
    DMServ.Alx.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
    DMServ.Alx.SQL.Add(' left join vwcidade on pessoa.cod_cidade = vwcidade.cod_cidade  ');
    DMServ.Alx.SQL.Add(' left join vwfuncionario on ordem.cod_vendedor = vwfuncionario.cod_func where ordem.cod_ordem=:codigo');
    DMServ.Alx.ParamByName('codigo').AsInteger := DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsInteger;
    DMServ.Alx.Open;
    //FILTRA CLIENTE PARA ENCONTRAR PESSOA
    if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '') = False then
    begin
      MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
      Exit;
    end;

    //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
    if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '') = False then
    begin
      MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
      Exit;
    end;
    //FILTRA PESSOA JURIDICA CASO EXISTA UMA PARA IMPRESSÃO DE CLIENTE
    FiltraTabela(DMPESSOA.TPessoaj, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

    //FILTRA CIDADE DO CLIENTE
    FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '');

    //FILTRA ESTADO DO CLIENTE
    FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

    //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
    FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

    //FILTRA ORDEM PARA IMPRESSÃO
    if FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsString, '') = False then
      Exit;

    //FILTRA EQUIPAMENTO PARA IMPRESSÃO
    if DMSERV.WOrdem.FieldByNAme('COD_EQUIPAMENTO').AsString <> '' then
      FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.WOrdem.FieldByNAme('COD_EQUIPAMENTO').AsString, '');

    //FILTRA FORMA DE PAGAMENTO
    FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMSERV.TOrd.FieldByNAme('COD_FORMPAG').AsString, '');

    //FILTRA FUNCIONARIO RESPONSAVEL
    FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMSERV.WOrdem.FieldByNAme('COD_FUNCIONARIO').AsInteger), '');

    XCOD_ORDEM := DMSERV.WOrdem.fieldbyname('COD_ORDEM').AsInteger;

    //FILTRA PRODUTOS, SERVIÇOS E DESPESAS
    FiltraSlave;
    RetornaValoresBanco;
    // se a atividade for EQUIPE, eh selecionado as despesas
    if (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE') and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsString = '6') then
    begin
      DMESTOQUE.Alx4.Close;
      DMESTOQUE.Alx4.SQL.Clear;
      DMESTOQUE.Alx4.SQL.Add('select despadic.cod_gerador, despadic.despesa, equipe.cod_equipe, equipe.descricao from despadic');
      DMESTOQUE.Alx4.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
      DMESTOQUE.Alx4.SQL.Add('where despadic.cod_gerador = :codigo');
      DMESTOQUE.Alx4.ParamByName('codigo').AsInteger := XCOD_ORDEM;
      DMESTOQUE.Alx4.Open;
    end;

    //a situação financeira será gerado na tabela tmp para ser impressa
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add(' delete from tmp ');
    DMMACS.TMP.ExecSQL;
    DMMACS.Transaction.CommitRetaining;
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
    DMMACS.TMP.Open;

    Cod_Tmp := 1;
    if DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA' then
    begin
      DMMACS.TMP.Insert;
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := Cod_Tmp;
      DMMACS.TMP.FieldByName('DESC1').AsString := 'À Vista';
      if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 10 then
      begin
        DMMACS.TMP.FieldByName('DESC2').AsString := DMServ.TOrd.FieldByName('TIPOPAG').AsString;
        DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMServ.TOrd.FieldByName('totord').AsCurrency;
      end
      else
      begin
        DMMACS.TMP.FieldByName('OBS').AsString := DMServ.TOrd.FieldByName('TIPOPAG').AsString;
        DMMACS.TMP.FieldByName('DESC3').AsString := FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('totord').AsCurrency);
      end;
      DMMACS.TMP.Post;
      Cod_Tmp := Cod_Tmp + 1;
    end
    else
    begin
      //insere sql necessária para filtrar parcelas da conta
      DMMacs.TALX.Close;
      DMMacs.TALX.sql.Clear;
      DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
      DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador=' + #39 + 'ORD' + #39 + ') And (ctareceber.cod_gerador=:CODGERADOR) ');
      DMMacs.TALX.ParamByName('CODGERADOR').AsInteger := XCOD_ORDEM;
      DMMacs.TALX.Open;

      //Assume parcelas em campo blob de loja para após ser passado em relatóri
      Xdesc1 := '';
      Xdesc2 := '';
      Xdesc3 := '';

      DMMACS.TALX.First;
      ContParc := 0;
      while not DMMACS.TALX.Eof do
      begin
        DMMACS.TMP.Insert;
        DMMACS.TMP.FieldByName('COD_TMP').AsInteger := Cod_Tmp;
        DMMACS.TMP.FieldByName('DESC1').AsString := DMMacs.TALX.FieldByName('dtvenc').AsString;
        DMMACS.TMP.FieldByName('DESC2').AsString := DMMacs.TALX.FieldByName('cobranca').AsString;
        DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMMacs.TALX.FieldByName('valor').AsCurrency;
        DMMACS.TMP.Post;
        Cod_Tmp := Cod_Tmp + 1;
        //  end;
        DMMACS.TALX.Next;
        ContParc := ContParc + 1;
      end;
      //Paulo 28/06/2011: Para armazenar as parcelas somente p/ o modelo 10
      //if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 then
      //begin
      //      DMMACS.TMP.Insert;
     //       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
     //       DMMACS.TMP.FieldByName('DESC1').AsString:=Xdesc1;
      //      DMMACS.TMP.FieldByName('OBS').AsString:=Xdesc2;
      //      DMMACS.TMP.FieldByName('DESC3').AsString:=Xdesc3;
      //      DMMACS.TMP.Post;
     // end;
    end;
    DMMACS.Transaction.CommitRetaining;
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
    DMMACS.TMP.Open;

    //if XComp2Vias = True then
    //	Exit;

    if DMMacs.TLoja.FieldByName('IMPMATRICIAL').AsString <> '1' then
    begin
      //EFETUA CONTROLE PARA VERIFICAR QUAL COMPROVANTE DEVE SER IMPRESSO
      if DMServ.TOrd.FieldByName('LOCALAT').AsString <> 'BALCÃO' then
      begin
        if (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10)
          or (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 17)
          or (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 18) then
        begin
          CompAbertura2vias1Click(Sender);
          Exit;
        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 11 then
        begin
          FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem11.frf');
          Fsrel.ShowReport;
        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 12 then
        begin
          FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem12.frf');
          Fsrel.ShowReport;
        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 13 then
        begin
          DMESTOQUE.TSlave.Last;
          DMESTOQUE.TDesp.Last;
          if (DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount) > 10 then
            QrAbertOrdem13Completo.Preview
          else
            QrAbertOrdem13.Preview;
        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 16 then
          QrAbertOrdem16.Preview;

        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 19 then
          QrAbertOrdem19.Preview;

        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 6 then
        begin
          FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem6.frf');
          FSRel.ShowReport;
        end;

        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 14 then
        begin
          DMESTOQUE.TSlave.Last;
          DMESTOQUE.TDesp.Last;
          if (DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount) > 12 then
            QrAbertOrdem14Completo.Preview
          else
            QrAbertOrdem14MeiaPagina.Preview;

        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 15 then
        begin
          DMESTOQUE.TSlave.Last;
          DMESTOQUE.TDesp.Last;
          if (DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount) > 15 then
            QrAbertOrdem15Completo.Preview
          else
            QrAbertOrdem15MeiaPagina.Preview;
        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 21 then
        begin
          DMESTOQUE.TSlave.Last;
          DMESTOQUE.TDesp.Last;
          QrAbertOrdem21.Preview;
        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 22 then
        begin
          DMESTOQUE.TSlave.Last;
          DMESTOQUE.TDesp.Last;
          if ((DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount) > 8) then
            QrAbertOrdem22.Preview //relatório de pagina toda
          else
            QrAbertOrdem22MeiaPagina.Preview; //meia pagina
        end;
      end
      else
      begin
        if (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10) or (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 17) or (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 18) then
        begin
          CompAbertura2vias1Click(Sender);
          Exit;
        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 11 then
        begin
          FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem11.frf');
          FSRel.ShowReport;
        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 12 then
        begin
          FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem12b.frf');
          FSRel.ShowReport;
        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 13 then
        begin
          DMESTOQUE.TSlave.Last;
          DMESTOQUE.TDesp.Last;
          if (DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount) > 10 then
            QrAbertOrdem13Completo.Preview
          else
            QrAbertOrdem13.Preview;
        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 16 then
          QrAbertOrdem16.Preview;

        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 19 then
          QrAbertOrdem19.Preview;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 6 then
        begin
          FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem6b.frf');
          FSRel.ShowReport;
        end;

        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 14 then
        begin
          DMESTOQUE.TSlave.Last;
          DMESTOQUE.TDesp.Last;
          if (DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount) > 12 then
            QrAbertOrdem14Completo.Preview
          else
            QrAbertOrdem14MeiaPagina.Preview;

        end;
        if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 15 then
        begin
          DMESTOQUE.TSlave.Last;
          DMESTOQUE.TDesp.Last;
          if (DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount) > 15 {12} then
            QrAbertOrdem15Completo.Preview
          else
            QrAbertOrdem15MeiaPagina.Preview;
        end;
      end;
      if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 17 then
      begin
        ImpCompModelo17;
        Exit;
      end;
      if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 18 then
      begin
        ImpCompModelo18;
        Exit;
      end;
      if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 20 then
      begin
        FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem20.frf');
        FSRel.ShowReport;
      end;
      if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 21 then
      begin
        DMESTOQUE.TSlave.Last;
        DMESTOQUE.TDesp.Last;
        QrAbertOrdem21.Preview;
      end;
      if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 22 then
      begin
        DMESTOQUE.TSlave.Last;
        DMESTOQUE.TDesp.Last;
        if ((DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount) > 8) then
          QrAbertOrdem22.Preview //relatório de pagina toda
        else
          QrAbertOrdem22MeiaPagina.Preview; //meia pagina
      end;
    end
    else
    begin
      ImpOrdCanvas('ABERTURA');
    end;
  end;
end;
//click popup garantia

procedure TFOrdemMec.Garantia1Click(Sender: TObject);
begin
  inherited;
  // dados da loja
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

  //dados da empresa
  FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', DMMACS.TLoja.FieldByname('cod_empresa').AsString, '');

  // seleciona dados de Ordem, Equipamento, Produto, cliente, funcionario e principalmente as garantias dos produtos
  DMESTOQUE.TRel.Close;
  DMESTOQUE.TRel.SQL.Clear;
  DMESTOQUE.TRel.SQL.Add('select ordem.cod_ordem, ordem.cod_vendedor, ordem.dtabert, ordem.dtfech, ordem.cod_funcionario, ordem.numero,');
  DMESTOQUE.TRel.SQL.Add('itprodord.cod_ordem, itprodord.qtd, itprodord.cod_estoque, itprodord.vlrunit, itprodord.total, itprodord.data_garantia, itprodord.KMGARANTIA,');
  DMESTOQUE.TRel.SQL.Add('estoque.cod_estoque, estoque.cod_subprod, subproduto.cod_subproduto, subproduto.descricao AS PRODUTO, subproduto.quantgarantia, subproduto.tipogarantia, SUBPRODUTO.CONTRINT, ');
  DMESTOQUE.TRel.SQL.Add('ordem.cod_cliente, cliente.cod_cliente, cliente.cod_pessoa, pessoa.cod_pessoa, pessoa.nome, pessoa.cpfcnpj,');
  DMESTOQUE.TRel.SQL.Add('vwfuncionario.cod_func, vwfuncionario.cod_pessoa, vwfuncionario.nome as NOMEFUNC,');
  DMESTOQUE.TRel.SQL.Add('equipamento.cod_equipamento, equipamento.descricao as EQUIPAMENTO, equipamento.placa, equipamento.num_frota, equipamento.KMATUAL');
  DMESTOQUE.TRel.SQL.Add('from ordem');
  DMESTOQUE.TRel.SQL.Add('left join itprodord on ordem.cod_ordem = itprodord.cod_ordem');
  DMESTOQUE.TRel.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
  DMESTOQUE.TRel.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
  DMESTOQUE.TRel.SQL.Add('left join cliente on ordem.cod_cliente = cliente.cod_cliente');
  DMESTOQUE.TRel.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
  DMESTOQUE.TRel.SQL.Add('left join vwfuncionario on ordem.cod_funcionario = vwfuncionario.cod_func');
  DMESTOQUE.TRel.SQL.Add('left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento');
  DMESTOQUE.TRel.SQL.Add('where ordem.cod_ordem = :codigo');
  DMESTOQUE.TRel.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
  DMESTOQUE.TRel.SQL.Add('order by subproduto.descricao');
  DMESTOQUE.TRel.Open;

  FSDSRel.DataSet := DMESTOQUE.TRel;
  FSRel.Dataset := FSDSRel;

  FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelGarantia.frf');
  FSRel.ShowReport;
end;
//click fiscal

procedure TFOrdemMec.BtnFiltrarClick(Sender: TObject);
var
  XCodPedidoGerador: Integer; // - 16/03/2009: guarda codigo do pedido
  XFlag: Boolean; // - 13/03/2009: verifica se deve imprimir NF depois do cupom conforme configurado em caixa
  XNumAuxECF: string; // - 16/03/2009: armazena numero auxiliar cupom
begin
  inherited;

  // - 16/03/2009: armazena codigo da ordem
  XCodPedidoGerador := XView.FieldByName('COD_ORDEM').AsInteger;

  if XView.FieldByName('status').AsString <> 'FECHADO' then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'É necessário que o pedido esteja fechado antes da impressão fiscal. Antes de fechar recomendamos que confira todas as informações do pedido.', '', 1, 1, False, 'a');
    Exit;
  end;

  // faz as verificações da nota fiscal e arquivo de relatorio
  if AnaliseDados('OS', DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger) = false then
    Exit;

  if FiltraTabela(DMServ.TOrd, 'ordem', 'COD_ordem', XView.FieldByName('COD_ORDEM').AsString, '') = True then
  begin

    if (DMServ.TOrd.FieldByName('FISCO').AsString <> 'ECF') and (DMServ.TOrd.FieldByName('FISCO').AsString <> 'NF') and (DMServ.TOrd.FieldByName('FISCO').AsString <> 'ECF/NF') then
    begin
      if Mensagem('A T E N Ç Ã O', 'Deseja realmente Imprimir Documento Fiscal para o pedido' + #13 + 'Nº ' + XView.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
      begin

        //    ATENÇÃO !!!
//  QUALQUER MODIFICAÇÃO NO CÓDIGO ABAIXO DEVERÁ SER ALTERADO TBM QUANDO FOR FECHADO UMA ORDEM E IMPRESSO O FISCAL

        FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');

        XFlag := True; // - 13/03/2009: deixar como true caso não for ECF poderá ser emitido NF igual

        // - 13/03/2009: add para impressoa de cupom fiscal
        if DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF' then
        begin
          // - 13/03/2009: Imprime Cupom Fiscal
          if ECF(XView.Fieldbyname('COD_ORDEM').AsInteger, 'ORDEM') = True then
          begin
            /// - 13/03/2009: REGISTRA COMANDO DO USUARIO
            Registra('ORDEM DE SERVIÇO', 'ECF', XView.FieldByName('dtabert').AsString, 'Nº ' + XView.FieldByName('NUMERO').AsString, 'Valor: ' + XView.FieldByName('total').AsString);
          end;

          // - 13/03/2009: se em caixa estiver configurado para emitir NF apos ECF
          if DMCAIXA.TCaixa.FieldByName('EMITNF').AsString = '1' then
          begin
            if Mensagem('A T E N Ç Ã O', 'Deseja Imprimir Nota Fiscal para o pedido' + #13 + 'Nº ' + XView.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 3 then
            begin
              XFlag := False;
            end;
          end;
        end;

        // - 13/03/2009: verificação ninja pra imprimir NF
        if ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') and (XFlag))) then
        begin
          //Atualiza o Valor da NF
          FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
          //VERIFICA SE JÁ EXISTE ALGUM DOCUMENTO IMPRESSO COM O MESMO NUMERO DE NOTA
          DMMACS.TALX.Close;
          DMMACS.TALX.SQL.Clear;
          DMMACS.TALX.SQL.Add('  select * from docfisord ');
          DMMACS.TALX.SQL.Add('   where docfisord.numdocfis=:CODIGO ');
          DMMACS.TALX.ParamByName('CODIGO').AsString := DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
          DMMACS.TALX.Open;
          if not DMMACS.TALX.IsEmpty then
          begin
            MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
            Exit;
          end;
          //VERIFICA C JAH EXISTE DOCUMENTO IMPRESSO EM COMPRAS
          DMMACS.TALX.Close;
          DMMACS.TALX.SQL.Clear;
          DMMACS.TALX.SQL.Add(' select * from docfis');
          DMMACS.TALX.SQL.Add(' where (docfis.numdocfis=:CODIGO)   AND (docfis.empemit=' + #39'1' + #39 + ')  ');
          DMMACS.TALX.ParamByName('CODIGO').AsString := DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
          DMMACS.TALX.Open;
          if not DMMACS.TALX.IsEmpty then
          begin
            MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
            Exit;
          end;

          FMenu.TIPOREL := 'NF';
          //Imprime NOTA Fiscal
          if Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?', '', 2, 3, False, 'c') = 2 then
          begin
            if NFOS(DMServ.TOrd.Fieldbyname('COD_ORDEM').AsInteger) = True then
            begin

              //REGISTRA COMANDO DO USUARIO
              Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº ' + XView.FieldByName('NUMERO').AsString, 'Valor: ' + XView.FieldByName('total').AsString);

              // - 16/03/2009:     qnd faz RecalFiscal em OS na função da NF tem mais procedimentos relacionados a impressao de ECF/NF

              // - 16/03/2009: se td der certo marcar como ECF/NF o Fisco
                                   // e se em caixa estiver configurado para emitir NF apos ECF
              if (DMCAIXA.TCaixa.FieldByName('EMITNF').AsString = '1') then
              begin
                try
                  // - 16/03/2009: filtra ordem
                  DMServ.TOrd.Close;
                  DMServ.TOrd.SQL.Clear;
                  DMServ.TOrd.SQL.Add('select * from ordem');
                  DMServ.TOrd.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
                  DMServ.TOrd.ParamByName('OLD_COD_ORDEM').AsInteger := XCodPedidoGerador;
                  DMServ.TOrd.Open;

                  // - 16/03/2009: verificar realmente se foi impresso o ECF do pedido
                  if (DMServ.TOrd.FieldByName('FISCO').AsString = 'ECF/NF') then
                  begin

                    // - 16/03/2009: recuperar numero fiscal  e  passar para numfiscal auxiliar

                    XNumAuxECF := DMServ.TOrd.FieldByName('NUMFISCALAUX').AsString;

                    {DMServ.TOrd.Close;
                    DMServ.TOrd.SQL.Clear;
                    DMServ.TOrd.SQL.Add('update ORDEM set FISCO = :FISCO');
                    DMServ.TOrd.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
                    DMServ.TOrd.ParamByName('OLD_COD_ORDEM').AsInteger := XCodPedidoGerador;
                    DMServ.TOrd.ParamByName('FISCO').AsString := 'ECF/NF';}

                    // - 16/03/2009: seta numero fiscal aux(ECF) na tabela fiscal de ordem
                    DMServ.TFiscOrd.Close;
                    DMServ.TFiscOrd.SQL.Clear;
                    DMServ.TFiscOrd.SQL.Add('update DOCFISORD set NUMFISCALAUX = :NUMFISCALAUX');
                    DMServ.TFiscOrd.SQL.Add('where COD_ORDEM = :COD_ORDEM');
                    DMServ.TFiscOrd.ParamByName('COD_ORDEM').AsInteger := XCodPedidoGerador;
                    DMServ.TFiscOrd.ParamByName('NUMFISCALAUX').AsString := XNumAuxECF;

                    //DMServ.TOrd.ExecSQL;
                    DMServ.TFiscOrd.ExecSQL;
                    DMServ.IBT.CommitRetaining;

                  end;
                except

                end;
              end;

              //INCREMENTA Nº NF
              try
                DMMACS.TEmpresa.Edit;
                DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger := DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger + 1;
                DMMACS.TEmpresa.Post;
                DMMACS.Transaction.CommitRetaining;
              except
                MessageDlg('Não foi possível atualizar o Nº da NF. Por favor faça isso manualmente.', mtWarning, [mbOK], 0);
                DMMACS.Transaction.RollbackRetaining;
              end;
            end;
          end;
        end;
        AtualizaGridConsulta('ORIGEM');
      end;
    end
    else
    begin
      Mensagem('OPÇÃO BLOQUEADA', 'Este pedido já passou por uma impressão fiscal!', '', 1, 1, False, 'a');
      Exit;
    end;
  end;
end;
//click botao fechar

procedure TFOrdemMec.BtnFechaPedClick(Sender: TObject);
begin
  inherited;

  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('FECHORD', 'M') = False then
    Exit;

  // repassando valor do cidgo da ordem para variavel
  XCOD_ORDEM := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;

  // BUSCANDO DADOS DA ORDEM
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');

  // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
  if DMServ.TOrd.FieldByName('EDIT').AsString = '1' then
  begin
    Mensagem('    A T E N Ç Ã O   ', 'A ORDEM ESTÁ SENDO USADA NO MOMENTO.' + #13 + 'Use Ctrl+D para destravar', '', 1, 1, false, 'I');
    Exit;
  end;

  if DMServ.TOrd.FieldByName('STATUS').AsString <> 'ABERTO' then
  begin
    Mensagem('    A T E N Ç Ã O   ', 'A ORDEM PRECISA ESTAR EM ABERTO PARA PODER SER FECHADA.', '', 1, 1, false, 'I');
    Exit;
  end;

  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

  if XView.IsEmpty then
  begin
    Mensagem('A T E N Ç Ã O', 'Não existe nenhuma ordem a ser fechada!', '', 1, 1, False, 'a');
    Exit;
  end;

  if XView.FieldByName('TOTAL').AsCurrency = 0 then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Esta ordem não contém produto ou serviços. Por isso não pode ser fechada!', '', 1, 1, False, 'i');
    Exit;
  end;

  if XView.FieldByName('STATUS').AsString <> 'FECHADO' then
  begin
    if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente fechar a ordem de serviço ' + XView.FieldByName('NUMERO').AsString, '', 2, 3, False, 'C') = 2 then
    begin

      // BUSCANDO DADOS DA ORDEM
      FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByname('cod_ordem').AsString, '');

      // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
      if DMServ.TOrd.FieldByName('EDIT').AsString = '1' then
      begin
        Mensagem('    A T E N Ç Ã O   ', 'A ordem está sendo usada no momento.' + #13 + 'Use Ctrl+D para destravar', '', 1, 1, false, 'I');
        Exit;
      end
      else
      begin
        DMServ.TOrd.Edit;
        DMServ.TOrd.FieldByName('EDIT').AsString := '1';
        DMServ.TOrd.Post;

        DMServ.IBT.CommitRetaining;
      end;

      CBGeraFinanceiro.Checked := False;
      CBGeraFinanceiro.Visible := False;

      CBPagamento.Text := 'Carteira';

      //Edmar - 16/02/2015 - atribui o total da ordem no campo
      edTotalRecebido.ValueNumeric := DMServ.TOrd.FieldByName('TOTORD').AsCurrency;

      {SOLICITAÇÃO 245}
      //Edmar - 21/01/2015 - Busca verificando se a pessoa possui crédito de antecipação
      DMServ.Alx.Close;
      DMServ.Alx.SQL.Clear;
      DMServ.Alx.SQL.Add(' SELECT PESSOA.VLRCREDITO CREDITO FROM VWCLIENTE ');
      DMServ.Alx.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = VWCLIENTE.COD_PESSOA ');
      DMServ.Alx.SQL.Add(' WHERE (VWCLIENTE.COD_CLIENTE = :CLIENTE) AND (PESSOA.VLRCREDITO IS NOT NULL) AND (PESSOA.VLRCREDITO > 0) ');
      DMServ.Alx.ParamByName('CLIENTE').AsInteger := DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger;
      DMServ.Alx.Open;

      XVLR_CREDITO_OS := DMServ.Alx.FieldByName('CREDITO').AsCurrency;

      lbCredito.Caption := 'O cliente possuí R$ ' + FormatFloat('###,###,##0.00', DMServ.Alx.FieldByName('CREDITO').AsCurrency) + ' de crédito de antecipação.';

      PFinanceiro.Visible := True;
      PFinanceiro.BringToFront;

      //LIMPA VALORES ANTIGOS
      FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '');
      if ControlAccess('GERAFINANC', '') = True then
        CBGeraFinanceiro.Visible := true;

      //FORMA DE PAGAMENTO
      XCOD_FORMPAG := DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
      if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '') = True then
      begin
        XCOD_FORMPAG := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
        FrmFormPag.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
        FrmFormPag.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      end
      else
      begin
        XCOD_FORMPAG := -1;
        FrmFormPag.EDCodigo.Text := '';
        FrmFormPag.EdDescricao.Text := '';
      end;

      if (Pos('CARTÃO', UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) or (Pos('CARTAO', UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) then
        CBPagamento.Text := 'Cartão';
      if (Pos('PIX', UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) or (Pos('PIX', UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) then
        CBPagamento.Text := 'Pix';
      XCOD_CONTA := -1;
      FrmConta.EdDescricao.Text := '';
      FrmConta.EDCodigo.Text := '';
      XCOD_CONTASERV := -1;
      FrmContaServ.EdDescricao.Text := '';
      FrmContaServ.EDCodigo.Text := '';
      //            DBDATAENTREGA.Clear;
      //            DBDATAENTREGA.Text := DateTostr(Date());
      //            DBHORAENTREGA.Text := TimeTostr(Time());
      if DMServ.TOrd.FieldByName('DTFECH').AsString <> '' then
        EdDtFech.Text := DMServ.TOrd.FieldByName('DTFECH').AsString
      else
        EdDtFech.Text := DateToStr(Date());

      if DMServ.TOrd.FieldByName('HRENTREGA').AsString <> '' then
        EdHoraFech.Text := DMServ.TOrd.FieldByName('HRENTREGA').AsString
      else
        EdHoraFech.Text := TimeToStr(time());

      FrmFormPag.EDCodigo.SetFocus;

      FrmFormPag.Refresh;
      FrmConta.EDCodigo.SetFocus;
      FrmContaServ.EDCodigo.SetFocus;
      TravarPaines(True);
      CBPagamento.SetFocus;
      FPFinanceiro.Refresh;

    end;

  end;

end;

// travar paines principais

procedure TFOrdemMec.TravarPaines(oi: boolean);
begin

  if oi then
  begin
    PConsulta.Enabled := False;
    PCadastro.Enabled := False;
  end
  else
  begin
    PConsulta.Enabled := True;
    PCadastro.Enabled := True;
  end;

end;
//click botao buscar forma de pagamento no painel financeiro

procedure TFOrdemMec.FrmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;
  if AbrirForm(TFFormPag, FFormPag, 1) = 'Selected' then
  begin
    XCOD_FORMPAG := DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
    FrmFormPag.EDCodigo.Text := DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
    FrmFormPag.EdDescricao.Text := DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
  end;
end;
//click botao limpar forma de pagamento no painel financeiro

procedure TFOrdemMec.FrmFormPagBTNMINUSClick(Sender: TObject);
begin
  inherited;
  XCOD_FORMPAG := -1;
  FrmFormPag.EDCodigo.Text := '';
  FrmFormPag.EdDescricao.Text := '';
end;

// click botao cancelar  painel financeiro

procedure TFOrdemMec.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
  PFinanceiro.Visible := False;
  PCadastro.Visible := False;
  PConsulta.Visible := True;
  PConsulta.BringToFront;

  TravarPaines(False);

  // BUSCANDO DADOS DA ORDEM
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, '');

  // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
  DMServ.TOrd.Edit;
  DMServ.TOrd.FieldByName('EDIT').AsString := '0';
  DMServ.TOrd.Post;
  DMServ.IBT.CommitRetaining;
end;
// key press  codigo pagamento painel financeiro

procedure TFOrdemMec.FrmFormPagEDCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    if FrmFormPag.EDCodigo.Text <> '' then
    begin
      //seleciona a forma de pagamento
      if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', FrmFormPag.EDCodigo.Text, '') then
      begin
        XCOD_FORMPAG := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
        FrmFormPag.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
        FrmFormPag.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      end
      else
      begin
        XCOD_FORMPAG := -1;
        FrmFormPag.EDCodigo.Text := '';
        FrmFormPag.EdDescricao.Text := '';
      end;
    end;
  end;
end;
//exit combo pagamento

procedure TFOrdemMec.CBPagamentoExit(Sender: TObject);
begin
  inherited;
  // se o pagamento for cartão abre as contas correntes
  if (CBPagamento.Text = 'Cartão') or (CBPagamento.Text = 'Pix') then
  begin
    if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '') then
    begin
      XCOD_FORMPAG := DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
      FrmFormPag.EDCodigo.Text := DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
      FrmFormPag.EdDescricao.Text := DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
    end;
    FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
    PBanco.Visible := true;
    PBanco.BringToFront;
    DBGCTA.SetFocus;
  end;

  {If (CBPagamento.Text = 'Banco') Or ((CBPagamento.Text = 'Pix')
  Then Begin
      FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
      PMostraCta.Visible := True;
      PMostraCta.BringToFront;
      PBanco.Enabled := True;
      PBanco.Visible := TRUE;
      PBanco.BringToFront;
      DBGCTA.SetFocus;
  End;}
  FrmFormPagExit(sender);
end;

//key down grid dos bancos

procedure TFOrdemMec.DBGCTAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  // se pressionado ENTER
  if Key = VK_Return then
  begin
    if not DMBANCO.WCtaCor.IsEmpty then //'se banco não estiver vazio
      XCOD_CONTABANCO := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
    else
      XCOD_CONTABANCO := -1;

    PBanco.Visible := False;
    PBanco.SendToBack;
    FrmConta.EDCodigo.SetFocus;
  end;

  // se rpessinado ESC
  if Key = VK_ESCAPE then
  begin
    PBanco.Visible := false;
    PBanco.SendToBack;
  end;
end;

//key press conta lançamento produtos

procedure TFOrdemMec.FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
var
  Oper: Char;
begin
  inherited;
  if Key = #13 then
  begin
    Oper := 'C';
    if FrmConta.EDCodigo.Text <> '' then
    begin
      //LIBERA TODAS OS ESTADOS PARA CONSUTA
      if filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = ' + FMenu.LCODEMPRESA.Caption + ') AND (NATUREZA = ' + #39 + Oper + #39 + ') AND (TIPO=' + #39 + 'N' + #39 + ') And (CLASSIFICACAO=' + #39 + FrmConta.EDCodigo.Text + #39 + ')') = True then
      begin
        XCOD_CONTA := DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
        FrmConta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
        FrmConta.EDCodigo.text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
      end
      else
      begin
        XCOD_CONTA := -1;
        FrmConta.EdDescricao.Text := '';
        FrmConta.EDCodigo.text := '';
      end;
    end
    else
    begin
      XCOD_CONTA := -1;
      FrmConta.EdDescricao.Text := '';
      FrmConta.EDCodigo.text := '';
    end;
  end;
end;

//botao consulta conta lançamento produtos

procedure TFOrdemMec.FrmContaBTNOPENClick(Sender: TObject);
var
  Oper: Char;
begin
  inherited;
  Oper := 'C';

  // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
  XTIPO_CONTA := 'C';

  //LIBERA TODAS OS ESTADOS PARA CONSUTA
  filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = ' + FMenu.LCODEMPRESA.Caption + ') AND (NATUREZA = ' + #39 + Oper + #39 + ') AND (TIPO=' + #39 + 'N' + #39 + ') ORDER BY CLASSIFICACAO');

  if AbrirForm(TFConsPlnCta, FConsPlnCta, 1) = 'Selected' then
  begin
    XCOD_CONTA := DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
    FrmConta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
    FrmConta.EDCodigo.text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
  end;
  FrmConta.Refresh;
end;
//limpar conta lançamento produtos

procedure TFOrdemMec.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
  //Codigo da tabela local =0
  XCOD_CONTA := -1;
  FrmConta.EDCodigo.Text := '';
  FrmConta.EdDescricao.Text := '';
  FrmConta.Refresh;
end;
//key press campo codigo conta laçamento serviço

procedure TFOrdemMec.FrmContaServEDCodigoKeyPress(Sender: TObject; var Key: Char);
var
  Oper: Char;
begin
  inherited;
  if Key = #13 then
  begin
    Oper := 'C';
    if FrmContaServ.EDCodigo.Text <> '' then
    begin
      //LIBERA TODAS OS ESTADOS PARA CONSUTA
      if filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = ' + FMenu.LCODEMPRESA.Caption + ') AND (NATUREZA = ' + #39 + Oper + #39 + ') AND (TIPO=' + #39 + 'N' + #39 + ') And (CLASSIFICACAO=' + #39 + FrmContaServ.EDCodigo.Text + #39 + ')') = True then
      begin
        XCOD_CONTASERV := DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
        FrmContaServ.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
        FrmContaServ.EDCodigo.text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
      end
      else
      begin
        XCOD_CONTASERV := -1;
        FrmContaServ.EdDescricao.Text := '';
        FrmContaServ.EDCodigo.text := '';
      end;
    end
    else
    begin
      XCOD_CONTASERV := -1;
      FrmContaServ.EdDescricao.Text := '';
      FrmContaServ.EDCodigo.text := '';
    end;
  end;
end;

//key press botao consulta conta laçamento serviço

procedure TFOrdemMec.FrmContaServBTNOPENClick(Sender: TObject);
var
  Oper: Char;
begin
  inherited;
  Oper := 'C';
  // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
  XTIPO_CONTA := 'C';

  //LIBERA TODAS OS ESTADOS PARA CONSUTA
  filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = ' + FMenu.LCODEMPRESA.Caption + ') AND (NATUREZA = ' + #39 + Oper + #39 + ') AND (TIPO=' + #39 + 'N' + #39 + ') ORDER BY CLASSIFICACAO');

  if AbrirForm(TFConsPlnCta, FConsPlnCta, 1) = 'Selected' then
  begin
    XCOD_CONTASERV := DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
    FrmContaServ.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
    FrmContaServ.EDCodigo.text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
  end;
  FrmConta.Repaint;
  FrmConta.Refresh;
end;

//key press limpar conta laçamento serviço

procedure TFOrdemMec.FrmContaServBTNMINUSClick(Sender: TObject);
begin
  inherited;
  //Codigo da tabela local =0
  XCOD_CONTASERV := -1;
  FrmContaServ.EDCodigo.Text := '';
  FrmContaServ.EdDescricao.Text := '';
  FrmConta.Refresh;
end;
//click botao ok no painel financeiro

procedure TFOrdemMec.BtnMoedaOKClick(Sender: TObject);
var
  XCodPedidoGerador: Integer; // - 16/03/2009: guarda codigo do pedido
  XFlag: Boolean; // - 13/03/2009: verifica se deve imprimir NF depois do cupom conforme configurado em caixa
  XNumAuxECF: string; // - 16/03/2009: armazena numero auxiliar cupom
  fentrada: file;
  numread, i, cResultado: integer;
  buf: char;
  s: string;
  util: OleVariant;
  LoteRPSTXT, nroLote, certificado, LoteRPSXML, cMunicipio, msgResultado, Erros, licenca: Widestring;
  CNPJRemetente, RazaoSocialRemetente: widestring;
  msg: string;
  Fsaida: TextFile;
begin
  inherited;
  //Jônatas 09/10/2013 - Seta variáveis de controle
  xExisteProd := true;
  xExisteServ := true;
  // seleciona todos os produtos da ordem de serviço
  try
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('select * from itprodord where itprodord.cod_ordem = :cod_ordem');
    DMESTOQUE.Alx1.ParamByName('cod_ordem').AsInteger := XCOD_ORDEM;
    DMESTOQUE.Alx1.Open;
    //Jônatas 09/10/2013 - verifica se existem produtos na ordem
    if DMESTOQUE.Alx1.IsEmpty then
    begin
      xExisteProd := false; //Jônatas 09/10/2013 - Não existem produtos
    end;
  except
    showmessage('Erro ao verificar produtos para tela do fiscal.');
    xExisteProd := false;
  end;

  // na tabela despadic eh feito uma verificação se possui servico relacionado a ordem
  try
    DMESTOQUE.Alx2.Close;
    DMESTOQUE.Alx2.SQL.Clear;
    DMESTOQUE.Alx2.SQL.Add('select * from despadic where (despadic.GERADOR=''ORDEM'') AND (DESPADIC.COD_GERADOR=:Codigo)  AND ((despadic.nfse_status<>' + '1' + ') or (despadic.nfse_status is null))');
    DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := XCOD_ORDEM;
    DMESTOQUE.Alx2.Open;
    //Jônatas 09/10/2013 - verifica se existem serviços na ordem
    if DMESTOQUE.Alx2.IsEmpty then
    begin
      xExisteServ := false; //Jônatas 09/10/2013 - Não existem serviços
    end;
  except
    showmessage('Erro ao verificar serviços para tela do fiscal.');
    xExisteServ := false;
  end;

  //Bloqueia opção a vista para determinadas formas de pagamento
  if ((CBPagamento.Text <> 'Carteira') and (CBPagamento.Text <> 'Chq. Terc.') and (CBPagamento.Text <> 'Banco') and (CBPagamento.Text <> 'Crédito') and (CBPagamento.Text <> 'Cartão')) and (CBPagamento.Text <> 'Pix') and (FrmFormPag.EdDescricao.tEXT = 'À VISTA') then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'A forma de pagamento ' + CBPagamento.Text + ' não permite fecharo pedido como À Vista!', '', 1, 1, False, 'i');
    CBPagamento.SetFocus;
    Exit;
  end;
  //valida quanto a forma de pagamento
  if CBPagamento.Text = '' then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe se o pagamento será feito em carteira ou cheque!', '', 1, 1, False, 'i');
    CBPagamento.SetFocus;
    Exit;
  end;
  {
  //valida quanto a data de entrega
   If DBDataEntrega.Text = '  /  /    '
       Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a data de entrega do equipamento/Veículo ao cliente!', '', 1, 1, False, 'i');
       DBDataEntrega.SetFocus;
       Exit;
   End;

  //valida quanto a hora de entrega
   If DBHoraEntrega.Text = ''
       Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a hora de entrega do equipamento/Veículo ao cliente!', '', 1, 1, False, 'i');
       DBHoraEntrega.SetFocus;
       Exit;
   End;
   }
  //valida quanto a Conta
  if XCOD_CONTA = -1 then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta para lançamento no financeiro!', '', 1, 1, False, 'i');
    FrmConta.EDCodigo.SetFocus;
    Exit;
  end;

  //Valida Quanto a conta
  if not FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', '', '', 'Where (COD_FILIAL=' + FMenu.LCODEMPRESA.Caption + ') And (CLASSIFICACAO=' + FrmConta.EDCodigo.Text + ')') then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta válida para lançamento no financeiro!', '', 1, 1, False, 'i');
    FrmConta.EDCodigo.SetFocus;
    Exit;
  end;

  //valida quanto a forma de pagamento
  if XCOD_FORMPAG = -1 then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma forma de pagamento para lançamento no financeiro!', '', 1, 1, False, 'i');
    FrmFormPag.EDCodigo.SetFocus;
    Exit;
  end;

  //Paulo 14/03/2011: Verifica se gera financeiro ou não(para controle de fatura)
  if CBGeraFinanceiro.Checked = True then
  begin
    XFatOrd := True;
  end
  else
  begin
    XFatOrd := False;
  end;

  //
  XCodPedidoGerador := DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
  {If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF'
  Then Begin
      // busca todos os dados fiscais do pedido da ordem
      DMServ.TFiscOrd.Close;
      DMServ.TFiscOrd.SQL.Clear;
      DMServ.TFiscOrd.SQL.Add('select * from docfisord where docfisord.cod_ordem = :codigo');
      DMServ.TFiscOrd.ParamByName('codigo').AsInteger := XCodPedidoGerador;
      DMServ.TFiscOrd.Open;
      If DMServ.TFiscOrd.IsEmpty
      Then Begin
       //SE NÃO FOI ENCONTRADO DADOS FISCAIS, O SISTEMA DEVE PEDIR SE CONTINUA OU NÃO
  If Mensagem('C O N F I R M A Ç Ã O', 'A Ordem esta sendo fechada sem os dados fiscais. Deseja Continuar', '', 2, 3, False, 'c')=3
          Then Begin
           Exit
          End
          Else Begin
              FechaOrd(DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, EdDtFech.Text);
          End;
      End
      Else Begin
          Try
              If  (DMServ.TFiscOrd.FieldByName('cod_Cfop').AsString<>'') and (DMServ.TFiscOrd.FieldByName('cod_Cfop').AsString<>'-1')
              Then Begin
                  FechaOrd(DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, EdDtFech.Text);
              End
              Else Begin
                  Mensagem('OPÇÃO BLOQUEADA', 'Não foi selecionado um CFOP para a Ordem!', '', 1, 1, False, 'i');
                  Exit;
              End
          Except
              Mensagem('OPÇÃO BLOQUEADA', 'Não foi selecionado um CFOP para a Ordem!', '', 1, 1, False, 'i');
              Exit;
          End;
      End;
  End
  Else Begin }
  XCOD_ORDEM := DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
  DMServ.TOrd.Edit;
  DMServ.TOrd.FieldByName('cod_formpag').AsInteger := XCOD_FORMPAG;
  DMServ.TOrd.Post;
  DMServ.IBT.CommitRetaining;
  if FechaOrd(DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, EdDtFech.Text) then
  begin
    //  QUALQUER MODIFICAÇÃO NO CÓDIGO ABAIXO DEVERÁ SER ALTERADO NO BOTÃO FISCAL TBM

    XFlag := True; // - 13/03/2009: deixar como true caso não for ECF poderá ser emitido NF igual

    // - 13/03/2009: add para impressoa de cupom fiscal
    if DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF' then
    begin
      // - 13/03/2009: Imprime Cupom Fiscal
      if ECF(XCodPedidoGerador, 'ORDEM') = True then
      begin
        /// - 13/03/2009: REGISTRA COMANDO DO USUARIO
        Registra('ORDEM DE SERVIÇO', 'ECF', XView.FieldByName('dtabert').AsString, 'Nº ' + XView.FieldByName('NUMERO').AsString, 'Valor: ' + XView.FieldByName('total').AsString);
      end;

      // - 13/03/2009: se em caixa estiver configurado para emitir NF apos ECF
      if DMCAIXA.TCaixa.FieldByName('EMITNF').AsString = '1' then
      begin
        if Mensagem('A T E N Ç Ã O', 'Deseja Imprimir Nota Fiscal para o pedido' + #13 + 'Nº ' + XView.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 3 then
        begin
          XFlag := False;
        end;
      end;
    end;

    //Edmar - 16/02/2015 - Se o total da ordem for menor que o valor recebido
    if DMServ.TOrd.FieldByName('TOTORD').AsCurrency < edTotalRecebido.ValueNumeric then
    begin
      FMenu.XTipoRel := 'R';
      //chama a tela de troco
      FLancTroco := TFLancTroco.Create(FLancTroco);
      FLancTroco.LancTroco(DMServ.TOrd.FieldByName('TOTORD').AsCurrency, edTotalRecebido.ValueNumeric, IntToStr(XCOD_CONTA), DMServ.TOrd.FieldByName('NUMERO').AsString, 'ORDEM',
        DMServ.TOrd.FieldByName('COD_ORDEM').AsString, CBPagamento.Text, DMServ.TOrd.FieldByName('NUMERO').AsString, DMServ.TOrd.FIELDBYNAME('COD_CLIENTE').AsInteger);
      FLancTroco.ShowModal;
      //ao final do processo, limpa a variavel auxiliar
      //para que não tenha problemas em outras partes do sistema
      FMenu.XTipoRel := '';
    end;

    // - 13/03/2009: verificação p/ imprimir NF
    if ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
      or ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') and (XFlag))) then
    begin
      //Atualiza o Valor da NF
      FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

      FMenu.TIPOREL := 'NF';
      //Imprime NOTA Fiscal
      //Jônatas 09/10/2013 - Verificar se existem produtos
      {If xExisteProd = true
          Then Begin }
      if Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?', '', 2, 3, False, 'c') = 2 then
      begin
        FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
        AbreFiscal;
        //If NFOS(XCodPedidoGerador)=True
        //Then Begin
           //REGISTRA COMANDO DO USUARIO
        Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº ' + XView.FieldByName('NUMERO').AsString, 'Valor: ' + XView.FieldByName('total').AsString);
        //End;
        // - 16/03/2009:     qnd faz RecalFiscal em OS na função da NF tem mais procedimentos relacionados a impressao de ECF/NF
        // - 16/03/2009: se td der certo marcar como ECF/NF o Fisco
        // e se em caixa estiver configurado para emitir NF apos ECF
        if (DMCAIXA.TCaixa.FieldByName('EMITNF').AsString = '1') then
        begin
          try
            // - 16/03/2009: filtra ordem
            DMServ.TOrd.Close;
            DMServ.TOrd.SQL.Clear;
            DMServ.TOrd.SQL.Add('select * from ordem');
            DMServ.TOrd.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
            DMServ.TOrd.ParamByName('OLD_COD_ORDEM').AsInteger := XCodPedidoGerador;
            DMServ.TOrd.Open;

            // - 16/03/2009: verificar realmente se foi impresso o ECF do pedido
            if (DMServ.TOrd.FieldByName('FISCO').AsString = 'ECF/NF') then
            begin

              // - 16/03/2009: recuperar numero fiscal  e  passar para numfiscal auxiliar

              XNumAuxECF := DMServ.TOrd.FieldByName('NUMFISCALAUX').AsString;

              DMServ.TOrd.Close;
              DMServ.TOrd.SQL.Clear;
              DMServ.TOrd.SQL.Add('update ORDEM set FISCO = :FISCO');
              DMServ.TOrd.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
              DMServ.TOrd.ParamByName('OLD_COD_ORDEM').AsInteger := XCodPedidoGerador;
              DMServ.TOrd.ParamByName('FISCO').AsString := 'ECF/NF';

              // - 16/03/2009: seta numero fiscal aux(ECF) na tabela fiscal de ordem
              DMServ.TFiscOrd.Close;
              DMServ.TFiscOrd.SQL.Clear;
              DMServ.TFiscOrd.SQL.Add('update DOCFISORD set NUMFISCALAUX = :NUMFISCALAUX');
              DMServ.TFiscOrd.SQL.Add('where COD_ORDEM = :COD_ORDEM');
              DMServ.TFiscOrd.ParamByName('COD_ORDEM').AsInteger := XCodPedidoGerador;
              DMServ.TFiscOrd.ParamByName('NUMFISCALAUX').AsString := XNumAuxECF;

              //DMServ.TOrd.ExecSQL;
              DMServ.TFiscOrd.ExecSQL;
              DMServ.IBT.CommitRetaining;

            end; //If (DMServ.TOrd.FieldByName('FISCO').AsString = 'ECF/NF')
          except

          end; //Try
        end; //If (DMCAIXA.TCaixa.FieldByName('EMITNF').AsString = '1')

        // - 14/04/2009: código abaixo comentado por já ser feito no ALXOR32
        //INCREMENTA Nº NF
        {Try
            DMMACS.TEmpresa.Edit;
            DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger+1;
            DMMACS.TEmpresa.Post;
            DMMACS.Transaction.CommitRetaining;
        Except
            MessageDlg('Não foi possível atualizar o Nº da NF. Por favor faça isso manualmente.', mtWarning, [mbOK], 0);
            DMMACS.Transaction.RollbackRetaining;
        End;}
      end
      else
      begin
        //Felipe - 19/02/2015 - Altera TIPOREL para vazio quando o usuário não desejar imprimir a Nota Fiscal
        //Felipe - 19/02/2015 - Dessa maneira o usuário pode imprimir o recibo no Contas a Receber
        FMenu.TIPOREL := '';
      end;
      //if Confirmação Impressora
      //End;
      //Verifica se existem serviços
      {If xExisteServ = true
          Then Begin
          //Jônatas 09/10/2013 - Chamar o fiscal de serviços independentemente do fiscal de produtos
          If DMMACS.TLoja.FieldByName('GERANFSE').AsString = '1'
          Then Begin
              //Paulo 19/04/2012: Emite nota fiscal de Nota fiscal de Serviços (NFSe)
              If Mensagem('C O N F I R M A Ç Ã O', 'NFS-e: A Impressora esta pronta?', '', 2, 3, False, 'c') = 2
                  Then Begin
                  FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
                  AbreFiscalServicos;
              End;
          End; //if DMMACS.TLoja.FieldByName('GERANFSE').AsString='1'
      End;}

    end; //if dos tipos de cupom
    //AtualizaGridConsulta('ORIGEM');
    //     FIM  ---------------------
  end;
  PFinanceiro.Visible := False;
  // BUSCANDO DADOS DA ORDEM
  DMServ.TOrd.Close;
  DMServ.TOrd.Open;
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, '');

  // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
  DMServ.TOrd.Edit;
  DMServ.TOrd.FieldByName('EDIT').AsString := '0';
  DMServ.TOrd.Post;
  DMServ.IBT.CommitRetaining;

  //Atualiza View da tela de Consulta
  AtualizaGridConsulta('ORIGEM');
  TravarPaines(False);
  PCadastro.Visible := False;
  PConsulta.Visible := true;
  PConsulta.BringToFront;

  //Paulo 10/08/2011: Para imprimir o Comp da OS
  FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
  CompdeAbertura1Click(Sender);
end;

//Fecha Ordem(joga no financeiro)

function TFOrdemMec.FechaOrd(CODPEDIDO: string; DTFECH: string): Boolean;
var
  ATUFINANC: Boolean; //controle financeiro foram efetivados
  XVLRDESP: Real; //O VLR DAS DESPESAS É DIV POR DOIS ENTRE PROD E SERV.
  //Edmar - 02/03/2015 - Variaveis auxiliares que armazenam os valores que devem ser subtraidos
  //ao valor total de produto ou de serviço no momento de lançar o valor no caixa ou a cta receber
  XVLR_PROD_OS, XVLR_SERV_OS: Real;
  XVLR_FINALPROD, XVLR_FINALSERV: Real;
  XVLR_DIFTROCO: Real;
  XVLR_RATEIO, XPARTES_RATEIO: Real;
begin
  //inicializa as variaveis como true, caso encontre erro na passagem da função eslas passaram a false
  FechaOrd := True;
  ATUFINANC := True;
  XVLR_PROD_OS := 0;
  XVLR_SERV_OS := 0;
  XVLR_DIFTROCO := 0;

  // repassando valor do cidgo da ordem para variavel
  XCOD_ORDEM := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;
  //ALEX: 20/04/2016 - Atualizamos o dmserv aqui para garantir que outras alterações (de outras máquinas) sejam pegas, e isso é feito aqui para que as váriaveis peguem o codigo da OS em questão
  DMServ.IBT.CommitRetaining;
  FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');

  // Tenta filtrar a ordem
  if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '') = True then
  begin
    XVLRDESP := DMServ.TOrd.FIELDBYNAME('TOTDESP').AsCurrency / 2;

    //Filtra loja
    FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

    //***********************************************//
    // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **//
    //***********************************************//
    //Filtra cliente
    FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.TOrd.FIELDBYNAME('COD_CLIENTE').AsString, '');
    if (CBGeraFinanceiro.Checked = False) then
    begin
      //Edmar - 02/03/2015 - Verifica se o pagamento é em Crédito e só assim baixa o credito do cliente se houver
      if CBPagamento.Text = 'Crédito' then
      begin
        {SOLICITAÇÃO 245}
          //Edmar - 02/03/2015 - Busca verificando se a pessoa possui crédito de antecipação
        DMServ.Alx.Close;
        DMServ.Alx.SQL.Clear;
        DMServ.Alx.SQL.Add(' SELECT VWCLIENTE.COD_CLIENTE, VWCLIENTE.COD_PESSOA, PESSOA.VLRCREDITO CREDITO FROM VWCLIENTE ');
        DMServ.Alx.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = VWCLIENTE.COD_PESSOA ');
        DMServ.Alx.SQL.Add(' WHERE (VWCLIENTE.COD_CLIENTE = :CLIENTE) AND (PESSOA.VLRCREDITO IS NOT NULL) AND (PESSOA.VLRCREDITO > 0) ');
        DMServ.Alx.ParamByName('CLIENTE').AsInteger := DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger;
        DMServ.Alx.Open;

        //se houver, subtrai esse credito com o valor total da ordem ou zera o credito
        if not DMServ.Alx.IsEmpty then
        begin
          try
            DMServ.TAlx1.Close;
            DMServ.TAlx1.SQL.Clear;

            //se o crédito for menor que o valor da ordem, apenas zerar o credito para não haver crédito negativo na pessoa
            if DMServ.Alx.FieldByName('CREDITO').AsCurrency <= DMServ.TOrd.FieldByName('TOTORD').AsCurrency then
              DMServ.TAlx1.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = 0 WHERE (PESSOA.COD_PESSOA = :PESSOA) ')
            else
            begin
              //se o credito for maior que o valor da ordem, subtrai um ao outro
              DMServ.TAlx1.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = PESSOA.VLRCREDITO - :VALOR_ORDEM WHERE (PESSOA.COD_PESSOA = :PESSOA) ');
              DMServ.TAlx1.ParamByName('VALOR_ORDEM').AsCurrency := DMServ.TOrd.FieldByName('TOTORD').AsCurrency;
            end;

            DMServ.TAlx1.ParamByName('PESSOA').AsInteger := DMServ.Alx.FieldByName('COD_PESSOA').AsInteger;
            DMServ.TAlx1.ExecSQL;

            //Edmar - 02/03/2015 - Após baixar o crédito do cliente, subtrai o valor da os com o valor do credito
            //para fazer o lançamento do valor correto, seja em caixa ou em contas a pagar

            //Se valor dos produtos for MENOR ou IGUAL o valor do crédito do cliente
            if (XVLR_CREDITO_OS <= DMServ.TOrd.FieldByName('TOTPROD').AsCurrency) and (XVLR_CREDITO_OS >= 0) then
            begin
              XVLR_PROD_OS := XVLR_CREDITO_OS; //ATRIBUI VALOR DO CRÉDITO
              XVLR_CREDITO_OS := XVLR_CREDITO_OS - DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
            end
            else
            begin
              XVLR_PROD_OS := DMServ.TOrd.FieldByName('TOTPROD').AsCurrency; //ATRIBUI O VALOR DO PRODUTO
              XVLR_CREDITO_OS := XVLR_CREDITO_OS - DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
            end;

            if (XVLR_CREDITO_OS <= DMServ.TOrd.FieldByName('TOTSERV').AsCurrency) and (XVLR_CREDITO_OS >= 0) then //SENÃO
              XVLR_SERV_OS := XVLR_CREDITO_OS //ATRIBUI VALOR DO CRÉDITO
            else
              XVLR_SERV_OS := DMServ.TOrd.FieldByName('TOTSERV').AsCurrency; //ATRIBUI VALOR DO SERVIÇO
          except
          end;
        end;
      end;
      //
      //Edmar - 03/03/2015 - Define os valores reais do produto e do serviço
      XVLR_FINALPROD := ((DMServ.TOrd.FieldByName('TOTORD').AsCurrency - (DMServ.TOrd.FieldByName('TOTSERV').Value + XVLRDESP) - XVLR_SERV_OS - XVLR_PROD_OS) + XVLRDESP);
      XVLR_FINALSERV := ((DMServ.TOrd.FieldByName('TOTORD').AsCurrency - DMServ.TOrd.FieldByName('TOTPROD').Value - XVLR_PROD_OS - XVLR_SERV_OS) + XVLRDESP);
      //calcula o valor do troco dado
      XVLR_DIFTROCO := edTotalRecebido.ValueNumeric - DMServ.TOrd.FieldByName('TOTORD').AsCurrency;

      if XVLR_FINALPROD > 0 then
        XVLR_FINALPROD := XVLR_FINALPROD + XVLR_DIFTROCO //se a ordem possuir produtos, soma o valor do troco nele
      else
        XVLR_FINALSERV := XVLR_FINALSERV + XVLR_DIFTROCO; //senão, inclui nos serviços
      //
      if CBPagamento.Text = 'Multiplo' then
      begin
        //tenta validar a data
        try
          StrToDate(EdDtFech.Text);
        except
          MessageDlg('Por favor, verifique a data de fechamento. Ela não passou na validação', mtWarning, [mbOK], 0);
          EdDtFech.SetFocus;
        end;

        //tenta fechar as contas
        //Edmar - 24/03/2015 - Trocada o campo que busca o valor total da ordem. agora deve buscar pelo valor recebido devido ao possivel troco dado.
        if FecConta('ORDEM', XCOD_ORDEM, edTotalRecebido.ValueNumeric {DMServ.TOrd.FieldByName('TOTORD').AsCurrency}, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency - XVLR_PROD_OS, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency - XVLR_SERV_OS, XCOD_CONTA, XCOD_CONTASERV, StrToDate(EdDtFech.Text)) = True then
          ATUFINANC := True
        else
          ATUFINANC := False;
      end
      else
      begin
        //Filtra Forma de Pagamento
        if FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCOD_FORMPAG), '') = True then
        begin // Encontrou forma de pagamento, continua processo
          //verifica moeda padrão para lançamento
          if DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA' then
          begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa

            if CBPagamento.Text = 'Cheque' then
            begin //LANÇAMENTO EM CONTROLE DE CHEQUE
              //Edmar - 02/03/2015 - Alterado o metodo que buscava o valor do produto e do serviço
              //agora o mesmo é buscado atraves da subtração entre total da ordem, serviços e valores adicionais
             //If LancChEnt(XCOD_CONTA, XCOD_CONTASERV, 'Fech. Ordem' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', (DMServ.TOrd.FieldByName('TOTPROD').AsCurrency + XVLRDESP), (DMServ.TOrd.FieldByName('TOTSERV').AsCurrency + XVLRDESP), '', '', 0, '', '', 'ORDEM', IntToStr(XCOD_ORDEM)) = True
              if LancChEnt(XCOD_CONTA, XCOD_CONTASERV, 'Fech. Ordem' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', XVLR_FINALPROD, XVLR_FINALSERV, '', '', 0, '', '', 'ORDEM', IntToStr(XCOD_ORDEM)) = True then
                ATUFINANC := True //informa que a atualização do financeiro foi efetivada
              else //informa que a finalização do financeiro falhou
                ATUFINANC := False;
            end;

            if CBPagamento.Text = 'Cartão' then
            begin
              //Edmar - 02/03/2015 - Alterado o metodo que buscava o valor do produto
                //agora o mesmo é buscado atraves da subtração entre total da ordem, serviços e valores adicionais
              //if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, XCOD_CONTA, '(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency + XVLRDESP, 'TOTPROD', StrToInt(CodPedido), 'ORDSERV', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = True then
              if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, XCOD_CONTA, '(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALPROD, 'TOTPROD', StrToInt(CodPedido), 'ORDSERV', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = True then
                //informa que a atualização do financeiro foi efetivada
                ATUFINANC := True
              else
              begin //informa que a finalização do financeiro falhou
                ATUFINANC := False;
                Exit;
              end;

              //if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, XCOD_CONTA, '(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency + XVLRDESP, 'TOTSERV', StrToInt(CodPedido), 'ORDSERV', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = TRUE
              if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, XCOD_CONTA, '(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALSERV, 'TOTSERV', StrToInt(CodPedido), 'ORDSERV', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = TRUE then
                ATUFINANC := True //informa que a atualização do financeiro foi efetivada
              else
                ATUFINANC := False; //informa que a finalização do financeiro falhou
            end;

            if CBPagamento.Text = 'Pix' then
            begin
              //Alex 05/01/2022: Tratativa para o caso de pix
              if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, XCOD_CONTA, '(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALPROD, 'TOTPROD', StrToInt(CodPedido), 'ORDSERV', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. Pix. ', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = True then
                //informa que a atualização do financeiro foi efetivada
                ATUFINANC := True
              else
              begin //informa que a finalização do financeiro falhou
                ATUFINANC := False;
                Exit;
              end;

              if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, XCOD_CONTA, '(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALSERV, 'TOTSERV', StrToInt(CodPedido), 'ORDSERV', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. Pix. ', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = TRUE then
                ATUFINANC := True //informa que a atualização do financeiro foi efetivada
              else
                ATUFINANC := False; //informa que a finalização do financeiro falhou
            end;

            if (CBPagamento.Text <> 'Cheque') and (CBPagamento.Text <> 'Cartão') and (CBPagamento.Text <> 'Pix') then
            begin
              //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A PRODUTOS
              if (DMServ.TOrd.FieldByName('TOTPROD').Value) > 0 then
              begin
                //If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, '(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTPROD').Value - XVLR_PROD_OS, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1') = True
                   //Edmar - 02/03/2015 - Alterado o metodo que buscava o valor do produto
                   //agora o mesmo é buscado atraves da subtração entre total da ordem, serviços e valores adicionais
                if LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, '(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALPROD, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1') = True then
                  ATUFINANC := True //informa que a atualização do financeiro foi efetivada
                else //informa que a finalização do financeiro falhou
                  ATUFINANC := False;
              end;

              //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A SERVIÇOS
              if (DMServ.TOrd.FieldByName('TOTSERV').Value + XVLRDESP) > 0 then
              begin
                //if LanCaixa(-1, DateToStr(Date()), XCOD_CONTASERV, '(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, (DMServ.TOrd.FieldByName('TOTSERV').Value + XVLRDESP) - XVLR_SERV_OS, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1') = True
                   //Edmar - 02/03/2015 - Alterado o metodo que buscava o valor do serviço
                   //agora o mesmo é buscado atraves da subtração entre total da ordem, serviços e valores adicionais
                if LanCaixa(-1, DateToStr(Date()), XCOD_CONTASERV, '(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALSERV, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1') = True then
                  ATUFINANC := True //informa que a atualização do financeiro foi efetivada
                else //informa que a finalização do financeiro falhou
                  ATUFINANC := False;
              end;
            end;
          end
          else
          begin //Não é à vista
            //Edmar - 02/03/2015 - Alterado o metodo que buscava o valor do produto e serviço
              //agora o mesmo é buscado atraves da subtração entre total da ordem, serviços e valores adicionais
              //if LancConta('ORDEM', StrToInt(CodPedido), DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, (DMServ.TOrd.FieldByName('TOTPROD').Value + XVLRDESP) - XVLR_PROD_OS, (DMServ.TOrd.FieldByName('TOTSERV').Value + XVLRDESP) - XVLR_SERV_OS, XCOD_CONTA, XCOD_CONTASERV, -1, 'Fech. Ordem de Serviço ' + DMServ.TOrd.FieldByName('NUMERO').AsString, XCOD_FORMPAG, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), XVLRCOMIS, EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString) = True then
            if LancConta('ORDEM', StrToInt(CodPedido), DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, XVLR_FINALPROD, XVLR_FINALSERV, XCOD_CONTA, XCOD_CONTASERV, -1, 'Fech. Ordem de Serviço ' + DMServ.TOrd.FieldByName('NUMERO').AsString, XCOD_FORMPAG, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), XVLRCOMIS, EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString) = True then
              ATUFINANC := True
            else
              ATUFINANC := False;
          end;
          //End
          //Else Begin // não encontrou moeda padrão
          //	ATUFINANC:=False;
          //End;
        end
        else
        begin //não esncontrou forma de pagamento, processo inválido retornar informações
          ATUFINANC := False;
        end;
      end;
    end
    else
    begin
      ATUFINANC := True;
    end;
    //Verifica se todas as atualizações foram possíveis
    if ATUFINANC = True then
    begin //então tenta-se confirmar operação
      try
        //calcula comissão
        //CalcComisTotVend;
              //FECHA PEDIDO
        DMServ.TOrd.Edit;
        DMServ.TOrd.FieldByName('STATUS').AsString := 'FECHADO';
        DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger := XCOD_FORMPAG;
        //XTabela.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
        DMServ.TOrd.FieldByName('DTENTREGA').AsDateTime := Date(); //DBDATAENTREGA.Text;
        DMServ.TOrd.FieldByName('TIPOPAG').AsString := CBPagamento.Text;
        DMServ.TOrd.FieldByName('DTFECH').AsString := EdDtFech.Text;
        DMServ.TOrd.FieldByName('HRENTREGA').AsString := EdHoraFech.Text;
        DMServ.TOrd.FieldByName('TIPOPAG').AsString := CBPagamento.Text;
        //                DMServ.TOrd.FieldByName('HRENTREGA').AsDateTime := Time(); //DBHORAENTREGA.Text;
        DMServ.TOrd.FieldByName('COMISSAO').AsCurrency := XVLRCOMIS;
        DMServ.TOrd.Post;
        DMServ.TOrd.ApplyUpdates;

        //EFETUA TRANSAÇÕES
        DMServ.IBT.CommitRetaining;
        DMBANCO.IBT.CommitRetaining;
        DMCAIXA.IBT.CommitRetaining;
        MDO.Transac.CommitRetaining;
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'ORDEM DE SERVIÇO FECHADA COM SUCESSO!', '', 1, 1, false, 'a');
        //Função para abrir gaveta
        //ecfOpenGaveta;

        //Atualiza ordens na tela de consulta
        AtualizaGridConsulta('');
      except
        Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
        DMCAIXA.IBT.RollbackRetaining;
        DMServ.IBT.RollbackRetaining;
        DMBANCO.IBT.RollbackRetaining;
        MDO.Transac.RollbackRetaining;
      end;
    end
    else
    begin
      Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
      DMCAIXA.IBT.RollbackRetaining;
      DMServ.IBT.RollbackRetaining;
      FechaOrd := False;
    end;

  end
  else
  begin //else de filtragem de pedido
    FechaOrd := false;
  end;
end;

//exit forma de pagamento

procedure TFOrdemMec.FrmFormPagExit(Sender: TObject);
begin
  inherited;
  //BUSCA CONTAS PADRÕES
  if FrmFormPag.EdDescricao.Text = 'À VISTA' then
  begin //Busca contas para À VISTA
    //PRODUTO
    if DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString <> '' then
    begin //se existir uma conta padrao configurada
      XCOD_CONTA := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
      FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTA), '');
      FrmConta.EDCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
      FrmConta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
    end
    else
    begin
      XCOD_CONTA := -1;
      FrmConta.EDCodigo.Text := '';
      FrmConta.EdDescricao.Text := '';
    end;
    //SERVIÇO
    if DMMACS.TLoja.FieldByName('PLNCTASERV').AsString <> '' then
    begin //se existir uma conta padrao configurada
      XCOD_CONTASERV := DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger;
      FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTASERV), '');
      FrmContaServ.EDCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
      FrmContaServ.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
    end
    else
    begin
      XCOD_CONTASERV := -1;
      FrmContaServ.EDCodigo.Text := '';
      FrmContaServ.EdDescricao.Text := '';
    end;
  end
  else
  begin //Busca conta para À Prazo
    //PRODUTO
    if DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString <> '' then
    begin //se existir uma conta padrao configurada
      XCOD_CONTA := DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
      FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCod_Conta), '');
      FrmConta.EDCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
      FrmConta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
    end
    else
    begin
      XCOD_CONTA := -1;
      FrmConta.EDCodigo.Text := '';
      FrmConta.EdDescricao.Text := '';
    end;
    //SERVIÇO
    if DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsString <> '' then
    begin //se existir uma conta padrao configurada
      XCOD_CONTASERV := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
      FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTASERV), '');
      FrmContaServ.EDCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
      FrmContaServ.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
    end
    else
    begin
      XCOD_CONTASERV := -1;
      FrmContaServ.EDCodigo.Text := '';
      FrmContaServ.EdDescricao.Text := '';
    end;
  end;
  if DMMACS.TLoja.FieldByName('FORCARCARTAO').AsString = '1' then
  begin
    if (Pos('CARTÃO', UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) or (Pos('CARTAO', UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) then
      CBPagamento.Text := 'Cartão';
    if (Pos('Pix', UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) or (Pos('PIX', UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) then
      CBPagamento.Text := 'Pix';

  end;
end;

procedure TFOrdemMec.b(Sender: TObject; ACanvas: TCanvas; ARect: TRect; State: TOwnerDrawState);
begin
  inherited;

end;
//click em cancelamentos

procedure TFOrdemMec.BtnCancelamentosClick(Sender: TObject);
begin
  inherited;
  PMCancelamento.Popup(Left + PConsulta.left + PBotoesConsulta.left + BtnCancelamentos.Left, top + PConsulta.Top + PBotoesConsulta.top + BtnCancelamentos.Top + BtnCancelamentos.Height);
end;

//click em cancelamento total

procedure TFOrdemMec.CancTotClick(Sender: TObject);
var
  XCodPedidoTroca: string;
  XCODLANEST: Integer;
  XQTDLOTE: Real;
begin
  // inherited;
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');
  if DMServ.WOrdem.FieldByName('STATUS').AsString = 'CANCELADO' then
  begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A ORDEM DE SERVIÇO SE ENCONTRA CANCELADA!', '', 1, 1, False, 'a');
    Exit;
  end;

  if DMServ.WOrdem.FieldByName('STATUS').AsString <> 'FECHADO' then
  begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A ORDEM DE SERVIÇO NÃO SE ENCONTRADA FECHADA!' + #13 + 'PRESSIONE O BOTÃO CONSULTAR PARA ALTERAR AS INFORMAÇÕES.', '', 1, 1, False, 'a');
    Exit;
  end;

  if Mensagem('A T E N Ç Ã O', 'DESEJA FAZER O CANCELAMENTO DA ORDEM:' + #13 + 'Nº ' + DMServ.WOrdem.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
  begin

    // BUSCANDO A ORDEM PARA LIBERAÇÃO DE CONSULTA
    FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');
    DMServ.TOrd.Edit;
    DMServ.TOrd.FieldByName('EDIT').AsString := '0';
    DMServ.TOrd.Post;
    DMServ.IBT.CommitRetaining;

    XCodPedidoTroca := DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;
    if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '') = True then
    begin
      //REGISTRA COMANDO DO USUARIO
      Registra('ORDEM', 'CANCELA ORD', DMServ.WOrdem.FieldByName('DTABERT').AsString, 'Nº ' + DMServ.TOrd.FieldByName('NUMERO').AsString + '-' + DMServ.WOrdem.FieldByName('CLIENTE').AsString, 'Vlr:' + DMServ.TOrd.FieldByName('totord').AsString + '-' + DMServ.WOrdem.FieldByName('equipamento').AsString);
      if CancelLanOrd(XCodPedidoTroca) = True then
      begin //Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
        DMServ.TOrd.EDIT;
        DMServ.TOrd.FieldByName('STATUS').AsString := 'CANCELADO';
        DMServ.TOrd.Post;
      end;
      XCodPedido := XView.FieldByName('COD_ORDEM').AsString;
      //INSERE COMANDOS PARA FILTRAR
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.qtd, itprodord.total, ');
      DMESTOQUE.Alx.sql.Add(' subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS PRIMCOD, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL2').AsString + ' AS SEGCOD, ');
      DMESTOQUE.Alx.SQL.Add('itprodord.desconto, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, subproduto.CONTRINT, itprodord.data, itprodord.operacao ');
      DMESTOQUE.Alx.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('Left Join ORDEM on itprodord.cod_Ordem = Ordem.cod_Ordem ');
      DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
      DMESTOQUE.Alx.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
      DMESTOQUE.Alx.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
      DMESTOQUE.Alx.SQL.Add('Where ORDEM.cod_ORDEM = :CODPEDVENDA ');
      DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString := DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;
      DMESTOQUE.Alx.Open;
      DMESTOQUE.ALX.First;
      while not DMESTOQUE.ALX.Eof do
      begin
        if DMESTOQUE.Alx.FieldByName('OPERACAO').AsString <> 'DVL' then
        begin
          if (DMESTOQUE.Alx.RecordCount <> 0) and (DMESTOQUE.Alx.FieldByName('OPERACAO').AsString <> 'DVL') then
          begin //caso a tabela esteja vasia não pode apagar
            //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
            FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.ALX.FieldByName('COD_ESTOQUE').AsString, '');
            FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.ALX.FieldByName('COD_ESTOQUE').AsString, '');
            FiltraTabela(DMServ.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.ALX.FieldByName('COD_ITPRODORD').AsString, '');
            DMServ.TPOrd.Edit;
            DMServ.TPOrd.FieldByName('OPERACAO').AsString := 'DVL';
            DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency := 0;
            DMServ.TPOrd.Post;
            XCODLANEST := InserReg(DMENTRADA.TLancENT, 'LANCENT', 'COD_LANENT');
            DMENTRADA.TLancENT.FieldByName('COD_LANENT').AsInteger := XCODLANEST;
            DMENTRADA.TLancENT.FieldByName('COD_ESTOQUE').AsString := DMESTOQUE.Testoque.FieldByName('COD_ESTOQUE').AsString;
            DMENTRADA.TLancENT.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
            DMENTRADA.TLancENT.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
            DMENTRADA.TLancENT.FieldByName('NUMNOTA').AsString := 'CLD OS-' + DMServ.WOrdem.FieldByName('NUMERO').AsString;
            DMENTRADA.TLancENT.FieldByName('MOTIVO').AsString := 'Canc. O.S: ' + DMServ.WOrdem.FieldByName('NUMERO').AsString + ' /Cliente: ' + DMServ.WOrdem.FieldByName('CLIENTE').AsString;
            DMENTRADA.TLancENT.FieldByName('DT_LANCAMENTO').AsString := DateToStr(Date());
            DMENTRADA.TLancENT.FieldByName('DT_ESTOQUE').AsString := DMServ.WOrdem.FieldByName('dtabert').AsString;
            DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency := DMServ.TPOrd.FieldByName('qtd').AsCurrency;
            DMENTRADA.TLancENT.FieldByName('QTDANT').AsString := DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
            DMENTRADA.TLancEnt.POST;
            DMESTOQUE.TEstoque.Edit;
            DMEstoque.TEstoque.FieldByName('ESTFISICO').Value := DMEstoque.TEstoque.FieldByName('ESTFISICO').Value + DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency;
            DMESTOQUE.TEstoque.POST;
            DMESTOQUE.TransacEstoque.CommitRetaining;
          end;
        end;
        DMESTOQUE.Alx.Next;
      end;
      try
        // EDITANDO A ORDEM PARA LIBERAR, PQ ELA PODE ESTAR BLOQUEADA
        FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
        DMServ.TOrd.Edit;
        DMServ.TOrd.FieldByName('EDIT').AsString := '0';
        DMServ.TOrd.Post;

        DMESTOQUE.TransacEstoque.CommitRetaining;
        DMENTRADA.IBT.CommitRetaining;
        DMSAIDA.IBT.CommitRetaining;
      except
        DMESTOQUE.TransacEstoque.RollbackRetaining;
        DMENTRADA.IBT.RollbackRetaining;
        DMSAIDA.IBT.RollbackRetaining;
      end;
      AtualizaGridConsulta('ORIGEM');
    end
    else
    begin
      Exit;
    end;
  end;
end;

//click cancelar fechamento

procedure TFOrdemMec.CancFechaClick(Sender: TObject);
var
  XCodPedidoTroca: string;
begin
  //inherited;
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');
  FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');

  if ((DMServ.WOrdem.FieldByName('numfiscal').AsString <> '0') and (DMServ.WOrdem.FieldByName('numfiscal').AsString <> '')) or (DMServ.TFiscOrd.FieldByName('NFSE_STATUSGERAL').AsString = '1') then
  begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta O.S. Passou por uma impressão fiscal e não pode mais ter seu fechamento cancelado.', '', 1, 1, False, 'a');
    Exit;
  end;

  if DMServ.WOrdem.FieldByName('STATUS').AsString <> 'FECHADO' then
  begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A ORDEM DE SERVIÇO NÃO SE ENCONTRADA FECHADA!' + #13 + 'PRESSIONE O BOTÃO CONSULTAR PARA ALTERAR AS INFORMAÇÕES.', '', 1, 1, False, 'a');
    Exit;
  end;

  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('CANCPEDFECH', 'M') = False then
    Exit;

  if Mensagem('A T E N Ç Ã O', 'DESEJA EFETUAR O CANCELAMENTO DA ORDEM DE SERVIÇO:' + #13 + 'Nº ' + DMServ.WOrdem.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
  begin

    // verifica se o caixa estah aberto
    if DMCAIXA.VerifAbCaixa = false then
    begin
      Mensagem('   A T E N Ç Ã O   ', 'CAIXA FECHADO. A ORDEM DE SERVIÇO NÃO PODE SER CANCELADA.', '', 1, 1, false, 'I');
      Exit;
    end;

    XCodPedidoTroca := DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;

    if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '') = True then
    begin
      //REGISTRA COMANDO DO USUARIO
      Registra('ORDEM', 'C. FECH ORD', DMServ.WOrdem.FieldByName('DTABERT').AsString, 'Nº ' + DMServ.TOrd.FieldByName('NUMERO').AsString + '-' + DMServ.WOrdem.FieldByName('CLIENTE').AsString, 'Vlr:' + DMServ.TOrd.FieldByName('totord').AsString + '-' + DMServ.WOrdem.FieldByName('equipamento').AsString);
      if (DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Multiplo') or (DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Pagamentos') then
      begin
        if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Pagamentos' then
        begin
          IniciaCancelamento('ORDEM', StrToInt(XCodPedidoTroca));
          DMESTOQUE.TransacEstoque.CommitRetaining;
          DMENTRADA.IBT.CommitRetaining;
          DMSAIDA.IBT.CommitRetaining;
          if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '') = True then
          begin
            BtnConsultar.Click;
          end;
        end
        else
        begin
          DMServ.TOrd.EDIT;
          DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
          DMServ.TOrd.FieldByName('EDIT').AsString := '0';
          DMServ.TOrd.Post;
          try
            DMESTOQUE.TransacEstoque.CommitRetaining;
            DMENTRADA.IBT.CommitRetaining;
            DMSAIDA.IBT.CommitRetaining;
            MessageDlg('Esta Ordem foi fechada com a opção Multipla para pagamento. Ela será gravada com status de aberto, porém seus lançamentos financeiros não serão cancelados.', mtWarning, [mbOK], 0);
          except
            DMESTOQUE.TransacEstoque.RollbackRetaining;
            DMENTRADA.IBT.RollbackRetaining;
            DMSAIDA.IBT.RollbackRetaining;
          end;
          if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '') = True then
          begin
            BtnConsultar.Click;
          end;
        end;
      end
      else
      begin
        if CancelLanOrd(XCodPedidoTroca) = True then
        begin //Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
          DMServ.TOrd.EDIT;
          DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
          DMServ.TOrd.FieldByName('EDIT').AsString := '0';
          DMServ.TOrd.Post;
        end;

        try
          //Edmar - 18/02/2015 - Ao cancelar o fechamento, verifica se o cliente possuí um valor de crédito em seu nome
          if FiltraTabela(DMFINANC.TCredito, 'CREDITO', 'COD_GERADOR', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, ' AND (TIPOGERADOR = ''LANCTRC'') ') then
          begin
            //filtra a view do cliente para buscar o codigo da pessoa
            FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.WOrdem.FieldByName('COD_CLIENTE').AsString, '');

            //atualiza o credito da pessoa se o valor atribuido na pessoa for maior ou igual ao valor do credito real
            DMPESSOA.TALX.Close;
            DMPESSOA.TALX.SQL.Clear;
            DMPESSOA.TALX.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = PESSOA.VLRCREDITO - :VALOR WHERE (PESSOA.COD_PESSOA = :PESSOA) AND (PESSOA.VLRCREDITO >= :VALOR) ');
            DMPESSOA.TALX.ParamByName('VALOR').AsCurrency := DMFINANC.TCredito.FieldByName('VALOR').AsCurrency;
            DMPESSOA.TALX.ParamByName('PESSOA').AsInteger := DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger;
            DMPESSOA.TALX.ExecSQL;

            //Deleta o registro de crédito da ordem de serviço geradora
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add(' DELETE FROM CREDITO WHERE (CREDITO.COD_CREDITO = :CODIGO) ');
            MDO.Query.ParamByName('CODIGO').AsInteger := DMFINANC.TCredito.FieldByName('COD_CREDITO').AsInteger;
            MDO.Query.ExecSQL;
          end;

          DMESTOQUE.TransacEstoque.CommitRetaining;
          DMENTRADA.IBT.CommitRetaining;
          DMSAIDA.IBT.CommitRetaining;
          MDO.Transac.CommitRetaining;
          DMPESSOA.TransacPessoa.CommitRetaining;
        except
          MessageDlg('Ocorreu um problema ao cancelar o fechamento da ordem de serviço. Todo o processo foi desfeito.', mtWarning, [mbOK], 0);
          DMESTOQUE.TransacEstoque.RollbackRetaining;
          DMENTRADA.IBT.RollbackRetaining;
          DMSAIDA.IBT.RollbackRetaining;
          MDO.Transac.RollbackRetaining;
          DMPESSOA.TransacPessoa.RollbackRetaining;
        end;

        if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '') = True then
        begin
          BtnConsultar.Click;
        end;
      end;
    end
    else
    begin
      Exit;
    end;
  end;

end;

//Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS

function TFOrdemMec.CancelLanOrd(CodPedido: string): Boolean;
var
  xcod_chequerec: string;
begin
  //Inicia resultado como falso
  Result := True;

  //filtra loja para capturar as configurações
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  //filtra DADOS DA VIEW
  DMServ.WOrdem.Close;
  DMServ.WOrdem.SQL.Clear;
  DMServ.WOrdem.SQL.Add('SELECT * FROM vwordem WHERE COD_ORDEM=:CODIGO');
  DMServ.WOrdem.ParamByName('CODIGO').AsString := CodPedido;
  DMServ.WOrdem.Open;
  if DMServ.WOrdem.IsEmpty then
  begin
    MessageDlg('O Registro de ordem não foi encontrado', mtWarning, [mbOK], 0);
    Exit;
  end;
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', CodPedido, '');
  FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '');

  if (DMServ.TOrd.FieldByName('TipoPag').AsString <> 'Multiplo') then
  begin
    //SE A FORMA DE PAGAMENTO FOR DIFERENTE DE MULTIPLO

  //CONTROLE QUE DELETA TODA A MOVIMENTAÇÃO QUANDO UMA ORDEM É FECHADO COM CHEQUE E É À VISTA.

    FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByName('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')');

    XCampo := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

    //seleciona cheques para serem apagados
    DMCAIXA.TAlx.close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('select * from chequerec');
    DMCAIXA.TAlx.SQL.Add('where chequerec.cod_movbanco = :CODMOV');
    DMCAIXA.TAlx.ParamByName('CODMOV').AsString := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
    DMCAIXA.TAlx.Open;

    if not DMCAIXA.TAlx.IsEmpty then
    begin
      xcod_chequerec := DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
      //seleciona lançamentos de caixa para serem deletados
      DMCAIXA.TLanCaixa.Close;
      DMCAIXA.TLanCaixa.SQL.Clear;
      DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
      DMCAIXA.TLanCaixa.SQL.Add('where ((lancaixa.tipogerador=' + #39 + 'LCHR' + #39 + ') or (lancaixa.tipogerador=' + #39 + 'DCHR' + #39 + ') or (lancaixa.tipogerador=' + #39 + 'MCHR' + #39 + ') AND (lancaixa.cod_gerador =:CODLANCA))');
      DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString := DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
      DMCAIXA.TLanCaixa.Open;
      DMCAIXA.TLanCaixa.First;

      //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
      if (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = false) then
      begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
        LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli. ' + DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');

      end;

      //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
      if DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption then
      begin
        while not DMCAIXA.TLanCaixa.Eof do
        begin
          DMCAIXA.TLanCaixa.Delete;
          DMCAIXA.TLanCaixa.ApplyUpdates;

        end;
      end;

      //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
      if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + xcod_chequerec + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = true then
      begin
        DMBANCO.TMovBanco.Delete;
        DMBANCO.TMovBanco.ApplyUpdates;
      end;

      //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
      if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMServ.TOrd.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')') = true then
      begin
        DMBANCO.TMovBanco.Delete;
        DMBANCO.TMovBanco.ApplyUpdates;
      end;

      //apaga cheques ligados ao pedido de venda
      if not DMCAIXA.TAlx.IsEmpty then
      begin
        DMBANCO.TChequeRec.Close;
        DMBANCO.TChequeRec.SQL.Clear;
        DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
        DMBANCO.TChequeRec.ParamByName('CODIGO').AsString := XCampo;
        DMBANCO.TChequeRec.ExecSQL;
        DMBANCO.IBT.CommitRetaining;
        DMBANCO.TChequeRec.Open;
        DMBANCO.TChequeRec.Close;
        DMBANCO.TChequeRec.SQL.Clear;
        DMBANCO.TChequeRec.SQL.Add('select * from chequerec');
        DMBANCO.TChequeRec.Open;
      end;
    end;

    //VERIRIFA SE A OS FOI À VISTA
    if DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA' then
    begin
      //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
      DMCAIXA.TLanCaixa.Close;
      DMCAIXA.TLanCaixa.SQL.Clear;
      DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR=' + #39 + 'ORDSERV' + #39 + ') AND (COD_GERADOR=:CODPEDIDO)');
      DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsString := CodPedido;
      DMCAIXA.TLanCaixa.Open;
      DMCAIXA.TLanCaixa.First;
      if not DMCAIXA.TLanCaixa.IsEmpty then
      begin //se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
        while not DMCAIXA.TLanCaixa.Eof do
        begin
          if LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli. ' + DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1') = True then
            MDO.Transac.CommitRetaining
              //DMCAIXA.IBT.CommitRetaining
          else
            Result := False;
          DMCAIXA.TLanCaixa.Next;
        end;
      end;

      if (DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Cartão') or (DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Pix') then
      begin
        if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTPROD' + #39 + ')') = true then
        begin
          DMBANCO.TMovBanco.Delete;
          DMBANCO.TMovBanco.ApplyUpdates;
        end;
        if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTSERV' + #39 + ')') = true then
        begin
          DMBANCO.TMovBanco.Delete;
          DMBANCO.TMovBanco.ApplyUpdates;
        end;

        DMBANCO.IBT.CommitRetaining;

      end;

    end
    else
    begin

      //SE A VENDA NÃO FOI À VISTA
      //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
      if FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = ' + #39 + 'ORD' + #39 + ') AND (COD_GERADOR=' + CodPedido + ')') = True then
      begin //se foi encontrado alguma conta
        //FILTRA PARCELAS
        if FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '') = True then
        begin //se foi encontrado alguma conta
          //PARA CADA PARCELA VERIFICA SE ESTA FECHADA
          DMCONTA.TParcCR.First;
          while not DMCONTA.TParcCR.Eof do
          begin
            //deleta lançamentos de caixa caso seja forma de pagamento carteira.
            if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Carteira' then
            begin
              FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '', '(lancaixa.tipogerador=' + #39 + 'CTAR' + #39 + ') AND (lancaixa.cod_gerador =' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39')');
              while not DMCAIXA.TLanCaixa.Eof do
              begin
                if LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli. ' + DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1') = True then
                  MDO.Transac.CommitRetaining
                    //DMCAIXA.IBT.CommitRetaining
                else
                  Result := False;
                DMCAIXA.TLanCaixa.Next;
              end;
            end;

            //filtra movimentação bancaria da parcela em questão
            FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + IntToStr(DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39')');
            //filtra cheque da parcela
            FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', '', '(COD_MOVBANCO = ' + #39 + IntToStr(DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger) + #39 + ')');

            //variável utilizada para apos apagar a movimentação bancaria sejam apagados os cheques ligados as parcelas
            XCampo := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

            //filtra os lançamentos de caixa ligados a parcela
            FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '', '(lancaixa.tipogerador=' + #39 + 'LCHR' + #39 + ') or (lancaixa.tipogerador=' + #39 + 'DCHR' + #39 + ') or (lancaixa.tipogerador=' + #39 + 'MCHR' + #39 + ') AND (lancaixa.cod_gerador =' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger) + #39')');

            if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR=' + #39 + 'CTARCH' + #39 + ') AND (COD_GERADOR=' + DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString + ')') = True then
            begin
              //se o codigo de abertura do caixa atual for diferente do codigo de lançamento de caixa da ordem e este cheque foi movimentado em caixa faz o estorno
              if (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = false) then
              begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
                LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. ' + DMSAIDA.TPedV.FieldByName('NUMPED').AsString + ' Cli. ' + DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1');
              end;
              DMCAIXA.IBT.CommitRetaining;
              MDO.Transac.CommitRetaining;

              DMCAIXA.TLanCaixa.First;

              while not DMCAIXA.TLanCaixa.Eof do
                //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
                if (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption) and (DMCAIXA.TLanCaixa.FieldByName('COD_GERADOR').AsString = DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString) then
                begin
                  if ((DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'LCHR') or (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'MCHR') or (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'DCHR')) then
                  begin
                    DMCAIXA.TLanCaixa.Delete;
                    DMCAIXA.TLanCaixa.ApplyUpdates;
                  end;
                end
                else
                  dmcaixa.TLanCaixa.Next;

              DMCAIXA.IBT.CommitRetaining;
            end;

            //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
            if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = true then
            begin
              DMBANCO.TMovBanco.First;
              while not DMBANCO.TMovBanco.Eof do
                DMBANCO.TMovBanco.Delete;
              DMBANCO.TMovBanco.ApplyUpdates;
              //end;
              DMBANCO.TMovBanco.Next;
            end;
            DMBANCO.IBT.CommitRetaining;

            //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
            if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')') = true then
            begin
              DMBANCO.TMovBanco.Delete;
              DMBANCO.TMovBanco.ApplyUpdates;
            end;
            DMBANCO.IBT.CommitRetaining;

            //apaga cheques ligados a ordem

            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
            DMBANCO.TChequeRec.ParamByName('CODIGO').AsString := XCampo;
            DMBANCO.TChequeRec.ExecSQL;
            DMBANCO.IBT.CommitRetaining;
            DMBANCO.TChequeRec.Open;
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('select * from chequerec');
            DMBANCO.TChequeRec.Open;
            // end;

            DMCONTA.TParcCR.Delete;
            DMCONTA.TParcCR.ApplyUpdates;
          end;
        end;
        DMCONTA.TCtaR.Delete;
        DMCONTA.TCtaR.ApplyUpdates;
        Result := true;
      end;
    end;
  end
  else
  begin
    //SE A FORMA DE PAGAMENTO FOR IGUAL A MULTIPLO

       //ENTRADA - verifica entrada
       //verifica se foi dado lançamentos de entrada
       //seleciona lançamentos de caixa para serem deletados
    DMCAIXA.TLanCaixa.Close;
    DMCAIXA.TLanCaixa.SQL.Clear;
    DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
    DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador=' + #39 + 'ORDEMENT' + #39 + ') AND (lancaixa.cod_gerador =:CODLANCA)');
    DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString := DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
    DMCAIXA.TLanCaixa.Open;
    DMCAIXA.TLanCaixa.First;

    //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
    if DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption = false then
    begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
      LanCaixa(-1, DateToStr(Date()), DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger, 'Cancel. fech. Ped. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli. ' + DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMENTEST', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
    end;

    //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
    if DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption then
    begin
      while not DMCAIXA.TLanCaixa.Eof do
      begin
        DMCAIXA.TLanCaixa.Delete;
        DMCAIXA.TLanCaixa.ApplyUpdates;

      end;
    end;

    //TROCO - Verifica extorno para troco
    //verifica se foi dado lançamentos de troco
    //seleciona lançamentos de caixa para serem deletados
    DMCAIXA.TLanCaixa.Close;
    DMCAIXA.TLanCaixa.SQL.Clear;
    DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
    DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador=' + #39 + 'ORDEMTRO' + #39 + ') AND (lancaixa.cod_gerador =:CODLANCA)');
    DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString := DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
    DMCAIXA.TLanCaixa.Open;
    DMCAIXA.TLanCaixa.First;

    //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
    if DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption = false then
    begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
      LanCaixa(-1, DateToStr(Date()), DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger, 'Cancel. fech. Ped. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli. ' + DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMTROEST', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
    end;

    //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
    if DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption then
    begin
      while not DMCAIXA.TLanCaixa.Eof do
      begin
        DMCAIXA.TLanCaixa.Delete;
        DMCAIXA.TLanCaixa.ApplyUpdates;
      end;
    end;

    MessageDlg('OS LANÇAMENTO EFETUADOS EM CHEQUE E A PRAZO NÃO SERÃO CANCELADOS', mtWarning, [mbOK], 0);
  end;
  try
    DMCONTA.IBT.CommitRetaining;
    DMBANCO.IBT.CommitRetaining;
    DMCAIXA.IBT.CommitRetaining;
    MDO.Transac.CommitRetaining;
  except
  end;
end;
//reimprimir nota fiscal

procedure TFOrdemMec.ReeimprimirNF1Click(Sender: TObject);
begin
  inherited;
  //AbrirForm(TFSENHA, FSENHA, 0);
  //repassa resultado da tela de autenticação de senha para as variáveis de controle
  PCadastro.SendToBack;
  PCadastro.Visible := False;
  XAlxResult := True;
  if XAlxResult = True then
  begin
    if XView.FieldByName('STATUS').AsString = 'ABERTO' then
    begin
      Mensagem('OPÇÃO BLOQUEADA', 'PARA EFETUAR A IMPRESSÃO FISCAL O PEDIDO DEVE ESTAR FECHADO.' + #13 + 'Antes de fechar confira todas as informações do pedido.', '', 1, 1, False, 'a');
      Exit;
    end;
    if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '') = True then
    begin
      if Mensagem('A T E N Ç Ã O', 'DESEJA IMPRIMIR O DOCUMENTO FISCAL PARA O PEDIDO:' + #13 + 'Nº ' + XView.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
      begin
        FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');

        if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
        begin
          DMServ.TFiscOrd.Close;
          DMServ.TFiscOrd.SQL.Clear;
          DMServ.TFiscOrd.SQL.Add(' Select * from docfisord where docfisord.cod_ordem=:Codigo ');
          DMServ.TFiscOrd.ParamByName('Codigo').AsInteger := XView.FieldByName('COD_ORDEM').AsInteger;
          DMServ.TFiscOrd.Open;
          if not DMServ.TFiscOrd.IsEmpty then
          begin
            if (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger = 1) or (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger = 3) then
            begin
              //Se Documento Fiscal Enviado ou Cancelado
              MessageDlg('Esta O.S já gerou uma Nota Fiscal Eletrônica enviada e recebida pelo sefaz. Sendo assim não pode mais ser transmitida.', mtWarning, [mbOK], 0);
              Exit;
            end;
          end;

          //REIMPRIME NOTA FISCAL
          FMenu.TIPOREL := 'RNF';
          if MessageDlg('Impressora NF Pronta?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
          begin
            FMenu.TIPOREL := 'NF';
            AbreFiscal;
            Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº ' + XView.FieldByName('NUMERO').AsString, 'Valor: ' + XView.FieldByName('total').AsString);
          end;
        end;
        // - 13/03/2009: add para impressoa de cupom fiscal
        if DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF' then
        begin
          if Mensagem('A T E N Ç Ã O', 'IMPRIMIR ECF PARA A ORDEM Nº ' + XView.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
          begin
            // - 13/03/2009: Imprime Cupom Fiscal
            if ECF(XView.Fieldbyname('COD_ORDEM').AsInteger, 'ORDEM') = True then
            begin
              /// - 13/03/2009: REGISTRA COMANDO DO USUARIO
              Registra('ORDEM DE SERVIÇO', 'ECF', XView.FieldByName('dtabert').AsString, 'Nº ' + XView.FieldByName('NUMERO').AsString, 'Valor: ' + XView.FieldByName('total').AsString);
            end;
          end;
          // - 13/03/2009: se em caixa estiver configurado para emitir NF apos ECF
          if DMCAIXA.TCaixa.FieldByName('EMITNF').AsString = '1' then
          begin
            if Mensagem('A T E N Ç Ã O', 'Deseja Imprimir Nota Fiscal para o pedido' + #13 + 'Nº ' + XView.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
            begin
              FMenu.TIPOREL := 'RNF';
              //Imprime NOTA Fiscal
              if Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?', '', 2, 3, False, 'c') = 2 then
              begin
                if NFOS(XView.Fieldbyname('COD_ORDEM').AsInteger) = True then
                begin
                  //REGISTRA COMANDO DO USUARIO
                  Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº ' + XView.FieldByName('NUMERO').AsString, 'Valor: ' + XView.FieldByName('total').AsString);
                end;
              end;
            end;
          end;
        end;

        AtualizaGridConsulta('');
      end;
    end;
  end;
end;
//click exportar pedido popup

procedure TFOrdemMec.ExportarPedido1Click(Sender: TObject);
begin
  inherited;
  inherited;
  // SELECIONANDO AS ORDENS QUE AINDA ESTAO ABERTAS E FORAM SELECIONADAS E QUE AINDA NAO FORAM EXPORTADAS
  DMServ.Alx.Close;
  DMServ.Alx.SQL.Clear;
  DMServ.Alx.SQL.Add('select count(ordem.cod_ordem) as TOTAL from ordem where (ordem.exp = ' + #39 + 'X' + #39 + ')');
  DMServ.Alx.SQL.Add('and (ordem.status = ' + #39 + 'ABERTO' + #39 + ') and ((ordem.exportado = ' + #39 + '' + #39 + ') or (ordem.exportado is null) or (ordem.exportado = ' + #39 + '#' + #39 + '))  and (ordem.exp = ' + #39 + 'X' + #39 + ')');
  DMServ.Alx.Open;

  // VERIFICA SE EXISTE NO MINIMO UMA ORDEM FILTRADA
  if DMServ.Alx.FieldByName('TOTAL').AsInteger > 0 then
  begin
    if DMServ.Alx.FieldByName('TOTAL').AsInteger = 1 then
    begin

      // COMO VAI SER UMA UNICA ORDEM A SER EXPORTADA, EH FEITO ESSA SQL PARA BUSCAR O "NUMERO" QUE SERA EXIBIDO NA MENSAGEM
      DMServ.TOrd.Close;
      DMServ.TOrd.SQL.Clear;
      DMServ.TOrd.SQL.Add('select * from ordem where (ordem.exp = ' + #39 + 'X' + #39 + ')');
      DMServ.TOrd.Open;

      if Mensagem('Exportação de Ordem de Serviço', 'Deseja realmente exporta a Ordem de Serviço nº' + DMServ.TOrd.FieldByname('NUMERO').AsString + ' ?', '', 2, 3, false, 'I') = 2 then
      begin
        // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
        Exporta_OrdensServico;
      end
      else
      begin
        Exit;
      end;
    end
    else
    begin
      if Mensagem('Exportação de Ordem de Serviço', 'Deseja realmente exportar as ' + DMServ.Alx.FieldByName('TOTAL').AsString + ' Ordens de Serviço selecionadas ?', '', 2, 2, false, 'I') = 2 then
      begin
        // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
        Exporta_OrdensServico;
      end
      else
      begin
        Exit;
      end;
    end;
    AtualizaGridConsulta('ORIGEM');
  end
  else
  begin
    Mensagem('   A T E N Ç Ã O   ', 'Não há Ordem de Serviço aberta para exportação', '', 1, 1, false, 'A');
  end;
end;

// exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc

procedure TFOrdemMec.Exporta_OrdensServico;
var
  XCOD_ORDEM, XCOD_SUBPRODUTO, XCOD_ESTOQUE, XCOD_PRODUTO, XCOD_GRUPO, XCOD_SUBGRUPO, XCOD_CST, XCOD_AUX: INTEGER;
begin

  try
    // Conecta banco de ddos para exportar Ordens
    PConsulta.Refresh;
    PExp.Visible := true;
    PExp.BringToFront;
    PBExport.Min := 0;
    PBExport.Max := 100;
    PBExport.Position := 50;
    LBCONEXAO.Caption := 'ESTABELECENDO CONEXÃO COM BANCO ... ';
    PExp.Refresh;
    if ConectaBancoDados(RecuperaCaminhoBancoExportaXml) = true then
    begin
      PConsulta.Refresh;
      PExp.Visible := true;
      PExp.BringToFront;
      PExp.Refresh;
      PBExport.Position := 100;

      LBCONEXAO.Caption := 'PREPARANDO ORDENS PARA SEREM EXPORTADAS ... ';
      PExp.Refresh;

      //SQL PARA INDICAR NA EMPRESA QUE ESTA SENDO EXPORTADO ORDENS
      DMEXPORTA.Alx.Close;
      DMEXPORTA.Alx.SQL.Clear;
      DMEXPORTA.Alx.SQL.Add('update empresa set empresa.emexporta=' + #39 + '1' + #39);
      DMEXPORTA.Alx.ExecSQL;
      DMEXPORTA.IBTExporta.CommitRetaining;

      // se refere ás posições da barra de progressão
      XContador := 0;

      // VERIFICA SE EXISTEM MAIS DE UMA ORDEM A SEREM EXPORTADAS
      // O SISTEMA NÃO PERMITIRÁ EXPORTAR MAIS DE UMA ORDEM
      DMServ.Alx.Close;
      DMServ.Alx.SQL.Clear;
      DMServ.Alx.SQL.Add('select count(ordem.cod_ordem) as REGISTRO FROM ordem where (ordem.exp = ' + #39 + 'X' + #39 + ')');
      DMServ.Alx.SQL.Add('and (ordem.status = ' + #39 + 'ABERTO' + #39 + ')'); //and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null)) and (ordem.exp = ' + #39 + '#' + #39 + ')');
      DMServ.Alx.Open;
      {If DMServ.Alx.FieldByName('REGISTRO').AsInteger > 1
      Then Begin
          MessageDlg('Por favor, selecione apenas uma ordem para exportação.', mtWarning, [mbOK], 0);
       // OCULTANDO BARRA DE PROGRESSAO
          PExp.Visible := FALSE;
          PExp.SendToBack;
          Exit;
      End;
       }
   // seleciona no banco local todas as ordens de serviço que fram selecionadas e que ainda nao foram exportadas - banco local
      DMServ.TOrd.Close;
      DMServ.TOrd.SQL.Clear;
      DMServ.TOrd.SQL.Add('select * from ordem where (ordem.exp = ' + #39 + 'X' + #39 + ')');
      DMServ.TOrd.SQL.Add('and (ordem.status = ' + #39 + 'ABERTO' + #39 + ')'); //and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null)) and (ordem.exp = ' + #39 + '#' + #39 + ')');
      DMServ.TOrd.Open;

      // seleciona o numero de produtos na ordem de servico para servir de base para Barra de Progressão
      DMSAIDA.TAlx.Close;
      DMSAIDA.TAlx.SQL.Clear;
      DMSAIDA.TAlx.SQL.Add('select count(itprodord.cod_itprodord) as TOTAL_PROD from itprodord');
      DMSAIDA.TAlx.SQL.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');
      DMSAIDA.TAlx.SQL.Add('where ((ordem.exportado = ' + #39 + '' + #39 + ') OR (ORDEM.EXPORTADO IS NULL)) and (ordem.exp = ' + #39 + 'X' + #39 + ')');
      DMSAIDA.TAlx.Open;
      // seleciona o numero de servico na ordem para servir de base para barra de prograessao
      DMServ.TAlx1.Close;
      DMServ.TAlx1.SQL.Clear;
      DMServ.TAlx1.SQL.Add('select count(despadic.cod_despadic) as TOTAL_SERV from despadic');
      DMServ.TAlx1.SQL.Add('left join ordem on despadic.cod_gerador = ordem.cod_ordem');
      DMServ.TAlx1.SQL.Add('where ((ordem.exportado = ' + #39 + '' + #39 + ') OR (ORDEM.EXPORTADO IS NULL)) and (ordem.exp = ' + #39 + 'X' + #39 + ')');
      DMServ.TAlx1.Open;

      // dados do componente ProgreeBar
      XContador := 0;
      PBExport.Min := 0;
      PBExport.Max := 0;
      DMServ.TOrd.First;
      while not DMServ.TOrd.Eof do
      begin
        PBExport.Max := PBExport.Max + 1;
        DMServ.TOrd.Next;
      end;

      //LOCALIZA CÓDIGOS DE SUBPRODUTO E PRODUTO
      DMEXPORTA.Alx.Close;
      DMEXPORTA.Alx.SQL.Clear;
      DMEXPORTA.Alx.SQL.Add('  Select max(subproduto.cod_subproduto) as codigo from subproduto ');
      DMEXPORTA.Alx.Open;
      XCOD_SUBPRODUTO := DMEXPORTA.Alx.FieldByName('codigo').AsInteger + 1;
      DMEXPORTA.Alx.Close;
      DMEXPORTA.Alx.SQL.Clear;
      DMEXPORTA.Alx.SQL.Add('  Select max(estoque.cod_estoque) as codigo from estoque ');
      DMEXPORTA.Alx.Open;
      XCOD_ESTOQUE := DMEXPORTA.Alx.FieldByName('codigo').AsInteger + 1;
      DMEXPORTA.TCodigo.Edit;
      DMEXPORTA.TCodigo.FieldByName('cod_subproduto').AsInteger := XCOD_SUBPRODUTO;
      DMEXPORTA.TCodigo.FieldByName('cod_estoque').AsInteger := XCOD_ESTOQUE;
      DMEXPORTA.TCodigo.Post;

      DMEXPORTA.IBTExporta.CommitRetaining;

      PBExport.Position := XContador;
      DMServ.TOrd.First;
      while not DMServ.TOrd.Eof do
      begin
        DMPESSOA.WCliente.Close;
        DMPESSOA.WCliente.SQL.Clear;
        DMPESSOA.WCliente.SQL.Add(' select * FROM vwcliente WHERE vwcliente.cod_cliente=:CODIGO ');
        DMPESSOA.WCliente.ParamByName('CODIGO').AsInteger := DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger;
        DMPESSOA.WCliente.Open;
        if ValidaCGC(DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString) = False then
        begin
          if ValidCPF(DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString) = False then
          begin
            MessageDlg('O Cliente não possui CPF/CNPJ Válido.' + #13 + #10 + 'A ordem não será exportada', mtWarning, [mbOK], 0);
            PExp.Visible := FALSE;
            PExp.SendToBack;
            exit;
          end;
        end;
        XContador := XContador + 1;
        LBCONEXAO.Caption := 'Enviando Ordem (' + IntToStr(XContador) + '/' + IntToStr(PBExport.Max) + ') ... ';
        PBExport.Position := XContador;
        PExp.Refresh;

        XCOD_ORDEM := 0;
        try
          DMEXPORTA.Alx.Close;
          DMEXPORTA.Alx.SQL.Clear;
          DMEXPORTA.Alx.SQL.Add(' select gen_id(gen_ordem_id, 0) as codigo from rdb$database ');
          DMEXPORTA.Alx.Open;
          //ALEX - 16/03/2009: APÓS INSERIR O REGISTRO RECEBE O CAMPO AUTO INCREMENTO
          XCOD_ORDEM := DMEXPORTA.Alx.FieldByName('CODIGO').AsInteger + 1;
        except
          MessageDlg('FALHA 530', mtWarning, [mbOK], 0);
        end;
        try

          DMEXPORTA.TOrd.Close;
          DMEXPORTA.TOrd.SQL.Clear;
          DMEXPORTA.TOrd.SQL.Add('insert into ordem');
          DMEXPORTA.TOrd.SQL.Add('(COD_CLIENTE, COD_EQUIPAMENTO, COD_VENDEDOR, DTABERT, HRABERT,');
          DMEXPORTA.TOrd.SQL.Add(' COD_FUNCIONARIO, OBSERVACAO, STATUS, NUMERO, DESCONTO, COD_USUARIO, TOTPROD, TOTSERV,');
          DMEXPORTA.TOrd.SQL.Add('TOTORD, COD_LOJA, COD_FORMPAG, COMISSAO, GARANTIA,');
          DMEXPORTA.TOrd.SQL.Add('TOTDESP, COMSOBVENDA, DTFECH, DESCPROD, DESCSERV, FISCO, NUMFISCAL, TIPOPAG, BOX, EXP, EXPORTADO, TOTKM)');
          DMEXPORTA.TOrd.SQL.Add('values');
          DMEXPORTA.TOrd.SQL.Add('(:COD_CLIENTE, :COD_EQUIPAMENTO, :COD_VENDEDOR, :DTABERT, :HRABERT,');
          DMEXPORTA.TOrd.SQL.Add(' :COD_FUNCIONARIO, :OBSERVACAO, :STATUS, :NUMERO, :DESCONTO, :COD_USUARIO, :TOTPROD, :TOTSERV,');
          DMEXPORTA.TOrd.SQL.Add(':TOTORD, :COD_LOJA, :COD_FORMPAG, :COMISSAO, :GARANTIA,');
          DMEXPORTA.TOrd.SQL.Add(':TOTDESP, :COMSOBVENDA, :DTFECH, :DESCPROD, :DESCSERV, :FISCO, :NUMFISCAL, :TIPOPAG, :BOX, :EXP, :EXPORTADO, :TOTKM)');
          // verifica se o cliente esta cadastrado no banco, se nao tiver jah cadastra na hora
          DMEXPORTA.TOrd.ParamByName('COD_CLIENTE').AsInteger := VerificaCliente(DMServ.TOrd.FieldByname('COD_CLIENTE').AsInteger);
          // VERIFICA SE NO BANCO DE FORA ESTAH CADASTRADO O EQUIPAMENTO DA ORDEM, SE NAO TIVER JAH CADASTRA
          DMEXPORTA.TOrd.ParamByName('COD_EQUIPAMENTO').AsInteger := VerificaEquipamento(DMServ.TOrd.FieldByname('cod_equipamento').AsString);
          // verifica se jah existe o funcionario no banco de fora, e se nao estiver jah cadastra na hora
          DMEXPORTA.TOrd.ParamByName('COD_VENDEDOR').AsInteger := VerificaFuncionario('VENDEDOR', DMServ.TOrd.FieldByName('COD_VENDEDOR').AsString);
          DMEXPORTA.TOrd.ParamByName('DTABERT').AsDate := DMServ.TOrd.FieldByName('DTABERT').AsDateTime;
          DMEXPORTA.TOrd.ParamByName('HRABERT').AsTime := DMServ.TOrd.FieldByName('HRABERT').AsDateTime;
          // verifica se jah existe o funcionario no banco de fora, e se nao estiver jah cadastra na hora
          DMEXPORTA.TOrd.ParamByName('COD_FUNCIONARIO').AsInteger := VerificaFuncionario('FUNCIONARIO', DMServ.TOrd.FieldByName('COD_FUNCIONARIO').AsString);
          DMEXPORTA.TOrd.ParamByName('OBSERVACAO').AsString := DMServ.TOrd.FieldByName('OBSERVACAO').AsString;
          DMEXPORTA.TOrd.ParamByName('STATUS').AsString := 'ABERTO';
          DMEXPORTA.TOrd.ParamByName('NUMERO').AsString := DMServ.TOrd.FieldByName('NUMERO').AsString;
          DMEXPORTA.TOrd.ParamByName('TOTKM').AsString := DMServ.TOrd.FieldByName('TOTKM').AsString;
          DMEXPORTA.TOrd.ParamByName('DESCONTO').AsCurrency := DMServ.TOrd.FieldByName('DESCONTO').AsCurrency;
          // passando o parametro "USUARIO" a função irah retornar o codigo de usuario do banco de fora, e nao o cod_funcionario
          DMEXPORTA.TOrd.ParamByName('COD_USUARIO').AsInteger := -1; //VerificaFuncionario('USUARIO',DMServ.TOrd.FieldByName('COD_USUARIO').AsString);
          DMEXPORTA.TOrd.ParamByName('TOTPROD').AsCurrency := DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
          DMEXPORTA.TOrd.ParamByName('TOTSERV').AsCurrency := DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;
          DMEXPORTA.TOrd.ParamByName('TOTORD').AsCurrency := DMServ.TOrd.FieldByName('TOTORD').AsCurrency;
          DMEXPORTA.TOrd.ParamByName('COD_LOJA').AsInteger := DMServ.TOrd.FieldByName('COD_LOJA').AsInteger;
          DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
          // busca forma de pagamento, se necessario cadastra a nova forma
          DMEXPORTA.TOrd.ParamByName('COD_FORMPAG').AsInteger := Forma_Pagamento;
          DMEXPORTA.TOrd.ParamByName('COMISSAO').AsCurrency := DMServ.TOrd.FieldByName('COMISSAO').AsCurrency;
          DMEXPORTA.TOrd.ParamByName('GARANTIA').AsString := DMServ.TOrd.FieldByName('GARANTIA').AsString;
          DMEXPORTA.TOrd.ParamByName('TOTDESP').AsCurrency := DMServ.TOrd.FieldByName('TOTDESP').AsCurrency;
          DMEXPORTA.TOrd.ParamByName('COMSOBVENDA').AsString := DMServ.TOrd.FieldByName('COMSOBVENDA').AsString;
          if DMServ.TOrd.FieldByName('DTFECH').AsString <> '' then
            DMEXPORTA.TOrd.ParamByName('DTFECH').AsDate := DMServ.TOrd.FieldByName('DTFECH').AsDateTime;
          DMEXPORTA.TOrd.ParamByName('DESCPROD').AsCurrency := DMServ.TOrd.FieldByName('DESCPROD').AsCurrency;
          DMEXPORTA.TOrd.ParamByName('DESCSERV').AsCurrency := DMServ.TOrd.FieldByName('DESCSERV').AsCurrency;
          DMEXPORTA.TOrd.ParamByName('FISCO').AsString := DMServ.TOrd.FieldByName('FISCO').AsString;
          DMEXPORTA.TOrd.ParamByName('NUMFISCAL').AsString := DMServ.TOrd.FieldByName('NUMFISCAL').AsString;
          DMEXPORTA.TOrd.ParamByName('TIPOPAG').AsString := DMServ.TOrd.FieldByName('TIPOPAG').AsString;
          DMEXPORTA.TOrd.ParamByName('BOX').AsString := DMServ.TOrd.FieldByName('BOX').AsString;
          DMEXPORTA.TOrd.ParamByName('EXP').AsString := '';
          DMEXPORTA.TOrd.ParamByName('EXPORTADO').AsString := '';
          DMEXPORTA.TOrd.ExecSQL;
        except
          MessageDlg('FALHA AO INSERIR ORDEM', mtWarning, [mbOK], 0);
        end;
        // ******************************************************************************************************************
        // seleciona os subprodutos relacionados á ordem de servico atual - banco local
        DMServ.TPOrd.Close;
        DMServ.TPOrd.SQL.Clear;
        DMServ.TPOrd.SQL.Add('select * from itprodord where itprodord.cod_ordem = :codigo');
        DMServ.TPOrd.ParamByName('codigo').AsInteger := DMServ.TOrd.FieldByname('cod_ordem').AsInteger;
        DMServ.TPOrd.Open;

        // primeiro registro da lista de subprodutos
        DMServ.TPOrd.First;

        // INSERINDO TODOS OS PRODUTOS NO BANCO DE FORA
        while not DMServ.TPOrd.Eof do
        begin
          XCOD_PRODUTO := 0;
          XCOD_SUBPRODUTO := 0;
          XCOD_AUX := 0;
          XCOD_ESTOQUE := 0;
          XCOD_GRUPO := 0;
          XCOD_SUBGRUPO := 0;
          XCOD_CST := 0;
          // seleciona os dados da tabela estoque que tenha o mesmo cod_estoque - banco local
          DMESTOQUE.TEstoque.Close;
          DMESTOQUE.TEstoque.SQL.Clear;
          DMESTOQUE.TEstoque.SQL.Add('select * from estoque where estoque.cod_estoque = :codigo');
          DMESTOQUE.TEstoque.ParamByName('codigo').AsInteger := DMServ.TPOrd.FieldByname('cod_estoque').AsInteger;
          DMESTOQUE.TEstoque.Open;

          // seleciona dados da tabela subproduto que tenha o mesmo codigo de subproduto que a tabela estoque - banco local
          DMESTOQUE.TSubProd.Close;
          DMESTOQUE.TSubProd.SQL.Clear;
          DMESTOQUE.TSubProd.SQL.Add('select * from subproduto where subproduto.cod_subproduto = :codigo');
          DMESTOQUE.TSubProd.ParamByName('codigo').AsInteger := DMESTOQUE.TEstoque.FieldByname('cod_subprod').AsInteger;
          DMESTOQUE.TSubProd.Open;

          // verifica se no banco de fora existe o mesmo subproduto
          DMEXPORTA.TSubProd.Close;
          DMEXPORTA.TSubProd.SQL.Clear;
          DMEXPORTA.TSubProd.SQL.Add('select * from subproduto');
          DMEXPORTA.TSubProd.SQL.Add('WHERE subproduto.CONTRINT = :codigo');
          DMEXPORTA.TSubProd.ParamByName('CODIGO').AsString := DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
          DMEXPORTA.TSubProd.Open;

          // seleciona todos os dados da tabela estoque que tenha o mesmo codigo de subproduto
          DMEXPORTA.TEstoque.Close;
          DMEXPORTA.TEstoque.SQL.Clear;
          DMEXPORTA.TEstoque.SQL.Add('select * from estoque where estoque.cod_subprod = :codigo ');
          DMEXPORTA.TEstoque.ParamByName('codigo').AsString := DMEXPORTA.TSubProd.FieldByName('cod_subproduto').AsString;
          DMEXPORTA.TEstoque.Open;

          try
            // se o banco que for receber as exportações nao possuir o subproduto atual, o mesmo eh cadastrado
            if DMEXPORTA.TSubProd.IsEmpty then
            begin
              //Verificamos se o código do subproduto já existe
              XCOD_SUBPRODUTO := DMEXPORTA.TCodigo.FieldByname('cod_subproduto').AsInteger;
              if FiltraTabela(DMEXPORTA.Alx, 'SUBPRODUTO', 'COD_SUBPRODUTO', Inttostr(XCOD_SUBPRODUTO), '') then
              begin
                XCOD_SUBPRODUTO := XCOD_SUBPRODUTO + 10;
              end;
              DMEXPORTA.TSubProd.Close;
              DMEXPORTA.TSubProd.SQL.Clear;
              DMEXPORTA.TSubProd.SQL.Add('insert into SUBPRODUTO');
              DMEXPORTA.TSubProd.SQL.Add('(COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, CODPRODFABR, FABRICANTE,');
              DMEXPORTA.TSubProd.SQL.Add('MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, IPIPROD, PESOLIQ,');
              DMEXPORTA.TSubProd.SQL.Add('PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD, LOTE,');
              DMEXPORTA.TSubProd.SQL.Add('PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, COD_UNIDCOMPRA, COD_UNIDVENDA,');
              DMEXPORTA.TSubProd.SQL.Add('COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, DESCCUPOM, NCM,');
              DMEXPORTA.TSubProd.SQL.Add('OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, BALANCA,');
              DMEXPORTA.TSubProd.SQL.Add('ANVISA, MINSAUDE)');
              DMEXPORTA.TSubProd.SQL.Add('values');
              DMEXPORTA.TSubProd.SQL.Add('(:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, :CODPRODFABR,');
              DMEXPORTA.TSubProd.SQL.Add(':FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, :LOCALESTANTE, :ATIVO,');
              DMEXPORTA.TSubProd.SQL.Add(':IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, :MOTIVO,');
              DMEXPORTA.TSubProd.SQL.Add(':QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVAL, :ATESTGAR,');
              DMEXPORTA.TSubProd.SQL.Add(':SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, :CODEAN1,');
              DMEXPORTA.TSubProd.SQL.Add(':CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL, :COMPOSICAO,');
              DMEXPORTA.TSubProd.SQL.Add(':ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, :MINSAUDE)');
              DMEXPORTA.TSubProd.ParamByName('cod_subproduto').AsInteger := XCOD_SUBPRODUTO;
              XCOD_SUBPRODUTO := DMEXPORTA.TCodigo.FieldByname('cod_subproduto').AsInteger;

              XCOD_ESTOQUE := DMEXPORTA.TCodigo.FieldByname('cod_estoque').AsInteger;
              if FiltraTabela(DMEXPORTA.Alx, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(XCOD_ESTOQUE), '') then
              begin
                XCOD_ESTOQUE := XCOD_ESTOQUE + 10;
              end;
              DMEXPORTA.TEstoque.Close;
              DMEXPORTA.TEstoque.SQL.Clear;
              DMEXPORTA.TEstoque.SQL.Add('insert into ESTOQUE');
              DMEXPORTA.TEstoque.SQL.Add('(COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, ESTMAX, ESTMIN,');
              DMEXPORTA.TEstoque.SQL.Add('ICMS, FRETE, ESTFISICO, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT, CVPPROAT,');
              DMEXPORTA.TEstoque.SQL.Add('CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV, VALUNIT,');
              DMEXPORTA.TEstoque.SQL.Add('VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, LUCRATIVIDADE,');
              DMEXPORTA.TEstoque.SQL.Add('COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP, ESTANTCONT,');
              DMEXPORTA.TEstoque.SQL.Add('CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, VLRBONIFIC,');
              DMEXPORTA.TEstoque.SQL.Add('DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, MARGEMSEG,');
              DMEXPORTA.TEstoque.SQL.Add('PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, DATAATU, HORAATU,');
              DMEXPORTA.TEstoque.SQL.Add('PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA)');
              DMEXPORTA.TEstoque.SQL.Add('values');
              DMEXPORTA.TEstoque.SQL.Add('(:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ULTVENDA, :ESTMAX,');
              DMEXPORTA.TEstoque.SQL.Add(':ESTMIN, :ICMS, :FRETE, :ESTFISICO, :ESTRESERV, :ESTPED, :ESTSALDO,');
              DMEXPORTA.TEstoque.SQL.Add(':CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, :VENDATAV,');
              DMEXPORTA.TEstoque.SQL.Add(':VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT, :AVPPROAT,');
              DMEXPORTA.TEstoque.SQL.Add(':AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, :OUTROS,');
              DMEXPORTA.TEstoque.SQL.Add(':QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM, :ESTSIMULADO,');
              DMEXPORTA.TEstoque.SQL.Add(':VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, :CLNC,');
              DMEXPORTA.TEstoque.SQL.Add(':MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG, :PERCMARGSEG,');
              DMEXPORTA.TEstoque.SQL.Add(':REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAATU, :PRECOOFERTA,');
              DMEXPORTA.TEstoque.SQL.Add(':DATAOFERTA, :VENCIMENTOOFERTA)');
              DMEXPORTA.TEstoque.ParamByName('cod_estoque').AsInteger := XCOD_ESTOQUE;
              XCOD_ESTOQUE := DMEXPORTA.TCodigo.FieldByname('cod_estoque').AsInteger;
              DMEXPORTA.TCodigo.Edit;
              DMEXPORTA.TCodigo.FieldByName('cod_subproduto').AsInteger := DMEXPORTA.TCodigo.fieldByName('cod_subproduto').AsInteger + 1;
              DMEXPORTA.TCodigo.FieldByName('cod_estoque').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_estoque').AsInteger + 1;
              DMEXPORTA.TCodigo.Post;
            end
            else
            begin
              XCOD_SUBPRODUTO := DMEXPORTA.TSubProd.FieldByname('cod_subproduto').AsInteger;
              DMEXPORTA.TSubProd.Close;
              DMEXPORTA.TSubProd.SQL.Clear;
              DMEXPORTA.TSubProd.SQL.Add('update SUBPRODUTO set');
              DMEXPORTA.TSubProd.SQL.Add('CODCOMPOSTO = :CODCOMPOSTO, DESCRICAO = :DESCRICAO, CODBARRA = :CODBARRA,');
              DMEXPORTA.TSubProd.SQL.Add('CODPRODFABR = :CODPRODFABR, FABRICANTE = :FABRICANTE, MARCA = :MARCA, QUANTGARANTIA = :QUANTGARANTIA, TIPOGARANTIA = :TIPOGARANTIA, LOCALESTANTE = :LOCALESTANTE, ATIVO = :ATIVO, IPIPROD = :IPIPROD,');
              DMEXPORTA.TSubProd.SQL.Add('PESOLIQ = :PESOLIQ, PESOBRUTO = :PESOBRUTO, COD_PRODUTO = :COD_PRODUTO, COD_INTERNO = :COD_INTERNO, MOTIVO = :MOTIVO,');
              DMEXPORTA.TSubProd.SQL.Add('QTDATC = :QTDATC, EMBPROD = :EMBPROD, LOTE = :LOTE, PENEIRA = :PENEIRA, GERMI = :GERMI, PUREZA = :PUREZA, ATESTVAL = :ATESTVAL,');
              DMEXPORTA.TSubProd.SQL.Add('ATESTGAR = :ATESTGAR, SAFRA = :SAFRA, COD_UNIDCOMPRA = :COD_UNIDCOMPRA, COD_UNIDVENDA = :COD_UNIDVENDA, COD_CST = :COD_CST, DTCAD = :DTCAD, CODEAN1 = :CODEAN1, CONTRINT = :CONTRINT, COR = :COR,');
              DMEXPORTA.TSubProd.SQL.Add('CLASSIFICACAO = :CLASSIFICACAO, DESCCUPOM = :DESCCUPOM, NCM = :NCM, OBSFISCAL = :OBSFISCAL, COMPOSICAO = :COMPOSICAO, ALTURA = :ALTURA,');
              DMEXPORTA.TSubProd.SQL.Add('LARGURA = :LARGURA, ESPECIFICACAO = :ESPECIFICACAO, MARK = :MARK, BALANCA = :BALANCA, ANVISA = :ANVISA, MINSAUDE = :MINSAUDE');
              DMEXPORTA.TSubProd.SQL.Add('where COD_SUBPRODUTO = :OLD_COD_SUBPRODUTO');
              DMEXPORTA.TSubProd.ParamByName('OLD_COD_SUBPRODUTO').AsInteger := XCOD_SUBPRODUTO;
              XCOD_ESTOQUE := DMEXPORTA.TEstoque.FieldByname('cod_estoque').AsInteger;
              DMEXPORTA.TEstoque.Close;
              DMEXPORTA.TEstoque.SQL.Clear;
              DMEXPORTA.TEstoque.SQL.Add('update ESTOQUE set');
              DMEXPORTA.TEstoque.SQL.Add('COD_LOJA = :COD_LOJA, COD_SUBPROD = :COD_SUBPROD,');
              DMEXPORTA.TEstoque.SQL.Add('ULTCOMPRA = :ULTCOMPRA, ULTVENDA = :ULTVENDA, ESTMAX = :ESTMAX,');
              DMEXPORTA.TEstoque.SQL.Add('ESTMIN = :ESTMIN, ICMS = :ICMS, FRETE = :FRETE, ');
              DMEXPORTA.TEstoque.SQL.Add('ESTRESERV = :ESTRESERV, ESTPED = :ESTPED,');
              DMEXPORTA.TEstoque.SQL.Add('ESTSALDO = :ESTSALDO, CVVPROAT = :CVVPROAT, CVPPROAT = :CVPPROAT,');
              DMEXPORTA.TEstoque.SQL.Add('CVVPROVAR = :CVVPROVAR, CVPPROVAR = :CVPPROVAR,');
              DMEXPORTA.TEstoque.SQL.Add('VENDATAP = :VENDATAP, VENDATAV = :VENDATAV,');
              DMEXPORTA.TEstoque.SQL.Add('VENDVARP = :VENDVARP, VENDVARV = :VENDVARV,');
              DMEXPORTA.TEstoque.SQL.Add('VALUNIT = :VALUNIT, VALREP = :VALREP, VALCUSTO = :VALCUSTO, AVVPROAT = :AVVPROAT,');
              DMEXPORTA.TEstoque.SQL.Add('AVPPROAT = :AVPPROAT, AVVPROVAR = :AVVPROVAR, AVPPROVAR = :AVPPROVAR,');
              DMEXPORTA.TEstoque.SQL.Add('LUCRATIVIDADE = :LUCRATIVIDADE, COEFDIV = :COEFDIV, VALOREST = :VALOREST,');
              DMEXPORTA.TEstoque.SQL.Add('OUTROS = :OUTROS, QUANT2 = :QUANT2, DTCAD = :DTCAD, ESTINI = :ESTINI,');
              DMEXPORTA.TEstoque.SQL.Add('VALCUSDESP = :VALCUSDESP, ESTANTCONT = :ESTANTCONT, CONTAGEM = :CONTAGEM,');
              DMEXPORTA.TEstoque.SQL.Add('ESTSIMULADO = :ESTSIMULADO, VLRUNITCOMP = :VLRUNITCOMP, INDICE = :INDICE,');
              DMEXPORTA.TEstoque.SQL.Add('BONIFICACAO = :BONIFICACAO, VLRBONIFIC = :VLRBONIFIC, DESCONTO = :DESCONTO,');
              DMEXPORTA.TEstoque.SQL.Add('CLNC = :CLNC, MOD = :MOD, IMPEXP = :IMPEXP,');
              DMEXPORTA.TEstoque.SQL.Add('IMPREND = :IMPREND, CONTSOC = :CONTSOC, COFINS = :COFINS, PIS = :PIS,');
              DMEXPORTA.TEstoque.SQL.Add('MARGEMSEG = :MARGEMSEG, PERCMARGSEG = :PERCMARGSEG, REDUCBASE = :REDUCBASE,');
              DMEXPORTA.TEstoque.SQL.Add('VLRCOMPSD = :VLRCOMPSD, ACRECIMO = :ACRECIMO, ESTCALC = :ESTCALC,');
              DMEXPORTA.TEstoque.SQL.Add('DATAATU = :DATAATU, HORAATU = :HORAATU, PRECOOFERTA = :PRECOOFERTA,');
              DMEXPORTA.TEstoque.SQL.Add('DATAOFERTA = :DATAOFERTA,VENCIMENTOOFERTA = :VENCIMENTOOFERTA');
              DMEXPORTA.TEstoque.SQL.Add('where COD_ESTOQUE = :OLD_COD_ESTOQUE');
              DMEXPORTA.TEstoque.ParamByName('OLD_COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
            end;

            // seleciona dados da tabela produto que tenha o mesmo codigo que a tabela subproduto - banco local
            DMESTOQUE.TProduto.Close;
            DMESTOQUE.TProduto.SQL.Clear;
            DMESTOQUE.TProduto.SQL.Add('select * from produto where produto.cod_produto = :codigo');
            DMESTOQUE.TProduto.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByname('cod_produto').AsInteger;
            DMESTOQUE.TProduto.Open;

            // seleciona o produto que tenha a mesma descricao que o banco local - banco de fora
            if DMESTOQUE.TProduto.FieldByName('descricao').AsString = '' then
            begin
              MessageDlg('O SubProduto: ' + DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString + #13 + #10 + 'Controle Interno: ' + DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString + #13 + #10 + '' + #13 + #10 + 'Foi Inserido sem estar lincado ao produto correto. Verifique por favor', mtWarning, [mbOK], 0);
              DMEXPORTA.TProduto.Close;
              DMEXPORTA.TProduto.SQL.Clear;
              DMEXPORTA.TProduto.SQL.Add('select * from produto ');
              DMEXPORTA.TProduto.Open;
            end
            else
            begin
              try
                DMEXPORTA.TProduto.Close;
                DMEXPORTA.TProduto.SQL.Clear;
                DMEXPORTA.TProduto.SQL.Add('select * from produto where (upper(produto.descricao) = upper(' + #39 + DMESTOQUE.TProduto.FieldByName('descricao').AsString + #39 + '))');
                DMEXPORTA.TProduto.Open;
              except
                MessageDlg('O nome do Produto:' + #13 + #10 + 'Apresenta alguma irregularidade, verifique o uso de apóstrofes no nome, caso exista, procure removê-lo  e tentar novamente.' + #13 + #10 + '' + #13 + #10 + 'Antes verifique vestigios de exportação desta ordem na outra base.', mtWarning, [mbOK], 0);
              end;
            end;
            if DMEXPORTA.TProduto.IsEmpty then
            begin
              DMEXPORTA.TProduto.Close;
              DMEXPORTA.TProduto.SQL.Clear;
              DMEXPORTA.TProduto.SQL.Add('insert into PRODUTO');
              DMEXPORTA.TProduto.SQL.Add('(COD_PRODUTO, COD_INTERNO, DESCRICAO, APLICACAO, COD_SUBGRUPOPROD, COD_GRUPOPROD,');
              DMEXPORTA.TProduto.SQL.Add('COD_CST, COD_LOJA, VENDVISTA, VENDPRAZO, CUSTOVENDA, COMPVISTA, COMPPRAZO,');
              DMEXPORTA.TProduto.SQL.Add('QTDCOMP, QTDVEND)');
              DMEXPORTA.TProduto.SQL.Add('values');
              DMEXPORTA.TProduto.SQL.Add('(:COD_PRODUTO, :COD_INTERNO, :DESCRICAO, :APLICACAO, :COD_SUBGRUPOPROD,');
              DMEXPORTA.TProduto.SQL.Add(':COD_GRUPOPROD, :COD_CST, :COD_LOJA, :VENDVISTA, :VENDPRAZO, :CUSTOVENDA,');
              DMEXPORTA.TProduto.SQL.Add(':COMPVISTA, :COMPPRAZO, :QTDCOMP, :QTDVEND)');
              DMEXPORTA.TProduto.ParamByName('cod_produto').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_produto').AsInteger;
              XCOD_PRODUTO := DMEXPORTA.TCodigo.FieldByname('cod_produto').AsInteger;
              DMEXPORTA.TCodigo.Edit;
              DMEXPORTA.TCodigo.FieldByName('cod_produto').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_produto').AsInteger + 1;
              DMEXPORTA.TCodigo.Post;
            end
            else
            begin
              XCOD_PRODUTO := DMEXPORTA.TProduto.FieldByname('cod_produto').AsInteger;
              DMEXPORTA.TProduto.Close;
              DMEXPORTA.TProduto.SQL.Clear;
              DMEXPORTA.TProduto.SQL.Add('update PRODUTO set');
              DMEXPORTA.TProduto.SQL.Add('COD_INTERNO = :COD_INTERNO, DESCRICAO = :DESCRICAO, APLICACAO = :APLICACAO, COD_SUBGRUPOPROD = :COD_SUBGRUPOPROD,');
              DMEXPORTA.TProduto.SQL.Add('COD_GRUPOPROD = :COD_GRUPOPROD, COD_CST = :COD_CST, COD_LOJA = :COD_LOJA,VENDVISTA = :VENDVISTA,');
              DMEXPORTA.TProduto.SQL.Add('VENDPRAZO = :VENDPRAZO,CUSTOVENDA = :CUSTOVENDA,COMPVISTA = :COMPVISTA,COMPPRAZO = :COMPPRAZO,QTDCOMP = :QTDCOMP,QTDVEND = :QTDVEND');
              DMEXPORTA.TProduto.SQL.Add('where COD_PRODUTO = :OLD_COD_PRODUTO');
              DMEXPORTA.TProduto.ParamByName('OLD_COD_PRODUTO').AsInteger := XCOD_PRODUTO;
            end;

            // seleciona dados da tabela grupoprod que tenha o mesmo codigo que a tabela produto
            DMESTOQUE.TGrupo.Close;
            DMESTOQUE.TGrupo.SQL.Clear;
            DMESTOQUE.TGrupo.SQL.Add('select * from grupoprod where grupoprod.cod_grupoprod = :codigo');
            DMESTOQUE.TGrupo.ParamByName('codigo').AsInteger := DMESTOQUE.TProduto.FieldByName('cod_grupoprod').AsInteger;
            DMESTOQUE.TGrupo.Open;

            // seleciona dados da tabela grupoprod do banco de fora que tenha a mesma descricao
            DMEXPORTA.TGrupo.Close;
            DMEXPORTA.TGrupo.SQL.Clear;
            DMEXPORTA.TGrupo.SQL.Add('select * from grupoprod where (upper(grupoprod.descricao) = upper(' + #39 + DMESTOQUE.TGrupo.FieldByName('descricao').AsString + #39 + '))');
            DMEXPORTA.TGrupo.Open;

            if DMEXPORTA.TGrupo.IsEmpty then
            begin
              DMEXPORTA.TGrupo.Close;
              DMEXPORTA.TGrupo.SQL.Clear;
              DMEXPORTA.TGrupo.SQL.Add('insert into GRUPOPROD');
              DMEXPORTA.TGrupo.SQL.Add('(COD_GRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
              DMEXPORTA.TGrupo.SQL.Add('values');
              DMEXPORTA.TGrupo.SQL.Add('(:COD_GRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
              DMEXPORTA.TGrupo.ParamByName('cod_grupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_grupoprod').AsInteger;
              XCOD_GRUPO := DMEXPORTA.TCodigo.FieldByname('cod_grupoprod').AsInteger;
              DMEXPORTA.TCodigo.Edit;
              DMEXPORTA.TCodigo.FieldByName('cod_grupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_grupoprod').AsInteger + 1;
              DMEXPORTA.TCodigo.Post;
            end
            else
            begin
              XCOD_GRUPO := DMEXPORTA.TGrupo.FieldByname('cod_grupoprod').AsInteger;
              DMEXPORTA.TGrupo.Close;
              DMEXPORTA.TGrupo.SQL.Clear;
              DMEXPORTA.TGrupo.SQL.Add('update GRUPOPROD set DESCRICAO = :DESCRICAO, COD_INTERNO = :COD_INTERNO, TIPO = :TIPO');
              DMEXPORTA.TGrupo.SQL.Add('where COD_GRUPOPROD = :OLD_COD_GRUPOPROD');

              DMEXPORTA.TGrupo.ParamByName('OLD_COD_GRUPOPROD').AsInteger := XCOD_GRUPO;
            end;

            // grava na tabela grupoprod do banco de fora os novos dados
            DMEXPORTA.TGrupo.ParamByName('cod_interno').AsString := DMESTOQUE.TGrupo.FieldByName('cod_interno').AsString;
            DMEXPORTA.TGrupo.ParamByName('descricao').AsString := DMESTOQUE.TGrupo.FieldByName('descricao').AsString;
            DMEXPORTA.TGrupo.ParamByName('tipo').AsString := DMESTOQUE.TGrupo.FieldByName('tipo').AsString;
            DMEXPORTA.TGrupo.ExecSQL;
            // seleciona no banco de dados local os dados da tabela subgrupoprod
            DMESTOQUE.TSubgru.Close;
            DMESTOQUE.TSubgru.SQL.Clear;
            DMESTOQUE.TSubgru.SQL.Add('select * from subgrupoprod where subgrupoprod.cod_subgrupoprod = :codigo');
            DMESTOQUE.TSubgru.ParamByName('codigo').AsInteger := DMESTOQUE.TProduto.FieldByname('cod_subgrupoprod').AsInteger;
            DMESTOQUE.TSubgru.Open;

            // seleciona dados da tabela subgrupoprod do banco de fora que tenha a mesma descricao
            DMEXPORTA.TSubgru.Close;
            DMEXPORTA.TSubgru.SQL.Clear;
            DMEXPORTA.TSubgru.SQL.Add('select * from subgrupoprod where (upper(subgrupoprod.descricao) = upper(' + #39 + DMESTOQUE.TSubgru.FieldByName('descricao').AsString + #39 + '))');
            DMEXPORTA.TSubgru.Open;

            if DMEXPORTA.TSubgru.IsEmpty then
            begin
              DMEXPORTA.TSubgru.Close;
              DMEXPORTA.TSubgru.SQL.Clear;
              DMEXPORTA.TSubgru.SQL.Add('insert into SUBGRUPOPROD');
              DMEXPORTA.TSubgru.SQL.Add('(COD_SUBGRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
              DMEXPORTA.TSubgru.SQL.Add('values');
              DMEXPORTA.TSubgru.SQL.Add('(:COD_SUBGRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
              DMEXPORTA.TSubgru.ParamByName('cod_subgrupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger;
              XCOD_SUBGRUPO := DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger;
              DMEXPORTA.TCodigo.Edit;
              DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger + 1;
              DMEXPORTA.TCodigo.Post;
            end
            else
            begin
              XCOD_SUBGRUPO := DMEXPORTA.TSubgru.FieldByName('cod_subgrupoprod').AsInteger;
              DMEXPORTA.TSubgru.Close;
              DMEXPORTA.TSubgru.SQL.Clear;
              DMEXPORTA.TSubgru.SQL.Add('update SUBGRUPOPROD set DESCRICAO = :DESCRICAO, COD_INTERNO = :COD_INTERNO, TIPO = :TIPO');
              DMEXPORTA.TSubgru.SQL.Add('where COD_SUBGRUPOPROD = :OLD_COD_SUBGRUPOPROD');
              DMEXPORTA.TSubgru.ParamByName('OLD_COD_SUBGRUPOPROD').AsInteger := XCOD_SUBGRUPO;
            end;

            DMEXPORTA.TSubgru.ParamByName('descricao').AsString := DMESTOQUE.TSubgru.FieldByname('descricao').AsString;
            DMEXPORTA.TSubgru.ParamByName('cod_interno').AsString := DMESTOQUE.TSubgru.FieldByname('cod_interno').AsString;
            DMEXPORTA.TSubgru.ParamByName('tipo').AsString := DMESTOQUE.TSubgru.FieldByname('tipo').AsString;
            DMEXPORTA.TSubgru.ExecSQL;
            DMEXPORTA.TProduto.ParamByName('APLICACAO').AsString := DMESTOQUE.TProduto.FieldByName('APLICACAO').AsString;
            DMEXPORTA.TProduto.ParamByName('COD_GRUPOPROD').AsInteger := XCOD_GRUPO;
            DMEXPORTA.TProduto.ParamByName('COD_INTERNO').AsString := DMESTOQUE.TProduto.FieldByName('COD_INTERNO').AsString;
            DMEXPORTA.TProduto.ParamByName('COD_LOJA').AsInteger := DMESTOQUE.TProduto.FieldByName('COD_LOJA').AsInteger;
            DMEXPORTA.TProduto.ParamByName('COD_SUBGRUPOPROD').AsInteger := XCOD_SUBGRUPO;
            DMEXPORTA.TProduto.ParamByName('COMPPRAZO').AsCurrency := DMESTOQUE.TProduto.FieldByName('COMPPRAZO').AsCurrency;
            DMEXPORTA.TProduto.ParamByName('COMPVISTA').AsCurrency := DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsCurrency;
            DMEXPORTA.TProduto.ParamByName('CUSTOVENDA').AsCurrency := DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency;
            DMEXPORTA.TProduto.ParamByName('DESCRICAO').AsString := DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString;
            DMEXPORTA.TProduto.ParamByName('QTDCOMP').AsCurrency := DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsCurrency;
            DMEXPORTA.TProduto.ParamByName('QTDVEND').AsCurrency := DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency;
            DMEXPORTA.TProduto.ParamByName('VENDPRAZO').AsCurrency := DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency;
            DMEXPORTA.TProduto.ParamByName('VENDVISTA').AsCurrency := DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency;
            DMEXPORTA.TProduto.ExecSQL;

            DMEXPORTA.TSubProd.ParamByName('COD_CST').AsInteger := VerificaCST(DMESTOQUE.TSubProd.FieldByName('COD_CST').AsInteger);
            DMEXPORTA.TSubProd.ParamByName('cod_produto').AsInteger := XCOD_PRODUTO;
            DMEXPORTA.TSubProd.ParamByName('ALTURA').AsString := DMESTOQUE.TSubProd.FieldByName('ALTURA').AsString;
            DMEXPORTA.TSubProd.ParamByName('ANVISA').AsString := DMESTOQUE.TSubProd.FieldByName('ANVISA').AsString;
            DMEXPORTA.TSubProd.ParamByName('ATESTGAR').AsString := DMESTOQUE.TSubProd.FieldByName('ATESTGAR').AsString;
            DMEXPORTA.TSubProd.ParamByName('ATESTVAL').AsString := DMESTOQUE.TSubProd.FieldByName('ATESTVAL').AsString;
            DMEXPORTA.TSubProd.ParamByName('ATIVO').AsString := DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString;
            DMEXPORTA.TSubProd.ParamByName('BALANCA').AsString := DMESTOQUE.TSubProd.FieldByName('BALANCA').AsString;
            DMEXPORTA.TSubProd.ParamByName('CLASSIFICACAO').AsString := DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString;
            DMEXPORTA.TSubProd.ParamByName('CODBARRA').AsString := DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
            DMEXPORTA.TSubProd.ParamByName('CODCOMPOSTO').AsString := DMESTOQUE.TSubProd.FieldByName('CODCOMPOSTO').AsString;
            DMEXPORTA.TSubProd.ParamByName('CODEAN1').AsString := DMESTOQUE.TSubProd.FieldByName('CODEAN1').AsString;
            DMEXPORTA.TSubProd.ParamByName('CODPRODFABR').AsString := DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString;
            DMEXPORTA.TSubProd.ParamByName('COD_INTERNO').AsString := DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString;
            DMEXPORTA.TSubProd.ParamByName('COD_UNIDCOMPRA').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger;
            DMEXPORTA.TSubProd.ParamByName('COD_UNIDVENDA').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger;
            DMEXPORTA.TSubProd.ParamByName('COMPOSICAO').AsString := DMESTOQUE.TSubProd.FieldByName('COMPOSICAO').AsString;
            DMEXPORTA.TSubProd.ParamByName('CONTRINT').AsString := DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
            DMEXPORTA.TSubProd.ParamByName('COR').AsString := DMESTOQUE.TSubProd.FieldByName('COR').AsString;
            DMEXPORTA.TSubProd.ParamByName('DESCCUPOM').AsString := DMESTOQUE.TSubProd.FieldByName('DESCCUPOM').AsString;
            DMEXPORTA.TSubProd.ParamByName('DESCRICAO').AsString := DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
            DMEXPORTA.TSubProd.ParamByName('DTCAD').AsDateTime := DMESTOQUE.TSubProd.FieldByName('DTCAD').AsDateTime;
            DMEXPORTA.TSubProd.ParamByName('EMBPROD').AsCurrency := DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsCurrency;
            DMEXPORTA.TSubProd.ParamByName('ESPECIFICACAO').AsString := DMESTOQUE.TSubProd.FieldByName('ESPECIFICACAO').AsString;
            DMEXPORTA.TSubProd.ParamByName('FABRICANTE').AsString := DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString;
            DMEXPORTA.TSubProd.ParamByName('GERMI').AsCurrency := DMESTOQUE.TSubProd.FieldByName('GERMI').AsCurrency;
            DMEXPORTA.TSubProd.ParamByName('IPIPROD').AsCurrency := DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency;
            DMEXPORTA.TSubProd.ParamByName('LARGURA').AsString := DMESTOQUE.TSubProd.FieldByName('LARGURA').AsString;
            DMEXPORTA.TSubProd.ParamByName('LOCALESTANTE').AsString := DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString;
            DMEXPORTA.TSubProd.ParamByName('LOTE').AsString := DMESTOQUE.TSubProd.FieldByName('LOTE').AsString;
            DMEXPORTA.TSubProd.ParamByName('MARCA').AsString := DMESTOQUE.TSubProd.FieldByName('MARCA').AsString;
            DMEXPORTA.TSubProd.ParamByName('MARK').AsString := DMESTOQUE.TSubProd.FieldByName('MARK').AsString;
            DMEXPORTA.TSubProd.ParamByName('MINSAUDE').AsString := DMESTOQUE.TSubProd.FieldByName('MINSAUDE').AsString;
            DMEXPORTA.TSubProd.ParamByName('MOTIVO').AsString := DMESTOQUE.TSubProd.FieldByName('MOTIVO').AsString;
            DMEXPORTA.TSubProd.ParamByName('NCM').AsString := DMESTOQUE.TSubProd.FieldByName('NCM').AsString;
            DMEXPORTA.TSubProd.ParamByName('OBSFISCAL').AsString := DMESTOQUE.TSubProd.FieldByName('OBSFISCAL').AsString;
            DMEXPORTA.TSubProd.ParamByName('PENEIRA').AsString := DMESTOQUE.TSubProd.FieldByName('PENEIRA').AsString;
            DMEXPORTA.TSubProd.ParamByName('PESOBRUTO').AsCurrency := DMESTOQUE.TSubProd.FieldByName('PESOBRUTO').AsCurrency;
            DMEXPORTA.TSubProd.ParamByName('PESOLIQ').AsCurrency := DMESTOQUE.TSubProd.FieldByName('PESOLIQ').AsCurrency;
            DMEXPORTA.TSubProd.ParamByName('PUREZA').AsCurrency := DMESTOQUE.TSubProd.FieldByName('PUREZA').AsCurrency;
            DMEXPORTA.TSubProd.ParamByName('QTDATC').AsCurrency := DMESTOQUE.TSubProd.FieldByName('QTDATC').AsCurrency;
            DMEXPORTA.TSubProd.ParamByName('QUANTGARANTIA').AsCurrency := DMESTOQUE.TSubProd.FieldByName('QUANTGARANTIA').AsCurrency;
            DMEXPORTA.TSubProd.ParamByName('SAFRA').AsString := DMESTOQUE.TSubProd.FieldByName('SAFRA').AsString;
            DMEXPORTA.TSubProd.ParamByName('TIPOGARANTIA').AsString := DMESTOQUE.TSubProd.FieldByName('TIPOGARANTIA').AsString;
            DMEXPORTA.TSubProd.ExecSQL;

            // ATUALIZANDO TABELA ESTOQUE
            DMEXPORTA.TEstoque.ParamByName('COD_LOJA').AsInteger := DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsInteger;
            DMEXPORTA.TEstoque.ParamByName('COD_SUBPROD').AsInteger := XCOD_SUBPRODUTO;
            DMEXPORTA.TEstoque.ParamByName('ULTCOMPRA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('ULTCOMPRA').AsDateTime;
            DMEXPORTA.TEstoque.ParamByName('ULTVENDA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('ULTVENDA').AsDateTime;
            DMEXPORTA.TEstoque.ParamByName('ESTMAX').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTMAX').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('ESTMIN').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('ICMS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('FRETE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('ESTPED').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTPED').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('CVVPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('CVPPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('CVVPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('CVPPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VENDATAP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VENDATAV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VENDVARP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VENDVARV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VALUNIT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VALREP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VALCUSTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('AVVPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('AVPPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('AVVPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('AVPPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('LUCRATIVIDADE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('COEFDIV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VALOREST').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('OUTROS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('QUANT2').AsCurrency := DMESTOQUE.TEstoque.FieldByName('QUANT2').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('DTCAD').AsDateTime := DMESTOQUE.TEstoque.FieldByName('DTCAD').AsDateTime;
            DMEXPORTA.TEstoque.ParamByName('ESTINI').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTINI').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VALCUSDESP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSDESP').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('ESTANTCONT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTANTCONT').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('CONTAGEM').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CONTAGEM').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('ESTSIMULADO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTSIMULADO').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VLRUNITCOMP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('INDICE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('INDICE').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('BONIFICACAO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VLRBONIFIC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('DESCONTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('CLNC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CLNC').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('MOD').AsCurrency := DMESTOQUE.TEstoque.FieldByName('MOD').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('IMPEXP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('IMPEXP').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('IMPREND').AsCurrency := DMESTOQUE.TEstoque.FieldByName('IMPREND').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('CONTSOC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CONTSOC').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('COFINS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COFINS').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('PIS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('PIS').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('MARGEMSEG').AsCurrency := DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('PERCMARGSEG').AsCurrency := DMESTOQUE.TEstoque.FieldByName('PERCMARGSEg').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('REDUCBASE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('VLRCOMPSD').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('ACRECIMO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('ESTCALC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTCALC').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('DATAATU').AsDateTime := DMESTOQUE.TEstoque.FieldByName('DATAATU').AsDateTime;
            DMEXPORTA.TEstoque.ParamByName('HORAATU').AsDateTime := DMESTOQUE.TEstoque.FieldByName('HORAATU').AsDateTime;
            DMEXPORTA.TEstoque.ParamByName('PRECOOFERTA').AsCurrency := DMESTOQUE.TEstoque.FieldByName('PRECOOFERTA').AsCurrency;
            DMEXPORTA.TEstoque.ParamByName('DATAOFERTA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('DATAOFERTA').AsDateTime;
            DMEXPORTA.TEstoque.ParamByName('VENCIMENTOOFERTA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('VENCIMENTOOFERTA').AsDateTime;
            DMEXPORTA.TEstoque.ExecSQL;
          except
            MessageDlg('FALHA 531', mtWarning, [mbOK], 0);
          end;

          try
            // CODIGO DE ESTOQUE PARA ITENS DE PRODUTO DA ORDEM
            DMEXPORTA.TItensProd.Close;
            DMEXPORTA.TItensProd.SQL.Clear;
            DMEXPORTA.TItensProd.SQL.Add('insert into itprodord');
            DMEXPORTA.TItensProd.SQL.Add('(COD_ESTOQUE, COD_ORDEM, COD_CST, QTD, VLRUNIT, DESCONTO, TOTAL,');
            DMEXPORTA.TItensProd.SQL.Add('DATA, COD_FUNCIONARIO, VALCUSTO, COEFDIV, VALCOMP, LUCMOE, LUCPER, VALREP,');
            DMEXPORTA.TItensProd.SQL.Add('NUMREQ, QTDRET, COMISSAO, VLRVENDBD, LUCREL, OPERACAO, ALIQICMS, BASEICMS,');
            DMEXPORTA.TItensProd.SQL.Add('VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI, REDUCBASEICMS, VLRICMSSUBS,DATA_GARANTIA,KMGARANTIA)');
            DMEXPORTA.TItensProd.SQL.Add('values');
            DMEXPORTA.TItensProd.SQL.Add('(:COD_ESTOQUE, :COD_ORDEM, :COD_CST, :QTD, :VLRUNIT, :DESCONTO,');
            DMEXPORTA.TItensProd.SQL.Add(':TOTAL, :DATA, :COD_FUNCIONARIO, :VALCUSTO, :COEFDIV, :VALCOMP, :LUCMOE,');
            DMEXPORTA.TItensProd.SQL.Add(':LUCPER, :VALREP, :NUMREQ, :QTDRET, :COMISSAO, :VLRVENDBD, :LUCREL,');
            DMEXPORTA.TItensProd.SQL.Add(':OPERACAO, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRIPI, :ALIQIPI,');
            DMEXPORTA.TItensProd.SQL.Add(':REDUCBASEICMS, :VLRICMSSUBS, :DATA_GARANTIA, :KMGARANTIA)');

            DMEXPORTA.TItensProd.ParamByName('ALIQICMS').AsCurrency := DMServ.TPOrd.FieldByName('ALIQICMS').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('ALIQIPI').AsCurrency := DMServ.TPOrd.FieldByName('ALIQIPI').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('BASEICMS').AsCurrency := DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('BASEICMSSUBS').AsCurrency := DMServ.TPOrd.FieldByName('BASEICMSSUBS').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
            if (DMServ.TPOrd.FieldByName('COD_FUNCIONARIO').AsString <> '') and (DMServ.TPOrd.FieldByName('COD_FUNCIONARIO').AsInteger > 0) then
              DMEXPORTA.TItensProd.ParamByName('COD_FUNCIONARIO').AsInteger := VerificaFuncionario('FUNCIONARIO', DMServ.TPOrd.FieldByName('COD_FUNCIONARIO').AsString);
            //DMEXPORTA.TItensProd.ParamByName('COD_ITPRODORD').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_ITPRODORD').AsInteger;
            DMEXPORTA.TItensProd.ParamByName('COD_ORDEM').AsInteger := XCOD_ORDEM;
            DMEXPORTA.TItensProd.ParamByName('COD_CST').AsInteger := VerificaCST(DMServ.TPOrd.FieldByName('COD_CST').AsInteger);
            DMEXPORTA.TItensProd.ParamByName('COEFDIV').AsCurrency := DMServ.TPOrd.FieldByName('COEFDIV').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('COMISSAO').AsCurrency := DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('DATA').AsDateTime := DMServ.TPOrd.FieldByName('DATA').AsDateTime;
            DMEXPORTA.TItensProd.ParamByName('DESCONTO').AsCurrency := DMServ.TPOrd.FieldByName('DESCONTO').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('DATA_GARANTIA').AsDateTime := DMServ.TPOrd.FieldByName('DATA_GARANTIA').AsDateTime;
            DMEXPORTA.TItensProd.ParamByName('KMGARANTIA').AsInteger := DMServ.TPOrd.FieldByName('KMGARANTIA').AsInteger;
            DMEXPORTA.TItensProd.ParamByName('LUCMOE').AsCurrency := DMServ.TPOrd.FieldByName('LUCMOE').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('LUCPER').AsCurrency := DMServ.TPOrd.FieldByName('LUCPER').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('LUCREL').AsCurrency := DMServ.TPOrd.FieldByName('LUCREL').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('NUMREQ').AsString := DMServ.TPOrd.FieldByName('NUMREQ').AsString;
            DMEXPORTA.TItensProd.ParamByName('OPERACAO').AsString := DMServ.TPOrd.FieldByName('OPERACAO').AsString;
            DMEXPORTA.TItensProd.ParamByName('QTD').AsCurrency := DMServ.TPOrd.FieldByName('QTD').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('QTDRET').AsCurrency := DMServ.TPOrd.FieldByName('QTDRET').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('REDUCBASEICMS').AsCurrency := DMServ.TPOrd.FieldByName('REDUCBASEICMS').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('TOTAL').AsCurrency := DMServ.TPOrd.FieldByName('TOTAL').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('VALCOMP').AsCurrency := DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('VALCUSTO').AsCurrency := DMServ.TPOrd.FieldByName('VALCUSTO').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('VALREP').AsCurrency := DMServ.TPOrd.FieldByName('VALREP').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('VLRICMS').AsCurrency := DMServ.TPOrd.FieldByName('VLRICMS').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('VLRICMSSUBS').AsCurrency := DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('VLRIPI').AsCurrency := DMServ.TPOrd.FieldByName('VLRIPI').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('VLRUNIT').AsCurrency := DMServ.TPOrd.FieldByName('VLRUNIT').AsCurrency;
            DMEXPORTA.TItensProd.ParamByName('VLRVENDBD').AsCurrency := DMServ.TPOrd.FieldByName('VLRVENDBD').AsCurrency;
            DMEXPORTA.TItensProd.ExecSQL;
            try
              DMEXPORTA.IBTExporta.CommitRetaining;
              //ATUALIZA ESTOQUE
              DMEXPORTA.TEstoque.Close;
              DMEXPORTA.TEstoque.SQL.Clear;
              DMEXPORTA.TEstoque.SQL.Add('Select * from ESTOQUE where estoque.cod_estoque=:codigo');
              DMEXPORTA.TEstoque.ParamByName('codigo').AsInteger := XCOD_ESTOQUE;
              DMEXPORTA.TEstoque.Open;

              if not DMEXPORTA.TEstoque.IsEmpty then
              begin
                DMEXPORTA.TEstoque.edit;
                DMEXPORTA.TEstoque.FieldByName('ESTFISICO').AsCurrency := DMEXPORTA.TEstoque.FieldByName('ESTFISICO').AsCurrency - DMServ.TPOrd.FieldByName('QTD').AsCurrency;
                DMEXPORTA.TEstoque.Post;
              end
              else
              begin
                MessageDlg('O produto de código: ' + DMESTOQUE.TEstoque.FieldByName('contrint').AsString + ' Não teve estoque atualziado na base de destino.', mtWarning, [mbOK], 0);
              end;
              DMEXPORTA.IBTExporta.CommitRetaining;
            except
              DMEXPORTA.IBTExporta.RollbackRetaining;
            end;

          except
            MessageDlg('FALHA 532', mtWarning, [mbOK], 0);
          end;

          // proximo ptoduto da ordem
          DMServ.TPOrd.Next;
        end;

        // selecionando todas as despesas (ou servico) da ordem QUE TENHAM O MESMO CODIGO E MESMO TIPO DE GERADOR, NO CASO "ORDEM"
        DMESTOQUE.TDesp.Close;
        DMESTOQUE.TDesp.SQL.Clear;
        DMESTOQUE.TDesp.SQL.Add('select * from DESPADIC where (DESPADIC.COD_GERADOR = :CODGERA)');
        DMESTOQUE.TDesp.SQL.Add('AND (DESPADIC.GERADOR = :GERADOR)');
        DMESTOQUE.TDesp.ParamByName('CODGERA').AsInteger := DMServ.TOrd.FieldByname('cod_ordem').AsInteger;
        DMESTOQUE.TDesp.ParamByName('GERADOR').AsString := 'ORDEM';
        DMESTOQUE.TDesp.Open;

        // PRIMEIRA DESPESA DA ORDEM
        DMESTOQUE.TDesp.First;

        while not DMESTOQUE.TDesp.Eof do
        begin
          try
            DMEXPORTA.TDesp.Close;
            DMEXPORTA.TDesp.SQL.Clear;
            DMEXPORTA.TDesp.SQL.Add('insert into DESPADIC');
            DMEXPORTA.TDesp.SQL.Add('(COD_GERADOR, GERADOR, DESPESA, QTD, VLRREAL, VLRFINAL,');
            DMEXPORTA.TDesp.SQL.Add('LUCMOE, LUCPER, VLRTOTFIN, DESCONTO, MARCA, UNIDADE, COD_EQUIPE, COD_FUNCIONARIO)');
            DMEXPORTA.TDesp.SQL.Add('values');
            DMEXPORTA.TDesp.SQL.Add('(:COD_GERADOR, :GERADOR, :DESPESA, :QTD, :VLRREAL, :VLRFINAL,');
            DMEXPORTA.TDesp.SQL.Add(':LUCMOE, :LUCPER, :VLRTOTFIN, :DESCONTO, :MARCA, :UNIDADE, :COD_EQUIPE,');
            DMEXPORTA.TDesp.SQL.Add(':COD_FUNCIONARIO)');

            //DMEXPORTA.TDesp.ParamByName('COD_DESPADIC').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_DESPADIC').AsInteger;
            DMEXPORTA.TDesp.ParamByName('COD_GERADOR').AsInteger := XCOD_ORDEM;
            DMEXPORTA.TDesp.ParamByName('GERADOR').AsString := 'ORDEM';
            DMEXPORTA.TDesp.ParamByName('DESPESA').AsString := DMESTOQUE.TDesp.FieldByname('DESPESA').AsString;
            DMEXPORTA.TDesp.ParamByName('QTD').AsCurrency := DMESTOQUE.TDesp.FieldByname('QTD').AsCurrency;
            DMEXPORTA.TDesp.ParamByName('VLRREAL').AsCurrency := DMESTOQUE.TDesp.FieldByname('VLRREAL').AsCurrency;
            DMEXPORTA.TDesp.ParamByName('VLRFINAL').AsCurrency := DMESTOQUE.TDesp.FieldByname('VLRFINAL').AsCurrency;
            DMEXPORTA.TDesp.ParamByName('LUCMOE').AsCurrency := DMESTOQUE.TDesp.FieldByname('LUCMOE').AsCurrency;
            DMEXPORTA.TDesp.ParamByName('LUCPER').AsCurrency := DMESTOQUE.TDesp.FieldByname('LUCPER').AsCurrency;
            DMEXPORTA.TDesp.ParamByName('VLRTOTFIN').AsCurrency := DMESTOQUE.TDesp.FieldByname('VLRTOTFIN').AsCurrency;
            DMEXPORTA.TDesp.ParamByName('DESCONTO').AsCurrency := DMESTOQUE.TDesp.FieldByname('DESCONTO').AsCurrency;
            DMEXPORTA.TDesp.ParamByName('MARCA').AsString := DMESTOQUE.TDesp.FieldByname('MARCA').AsString;
            DMEXPORTA.TDesp.ParamByName('UNIDADE').AsString := DMESTOQUE.TDesp.FieldByname('UNIDADE').AsString;

            // BUSCA NO BANCO LOCAL OS DADOS DA TABELA EQUIPE QUE ESTA SENDO USADA NA ORDEM ATUAL
            FiltraTabela(DMPESSOA.TEquipe, 'EQUIPE', 'COD_EQUIPE', DMESTOQUE.TDesp.FieldByname('COD_EQUIPE').AsString, '');

            // VERIFICA SE NO BANCO DE FORA TEM A EQUIPE CADASTRADA JUNTO COM SEU RESPONSAVEL E FUNCIONARIOS
            DMEXPORTA.TDesp.ParamByName('COD_EQUIPE').AsInteger := VerificaEquipe(DMESTOQUE.TDesp.FieldByname('COD_EQUIPE').AsString, DMPESSOA.TEquipe.FieldByname('COD_RESPONSAVEL').AsString);

            // ESSE CAMPO EH O FUNCIONARIO QUE ATRIBUIU O SERVICO NA ORDEM
            if (DMESTOQUE.TDesp.FieldByName('COD_FUNCIONARIO').AsString <> '') and (DMESTOQUE.TDesp.FieldByName('COD_FUNCIONARIO').AsInteger > 0) then
              DMEXPORTA.TDesp.ParamByName('COD_FUNCIONARIO').AsInteger := -1; // VerificaFuncionario('RESPONSAVEL',DMESTOQUE.TDesp.FieldByName('COD_FUNCIONARIO').AsString);
            DMEXPORTA.TDesp.ExecSQL;

            DMEXPORTA.IBTExporta.CommitRetaining;
          except
            MessageDlg('FALHA 532', mtWarning, [mbOK], 0);
          end;
          // proxima despesa
          DMESTOQUE.TDesp.Next;
        end;

        LBCONEXAO.Caption := 'Finalizando Transação ... ';
        PExp.Refresh;

        // proxima ordem
        DMServ.TOrd.Next;
      end;

      try
        // atualizando o banco local para não permitir exportar mais as ordens recem exportadas
        DMServ.TAlx1.Close;
        DMServ.TAlx1.SQL.Clear;
        DMServ.TAlx1.SQL.Add('update ordem set ordem.exportado = ' + #39 + '#' + #39);
        DMServ.TAlx1.SQL.Add(', ordem.edit = ' + #39 + '' + #39);
        DMServ.TAlx1.SQL.Add('where ordem.exp = ' + #39 + 'X' + #39);
        DMServ.TAlx1.ExecSQL;

        // removendo o marcador das ordens que foram selecionadas para exportar
        DMServ.TAlx1.Close;
        DMServ.TAlx1.SQL.Clear;
        DMServ.TAlx1.SQL.Add('update ordem set ordem.exp = ' + #39 + '' + #39);
        DMServ.TAlx1.SQL.Add('where ordem.exportado = ' + #39 + '#' + #39);
        DMServ.TAlx1.ExecSQL;

        // atualizando o banco local
        DMServ.IBT.CommitRetaining;
      except
        MessageDlg('FALHA 533', mtWarning, [mbOK], 0);
      end;
      //ATUALIZAR GRID DE CONSULTA
      AtualizaGridConsulta('ORIGEM');

      // OCULTANDO BARRA DE PROGRESSAO
      PExp.Visible := FALSE;
      PExp.SendToBack;
      //SQL PARA INDICAR NA EMPRESA QUE ESTA SENDO EXPORTADO ORDENS
      DMEXPORTA.Alx.Close;
      DMEXPORTA.Alx.SQL.Clear;
      DMEXPORTA.Alx.SQL.Add('update empresa set empresa.emexporta=' + #39 + '0' + #39);
      DMEXPORTA.Alx.ExecSQL;
      DMEXPORTA.IBTExporta.CommitRetaining;

      Mensagem('INFORMAÇÃO', 'ORDEN(S) EXPORTADA(S) COM SUCESSO!', '', 1, 1, false, 'i');
    end
    else
    begin
      // OCULTANDO BARRA DE PROGRESSAO
      PExp.Visible := FALSE;
      PExp.SendToBack;
      //SQL PARA INDICAR NA EMPRESA QUE ESTA SENDO EXPORTADO ORDENS
      DMEXPORTA.Alx.Close;
      DMEXPORTA.Alx.SQL.Clear;
      DMEXPORTA.Alx.SQL.Add('update empresa set empresa.emexporta=' + #39 + '0' + #39);
      DMEXPORTA.Alx.ExecSQL;
      DMEXPORTA.IBTExporta.CommitRetaining;

      Mensagem('   A T E N Ç Ã O   ', 'Ocorreu uma falha ao conectar com o Banco de Dados de Exportação.' + #13 + 'Se o problema persistir consulte o Suporte.', '', 1, 1, false, 'A');
      Exit;
    end;

  except
    // OCULTANDO BARRA DE PROGRESSAO
    PExp.Visible := FALSE;
    PExp.SendToBack;
    DMServ.IBT.RollbackRetaining;
    Mensagem('   A T E N Ç Ã O   ', 'Ocorreu uma falha durante a Exportação dos Dados.' + #13 + 'Se o problema persistir consulte o Suporte.', '', 1, 1, false, 'A');
    Exit;
  end;
end;

// Conecta banco de ddos para exportar Ordens

function TFOrdemMec.ConectaBancoDados(XEndereco: string): boolean;
begin
  try
    // DESCONECTA TABELAS DO BANCO QUE IRA RECEBER AS EXPORTAÇÕES DAS ORDENS DE SERVICO
    DMEXPORTA.TEstoque.Active := false;
    DMEXPORTA.TProduto.Active := false;
    DMEXPORTA.TSubProd.Active := false;
    DMEXPORTA.TGrupo.Active := false;
    DMEXPORTA.TSubgru.Active := false;
    DMEXPORTA.TUnidade.Active := false;
    DMEXPORTA.TCst.Active := false;
    DMEXPORTA.TPedV.Active := false;
    DMEXPORTA.TFormPag.Active := false;
    DMEXPORTA.TPessoa.Active := false;

    DMEXPORTA.TPessoaF.Active := false;
    DMEXPORTA.TPessoaJ.Active := false;
    DMEXPORTA.TCodigo.Active := false;

    DMEXPORTA.Alx.Active := false;
    DMEXPORTA.Alx2.Active := false;
    DMEXPORTA.Alx3.Active := false;
    DMEXPORTA.Alx4.Active := false;
    DMEXPORTA.Alx5.Active := false;

    // DESCONECTA BANCO E TRANSACTION
    DMExporta.DBExporta.Connected := false;
    DMExporta.IBTExporta.Active := false;

    //  INFORMA O LOCAL, CONECTA BANCO E ATIVA TRANSACTION
    DMExporta.DBExporta.DatabaseName := XEndereco;
    DMExporta.DBExporta.Connected := true;
    DMExporta.IBTExporta.Active := true;

    // ATIVA TABELAS
    DMEXPORTA.TEstoque.Active := true;
    DMEXPORTA.TProduto.Active := true;
    DMEXPORTA.TSubProd.Active := true;
    DMEXPORTA.TGrupo.Active := true;
    DMEXPORTA.TSubgru.Active := true;
    DMEXPORTA.TUnidade.Active := true;
    DMEXPORTA.TCst.Active := true;
    DMEXPORTA.TPedV.Active := true;
    DMEXPORTA.TFormPag.Active := true;

    DMEXPORTA.TPessoa.Close;
    DMEXPORTA.TPessoa.SQL.Clear;
    DMEXPORTA.TPessoa.SQL.Add(' SELECT * FROM PESSOA ');
    DMEXPORTA.TPessoa.Open;
    DMEXPORTA.TPessoa.Active := true;

    DMEXPORTA.TPessoaf.Close;
    DMEXPORTA.TPessoaf.SQL.Clear;
    DMEXPORTA.TPessoaf.SQL.Add(' SELECT * FROM PESSOAf ');
    DMEXPORTA.TPessoaf.Open;
    DMEXPORTA.TPessoaf.Active := true;

    DMEXPORTA.TPessoaj.Close;
    DMEXPORTA.TPessoaj.SQL.Clear;
    DMEXPORTA.TPessoaj.SQL.Add(' SELECT * FROM PESSOAj ');
    DMEXPORTA.TPessoaj.Open;
    DMEXPORTA.TPessoaj.Active := true;

    DMEXPORTA.TCodigo.Active := true;

    DMEXPORTA.Alx.Active := true;
    DMEXPORTA.Alx2.Active := true;
    DMEXPORTA.Alx3.Active := true;
    DMEXPORTA.Alx4.Active := true;
    DMEXPORTA.Alx5.Active := true;

    Result := true;
  except
    Result := false;
  end;

end;
// verifica se jah existe o funcionario no banco de fora, e se na estiver jah cadastra na hora

function TFOrdemMec.VerificaFuncionario(Atividade: string; Cod_funcionario: string): integer;
var
  XCod_Func, tmp, aux: integer;
begin
  Result := -1;
  try
    tmp := StrToInt(Cod_funcionario);
    if tmp = 111522 then
    begin
      Result := 111522;
      Exit;
    end;
  except
    Result := -1;
  end;

  try
    // FILTRA TABELA DE FUNCIONARIO PARA BUSCAR O CODIGO DE PESSOA
    if Atividade = 'VENDEDOR' then
      FiltraTabela(DMPESSOA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC', Cod_funcionario, '')
    else if Atividade = 'FUNCIONARIO' then
      FiltraTabela(DMPESSOA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC', Cod_funcionario, '')
    else if Atividade = 'USUARIO' then
    begin
      // busca dados usuario
      FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', Cod_funcionario, '');

      // busca dados de funcionario em relacao aos dados de usuario
      FiltraTabela(DMPESSOA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC', DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsString, '');
    end
    else if Atividade = 'RESPONSAVEL' then
    begin
      // busca os dados da tabela funcionario para selecionar dados da pessoa
      FiltraTabela(DMPESSOA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC', Cod_funcionario, '');
    end;

    // filtra tabela de pessoa para buscar o cpf do funcionario
    FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TFuncionario.FieldByName('cod_pessoa').AsString, '');

    // busca no banco de dados de fora o funcionario com o mesmo cpf
    // verifica se existe com mesmo CPF/CNPJ
    DMEXPORTA.TPessoa.Close;
    DMEXPORTA.TPessoa.SQL.Clear;
    DMEXPORTA.TPessoa.SQL.Add('select * from pessoa');
    DMEXPORTA.TPessoa.SQL.Add('where (pessoa.cpfcnpj = :cpf)');
    DMEXPORTA.TPessoa.ParamByName('cpf').AsString := DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString;
    DMEXPORTA.TPessoa.Open;

    // senao axar
    if (DMEXPORTA.TPessoa.IsEmpty) then
    begin
      // verifica se existe com mesmo nome
      DMEXPORTA.TPessoa.Close;
      DMEXPORTA.TPessoa.SQL.Clear;
      DMEXPORTA.TPessoa.SQL.Add('select * from pessoa');
      DMEXPORTA.TPessoa.SQL.Add('where UPPER(pessoa.nome) = UPPER(:nome)');
      DMEXPORTA.TPessoa.ParamByName('nome').AsString := DMPESSOA.TPessoa.FieldByName('nome').AsString;
      DMEXPORTA.TPessoa.Open;
    end;

    // se o banco de fora nao possui o funcionario, o mesmo sera cadastrado
    if (DMEXPORTA.TPessoa.IsEmpty) {//and (DMPESSOA.TPessoa.FieldByName('nome').AsString <> '')} then
    begin
      // função para cadastrar funcionario
      XCod_Func := CadastroFuncionario;

    end
    else
    begin
      DMEXPORTA.TFuncionario.Close;
      DMEXPORTA.TFuncionario.SQL.Clear;
      DMEXPORTA.TFuncionario.SQL.Add('select * from funcionario where funcionario.cod_pessoa = :codigo');
      DMEXPORTA.TFuncionario.ParamByName('codigo').AsInteger := DMEXPORTA.TPessoa.FieldByname('cod_pessoa').AsInteger;
      DMEXPORTA.TFuncionario.Open;
      XCod_Func := DMEXPORTA.TFuncionario.FieldByName('cod_func').AsInteger;
      //fazer atualização dos dados do funcionario
      try
        if AtualizarFuncionarioBancoExterno(StrToInt(Cod_funcionario), XCod_Func) = False then
          Result := -1;
      except
        Result := -1;
      end
    end;

    if Atividade = 'USUARIO' then
    begin
      {// busca no banco de dados de fora o funcionario com o mesmo cpf
      DMEXPORTA.TPessoa.Close;
      DMEXPORTA.TPessoa.SQL.Clear;
      DMEXPORTA.TPessoa.SQL.Add('select * from pessoa');
      DMEXPORTA.TPessoa.SQL.Add('WHERE (pessoa.cpfcnpj = :CPF)');
      DMEXPORTA.TPessoa.ParamByName('CPF').AsString := DMPESSOA.TPessoa.FieldByname('cpfcnpj').AsString;
      DMEXPORTA.TPessoa.Open;

      // COMO JAH EXISTE O FUNCIOANRIO CADASTRADO NO BANCO DE FORA, ELE EH FILTRADO A PARTIR DO CODIGO PESSOA
      If FiltraTabela(DMEXPORTA.TFuncionario,'FUNCIONARIO','COD_PESSOA',DMEXPORTA.TPessoa.FieldByname('COD_PESSOA').AsString,'') = false
      Then Begin
          // se ate o momento nao foi encontrado pessoa eh pq o funcionario nao esta cadastrado corretamente, ou invalido, ou pode ser tambem o MESTRE
          Result := 111522;
          Exit;
      End;   }

      // verificando se na tabela usuario do banco de fora existe usuario cadastrado
      DMEXPORTA.TUsuario.Close;
      DMEXPORTA.TUsuario.SQL.Clear;
      DMEXPORTA.TUsuario.SQL.Add('select * from usuario where usuario.cod_funcionario = :codigo');
      DMEXPORTA.TUsuario.ParamByName('codigo').AsInteger := XCod_Func;
      DMEXPORTA.TUsuario.Open;

      if DMEXPORTA.TUsuario.IsEmpty then
      begin
        //insere novo usuario

        DMEXPORTA.TUsuario.Close;
        DMEXPORTA.TUsuario.SQL.Clear;
        DMEXPORTA.TUsuario.SQL.Add('insert into USUARIO');
        DMEXPORTA.TUsuario.SQL.Add('(CODUSUARIO, COD_FUNCIONARIO, LOGIN, SENHA, DATA_CAD, ADM, REVRESMOV)');
        DMEXPORTA.TUsuario.SQL.Add('values');
        DMEXPORTA.TUsuario.SQL.Add('(:CODUSUARIO, :COD_FUNCIONARIO, :LOGIN, :SENHA, :DATA_CAD, :ADM, :REVRESMOV)');

        DMEXPORTA.TUsuario.ParamByName('CODUSUARIO').AsInteger := DMEXPORTA.TCodigo.FieldByName('CODUSUARIO').AsInteger;

        aux := DMEXPORTA.TCodigo.FieldByName('CODUSUARIO').AsInteger;

        // ATUALIZANDO TABELA CODIGO
        DMEXPORTA.TCodigo.Edit;
        DMEXPORTA.TCodigo.FieldByName('CODUSUARIO').AsInteger := DMEXPORTA.TCodigo.FieldByName('CODUSUARIO').AsInteger + 1;
        DMEXPORTA.TCodigo.Post;

        DMEXPORTA.IBTExporta.CommitRetaining;
      end
      else
      begin
        //atualiza dados
        aux := DMEXPORTA.TUsuario.FieldByName('CODUSUARIO').AsInteger;

        DMEXPORTA.TUsuario.Close;
        DMEXPORTA.TUsuario.SQL.Clear;
        DMEXPORTA.TUsuario.SQL.Add('update USUARIO set');
        DMEXPORTA.TUsuario.SQL.Add('COD_FUNCIONARIO = :COD_FUNCIONARIO, LOGIN = :LOGIN, SENHA = :SENHA, DATA_CAD = :DATA_CAD, ADM = :ADM, REVRESMOV = :REVRESMOV');
        DMEXPORTA.TUsuario.SQL.Add('where CODUSUARIO = :OLD_CODUSUARIO');

        DMEXPORTA.TUsuario.ParamByName('OLD_CODUSUARIO').AsInteger := aux;

      end;

      DMEXPORTA.TUsuario.ParamByName('COD_FUNCIONARIO').AsInteger := XCod_Func;
      DMEXPORTA.TUsuario.ParamByName('LOGIN').AsString := DMMACS.TUsuario.FieldByName('LOGIN').AsString;
      DMEXPORTA.TUsuario.ParamByName('SENHA').AsString := DMMACS.TUsuario.FieldByName('SENHA').AsString;
      if DMMACS.TUsuario.FieldByName('DATA_CAD').AsString <> '' then
        DMEXPORTA.TUsuario.ParamByName('DATA_CAD').AsDateTime := DMMACS.TUsuario.FieldByName('DATA_CAD').AsDateTime;
      DMEXPORTA.TUsuario.ParamByName('ADM').AsString := DMMACS.TUsuario.FieldByName('ADM').AsString;
      DMEXPORTA.TUsuario.ParamByName('REVRESMOV').AsString := DMMACS.TUsuario.FieldByName('REVRESMOV').AsString;
      DMEXPORTA.TUsuario.ExecSQL;

      // SE CASO O PARAMETRO DA FUNÇÃO FOR "USUARIO" ENTÃO ESTA BUSCANDO SOMENTE O COD_USUARIO, POR ISSO LOGO QUE FOR REPASSADO O VALOR P O RETORNO DA FUNÇÃO, NÃO PODE CONTINUAR NA FUNÇÃO PQ SENAO SERA RETORNADO O COD_FUNCIONARIO
      Result := aux;
      Exit;
    end;

    DMEXPORTA.IBTExporta.CommitRetaining;

    Result := XCod_Func;
  except
    Result := -1;
  end;
end;

// verifica se o cliente esta cadastrado no banco, se nao tiver jah cadastra na hora

function TFOrdemMec.VerificaCliente(Cod_Cliente: integer): integer;
var
  XCOD_PESSOA, XCOD_CLIENTE, XCOD_PESSOAF, XFLAG: INTEGER;
begin
  try
    // FILTRA A TABELA CLIENTE PARA BUSCAR O COD_PESSOA
    if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', IntToStr(Cod_Cliente), '') = True then
    begin
      // FILTRA A TABELA PESSOA P BUSCAR O NOME REFERNTE AO COD_PESSOA REPASSADO PELA TABELA CLIENTE
      FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByname('cod_pessoa').AsString, '');
    end
    else
    begin
      MessageDlg('As Informações completas da pessoa relacionada, não foram encontradas.' + #13 + #10 + 'Entre no cadastro e atualize os dados', mtWarning, [mbOK], 0);
      Exit;
    end;

    if DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString = '' then
    begin
      MessageDlg('O Cliente esta sem CPF/CNPJ', mtWarning, [mbOK], 0)
    end
    else
    begin
      // verifica se existe cliente com mesmo CPF/CNPJ
      DMEXPORTA.TPessoa.Close;
      DMEXPORTA.TPessoa.SQL.Clear;
      DMEXPORTA.TPessoa.SQL.Add('select * from pessoa');
      DMEXPORTA.TPessoa.SQL.Add('where (pessoa.cpfcnpj = :cpf)');
      DMEXPORTA.TPessoa.ParamByName('cpf').AsString := DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString;
      DMEXPORTA.TPessoa.Open;
    end;

    // se encontrar na tabela pessoa
    if not (DMEXPORTA.TPessoa.IsEmpty) then
    begin
      // filtrar cliente
      DMEXPORTA.TCliente.Close;
      DMEXPORTA.TCliente.SQL.Clear;
      DMEXPORTA.TCliente.SQL.Add('select * from cliente');
      DMEXPORTA.TCliente.SQL.Add('where (cliente.cod_pessoa= :codigo)');
      DMEXPORTA.TCliente.ParamByName('codigo').AsString := DMEXPORTA.TPessoa.FieldByName('COD_PESSOA').AsString;
      DMEXPORTA.TCliente.Open;
    end;

    // se nao encontrar
    if (DMEXPORTA.TPessoa.IsEmpty) {//and (DMPESSOA.TPessoa.FieldByName('nome').AsString <> '')} then
    begin
      //PROCURA UM CODIGO VALIDO PARA PESSOA
         //VALIDA CODIGO PESSOA
      XCod_Pessoa := DMEXPORTA.TCodigo.FieldByname('COD_PESSOA').AsInteger;
      XFlag := 0;
      while XFlag = 0 do
      begin
        DMEXPORTA.ALX.Close;
        DMEXPORTA.ALX.SQL.Clear;
        DMEXPORTA.ALX.SQL.Add('SELECT * FROM PESSOA WHERE PESSOA.COD_PESSOA=:CODIGO');
        DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger := XCod_Pessoa;
        DMEXPORTA.ALX.Open;

        if not DMEXPORTA.ALX.IsEmpty then
          XCod_Pessoa := XCod_Pessoa + 1
        else
          XFlag := 1;
      end;
      //VALIDA CODIGO CLIENTE
      XCod_CLIENTE := DMEXPORTA.TCodigo.FieldByname('COD_CLIENTE').AsInteger;
      XFlag := 0;
      while XFlag = 0 do
      begin
        DMEXPORTA.ALX.Close;
        DMEXPORTA.ALX.SQL.Clear;
        DMEXPORTA.ALX.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE=:CODIGO');
        DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger := XCod_CLIENTE;
        DMEXPORTA.ALX.Open;

        if not DMEXPORTA.ALX.IsEmpty then
          XCod_CLIENTE := XCod_CLIENTE + 1
        else
          XFlag := 1;
      end;

      // inserir nova pessoa
      DMEXPORTA.TPessoa.Close;
      DMEXPORTA.TPessoa.SQL.Clear;
      DMEXPORTA.TPessoa.SQL.Add('insert into pessoa');
      DMEXPORTA.TPessoa.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
      DMEXPORTA.TPessoa.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
      DMEXPORTA.TPessoa.SQL.Add('values');
      DMEXPORTA.TPessoa.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
      DMEXPORTA.TPessoa.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
      DMEXPORTA.TPessoa.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');
      DMEXPORTA.TPessoa.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;

      // inserir novo cliente
      DMEXPORTA.TCliente.Close;
      DMEXPORTA.TCliente.SQL.Clear;
      DMEXPORTA.TCliente.SQL.Add('insert into cliente');
      DMEXPORTA.TCliente.SQL.Add('(COD_CLIENTE, COD_PESSOA, COD_INTERNO, DATA_CAD, R_SAL_CONJ, R_SALARIO,');
      DMEXPORTA.TCliente.SQL.Add('R_HON_PROF, R_OUTREC, D_ALUGUEL, D_RESIDENCIA, D_VEICULO, D_FAMILIAR,');
      DMEXPORTA.TCliente.SQL.Add('D_OUTDESP, LIM_CRED, QTDTEMPORESID, BENS, COD_VENDEDOR, INFOCOM, ENDENTRAGA,');
      DMEXPORTA.TCliente.SQL.Add('ATUALIZAR, COD_USUARIO, ATIVO, CREDENCIAL, RAMOATIV, ATACADISTA, COD_FORMPAG,');
      DMEXPORTA.TCliente.SQL.Add('EXPORT, SEPARAR, MULTA, JURO, OBS, SCPC, TAMANHO, INFORMACAO,');
      DMEXPORTA.TCliente.SQL.Add('DIAVENCIMENTO)');
      DMEXPORTA.TCliente.SQL.Add('values');
      DMEXPORTA.TCliente.SQL.Add('(:COD_CLIENTE, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :R_SAL_CONJ, :R_SALARIO,');
      DMEXPORTA.TCliente.SQL.Add(':R_HON_PROF, :R_OUTREC, :D_ALUGUEL, :D_RESIDENCIA, :D_VEICULO, :D_FAMILIAR,');
      DMEXPORTA.TCliente.SQL.Add(':D_OUTDESP, :LIM_CRED, :QTDTEMPORESID, :BENS, :COD_VENDEDOR, :INFOCOM,');
      DMEXPORTA.TCliente.SQL.Add(':ENDENTRAGA, :ATUALIZAR, :COD_USUARIO, :ATIVO, :CREDENCIAL, :RAMOATIV,');
      DMEXPORTA.TCliente.SQL.Add(':ATACADISTA, :COD_FORMPAG, :EXPORT, :SEPARAR, :MULTA, :JURO, :OBS, :SCPC,');
      DMEXPORTA.TCliente.SQL.Add(':TAMANHO, :INFORMACAO, :DIAVENCIMENTO)');
      DMEXPORTA.TCliente.ParamByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;

      DMEXPORTA.Tcodigo.edit;
      DMEXPORTA.TCodigo.FieldByName('COD_PESSOA').AsInteger := XCOD_PESSOA + 1;
      DMEXPORTA.TCodigo.FieldByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE + 1;
      DMEXPORTA.TCodigo.Post;
    end
      //se encontrar pessoa
    else
    begin
      //armazenar codigo da pessoa encontrada
      XCOD_PESSOA := DMEXPORTA.TPessoa.FieldByName('COD_PESSOA').AsInteger;

      // atualizar os dados da pessoa
      DMEXPORTA.TPessoa.Close;
      DMEXPORTA.TPessoa.SQL.Clear;
      DMEXPORTA.TPessoa.SQL.Add('update pessoa');
      DMEXPORTA.TPessoa.SQL.Add('set');
      DMEXPORTA.TPessoa.SQL.Add('NOME = :NOME,');
      DMEXPORTA.TPessoa.SQL.Add('ENDERECO = :ENDERECO,');
      DMEXPORTA.TPessoa.SQL.Add('BAIRRO = :BAIRRO,');
      DMEXPORTA.TPessoa.SQL.Add('COD_CIDADE = :COD_CIDADE,');
      DMEXPORTA.TPessoa.SQL.Add('CEP = :CEP,');
      DMEXPORTA.TPessoa.SQL.Add('CPFCNPJ = :CPFCNPJ,');
      DMEXPORTA.TPessoa.SQL.Add('DATA_INI = :DATA_INI,');
      DMEXPORTA.TPessoa.SQL.Add('DTNASC = :DTNASC,');
      DMEXPORTA.TPessoa.SQL.Add('COD_REGIAO = :COD_REGIAO,');
      DMEXPORTA.TPessoa.SQL.Add('COD_NATURAL = :COD_NATURAL,');
      DMEXPORTA.TPessoa.SQL.Add('TELREL = :TELREL,');
      DMEXPORTA.TPessoa.SQL.Add('DIAANIVER = :DIAANIVER,');
      DMEXPORTA.TPessoa.SQL.Add('PROXIMIDADE = :PROXIMIDADE,');
      DMEXPORTA.TPessoa.SQL.Add('VLRCREDITO = :VLRCREDITO');
      DMEXPORTA.TPessoa.SQL.Add('where');
      DMEXPORTA.TPessoa.SQL.Add('COD_PESSOA = :OLD_COD_PESSOA');

      DMEXPORTA.TPessoa.ParamByName('OLD_COD_PESSOA').AsInteger := XCOD_PESSOA;

      //armazenar codigo do cliente
      XCOD_CLIENTE := DMEXPORTA.TCliente.FieldByName('COD_CLIENTE').AsInteger;

      if XCOD_CLIENTE > 0 then
      begin
        //fazer update nos dados do cliente
        DMEXPORTA.TCliente.Close;
        DMEXPORTA.TCliente.SQL.Clear;
        DMEXPORTA.TCliente.SQL.Add('update cliente');
        DMEXPORTA.TCliente.SQL.Add('set');
        DMEXPORTA.TCliente.SQL.Add('COD_PESSOA = :COD_PESSOA,');
        DMEXPORTA.TCliente.SQL.Add('COD_INTERNO = :COD_INTERNO,');
        DMEXPORTA.TCliente.SQL.Add('DATA_CAD = :DATA_CAD,');
        DMEXPORTA.TCliente.SQL.Add('R_SAL_CONJ = :R_SAL_CONJ,');
        DMEXPORTA.TCliente.SQL.Add('R_SALARIO = :R_SALARIO,');
        DMEXPORTA.TCliente.SQL.Add('R_HON_PROF = :R_HON_PROF,');
        DMEXPORTA.TCliente.SQL.Add('R_OUTREC = :R_OUTREC,');
        DMEXPORTA.TCliente.SQL.Add('D_ALUGUEL = :D_ALUGUEL,');
        DMEXPORTA.TCliente.SQL.Add('D_RESIDENCIA = :D_RESIDENCIA,');
        DMEXPORTA.TCliente.SQL.Add('D_VEICULO = :D_VEICULO,');
        DMEXPORTA.TCliente.SQL.Add('D_FAMILIAR = :D_FAMILIAR,');
        DMEXPORTA.TCliente.SQL.Add('D_OUTDESP = :D_OUTDESP,');
        DMEXPORTA.TCliente.SQL.Add('LIM_CRED = :LIM_CRED,');
        DMEXPORTA.TCliente.SQL.Add('QTDTEMPORESID = :QTDTEMPORESID,');
        DMEXPORTA.TCliente.SQL.Add('BENS = :BENS,');
        DMEXPORTA.TCliente.SQL.Add('COD_VENDEDOR = :COD_VENDEDOR,');
        DMEXPORTA.TCliente.SQL.Add('INFOCOM = :INFOCOM,');
        DMEXPORTA.TCliente.SQL.Add('ENDENTRAGA = :ENDENTRAGA,');
        DMEXPORTA.TCliente.SQL.Add('ATUALIZAR = :ATUALIZAR,');
        DMEXPORTA.TCliente.SQL.Add('COD_USUARIO = :COD_USUARIO,');
        DMEXPORTA.TCliente.SQL.Add('ATIVO = :ATIVO,');
        DMEXPORTA.TCliente.SQL.Add('CREDENCIAL = :CREDENCIAL,');
        DMEXPORTA.TCliente.SQL.Add('RAMOATIV = :RAMOATIV,');
        DMEXPORTA.TCliente.SQL.Add('ATACADISTA = :ATACADISTA,');
        DMEXPORTA.TCliente.SQL.Add('COD_FORMPAG = :COD_FORMPAG,');
        DMEXPORTA.TCliente.SQL.Add('EXPORT = :EXPORT,');
        DMEXPORTA.TCliente.SQL.Add('SEPARAR = :SEPARAR,');
        DMEXPORTA.TCliente.SQL.Add('MULTA = :MULTA,');
        DMEXPORTA.TCliente.SQL.Add('JURO = :JURO,');
        DMEXPORTA.TCliente.SQL.Add('OBS = :OBS,');
        DMEXPORTA.TCliente.SQL.Add('SCPC = :SCPC,');
        DMEXPORTA.TCliente.SQL.Add('TAMANHO = :TAMANHO,INFORMACAO = :INFORMACAO, DIAVENCIMENTO = :DIAVENCIMENTO');
        DMEXPORTA.TCliente.SQL.Add('where');
        DMEXPORTA.TCliente.SQL.Add('COD_CLIENTE = :OLD_COD_CLIENTE');

        DMEXPORTA.TCliente.ParamByName('OLD_COD_CLIENTE').AsInteger := XCOD_CLIENTE;
      end
      else
      begin
        //VALIDA CODIGO CLIENTE
        XCod_CLIENTE := DMEXPORTA.TCodigo.FieldByname('COD_CLIENTE').AsInteger;
        XFlag := 0;
        while XFlag = 0 do
        begin
          DMEXPORTA.ALX.Close;
          DMEXPORTA.ALX.SQL.Clear;
          DMEXPORTA.ALX.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE=:CODIGO');
          DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger := XCod_CLIENTE;
          DMEXPORTA.ALX.Open;

          if not DMEXPORTA.ALX.IsEmpty then
            XCod_CLIENTE := XCod_CLIENTE + 1
          else
            XFlag := 1;
        end;
        // inserir novo cliente
        DMEXPORTA.TCliente.Close;
        DMEXPORTA.TCliente.SQL.Clear;
        DMEXPORTA.TCliente.SQL.Add('insert into cliente');
        DMEXPORTA.TCliente.SQL.Add('(COD_CLIENTE, COD_PESSOA, COD_INTERNO, DATA_CAD, R_SAL_CONJ, R_SALARIO,');
        DMEXPORTA.TCliente.SQL.Add('R_HON_PROF, R_OUTREC, D_ALUGUEL, D_RESIDENCIA, D_VEICULO, D_FAMILIAR,');
        DMEXPORTA.TCliente.SQL.Add('D_OUTDESP, LIM_CRED, QTDTEMPORESID, BENS, COD_VENDEDOR, INFOCOM, ENDENTRAGA,');
        DMEXPORTA.TCliente.SQL.Add('ATUALIZAR, COD_USUARIO, ATIVO, CREDENCIAL, RAMOATIV, ATACADISTA, COD_FORMPAG,');
        DMEXPORTA.TCliente.SQL.Add('EXPORT, SEPARAR, MULTA, JURO, OBS, SCPC, TAMANHO, INFORMACAO,');
        DMEXPORTA.TCliente.SQL.Add('DIAVENCIMENTO)');
        DMEXPORTA.TCliente.SQL.Add('values');
        DMEXPORTA.TCliente.SQL.Add('(:COD_CLIENTE, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :R_SAL_CONJ, :R_SALARIO,');
        DMEXPORTA.TCliente.SQL.Add(':R_HON_PROF, :R_OUTREC, :D_ALUGUEL, :D_RESIDENCIA, :D_VEICULO, :D_FAMILIAR,');
        DMEXPORTA.TCliente.SQL.Add(':D_OUTDESP, :LIM_CRED, :QTDTEMPORESID, :BENS, :COD_VENDEDOR, :INFOCOM,');
        DMEXPORTA.TCliente.SQL.Add(':ENDENTRAGA, :ATUALIZAR, :COD_USUARIO, :ATIVO, :CREDENCIAL, :RAMOATIV,');
        DMEXPORTA.TCliente.SQL.Add(':ATACADISTA, :COD_FORMPAG, :EXPORT, :SEPARAR, :MULTA, :JURO, :OBS, :SCPC,');
        DMEXPORTA.TCliente.SQL.Add(':TAMANHO, :INFORMACAO, :DIAVENCIMENTO)');
        DMEXPORTA.TCliente.ParamByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;

        DMEXPORTA.Tcodigo.edit;
        DMEXPORTA.TCodigo.FieldByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE + 1;
        DMEXPORTA.TCodigo.Post;
      end;
    end;
    DMEXPORTA.TPessoa.ParamByName('NOME').AsString := DMPESSOA.TPessoa.FieldByname('nome').AsString;
    DMEXPORTA.TPessoa.ParamByName('ENDERECO').AsString := DMPESSOA.TPessoa.FieldByname('endereco').AsString;
    DMEXPORTA.TPessoa.ParamByName('BAIRRO').AsString := DMPESSOA.TPessoa.FieldByname('bairro').AsString;
    // verifica se existe a cidade do cliente, se nao jah cadastra
    DMEXPORTA.TPessoa.ParamByName('COD_CIDADE').AsInteger := VerificaCidade;
    DMEXPORTA.TPessoa.ParamByName('CEP').AsString := DMPESSOA.TPessoa.FieldByname('CEP').AsString;
    DMEXPORTA.TPessoa.ParamByName('CPFCNPJ').AsString := DMPESSOA.TPessoa.FieldByname('CPFCNPJ').AsString;
    if DMPESSOA.TPessoa.FieldByname('DATA_INI').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('DATA_INI').AsDateTime := DMPESSOA.TPessoa.FieldByname('DATA_INI').AsDateTime;
    DMEXPORTA.TPessoa.ParamByName('TELREL').AsString := DMPESSOA.TPessoa.FieldByname('TELREL').AsString;
    if DMPESSOA.TPessoa.FieldByname('DTNASC').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('DTNASC').AsDateTime := DMPESSOA.TPessoa.FieldByname('DTNASC').AsDateTime;
    DMEXPORTA.TPessoa.ParamByName('COD_REGIAO').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_REGIAO').AsInteger;
    if DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('COD_NATURAL').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsInteger;
    if DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('DIAANIVER').AsInteger := DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsInteger;
    DMEXPORTA.TPessoa.ParamByName('PROXIMIDADE').AsString := DMPESSOA.TPessoa.FieldByname('PROXIMIDADE').AsString;
    DMEXPORTA.TPessoa.ParamByName('VLRCREDITO').AsCurrency := DMPESSOA.TPessoa.FieldByname('VLRCREDITO').AsCurrency;
    DMEXPORTA.TPessoa.ExecSQL;

    // filtra tabela pelo codigo da pessoa     // banco externo
    FiltraTabela(DMEXPORTA.TPessoa, 'PESSOA', 'COD_PESSOA', IntToStr(XCOD_PESSOA), '');

    // selecionando dados da tabela pessoa fisica
    DMPESSOA.TPessoaF.Close;
    DMPESSOA.TPessoaF.SQL.Clear;
    DMPESSOA.TPessoaF.SQL.Add('select * from pessoaf where pessoaf.cod_pessoa = :codigo');
    DMPESSOA.TPessoaF.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('cod_pessoa').AsInteger;
    DMPESSOA.TPessoaF.Open;

    // seleciona no banco local os dados da pessoa juridica
    DMPESSOA.TPessoaJ.Close;
    DMPESSOA.TPessoaJ.SQL.Clear;
    DMPESSOA.TPessoaJ.SQL.Add('select * from pessoaj where pessoaj.cod_pessoa = :codigo');
    DMPESSOA.TPessoaJ.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('cod_pessoa').AsInteger;
    DMPESSOA.TPessoaJ.Open;

    // ou seja, se pessoaj está vazio e foi encntrado pessoaf, a pessoa atual estah definida no banco local como pessoaf
    if (DMPESSOA.TPessoaJ.IsEmpty) and (not DMPESSOA.TPessoaF.IsEmpty) then
    begin
      DMEXPORTA.Alx.Close;
      DMEXPORTA.Alx.SQL.Clear;
      DMEXPORTA.Alx.SQL.Add('select * from pessoaF');
      DMEXPORTA.Alx.SQL.Add('where (pessoaF.cod_pessoa = :codigo)');
      DMEXPORTA.Alx.ParamByName('codigo').AsInteger := XCOD_PESSOA;
      DMEXPORTA.Alx.Open;
      if DMEXPORTA.Alx.IsEmpty then
      begin
        //PROCURA UM CODIGO VALIDO PARA PESSOA
        //VALIDA CODIGO PESSOA
        XCod_PessoaF := DMEXPORTA.TCodigo.FieldByname('COD_PESSOAF').AsInteger;
        XFlag := 0;
        while XFlag = 0 do
        begin
          DMEXPORTA.ALX.Close;
          DMEXPORTA.ALX.SQL.Clear;
          DMEXPORTA.ALX.SQL.Add('SELECT * FROM PESSOAF WHERE PESSOAF.COD_PESSOAF=:CODIGO');
          DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger := XCod_PessoaF;
          DMEXPORTA.ALX.Open;

          if not DMEXPORTA.ALX.IsEmpty then
            XCod_PessoaF := XCod_PessoaF + 1
          else
            XFlag := 1;
        end;

        DMEXPORTA.Tcodigo.edit;
        DMEXPORTA.TCodigo.FieldByName('COD_PESSOAF').AsInteger := XCOD_PESSOAF + 1;
        DMEXPORTA.TCodigo.Post;
        //inserir pessoa fisica no banco externo
        DMEXPORTA.TPessoaF.Close;
        DMEXPORTA.TPessoaF.SQL.Clear;
        DMEXPORTA.TPessoaF.SQL.Add('insert into pessoaf');
        DMEXPORTA.TPessoaF.SQL.Add('(COD_PESSOAF, COD_PESSOA, ESTADO_CIVIL, SEXO, EMP_TRAB, END_TRAB, BAIRRO_TRAB,');
        DMEXPORTA.TPessoaF.SQL.Add('DATA_ADMIS, CARGO, RG, DATA_EXPED, ORGAO_EXPED, TITULO, NOME_CONJ, DATANASC_CONJ,');
        DMEXPORTA.TPessoaF.SQL.Add('RG_CONJ, CPF_CONJ, EMP_CONJ, NOME_PAI, NOME_MAE, ENDE_FILIACAO)');
        DMEXPORTA.TPessoaF.SQL.Add('values');
        DMEXPORTA.TPessoaF.SQL.Add('(:COD_PESSOAF, :COD_PESSOA, :ESTADO_CIVIL, :SEXO, :EMP_TRAB, :END_TRAB,');
        DMEXPORTA.TPessoaF.SQL.Add(':BAIRRO_TRAB, :DATA_ADMIS, :CARGO, :RG, :DATA_EXPED, :ORGAO_EXPED, :TITULO,');
        DMEXPORTA.TPessoaF.SQL.Add(':NOME_CONJ, :DATANASC_CONJ, :RG_CONJ, :CPF_CONJ, :EMP_CONJ, :NOME_PAI,');
        DMEXPORTA.TPessoaF.SQL.Add(':NOME_MAE, :ENDE_FILIACAO)');
        DMEXPORTA.TPessoaF.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
        DMEXPORTA.TPessoaF.ParamByName('COD_PESSOAF').AsInteger := XCOD_PESSOAF;
      end
      else
      begin
        // armazenar codigo da pessoa fisica
        XCOD_PESSOAF := DMEXPORTA.Alx.FieldByName('COD_PESSOAF').AsInteger;
        //update nos dados pessoa fisica
        DMEXPORTA.TPessoaF.Close;
        DMEXPORTA.TPessoaF.SQL.Clear;
        DMEXPORTA.TPessoaF.SQL.Add('update pessoaf set');
        DMEXPORTA.TPessoaF.SQL.Add('ESTADO_CIVIL = :ESTADO_CIVIL,');
        DMEXPORTA.TPessoaF.SQL.Add('SEXO = :SEXO, EMP_TRAB = :EMP_TRAB, END_TRAB = :END_TRAB, BAIRRO_TRAB = :BAIRRO_TRAB,');
        DMEXPORTA.TPessoaF.SQL.Add('DATA_ADMIS = :DATA_ADMIS, CARGO = :CARGO, RG = :RG, DATA_EXPED = :DATA_EXPED,');
        DMEXPORTA.TPessoaF.SQL.Add('ORGAO_EXPED = :ORGAO_EXPED, TITULO = :TITULO, NOME_CONJ = :NOME_CONJ,');
        DMEXPORTA.TPessoaF.SQL.Add('DATANASC_CONJ = :DATANASC_CONJ, RG_CONJ = :RG_CONJ, CPF_CONJ = :CPF_CONJ,');
        DMEXPORTA.TPessoaF.SQL.Add('EMP_CONJ = :EMP_CONJ, NOME_PAI = :NOME_PAI, NOME_MAE = :NOME_MAE, ENDE_FILIACAO = :ENDE_FILIACAO');
        DMEXPORTA.TPessoaF.SQL.Add('where COD_PESSOAF = :OLD_COD_PESSOAF');
        DMEXPORTA.TPessoaF.ParamByName('OLD_COD_PESSOAF').AsInteger := XCOD_PESSOAF;

      end;

      //atualizar dados pessoa fisica
      if DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('ESTADO_CIVIL').AsString := DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString;
      if DMPESSOA.TPessoaF.FieldByname('SEXO').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('SEXO').AsString := DMPESSOA.TPessoaF.FieldByname('SEXO').AsString;
      if DMPESSOA.TPessoaF.FieldByname('EMP_TRAB').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('EMP_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('EMP_TRAB').AsString;
      if DMPESSOA.TPessoaF.FieldByname('END_TRAB').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('END_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('END_TRAB').AsString;
      if DMPESSOA.TPessoaF.FieldByname('BAIRRO_TRAB').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('BAIRRO_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('BAIRRO_TRAB').AsString;
      if DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('DATA_ADMIS').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsDateTime;
      if DMPESSOA.TPessoaF.FieldByname('CARGO').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('CARGO').AsString := DMPESSOA.TPessoaF.FieldByname('CARGO').AsString;
      if DMPESSOA.TPessoaF.FieldByname('RG').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('RG').AsString := DMPESSOA.TPessoaF.FieldByname('RG').AsString;
      if DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('DATA_EXPED').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsDateTime;
      if DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('ORGAO_EXPED').AsString := DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString;
      if DMPESSOA.TPessoaF.FieldByname('TITULO').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('TITULO').AsString := DMPESSOA.TPessoaF.FieldByname('TITULO').AsString;
      if DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('NOME_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString;
      if DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('DATANASC_CONJ').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsDateTime;
      if DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('RG_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString;
      if DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('CPF_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString;
      if DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('EMP_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString;
      if DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('NOME_PAI').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString;
      if DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('NOME_MAE').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString;
      if DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString <> '' then
        DMEXPORTA.TPessoaF.ParamByName('ENDE_FILIACAO').AsString := DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString;
      //DMEXPORTA.TPessoaF.ParamByName('DIAANIVERCONJ').AsString := DMPESSOA.TPessoaF.FieldByname('DIAANIVERCONJ').AsString;
      DMEXPORTA.TPessoaF.ExecSQL;

    end
      // caso contrario eh efetuado o cadastro como pessoa juridica no banco externo
    else
    begin
      //FiltraTabela(DMEXPORTA.TPessoa,'PESSOA','CPFCNPJ',DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString,'');
      DMEXPORTA.Alx.Close;
      DMEXPORTA.Alx.SQL.Clear;
      DMEXPORTA.Alx.SQL.Add('select * from pessoaj');
      DMEXPORTA.Alx.SQL.Add('where (pessoaj.cod_pessoa = :codigo)');
      DMEXPORTA.Alx.ParamByName('codigo').AsInteger := XCOD_PESSOA;
      DMEXPORTA.Alx.Open;
      {
      DMEXPORTA.Alx.Close;         ANTIGO!!
      DMEXPORTA.Alx.SQL.Clear;
      DMEXPORTA.Alx.SQL.Add('select * from pessoaj ');
      DMEXPORTA.Alx.SQL.Add('left join pessoa on pessoaj.cod_pessoa = pessoa.cod_pessoa');
      DMEXPORTA.Alx.SQL.Add('where (pessoa.cpfcnpj = :CPF)');
      DMEXPORTA.Alx.ParamByName('CPF').AsString := DMPESSOA.TPessoa.FieldByname('CPFCNPJ').AsString;
      DMEXPORTA.Alx.Open;}

      if DMEXPORTA.Alx.IsEmpty then
      begin
        //PROCURA UM CODIGO VALIDO PARA PESSOA
        //VALIDA CODIGO PESSOA
        XCOD_PESSOAJ := DMEXPORTA.TCodigo.FieldByname('COD_PESSOAJ').AsInteger;
        XFlag := 0;
        while XFlag = 0 do
        begin
          DMEXPORTA.ALX.Close;
          DMEXPORTA.ALX.SQL.Clear;
          DMEXPORTA.ALX.SQL.Add('SELECT * FROM PESSOAJ WHERE PESSOAJ.COD_PESSOAJ=:CODIGO');
          DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger := XCod_PessoaJ;
          DMEXPORTA.ALX.Open;
          if not DMEXPORTA.ALX.IsEmpty then
            XCod_PessoaJ := XCod_PessoaJ + 1
          else
            XFlag := 1;
        end;
        //ATUALIZA PROXIMO CODIGO DE PESSOA J
        DMEXPORTA.Tcodigo.edit;
        DMEXPORTA.TCodigo.FieldByName('COD_PESSOAJ').AsInteger := XCOD_PESSOAJ + 1;
        DMEXPORTA.TCodigo.Post;

        // INSERIR PESSOA JURIDICA
        DMEXPORTA.TPessoaJ.Close;
        DMEXPORTA.TPessoaJ.SQL.Clear;
        DMEXPORTA.TPessoaJ.SQL.Add('insert into pessoaJ');
        DMEXPORTA.TPessoaJ.SQL.Add('(COD_PESSOAJ, COD_PESSOA, INSC_EST, RAZAO_SOCIAL, INSC_MUN, WEB_PAGE)');
        DMEXPORTA.TPessoaJ.SQL.Add('values');
        DMEXPORTA.TPessoaJ.SQL.Add('(:COD_PESSOAJ, :COD_PESSOA, :INSC_EST, :RAZAO_SOCIAL, :INSC_MUN, :WEB_PAGE)');

        DMEXPORTA.TPessoaJ.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
        DMEXPORTA.TPessoaJ.ParamByName('COD_PESSOAJ').AsInteger := XCOD_PESSOAJ;

      end
      else
      begin
        //ARMAZENAR CODIGO SE ENCONTROU
        XCOD_PESSOAJ := DMEXPORTA.Alx.FieldByName('COD_PESSOAJ').AsInteger;

        DMEXPORTA.TPessoaJ.Close;
        DMEXPORTA.TPessoaJ.SQL.Clear;
        DMEXPORTA.TPessoaJ.SQL.Add('update pessoaJ set');
        DMEXPORTA.TPessoaJ.SQL.Add('INSC_EST = :INSC_EST,');
        DMEXPORTA.TPessoaJ.SQL.Add('RAZAO_SOCIAL = :RAZAO_SOCIAL,INSC_MUN = :INSC_MUN, WEB_PAGE = :WEB_PAGE');
        DMEXPORTA.TPessoaJ.SQL.Add('where COD_PESSOAJ = :OLD_COD_PESSOAJ');

        DMEXPORTA.TPessoaJ.ParamByName('OLD_COD_PESSOAJ').AsInteger := XCOD_PESSOAJ;
      end;

      //ATUALIZAR DADOS
      DMEXPORTA.TPessoaJ.ParamByName('INSC_EST').AsString := DMPESSOA.TPessoaJ.fieldByname('INSC_EST').AsString;
      DMEXPORTA.TPessoaJ.ParamByName('RAZAO_SOCIAL').AsString := DMPESSOA.TPessoaJ.fieldByname('RAZAO_SOCIAL').AsString;
      if DMPESSOA.TPessoaJ.fieldByname('INSC_MUN').AsString <> '' then
        DMEXPORTA.TPessoaJ.ParamByName('INSC_MUN').AsString := DMPESSOA.TPessoaJ.fieldByname('INSC_MUN').AsString;
      if DMPESSOA.TPessoaJ.fieldByname('WEB_PAGE').AsString <> '' then
        DMEXPORTA.TPessoaJ.ParamByName('WEB_PAGE').AsString := DMPESSOA.TPessoaJ.fieldByname('WEB_PAGE').AsString;
      DMEXPORTA.TPessoaJ.ExecSQL;

    end;

    // SQL LOCAL PARA BUCAR OS DADOS DO CLIENTE BANCO LOCAL
    //FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',IntToStr(Cod_Cliente),'');//DMServ.TOrd.FieldByName('COD_CLIENTE').AsString,'');

    DMEXPORTA.TCliente.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
    DMEXPORTA.TCliente.ParamByName('COD_INTERNO').AsString := DMPESSOA.TCliente.FieldByname('COD_INTERNO').AsString;
    DMEXPORTA.TCliente.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TCliente.FieldByname('DATA_CAD').AsDateTime;
    DMEXPORTA.TCliente.ParamByName('R_SAL_CONJ').AsCurrency := DMPESSOA.TCliente.FieldByname('R_SAL_CONJ').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('R_SALARIO').AsCurrency := DMPESSOA.TCliente.FieldByname('R_SALARIO').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('R_HON_PROF').AsCurrency := DMPESSOA.TCliente.FieldByname('R_HON_PROF').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('R_OUTREC').AsCurrency := DMPESSOA.TCliente.FieldByname('R_OUTREC').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('D_ALUGUEL').AsCurrency := DMPESSOA.TCliente.FieldByname('D_ALUGUEL').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('D_RESIDENCIA').AsCurrency := DMPESSOA.TCliente.FieldByname('D_RESIDENCIA').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('D_VEICULO').AsCurrency := DMPESSOA.TCliente.FieldByname('D_VEICULO').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('D_FAMILIAR').AsCurrency := DMPESSOA.TCliente.FieldByname('D_FAMILIAR').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('D_OUTDESP').AsCurrency := DMPESSOA.TCliente.FieldByname('D_OUTDESP').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('LIM_CRED').AsCurrency := DMPESSOA.TCliente.FieldByname('LIM_CRED').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('QTDTEMPORESID').AsString := DMPESSOA.TCliente.FieldByname('QTDTEMPORESID').AsString;
    DMEXPORTA.TCliente.ParamByName('BENS').AsString := DMPESSOA.TCliente.FieldByname('BENS').AsString;

    // função qu busca o vendedor cadastrado p/ o cliente
    if (DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsString <> '') and (DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsInteger > 0) then
      DMEXPORTA.TCliente.ParamByName('COD_VENDEDOR').AsInteger := VerificaFuncionario('VENDEDOR', DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsString);

    DMEXPORTA.TCliente.ParamByName('INFOCOM').AsString := DMPESSOA.TCliente.FieldByname('INFOCOM').AsString;
    DMEXPORTA.TCliente.ParamByName('ENDENTRAGA').AsString := DMPESSOA.TCliente.FieldByname('ENDENTRAGA').AsString;
    DMEXPORTA.TCliente.ParamByName('ATUALIZAR').AsString := DMPESSOA.TCliente.FieldByname('ATUALIZAR').AsString;
    DMEXPORTA.TCliente.ParamByName('COD_USUARIO').AsInteger := DMPESSOA.TCliente.FieldByname('COD_USUARIO').AsInteger;
    if DMPESSOA.TCliente.FieldByname('ATIVO').AsString = '' then
      DMEXPORTA.TCliente.ParamByName('ATIVO').AsString := '1'
    else
      DMEXPORTA.TCliente.ParamByName('ATIVO').AsString := DMPESSOA.TCliente.FieldByname('ATIVO').AsString;
    DMEXPORTA.TCliente.ParamByName('CREDENCIAL').AsString := DMPESSOA.TCliente.FieldByname('CREDENCIAL').AsString;
    DMEXPORTA.TCliente.ParamByName('RAMOATIV').AsString := DMPESSOA.TCliente.FieldByname('RAMOATIV').AsString;
    DMEXPORTA.TCliente.ParamByName('ATACADISTA').AsString := DMPESSOA.TCliente.FieldByname('ATACADISTA').AsString;
    DMEXPORTA.TCliente.ParamByName('COD_FORMPAG').AsInteger := FormaPgto_Cliente;
    //IF DMPESSOA.TCliente.FieldByname('SEPARAR').AsString = '' THEN
        //DMEXPORTA.TCliente.ParamByName('SEPARAR').AsString := '0'
   // ELSE
    //    DMEXPORTA.TCliente.ParamByName('SEPARAR').AsString := DMPESSOA.TCliente.FieldByname('SEPARAR').AsString;
    DMEXPORTA.TCliente.ParamByName('MULTA').AsCurrency := DMPESSOA.TCliente.FieldByname('MULTA').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('JURO').AsCurrency := DMPESSOA.TCliente.FieldByname('JURO').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('OBS').AsString := DMPESSOA.TCliente.FieldByname('OBS').AsString;
    DMEXPORTA.TCliente.ParamByName('SCPC').AsString := DMPESSOA.TCliente.FieldByname('SCPC').AsString;
    DMEXPORTA.TCliente.ParamByName('TAMANHO').AsCurrency := DMPESSOA.TCliente.FieldByname('TAMANHO').AsCurrency;
    DMEXPORTA.TCliente.ParamByName('INFORMACAO').AsString := DMPESSOA.TCliente.FieldByname('INFORMACAO').AsString;
    DMEXPORTA.TCliente.ParamByName('DIAVENCIMENTO').AsInteger := DMPESSOA.TCliente.FieldByname('DIAVENCIMENTO').AsInteger;
    DMEXPORTA.TCliente.ExecSQL;

    DMEXPORTA.IBTExporta.CommitRetaining;
    Result := XCOD_CLIENTE;
  except
    MessageDlg('A Ordem Será Exportada sem cliente', mtWarning, [mbOK], 0);
    Result := -1;
  end;
end;

// verifica se existe a cidade do cliente, se nao jah cadastra

function TFOrdemMec.VerificaCidade: integer;
begin
  if DMPESSOA.TPessoa.FieldByname('COD_CIDADE').AsInteger <> -1 then
  begin
    // seleciona no banco local todos os dados da tabela cidade referente ao codigo da cidade do cliente
    DMGEOGRAFIA.WCidade.Close;
    DMGEOGRAFIA.WCidade.SQL.Clear;
    DMGEOGRAFIA.WCidade.SQL.Add('select * from vwcidade where vwcidade.cod_cidade = :codigo');
    DMGEOGRAFIA.WCidade.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_CIDADE').AsInteger;
    DMGEOGRAFIA.WCidade.Open;

    // verifica no banco de fora se existe a cidade com o mesmo nome
    DMEXPORTA.TCidade.Close;
    DMEXPORTA.TCidade.SQL.Clear;
    DMEXPORTA.TCidade.SQL.Add('select * from vwcidade where (upper(vwcidade.nome) = upper(' + #39 + DMGEOGRAFIA.WCidade.FieldByName('nome').AsString + #39 + ')) AND (upper(vwcidade.uf) = upper(' + #39 + DMGEOGRAFIA.WCidade.FieldByName('UF').AsString + #39 + '))');
    DMEXPORTA.TCidade.Open;

    if DMEXPORTA.TCidade.IsEmpty then
    begin
      // ZERA O BANCO PARA PODER INSERIR
      DMEXPORTA.TCidade.Close;
      DMEXPORTA.TCidade.SQL.Clear;
      DMEXPORTA.TCidade.SQL.Add('select * from cidade ');
      DMEXPORTA.TCidade.Open;

      // DADOS DA TABELA CODIGO PARA BUSCAR O PROXIMO CODIGO DE cidade
      DMEXPORTA.TCodigo.Close;
      DMEXPORTA.TCodigo.SQL.Clear;
      DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
      DMEXPORTA.TCodigo.Open;
      Result := DMEXPORTA.TCodigo.FieldByname('cod_cidade').AsInteger;
      DMEXPORTA.TCidade.Insert;
      DMEXPORTA.TCidade.FieldByName('cod_cidade').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_cidade').AsInteger;
      DMEXPORTA.TCidade.FieldByName('nome').AsString := DMGEOGRAFIA.WCidade.FieldByname('nome').AsString;

      // verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
      DMEXPORTA.TCidade.FieldByName('COD_ESTADO').AsInteger := VerificaEstado;
      DMEXPORTA.TCidade.Post;

      DMEXPORTA.TCodigo.Edit;
      DMEXPORTA.TCodigo.FieldByName('cod_cidade').AsInteger := DMEXPORTA.TCidade.FieldByName('cod_cidade').AsInteger + 1;
      DMEXPORTA.TCodigo.Post;

      try
        DMEXPORTA.IBTExporta.CommitRetaining;
      except
        Result := -1;
      end;
    end
    else
    begin
      Result := DMEXPORTA.TCidade.FieldByname('cod_cidade').AsInteger;
    end;
  end
  else
  begin
    Result := -1;
  end;
end;

// verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes

function TFOrdemMec.VerificaEstado: integer;
begin
  DMGEOGRAFIA.TEstado.Close;
  DMGEOGRAFIA.TEstado.SQL.Clear;
  DMGEOGRAFIA.TEstado.SQL.Add('select * from estado where estado.cod_estado = :codigo');
  DMGEOGRAFIA.TEstado.ParamByName('codigo').AsInteger := DMGEOGRAFIA.TCidade.FieldByname('COD_ESTADO').AsInteger;
  DMGEOGRAFIA.TEstado.Open;

  DMEXPORTA.TEstado.Close;
  DMEXPORTA.TEstado.SQL.Clear;
  DMEXPORTA.TEstado.SQL.Add('select * from estado where (upper(estado.descricao) = upper(' + #39 + DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString + #39 + '))');
  DMEXPORTA.TEstado.Open;

  if (DMEXPORTA.TEstado.IsEmpty) and (DMGEOGRAFIA.TEstado.FieldByName('descricao').AsString <> '') then
  begin
    DMEXPORTA.TCodigo.Close;
    DMEXPORTA.TCodigo.SQL.Clear;
    DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
    DMEXPORTA.TCodigo.Open;

    DMEXPORTA.TEstado.Close;
    DMEXPORTA.TEstado.SQL.Clear;
    DMEXPORTA.TEstado.SQL.Add('insert into estado');
    DMEXPORTA.TEstado.SQL.Add('(COD_ESTADO, DESCRICAO, UF_ESTADO)');
    DMEXPORTA.TEstado.SQL.Add('values');
    DMEXPORTA.TEstado.SQL.Add('(:COD_ESTADO, :DESCRICAO, :UF_ESTADO)');
    DMEXPORTA.TEstado.ParamByName('cod_estado').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_estado').AsInteger;
    DMEXPORTA.TEstado.ParamByName('descricao').AsString := DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString;
    DMEXPORTA.TEstado.ParamByName('uf_estado').AsString := DMGEOGRAFIA.TEstado.FieldByname('uf_estado').AsString;
    DMEXPORTA.TEstado.ExecSQL;

    DMEXPORTA.TCodigo.Edit;
    DMEXPORTA.TCodigo.FieldByName('cod_estado').AsInteger := DMEXPORTA.TEstado.FieldByName('cod_estado').AsInteger + 1;
    DMEXPORTA.TCodigo.Post;

    DMEXPORTA.IBTExporta.CommitRetaining;

    DMEXPORTA.TEstado.Close;
    DMEXPORTA.TEstado.SQL.Clear;
    DMEXPORTA.TEstado.SQL.Add('select * from estado where (upper(estado.descricao) = upper(' + #39 + DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString + #39 + '))');
    DMEXPORTA.TEstado.Open;
  end;

  Result := DMEXPORTA.TEstado.FieldByname('cod_estado').AsInteger;

end;

// VERIFICA SE NO BANCO DE FORA ESTAH CADASTRADO O EQUIPAMENTO DA ORDEM, SE NAO TIVER JAH CADASTRA

function TFOrdemMec.VerificaEquipamento(Cod_equipamento: string): integer;
var
  XCOD_AUX, XFlag: INTEGER;
begin
  Result := -1;
  // BUSCANDO NO BANCO LOCAL, OS DADOS DO EQUIPAMENTO
  FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', Cod_equipamento, '');

  // verifica se no banco de fora existe o mesmo equipamento
  DMEXPORTA.TEquip.Close;
  DMEXPORTA.TEquip.SQL.Clear;
  DMEXPORTA.TEquip.SQL.Add('SELECT * FROM EQUIPAMENTO WHERE UPPER(EQUIPAMENTO.PLACA) = UPPER(' + #39 + DMPESSOA.TEquip.FieldByName('PLACA').AsString + #39 + ')');
  DMEXPORTA.TEquip.Open;

  if DMEXPORTA.TEquip.IsEmpty then
  begin

    //VALIDA CODIGO CLIENTE
    XCOD_EQUIPAMENTO := DMEXPORTA.TCodigo.FieldByname('COD_EQUIPAMENTO').AsInteger;
    XFlag := 0;
    while XFlag = 0 do
    begin
      DMEXPORTA.ALX.Close;
      DMEXPORTA.ALX.SQL.Clear;
      DMEXPORTA.ALX.SQL.Add('SELECT * FROM EQUIPAMENTO WHERE EQUIPAMENTO.COD_EQUIPAMENTO=:CODIGO');
      DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger := XCOD_EQUIPAMENTO;
      DMEXPORTA.ALX.Open;

      if not DMEXPORTA.ALX.IsEmpty then
        XCOD_EQUIPAMENTO := XCOD_EQUIPAMENTO + 1
      else
        XFlag := 1;
    end;

    DMEXPORTA.TEquip.Close;
    DMEXPORTA.TEquip.SQL.Clear;
    DMEXPORTA.TEquip.SQL.Add('insert into EQUIPAMENTO');
    DMEXPORTA.TEquip.SQL.Add('(COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, MARCA, MODELO, ANO, COR, CHASSI,');
    DMEXPORTA.TEquip.SQL.Add('PLACA, DTAQUISICAO, CONCESSIONARIA, MOTOR, ANOMOTOR, CHASSIMOTOR, KMATUAL,');
    DMEXPORTA.TEquip.SQL.Add('UNIDRODAGEM, NUM_FROTA, ALTURAMAX, ATIVO)');
    DMEXPORTA.TEquip.SQL.Add('values');
    DMEXPORTA.TEquip.SQL.Add('(:COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :MARCA, :MODELO,:ANO, :COR,');
    DMEXPORTA.TEquip.SQL.Add(':CHASSI, :PLACA, :DTAQUISICAO, :CONCESSIONARIA, :MOTOR, :ANOMOTOR, :CHASSIMOTOR,');
    DMEXPORTA.TEquip.SQL.Add(':KMATUAL, :UNIDRODAGEM, :NUM_FROTA, :ALTURAMAX, 1)');

    DMEXPORTA.TEquip.ParamByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO;

    XCOD_AUX := XCOD_EQUIPAMENTO;

    // ATUALIZANDO A TABELA CODIGO DO BANCO DE FORA
    DMEXPORTA.TCodigo.Edit;
    DMEXPORTA.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO + 1;
    DMEXPORTA.TCodigo.Post;
  end
  else
  begin
    XCOD_AUX := DMEXPORTA.TEquip.FieldByName('cod_equipamento').AsInteger;

    DMEXPORTA.TEquip.Close;
    DMEXPORTA.TEquip.SQL.Clear;
    DMEXPORTA.TEquip.SQL.Add('update EQUIPAMENTO set');
    DMEXPORTA.TEquip.SQL.Add('COD_CLIENTE = :COD_CLIENTE,');
    DMEXPORTA.TEquip.SQL.Add('DESCRICAO = :DESCRICAO, MARCA = :MARCA,');
    DMEXPORTA.TEquip.SQL.Add('MODELO = :MODELO, ANO = :ANO, COR = :COR,');
    DMEXPORTA.TEquip.SQL.Add('CHASSI = :CHASSI, PLACA = :PLACA, DTAQUISICAO = :DTAQUISICAO,');
    DMEXPORTA.TEquip.SQL.Add('CONCESSIONARIA = :CONCESSIONARIA, MOTOR = :MOTOR,');
    DMEXPORTA.TEquip.SQL.Add('ANOMOTOR = :ANOMOTOR, CHASSIMOTOR = :CHASSIMOTOR,');
    DMEXPORTA.TEquip.SQL.Add('KMATUAL = :KMATUAL, UNIDRODAGEM = :UNIDRODAGEM,');
    DMEXPORTA.TEquip.SQL.Add('NUM_FROTA = :NUM_FROTA, ALTURAMAX = :ALTURAMAX, ATIVO = :ATIVO ');
    DMEXPORTA.TEquip.SQL.Add(' where COD_EQUIPAMENTO = :OLD_COD_EQUIPAMENTO');

    DMEXPORTA.TEquip.ParamByName('OLD_COD_EQUIPAMENTO').AsInteger := XCOD_AUX;

  end;

  DMEXPORTA.TEquip.ParamByName('COD_CLIENTE').AsInteger := DMEXPORTA.TOrd.ParamByName('COD_CLIENTE').AsInteger { VerificaCliente( DMServ.TOrd.ParamByName('COD_CLIENTE').AsInteger)};
  DMEXPORTA.TEquip.ParamByName('DESCRICAO').AsString := DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
  DMEXPORTA.TEquip.ParamByName('MARCA').AsString := DMPESSOA.TEquip.FieldByName('MARCA').AsString;
  DMEXPORTA.TEquip.ParamByName('MODELO').AsString := DMPESSOA.TEquip.FieldByName('MODELO').AsString;
  DMEXPORTA.TEquip.ParamByName('ANO').AsString := DMPESSOA.TEquip.FieldByName('ANO').AsString;
  DMEXPORTA.TEquip.ParamByName('COR').AsString := DMPESSOA.TEquip.FieldByName('COR').AsString;
  DMEXPORTA.TEquip.ParamByName('CHASSI').AsString := DMPESSOA.TEquip.FieldByName('CHASSI').AsString;
  DMEXPORTA.TEquip.ParamByName('PLACA').AsString := DMPESSOA.TEquip.FieldByName('PLACA').AsString;
  if DMPESSOA.TEquip.FieldByName('DTAQUISICAO').AsString <> '' then
    DMEXPORTA.TEquip.ParamByName('DTAQUISICAO').AsDateTime := DMPESSOA.TEquip.FieldByName('DTAQUISICAO').AsDateTime;
  DMEXPORTA.TEquip.ParamByName('CONCESSIONARIA').AsString := DMPESSOA.TEquip.FieldByName('CONCESSIONARIA').AsString;
  DMEXPORTA.TEquip.ParamByName('MOTOR').AsString := DMPESSOA.TEquip.FieldByName('MOTOR').AsString;
  DMEXPORTA.TEquip.ParamByName('ANOMOTOR').AsString := DMPESSOA.TEquip.FieldByName('ANOMOTOR').AsString;
  DMEXPORTA.TEquip.ParamByName('CHASSIMOTOR').AsString := DMPESSOA.TEquip.FieldByName('CHASSIMOTOR').AsString;
  DMEXPORTA.TEquip.ParamByName('KMATUAL').AsInteger := DMPESSOA.TEquip.FieldByName('KMATUAL').AsInteger;
  DMEXPORTA.TEquip.ParamByName('UNIDRODAGEM').AsString := DMPESSOA.TEquip.FieldByName('UNIDRODAGEM').AsString;
  DMEXPORTA.TEquip.ParamByName('NUM_FROTA').AsString := DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
  DMEXPORTA.TEquip.ParamByName('ALTURAMAX').AsCurrency := DMPESSOA.TEquip.FieldByName('ALTURAMAX').AsCurrency;
  DMEXPORTA.TEquip.SQL.Text;

  DMEXPORTA.TEquip.ExecSQL;

  DMEXPORTA.IBTExporta.CommitRetaining;

  Result := XCOD_AUX;

end;

// busca forma de pagamento, se necessario cadastra a nova forma

function TFOrdemMec.Forma_Pagamento: integer;
var
  XCOD_AUX: INTEGER;
begin
  Result := -1;
  // seleciona no banco o local os dados da tabela forma de pagamento, princialmente a descricao
  FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('cod_formpag').AsString, '');

  // verifica se no banco de fora existe a forma de pagemtn o com a mesma descricao
  DMEXPORTA.TFormPag.Close;
  DMEXPORTA.TFormPag.SQL.Clear;
  DMEXPORTA.TFormPag.SQL.Add('select * from formpag where (upper(formpag.descricao) = upper(' + #39 + DMFINANC.TFormPag.FieldByName('descricao').AsString + #39 + '))');
  DMEXPORTA.TFormPag.Open;

  if DMEXPORTA.TFormPag.IsEmpty then
  begin
    DMEXPORTA.TFormPag.Close;
    DMEXPORTA.TFormPag.SQL.Clear;
    DMEXPORTA.TFormPag.SQL.Add('insert into formpag');
    DMEXPORTA.TFormPag.SQL.Add('(COD_FORMPAG, COD_LOJA, DESCRICAO, DESCFISC, PRIMPARCELA, INTERVALO,');
    DMEXPORTA.TFormPag.SQL.Add('QUANTPARCELA, JUROAPLIC, MEDIADIAS, TIPO)');
    DMEXPORTA.TFormPag.SQL.Add('values');
    DMEXPORTA.TFormPag.SQL.Add('(:COD_FORMPAG, :COD_LOJA, :DESCRICAO, :DESCFISC, :PRIMPARCELA, :INTERVALO,');
    DMEXPORTA.TFormPag.SQL.Add(':QUANTPARCELA, :JUROAPLIC, :MEDIADIAS, :TIPO)');
    DMEXPORTA.TFormPag.ParamByName('COD_FORMPAG').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger;

    XCOD_AUX := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger;

    // atualizando banco de fora
    DMEXPORTA.TCodigo.Edit;
    DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger + 1;
    DMEXPORTA.TCodigo.Post;
  end
  else
  begin
    // editando os dados de forma de pagamento
    XCOD_AUX := DMEXPORTA.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

    DMEXPORTA.TFormPag.Close;
    DMEXPORTA.TFormPag.SQL.Clear;
    DMEXPORTA.TFormPag.SQL.Add('update formpag set');
    DMEXPORTA.TFormPag.SQL.Add('COD_LOJA = :COD_LOJA, DESCRICAO = :DESCRICAO,');
    DMEXPORTA.TFormPag.SQL.Add('DESCFISC = :DESCFISC, PRIMPARCELA = :PRIMPARCELA, INTERVALO = :INTERVALO,');
    DMEXPORTA.TFormPag.SQL.Add('QUANTPARCELA = :QUANTPARCELA, JUROAPLIC = :JUROAPLIC, MEDIADIAS = :MEDIADIAS, TIPO = :TIPO');
    DMEXPORTA.TFormPag.SQL.Add('where COD_FORMPAG = :OLD_COD_FORMPAG');

    DMEXPORTA.TFormPag.ParamByName('OLD_COD_FORMPAG').AsInteger := XCOD_AUX;
  end;

  DMEXPORTA.TFormPag.ParamByName('COD_LOJA').AsInteger := DMFINANC.TFormPag.FieldByName('COD_LOJA').AsInteger;
  DMEXPORTA.TFormPag.ParamByName('DESCFISC').AsString := DMFINANC.TFormPag.FieldByName('DESCFISC').AsString;
  DMEXPORTA.TFormPag.ParamByName('DESCRICAO').AsString := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
  DMEXPORTA.TFormPag.ParamByName('INTERVALO').AsInteger := DMFINANC.TFormPag.FieldByName('INTERVALO').AsInteger;
  DMEXPORTA.TFormPag.ParamByName('JUROAPLIC').AsCurrency := DMFINANC.TFormPag.FieldByName('JUROAPLIC').AsCurrency;
  DMEXPORTA.TFormPag.ParamByName('MEDIADIAS').AsInteger := DMFINANC.TFormPag.FieldByName('MEDIADIAS').AsInteger;
  DMEXPORTA.TFormPag.ParamByName('PRIMPARCELA').AsInteger := DMFINANC.TFormPag.FieldByName('PRIMPARCELA').AsInteger;
  DMEXPORTA.TFormPag.ParamByName('QUANTPARCELA').AsInteger := DMFINANC.TFormPag.FieldByName('QUANTPARCELA').AsInteger;
  DMEXPORTA.TFormPag.ParamByName('TIPO').AsString := DMFINANC.TFormPag.FieldByName('TIPO').AsString;
  DMEXPORTA.TFormPag.ExecSQL;

  Result := XCOD_AUX;

end;

// procura dados na tabela unidade tanto no banco local como o de fora e insere novos dads se necessario

function TFOrdemMec.DadosUnidade: integer;
var
  XCOD_AUX: INTEGER;
begin
  DMEXPORTA.TUnidade.Close;
  DMEXPORTA.TUnidade.SQL.Clear;
  DMEXPORTA.TUnidade.SQL.Add('SELECT * FROM UNIDADE WHERE (UPPER(UNIDADE.DESC_UNID) = UPPER(' + #39 + DMESTOQUE.TUnidade.FieldByName('desc_unid').AsString + #39 + '))');
  DMEXPORTA.TUnidade.Open;

  if (DMEXPORTA.TUnidade.IsEmpty) {// and (DMESTOQUE.TUnidade.FieldByName('desc_unid').AsString <> '')} then
  begin
    DMEXPORTA.TCodigo.Close;
    DMEXPORTA.TCodigo.SQL.Clear;
    DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
    DMEXPORTA.TCodigo.Open;

    DMEXPORTA.TUnidade.Close;
    DMEXPORTA.TUnidade.SQL.Clear;
    DMEXPORTA.TUnidade.SQL.Add('insert into UNIDADE');
    DMEXPORTA.TUnidade.SQL.Add('(COD_UNIDADE, DESC_UNID, SIGLA_UNID, ARREDONDAR)');
    DMEXPORTA.TUnidade.SQL.Add('values');
    DMEXPORTA.TUnidade.SQL.Add('(:COD_UNIDADE, :DESC_UNID, :SIGLA_UNID, :ARREDONDAR)');
    DMEXPORTA.TUnidade.ParamByName('cod_unidade').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_unidade').AsInteger;
    DMEXPORTA.TUnidade.ParamByName('arredondar').AsString := DMESTOQUE.TUnidade.FieldByName('arredondar').AsString;
    DMEXPORTA.TUnidade.ParamByName('desc_unid').AsString := DMESTOQUE.TUnidade.FieldByName('desc_unid').AsString;
    DMEXPORTA.TUnidade.ParamByName('sigla_unid').AsString := DMESTOQUE.TUnidade.FieldByName('sigla_unid').AsString;
    DMEXPORTA.TUnidade.ExecSQL;

    XCOD_AUX := DMEXPORTA.TCodigo.FieldByName('cod_unidade').AsInteger;

    DMEXPORTA.TCodigo.Edit;
    DMEXPORTA.TCodigo.FieldByName('cod_unidade').AsInteger := DMEXPORTA.TUnidade.FieldByName('cod_unidade').AsInteger + 1;
    DMEXPORTA.TCodigo.Post;

  end
  else
    XCOD_AUX := DMEXPORTA.TUnidade.FieldByName('cod_unidade').AsInteger;

  Result := XCOD_AUX;
end;

// VERIFICA CST PARA EXPORTAÇÃO

function TFOrdemMec.VerificaCST(XCod_Cst: Integer): integer;
begin
  Result := 0;
  // seleciona no banco local a cst correspondente
  DMESTOQUE.TCST.Close;
  DMESTOQUE.TCST.SQL.Clear;
  DMESTOQUE.TCST.SQL.Add('select * from cst where cst.cod_cst = :codigo');
  DMESTOQUE.TCST.ParamByName('codigo').AsInteger := XCod_Cst;
  DMESTOQUE.TCST.Open;
  if not DMESTOQUE.TCST.IsEmpty then
  begin
    // seleciona no banco de fora o CST que tenha a Mesma descricao
    DMEXPORTA.TCst.Close;
    DMEXPORTA.TCst.SQL.Clear;
    DMEXPORTA.TCst.SQL.Add('select * from cst where (upper(cst.descricao) = upper(' + #39 + DMESTOQUE.TCST.FieldByName('descricao').AsString + #39 + '))');
    DMEXPORTA.TCst.Open;
    if DMEXPORTA.TCst.IsEmpty then
    begin
      DMEXPORTA.TCst.Close;
      DMEXPORTA.TCst.SQL.Clear;
      DMEXPORTA.TCst.SQL.Add('insert into CST (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF, SUBSITUICAO) values (:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF, :SUBSTITUICAO)');
      DMEXPORTA.TCst.ParamByName('cod_cst').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_CST').AsInteger;
      Result := DMEXPORTA.TCodigo.FieldByName('cod_CST').AsInteger;
      DMEXPORTA.TCodigo.Edit;
      DMEXPORTA.TCodigo.FieldByName('cod_cst').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_cst').AsInteger + 1;
      DMEXPORTA.TCodigo.Post;
    end
    else
    begin
      Result := DMEXPORTA.TCst.FieldByName('cod_CST').AsInteger;
      DMEXPORTA.TCst.Close;
      DMEXPORTA.TCst.SQL.Clear;
      DMEXPORTA.TCst.SQL.Add('update CST set DESCRICAO = :DESCRICAO, COD_SIT_TRIB = :COD_SIT_TRIB, INDICEECF = :INDICEECF, SUBSTITUICAO = :SUBSTITUICAO ');
      DMEXPORTA.TCst.SQL.Add('where COD_CST = :OLD_COD_CST');
      DMEXPORTA.TCst.ParamByName('OLD_COD_CST').AsInteger := Result;
    end;
    DMEXPORTA.TCst.ParamByName('cod_sit_trib').AsString := DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString;
    DMEXPORTA.TCst.ParamByName('descricao').AsString := DMESTOQUE.TCST.FieldByname('descricao').AsString;
    DMEXPORTA.TCst.ParamByName('INDICEECF').AsString := DMESTOQUE.TCST.FieldByname('INDICEECF').AsString;
    DMEXPORTA.TCst.ParamByName('substituicao').AsString := DMESTOQUE.TCST.FieldByname('substituicao').AsString;
    DMEXPORTA.TCst.ExecSQL;
  end
  else
  begin
    Result := -1;
  end;
end;

// VERIFICA SE NO BANCO DE FORA TEM A EQUIPE CADASTRADA JUNTO COM SEU RESPONSAVEL E FUNCIONARIO

function TFOrdemMec.VerificaEquipe(Cod_equipe: string; Cod_responsavel: string): integer;
var
  XCOD_AUX: INTEGER;
begin
  try
    // BUSCANDO TODOS OS DADOS DA TABELA EQUIPE DO BANCO LOCAL
    FiltraTabela(DMPESSOA.TEquipe, 'EQUIPE', 'COD_EQUIPE', Cod_equipe, '');

    // verifica se no banco de fora jah existe a equipe cadastrada com nome, responsavel e funcionarios
    DMEXPORTA.TEquipe.Close;
    DMEXPORTA.TEquipe.SQL.Clear;
    DMEXPORTA.TEquipe.SQL.Add('select * from equipe where upper(equipe.descricao) = upper(' + #39 + DMPESSOA.TEquipe.FieldByname('descricao').AsString + #39 + ')');
    DMEXPORTA.TEquipe.Open;

    if DMEXPORTA.TEquipe.IsEmpty then
    begin
      DMEXPORTA.TEquipe.Close;
      DMEXPORTA.TEquipe.SQL.Clear;
      DMEXPORTA.TEquipe.SQL.Add('insert into EQUIPE');
      DMEXPORTA.TEquipe.SQL.Add('(COD_EQUIPE, DESCRICAO, COD_RESPONSAVEL, OBSERVACAO)');
      DMEXPORTA.TEquipe.SQL.Add('values');
      DMEXPORTA.TEquipe.SQL.Add('(:COD_EQUIPE, :DESCRICAO, :COD_RESPONSAVEL, :OBSERVACAO)');
      DMEXPORTA.TEquipe.ParamByName('COD_EQUIPE').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_EQUIPE').AsInteger;

      XCOD_AUX := DMEXPORTA.TCodigo.FieldByname('COD_EQUIPE').AsInteger;

      DMEXPORTA.TCodigo.Edit;
      DMEXPORTA.TCodigo.FieldByName('COD_EQUIPE').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_EQUIPE').AsInteger + 1;
      DMEXPORTA.TCodigo.Post;

    end
    else
    begin
      // ATUALIZANDO TABELA EQUIPE
      XCOD_AUX := DMEXPORTA.TEquipe.FieldByName('COD_EQUIPE').AsInteger;

      DMEXPORTA.TEquipe.Close;
      DMEXPORTA.TEquipe.SQL.Clear;
      DMEXPORTA.TEquipe.SQL.Add('update EQUIPE set');
      DMEXPORTA.TEquipe.SQL.Add('DESCRICAO = :DESCRICAO, COD_RESPONSAVEL = :COD_RESPONSAVEL, OBSERVACAO = :OBSERVACAO');
      DMEXPORTA.TEquipe.SQL.Add('where COD_EQUIPE = :OLD_COD_EQUIPE');

      DMEXPORTA.TEquipe.ParamByName('OLD_COD_EQUIPE').AsInteger := XCOD_AUX;

    end;

    DMEXPORTA.TEquipe.ParamByName('DESCRICAO').AsString := DMPESSOA.TEquipe.FieldByname('DESCRICAO').AsString;
    DMEXPORTA.TEquipe.ParamByName('COD_RESPONSAVEL').AsInteger := VerificaFuncionario('RESPONSAVEL', Cod_responsavel);
    DMEXPORTA.TEquipe.ParamByName('OBSERVACAO').AsString := DMPESSOA.TEquipe.FieldByname('OBSERVACAO').AsString;
    DMEXPORTA.TEquipe.ExecSQL;

    DMEXPORTA.TEquipe.Close;
    DMEXPORTA.TEquipe.SQL.Clear;
    DMEXPORTA.TEquipe.SQL.Add('select * from equipe where upper(equipe.descricao) = upper(' + #39 + DMPESSOA.TEquipe.FieldByname('descricao').AsString + #39 + ')');
    DMEXPORTA.TEquipe.Open;

    // deletando os dados da tabela funequipe do banco de fora e inserindo todos os funcionarios novamente, pois a tabela soh contem codigos e por isso eh mais melhor deletar td e inserir de novo
    DMEXPORTA.TFunEquipe.Close;
    DMEXPORTA.TFunEquipe.SQL.Clear;
    DMEXPORTA.TFunEquipe.SQL.Add('delete from funequipe where funequipe.cod_equipe = :codigo');
    DMEXPORTA.TFunEquipe.ParamByName('codigo').AsInteger := DMEXPORTA.TEquipe.FieldByName('COD_EQUIPE').AsInteger;
    DMEXPORTA.TFunEquipe.ExecSQL;

    // BUSCANDO TODOS OS FUNCIONARIOS DO BANCO LOCAL RELACIONADOS A EQUIPE ATUAL
    DMPESSOA.TFunEquipe.Close;
    DMPESSOA.TFunEquipe.SQL.Clear;
    DMPESSOA.TFunEquipe.SQL.Add('SELECT * FROM FUNEQUIPE WHERE FUNEQUIPE.COD_EQUIPE = :CODIGO');
    DMPESSOA.TFunEquipe.ParamByName('CODIGO').AsInteger := StrToInt(Cod_equipe);
    DMPESSOA.TFunEquipe.Open;

    DMPESSOA.TFunEquipe.First;

    while not DMPESSOA.TFunEquipe.Eof do
    begin
      // BUSCA FUNCIOANRIO PARA SELECIONAR DADOS DA TABELA PESSOA
      FiltraTabela(DMPESSOA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC', DMPESSOA.TFunEquipe.FieldByName('COD_FUNCIONARIO').AsString, '');

      // FILTRANDO PESSOA RELACIONADO AO FUNCIONARIO
      FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TFuncionario.FieldByname('cod_pessoa').AsString, '');

      // busca no banco de fora a pessoa com o mesmo CPF
      DMEXPORTA.TPessoa.Close;
      DMEXPORTA.TPessoa.SQL.Clear;
      DMEXPORTA.TPessoa.SQL.Add('select * from pessoa where pessoa.cpfcnpj = :CPF');
      DMEXPORTA.TPessoa.ParamByName('CPF').AsString := DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString;
      DMEXPORTA.TPessoa.Open;

      // COMO NÃO EXISTE A EQUIPE, TAMBEM NÃO ESTÃO RELACIONADOS OS FUNCIONARIOS Á NENHUMA EQUIPE, POR ISSO JÁ ESTA ATRIBUINDO OS FUNCIONARIOS A NOVA EQUIPE
      DMEXPORTA.TFunEquipe.Close;
      DMEXPORTA.TFunEquipe.SQL.Clear;
      DMEXPORTA.TFunEquipe.SQL.Add('SELECT * FROM FUNEQUIPE');
      DMEXPORTA.TFunEquipe.Open;

      DMEXPORTA.TFunEquipe.Insert;

      // se no banco de fora nao existe o funcinario, o mesmo jah eh cadastrado
      if DMEXPORTA.TPessoa.IsEmpty then
      begin
        // função para cadastrar funcionario
        //CadastroFuncionario;

        // SE FOR INSERIR, ATRIBUI-SE O CODIGO DO NOVO FUNCIOANRIO CADASTRADO
        DMEXPORTA.TFunEquipe.FieldByName('COD_FUNCIONARIO').AsInteger := CadastroFuncionario; //DMEXPORTA.TFuncionario.FieldByName('COD_FUNC').AsInteger;
      end
      else
      begin
        // se o funcionario jah esta cadastrado, eh buscado seu codigo e é atribuido na equipe
        FiltraTabela(DMEXPORTA.TFuncionario, 'FUNCIONARIO', 'cod_pessoa', DMEXPORTA.TPessoa.FieldByname('cod_pessoa').AsString, '');
        DMEXPORTA.TFunEquipe.FieldByName('COD_FUNCIONARIO').AsInteger := DMEXPORTA.TFuncionario.FieldByname('COD_FUNC').AsInteger;
      end;

      DMEXPORTA.TFunEquipe.FieldByName('COD_FUNEQUIPE').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_FUNEQUIPE').AsInteger;
      DMEXPORTA.TFunEquipe.FieldByName('COD_EQUIPE').AsInteger := DMEXPORTA.TEquipe.FieldByName('COD_EQUIPE').AsInteger;
      DMEXPORTA.TFunEquipe.Post;

      // auto incremento
      DMEXPORTA.TCodigo.Edit;
      DMEXPORTA.TCodigo.FieldByName('COD_FUNEQUIPE').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_FUNEQUIPE').AsInteger + 1;
      DMEXPORTA.TCodigo.Post;

      // proximo funcionario atrelado a equipe no banco de fora
      DMPESSOA.TFunEquipe.Next;
    end;
    DMEXPORTA.IBTExporta.CommitRetaining;

    // retornando o codigo da equipe, seja ela nova ou jah existente no banco de fora
    Result := DMEXPORTA.TEquipe.FieldByName('COD_EQUIPE').AsInteger;
  except
    MessageDlg('A ordem foi exportada com serviços sem equipe', mtWarning, [mbOK], 0);
  end;
end;

// CADASTRO DE FUNCIONARIO

function TFOrdemMec.CadastroFuncionario: integer;
var
  XCOD_AUX, XCOD_PESSOA: Integer;
begin
  // apenas seleciona dados da tabela pessoa fisica p inserir no banco de dados de fora
  FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByname('cod_pessoa').AsString, '');

  DMEXPORTA.TPessoa.Close;
  DMEXPORTA.TPessoa.SQL.Clear;
  DMEXPORTA.TPessoa.SQL.Add('insert into pessoa');
  DMEXPORTA.TPessoa.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
  DMEXPORTA.TPessoa.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
  DMEXPORTA.TPessoa.SQL.Add('values');
  DMEXPORTA.TPessoa.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
  DMEXPORTA.TPessoa.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
  DMEXPORTA.TPessoa.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');

  DMEXPORTA.TCodigo.First;
  XCOD_PESSOA := DMEXPORTA.TCodigo.FieldByname('COD_PESSOA').AsInteger;
  DMEXPORTA.TPessoa.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;

  DMEXPORTA.TPessoa.ParamByName('NOME').AsString := DMPESSOA.TPessoa.FieldByname('nome').AsString;
  DMEXPORTA.TPessoa.ParamByName('ENDERECO').AsString := DMPESSOA.TPessoa.FieldByname('endereco').AsString;
  DMEXPORTA.TPessoa.ParamByName('BAIRRO').AsString := DMPESSOA.TPessoa.FieldByname('bairro').AsString;
  // verifica se existe a cidade do cliente, se nao jah cadastra
  DMEXPORTA.TPessoa.ParamByName('COD_CIDADE').AsInteger := VerificaCidade;
  if DMPESSOA.TPessoa.FieldByname('CEP').AsString <> '' then
    DMEXPORTA.TPessoa.ParamByName('CEP').AsString := DMPESSOA.TPessoa.FieldByname('CEP').AsString;
  DMEXPORTA.TPessoa.ParamByName('CPFCNPJ').AsString := DMPESSOA.TPessoa.FieldByname('CPFCNPJ').AsString;
  if DMPESSOA.TPessoa.FieldByname('DATA_INI').AsString <> '' then
    DMEXPORTA.TPessoa.ParamByName('DATA_INI').AsDateTime := DMPESSOA.TPessoa.FieldByname('DATA_INI').AsDateTime;
  if DMPESSOA.TPessoa.FieldByname('TELREL').AsString <> '' then
    DMEXPORTA.TPessoa.ParamByName('TELREL').AsString := DMPESSOA.TPessoa.FieldByname('TELREL').AsString;
  if DMPESSOA.TPessoa.FieldByname('DTNASC').AsString <> '' then
    DMEXPORTA.TPessoa.ParamByName('DTNASC').AsDateTime := DMPESSOA.TPessoa.FieldByname('DTNASC').AsDateTime;
  if DMPESSOA.TPessoa.FieldByname('COD_REGIAO').AsString <> '' then
    DMEXPORTA.TPessoa.ParamByName('COD_REGIAO').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_REGIAO').AsInteger;
  if DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsString <> '' then
    DMEXPORTA.TPessoa.ParamByName('COD_NATURAL').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsInteger;
  if DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsString <> '' then
    DMEXPORTA.TPessoa.ParamByName('DIAANIVER').AsInteger := DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsInteger;
  if DMPESSOA.TPessoa.FieldByname('PROXIMIDADE').AsString <> '' then
    DMEXPORTA.TPessoa.ParamByName('PROXIMIDADE').AsString := DMPESSOA.TPessoa.FieldByname('PROXIMIDADE').AsString;
  if DMPESSOA.TPessoa.FieldByname('VLRCREDITO').AsString <> '' then
    DMEXPORTA.TPessoa.ParamByName('VLRCREDITO').AsCurrency := DMPESSOA.TPessoa.FieldByname('VLRCREDITO').AsCurrency;

  DMEXPORTA.TPessoa.ExecSQL;

  DMEXPORTA.TCodigo.Edit;
  DMEXPORTA.TCodigo.FieldByname('COD_PESSOA').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_PESSOA').AsInteger + 1;
  DMEXPORTA.TCodigo.Post;

  DMEXPORTA.TPessoaF.Close;
  DMEXPORTA.TPessoaF.SQL.Clear;
  DMEXPORTA.TPessoaF.SQL.Add('insert into pessoaf');
  DMEXPORTA.TPessoaF.SQL.Add('(COD_PESSOAF, COD_PESSOA, ESTADO_CIVIL, SEXO, EMP_TRAB, END_TRAB, BAIRRO_TRAB,');
  DMEXPORTA.TPessoaF.SQL.Add('DATA_ADMIS, CARGO, RG, DATA_EXPED, ORGAO_EXPED, TITULO, NOME_CONJ, DATANASC_CONJ,');
  DMEXPORTA.TPessoaF.SQL.Add('RG_CONJ, CPF_CONJ, EMP_CONJ, NOME_PAI, NOME_MAE, ENDE_FILIACAO)');
  DMEXPORTA.TPessoaF.SQL.Add('values');
  DMEXPORTA.TPessoaF.SQL.Add('(:COD_PESSOAF, :COD_PESSOA, :ESTADO_CIVIL, :SEXO, :EMP_TRAB, :END_TRAB,');
  DMEXPORTA.TPessoaF.SQL.Add(':BAIRRO_TRAB, :DATA_ADMIS, :CARGO, :RG, :DATA_EXPED, :ORGAO_EXPED, :TITULO,');
  DMEXPORTA.TPessoaF.SQL.Add(':NOME_CONJ, :DATANASC_CONJ, :RG_CONJ, :CPF_CONJ, :EMP_CONJ, :NOME_PAI,');
  DMEXPORTA.TPessoaF.SQL.Add(':NOME_MAE, :ENDE_FILIACAO)');

  DMEXPORTA.TPessoaF.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;

  XCOD_AUX := DMEXPORTA.TCodigo.FieldByName('COD_PESSOAF').AsInteger;
  DMEXPORTA.TPessoaF.ParamByName('COD_PESSOAF').AsInteger := XCOD_AUX;

  // atualizando a tabela codigo
  DMEXPORTA.TCodigo.Edit;
  DMEXPORTA.TCodigo.FieldByName('COD_PESSOAF').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_PESSOAF').AsInteger + 1;
  DMEXPORTA.TCodigo.Post;

  if DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('ESTADO_CIVIL').AsString := DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString;
  if DMPESSOA.TPessoaF.FieldByname('SEXO').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('SEXO').AsString := DMPESSOA.TPessoaF.FieldByname('SEXO').AsString;
  if DMPESSOA.TPessoaF.FieldByname('EMP_TRAB').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('EMP_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('EMP_TRAB').AsString;
  if DMPESSOA.TPessoaF.FieldByname('END_TRAB').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('END_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('END_TRAB').AsString;
  if DMPESSOA.TPessoaF.FieldByname('BAIRRO_TRAB').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('BAIRRO_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('BAIRRO_TRAB').AsString;
  if DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('DATA_ADMIS').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsDateTime;
  if DMPESSOA.TPessoaF.FieldByname('CARGO').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('CARGO').AsString := DMPESSOA.TPessoaF.FieldByname('CARGO').AsString;
  if DMPESSOA.TPessoaF.FieldByname('RG').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('RG').AsString := DMPESSOA.TPessoaF.FieldByname('RG').AsString;
  if DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('DATA_EXPED').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsDateTime;
  if DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('ORGAO_EXPED').AsString := DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString;
  if DMPESSOA.TPessoaF.FieldByname('TITULO').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('TITULO').AsString := DMPESSOA.TPessoaF.FieldByname('TITULO').AsString;
  if DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('NOME_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString;
  if DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('DATANASC_CONJ').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsDateTime;
  if DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('RG_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString;
  if DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('CPF_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString;
  if DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('EMP_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString;
  if DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('NOME_PAI').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString;
  if DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('NOME_MAE').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString;
  if DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString <> '' then
    DMEXPORTA.TPessoaF.ParamByName('ENDE_FILIACAO').AsString := DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString;
  //DMEXPORTA.TPessoaF.ParamByName('DIAANIVERCONJ').AsString := DMPESSOA.TPessoaF.FieldByname('DIAANIVERCONJ').AsString;
  DMEXPORTA.TPessoaF.ExecSQL;

  // INSERINDO DADOS DO NOVO FUNCIONARIO NA TABELA FUNCIONARIO
  DMEXPORTA.TFuncionario.Close;
  DMEXPORTA.TFuncionario.SQL.Clear;
  DMEXPORTA.TFuncionario.SQL.Add('insert into funcionario');
  DMEXPORTA.TFuncionario.SQL.Add('(COD_FUNC, COD_PESSOA, COD_INTERNO, DATA_CAD, DATA_ADMIS, DATA_DEMIS,');
  DMEXPORTA.TFuncionario.SQL.Add('NUM_CTPS, SER_CTPS, NUM_PIS, TERCEIRO)');
  DMEXPORTA.TFuncionario.SQL.Add('values');
  DMEXPORTA.TFuncionario.SQL.Add('(:COD_FUNC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :DATA_ADMIS, :DATA_DEMIS,');
  DMEXPORTA.TFuncionario.SQL.Add(':NUM_CTPS, :SER_CTPS, :NUM_PIS, :TERCEIRO)');
  DMEXPORTA.TFuncionario.ParamByName('COD_FUNC').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_FUNC').AsInteger;

  XCOD_AUX := DMEXPORTA.TCodigo.FieldByname('COD_FUNC').AsInteger;

  Result := XCOD_AUX;

  DMEXPORTA.TFuncionario.ParamByName('COD_INTERNO').AsString := DMPESSOA.TFuncionario.FieldByname('COD_INTERNO').AsString;
  DMEXPORTA.TFuncionario.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
  if DMPESSOA.TFuncionario.FieldByname('DATA_ADMIS').AsString <> '' then
    DMEXPORTA.TFuncionario.ParamByName('DATA_ADMIS').AsDateTime := DMPESSOA.TFuncionario.FieldByname('DATA_ADMIS').AsDateTime;
  if DMPESSOA.TFuncionario.FieldByname('DATA_CAD').AsString <> '' then
    DMEXPORTA.TFuncionario.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TFuncionario.FieldByname('DATA_CAD').AsDateTime;
  if DMPESSOA.TFuncionario.FieldByname('DATA_DEMIS').AsString <> '' then
    DMEXPORTA.TFuncionario.ParamByName('DATA_DEMIS').AsDateTime := DMPESSOA.TFuncionario.FieldByname('DATA_DEMIS').AsDateTime;
  if DMPESSOA.TFuncionario.FieldByname('NUM_CTPS').AsString <> '' then
    DMEXPORTA.TFuncionario.ParamByName('NUM_CTPS').AsString := DMPESSOA.TFuncionario.FieldByname('NUM_CTPS').AsString;
  if DMPESSOA.TFuncionario.FieldByname('NUM_PIS').AsString <> '' then
    DMEXPORTA.TFuncionario.ParamByName('NUM_PIS').AsString := DMPESSOA.TFuncionario.FieldByname('NUM_PIS').AsString;
  if DMPESSOA.TFuncionario.FieldByname('SER_CTPS').AsString <> '' then
    DMEXPORTA.TFuncionario.ParamByName('SER_CTPS').AsString := DMPESSOA.TFuncionario.FieldByname('SER_CTPS').AsString;
  if DMPESSOA.TFuncionario.FieldByname('TERCEIRO').AsString <> '' then
    DMEXPORTA.TFuncionario.ParamByName('TERCEIRO').AsString := DMPESSOA.TFuncionario.FieldByname('TERCEIRO').AsString;
  DMEXPORTA.TFuncionario.ExecSQL;

  // atualizando a tabela codigo
  DMEXPORTA.TCodigo.Edit;
  DMEXPORTA.TCodigo.FieldByName('COD_FUNC').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_FUNC').AsInteger + 1;
  DMEXPORTA.TCodigo.Post;

  // FAZ TODOS S FILTROS DO FUNCINARIO P VERIFICAR SE O CARGO DELE JAH ESTAH CADASTRADO NO BANCO DE FORA
  DMPESSOA.TALX.Close;
  DMPESSOA.TALX.SQL.Clear;
  DMPESSOA.TALX.SQL.Add('select * from funcionario');
  DMPESSOA.TALx.SQL.Add('left join funcargo on funcionario.cod_func = funcargo.cod_funcionario');
  DMPESSOA.TALx.SQL.Add('left join cargo on funcargo.cod_cargo = cargo.cod_cargo');
  DMPESSOA.TALx.SQL.Add('where funcionario.cod_func = :codigo');
  DMPESSOA.TALx.ParamByName('codigo').AsInteger := DMPESSOA.TFuncionario.FieldByName('COD_FUNC').AsInteger;
  DMPESSOA.TALx.Open;

  // verifica se existe o cargo no banco de fora
  if FiltraTabela(DMEXPORTA.TCARGO, 'CARGO', 'COD_CARGO', '', 'UPPER(DESCRICAO) = UPPER(' + #39 + DMPESSOA.TALx.FieldByName('descricao').AsString + #39 + ')') = false then
  begin
    // TABELA CARGO
    DMEXPORTA.TCARGO.Close;
    DMEXPORTA.TCARGO.SQL.Clear;
    DMEXPORTA.TCARGO.SQL.Add('insert into cargo');
    DMEXPORTA.TCARGO.SQL.Add('(COD_CARGO, DESCRICAO)');
    DMEXPORTA.TCARGO.SQL.Add('values');
    DMEXPORTA.TCARGO.SQL.Add('(:COD_CARGO, :DESCRICAO)');
    DMEXPORTA.TCARGO.ParamByName('COD_CARGO').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_CARGO').AsInteger;
    DMEXPORTA.TCARGO.ParamByName('DESCRICAO').AsString := DMPESSOA.TALx.FieldByName('DESCRICAO').AsString;
    DMEXPORTA.TCARGO.ExecSQL;

    // atualizando a tabela codigo
    DMEXPORTA.TCodigo.Edit;
    DMEXPORTA.TCodigo.FieldByName('COD_CARGO').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_CARGO').AsInteger + 1;
    DMEXPORTA.TCodigo.Post;

    FiltraTabela(DMEXPORTA.TCARGO, 'CARGO', 'COD_CARGO', '', 'UPPER(DESCRICAO) = UPPER(' + #39 + DMPESSOA.TALx.FieldByName('descricao').AsString + #39 + ')')

  end;

  // INSERINDO DADOS NA TABELA FUNCARGO DO NOVO FUNCIONARIO
  DMEXPORTA.TFunCargo.Close;
  DMEXPORTA.TFunCargo.SQL.Clear;
  DMEXPORTA.TFunCargo.SQL.Add('insert into funcargo');
  DMEXPORTA.TFunCargo.SQL.Add('(COD_FUNCARGO, COD_CARGO, COD_FUNCIONARIO, COMISSAO_VVPRO, COMISSAO_VPPRO,');
  DMEXPORTA.TFunCargo.SQL.Add('COMISSAO_VVSER, COMISSAO_VPSER)');
  DMEXPORTA.TFunCargo.SQL.Add('values');
  DMEXPORTA.TFunCargo.SQL.Add('(:COD_FUNCARGO, :COD_CARGO, :COD_FUNCIONARIO, :COMISSAO_VVPRO, :COMISSAO_VPPRO,');
  DMEXPORTA.TFunCargo.SQL.Add(':COMISSAO_VVSER, :COMISSAO_VPSER)');
  DMEXPORTA.TFunCargo.ParamByName('COD_FUNCARGO').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_FUNCARGO').AsInteger;
  DMEXPORTA.TFunCargo.ParamByName('COD_CARGO').AsString := DMEXPORTA.TCARGO.FieldByName('COD_CARGO').AsString;
  DMEXPORTA.TFunCargo.ParamByName('COD_FUNCIONARIO').AsInteger := XCOD_AUX;
  DMEXPORTA.TFunCargo.ParamByName('COMISSAO_VVPRO').AsCurrency := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VVPRO').AsCurrency;
  DMEXPORTA.TFunCargo.ParamByName('COMISSAO_VPPRO').AsCurrency := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VPPRO').AsCurrency;
  DMEXPORTA.TFunCargo.ParamByName('COMISSAO_VVSER').AsCurrency := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VVSER').AsCurrency;
  DMEXPORTA.TFunCargo.ParamByName('COMISSAO_VPSER').AsCurrency := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VPSER').AsCurrency;
  DMEXPORTA.TFunCargo.ExecSQL;

  DMEXPORTA.TCodigo.Edit;
  DMEXPORTA.TCodigo.FieldByName('COD_FUNCARGO').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_FUNCARGO').AsInteger + 1;
  DMEXPORTA.TCodigo.post;

  DMEXPORTA.IBTExporta.CommitRetaining;

end;

// VERTIFICA A FORMA DE PAGAMENTO NO CADASTRO DO CLIENTE

function TFOrdemMec.FormaPgto_Cliente: integer;
var
  XCOD_AUX: INTEGER;
begin

  // faz a SQL para buscar no banco local a descricao da forma de pagamento
  DMFINANC.TFormPag.Close;
  DMFINANC.TFormPag.SQL.Clear;
  DMFINANC.TFormPag.SQL.Add('select * from formpag where formpag.cod_formpag = ' + DMPESSOA.TCliente.FieldByname('cod_formpag').AsString);
  DMFINANC.TFormPag.Open;

  // verifica se no banco de fora existe a mesma forma de pagamento que o banco local
  DMEXPORTA.TFormPag.Close;
  DMEXPORTA.TFormPag.SQL.Clear;
  DMEXPORTA.TFormPag.SQL.Add('select * from formpag where (upper(formpag.descricao) = upper(' + #39 + DMFINANC.TFormPag.FieldByName('descricao').AsString + #39 + '))');
  DMEXPORTA.TFormPag.Open;

  if DMEXPORTA.TFormPag.IsEmpty then
  begin
    DMEXPORTA.TFormPag.Close;
    DMEXPORTA.TFormPag.SQL.Clear;
    DMEXPORTA.TFormPag.SQL.Add('insert into formpag');
    DMEXPORTA.TFormPag.SQL.Add('(COD_FORMPAG, COD_LOJA, DESCRICAO, DESCFISC, PRIMPARCELA, INTERVALO,');
    DMEXPORTA.TFormPag.SQL.Add('QUANTPARCELA, JUROAPLIC, MEDIADIAS, TIPO)');
    DMEXPORTA.TFormPag.SQL.Add('values');
    DMEXPORTA.TFormPag.SQL.Add('(:COD_FORMPAG, :COD_LOJA, :DESCRICAO, :DESCFISC, :PRIMPARCELA, :INTERVALO,');
    DMEXPORTA.TFormPag.SQL.Add(':QUANTPARCELA, :JUROAPLIC, :MEDIADIAS, :TIPO)');
    DMEXPORTA.TFormPag.ParamByName('COD_FORMPAG').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger;

    XCOD_AUX := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger;

    // atualizando banco de fora
    DMEXPORTA.TCodigo.Edit;
    DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger + 1;
    DMEXPORTA.TCodigo.Post;
  end
  else
  begin
    XCOD_AUX := DMEXPORTA.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

    DMEXPORTA.TFormPag.Close;
    DMEXPORTA.TFormPag.SQL.Clear;
    DMEXPORTA.TFormPag.SQL.Add('update formpag set');
    DMEXPORTA.TFormPag.SQL.Add('COD_LOJA = :COD_LOJA, DESCRICAO = :DESCRICAO,');
    DMEXPORTA.TFormPag.SQL.Add('DESCFISC = :DESCFISC, PRIMPARCELA = :PRIMPARCELA, INTERVALO = :INTERVALO,');
    DMEXPORTA.TFormPag.SQL.Add('QUANTPARCELA = :QUANTPARCELA, JUROAPLIC = :JUROAPLIC, MEDIADIAS = :MEDIADIAS, TIPO = :TIPO');
    DMEXPORTA.TFormPag.SQL.Add('where COD_FORMPAG = :OLD_COD_FORMPAG');

    DMEXPORTA.TFormPag.ParamByName('OLD_COD_FORMPAG').AsInteger := XCOD_AUX;

  end;

  DMEXPORTA.TFormPag.ParamByName('COD_LOJA').AsInteger := DMFINANC.TFormPag.FieldByName('COD_LOJA').AsInteger;
  DMEXPORTA.TFormPag.ParamByName('DESCFISC').AsString := DMFINANC.TFormPag.FieldByName('DESCFISC').AsString;
  DMEXPORTA.TFormPag.ParamByName('DESCRICAO').AsString := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
  DMEXPORTA.TFormPag.ParamByName('INTERVALO').AsInteger := DMFINANC.TFormPag.FieldByName('INTERVALO').AsInteger;
  DMEXPORTA.TFormPag.ParamByName('JUROAPLIC').AsCurrency := DMFINANC.TFormPag.FieldByName('JUROAPLIC').AsCurrency;
  DMEXPORTA.TFormPag.ParamByName('MEDIADIAS').AsInteger := DMFINANC.TFormPag.FieldByName('MEDIADIAS').AsInteger;
  DMEXPORTA.TFormPag.ParamByName('PRIMPARCELA').AsInteger := DMFINANC.TFormPag.FieldByName('PRIMPARCELA').AsInteger;
  DMEXPORTA.TFormPag.ParamByName('QUANTPARCELA').AsInteger := DMFINANC.TFormPag.FieldByName('QUANTPARCELA').AsInteger;
  DMEXPORTA.TFormPag.ParamByName('TIPO').AsString := DMFINANC.TFormPag.FieldByName('TIPO').AsString;
  DMEXPORTA.TFormPag.ExecSQL;

  Result := XCOD_AUX;

end;

//duplo click na grid de consulta

procedure TFOrdemMec.DBGridConsultaDblClick(Sender: TObject);
begin
  inherited;
  // filtrando a ordem selecionada
  FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '');
  XCOD_ORDEM := XView.FieldByName('COD_ORDEM').AsInteger;

  // BUSCANDO DADOS DA ORDEM
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');

  if (DMServ.TOrd.FieldByName('STATUS').AsString <> 'ABERTO') then
  begin
    Mensagem('    A T E N Ç Ã O   ', 'A ordem não está "Aberta".', '', 1, 1, false, 'I');
    Exit;
  end;
  // If Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço atual não possui produtos e serviços inclusos. Deseja apagá-la ?','',2,3,false,'A')=2

  DMServ.TOrd.Close;
  DMServ.TOrd.SQL.Clear;
  DMServ.TOrd.SQL.Add('select * from ordem where ordem.cod_ordem = :codigo');
  DMServ.TOrd.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
  DMServ.TOrd.Open;

  if (DMServ.TOrd.FieldByName('exportado').AsString <> '#') then
  begin
    DMServ.TOrd.Edit;
    if DMServ.TOrd.FieldByName('EXP').AsString = 'X' then
    begin
      DMServ.TOrd.FieldByName('EXP').AsString := '';
      DMServ.TOrd.FieldByName('EDIT').AsString := '0';
    end
    else
    begin
      if not VerificaProdutosServicos(XCOD_ORDEM, true, true) then
        Mensagem('    A T E N Ç Ã O   ', 'A Ordem de Serviço não possui Produtos e Serviços inclusos.', '', 1, 1, false, 'I')
      else
      begin
        DMServ.TOrd.FieldByName('EXP').AsString := 'X';
        DMServ.TOrd.FieldByName('EDIT').AsString := '1';
      end;
    end;

    DMServ.TOrd.Post;
    DMServ.IBT.CommitRetaining;

    AtualizaGridConsulta('ORIGEM');
  end
  else
  begin
    //if Mensagem('   A T E N Ç Ã O   ','Esta Ordem de Serviço já foi exportada, deseja exportá-la novamente?','',2,3,false,'A')=2
    //then begin
        // abre formulario de senha
        //AbrirForm(TFSenha,FSenha,0);

        // caso tenha informado os dados do administrador corretamente
       // If XAlxResult = true
       // Then Begin
    DMServ.TOrd.Edit;
    if DMServ.TOrd.FieldByName('EXP').AsString = 'X' then
    begin
      DMServ.TOrd.FieldByName('EXP').AsString := '';
      DMServ.TOrd.FieldByName('EDIT').AsString := '0';
    end
    else
    begin
      if Mensagem('   A T E N Ç Ã O   ', 'A Ordem de Serviço já foi exportada.' + #13 + 'Deseja exportá-la novamente?', '', 2, 3, false, 'A') = 2 then
      begin
        // abre formulario de senha
        AbrirForm(TFSenha, FSenha, 0);
        // caso tenha informado os dados do administrador corretamente
        if XAlxResult = true then
        begin
          if not VerificaProdutosServicos(XCOD_ORDEM, true, true) then
            Mensagem('    A T E N Ç Ã O   ', 'A Ordem de Serviço não possui Produtos e Serviços inclusos.', '', 1, 1, false, 'I')
          else
          begin
            DMServ.TOrd.FieldByName('EXP').AsString := 'X';
            DMServ.TOrd.FieldByName('EDIT').AsString := '1';
          end;
        end;
      end;
    end;

    DMServ.TOrd.Post;
    DMServ.IBT.CommitRetaining;

    AtualizaGridConsulta('ORIGEM');
    //end;
//end;
  end;
end;
//on exit despesa de produtos

procedure TFOrdemMec.EdDescTProdExit(Sender: TObject);
begin
  inherited;
  {CalculaComissaoProd;
  If (EdDescTServ.Text <> '0,00') and (EdDescTServ.Text <> '')
  Then Begin
      CalculaComissaoServ;
  End;}
  // Quando eh informado o valor de desconto do total dos produtos em "%" eh efetuado calculo para cada produto da ordem

  if (EdtotalProd.ValueNumeric = 0) and (EdDescTProd.ValueNumeric <> 0) then
  begin
    Mensagem('A T E N Ç Ã O !', 'Não há produtos na Ordem para conceder desconto.', '', 1, 1, False, 'a');
    EdDescTProd.ValueNumeric := 0;
    Exit;
  end;
  CalcPercentProd;
  //   FiltraSlave;
  EfetuaDesconto('PRODUTO', 'PERCENTO');
end;

// Quando eh informado o valor de desconto do total dos produtos em "%" eh efetuado calculo para cada produto da ordem

procedure TFOrdemMec.CalcPercentProd;
begin
  {
     // soh efetua calculo se tiver vendedor relacionado á ordem
      If XCOD_VENDEDOR > 0
          Then Begin
         // busca todos os produtos relacionados á ordem
          FiltraTabela(DMServ.TPOrd, 'ITPRODORD', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');

          If Not DMServ.TPOrd.IsEmpty
              Then Begin
              DMServ.TPOrd.First;
              XVLRCOMIS := 0;

              While Not DMServ.TPOrd.Eof Do
              Begin
                  DMServ.TPOrd.Edit;
                  DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency - (DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency * (StrToFloat(EdDescTProd.Text) / 100)));
                  DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency := (DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency - (DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency * (StrToFloat(EdDescTProd.Text) / 100)));
                  DMServ.TPOrd.Post;

                 //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                  XVLRCOMIS := XVLRCOMIS + DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency;

             // proximo produto
                  DMServ.TPOrd.Next;
              End;
          End;

     // filtra servicos da ordem de servico
          DMServ.Alx.Close;
          DMServ.Alx.SQL.Clear;
          DMServ.Alx.SQL.Add('select sum(itservord.comissao) as TOTAL_SERV from itservord');
          DMServ.Alx.SQL.Add('where itservord.cod_ordem = :codigo');
          DMServ.Alx.ParamByName('codigo').AsInteger := XCOD_ORDEM;
          DMServ.Alx.Open;

          XVLRCOMIS := XVLRCOMIS + DMServ.Alx.FieldByName('TOTAL_SERV').AsCurrency;

     //LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', XVLRCOMIS);
      End;
  }
end;
// on exit total de produto

procedure TFOrdemMec.EdtotalProdExit(Sender: TObject);
begin
  inherited;
  if XVLRTPROD <> EdtotalProd.ValueNumeric then
  begin
    CalcPercent(0, XVLRTPROD - EdtotalProd.ValueNumeric, XVLRTPROD, 'D');
    DMServ.TOrd.edit;
    DMServ.TOrd.FieldByName('DESCPROD').AsCurrency := AlxPercento;
    EdDescTProd.ValueNumeric := AlxPercento;
  end
  else
  begin
    FiltraSlave;
    XCONTROLECONSULTA := true;
    DMServ.TOrd.edit;
    DMServ.TOrd.FieldByName('DESCPROD').AsCurrency := 0;
    EdtotalProd.ValueNumeric := XVLRTPROD;
    EdDescTProd.ValueNumeric := 0;
  end;
  //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
  EdValorOrd.ValueNumeric := EdTotalserv.ValueNumeric + EdtotalProd.ValueNumeric + EdTotDesp.ValueNumeric;
  EdTotalOrd.ValueNumeric := EdValorOrd.ValueNumeric;
  CalcPercent(0, (XVLRTPROD + XVLRTSERV + EdTotDesp.ValueNumeric) - (EdtotalProd.ValueNumeric + EdTotalserv.ValueNumeric + EdTotDesp.ValueNumeric), (XVLRTPROD + XVLRTSERV + EdTotDesp.ValueNumeric), 'D');
  EdDescTOrdem.ValueNumeric := AlxPercento;
  CalcComisTotVend;
end;

//FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS

function TFOrdemMec.CalcComisTotVend: Boolean;
begin
  //VERIFICA SE EXISTE ALGUM COMISSIONADO PARA A ORDEM
  DMFINANC.TAlx.Close;
  DMFINANC.TAlx.SQL.Clear;
  DMFINANC.TAlx.SQL.Add(' Select *  from comissao ');
  DMFINANC.TAlx.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
  DMFINANC.TAlx.ParamByName('GERADOR').AsString := 'ORDEM';
  DMFINANC.TAlx.ParamByName('CODGERADOR').AsInteger := XCOD_ORDEM;
  DMFINANC.TAlx.Open;

  DMFINANC.TSlctComis.Close;
  DMFINANC.TSlctComis.SQL.Clear;
  DMFINANC.TSlctComis.SQL.Add(' Select SUM(comissao.perprod) as PERPROD, SUM(comissao.vlrcomisprod) AS COMISPROD, ');
  DMFINANC.TSlctComis.SQL.Add('        SUM(comissao.perserv) as PERSERV, SUM(comissao.vlrcomisserv) AS COMISSERV ');
  DMFINANC.TSlctComis.SQL.Add(' from comissao ');
  DMFINANC.TSlctComis.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
  DMFINANC.TSlctComis.ParamByName('GERADOR').AsString := 'ORDEM';
  DMFINANC.TSlctComis.ParamByName('CODGERADOR').AsInteger := XCOD_ORDEM;
  DMFINANC.TSlctComis.Open;
  XVLRCOMIS := DMFINANC.TSlctComis.FieldByName('COMISPROD').AsCurrency + DMFINANC.TSlctComis.FieldByName('COMISSERV').AsCurrency;
  ;
  if (DMFINANC.TAlx.IsEmpty) then
  begin
    if XCOD_VENDEDOR > 0 then
    begin
      FiltraTabela(DMServ.TPOrd, 'ITPRODORD', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');

      DMServ.TPOrd.First;

      //se a tabela estiver vazia significa que não existe comissionado
      if XVLRTOTAL <> 0 then
      begin
        while not DMServ.TPOrd.Eof do
        begin

          // filtra estoque para buscar os valores das porcentagens das comissoes
          FiltraTabela(DMESTOQUE.Alx4, 'ESTOQUE', 'COD_ESTOQUE', DMServ.TPOrd.FieldByname('cod_estoque').AsString, '');

          // se na loja esta configurado p buscar preço somente a prazo
          if DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '1' then
          begin
            // se na loja esta configurado p buscar do funcionario
            if (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0') then
            begin
              // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
              FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(XCOD_VENDEDOR), '');

              DMPESSOA.TFunCargo.Last; //VAI P/ O ULTIMO CARGO CADASTRADO

              //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
              XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency) / 100;
            end
            else
            begin
              //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
              XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) / 100;
            end;
          end
          else
          begin
            // se na loja esta configurado p buscar do funcionario
            if (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0') then
            begin
              // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
              FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(XCOD_VENDEDOR), '');

              DMPESSOA.TFunCargo.Last; //VAI P/ O ULTIMO CARGO CADASTRADO

              // sse a forma de pagamento for a vista
              if FrmFormPag1.EdDescricao.Text = 'À VISTA' then
              begin
                //fORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency) / 100;
              end
              else
              begin
                //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency) / 100;
              end;
            end
            else
            begin
              // sse a forma de pagamento for a vista
              if FrmFormPag1.EdDescricao.Text = 'À VISTA' then
              begin
                //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) / 100;
              end
              else
              begin
                //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) / 100;
              end;
            end;
          end;
          // proximo item da ordem de serviço
          DMServ.TPOrd.Next;
        end;

        // TODOS OS SERVIÇOS DA ORDEM
        FiltraTabela(DMServ.TSOrd, 'ITSERVORD', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');

        DMServ.TSOrd.First;

        // PERCORRE TODOS OS SERVIÇOS DA ORDEM DE SERVIÇO
        while not DMServ.TSOrd.Eof do
        begin

          // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
          if FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(XCOD_VENDEDOR), '') = true then
          begin
            DMPESSOA.TFunCargo.Last; //VAI P/ O ULTIMO CARGO CADASTRADO

            if FrmFormPag1.EdDescricao.Text = 'À VISTA' then
            begin
              //FORMA DE PAGAMENTO À vista
              XVLRCOMIS := XVLRCOMIS + ((DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency) * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency) / 100;
            end
            else
            begin
              //FORMA DE PAGAMENTO À prazo
              XVLRCOMIS := XVLRCOMIS + ((DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency) * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPSER').AsCurrency) / 100;
            end;
          end;
          // proximo serviço
          DMServ.TSOrd.Next;
        end;
      end
      else
      begin
        XVLRCOMIS := 0;
      end;
    end;
  end;
  //LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', XVLRCOMIS);

end;

//on exit desconto serviços

procedure TFOrdemMec.EdDescTServExit(Sender: TObject);
begin
  inherited;
  if (EdTotalserv.ValueNumeric = 0) and (EdDescTServ.ValueNumeric <> 0) then
  begin
    Mensagem('A T E N Ç Ã O !', 'Não há serviços na ordem para conceder desconto!', '', 1, 1, False, 'a');
    EdDescTServ.ValueNumeric := 0;
    Exit;
  end;
  //  FiltraSlave;
  EfetuaDesconto('SERVICO', 'PERCENTO');
  EfetuaCalculoISS;
  RetemIss;
end;

//on exit total do serviços

procedure TFOrdemMec.EdTotalservExit(Sender: TObject);
begin
  inherited;
  if XVLRTSERV <> EdTotalserv.ValueNumeric then
  begin
    CalcPercent(0, XVLRTSERV - EdtotalServ.ValueNumeric, XVLRTSERV, 'D');
    DMServ.TOrd.edit;
    DMServ.TOrd.FieldByName('DESCSERV').AsCurrency := AlxPercento;
    EdDescTServ.ValueNumeric := AlxPercento;
  end
  else
  begin
    FiltraSlave;
    DMServ.TOrd.edit;
    DMServ.TOrd.FieldByName('DESCSERV').AsCurrency := 0;
    EdtotalServ.ValueNumeric := XVLRTSERV;
    EdDescTServ.ValueNumeric := 0;
  end;
  //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
  EdValorOrd.ValueNumeric := EdTotalserv.ValueNumeric + EdtotalProd.ValueNumeric + EdTotDesp.ValueNumeric;
  EdTotalOrd.ValueNumeric := EdValorOrd.ValueNumeric;
  CalcPercent(0, (XVLRTPROD + XVLRTSERV + EdTotDesp.ValueNumeric) - (EdtotalProd.ValueNumeric + EdTotalserv.ValueNumeric + EdTotDesp.ValueNumeric), (XVLRTPROD + XVLRTSERV + EdTotDesp.ValueNumeric), 'D');
  EdDescTOrdem.ValueNumeric := AlxPercento;
  CalcComisTotVend;
  EfetuaCalculoISS;
end;
//click filtro

procedure TFOrdemMec.cxGroupBox1Click(Sender: TObject);
begin
  inherited;
  AtualizaGridConsulta('ORIGEM');
end;
//CLICK ORDEM

procedure TFOrdemMec.cxGroupBox2Click(Sender: TObject);
begin
  inherited;
  AtualizaGridConsulta('ORIGEM');
end;
//ON EXIT CODIGO DO CLIENTE

procedure TFOrdemMec.FrmClienteEDCodigoExit(Sender: TObject);
begin
  inherited;
  //ALEX 21/05/2009: O CODIGO ABAIXO APRESENTAVA PROBELMAS QUANDO EXISTE MAIS DE UM CLIENTE COM O MESMO CODIGO INTERNO POR ISSO FOI DESATIVADO
  {
  If FrmCliente.EDCodigo.Text <> ''
  Then Begin
      If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmCliente.EDCodigo.Text+#39)=True
      Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
          XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
          FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
          FrmCliente.EDCodigo.Hint := DMPESSOA.WCliente.FieldByName('NOME').AsString;
          FrmCliente.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
          //SelectFormPag_Vendedor;       #################################
          //FBEquipPlaca.EDCodigo.SetFocus;
      End
      Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
          XCOD_CLIENTE:=-1;
          FrmCliente.EdDescricao.Text:='';
          FrmCliente.EDCodigo.Hint := '';
          FrmCliente.EDCodigo.Text:='';
      End;
  End else begin
      XCOD_CLIENTE:=-1;
      FrmCliente.EdDescricao.Text:='';
      FrmCliente.EDCodigo.Hint := '';
      FrmCliente.EDCodigo.Text:='';
  end;}
end;

//verifa se nao ordem passada no parametro existem (produtos - prod / serviços - serv) conforme solicitado e retorna true caso encontrar

function TFOrdemMec.VerificaProdutosServicos(NumOrdem: Integer; prod: Boolean; serv: Boolean): Boolean;
begin

  Result := True;
  if prod then
  begin
    // seleciona todos os produtos da ordem de serviço
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('select * from itprodord where itprodord.cod_ordem = :cod_ordem');
    DMESTOQUE.Alx1.ParamByName('cod_ordem').AsInteger := NumOrdem;
    DMESTOQUE.Alx1.Open;

    // se nao possuir nenhum
    if DMESTOQUE.Alx1.IsEmpty then
      Result := False
    else
      Exit;
  end;

  if serv then
  begin
    // na tabela despadic eh feito uma verificação se possui servico relacionado a ordem
    DMESTOQUE.Alx2.Close;
    DMESTOQUE.Alx2.SQL.Clear;
    DMESTOQUE.Alx2.SQL.Add('select * from despadic where despadic.cod_gerador = :codigo');
    DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := NumOrdem;
    DMESTOQUE.Alx2.Open;
    // se nao possui servico
    if (DMESTOQUE.Alx2.IsEmpty) then
      Result := False
    else
      Result := True;
  end;

end;

function TFOrdemMec.AtualizarFuncionarioBancoExterno(codFunInt: integer; codFunExt: integer): Boolean;
var
  XCOD_PESSOA, XCOD_PESSOAF, aux: Integer;
begin
  try
    Result := False;
    //filtra tabela funcionario
    FiltraTabela(DMPESSOA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC', IntToStr(codFunInt), '');
    FiltraTabela(DMEXPORTA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC', IntToStr(codFunExt), '');

    //filtra tabela pessoa
    FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TFuncionario.FieldByname('cod_pessoa').AsString, '');
    FiltraTabela(DMEXPORTA.TPessoa, 'PESSOA', 'COD_PESSOA', DMEXPORTA.TFuncionario.FieldByname('cod_pessoa').AsString, '');

    XCOD_PESSOA := DMEXPORTA.TFuncionario.FieldByname('cod_pessoa').AsInteger;

    //filtra trabela pessoa fisica
    FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA', DMEXPORTA.TPessoa.FieldByname('cod_pessoa').AsString, '');
    FiltraTabela(DMEXPORTA.TPessoaF, 'PESSOAF', 'COD_PESSOA', DMEXPORTA.TPessoa.FieldByname('cod_pessoa').AsString, '');

    XCOD_PESSOAF := DMEXPORTA.TPessoaF.FieldByname('cod_pessoaf').AsInteger;

    // atualizar os dados da pessoa
    DMEXPORTA.TPessoa.Close;
    DMEXPORTA.TPessoa.SQL.Clear;
    DMEXPORTA.TPessoa.SQL.Add('update pessoa');
    DMEXPORTA.TPessoa.SQL.Add('set');
    DMEXPORTA.TPessoa.SQL.Add('NOME = :NOME,');
    DMEXPORTA.TPessoa.SQL.Add('ENDERECO = :ENDERECO,');
    DMEXPORTA.TPessoa.SQL.Add('BAIRRO = :BAIRRO,');
    DMEXPORTA.TPessoa.SQL.Add('COD_CIDADE = :COD_CIDADE,');
    DMEXPORTA.TPessoa.SQL.Add('CEP = :CEP,');
    DMEXPORTA.TPessoa.SQL.Add('CPFCNPJ = :CPFCNPJ,');
    DMEXPORTA.TPessoa.SQL.Add('DATA_INI = :DATA_INI,');
    DMEXPORTA.TPessoa.SQL.Add('DTNASC = :DTNASC,');
    DMEXPORTA.TPessoa.SQL.Add('COD_REGIAO = :COD_REGIAO,');
    DMEXPORTA.TPessoa.SQL.Add('COD_NATURAL = :COD_NATURAL,');
    DMEXPORTA.TPessoa.SQL.Add('TELREL = :TELREL,');
    DMEXPORTA.TPessoa.SQL.Add('DIAANIVER = :DIAANIVER,');
    DMEXPORTA.TPessoa.SQL.Add('PROXIMIDADE = :PROXIMIDADE,');
    DMEXPORTA.TPessoa.SQL.Add('VLRCREDITO = :VLRCREDITO');
    DMEXPORTA.TPessoa.SQL.Add('where');
    DMEXPORTA.TPessoa.SQL.Add('COD_PESSOA = :OLD_COD_PESSOA');

    DMEXPORTA.TPessoa.ParamByName('OLD_COD_PESSOA').AsInteger := XCOD_PESSOA;

    DMEXPORTA.TPessoa.ParamByName('NOME').AsString := DMPESSOA.TPessoa.FieldByname('nome').AsString;
    DMEXPORTA.TPessoa.ParamByName('ENDERECO').AsString := DMPESSOA.TPessoa.FieldByname('endereco').AsString;
    DMEXPORTA.TPessoa.ParamByName('BAIRRO').AsString := DMPESSOA.TPessoa.FieldByname('bairro').AsString;
    // verifica se existe a cidade do cliente, se nao jah cadastra
    DMEXPORTA.TPessoa.ParamByName('COD_CIDADE').AsInteger := VerificaCidade;
    if DMPESSOA.TPessoa.FieldByname('CEP').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('CEP').AsString := DMPESSOA.TPessoa.FieldByname('CEP').AsString;
    DMEXPORTA.TPessoa.ParamByName('CPFCNPJ').AsString := DMPESSOA.TPessoa.FieldByname('CPFCNPJ').AsString;
    if DMPESSOA.TPessoa.FieldByname('DATA_INI').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('DATA_INI').AsDateTime := DMPESSOA.TPessoa.FieldByname('DATA_INI').AsDateTime;
    if DMPESSOA.TPessoa.FieldByname('TELREL').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('TELREL').AsString := DMPESSOA.TPessoa.FieldByname('TELREL').AsString;
    if DMPESSOA.TPessoa.FieldByname('DTNASC').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('DTNASC').AsDateTime := DMPESSOA.TPessoa.FieldByname('DTNASC').AsDateTime;
    if DMPESSOA.TPessoa.FieldByname('COD_REGIAO').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('COD_REGIAO').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_REGIAO').AsInteger;
    if DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('COD_NATURAL').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsInteger;
    if DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('DIAANIVER').AsInteger := DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsInteger;
    if DMPESSOA.TPessoa.FieldByname('PROXIMIDADE').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('PROXIMIDADE').AsString := DMPESSOA.TPessoa.FieldByname('PROXIMIDADE').AsString;
    if DMPESSOA.TPessoa.FieldByname('VLRCREDITO').AsString <> '' then
      DMEXPORTA.TPessoa.ParamByName('VLRCREDITO').AsCurrency := DMPESSOA.TPessoa.FieldByname('VLRCREDITO').AsCurrency;

    DMEXPORTA.TPessoa.ExecSQL;

    //update nos dados pessoa fisica
    DMEXPORTA.TPessoaF.Close;
    DMEXPORTA.TPessoaF.SQL.Clear;
    DMEXPORTA.TPessoaF.SQL.Add('update pessoaf set');
    DMEXPORTA.TPessoaF.SQL.Add('ESTADO_CIVIL = :ESTADO_CIVIL,');
    DMEXPORTA.TPessoaF.SQL.Add('SEXO = :SEXO, EMP_TRAB = :EMP_TRAB, END_TRAB = :END_TRAB, BAIRRO_TRAB = :BAIRRO_TRAB,');
    DMEXPORTA.TPessoaF.SQL.Add('DATA_ADMIS = :DATA_ADMIS, CARGO = :CARGO, RG = :RG, DATA_EXPED = :DATA_EXPED,');
    DMEXPORTA.TPessoaF.SQL.Add('ORGAO_EXPED = :ORGAO_EXPED, TITULO = :TITULO, NOME_CONJ = :NOME_CONJ,');
    DMEXPORTA.TPessoaF.SQL.Add('DATANASC_CONJ = :DATANASC_CONJ, RG_CONJ = :RG_CONJ, CPF_CONJ = :CPF_CONJ,');
    DMEXPORTA.TPessoaF.SQL.Add('EMP_CONJ = :EMP_CONJ, NOME_PAI = :NOME_PAI, NOME_MAE = :NOME_MAE, ENDE_FILIACAO = :ENDE_FILIACAO');
    DMEXPORTA.TPessoaF.SQL.Add('where COD_PESSOAF = :OLD_COD_PESSOAF');

    DMEXPORTA.TPessoaF.ParamByName('OLD_COD_PESSOAF').AsInteger := XCOD_PESSOAF;

    //DMEXPORTA.TPessoaF.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;

    if DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('ESTADO_CIVIL').AsString := DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString;
    if DMPESSOA.TPessoaF.FieldByname('SEXO').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('SEXO').AsString := DMPESSOA.TPessoaF.FieldByname('SEXO').AsString;
    if DMPESSOA.TPessoaF.FieldByname('EMP_TRAB').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('EMP_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('EMP_TRAB').AsString;
    if DMPESSOA.TPessoaF.FieldByname('END_TRAB').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('END_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('END_TRAB').AsString;
    if DMPESSOA.TPessoaF.FieldByname('BAIRRO_TRAB').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('BAIRRO_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('BAIRRO_TRAB').AsString;
    if DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('DATA_ADMIS').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsDateTime;
    if DMPESSOA.TPessoaF.FieldByname('CARGO').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('CARGO').AsString := DMPESSOA.TPessoaF.FieldByname('CARGO').AsString;
    if DMPESSOA.TPessoaF.FieldByname('RG').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('RG').AsString := DMPESSOA.TPessoaF.FieldByname('RG').AsString;
    if DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('DATA_EXPED').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsDateTime;
    if DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('ORGAO_EXPED').AsString := DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString;
    if DMPESSOA.TPessoaF.FieldByname('TITULO').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('TITULO').AsString := DMPESSOA.TPessoaF.FieldByname('TITULO').AsString;
    if DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('NOME_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString;
    if DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('DATANASC_CONJ').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsDateTime;
    if DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('RG_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString;
    if DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('CPF_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString;
    if DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('EMP_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString;
    if DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('NOME_PAI').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString;
    if DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('NOME_MAE').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString;
    if DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString <> '' then
      DMEXPORTA.TPessoaF.ParamByName('ENDE_FILIACAO').AsString := DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString;
    //DMEXPORTA.TPessoaF.ParamByName('DIAANIVERCONJ').AsString := DMPESSOA.TPessoaF.FieldByname('DIAANIVERCONJ').AsString;
    DMEXPORTA.TPessoaF.ExecSQL;

    // INSERINDO DADOS DO NOVO FUNCIONARIO NA TABELA FUNCIONARIO
    DMEXPORTA.TFuncionario.Close;
    DMEXPORTA.TFuncionario.SQL.Clear;
    DMEXPORTA.TFuncionario.SQL.Add('update funcionario set');
    DMEXPORTA.TFuncionario.SQL.Add('COD_PESSOA = :COD_PESSOA,');
    DMEXPORTA.TFuncionario.SQL.Add('COD_INTERNO = :COD_INTERNO, DATA_CAD = :DATA_CAD, DATA_ADMIS = :DATA_ADMIS, DATA_DEMIS = :DATA_DEMIS,');
    DMEXPORTA.TFuncionario.SQL.Add('NUM_CTPS = :NUM_CTPS, SER_CTPS = :SER_CTPS, NUM_PIS = :NUM_PIS, TERCEIRO = :TERCEIRO');
    DMEXPORTA.TFuncionario.SQL.Add('where COD_FUNC = :OLD_COD_FUNC');

    DMEXPORTA.TFuncionario.ParamByName('OLD_COD_FUNC').AsInteger := codFunExt;

    DMEXPORTA.TFuncionario.ParamByName('COD_INTERNO').AsString := DMPESSOA.TFuncionario.FieldByname('COD_INTERNO').AsString;
    DMEXPORTA.TFuncionario.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
    if DMPESSOA.TFuncionario.FieldByname('DATA_ADMIS').AsString <> '' then
      DMEXPORTA.TFuncionario.ParamByName('DATA_ADMIS').AsDateTime := DMPESSOA.TFuncionario.FieldByname('DATA_ADMIS').AsDateTime;
    if DMPESSOA.TFuncionario.FieldByname('DATA_CAD').AsString <> '' then
      DMEXPORTA.TFuncionario.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TFuncionario.FieldByname('DATA_CAD').AsDateTime;
    if DMPESSOA.TFuncionario.FieldByname('DATA_DEMIS').AsString <> '' then
      DMEXPORTA.TFuncionario.ParamByName('DATA_DEMIS').AsDateTime := DMPESSOA.TFuncionario.FieldByname('DATA_DEMIS').AsDateTime;
    if DMPESSOA.TFuncionario.FieldByname('NUM_CTPS').AsString <> '' then
      DMEXPORTA.TFuncionario.ParamByName('NUM_CTPS').AsString := DMPESSOA.TFuncionario.FieldByname('NUM_CTPS').AsString;
    if DMPESSOA.TFuncionario.FieldByname('NUM_PIS').AsString <> '' then
      DMEXPORTA.TFuncionario.ParamByName('NUM_PIS').AsString := DMPESSOA.TFuncionario.FieldByname('NUM_PIS').AsString;
    if DMPESSOA.TFuncionario.FieldByname('SER_CTPS').AsString <> '' then
      DMEXPORTA.TFuncionario.ParamByName('SER_CTPS').AsString := DMPESSOA.TFuncionario.FieldByname('SER_CTPS').AsString;
    if DMPESSOA.TFuncionario.FieldByname('TERCEIRO').AsString <> '' then
      DMEXPORTA.TFuncionario.ParamByName('TERCEIRO').AsString := DMPESSOA.TFuncionario.FieldByname('TERCEIRO').AsString;
    DMEXPORTA.TFuncionario.ExecSQL;

    // FAZ TODOS S FILTROS DO FUNCINARIO P VERIFICAR SE O CARGO DELE JAH ESTAH CADASTRADO NO BANCO DE FORA
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add('select * from funcionario');
    DMPESSOA.TALx.SQL.Add('left join funcargo on funcionario.cod_func = funcargo.cod_funcionario');
    DMPESSOA.TALx.SQL.Add('left join cargo on funcargo.cod_cargo = cargo.cod_cargo');
    DMPESSOA.TALx.SQL.Add('where funcionario.cod_func = :codigo');
    DMPESSOA.TALx.ParamByName('codigo').AsInteger := DMPESSOA.TFuncionario.FieldByName('COD_FUNC').AsInteger;
    DMPESSOA.TALx.Open;

    // atualiza cargo
    if not FiltraTabela(DMEXPORTA.TCARGO, 'CARGO', 'COD_CARGO', '', 'UPPER(DESCRICAO) = UPPER(' + #39 + DMPESSOA.TALx.FieldByName('descricao').AsString + #39 + ')') = false then
    begin
      // TABELA CARGO

      aux := DMEXPORTA.TCARGO.FieldByname('COD_CARGO').AsInteger;

      DMEXPORTA.TCARGO.Close;
      DMEXPORTA.TCARGO.SQL.Clear;
      DMEXPORTA.TCARGO.SQL.Add('update cargo set');
      DMEXPORTA.TCARGO.SQL.Add('DESCRICAO=:DESCRICAO');
      DMEXPORTA.TCARGO.SQL.Add('where COD_CARGO =:COD_CARGO');
      DMEXPORTA.TCARGO.ParamByName('COD_CARGO').AsInteger := aux;
      DMEXPORTA.TCARGO.ParamByName('DESCRICAO').AsString := DMPESSOA.TALx.FieldByName('DESCRICAO').AsString;
      DMEXPORTA.TCARGO.ExecSQL;

      FiltraTabela(DMEXPORTA.TCARGO, 'CARGO', 'COD_CARGO', IntToStr(aux), '');

    end;
    {
   // INSERINDO DADOS NA TABELA FUNCARGO DO NOVO FUNCIONARIO
   DMEXPORTA.TFunCargo.Close;
   DMEXPORTA.TFunCargo.SQL.Clear;
   DMEXPORTA.TFunCargo.SQL.Add('insert into funcargo');
   DMEXPORTA.TFunCargo.SQL.Add('(COD_FUNCARGO, COD_CARGO, COD_FUNCIONARIO, COMISSAO_VVPRO, COMISSAO_VPPRO,');
   DMEXPORTA.TFunCargo.SQL.Add('COMISSAO_VVSER, COMISSAO_VPSER)');
   DMEXPORTA.TFunCargo.SQL.Add('values');
   DMEXPORTA.TFunCargo.SQL.Add('(:COD_FUNCARGO, :COD_CARGO, :COD_FUNCIONARIO, :COMISSAO_VVPRO, :COMISSAO_VPPRO,');
   DMEXPORTA.TFunCargo.SQL.Add(':COMISSAO_VVSER, :COMISSAO_VPSER)');
   DMEXPORTA.TFunCargo.ParamByName('COD_FUNCARGO').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_FUNCARGO').AsInteger;
   DMEXPORTA.TFunCargo.ParamByName('COD_CARGO').AsString := DMEXPORTA.TCARGO.FieldByName('COD_CARGO').AsString;
   DMEXPORTA.TFunCargo.ParamByName('COD_FUNCIONARIO').AsInteger := XCOD_AUX;
   DMEXPORTA.TFunCargo.ParamByName('COMISSAO_VVPRO').AsCurrency := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VVPRO').AsCurrency;
   DMEXPORTA.TFunCargo.ParamByName('COMISSAO_VPPRO').AsCurrency := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VPPRO').AsCurrency;
   DMEXPORTA.TFunCargo.ParamByName('COMISSAO_VVSER').AsCurrency := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VVSER').AsCurrency;
   DMEXPORTA.TFunCargo.ParamByName('COMISSAO_VPSER').AsCurrency := DMPESSOA.TFunCargo.FieldByname('COMISSAO_VPSER').AsCurrency;
   DMEXPORTA.TFunCargo.ExecSQL;

   DMEXPORTA.TCodigo.Edit;
   DMEXPORTA.TCodigo.FieldByName('COD_FUNCARGO').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_FUNCARGO').AsInteger + 1;
   DMEXPORTA.TCodigo.post;

    }
    DMEXPORTA.IBTExporta.CommitRetaining;
    Result := True;
  except
    Result := False;
  end;
end;

procedure TFOrdemMec.CBFILTROExit(Sender: TObject);
begin
  inherited;
  AtualizaGridConsulta('');
end;

//CLOSE DO FORM
procedure TFOrdemMec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Edmar - 05/05/2015 - se estiver cadastrando ou consultando um item, chamo o evento do botão cancelar
  if PCadastro.Visible = True then
  begin
    BtnCancelar.Click;
    Exit;
  end;

  inherited;

  //Grava registro maximo permitido na seleção
  GravaMaxRegistroXmlConfig;
  if XESTADO = 'INSERT' then
  begin
    // SE ESTIVER INSERINDO ORDEM NAO DEIXA SAIR
    Action := caNone;
    BtnGravar.Click;
  end;
end;
//KEY PRESS NA GRID

procedure TFOrdemMec.DBGridConsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
  begin
    AtualizaGridConsulta('ORIGEM');
  end;
end;

//pesquisa cliente do equipamento

procedure TFOrdemMec.PesquisaEquipCliente(codigo: string);
var
  XcodEquipAux: integer;
begin
  // letras maiusculas
  codigo := Trim(UpperCase(codigo));

  if codigo <> '' then
  begin
    DMESTOQUE.Alx.close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select * from equipamento');
    DMESTOQUE.Alx.SQL.Add('where (upper(equipamento.placa) like upper (' + #39 + codigo + #39 + ')) AND (EQUIPAMENTO.ATIVO=' + #39 + 'S' + #39 + ')');
    DMESTOQUE.Alx.Open;
    if not DMESTOQUE.alx.IsEmpty then
    begin
      XcodEquipAux := DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
      //FBEquipPlaca.EdDescricao.Text:=DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;

      // busca o cliente q esta atrelado ao equipamento
      FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMESTOQUE.Alx.FieldByname('cod_cliente').AsString, '');

      if not DMPESSOA.WCliente.IsEmpty then
      begin
        XCOD_CLIENTE_SELECT := DMPESSOA.WCliente.FieldByname('COD_CLIENTE').AsInteger;
        //FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByname('cod_interno').AsString;
        EDCliente1.Text := DMPESSOA.WCliente.FieldByname('nome').AsString;
      end;

    end;
  end;
end;

procedure TFOrdemMec.LimpaInfoCliente(Sender: TObject);
begin
  try

    PInfoCliente.Visible := False;
    PInfoCliente.SendToBack;

    //VWCliente.Parent := nil;
    //VWCliente := nil;
  except
    try
      Close;
    except
    end;
  end;
end;

procedure TFOrdemMec.Devoluo1Click(Sender: TObject);
begin
  inherited;
  if Mensagem('C O N F I R M A Ç Ã O', 'DESEJA EFETUAR A DEVOLUÇÃO DA NOTA FISCAL :' + #13 + 'Nº ' + DMServ.WOrdem.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
  begin
    DevTotPed(DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger);
  end;

end;

procedure TFOrdemMec.Cancelar1Click(Sender: TObject);
var
  XCodPedidoTroca: string;
  XCODLANEST: Integer;
  XQTDLOTE: Real;
begin
  inherited;
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');
  if DMServ.WOrdem.FieldByName('STATUS').AsString = 'CANCELADO' then
  begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta N.F. se encontra Cancelada!', '', 1, 1, False, 'a');
    Exit;
  end;

  if DMServ.WOrdem.FieldByName('STATUS').AsString <> 'FECHADO' then
  begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta O.S. não se encontra fechada! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
    Exit;
  end;

  // - 10/02/2009: deixar cancelar N.F. Exportadas
  // se a ordem de servico jah foi exportada, nao sera possivel cancelar
  {If DMServ.WOrdem.FieldByName('EXPORTADO').AsString = '#'
  Then Begin
      Mensagem('   A T E N Ç Ã O   ','Esta Ordem de Serviço já foi exportada e portanto não pode ser cancelada.','',1,1,false,'I');
      Exit;
  End;}

  if Mensagem('A T E N Ç Ã O', 'Deseja realmente Cancelar a N.F. da OS ' + #13 + 'Nº ' + DMServ.WOrdem.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
  begin
    // BUSCANDO A ORDEM PARA LIBERAÇÃO DE CONSULTA
    FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');
    // DMServ.TOrd.Edit;
     //DMServ.TOrd.FieldByName('EDIT').AsString := '0';
    // DMServ.TOrd.Post;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('update ordem set ordem.edit = :EDITAR');
    DMServ.TAlx1.SQL.Add('where ordem.cod_ordem = :COD');
    DMServ.TAlx1.ParamByName('EDITAR').AsInteger := 1;
    DMServ.TAlx1.ParamByName('COD').AsInteger := XCOD_ORDEM;
    DMServ.TAlx1.ExecSQL;
    DMServ.IBT.CommitRetaining;

    XCodPedidoTroca := DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;
    if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '') = True then
    begin
      //REGISTRA COMANDO DO USUARIO
      Registra('ORDEM', 'CANCELA ORD', DMServ.WOrdem.FieldByName('DTABERT').AsString, 'Nº ' + DMServ.TOrd.FieldByName('NUMERO').AsString + '-' + DMServ.WOrdem.FieldByName('CLIENTE').AsString, 'Vlr:' + DMServ.TOrd.FieldByName('totord').AsString + '-' + DMServ.WOrdem.FieldByName('equipamento').AsString);
      if CancelLanOrd(XCodPedidoTroca) = True then
      begin //Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
        DMServ.TOrd.EDIT;
        DMServ.TOrd.FieldByName('STATUS').AsString := 'CANCELADO';
        DMServ.TOrd.Post;
      end;
      XCodPedido := XView.FieldByName('COD_ORDEM').AsString;
      //INSERE COMANDOS PARA FILTRAR
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.qtd, itprodord.total, ');
      DMESTOQUE.Alx.sql.Add(' subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS PRIMCOD, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL2').AsString + ' AS SEGCOD, ');
      DMESTOQUE.Alx.SQL.Add('itprodord.desconto, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, subproduto.CONTRINT, itprodord.data, itprodord.operacao ');
      DMESTOQUE.Alx.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('Left Join ORDEM on itprodord.cod_Ordem = Ordem.cod_Ordem ');
      DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
      DMESTOQUE.Alx.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
      DMESTOQUE.Alx.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
      DMESTOQUE.Alx.SQL.Add('Where ORDEM.cod_ORDEM = :CODPEDVENDA ');
      DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString := DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;
      DMESTOQUE.Alx.Open;
      DMESTOQUE.ALX.First;
      while not DMESTOQUE.ALX.Eof do
      begin
        if DMESTOQUE.Alx.FieldByName('OPERACAO').AsString <> 'DVL' then
        begin
          if (DMESTOQUE.Alx.RecordCount <> 0) and (DMESTOQUE.Alx.FieldByName('OPERACAO').AsString <> 'DVL') then
          begin //caso a tabela esteja vasia não pode apagar
            //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
            FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.ALX.FieldByName('COD_ESTOQUE').AsString, '');
            FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.ALX.FieldByName('COD_ESTOQUE').AsString, '');
            FiltraTabela(DMServ.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.ALX.FieldByName('COD_ITPRODORD').AsString, '');
            DMServ.TPOrd.Edit;
            DMServ.TPOrd.FieldByName('OPERACAO').AsString := 'DVL';
            DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency := 0;
            DMServ.TPOrd.Post;
            XCODLANEST := InserReg(DMENTRADA.TLancENT, 'LANCENT', 'COD_LANENT');
            DMENTRADA.TLancENT.FieldByName('COD_LANENT').AsInteger := XCODLANEST;
            DMENTRADA.TLancENT.FieldByName('COD_ESTOQUE').AsString := DMESTOQUE.Testoque.FieldByName('COD_ESTOQUE').AsString;
            DMENTRADA.TLancENT.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
            DMENTRADA.TLancENT.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
            DMENTRADA.TLancENT.FieldByName('NUMNOTA').AsString := 'CLD OS-' + DMServ.WOrdem.FieldByName('NUMERO').AsString;
            DMENTRADA.TLancENT.FieldByName('MOTIVO').AsString := 'Canc. O.S: ' + DMServ.WOrdem.FieldByName('NUMERO').AsString + ' /Cliente: ' + DMServ.WOrdem.FieldByName('CLIENTE').AsString;
            DMENTRADA.TLancENT.FieldByName('DT_LANCAMENTO').AsString := DateToStr(Date());
            DMENTRADA.TLancENT.FieldByName('DT_ESTOQUE').AsString := DMServ.WOrdem.FieldByName('dtabert').AsString;
            DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency := DMServ.TPOrd.FieldByName('qtd').AsCurrency;
            DMENTRADA.TLancENT.FieldByName('QTDANT').AsString := DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
            DMENTRADA.TLancEnt.POST;
            DMESTOQUE.TEstoque.Edit;
            DMEstoque.TEstoque.FieldByName('ESTFISICO').Value := DMEstoque.TEstoque.FieldByName('ESTFISICO').Value + DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency;
            DMESTOQUE.TEstoque.POST;
            DMESTOQUE.TransacEstoque.CommitRetaining;
          end;
        end;
        DMESTOQUE.Alx.Next;
      end;
      try
        // EDITANDO A ORDEM PARA LIBERAR, PQ ELA PODE ESTAR BLOQUEADA
        FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
        DMServ.TOrd.Edit;
        DMServ.TOrd.FieldByName('EDIT').AsString := '0';
        DMServ.TOrd.Post;

        DMESTOQUE.TransacEstoque.CommitRetaining;
        DMENTRADA.IBT.CommitRetaining;
        DMSAIDA.IBT.CommitRetaining;
      except
        DMESTOQUE.TransacEstoque.RollbackRetaining;
        DMENTRADA.IBT.RollbackRetaining;
        DMSAIDA.IBT.RollbackRetaining;
      end;
      AtualizaGridConsulta('');
    end
    else
    begin
      Exit;
    end;
  end;
end;

procedure TFOrdemMec.CommesmoCliente1Click(Sender: TObject);
begin
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}

  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  DMESTOQUE.Alx.SQL.Add('select equipamento.cod_cliente, cliente.cod_interno, pessoa.nome, pessoa.endnumero, pessoa.endereco, pessoa.endnumero, pessoa.bairro, equipamento.placa, equipamento.descricao as descequip, equipamento.marca');
  DMESTOQUE.Alx.SQL.Add('from equipamento join cliente on equipamento.cod_cliente = cliente.cod_cliente');
  DMESTOQUE.Alx.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
  DMESTOQUE.Alx.SQL.Add('where equipamento.placa in (select equipamento.placa');
  DMESTOQUE.Alx.SQL.Add('from equipamento');
  DMESTOQUE.Alx.SQL.Add('group by equipamento.placa having count(*) > 1)');
  DMESTOQUE.Alx.SQL.Add('order by equipamento.placa, pessoa.nome');
  DMESTOQUE.Alx.Open;
  DMESTOQUE.Alx.First;
  if DMESTOQUE.Alx.IsEmpty then
    Mensagem('Atenção', 'Relatório retornou vazio!', '', 1, 1, False, 'a')
  else
  begin
    FSTeste.LoadFromFile('C:\MZR\MACS\Rel\FrfEquipRepClientes.frf');
    FSTeste.ShowReport;
  end;
end;

procedure TFOrdemMec.funcaocordup;
begin
  try

    // - 023/02/2009:   verifica se há clientes repetidos
    DMPESSOA.TAux3.Close;
    DMPESSOA.TAux3.SQL.Clear;
    DMPESSOA.TAux3.SQL.Add('select distinct (pessoa.cod_pessoa)');
    DMPESSOA.TAux3.SQL.Add('from CLIENTE');
    DMPESSOA.TAux3.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
    DMPESSOA.TAux3.SQL.Add('where CLIENTE.cod_cliente in (select cliente.cod_cliente');
    DMPESSOA.TAux3.SQL.Add('from CLIENTE');
    DMPESSOA.TAux3.SQL.Add('group by CLIENTE.cod_cliente having count(*) > 1)');
    DMPESSOA.TAux3.Open;

    if not DMPESSOA.TAux3.IsEmpty then
    begin
      DMPESSOA.TAux3.First;
      while not DMPESSOA.TAux3.Eof do
      begin

        // - 023/02/2009:  FILTRA A TABELA CLIENTE
        FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_PESSOA', DMPESSOA.TAux3.fieldByName('COD_PESSOA').AsString, '');
        FiltraTabela(DMPESSOA.TAux1, 'CLIENTE', 'COD_PESSOA', DMPESSOA.TAux3.fieldByName('COD_PESSOA').AsString, '');

        // - 023/02/2009:  FILTRA A TABELA PESSOA
        FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TAux3.fieldByName('COD_PESSOA').AsString, '');
        FiltraTabela(DMPESSOA.TAux2, 'PESSOA', 'COD_PESSOA', DMPESSOA.TAux3.fieldByName('COD_PESSOA').AsString, '');

        DMPESSOA.TCliente.Next;
        DMPESSOA.TPessoa.Next;

        if (DMPESSOA.TCliente.FieldByName('data_cad').AsString = DMPESSOA.TAux1.FieldByName('data_cad').AsString)
          and (DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString = DMPESSOA.TAux2.FieldByName('CPFCNPJ').AsString) then
        begin

          try

            // - 023/02/2009:  deletar codigos
            DMPESSOA.TCliente.Close;
            DMPESSOA.TCliente.SQL.Clear;
            DMPESSOA.TCliente.SQL.Add('delete from cliente where cliente.cod_pessoa = ' + DMPESSOA.TAux1.fieldByName('cod_pessoa').AsString);
            DMPESSOA.TCliente.ExecSQL;

            DMPESSOA.TPessoa.Close;
            DMPESSOA.TPessoa.SQL.Clear;
            DMPESSOA.TPessoa.SQL.Add('delete from pessoa where pessoa.cod_pessoa = ' + DMPESSOA.TAux2.fieldByName('cod_pessoa').AsString);
            DMPESSOA.TPessoa.ExecSQL;

            DMPESSOA.TransacPessoa.CommitRetaining;

          except

            DMPESSOA.TransacPessoa.RollbackRetaining;

          end;

          try

            // - 02/02/2009:  inserir nova pessoa
            DMPESSOA.TPessoa.Close;
            DMPESSOA.TPessoa.SQL.Clear;
            DMPESSOA.TPessoa.SQL.Add('insert into pessoa');
            DMPESSOA.TPessoa.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
            DMPESSOA.TPessoa.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
            DMPESSOA.TPessoa.SQL.Add('values');
            DMPESSOA.TPessoa.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
            DMPESSOA.TPessoa.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
            DMPESSOA.TPessoa.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');

            DMPESSOA.TPessoa.ParamByName('COD_PESSOA').AsInteger := DMPESSOA.TAux2.FieldByName('COD_PESSOA').AsInteger;

            DMPESSOA.TPessoa.ParamByName('NOME').AsString := DMPESSOA.TAux2.FieldByname('nome').AsString;
            DMPESSOA.TPessoa.ParamByName('ENDERECO').AsString := DMPESSOA.TAux2.FieldByname('endereco').AsString;
            DMPESSOA.TPessoa.ParamByName('BAIRRO').AsString := DMPESSOA.TAux2.FieldByname('bairro').AsString;
            DMPESSOA.TPessoa.ParamByName('COD_CIDADE').AsInteger := DMPESSOA.TAux2.FieldByName('COD_CIDADE').AsInteger;
            DMPESSOA.TPessoa.ParamByName('CEP').AsString := DMPESSOA.TAux2.FieldByname('CEP').AsString;
            DMPESSOA.TPessoa.ParamByName('CPFCNPJ').AsString := DMPESSOA.TAux2.FieldByname('CPFCNPJ').AsString;
            if DMPESSOA.TAux2.FieldByname('DATA_INI').AsString <> '' then
              DMPESSOA.TPessoa.ParamByName('DATA_INI').AsDateTime := DMPESSOA.TAux2.FieldByname('DATA_INI').AsDateTime;
            DMPESSOA.TPessoa.ParamByName('TELREL').AsString := DMPESSOA.TAux2.FieldByname('TELREL').AsString;
            if DMPESSOA.TAux2.FieldByname('DTNASC').AsString <> '' then
              DMPESSOA.TPessoa.ParamByName('DTNASC').AsDateTime := DMPESSOA.TAux2.FieldByname('DTNASC').AsDateTime;
            DMPESSOA.TPessoa.ParamByName('COD_REGIAO').AsInteger := DMPESSOA.TAux2.FieldByname('COD_REGIAO').AsInteger;
            if DMPESSOA.TAux2.FieldByname('COD_NATURAL').AsString <> '' then
              DMPESSOA.TPessoa.ParamByName('COD_NATURAL').AsInteger := DMPESSOA.TAux2.FieldByname('COD_NATURAL').AsInteger;
            if DMPESSOA.TAux2.FieldByname('DIAANIVER').AsString <> '' then
              DMPESSOA.TPessoa.ParamByName('DIAANIVER').AsInteger := DMPESSOA.TAux2.FieldByname('DIAANIVER').AsInteger;
            DMPESSOA.TPessoa.ParamByName('PROXIMIDADE').AsString := DMPESSOA.TAux2.FieldByname('PROXIMIDADE').AsString;
            DMPESSOA.TPessoa.ParamByName('VLRCREDITO').AsCurrency := DMPESSOA.TAux2.FieldByname('VLRCREDITO').AsCurrency;
            DMPESSOA.TPessoa.ExecSQL;

            DMPESSOA.TCliente.Close;
            DMPESSOA.TCliente.SQL.Clear;
            DMPESSOA.TCliente.SQL.Add('insert into cliente');
            DMPESSOA.TCliente.SQL.Add('(COD_CLIENTE, COD_PESSOA, COD_INTERNO, DATA_CAD, R_SAL_CONJ, R_SALARIO,');
            DMPESSOA.TCliente.SQL.Add('R_HON_PROF, R_OUTREC, D_ALUGUEL, D_RESIDENCIA, D_VEICULO, D_FAMILIAR,');
            DMPESSOA.TCliente.SQL.Add('D_OUTDESP, LIM_CRED, QTDTEMPORESID, BENS, COD_VENDEDOR, INFOCOM, ENDENTRAGA,');
            DMPESSOA.TCliente.SQL.Add('ATUALIZAR, COD_USUARIO, ATIVO, CREDENCIAL, RAMOATIV, ATACADISTA, COD_FORMPAG,');
            DMPESSOA.TCliente.SQL.Add('EXPORT, SEPARAR, MULTA, JURO, OBS, SCPC, TAMANHO, INFORMACAO,');
            DMPESSOA.TCliente.SQL.Add('DIAVENCIMENTO)');
            DMPESSOA.TCliente.SQL.Add('values');
            DMPESSOA.TCliente.SQL.Add('(:COD_CLIENTE, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :R_SAL_CONJ, :R_SALARIO,');
            DMPESSOA.TCliente.SQL.Add(':R_HON_PROF, :R_OUTREC, :D_ALUGUEL, :D_RESIDENCIA, :D_VEICULO, :D_FAMILIAR,');
            DMPESSOA.TCliente.SQL.Add(':D_OUTDESP, :LIM_CRED, :QTDTEMPORESID, :BENS, :COD_VENDEDOR, :INFOCOM,');
            DMPESSOA.TCliente.SQL.Add(':ENDENTRAGA, :ATUALIZAR, :COD_USUARIO, :ATIVO, :CREDENCIAL, :RAMOATIV,');
            DMPESSOA.TCliente.SQL.Add(':ATACADISTA, :COD_FORMPAG, :EXPORT, :SEPARAR, :MULTA, :JURO, :OBS, :SCPC,');
            DMPESSOA.TCliente.SQL.Add(':TAMANHO, :INFORMACAO, :DIAVENCIMENTO)');

            DMPESSOA.TCliente.ParamByName('COD_CLIENTE').AsInteger := DMPESSOA.TAux1.FieldByName('COD_CLIENTE').AsInteger;

            DMPESSOA.TCliente.ParamByName('COD_PESSOA').AsInteger := DMPESSOA.TAux2.FieldByName('COD_PESSOA').AsInteger;

            DMPESSOA.TCliente.ParamByName('COD_INTERNO').AsString := DMPESSOA.TAux1.FieldByname('COD_INTERNO').AsString;
            DMPESSOA.TCliente.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_CAD').AsDateTime;
            DMPESSOA.TCliente.ParamByName('R_SAL_CONJ').AsCurrency := DMPESSOA.TAux1.FieldByname('R_SAL_CONJ').AsCurrency;
            DMPESSOA.TCliente.ParamByName('R_SALARIO').AsCurrency := DMPESSOA.TAux1.FieldByname('R_SALARIO').AsCurrency;
            DMPESSOA.TCliente.ParamByName('R_HON_PROF').AsCurrency := DMPESSOA.TAux1.FieldByname('R_HON_PROF').AsCurrency;
            DMPESSOA.TCliente.ParamByName('R_OUTREC').AsCurrency := DMPESSOA.TAux1.FieldByname('R_OUTREC').AsCurrency;
            DMPESSOA.TCliente.ParamByName('D_ALUGUEL').AsCurrency := DMPESSOA.TAux1.FieldByname('D_ALUGUEL').AsCurrency;
            DMPESSOA.TCliente.ParamByName('D_RESIDENCIA').AsCurrency := DMPESSOA.TAux1.FieldByname('D_RESIDENCIA').AsCurrency;
            DMPESSOA.TCliente.ParamByName('D_VEICULO').AsCurrency := DMPESSOA.TAux1.FieldByname('D_VEICULO').AsCurrency;
            DMPESSOA.TCliente.ParamByName('D_FAMILIAR').AsCurrency := DMPESSOA.TAux1.FieldByname('D_FAMILIAR').AsCurrency;
            DMPESSOA.TCliente.ParamByName('D_OUTDESP').AsCurrency := DMPESSOA.TAux1.FieldByname('D_OUTDESP').AsCurrency;
            DMPESSOA.TCliente.ParamByName('LIM_CRED').AsCurrency := DMPESSOA.TAux1.FieldByname('LIM_CRED').AsCurrency;
            DMPESSOA.TCliente.ParamByName('QTDTEMPORESID').AsString := DMPESSOA.TAux1.FieldByname('QTDTEMPORESID').AsString;
            DMPESSOA.TCliente.ParamByName('BENS').AsString := DMPESSOA.TAux1.FieldByname('BENS').AsString;
            if DMPESSOA.TAux1.FieldByName('COD_VENDEDOR').AsInteger > 0 then
              DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsInteger := DMPESSOA.TAux1.FieldByName('COD_VENDEDOR').AsInteger;
            DMPESSOA.TCliente.ParamByName('INFOCOM').AsString := DMPESSOA.TAux1.FieldByname('INFOCOM').AsString;
            DMPESSOA.TCliente.ParamByName('ENDENTRAGA').AsString := DMPESSOA.TAux1.FieldByname('ENDENTRAGA').AsString;
            DMPESSOA.TCliente.ParamByName('ATUALIZAR').AsString := DMPESSOA.TAux1.FieldByname('ATUALIZAR').AsString;
            DMPESSOA.TCliente.ParamByName('COD_USUARIO').AsInteger := DMPESSOA.TAux1.FieldByname('COD_USUARIO').AsInteger;
            if DMPESSOA.TAux1.FieldByname('ATIVO').AsString = '' then
              DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '1'
            else
              DMPESSOA.TCliente.ParamByName('ATIVO').AsString := DMPESSOA.TAux1.FieldByname('ATIVO').AsString;
            DMPESSOA.TCliente.ParamByName('CREDENCIAL').AsString := DMPESSOA.TAux1.FieldByname('CREDENCIAL').AsString;
            DMPESSOA.TCliente.ParamByName('RAMOATIV').AsString := DMPESSOA.TAux1.FieldByname('RAMOATIV').AsString;
            DMPESSOA.TCliente.ParamByName('ATACADISTA').AsString := DMPESSOA.TAux1.FieldByname('ATACADISTA').AsString;
            DMPESSOA.TCliente.ParamByName('COD_FORMPAG').AsInteger := DMPESSOA.TAux1.FieldByname('COD_FORMPAG').AsInteger;
            DMPESSOA.TCliente.ParamByName('MULTA').AsCurrency := DMPESSOA.TAux1.FieldByname('MULTA').AsCurrency;
            DMPESSOA.TCliente.ParamByName('JURO').AsCurrency := DMPESSOA.TAux1.FieldByname('JURO').AsCurrency;
            DMPESSOA.TCliente.ParamByName('OBS').AsString := DMPESSOA.TAux1.FieldByname('OBS').AsString;
            DMPESSOA.TCliente.ParamByName('SCPC').AsString := DMPESSOA.TAux1.FieldByname('SCPC').AsString;
            DMPESSOA.TCliente.ParamByName('TAMANHO').AsCurrency := DMPESSOA.TAux1.FieldByname('TAMANHO').AsCurrency;
            DMPESSOA.TCliente.ParamByName('INFORMACAO').AsString := DMPESSOA.TAux1.FieldByname('INFORMACAO').AsString;
            DMPESSOA.TCliente.ParamByName('DIAVENCIMENTO').AsInteger := DMPESSOA.TAux1.FieldByname('DIAVENCIMENTO').AsInteger;
            DMPESSOA.TCliente.ExecSQL;

            DMPESSOA.TransacPessoa.CommitRetaining;
          except
            DMPESSOA.TransacPessoa.RollbackRetaining;
          end;

        end
        else
        begin

          DMPESSOA.TCliente.Close;
          DMPESSOA.TCliente.SQL.Clear;
          DMPESSOA.TCliente.SQL.Add('delete from cliente where cliente.cod_pessoa = ' + DMPESSOA.TAux1.fieldByName('cod_pessoa').AsString);
          DMPESSOA.TCliente.ExecSQL;

          DMPESSOA.TPessoa.Close;
          DMPESSOA.TPessoa.SQL.Clear;
          DMPESSOA.TPessoa.SQL.Add('delete from pessoa where pessoa.cod_pessoa = ' + DMPESSOA.TAux2.fieldByName('cod_pessoa').AsString);
          DMPESSOA.TPessoa.ExecSQL;

          // - 02/02/2009:  inserir nova pessoa
          DMPESSOA.TPessoa.Close;
          DMPESSOA.TPessoa.SQL.Clear;
          DMPESSOA.TPessoa.SQL.Add('insert into pessoa');
          DMPESSOA.TPessoa.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
          DMPESSOA.TPessoa.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
          DMPESSOA.TPessoa.SQL.Add('values');
          DMPESSOA.TPessoa.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
          DMPESSOA.TPessoa.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
          DMPESSOA.TPessoa.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');

          DMPESSOA.TPessoa.ParamByName('COD_PESSOA').AsInteger := DMPESSOA.TAux2.FieldByName('COD_PESSOA').AsInteger;

          DMPESSOA.TPessoa.ParamByName('NOME').AsString := DMPESSOA.TAux2.FieldByname('nome').AsString;
          DMPESSOA.TPessoa.ParamByName('ENDERECO').AsString := DMPESSOA.TAux2.FieldByname('endereco').AsString;
          DMPESSOA.TPessoa.ParamByName('BAIRRO').AsString := DMPESSOA.TAux2.FieldByname('bairro').AsString;
          DMPESSOA.TPessoa.ParamByName('COD_CIDADE').AsInteger := DMPESSOA.TAux2.FieldByName('COD_CIDADE').AsInteger;
          DMPESSOA.TPessoa.ParamByName('CEP').AsString := DMPESSOA.TAux2.FieldByname('CEP').AsString;
          DMPESSOA.TPessoa.ParamByName('CPFCNPJ').AsString := DMPESSOA.TAux2.FieldByname('CPFCNPJ').AsString;
          if DMPESSOA.TAux2.FieldByname('DATA_INI').AsString <> '' then
            DMPESSOA.TPessoa.ParamByName('DATA_INI').AsDateTime := DMPESSOA.TAux2.FieldByname('DATA_INI').AsDateTime;
          DMPESSOA.TPessoa.ParamByName('TELREL').AsString := DMPESSOA.TAux2.FieldByname('TELREL').AsString;
          if DMPESSOA.TAux2.FieldByname('DTNASC').AsString <> '' then
            DMPESSOA.TPessoa.ParamByName('DTNASC').AsDateTime := DMPESSOA.TAux2.FieldByname('DTNASC').AsDateTime;
          DMPESSOA.TPessoa.ParamByName('COD_REGIAO').AsInteger := DMPESSOA.TAux2.FieldByname('COD_REGIAO').AsInteger;
          if DMPESSOA.TAux2.FieldByname('COD_NATURAL').AsString <> '' then
            DMPESSOA.TPessoa.ParamByName('COD_NATURAL').AsInteger := DMPESSOA.TAux2.FieldByname('COD_NATURAL').AsInteger;
          if DMPESSOA.TAux2.FieldByname('DIAANIVER').AsString <> '' then
            DMPESSOA.TPessoa.ParamByName('DIAANIVER').AsInteger := DMPESSOA.TAux2.FieldByname('DIAANIVER').AsInteger;
          DMPESSOA.TPessoa.ParamByName('PROXIMIDADE').AsString := DMPESSOA.TAux2.FieldByname('PROXIMIDADE').AsString;
          DMPESSOA.TPessoa.ParamByName('VLRCREDITO').AsCurrency := DMPESSOA.TAux2.FieldByname('VLRCREDITO').AsCurrency;
          DMPESSOA.TPessoa.ExecSQL;

          DMPESSOA.TCliente.Close;
          DMPESSOA.TCliente.SQL.Clear;
          DMPESSOA.TCliente.SQL.Add('insert into cliente');
          DMPESSOA.TCliente.SQL.Add('(COD_CLIENTE, COD_PESSOA, COD_INTERNO, DATA_CAD, R_SAL_CONJ, R_SALARIO,');
          DMPESSOA.TCliente.SQL.Add('R_HON_PROF, R_OUTREC, D_ALUGUEL, D_RESIDENCIA, D_VEICULO, D_FAMILIAR,');
          DMPESSOA.TCliente.SQL.Add('D_OUTDESP, LIM_CRED, QTDTEMPORESID, BENS, COD_VENDEDOR, INFOCOM, ENDENTRAGA,');
          DMPESSOA.TCliente.SQL.Add('ATUALIZAR, COD_USUARIO, ATIVO, CREDENCIAL, RAMOATIV, ATACADISTA, COD_FORMPAG,');
          DMPESSOA.TCliente.SQL.Add('EXPORT, SEPARAR, MULTA, JURO, OBS, SCPC, TAMANHO, INFORMACAO,');
          DMPESSOA.TCliente.SQL.Add('DIAVENCIMENTO)');
          DMPESSOA.TCliente.SQL.Add('values');
          DMPESSOA.TCliente.SQL.Add('(:COD_CLIENTE, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :R_SAL_CONJ, :R_SALARIO,');
          DMPESSOA.TCliente.SQL.Add(':R_HON_PROF, :R_OUTREC, :D_ALUGUEL, :D_RESIDENCIA, :D_VEICULO, :D_FAMILIAR,');
          DMPESSOA.TCliente.SQL.Add(':D_OUTDESP, :LIM_CRED, :QTDTEMPORESID, :BENS, :COD_VENDEDOR, :INFOCOM,');
          DMPESSOA.TCliente.SQL.Add(':ENDENTRAGA, :ATUALIZAR, :COD_USUARIO, :ATIVO, :CREDENCIAL, :RAMOATIV,');
          DMPESSOA.TCliente.SQL.Add(':ATACADISTA, :COD_FORMPAG, :EXPORT, :SEPARAR, :MULTA, :JURO, :OBS, :SCPC,');
          DMPESSOA.TCliente.SQL.Add(':TAMANHO, :INFORMACAO, :DIAVENCIMENTO)');

          DMPESSOA.TCliente.ParamByName('COD_CLIENTE').AsInteger := DMPESSOA.TAux1.FieldByName('COD_CLIENTE').AsInteger;

          DMPESSOA.TCliente.ParamByName('COD_PESSOA').AsInteger := DMPESSOA.TAux2.FieldByName('COD_PESSOA').AsInteger;

          DMPESSOA.TCliente.ParamByName('COD_INTERNO').AsString := DMPESSOA.TAux1.FieldByname('COD_INTERNO').AsString;
          DMPESSOA.TCliente.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_CAD').AsDateTime;
          DMPESSOA.TCliente.ParamByName('R_SAL_CONJ').AsCurrency := DMPESSOA.TAux1.FieldByname('R_SAL_CONJ').AsCurrency;
          DMPESSOA.TCliente.ParamByName('R_SALARIO').AsCurrency := DMPESSOA.TAux1.FieldByname('R_SALARIO').AsCurrency;
          DMPESSOA.TCliente.ParamByName('R_HON_PROF').AsCurrency := DMPESSOA.TAux1.FieldByname('R_HON_PROF').AsCurrency;
          DMPESSOA.TCliente.ParamByName('R_OUTREC').AsCurrency := DMPESSOA.TAux1.FieldByname('R_OUTREC').AsCurrency;
          DMPESSOA.TCliente.ParamByName('D_ALUGUEL').AsCurrency := DMPESSOA.TAux1.FieldByname('D_ALUGUEL').AsCurrency;
          DMPESSOA.TCliente.ParamByName('D_RESIDENCIA').AsCurrency := DMPESSOA.TAux1.FieldByname('D_RESIDENCIA').AsCurrency;
          DMPESSOA.TCliente.ParamByName('D_VEICULO').AsCurrency := DMPESSOA.TAux1.FieldByname('D_VEICULO').AsCurrency;
          DMPESSOA.TCliente.ParamByName('D_FAMILIAR').AsCurrency := DMPESSOA.TAux1.FieldByname('D_FAMILIAR').AsCurrency;
          DMPESSOA.TCliente.ParamByName('D_OUTDESP').AsCurrency := DMPESSOA.TAux1.FieldByname('D_OUTDESP').AsCurrency;
          DMPESSOA.TCliente.ParamByName('LIM_CRED').AsCurrency := DMPESSOA.TAux1.FieldByname('LIM_CRED').AsCurrency;
          DMPESSOA.TCliente.ParamByName('QTDTEMPORESID').AsString := DMPESSOA.TAux1.FieldByname('QTDTEMPORESID').AsString;
          DMPESSOA.TCliente.ParamByName('BENS').AsString := DMPESSOA.TAux1.FieldByname('BENS').AsString;
          if DMPESSOA.TAux1.FieldByName('COD_VENDEDOR').AsInteger > 0 then
            DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsInteger := DMPESSOA.TAux1.FieldByName('COD_VENDEDOR').AsInteger;
          DMPESSOA.TCliente.ParamByName('INFOCOM').AsString := DMPESSOA.TAux1.FieldByname('INFOCOM').AsString;
          DMPESSOA.TCliente.ParamByName('ENDENTRAGA').AsString := DMPESSOA.TAux1.FieldByname('ENDENTRAGA').AsString;
          DMPESSOA.TCliente.ParamByName('ATUALIZAR').AsString := DMPESSOA.TAux1.FieldByname('ATUALIZAR').AsString;
          DMPESSOA.TCliente.ParamByName('COD_USUARIO').AsInteger := DMPESSOA.TAux1.FieldByname('COD_USUARIO').AsInteger;
          if DMPESSOA.TAux1.FieldByname('ATIVO').AsString = '' then
            DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '1'
          else
            DMPESSOA.TCliente.ParamByName('ATIVO').AsString := DMPESSOA.TAux1.FieldByname('ATIVO').AsString;
          DMPESSOA.TCliente.ParamByName('CREDENCIAL').AsString := DMPESSOA.TAux1.FieldByname('CREDENCIAL').AsString;
          DMPESSOA.TCliente.ParamByName('RAMOATIV').AsString := DMPESSOA.TAux1.FieldByname('RAMOATIV').AsString;
          DMPESSOA.TCliente.ParamByName('ATACADISTA').AsString := DMPESSOA.TAux1.FieldByname('ATACADISTA').AsString;
          DMPESSOA.TCliente.ParamByName('COD_FORMPAG').AsInteger := DMPESSOA.TAux1.FieldByname('COD_FORMPAG').AsInteger;
          DMPESSOA.TCliente.ParamByName('MULTA').AsCurrency := DMPESSOA.TAux1.FieldByname('MULTA').AsCurrency;
          DMPESSOA.TCliente.ParamByName('JURO').AsCurrency := DMPESSOA.TAux1.FieldByname('JURO').AsCurrency;
          DMPESSOA.TCliente.ParamByName('OBS').AsString := DMPESSOA.TAux1.FieldByname('OBS').AsString;
          DMPESSOA.TCliente.ParamByName('SCPC').AsString := DMPESSOA.TAux1.FieldByname('SCPC').AsString;
          DMPESSOA.TCliente.ParamByName('TAMANHO').AsCurrency := DMPESSOA.TAux1.FieldByname('TAMANHO').AsCurrency;
          DMPESSOA.TCliente.ParamByName('INFORMACAO').AsString := DMPESSOA.TAux1.FieldByname('INFORMACAO').AsString;
          DMPESSOA.TCliente.ParamByName('DIAVENCIMENTO').AsInteger := DMPESSOA.TAux1.FieldByname('DIAVENCIMENTO').AsInteger;
          DMPESSOA.TCliente.ExecSQL;

          // - 02/02/2009:  inserir outro

          DMPESSOA.TAux1.Next;
          DMPESSOA.TAux2.Next;
          while not DMPESSOA.TAux1.Eof do
          begin
            DMPESSOA.TPessoa.Close;
            DMPESSOA.TPessoa.SQL.Clear;
            DMPESSOA.TPessoa.SQL.Add('insert into pessoa');
            DMPESSOA.TPessoa.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
            DMPESSOA.TPessoa.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
            DMPESSOA.TPessoa.SQL.Add('values');
            DMPESSOA.TPessoa.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
            DMPESSOA.TPessoa.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
            DMPESSOA.TPessoa.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');

            DMPESSOA.TPessoa.ParamByName('COD_PESSOA').AsInteger := DMMACS.TCodigo.FieldByname('COD_PESSOA').AsInteger;

            DMPESSOA.TPessoa.ParamByName('NOME').AsString := DMPESSOA.TAux2.FieldByname('nome').AsString;
            DMPESSOA.TPessoa.ParamByName('ENDERECO').AsString := DMPESSOA.TAux2.FieldByname('endereco').AsString;
            DMPESSOA.TPessoa.ParamByName('BAIRRO').AsString := DMPESSOA.TAux2.FieldByname('bairro').AsString;
            DMPESSOA.TPessoa.ParamByName('COD_CIDADE').AsInteger := DMPESSOA.TAux2.FieldByName('COD_CIDADE').AsInteger;
            DMPESSOA.TPessoa.ParamByName('CEP').AsString := DMPESSOA.TAux2.FieldByname('CEP').AsString;
            DMPESSOA.TPessoa.ParamByName('CPFCNPJ').AsString := DMPESSOA.TAux2.FieldByname('CPFCNPJ').AsString;
            if DMPESSOA.TAux2.FieldByname('DATA_INI').AsString <> '' then
              DMPESSOA.TPessoa.ParamByName('DATA_INI').AsDateTime := DMPESSOA.TAux2.FieldByname('DATA_INI').AsDateTime;
            DMPESSOA.TPessoa.ParamByName('TELREL').AsString := DMPESSOA.TAux2.FieldByname('TELREL').AsString;
            if DMPESSOA.TAux2.FieldByname('DTNASC').AsString <> '' then
              DMPESSOA.TPessoa.ParamByName('DTNASC').AsDateTime := DMPESSOA.TAux2.FieldByname('DTNASC').AsDateTime;
            DMPESSOA.TPessoa.ParamByName('COD_REGIAO').AsInteger := DMPESSOA.TAux2.FieldByname('COD_REGIAO').AsInteger;
            if DMPESSOA.TAux2.FieldByname('COD_NATURAL').AsString <> '' then
              DMPESSOA.TPessoa.ParamByName('COD_NATURAL').AsInteger := DMPESSOA.TAux2.FieldByname('COD_NATURAL').AsInteger;
            if DMPESSOA.TAux2.FieldByname('DIAANIVER').AsString <> '' then
              DMPESSOA.TPessoa.ParamByName('DIAANIVER').AsInteger := DMPESSOA.TAux2.FieldByname('DIAANIVER').AsInteger;
            DMPESSOA.TPessoa.ParamByName('PROXIMIDADE').AsString := DMPESSOA.TAux2.FieldByname('PROXIMIDADE').AsString;
            DMPESSOA.TPessoa.ParamByName('VLRCREDITO').AsCurrency := DMPESSOA.TAux2.FieldByname('VLRCREDITO').AsCurrency;
            DMPESSOA.TPessoa.ExecSQL;

            DMPESSOA.TCliente.Close;
            DMPESSOA.TCliente.SQL.Clear;
            DMPESSOA.TCliente.SQL.Add('insert into cliente');
            DMPESSOA.TCliente.SQL.Add('(COD_CLIENTE, COD_PESSOA, COD_INTERNO, DATA_CAD, R_SAL_CONJ, R_SALARIO,');
            DMPESSOA.TCliente.SQL.Add('R_HON_PROF, R_OUTREC, D_ALUGUEL, D_RESIDENCIA, D_VEICULO, D_FAMILIAR,');
            DMPESSOA.TCliente.SQL.Add('D_OUTDESP, LIM_CRED, QTDTEMPORESID, BENS, COD_VENDEDOR, INFOCOM, ENDENTRAGA,');
            DMPESSOA.TCliente.SQL.Add('ATUALIZAR, COD_USUARIO, ATIVO, CREDENCIAL, RAMOATIV, ATACADISTA, COD_FORMPAG,');
            DMPESSOA.TCliente.SQL.Add('EXPORT, SEPARAR, MULTA, JURO, OBS, SCPC, TAMANHO, INFORMACAO,');
            DMPESSOA.TCliente.SQL.Add('DIAVENCIMENTO)');
            DMPESSOA.TCliente.SQL.Add('values');
            DMPESSOA.TCliente.SQL.Add('(:COD_CLIENTE, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :R_SAL_CONJ, :R_SALARIO,');
            DMPESSOA.TCliente.SQL.Add(':R_HON_PROF, :R_OUTREC, :D_ALUGUEL, :D_RESIDENCIA, :D_VEICULO, :D_FAMILIAR,');
            DMPESSOA.TCliente.SQL.Add(':D_OUTDESP, :LIM_CRED, :QTDTEMPORESID, :BENS, :COD_VENDEDOR, :INFOCOM,');
            DMPESSOA.TCliente.SQL.Add(':ENDENTRAGA, :ATUALIZAR, :COD_USUARIO, :ATIVO, :CREDENCIAL, :RAMOATIV,');
            DMPESSOA.TCliente.SQL.Add(':ATACADISTA, :COD_FORMPAG, :EXPORT, :SEPARAR, :MULTA, :JURO, :OBS, :SCPC,');
            DMPESSOA.TCliente.SQL.Add(':TAMANHO, :INFORMACAO, :DIAVENCIMENTO)');

            DMPESSOA.TCliente.ParamByName('COD_CLIENTE').AsInteger := DMMACS.TCodigo.FieldByname('COD_CLIENTE').AsInteger;

            DMPESSOA.TCliente.ParamByName('COD_PESSOA').AsInteger := DMMACS.TCodigo.FieldByname('COD_PESSOA').AsInteger;

            DMPESSOA.TCliente.ParamByName('COD_INTERNO').AsString := DMMACS.TCodigo.FieldByname('COD_CLIENTE').AsString;
            DMPESSOA.TCliente.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_CAD').AsDateTime;
            DMPESSOA.TCliente.ParamByName('R_SAL_CONJ').AsCurrency := DMPESSOA.TAux1.FieldByname('R_SAL_CONJ').AsCurrency;
            DMPESSOA.TCliente.ParamByName('R_SALARIO').AsCurrency := DMPESSOA.TAux1.FieldByname('R_SALARIO').AsCurrency;
            DMPESSOA.TCliente.ParamByName('R_HON_PROF').AsCurrency := DMPESSOA.TAux1.FieldByname('R_HON_PROF').AsCurrency;
            DMPESSOA.TCliente.ParamByName('R_OUTREC').AsCurrency := DMPESSOA.TAux1.FieldByname('R_OUTREC').AsCurrency;
            DMPESSOA.TCliente.ParamByName('D_ALUGUEL').AsCurrency := DMPESSOA.TAux1.FieldByname('D_ALUGUEL').AsCurrency;
            DMPESSOA.TCliente.ParamByName('D_RESIDENCIA').AsCurrency := DMPESSOA.TAux1.FieldByname('D_RESIDENCIA').AsCurrency;
            DMPESSOA.TCliente.ParamByName('D_VEICULO').AsCurrency := DMPESSOA.TAux1.FieldByname('D_VEICULO').AsCurrency;
            DMPESSOA.TCliente.ParamByName('D_FAMILIAR').AsCurrency := DMPESSOA.TAux1.FieldByname('D_FAMILIAR').AsCurrency;
            DMPESSOA.TCliente.ParamByName('D_OUTDESP').AsCurrency := DMPESSOA.TAux1.FieldByname('D_OUTDESP').AsCurrency;
            DMPESSOA.TCliente.ParamByName('LIM_CRED').AsCurrency := DMPESSOA.TAux1.FieldByname('LIM_CRED').AsCurrency;
            DMPESSOA.TCliente.ParamByName('QTDTEMPORESID').AsString := DMPESSOA.TAux1.FieldByname('QTDTEMPORESID').AsString;
            DMPESSOA.TCliente.ParamByName('BENS').AsString := DMPESSOA.TAux1.FieldByname('BENS').AsString;
            if DMPESSOA.TAux1.FieldByName('COD_VENDEDOR').AsInteger > 0 then
              DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsInteger := DMPESSOA.TAux1.FieldByName('COD_VENDEDOR').AsInteger;
            DMPESSOA.TCliente.ParamByName('INFOCOM').AsString := DMPESSOA.TAux1.FieldByname('INFOCOM').AsString;
            DMPESSOA.TCliente.ParamByName('ENDENTRAGA').AsString := DMPESSOA.TAux1.FieldByname('ENDENTRAGA').AsString;
            DMPESSOA.TCliente.ParamByName('ATUALIZAR').AsString := DMPESSOA.TAux1.FieldByname('ATUALIZAR').AsString;
            DMPESSOA.TCliente.ParamByName('COD_USUARIO').AsInteger := DMPESSOA.TAux1.FieldByname('COD_USUARIO').AsInteger;
            if DMPESSOA.TAux1.FieldByname('ATIVO').AsString = '' then
              DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '1'
            else
              DMPESSOA.TCliente.ParamByName('ATIVO').AsString := DMPESSOA.TAux1.FieldByname('ATIVO').AsString;
            DMPESSOA.TCliente.ParamByName('CREDENCIAL').AsString := DMPESSOA.TAux1.FieldByname('CREDENCIAL').AsString;
            DMPESSOA.TCliente.ParamByName('RAMOATIV').AsString := DMPESSOA.TAux1.FieldByname('RAMOATIV').AsString;
            DMPESSOA.TCliente.ParamByName('ATACADISTA').AsString := DMPESSOA.TAux1.FieldByname('ATACADISTA').AsString;
            DMPESSOA.TCliente.ParamByName('COD_FORMPAG').AsInteger := DMPESSOA.TAux1.FieldByname('COD_FORMPAG').AsInteger;
            DMPESSOA.TCliente.ParamByName('MULTA').AsCurrency := DMPESSOA.TAux1.FieldByname('MULTA').AsCurrency;
            DMPESSOA.TCliente.ParamByName('JURO').AsCurrency := DMPESSOA.TAux1.FieldByname('JURO').AsCurrency;
            DMPESSOA.TCliente.ParamByName('OBS').AsString := DMPESSOA.TAux1.FieldByname('OBS').AsString;
            DMPESSOA.TCliente.ParamByName('SCPC').AsString := DMPESSOA.TAux1.FieldByname('SCPC').AsString;
            DMPESSOA.TCliente.ParamByName('TAMANHO').AsCurrency := DMPESSOA.TAux1.FieldByname('TAMANHO').AsCurrency;
            DMPESSOA.TCliente.ParamByName('INFORMACAO').AsString := DMPESSOA.TAux1.FieldByname('INFORMACAO').AsString;
            DMPESSOA.TCliente.ParamByName('DIAVENCIMENTO').AsInteger := DMPESSOA.TAux1.FieldByname('DIAVENCIMENTO').AsInteger;
            DMPESSOA.TCliente.ExecSQL;

            DMMACS.TCodigo.Edit;
            DMMACS.TCodigo.FieldByName('COD_CLIENTE').AsInteger := DMMACS.TCodigo.FieldByName('COD_CLIENTE').AsInteger + 1;
            DMMACS.TCodigo.FieldByName('COD_PESSOA').AsInteger := DMMACS.TCodigo.FieldByName('COD_PESSOA').AsInteger + 1;
            DMMACS.TCodigo.Post;
            DMMACS.IBTCodigo.CommitRetaining;
            DMPESSOA.TAux2.Next;
            DMPESSOA.TAux1.Next;
          end;
        end;

        DMPESSOA.TAux3.Next;
      end;
    end;
    DMPESSOA.TransacPessoa.CommitRetaining;
  except
    DMPESSOA.TransacPessoa.RollbackRetaining;
  end;

  // - 02/02/2009: VERIFICA EQUIPAMENTO -----

  try

    DMPESSOA.TAux3.Close;
    DMPESSOA.TAux3.SQL.Clear;
    DMPESSOA.TAux3.SQL.Add('select DISTINCT equipamento.cod_equipamento');
    DMPESSOA.TAux3.SQL.Add('from equipamento');
    DMPESSOA.TAux3.SQL.Add('where equipamento.cod_equipamento in (select equipamento.cod_equipamento');
    DMPESSOA.TAux3.SQL.Add('from equipamento');
    DMPESSOA.TAux3.SQL.Add('group by equipamento.cod_equipamento having count(*) > 1)');
    DMPESSOA.TAux3.Open;

    if not DMPESSOA.TAux3.IsEmpty then
    begin
      DMPESSOA.TAux3.First;
      while not DMPESSOA.TAux3.Eof do
      begin
        FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMPESSOA.TAux3.fieldByName('cod_equipamento').AsString, '');
        FiltraTabela(DMPESSOA.TAux1, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMPESSOA.TAux3.fieldByName('cod_equipamento').AsString, '');

        DMPESSOA.TEquip.Next;

        if (DMPESSOA.TEquip.FieldByName('PLACA').AsString = DMPESSOA.TAux1.FieldByName('PLACA').AsString) then
        begin

          try

            // - 023/02/2009:  deletar codigos
            DMPESSOA.TEquip.Close;
            DMPESSOA.TEquip.SQL.Clear;
            DMPESSOA.TEquip.SQL.Add('delete from equipamento where equipamento.cod_equipamento = ' + DMPESSOA.TAux1.fieldByName('cod_equipamento').AsString);
            DMPESSOA.TEquip.ExecSQL;

            DMPESSOA.TEquip.Close;
            DMPESSOA.TEquip.SQL.Clear;
            DMPESSOA.TEquip.SQL.Add('insert into EQUIPAMENTO');
            DMPESSOA.TEquip.SQL.Add('(COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, MARCA, MODELO, ANO, COR, CHASSI,');
            DMPESSOA.TEquip.SQL.Add('PLACA, DTAQUISICAO, CONCESSIONARIA, MOTOR, ANOMOTOR, CHASSIMOTOR, KMATUAL,');
            DMPESSOA.TEquip.SQL.Add('UNIDRODAGEM, NUM_FROTA, ALTURAMAX)');
            DMPESSOA.TEquip.SQL.Add('values');
            DMPESSOA.TEquip.SQL.Add('(:COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :MARCA, :MODELO,:ANO, :COR,');
            DMPESSOA.TEquip.SQL.Add(':CHASSI, :PLACA, :DTAQUISICAO, :CONCESSIONARIA, :MOTOR, :ANOMOTOR, :CHASSIMOTOR,');
            DMPESSOA.TEquip.SQL.Add(':KMATUAL, :UNIDRODAGEM, :NUM_FROTA, :ALTURAMAX)');

            DMPESSOA.TEquip.ParamByName('COD_EQUIPAMENTO').AsInteger := DMPESSOA.TAux1.fieldByName('cod_equipamento').AsInteger;

            if DMPESSOA.TAux1.FieldByName('COD_CLIENTE').AsInteger > 0 then
              DMPESSOA.TEquip.ParamByName('COD_CLIENTE').AsInteger := DMPESSOA.TAux1.FieldByName('COD_CLIENTE').AsInteger;
            DMPESSOA.TEquip.ParamByName('DESCRICAO').AsString := DMPESSOA.TAux1.FieldByName('DESCRICAO').AsString;
            DMPESSOA.TEquip.ParamByName('MARCA').AsString := DMPESSOA.TAux1.FieldByName('MARCA').AsString;
            DMPESSOA.TEquip.ParamByName('MODELO').AsString := DMPESSOA.TAux1.FieldByName('MODELO').AsString;
            DMPESSOA.TEquip.ParamByName('ANO').AsString := DMPESSOA.TAux1.FieldByName('ANO').AsString;
            DMPESSOA.TEquip.ParamByName('COR').AsString := DMPESSOA.TAux1.FieldByName('COR').AsString;
            DMPESSOA.TEquip.ParamByName('CHASSI').AsString := DMPESSOA.TAux1.FieldByName('CHASSI').AsString;
            DMPESSOA.TEquip.ParamByName('PLACA').AsString := DMPESSOA.TAux1.FieldByName('PLACA').AsString;
            if DMPESSOA.TAux1.FieldByName('DTAQUISICAO').AsString <> '' then
              DMPESSOA.TEquip.ParamByName('DTAQUISICAO').AsDateTime := DMPESSOA.TAux1.FieldByName('DTAQUISICAO').AsDateTime;
            DMPESSOA.TEquip.ParamByName('CONCESSIONARIA').AsString := DMPESSOA.TAux1.FieldByName('CONCESSIONARIA').AsString;
            DMPESSOA.TEquip.ParamByName('MOTOR').AsString := DMPESSOA.TAux1.FieldByName('MOTOR').AsString;
            DMPESSOA.TEquip.ParamByName('ANOMOTOR').AsString := DMPESSOA.TAux1.FieldByName('ANOMOTOR').AsString;
            DMPESSOA.TEquip.ParamByName('CHASSIMOTOR').AsString := DMPESSOA.TAux1.FieldByName('CHASSIMOTOR').AsString;
            DMPESSOA.TEquip.ParamByName('KMATUAL').AsInteger := DMPESSOA.TAux1.FieldByName('KMATUAL').AsInteger;
            DMPESSOA.TEquip.ParamByName('UNIDRODAGEM').AsString := DMPESSOA.TAux1.FieldByName('UNIDRODAGEM').AsString;
            DMPESSOA.TEquip.ParamByName('NUM_FROTA').AsString := DMPESSOA.TAux1.FieldByName('NUM_FROTA').AsString;
            DMPESSOA.TEquip.ParamByName('ALTURAMAX').AsCurrency := DMPESSOA.TAux1.FieldByName('ALTURAMAX').AsCurrency;
            DMPESSOA.TEquip.ExecSQL;

            DMPESSOA.TransacPessoa.CommitRetaining;

          except

            DMPESSOA.TransacPessoa.RollbackRetaining;

          end;

          try

            DMPESSOA.TransacPessoa.CommitRetaining;
          except
            DMPESSOA.TransacPessoa.RollbackRetaining;
          end;

        end
        else
        begin

          DMPESSOA.TEquip.Close;
          DMPESSOA.TEquip.SQL.Clear;
          DMPESSOA.TEquip.SQL.Add('delete from equipamento where equipamento.cod_equipamento = ' + DMPESSOA.TAux1.fieldByName('cod_equipamento').AsString);
          DMPESSOA.TEquip.ExecSQL;

          DMPESSOA.TEquip.Close;
          DMPESSOA.TEquip.SQL.Clear;
          DMPESSOA.TEquip.SQL.Add('insert into EQUIPAMENTO');
          DMPESSOA.TEquip.SQL.Add('(COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, MARCA, MODELO, ANO, COR, CHASSI,');
          DMPESSOA.TEquip.SQL.Add('PLACA, DTAQUISICAO, CONCESSIONARIA, MOTOR, ANOMOTOR, CHASSIMOTOR, KMATUAL,');
          DMPESSOA.TEquip.SQL.Add('UNIDRODAGEM, NUM_FROTA, ALTURAMAX)');
          DMPESSOA.TEquip.SQL.Add('values');
          DMPESSOA.TEquip.SQL.Add('(:COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :MARCA, :MODELO,:ANO, :COR,');
          DMPESSOA.TEquip.SQL.Add(':CHASSI, :PLACA, :DTAQUISICAO, :CONCESSIONARIA, :MOTOR, :ANOMOTOR, :CHASSIMOTOR,');
          DMPESSOA.TEquip.SQL.Add(':KMATUAL, :UNIDRODAGEM, :NUM_FROTA, :ALTURAMAX)');

          DMPESSOA.TEquip.ParamByName('COD_EQUIPAMENTO').AsInteger := DMPESSOA.TAux1.fieldByName('cod_equipamento').AsInteger;

          if DMPESSOA.TAux1.FieldByName('COD_CLIENTE').AsInteger > 0 then
            DMPESSOA.TEquip.ParamByName('COD_CLIENTE').AsInteger := DMPESSOA.TAux1.FieldByName('COD_CLIENTE').AsInteger;
          DMPESSOA.TEquip.ParamByName('DESCRICAO').AsString := DMPESSOA.TAux1.FieldByName('DESCRICAO').AsString;
          DMPESSOA.TEquip.ParamByName('MARCA').AsString := DMPESSOA.TAux1.FieldByName('MARCA').AsString;
          DMPESSOA.TEquip.ParamByName('MODELO').AsString := DMPESSOA.TAux1.FieldByName('MODELO').AsString;
          DMPESSOA.TEquip.ParamByName('ANO').AsString := DMPESSOA.TAux1.FieldByName('ANO').AsString;
          DMPESSOA.TEquip.ParamByName('COR').AsString := DMPESSOA.TAux1.FieldByName('COR').AsString;
          DMPESSOA.TEquip.ParamByName('CHASSI').AsString := DMPESSOA.TAux1.FieldByName('CHASSI').AsString;
          DMPESSOA.TEquip.ParamByName('PLACA').AsString := DMPESSOA.TAux1.FieldByName('PLACA').AsString;
          if DMPESSOA.TAux1.FieldByName('DTAQUISICAO').AsString <> '' then
            DMPESSOA.TEquip.ParamByName('DTAQUISICAO').AsDateTime := DMPESSOA.TAux1.FieldByName('DTAQUISICAO').AsDateTime;
          DMPESSOA.TEquip.ParamByName('CONCESSIONARIA').AsString := DMPESSOA.TAux1.FieldByName('CONCESSIONARIA').AsString;
          DMPESSOA.TEquip.ParamByName('MOTOR').AsString := DMPESSOA.TAux1.FieldByName('MOTOR').AsString;
          DMPESSOA.TEquip.ParamByName('ANOMOTOR').AsString := DMPESSOA.TAux1.FieldByName('ANOMOTOR').AsString;
          DMPESSOA.TEquip.ParamByName('CHASSIMOTOR').AsString := DMPESSOA.TAux1.FieldByName('CHASSIMOTOR').AsString;
          DMPESSOA.TEquip.ParamByName('KMATUAL').AsInteger := DMPESSOA.TAux1.FieldByName('KMATUAL').AsInteger;
          DMPESSOA.TEquip.ParamByName('UNIDRODAGEM').AsString := DMPESSOA.TAux1.FieldByName('UNIDRODAGEM').AsString;
          DMPESSOA.TEquip.ParamByName('NUM_FROTA').AsString := DMPESSOA.TAux1.FieldByName('NUM_FROTA').AsString;
          DMPESSOA.TEquip.ParamByName('ALTURAMAX').AsCurrency := DMPESSOA.TAux1.FieldByName('ALTURAMAX').AsCurrency;
          DMPESSOA.TEquip.ExecSQL;

          // - 02/02/2009:  inserir outro

          DMPESSOA.TAux1.Next;
          while not DMPESSOA.TAux1.Eof do
          begin
            DMPESSOA.TEquip.Close;
            DMPESSOA.TEquip.SQL.Clear;
            DMPESSOA.TEquip.SQL.Add('insert into EQUIPAMENTO');
            DMPESSOA.TEquip.SQL.Add('(COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, MARCA, MODELO, ANO, COR, CHASSI,');
            DMPESSOA.TEquip.SQL.Add('PLACA, DTAQUISICAO, CONCESSIONARIA, MOTOR, ANOMOTOR, CHASSIMOTOR, KMATUAL,');
            DMPESSOA.TEquip.SQL.Add('UNIDRODAGEM, NUM_FROTA, ALTURAMAX)');
            DMPESSOA.TEquip.SQL.Add('values');
            DMPESSOA.TEquip.SQL.Add('(:COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :MARCA, :MODELO,:ANO, :COR,');
            DMPESSOA.TEquip.SQL.Add(':CHASSI, :PLACA, :DTAQUISICAO, :CONCESSIONARIA, :MOTOR, :ANOMOTOR, :CHASSIMOTOR,');
            DMPESSOA.TEquip.SQL.Add(':KMATUAL, :UNIDRODAGEM, :NUM_FROTA, :ALTURAMAX)');

            DMPESSOA.TEquip.ParamByName('COD_EQUIPAMENTO').AsInteger := DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger;

            if DMPESSOA.TAux1.FieldByName('COD_CLIENTE').AsInteger > 0 then
              DMPESSOA.TEquip.ParamByName('COD_CLIENTE').AsInteger := DMPESSOA.TAux1.FieldByName('COD_CLIENTE').AsInteger;
            DMPESSOA.TEquip.ParamByName('DESCRICAO').AsString := DMPESSOA.TAux1.FieldByName('DESCRICAO').AsString;
            DMPESSOA.TEquip.ParamByName('MARCA').AsString := DMPESSOA.TAux1.FieldByName('MARCA').AsString;
            DMPESSOA.TEquip.ParamByName('MODELO').AsString := DMPESSOA.TAux1.FieldByName('MODELO').AsString;
            DMPESSOA.TEquip.ParamByName('ANO').AsString := DMPESSOA.TAux1.FieldByName('ANO').AsString;
            DMPESSOA.TEquip.ParamByName('COR').AsString := DMPESSOA.TAux1.FieldByName('COR').AsString;
            DMPESSOA.TEquip.ParamByName('CHASSI').AsString := DMPESSOA.TAux1.FieldByName('CHASSI').AsString;
            DMPESSOA.TEquip.ParamByName('PLACA').AsString := DMPESSOA.TAux1.FieldByName('PLACA').AsString;
            if DMPESSOA.TAux1.FieldByName('DTAQUISICAO').AsString <> '' then
              DMPESSOA.TEquip.ParamByName('DTAQUISICAO').AsDateTime := DMPESSOA.TAux1.FieldByName('DTAQUISICAO').AsDateTime;
            DMPESSOA.TEquip.ParamByName('CONCESSIONARIA').AsString := DMPESSOA.TAux1.FieldByName('CONCESSIONARIA').AsString;
            DMPESSOA.TEquip.ParamByName('MOTOR').AsString := DMPESSOA.TAux1.FieldByName('MOTOR').AsString;
            DMPESSOA.TEquip.ParamByName('ANOMOTOR').AsString := DMPESSOA.TAux1.FieldByName('ANOMOTOR').AsString;
            DMPESSOA.TEquip.ParamByName('CHASSIMOTOR').AsString := DMPESSOA.TAux1.FieldByName('CHASSIMOTOR').AsString;
            DMPESSOA.TEquip.ParamByName('KMATUAL').AsInteger := DMPESSOA.TAux1.FieldByName('KMATUAL').AsInteger;
            DMPESSOA.TEquip.ParamByName('UNIDRODAGEM').AsString := DMPESSOA.TAux1.FieldByName('UNIDRODAGEM').AsString;
            DMPESSOA.TEquip.ParamByName('NUM_FROTA').AsString := DMPESSOA.TAux1.FieldByName('NUM_FROTA').AsString;
            DMPESSOA.TEquip.ParamByName('ALTURAMAX').AsCurrency := DMPESSOA.TAux1.FieldByName('ALTURAMAX').AsCurrency;
            DMPESSOA.TEquip.ExecSQL;

            DMMACS.TCodigo.Edit;
            DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger := DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger + 1;
            DMMACS.TCodigo.Post;
            DMMACS.IBTCodigo.CommitRetaining;

            DMPESSOA.TAux1.Next;
          end;
        end;

        DMPESSOA.TAux3.Next;
      end;
    end;
    DMPESSOA.TransacPessoa.CommitRetaining;
  except
    DMPESSOA.TransacPessoa.RollbackRetaining;
  end;

  // - 02/02/2009: VERIFICA FUNCIONARIO-----

  try

    DMPESSOA.TAux3.Close;
    DMPESSOA.TAux3.SQL.Clear;
    DMPESSOA.TAux3.SQL.Add('select distinct (funcionario.cod_func )');
    DMPESSOA.TAux3.SQL.Add('from funcionario');
    DMPESSOA.TAux3.SQL.Add('where funcionario.cod_func in (select funcionario.cod_func');
    DMPESSOA.TAux3.SQL.Add('from funcionario');
    DMPESSOA.TAux3.SQL.Add('group by funcionario.cod_func having count(*) > 1)');
    DMPESSOA.TAux3.Open;

    if not DMPESSOA.TAux3.IsEmpty then
    begin
      DMPESSOA.TAux3.First;
      while not DMPESSOA.TAux3.Eof do
      begin
        FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_func', DMPESSOA.TAux3.fieldByName('cod_func').AsString, '');
        FiltraTabela(DMPESSOA.TAux1, 'funcionario', 'cod_func', DMPESSOA.TAux3.fieldByName('cod_func').AsString, '');

        DMPESSOA.TFuncionario.Next;

        if (DMPESSOA.TFuncionario.FieldByName('COD_PESSOA').AsString = DMPESSOA.TAux1.FieldByName('COD_PESSOA').AsString) then
        begin

          try

            // - 023/02/2009:  deletar codigos
            DMPESSOA.TFuncionario.Close;
            DMPESSOA.TFuncionario.SQL.Clear;
            DMPESSOA.TFuncionario.SQL.Add('delete from funcionario where funcionario.cod_func = ' + DMPESSOA.TAux1.fieldByName('cod_func').AsString);
            DMPESSOA.TFuncionario.ExecSQL;

            DMPESSOA.TransacPessoa.CommitRetaining;

          except

            DMPESSOA.TransacPessoa.RollbackRetaining;

          end;

          try

            DMPESSOA.TFuncionario.Close;
            DMPESSOA.TFuncionario.SQL.Clear;
            DMPESSOA.TFuncionario.SQL.Add('insert into funcionario');
            DMPESSOA.TFuncionario.SQL.Add('(COD_FUNC, COD_PESSOA, COD_INTERNO, DATA_CAD, DATA_ADMIS, DATA_DEMIS,');
            DMPESSOA.TFuncionario.SQL.Add('NUM_CTPS, SER_CTPS, NUM_PIS, TERCEIRO)');
            DMPESSOA.TFuncionario.SQL.Add('values');
            DMPESSOA.TFuncionario.SQL.Add('(:COD_FUNC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :DATA_ADMIS, :DATA_DEMIS,');
            DMPESSOA.TFuncionario.SQL.Add(':NUM_CTPS, :SER_CTPS, :NUM_PIS, :TERCEIRO)');
            DMPESSOA.TFuncionario.ParamByName('COD_FUNC').AsInteger := DMPESSOA.TAux1.FieldByname('COD_FUNC').AsInteger;

            DMPESSOA.TFuncionario.ParamByName('COD_INTERNO').AsString := DMPESSOA.TAux1.FieldByname('COD_INTERNO').AsString;
            DMPESSOA.TFuncionario.ParamByName('COD_PESSOA').AsInteger := DMPESSOA.TAux1.FieldByname('COD_PESSOA').AsInteger;
            if DMPESSOA.TAux1.FieldByname('DATA_ADMIS').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('DATA_ADMIS').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_ADMIS').AsDateTime;
            if DMPESSOA.TAux1.FieldByname('DATA_CAD').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_CAD').AsDateTime;
            if DMPESSOA.TAux1.FieldByname('DATA_DEMIS').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('DATA_DEMIS').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_DEMIS').AsDateTime;
            if DMPESSOA.TAux1.FieldByname('NUM_CTPS').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('NUM_CTPS').AsString := DMPESSOA.TAux1.FieldByname('NUM_CTPS').AsString;
            if DMPESSOA.TAux1.FieldByname('NUM_PIS').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('NUM_PIS').AsString := DMPESSOA.TAux1.FieldByname('NUM_PIS').AsString;
            if DMPESSOA.TAux1.FieldByname('SER_CTPS').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('SER_CTPS').AsString := DMPESSOA.TAux1.FieldByname('SER_CTPS').AsString;
            if DMPESSOA.TAux1.FieldByname('TERCEIRO').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('TERCEIRO').AsString := DMPESSOA.TAux1.FieldByname('TERCEIRO').AsString;
            DMPESSOA.TFuncionario.ExecSQL;

            DMPESSOA.TransacPessoa.CommitRetaining;
            DMMACS.Transaction.CommitRetaining;
          except
            DMPESSOA.TransacPessoa.RollbackRetaining;
          end;

        end
        else
        begin

          DMPESSOA.TFuncionario.Close;
          DMPESSOA.TFuncionario.SQL.Clear;
          DMPESSOA.TFuncionario.SQL.Add('delete from funcionario where funcionario.cod_func = ' + DMPESSOA.TAux1.fieldByName('cod_func').AsString);
          DMPESSOA.TFuncionario.ExecSQL;

          DMPESSOA.TFuncionario.Close;
          DMPESSOA.TFuncionario.SQL.Clear;
          DMPESSOA.TFuncionario.SQL.Add('insert into funcionario');
          DMPESSOA.TFuncionario.SQL.Add('(COD_FUNC, COD_PESSOA, COD_INTERNO, DATA_CAD, DATA_ADMIS, DATA_DEMIS,');
          DMPESSOA.TFuncionario.SQL.Add('NUM_CTPS, SER_CTPS, NUM_PIS, TERCEIRO)');
          DMPESSOA.TFuncionario.SQL.Add('values');
          DMPESSOA.TFuncionario.SQL.Add('(:COD_FUNC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :DATA_ADMIS, :DATA_DEMIS,');
          DMPESSOA.TFuncionario.SQL.Add(':NUM_CTPS, :SER_CTPS, :NUM_PIS, :TERCEIRO)');
          DMPESSOA.TFuncionario.ParamByName('COD_FUNC').AsInteger := DMPESSOA.TAux1.FieldByname('COD_FUNC').AsInteger;

          DMPESSOA.TFuncionario.ParamByName('COD_INTERNO').AsString := DMPESSOA.TAux1.FieldByname('COD_INTERNO').AsString;
          DMPESSOA.TFuncionario.ParamByName('COD_PESSOA').AsInteger := DMPESSOA.TAux1.FieldByname('COD_PESSOA').AsInteger;
          if DMPESSOA.TAux1.FieldByname('DATA_ADMIS').AsString <> '' then
            DMPESSOA.TFuncionario.ParamByName('DATA_ADMIS').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_ADMIS').AsDateTime;
          if DMPESSOA.TAux1.FieldByname('DATA_CAD').AsString <> '' then
            DMPESSOA.TFuncionario.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_CAD').AsDateTime;
          if DMPESSOA.TAux1.FieldByname('DATA_DEMIS').AsString <> '' then
            DMPESSOA.TFuncionario.ParamByName('DATA_DEMIS').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_DEMIS').AsDateTime;
          if DMPESSOA.TAux1.FieldByname('NUM_CTPS').AsString <> '' then
            DMPESSOA.TFuncionario.ParamByName('NUM_CTPS').AsString := DMPESSOA.TAux1.FieldByname('NUM_CTPS').AsString;
          if DMPESSOA.TAux1.FieldByname('NUM_PIS').AsString <> '' then
            DMPESSOA.TFuncionario.ParamByName('NUM_PIS').AsString := DMPESSOA.TAux1.FieldByname('NUM_PIS').AsString;
          if DMPESSOA.TAux1.FieldByname('SER_CTPS').AsString <> '' then
            DMPESSOA.TFuncionario.ParamByName('SER_CTPS').AsString := DMPESSOA.TAux1.FieldByname('SER_CTPS').AsString;
          if DMPESSOA.TAux1.FieldByname('TERCEIRO').AsString <> '' then
            DMPESSOA.TFuncionario.ParamByName('TERCEIRO').AsString := DMPESSOA.TAux1.FieldByname('TERCEIRO').AsString;
          DMPESSOA.TFuncionario.ExecSQL;

          // - 02/02/2009:  inserir outro

          DMPESSOA.TAux1.Next;
          while not DMPESSOA.TAux1.Eof do
          begin
            DMPESSOA.TFuncionario.Close;
            DMPESSOA.TFuncionario.SQL.Clear;
            DMPESSOA.TFuncionario.SQL.Add('insert into funcionario');
            DMPESSOA.TFuncionario.SQL.Add('(COD_FUNC, COD_PESSOA, COD_INTERNO, DATA_CAD, DATA_ADMIS, DATA_DEMIS,');
            DMPESSOA.TFuncionario.SQL.Add('NUM_CTPS, SER_CTPS, NUM_PIS, TERCEIRO)');
            DMPESSOA.TFuncionario.SQL.Add('values');
            DMPESSOA.TFuncionario.SQL.Add('(:COD_FUNC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :DATA_ADMIS, :DATA_DEMIS,');
            DMPESSOA.TFuncionario.SQL.Add(':NUM_CTPS, :SER_CTPS, :NUM_PIS, :TERCEIRO)');
            DMPESSOA.TFuncionario.ParamByName('COD_FUNC').AsInteger := DMMACS.TCodigo.FieldByName('cod_func').AsInteger;

            DMPESSOA.TFuncionario.ParamByName('COD_INTERNO').AsString := DMMACS.TCodigo.FieldByName('cod_func').AsString;
            DMPESSOA.TFuncionario.ParamByName('COD_PESSOA').AsInteger := DMPESSOA.TAux1.FieldByname('COD_PESSOA').AsInteger;
            if DMPESSOA.TAux1.FieldByname('DATA_ADMIS').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('DATA_ADMIS').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_ADMIS').AsDateTime;
            if DMPESSOA.TAux1.FieldByname('DATA_CAD').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_CAD').AsDateTime;
            if DMPESSOA.TAux1.FieldByname('DATA_DEMIS').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('DATA_DEMIS').AsDateTime := DMPESSOA.TAux1.FieldByname('DATA_DEMIS').AsDateTime;
            if DMPESSOA.TAux1.FieldByname('NUM_CTPS').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('NUM_CTPS').AsString := DMPESSOA.TAux1.FieldByname('NUM_CTPS').AsString;
            if DMPESSOA.TAux1.FieldByname('NUM_PIS').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('NUM_PIS').AsString := DMPESSOA.TAux1.FieldByname('NUM_PIS').AsString;
            if DMPESSOA.TAux1.FieldByname('SER_CTPS').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('SER_CTPS').AsString := DMPESSOA.TAux1.FieldByname('SER_CTPS').AsString;
            if DMPESSOA.TAux1.FieldByname('TERCEIRO').AsString <> '' then
              DMPESSOA.TFuncionario.ParamByName('TERCEIRO').AsString := DMPESSOA.TAux1.FieldByname('TERCEIRO').AsString;
            DMPESSOA.TFuncionario.ExecSQL;

            DMMACS.TCodigo.Edit;
            DMMACS.TCodigo.FieldByName('cod_func').AsInteger := DMMACS.TCodigo.FieldByName('cod_func').AsInteger + 1;
            DMMACS.TCodigo.Post;
            DMMACS.IBTCodigo.CommitRetaining;
            DMPESSOA.TAux1.Next;
          end;
        end;

        DMPESSOA.TAux3.Next;
      end;
    end;
    DMPESSOA.TransacPessoa.CommitRetaining;
    DMMACS.Transaction.CommitRetaining;
  except
    DMPESSOA.TransacPessoa.RollbackRetaining;
  end;

  // - 02/02/2009: VERIFICA USUARIO   -----

  try

    DMPESSOA.TAux3.Close;
    DMPESSOA.TAux3.SQL.Clear;
    DMPESSOA.TAux3.SQL.Add('select DISTINCT(usuario.codusuario)');
    DMPESSOA.TAux3.SQL.Add('from usuario');
    DMPESSOA.TAux3.SQL.Add('where usuario.codusuario in (select usuario.codusuario');
    DMPESSOA.TAux3.SQL.Add('from usuario');
    DMPESSOA.TAux3.SQL.Add('group by usuario.codusuario having count(*) > 1)');
    DMPESSOA.TAux3.Open;

    if not DMPESSOA.TAux3.IsEmpty then
    begin
      DMPESSOA.TAux3.First;
      while not DMPESSOA.TAux3.Eof do
      begin
        FiltraTabela(DMMACS.TUsuario, 'usuario', 'codusuario', DMPESSOA.TAux3.fieldByName('codusuario').AsString, '');
        FiltraTabela(DMPESSOA.TAux1, 'usuario', 'codusuario', DMPESSOA.TAux3.fieldByName('codusuario').AsString, '');

        DMMACS.TUsuario.Next;

        if (DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsString = DMPESSOA.TAux1.FieldByName('COD_FUNCIONARIO').AsString) then
        begin

          try

            // - 023/02/2009:  deletar codigos
            DMMACS.TUsuario.Close;
            DMMACS.TUsuario.SQL.Clear;
            DMMACS.TUsuario.SQL.Add('delete from usuario where usuario.codusuario = ' + DMPESSOA.TAux1.fieldByName('codusuario').AsString);
            DMMACS.TUsuario.ExecSQL;

            DMPESSOA.TransacPessoa.CommitRetaining;

          except

            DMPESSOA.TransacPessoa.RollbackRetaining;

          end;

          try
            DMMACS.TUsuario.Close;
            DMMACS.TUsuario.SQL.Clear;
            DMMACS.TUsuario.SQL.Add('insert into USUARIO');
            DMMACS.TUsuario.SQL.Add('(CODUSUARIO, COD_FUNCIONARIO, LOGIN, SENHA, DATA_CAD, ADM, REVRESMOV)');
            DMMACS.TUsuario.SQL.Add('values');
            DMMACS.TUsuario.SQL.Add('(:CODUSUARIO, :COD_FUNCIONARIO, :LOGIN, :SENHA, :DATA_CAD, :ADM, :REVRESMOV)');

            DMMACS.TUsuario.ParamByName('CODUSUARIO').AsInteger := DMPESSOA.TAux1.fieldByName('codusuario').AsInteger;

            DMMACS.TUsuario.ParamByName('COD_FUNCIONARIO').AsInteger := DMPESSOA.TAux1.FieldByName('COD_FUNCIONARIO').AsInteger;
            DMMACS.TUsuario.ParamByName('LOGIN').AsString := DMPESSOA.TAux1.FieldByName('LOGIN').AsString;
            DMMACS.TUsuario.ParamByName('SENHA').AsString := DMPESSOA.TAux1.FieldByName('SENHA').AsString;
            if DMPESSOA.TAux1.FieldByName('DATA_CAD').AsString <> '' then
              DMMACS.TUsuario.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TAux1.FieldByName('DATA_CAD').AsDateTime;
            DMMACS.TUsuario.ParamByName('ADM').AsString := DMPESSOA.TAux1.FieldByName('ADM').AsString;
            DMMACS.TUsuario.ParamByName('REVRESMOV').AsString := DMPESSOA.TAux1.FieldByName('REVRESMOV').AsString;
            DMMACS.TUsuario.ExecSQL;

            DMPESSOA.TransacPessoa.CommitRetaining;
            DMMACS.Transaction.CommitRetaining;
          except
            DMPESSOA.TransacPessoa.RollbackRetaining;
          end;

        end
        else
        begin

          DMMACS.TUsuario.Close;
          DMMACS.TUsuario.SQL.Clear;
          DMMACS.TUsuario.SQL.Add('delete from usuario where usuario.codusuario = ' + DMPESSOA.TAux1.fieldByName('codusuario').AsString);
          DMMACS.TUsuario.ExecSQL;

          DMMACS.TUsuario.Close;
          DMMACS.TUsuario.SQL.Clear;
          DMMACS.TUsuario.SQL.Add('insert into USUARIO');
          DMMACS.TUsuario.SQL.Add('(CODUSUARIO, COD_FUNCIONARIO, LOGIN, SENHA, DATA_CAD, ADM, REVRESMOV)');
          DMMACS.TUsuario.SQL.Add('values');
          DMMACS.TUsuario.SQL.Add('(:CODUSUARIO, :COD_FUNCIONARIO, :LOGIN, :SENHA, :DATA_CAD, :ADM, :REVRESMOV)');

          DMMACS.TUsuario.ParamByName('CODUSUARIO').AsInteger := DMPESSOA.TAux1.fieldByName('codusuario').AsInteger;

          DMMACS.TUsuario.ParamByName('COD_FUNCIONARIO').AsInteger := DMPESSOA.TAux1.FieldByName('COD_FUNCIONARIO').AsInteger;
          DMMACS.TUsuario.ParamByName('LOGIN').AsString := DMPESSOA.TAux1.FieldByName('LOGIN').AsString;
          DMMACS.TUsuario.ParamByName('SENHA').AsString := DMPESSOA.TAux1.FieldByName('SENHA').AsString;
          if DMPESSOA.TAux1.FieldByName('DATA_CAD').AsString <> '' then
            DMMACS.TUsuario.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TAux1.FieldByName('DATA_CAD').AsDateTime;
          DMMACS.TUsuario.ParamByName('ADM').AsString := DMPESSOA.TAux1.FieldByName('ADM').AsString;
          DMMACS.TUsuario.ParamByName('REVRESMOV').AsString := DMPESSOA.TAux1.FieldByName('REVRESMOV').AsString;
          DMMACS.TUsuario.ExecSQL;

          // - 02/02/2009:  inserir outro

          DMPESSOA.TAux1.Next;
          while not DMPESSOA.TAux1.Eof do
          begin
            DMMACS.TUsuario.Close;
            DMMACS.TUsuario.SQL.Clear;
            DMMACS.TUsuario.SQL.Add('insert into USUARIO');
            DMMACS.TUsuario.SQL.Add('(CODUSUARIO, COD_FUNCIONARIO, LOGIN, SENHA, DATA_CAD, ADM, REVRESMOV)');
            DMMACS.TUsuario.SQL.Add('values');
            DMMACS.TUsuario.SQL.Add('(:CODUSUARIO, :COD_FUNCIONARIO, :LOGIN, :SENHA, :DATA_CAD, :ADM, :REVRESMOV)');

            DMMACS.TUsuario.ParamByName('CODUSUARIO').AsInteger := DMMACS.TCodigo.FieldByName('CODUSUARIO').AsInteger;

            DMMACS.TUsuario.ParamByName('COD_FUNCIONARIO').AsInteger := DMPESSOA.TAux1.FieldByName('COD_FUNCIONARIO').AsInteger;
            DMMACS.TUsuario.ParamByName('LOGIN').AsString := DMPESSOA.TAux1.FieldByName('LOGIN').AsString;
            DMMACS.TUsuario.ParamByName('SENHA').AsString := DMPESSOA.TAux1.FieldByName('SENHA').AsString;
            if DMPESSOA.TAux1.FieldByName('DATA_CAD').AsString <> '' then
              DMMACS.TUsuario.ParamByName('DATA_CAD').AsDateTime := DMPESSOA.TAux1.FieldByName('DATA_CAD').AsDateTime;
            DMMACS.TUsuario.ParamByName('ADM').AsString := DMPESSOA.TAux1.FieldByName('ADM').AsString;
            DMMACS.TUsuario.ParamByName('REVRESMOV').AsString := DMPESSOA.TAux1.FieldByName('REVRESMOV').AsString;
            DMMACS.TUsuario.ExecSQL;

            DMMACS.TCodigo.Edit;
            DMMACS.TCodigo.FieldByName('CODUSUARIO').AsInteger := DMMACS.TCodigo.FieldByName('CODUSUARIO').AsInteger + 1;
            DMMACS.TCodigo.Post;
            DMMACS.IBTCodigo.CommitRetaining;
            DMPESSOA.TAux1.Next;
          end;
        end;

        DMPESSOA.TAux3.Next;
      end;
    end;
    DMMACS.Transaction.CommitRetaining;
    DMPESSOA.TransacPessoa.CommitRetaining;
  except
    DMPESSOA.TransacPessoa.RollbackRetaining;
  end;

  // - 02/02/2009: VERIFICA estoque   -----

  try

    DMPESSOA.TAux3.Close;
    DMPESSOA.TAux3.SQL.Clear;
    DMPESSOA.TAux3.SQL.Add('select distinct(estoque.cod_estoque)');
    DMPESSOA.TAux3.SQL.Add('from estoque');
    DMPESSOA.TAux3.SQL.Add('where estoque.cod_estoque in (select estoque.cod_estoque');
    DMPESSOA.TAux3.SQL.Add('from estoque');
    DMPESSOA.TAux3.SQL.Add('group by estoque.cod_estoque having count(*) > 1);');
    DMPESSOA.TAux3.Open;

    if not DMPESSOA.TAux3.IsEmpty then
    begin
      DMPESSOA.TAux3.First;
      while not DMPESSOA.TAux3.Eof do
      begin
        FiltraTabela(DMESTOQUE.TEstoque, 'estoque', 'cod_estoque', DMPESSOA.TAux3.fieldByName('cod_estoque').AsString, '');
        FiltraTabela(DMPESSOA.TAux1, 'estoque', 'cod_estoque', DMPESSOA.TAux3.fieldByName('cod_estoque').AsString, '');

        DMESTOQUE.TEstoque.Next;

        if (DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString = DMPESSOA.TAux1.FieldByName('COD_SUBPROD').AsString) then
        begin

          try

            // - 023/02/2009:  deletar codigos
            DMESTOQUE.TEstoque.Close;
            DMESTOQUE.TEstoque.SQL.Clear;
            DMESTOQUE.TEstoque.SQL.Add('delete from estoque where estoque.cod_estoque = ' + DMPESSOA.TAux1.fieldByName('cod_estoque').AsString);
            DMESTOQUE.TEstoque.ExecSQL;

            DMESTOQUE.TransacEstoque.CommitRetaining;
          except

            DMESTOQUE.TransacEstoque.RollbackRetaining;

          end;

          try
            DMESTOQUE.TEstoque.Close;
            DMESTOQUE.TEstoque.SQL.Clear;
            DMESTOQUE.TEstoque.SQL.Add('insert into ESTOQUE');
            DMESTOQUE.TEstoque.SQL.Add('(COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, ESTMAX, ESTMIN,');
            DMESTOQUE.TEstoque.SQL.Add('ICMS, FRETE, ESTFISICO, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT, CVPPROAT,');
            DMESTOQUE.TEstoque.SQL.Add('CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV, VALUNIT,');
            DMESTOQUE.TEstoque.SQL.Add('VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, LUCRATIVIDADE,');
            DMESTOQUE.TEstoque.SQL.Add('COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP, ESTANTCONT,');
            DMESTOQUE.TEstoque.SQL.Add('CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, VLRBONIFIC,');
            DMESTOQUE.TEstoque.SQL.Add('DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, MARGEMSEG,');
            DMESTOQUE.TEstoque.SQL.Add('PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, DATAATU, HORAATU,');
            DMESTOQUE.TEstoque.SQL.Add('PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA)');
            DMESTOQUE.TEstoque.SQL.Add('values');
            DMESTOQUE.TEstoque.SQL.Add('(:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ULTVENDA, :ESTMAX,');
            DMESTOQUE.TEstoque.SQL.Add(':ESTMIN, :ICMS, :FRETE, :ESTFISICO, :ESTRESERV, :ESTPED, :ESTSALDO,');
            DMESTOQUE.TEstoque.SQL.Add(':CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, :VENDATAV,');
            DMESTOQUE.TEstoque.SQL.Add(':VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT, :AVPPROAT,');
            DMESTOQUE.TEstoque.SQL.Add(':AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, :OUTROS,');
            DMESTOQUE.TEstoque.SQL.Add(':QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM, :ESTSIMULADO,');
            DMESTOQUE.TEstoque.SQL.Add(':VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, :CLNC,');
            DMESTOQUE.TEstoque.SQL.Add(':MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG, :PERCMARGSEG,');
            DMESTOQUE.TEstoque.SQL.Add(':REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAATU, :PRECOOFERTA,');
            DMESTOQUE.TEstoque.SQL.Add(':DATAOFERTA, :VENCIMENTOOFERTA)');
            DMESTOQUE.TEstoque.ParamByName('cod_estoque').AsInteger := DMPESSOA.TAux1.FieldByName('cod_estoque').AsInteger;

            DMESTOQUE.TEstoque.ParamByName('COD_LOJA').AsInteger := DMPESSOA.TAux1.FieldByName('COD_LOJA').AsInteger;
            DMESTOQUE.TEstoque.ParamByName('COD_SUBPROD').AsInteger := DMPESSOA.TAux1.FieldByName('COD_SUBPROD').AsInteger;

            DMESTOQUE.TEstoque.ParamByName('ULTCOMPRA').AsDateTime := DMPESSOA.TAux1.FieldByName('ULTCOMPRA').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('ULTVENDA').AsDateTime := DMPESSOA.TAux1.FieldByName('ULTVENDA').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('ESTMAX').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTMAX').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTMIN').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTMIN').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ICMS').AsCurrency := DMPESSOA.TAux1.FieldByName('ICMS').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('FRETE').AsCurrency := DMPESSOA.TAux1.FieldByName('FRETE').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTFISICO').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTFISICO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTRESERV').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTRESERV').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTPED').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTPED').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTSALDO').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTSALDO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CVVPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('CVVPROAT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CVPPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('CVPPROAT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CVVPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('CVVPROVAR').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CVPPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('CVPPROVAR').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VENDATAP').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDATAP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VENDATAV').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDATAV').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VENDVARP').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDVARP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VENDVARV').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDVARV').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VALUNIT').AsCurrency := DMPESSOA.TAux1.FieldByName('VALUNIT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VALREP').AsCurrency := DMPESSOA.TAux1.FieldByName('VALREP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VALCUSTO').AsCurrency := DMPESSOA.TAux1.FieldByName('VALCUSTO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('AVVPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('AVVPROAT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('AVPPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('AVPPROAT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('AVVPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('AVVPROVAR').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('AVPPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('AVPPROVAR').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('LUCRATIVIDADE').AsCurrency := DMPESSOA.TAux1.FieldByName('LUCRATIVIDADE').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('COEFDIV').AsCurrency := DMPESSOA.TAux1.FieldByName('COEFDIV').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VALOREST').AsCurrency := DMPESSOA.TAux1.FieldByName('VALOREST').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('OUTROS').AsCurrency := DMPESSOA.TAux1.FieldByName('OUTROS').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('QUANT2').AsCurrency := DMPESSOA.TAux1.FieldByName('QUANT2').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('DTCAD').AsDateTime := DMPESSOA.TAux1.FieldByName('DTCAD').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('ESTINI').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTINI').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VALCUSDESP').AsCurrency := DMPESSOA.TAux1.FieldByName('VALCUSDESP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTANTCONT').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTANTCONT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CONTAGEM').AsCurrency := DMPESSOA.TAux1.FieldByName('CONTAGEM').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTSIMULADO').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTSIMULADO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VLRUNITCOMP').AsCurrency := DMPESSOA.TAux1.FieldByName('VLRUNITCOMP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('INDICE').AsCurrency := DMPESSOA.TAux1.FieldByName('INDICE').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('BONIFICACAO').AsCurrency := DMPESSOA.TAux1.FieldByName('BONIFICACAO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VLRBONIFIC').AsCurrency := DMPESSOA.TAux1.FieldByName('VLRBONIFIC').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('DESCONTO').AsCurrency := DMPESSOA.TAux1.FieldByName('DESCONTO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CLNC').AsCurrency := DMPESSOA.TAux1.FieldByName('CLNC').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('MOD').AsCurrency := DMPESSOA.TAux1.FieldByName('MOD').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('IMPEXP').AsCurrency := DMPESSOA.TAux1.FieldByName('IMPEXP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('IMPREND').AsCurrency := DMPESSOA.TAux1.FieldByName('IMPREND').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CONTSOC').AsCurrency := DMPESSOA.TAux1.FieldByName('CONTSOC').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('COFINS').AsCurrency := DMPESSOA.TAux1.FieldByName('COFINS').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('PIS').AsCurrency := DMPESSOA.TAux1.FieldByName('PIS').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('MARGEMSEG').AsCurrency := DMPESSOA.TAux1.FieldByName('MARGEMSEG').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('PERCMARGSEG').AsCurrency := DMPESSOA.TAux1.FieldByName('PERCMARGSEg').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('REDUCBASE').AsCurrency := DMPESSOA.TAux1.FieldByName('REDUCBASE').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VLRCOMPSD').AsCurrency := DMPESSOA.TAux1.FieldByName('VLRCOMPSD').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ACRECIMO').AsCurrency := DMPESSOA.TAux1.FieldByName('ACRECIMO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTCALC').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTCALC').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('DATAATU').AsDateTime := DMPESSOA.TAux1.FieldByName('DATAATU').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('HORAATU').AsDateTime := DMPESSOA.TAux1.FieldByName('HORAATU').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('PRECOOFERTA').AsCurrency := DMPESSOA.TAux1.FieldByName('PRECOOFERTA').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('DATAOFERTA').AsDateTime := DMPESSOA.TAux1.FieldByName('DATAOFERTA').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('VENCIMENTOOFERTA').AsDateTime := DMPESSOA.TAux1.FieldByName('VENCIMENTOOFERTA').AsDateTime;
            DMESTOQUE.TEstoque.ExecSQL;

            DMESTOQUE.TransacEstoque.CommitRetaining;
            DMMACS.Transaction.CommitRetaining;
          except
            DMESTOQUE.TransacEstoque.RollbackRetaining;
          end;

        end
        else
        begin
          DMESTOQUE.TEstoque.Close;
          DMESTOQUE.TEstoque.SQL.Clear;
          DMESTOQUE.TEstoque.SQL.Add('delete from estoque where estoque.cod_estoque = ' + DMPESSOA.TAux1.fieldByName('cod_estoque').AsString);
          DMESTOQUE.TEstoque.ExecSQL;

          DMESTOQUE.TEstoque.Close;
          DMESTOQUE.TEstoque.SQL.Clear;
          DMESTOQUE.TEstoque.SQL.Add('insert into ESTOQUE');
          DMESTOQUE.TEstoque.SQL.Add('(COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, ESTMAX, ESTMIN,');
          DMESTOQUE.TEstoque.SQL.Add('ICMS, FRETE, ESTFISICO, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT, CVPPROAT,');
          DMESTOQUE.TEstoque.SQL.Add('CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV, VALUNIT,');
          DMESTOQUE.TEstoque.SQL.Add('VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, LUCRATIVIDADE,');
          DMESTOQUE.TEstoque.SQL.Add('COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP, ESTANTCONT,');
          DMESTOQUE.TEstoque.SQL.Add('CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, VLRBONIFIC,');
          DMESTOQUE.TEstoque.SQL.Add('DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, MARGEMSEG,');
          DMESTOQUE.TEstoque.SQL.Add('PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, DATAATU, HORAATU,');
          DMESTOQUE.TEstoque.SQL.Add('PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA)');
          DMESTOQUE.TEstoque.SQL.Add('values');
          DMESTOQUE.TEstoque.SQL.Add('(:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ULTVENDA, :ESTMAX,');
          DMESTOQUE.TEstoque.SQL.Add(':ESTMIN, :ICMS, :FRETE, :ESTFISICO, :ESTRESERV, :ESTPED, :ESTSALDO,');
          DMESTOQUE.TEstoque.SQL.Add(':CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, :VENDATAV,');
          DMESTOQUE.TEstoque.SQL.Add(':VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT, :AVPPROAT,');
          DMESTOQUE.TEstoque.SQL.Add(':AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, :OUTROS,');
          DMESTOQUE.TEstoque.SQL.Add(':QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM, :ESTSIMULADO,');
          DMESTOQUE.TEstoque.SQL.Add(':VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, :CLNC,');
          DMESTOQUE.TEstoque.SQL.Add(':MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG, :PERCMARGSEG,');
          DMESTOQUE.TEstoque.SQL.Add(':REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAATU, :PRECOOFERTA,');
          DMESTOQUE.TEstoque.SQL.Add(':DATAOFERTA, :VENCIMENTOOFERTA)');
          DMESTOQUE.TEstoque.ParamByName('cod_estoque').AsInteger := DMPESSOA.TAux1.FieldByName('cod_estoque').AsInteger;

          DMESTOQUE.TEstoque.ParamByName('COD_LOJA').AsInteger := DMPESSOA.TAux1.FieldByName('COD_LOJA').AsInteger;
          DMESTOQUE.TEstoque.ParamByName('COD_SUBPROD').AsInteger := DMPESSOA.TAux1.FieldByName('COD_SUBPROD').AsInteger;

          DMESTOQUE.TEstoque.ParamByName('ULTCOMPRA').AsDateTime := DMPESSOA.TAux1.FieldByName('ULTCOMPRA').AsDateTime;
          DMESTOQUE.TEstoque.ParamByName('ULTVENDA').AsDateTime := DMPESSOA.TAux1.FieldByName('ULTVENDA').AsDateTime;
          DMESTOQUE.TEstoque.ParamByName('ESTMAX').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTMAX').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('ESTMIN').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTMIN').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('ICMS').AsCurrency := DMPESSOA.TAux1.FieldByName('ICMS').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('FRETE').AsCurrency := DMPESSOA.TAux1.FieldByName('FRETE').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('ESTFISICO').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTFISICO').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('ESTRESERV').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTRESERV').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('ESTPED').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTPED').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('ESTSALDO').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTSALDO').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('CVVPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('CVVPROAT').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('CVPPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('CVPPROAT').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('CVVPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('CVVPROVAR').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('CVPPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('CVPPROVAR').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VENDATAP').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDATAP').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VENDATAV').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDATAV').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VENDVARP').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDVARP').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VENDVARV').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDVARV').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VALUNIT').AsCurrency := DMPESSOA.TAux1.FieldByName('VALUNIT').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VALREP').AsCurrency := DMPESSOA.TAux1.FieldByName('VALREP').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VALCUSTO').AsCurrency := DMPESSOA.TAux1.FieldByName('VALCUSTO').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('AVVPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('AVVPROAT').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('AVPPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('AVPPROAT').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('AVVPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('AVVPROVAR').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('AVPPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('AVPPROVAR').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('LUCRATIVIDADE').AsCurrency := DMPESSOA.TAux1.FieldByName('LUCRATIVIDADE').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('COEFDIV').AsCurrency := DMPESSOA.TAux1.FieldByName('COEFDIV').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VALOREST').AsCurrency := DMPESSOA.TAux1.FieldByName('VALOREST').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('OUTROS').AsCurrency := DMPESSOA.TAux1.FieldByName('OUTROS').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('QUANT2').AsCurrency := DMPESSOA.TAux1.FieldByName('QUANT2').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('DTCAD').AsDateTime := DMPESSOA.TAux1.FieldByName('DTCAD').AsDateTime;
          DMESTOQUE.TEstoque.ParamByName('ESTINI').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTINI').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VALCUSDESP').AsCurrency := DMPESSOA.TAux1.FieldByName('VALCUSDESP').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('ESTANTCONT').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTANTCONT').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('CONTAGEM').AsCurrency := DMPESSOA.TAux1.FieldByName('CONTAGEM').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('ESTSIMULADO').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTSIMULADO').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VLRUNITCOMP').AsCurrency := DMPESSOA.TAux1.FieldByName('VLRUNITCOMP').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('INDICE').AsCurrency := DMPESSOA.TAux1.FieldByName('INDICE').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('BONIFICACAO').AsCurrency := DMPESSOA.TAux1.FieldByName('BONIFICACAO').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VLRBONIFIC').AsCurrency := DMPESSOA.TAux1.FieldByName('VLRBONIFIC').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('DESCONTO').AsCurrency := DMPESSOA.TAux1.FieldByName('DESCONTO').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('CLNC').AsCurrency := DMPESSOA.TAux1.FieldByName('CLNC').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('MOD').AsCurrency := DMPESSOA.TAux1.FieldByName('MOD').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('IMPEXP').AsCurrency := DMPESSOA.TAux1.FieldByName('IMPEXP').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('IMPREND').AsCurrency := DMPESSOA.TAux1.FieldByName('IMPREND').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('CONTSOC').AsCurrency := DMPESSOA.TAux1.FieldByName('CONTSOC').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('COFINS').AsCurrency := DMPESSOA.TAux1.FieldByName('COFINS').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('PIS').AsCurrency := DMPESSOA.TAux1.FieldByName('PIS').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('MARGEMSEG').AsCurrency := DMPESSOA.TAux1.FieldByName('MARGEMSEG').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('PERCMARGSEG').AsCurrency := DMPESSOA.TAux1.FieldByName('PERCMARGSEg').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('REDUCBASE').AsCurrency := DMPESSOA.TAux1.FieldByName('REDUCBASE').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('VLRCOMPSD').AsCurrency := DMPESSOA.TAux1.FieldByName('VLRCOMPSD').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('ACRECIMO').AsCurrency := DMPESSOA.TAux1.FieldByName('ACRECIMO').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('ESTCALC').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTCALC').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('DATAATU').AsDateTime := DMPESSOA.TAux1.FieldByName('DATAATU').AsDateTime;
          DMESTOQUE.TEstoque.ParamByName('HORAATU').AsDateTime := DMPESSOA.TAux1.FieldByName('HORAATU').AsDateTime;
          DMESTOQUE.TEstoque.ParamByName('PRECOOFERTA').AsCurrency := DMPESSOA.TAux1.FieldByName('PRECOOFERTA').AsCurrency;
          DMESTOQUE.TEstoque.ParamByName('DATAOFERTA').AsDateTime := DMPESSOA.TAux1.FieldByName('DATAOFERTA').AsDateTime;
          DMESTOQUE.TEstoque.ParamByName('VENCIMENTOOFERTA').AsDateTime := DMPESSOA.TAux1.FieldByName('VENCIMENTOOFERTA').AsDateTime;
          DMESTOQUE.TEstoque.ExecSQL;
          // - 02/02/2009:  inserir outro

          DMPESSOA.TAux1.Next;
          while not DMPESSOA.TAux1.Eof do
          begin
            DMESTOQUE.TEstoque.Close;
            DMESTOQUE.TEstoque.SQL.Clear;
            DMESTOQUE.TEstoque.SQL.Add('insert into ESTOQUE');
            DMESTOQUE.TEstoque.SQL.Add('(COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, ESTMAX, ESTMIN,');
            DMESTOQUE.TEstoque.SQL.Add('ICMS, FRETE, ESTFISICO, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT, CVPPROAT,');
            DMESTOQUE.TEstoque.SQL.Add('CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV, VALUNIT,');
            DMESTOQUE.TEstoque.SQL.Add('VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, LUCRATIVIDADE,');
            DMESTOQUE.TEstoque.SQL.Add('COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP, ESTANTCONT,');
            DMESTOQUE.TEstoque.SQL.Add('CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, VLRBONIFIC,');
            DMESTOQUE.TEstoque.SQL.Add('DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, MARGEMSEG,');
            DMESTOQUE.TEstoque.SQL.Add('PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, DATAATU, HORAATU,');
            DMESTOQUE.TEstoque.SQL.Add('PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA)');
            DMESTOQUE.TEstoque.SQL.Add('values');
            DMESTOQUE.TEstoque.SQL.Add('(:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ULTVENDA, :ESTMAX,');
            DMESTOQUE.TEstoque.SQL.Add(':ESTMIN, :ICMS, :FRETE, :ESTFISICO, :ESTRESERV, :ESTPED, :ESTSALDO,');
            DMESTOQUE.TEstoque.SQL.Add(':CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, :VENDATAV,');
            DMESTOQUE.TEstoque.SQL.Add(':VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT, :AVPPROAT,');
            DMESTOQUE.TEstoque.SQL.Add(':AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, :OUTROS,');
            DMESTOQUE.TEstoque.SQL.Add(':QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM, :ESTSIMULADO,');
            DMESTOQUE.TEstoque.SQL.Add(':VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, :CLNC,');
            DMESTOQUE.TEstoque.SQL.Add(':MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG, :PERCMARGSEG,');
            DMESTOQUE.TEstoque.SQL.Add(':REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAATU, :PRECOOFERTA,');
            DMESTOQUE.TEstoque.SQL.Add(':DATAOFERTA, :VENCIMENTOOFERTA)');
            DMESTOQUE.TEstoque.ParamByName('cod_estoque').AsInteger := DMMACS.TCodigo.FieldByName('cod_estoque').AsInteger;

            DMESTOQUE.TEstoque.ParamByName('COD_LOJA').AsInteger := DMPESSOA.TAux1.FieldByName('COD_LOJA').AsInteger;
            DMESTOQUE.TEstoque.ParamByName('COD_SUBPROD').AsInteger := DMPESSOA.TAux1.FieldByName('COD_SUBPROD').AsInteger;

            DMESTOQUE.TEstoque.ParamByName('ULTCOMPRA').AsDateTime := DMPESSOA.TAux1.FieldByName('ULTCOMPRA').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('ULTVENDA').AsDateTime := DMPESSOA.TAux1.FieldByName('ULTVENDA').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('ESTMAX').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTMAX').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTMIN').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTMIN').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ICMS').AsCurrency := DMPESSOA.TAux1.FieldByName('ICMS').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('FRETE').AsCurrency := DMPESSOA.TAux1.FieldByName('FRETE').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTFISICO').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTFISICO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTRESERV').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTRESERV').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTPED').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTPED').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTSALDO').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTSALDO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CVVPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('CVVPROAT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CVPPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('CVPPROAT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CVVPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('CVVPROVAR').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CVPPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('CVPPROVAR').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VENDATAP').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDATAP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VENDATAV').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDATAV').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VENDVARP').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDVARP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VENDVARV').AsCurrency := DMPESSOA.TAux1.FieldByName('VENDVARV').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VALUNIT').AsCurrency := DMPESSOA.TAux1.FieldByName('VALUNIT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VALREP').AsCurrency := DMPESSOA.TAux1.FieldByName('VALREP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VALCUSTO').AsCurrency := DMPESSOA.TAux1.FieldByName('VALCUSTO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('AVVPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('AVVPROAT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('AVPPROAT').AsCurrency := DMPESSOA.TAux1.FieldByName('AVPPROAT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('AVVPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('AVVPROVAR').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('AVPPROVAR').AsCurrency := DMPESSOA.TAux1.FieldByName('AVPPROVAR').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('LUCRATIVIDADE').AsCurrency := DMPESSOA.TAux1.FieldByName('LUCRATIVIDADE').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('COEFDIV').AsCurrency := DMPESSOA.TAux1.FieldByName('COEFDIV').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VALOREST').AsCurrency := DMPESSOA.TAux1.FieldByName('VALOREST').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('OUTROS').AsCurrency := DMPESSOA.TAux1.FieldByName('OUTROS').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('QUANT2').AsCurrency := DMPESSOA.TAux1.FieldByName('QUANT2').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('DTCAD').AsDateTime := DMPESSOA.TAux1.FieldByName('DTCAD').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('ESTINI').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTINI').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VALCUSDESP').AsCurrency := DMPESSOA.TAux1.FieldByName('VALCUSDESP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTANTCONT').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTANTCONT').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CONTAGEM').AsCurrency := DMPESSOA.TAux1.FieldByName('CONTAGEM').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTSIMULADO').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTSIMULADO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VLRUNITCOMP').AsCurrency := DMPESSOA.TAux1.FieldByName('VLRUNITCOMP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('INDICE').AsCurrency := DMPESSOA.TAux1.FieldByName('INDICE').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('BONIFICACAO').AsCurrency := DMPESSOA.TAux1.FieldByName('BONIFICACAO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VLRBONIFIC').AsCurrency := DMPESSOA.TAux1.FieldByName('VLRBONIFIC').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('DESCONTO').AsCurrency := DMPESSOA.TAux1.FieldByName('DESCONTO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CLNC').AsCurrency := DMPESSOA.TAux1.FieldByName('CLNC').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('MOD').AsCurrency := DMPESSOA.TAux1.FieldByName('MOD').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('IMPEXP').AsCurrency := DMPESSOA.TAux1.FieldByName('IMPEXP').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('IMPREND').AsCurrency := DMPESSOA.TAux1.FieldByName('IMPREND').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('CONTSOC').AsCurrency := DMPESSOA.TAux1.FieldByName('CONTSOC').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('COFINS').AsCurrency := DMPESSOA.TAux1.FieldByName('COFINS').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('PIS').AsCurrency := DMPESSOA.TAux1.FieldByName('PIS').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('MARGEMSEG').AsCurrency := DMPESSOA.TAux1.FieldByName('MARGEMSEG').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('PERCMARGSEG').AsCurrency := DMPESSOA.TAux1.FieldByName('PERCMARGSEg').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('REDUCBASE').AsCurrency := DMPESSOA.TAux1.FieldByName('REDUCBASE').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('VLRCOMPSD').AsCurrency := DMPESSOA.TAux1.FieldByName('VLRCOMPSD').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ACRECIMO').AsCurrency := DMPESSOA.TAux1.FieldByName('ACRECIMO').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('ESTCALC').AsCurrency := DMPESSOA.TAux1.FieldByName('ESTCALC').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('DATAATU').AsDateTime := DMPESSOA.TAux1.FieldByName('DATAATU').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('HORAATU').AsDateTime := DMPESSOA.TAux1.FieldByName('HORAATU').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('PRECOOFERTA').AsCurrency := DMPESSOA.TAux1.FieldByName('PRECOOFERTA').AsCurrency;
            DMESTOQUE.TEstoque.ParamByName('DATAOFERTA').AsDateTime := DMPESSOA.TAux1.FieldByName('DATAOFERTA').AsDateTime;
            DMESTOQUE.TEstoque.ParamByName('VENCIMENTOOFERTA').AsDateTime := DMPESSOA.TAux1.FieldByName('VENCIMENTOOFERTA').AsDateTime;
            DMESTOQUE.TEstoque.ExecSQL;

            DMMACS.TCodigo.Edit;
            DMMACS.TCodigo.FieldByName('cod_estoque').AsInteger := DMMACS.TCodigo.FieldByName('cod_estoque').AsInteger + 1;
            DMMACS.TCodigo.Post;
            DMMACS.IBTCodigo.CommitRetaining;

            DMPESSOA.TAux1.Next;
          end;
        end;

        DMPESSOA.TAux3.Next;
      end;
    end;
    DMESTOQUE.TransacEstoque.CommitRetaining;
    DMPESSOA.TransacPessoa.CommitRetaining;
  except
    DMESTOQUE.TransacEstoque.RollbackRetaining;
  end;

  // - 02/02/2009: VERIFICA estoque   -----

  try

    DMPESSOA.TAux3.Close;
    DMPESSOA.TAux3.SQL.Clear;
    DMPESSOA.TAux3.SQL.Add('select distinct(subproduto.cod_subproduto)');
    DMPESSOA.TAux3.SQL.Add('from subproduto');
    DMPESSOA.TAux3.SQL.Add('where subproduto.cod_subproduto in (select subproduto.cod_subproduto');
    DMPESSOA.TAux3.SQL.Add('from subproduto');
    DMPESSOA.TAux3.SQL.Add('group by subproduto.cod_subproduto having count(*) > 1);');
    DMPESSOA.TAux3.Open;

    if not DMPESSOA.TAux3.IsEmpty then
    begin
      DMPESSOA.TAux3.First;
      while not DMPESSOA.TAux3.Eof do
      begin
        FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMPESSOA.TAux3.fieldByName('COD_SUBPRODUTO').AsString, '');
        FiltraTabela(DMPESSOA.TAux1, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMPESSOA.TAux3.fieldByName('COD_SUBPRODUTO').AsString, '');

        DMESTOQUE.TSubProd.Next;

        if (DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString = DMPESSOA.TAux1.FieldByName('COD_INTERNO').AsString) then
        begin

          try

            // - 023/02/2009:  deletar codigos
            DMESTOQUE.TSubProd.Close;
            DMESTOQUE.TSubProd.SQL.Clear;
            DMESTOQUE.TSubProd.SQL.Add('delete from SUBPRODUTO where SUBPRODUTO.COD_SUBPRODUTO = ' + DMPESSOA.TAux1.fieldByName('COD_SUBPRODUTO').AsString);
            DMESTOQUE.TSubProd.ExecSQL;

            DMESTOQUE.TransacEstoque.CommitRetaining;
          except

            DMESTOQUE.TransacEstoque.RollbackRetaining;

          end;

          try
            DMESTOQUE.TSubProd.Close;
            DMESTOQUE.TSubProd.SQL.Clear;
            DMESTOQUE.TSubProd.SQL.Add('insert into SUBPRODUTO');
            DMESTOQUE.TSubProd.SQL.Add('(COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, CODPRODFABR, FABRICANTE,');
            DMESTOQUE.TSubProd.SQL.Add('MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, IPIPROD, PESOLIQ,');
            DMESTOQUE.TSubProd.SQL.Add('PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD, LOTE,');
            DMESTOQUE.TSubProd.SQL.Add('PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, COD_UNIDCOMPRA, COD_UNIDVENDA,');
            DMESTOQUE.TSubProd.SQL.Add('COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, DESCCUPOM, NCM,');
            DMESTOQUE.TSubProd.SQL.Add('OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, BALANCA,');
            DMESTOQUE.TSubProd.SQL.Add('ANVISA, MINSAUDE)');
            DMESTOQUE.TSubProd.SQL.Add('values');
            DMESTOQUE.TSubProd.SQL.Add('(:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, :CODPRODFABR,');
            DMESTOQUE.TSubProd.SQL.Add(':FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, :LOCALESTANTE, :ATIVO,');
            DMESTOQUE.TSubProd.SQL.Add(':IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, :MOTIVO,');
            DMESTOQUE.TSubProd.SQL.Add(':QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVAL, :ATESTGAR,');
            DMESTOQUE.TSubProd.SQL.Add(':SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, :CODEAN1,');
            DMESTOQUE.TSubProd.SQL.Add(':CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL, :COMPOSICAO,');
            DMESTOQUE.TSubProd.SQL.Add(':ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, :MINSAUDE)');

            DMESTOQUE.TSubProd.ParamByName('cod_subproduto').AsInteger := DMPESSOA.TAux1.FieldByName('cod_subproduto').AsInteger;

            DMESTOQUE.TSubProd.ParamByName('COD_CST').AsInteger := DMPESSOA.TAux1.FieldByName('COD_CST').AsInteger;
            DMESTOQUE.TSubProd.ParamByName('cod_produto').AsInteger := DMPESSOA.TAux1.FieldByName('cod_produto').AsInteger;
            DMESTOQUE.TSubProd.ParamByName('ALTURA').AsString := DMPESSOA.TAux1.FieldByName('ALTURA').AsString;
            DMESTOQUE.TSubProd.ParamByName('ANVISA').AsString := DMPESSOA.TAux1.FieldByName('ANVISA').AsString;
            DMESTOQUE.TSubProd.ParamByName('ATESTGAR').AsString := DMPESSOA.TAux1.FieldByName('ATESTGAR').AsString;
            DMESTOQUE.TSubProd.ParamByName('ATESTVAL').AsString := DMPESSOA.TAux1.FieldByName('ATESTVAL').AsString;
            DMESTOQUE.TSubProd.ParamByName('ATIVO').AsString := DMPESSOA.TAux1.FieldByName('ATIVO').AsString;
            DMESTOQUE.TSubProd.ParamByName('BALANCA').AsString := DMPESSOA.TAux1.FieldByName('BALANCA').AsString;
            DMESTOQUE.TSubProd.ParamByName('CLASSIFICACAO').AsString := DMPESSOA.TAux1.FieldByName('CLASSIFICACAO').AsString;
            DMESTOQUE.TSubProd.ParamByName('CODBARRA').AsString := DMPESSOA.TAux1.FieldByName('CODBARRA').AsString;
            DMESTOQUE.TSubProd.ParamByName('CODCOMPOSTO').AsString := DMPESSOA.TAux1.FieldByName('CODCOMPOSTO').AsString;
            DMESTOQUE.TSubProd.ParamByName('CODEAN1').AsString := DMPESSOA.TAux1.FieldByName('CODEAN1').AsString;
            DMESTOQUE.TSubProd.ParamByName('CODPRODFABR').AsString := DMPESSOA.TAux1.FieldByName('CODPRODFABR').AsString;
            DMESTOQUE.TSubProd.ParamByName('COD_INTERNO').AsString := DMPESSOA.TAux1.FieldByName('COD_INTERNO').AsString;

            DMESTOQUE.TSubProd.ParamByName('COD_UNIDCOMPRA').AsInteger := DMPESSOA.TAux1.FieldByName('COD_UNIDCOMPRA').AsInteger;
            DMESTOQUE.TSubProd.ParamByName('COD_UNIDVENDA').AsInteger := DMPESSOA.TAux1.FieldByName('COD_UNIDVENDA').AsInteger;

            DMESTOQUE.TSubProd.ParamByName('COMPOSICAO').AsString := DMPESSOA.TAux1.FieldByName('COMPOSICAO').AsString;
            DMESTOQUE.TSubProd.ParamByName('CONTRINT').AsString := DMPESSOA.TAux1.FieldByName('CONTRINT').AsString;
            DMESTOQUE.TSubProd.ParamByName('COR').AsString := DMPESSOA.TAux1.FieldByName('COR').AsString;
            DMESTOQUE.TSubProd.ParamByName('DESCCUPOM').AsString := DMPESSOA.TAux1.FieldByName('DESCCUPOM').AsString;
            DMESTOQUE.TSubProd.ParamByName('DESCRICAO').AsString := DMPESSOA.TAux1.FieldByName('DESCRICAO').AsString;
            DMESTOQUE.TSubProd.ParamByName('DTCAD').AsDateTime := DMPESSOA.TAux1.FieldByName('DTCAD').AsDateTime;
            DMESTOQUE.TSubProd.ParamByName('EMBPROD').AsCurrency := DMPESSOA.TAux1.FieldByName('EMBPROD').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('ESPECIFICACAO').AsString := DMPESSOA.TAux1.FieldByName('ESPECIFICACAO').AsString;
            DMESTOQUE.TSubProd.ParamByName('FABRICANTE').AsString := DMPESSOA.TAux1.FieldByName('FABRICANTE').AsString;
            DMESTOQUE.TSubProd.ParamByName('GERMI').AsCurrency := DMPESSOA.TAux1.FieldByName('GERMI').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('IPIPROD').AsCurrency := DMPESSOA.TAux1.FieldByName('IPIPROD').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('LARGURA').AsString := DMPESSOA.TAux1.FieldByName('LARGURA').AsString;
            DMESTOQUE.TSubProd.ParamByName('LOCALESTANTE').AsString := DMPESSOA.TAux1.FieldByName('LOCALESTANTE').AsString;
            DMESTOQUE.TSubProd.ParamByName('LOTE').AsString := DMPESSOA.TAux1.FieldByName('LOTE').AsString;
            DMESTOQUE.TSubProd.ParamByName('MARCA').AsString := DMPESSOA.TAux1.FieldByName('MARCA').AsString;
            DMESTOQUE.TSubProd.ParamByName('MARK').AsString := DMPESSOA.TAux1.FieldByName('MARK').AsString;
            DMESTOQUE.TSubProd.ParamByName('MINSAUDE').AsString := DMPESSOA.TAux1.FieldByName('MINSAUDE').AsString;
            DMESTOQUE.TSubProd.ParamByName('MOTIVO').AsString := DMPESSOA.TAux1.FieldByName('MOTIVO').AsString;
            DMESTOQUE.TSubProd.ParamByName('NCM').AsString := DMPESSOA.TAux1.FieldByName('NCM').AsString;
            DMESTOQUE.TSubProd.ParamByName('OBSFISCAL').AsString := DMPESSOA.TAux1.FieldByName('OBSFISCAL').AsString;
            DMESTOQUE.TSubProd.ParamByName('PENEIRA').AsString := DMPESSOA.TAux1.FieldByName('PENEIRA').AsString;
            DMESTOQUE.TSubProd.ParamByName('PESOBRUTO').AsCurrency := DMPESSOA.TAux1.FieldByName('PESOBRUTO').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('PESOLIQ').AsCurrency := DMPESSOA.TAux1.FieldByName('PESOLIQ').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('PUREZA').AsCurrency := DMPESSOA.TAux1.FieldByName('PUREZA').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('QTDATC').AsCurrency := DMPESSOA.TAux1.FieldByName('QTDATC').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('QUANTGARANTIA').AsCurrency := DMPESSOA.TAux1.FieldByName('QUANTGARANTIA').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('SAFRA').AsString := DMPESSOA.TAux1.FieldByName('SAFRA').AsString;
            DMESTOQUE.TSubProd.ParamByName('TIPOGARANTIA').AsString := DMPESSOA.TAux1.FieldByName('TIPOGARANTIA').AsString;
            DMESTOQUE.TSubProd.ExecSQL;

            DMESTOQUE.TransacEstoque.CommitRetaining;
            DMMACS.Transaction.CommitRetaining;
          except
            DMESTOQUE.TransacEstoque.RollbackRetaining;
          end;

        end
        else
        begin
          DMESTOQUE.TSubProd.Close;
          DMESTOQUE.TSubProd.SQL.Clear;
          DMESTOQUE.TSubProd.SQL.Add('delete from SUBPRODUTO where SUBPRODUTO.COD_SUBPRODUTO = ' + DMPESSOA.TAux1.fieldByName('COD_SUBPRODUTO').AsString);
          DMESTOQUE.TSubProd.ExecSQL;

          DMESTOQUE.TSubProd.Close;
          DMESTOQUE.TSubProd.SQL.Clear;
          DMESTOQUE.TSubProd.SQL.Add('insert into SUBPRODUTO');
          DMESTOQUE.TSubProd.SQL.Add('(COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, CODPRODFABR, FABRICANTE,');
          DMESTOQUE.TSubProd.SQL.Add('MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, IPIPROD, PESOLIQ,');
          DMESTOQUE.TSubProd.SQL.Add('PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD, LOTE,');
          DMESTOQUE.TSubProd.SQL.Add('PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, COD_UNIDCOMPRA, COD_UNIDVENDA,');
          DMESTOQUE.TSubProd.SQL.Add('COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, DESCCUPOM, NCM,');
          DMESTOQUE.TSubProd.SQL.Add('OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, BALANCA,');
          DMESTOQUE.TSubProd.SQL.Add('ANVISA, MINSAUDE)');
          DMESTOQUE.TSubProd.SQL.Add('values');
          DMESTOQUE.TSubProd.SQL.Add('(:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, :CODPRODFABR,');
          DMESTOQUE.TSubProd.SQL.Add(':FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, :LOCALESTANTE, :ATIVO,');
          DMESTOQUE.TSubProd.SQL.Add(':IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, :MOTIVO,');
          DMESTOQUE.TSubProd.SQL.Add(':QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVAL, :ATESTGAR,');
          DMESTOQUE.TSubProd.SQL.Add(':SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, :CODEAN1,');
          DMESTOQUE.TSubProd.SQL.Add(':CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL, :COMPOSICAO,');
          DMESTOQUE.TSubProd.SQL.Add(':ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, :MINSAUDE)');

          DMESTOQUE.TSubProd.ParamByName('cod_subproduto').AsInteger := DMPESSOA.TAux1.FieldByName('cod_subproduto').AsInteger;

          DMESTOQUE.TSubProd.ParamByName('COD_CST').AsInteger := DMPESSOA.TAux1.FieldByName('COD_CST').AsInteger;
          DMESTOQUE.TSubProd.ParamByName('cod_produto').AsInteger := DMPESSOA.TAux1.FieldByName('cod_produto').AsInteger;
          DMESTOQUE.TSubProd.ParamByName('ALTURA').AsString := DMPESSOA.TAux1.FieldByName('ALTURA').AsString;
          DMESTOQUE.TSubProd.ParamByName('ANVISA').AsString := DMPESSOA.TAux1.FieldByName('ANVISA').AsString;
          DMESTOQUE.TSubProd.ParamByName('ATESTGAR').AsString := DMPESSOA.TAux1.FieldByName('ATESTGAR').AsString;
          DMESTOQUE.TSubProd.ParamByName('ATESTVAL').AsString := DMPESSOA.TAux1.FieldByName('ATESTVAL').AsString;
          DMESTOQUE.TSubProd.ParamByName('ATIVO').AsString := DMPESSOA.TAux1.FieldByName('ATIVO').AsString;
          DMESTOQUE.TSubProd.ParamByName('BALANCA').AsString := DMPESSOA.TAux1.FieldByName('BALANCA').AsString;
          DMESTOQUE.TSubProd.ParamByName('CLASSIFICACAO').AsString := DMPESSOA.TAux1.FieldByName('CLASSIFICACAO').AsString;
          DMESTOQUE.TSubProd.ParamByName('CODBARRA').AsString := DMPESSOA.TAux1.FieldByName('CODBARRA').AsString;
          DMESTOQUE.TSubProd.ParamByName('CODCOMPOSTO').AsString := DMPESSOA.TAux1.FieldByName('CODCOMPOSTO').AsString;
          DMESTOQUE.TSubProd.ParamByName('CODEAN1').AsString := DMPESSOA.TAux1.FieldByName('CODEAN1').AsString;
          DMESTOQUE.TSubProd.ParamByName('CODPRODFABR').AsString := DMPESSOA.TAux1.FieldByName('CODPRODFABR').AsString;
          DMESTOQUE.TSubProd.ParamByName('COD_INTERNO').AsString := DMPESSOA.TAux1.FieldByName('COD_INTERNO').AsString;

          DMESTOQUE.TSubProd.ParamByName('COD_UNIDCOMPRA').AsInteger := DMPESSOA.TAux1.FieldByName('COD_UNIDCOMPRA').AsInteger;
          DMESTOQUE.TSubProd.ParamByName('COD_UNIDVENDA').AsInteger := DMPESSOA.TAux1.FieldByName('COD_UNIDVENDA').AsInteger;

          DMESTOQUE.TSubProd.ParamByName('COMPOSICAO').AsString := DMPESSOA.TAux1.FieldByName('COMPOSICAO').AsString;
          DMESTOQUE.TSubProd.ParamByName('CONTRINT').AsString := DMPESSOA.TAux1.FieldByName('CONTRINT').AsString;
          DMESTOQUE.TSubProd.ParamByName('COR').AsString := DMPESSOA.TAux1.FieldByName('COR').AsString;
          DMESTOQUE.TSubProd.ParamByName('DESCCUPOM').AsString := DMPESSOA.TAux1.FieldByName('DESCCUPOM').AsString;
          DMESTOQUE.TSubProd.ParamByName('DESCRICAO').AsString := DMPESSOA.TAux1.FieldByName('DESCRICAO').AsString;
          DMESTOQUE.TSubProd.ParamByName('DTCAD').AsDateTime := DMPESSOA.TAux1.FieldByName('DTCAD').AsDateTime;
          DMESTOQUE.TSubProd.ParamByName('EMBPROD').AsCurrency := DMPESSOA.TAux1.FieldByName('EMBPROD').AsCurrency;
          DMESTOQUE.TSubProd.ParamByName('ESPECIFICACAO').AsString := DMPESSOA.TAux1.FieldByName('ESPECIFICACAO').AsString;
          DMESTOQUE.TSubProd.ParamByName('FABRICANTE').AsString := DMPESSOA.TAux1.FieldByName('FABRICANTE').AsString;
          DMESTOQUE.TSubProd.ParamByName('GERMI').AsCurrency := DMPESSOA.TAux1.FieldByName('GERMI').AsCurrency;
          DMESTOQUE.TSubProd.ParamByName('IPIPROD').AsCurrency := DMPESSOA.TAux1.FieldByName('IPIPROD').AsCurrency;
          DMESTOQUE.TSubProd.ParamByName('LARGURA').AsString := DMPESSOA.TAux1.FieldByName('LARGURA').AsString;
          DMESTOQUE.TSubProd.ParamByName('LOCALESTANTE').AsString := DMPESSOA.TAux1.FieldByName('LOCALESTANTE').AsString;
          DMESTOQUE.TSubProd.ParamByName('LOTE').AsString := DMPESSOA.TAux1.FieldByName('LOTE').AsString;
          DMESTOQUE.TSubProd.ParamByName('MARCA').AsString := DMPESSOA.TAux1.FieldByName('MARCA').AsString;
          DMESTOQUE.TSubProd.ParamByName('MARK').AsString := DMPESSOA.TAux1.FieldByName('MARK').AsString;
          DMESTOQUE.TSubProd.ParamByName('MINSAUDE').AsString := DMPESSOA.TAux1.FieldByName('MINSAUDE').AsString;
          DMESTOQUE.TSubProd.ParamByName('MOTIVO').AsString := DMPESSOA.TAux1.FieldByName('MOTIVO').AsString;
          DMESTOQUE.TSubProd.ParamByName('NCM').AsString := DMPESSOA.TAux1.FieldByName('NCM').AsString;
          DMESTOQUE.TSubProd.ParamByName('OBSFISCAL').AsString := DMPESSOA.TAux1.FieldByName('OBSFISCAL').AsString;
          DMESTOQUE.TSubProd.ParamByName('PENEIRA').AsString := DMPESSOA.TAux1.FieldByName('PENEIRA').AsString;
          DMESTOQUE.TSubProd.ParamByName('PESOBRUTO').AsCurrency := DMPESSOA.TAux1.FieldByName('PESOBRUTO').AsCurrency;
          DMESTOQUE.TSubProd.ParamByName('PESOLIQ').AsCurrency := DMPESSOA.TAux1.FieldByName('PESOLIQ').AsCurrency;
          DMESTOQUE.TSubProd.ParamByName('PUREZA').AsCurrency := DMPESSOA.TAux1.FieldByName('PUREZA').AsCurrency;
          DMESTOQUE.TSubProd.ParamByName('QTDATC').AsCurrency := DMPESSOA.TAux1.FieldByName('QTDATC').AsCurrency;
          DMESTOQUE.TSubProd.ParamByName('QUANTGARANTIA').AsCurrency := DMPESSOA.TAux1.FieldByName('QUANTGARANTIA').AsCurrency;
          DMESTOQUE.TSubProd.ParamByName('SAFRA').AsString := DMPESSOA.TAux1.FieldByName('SAFRA').AsString;
          DMESTOQUE.TSubProd.ParamByName('TIPOGARANTIA').AsString := DMPESSOA.TAux1.FieldByName('TIPOGARANTIA').AsString;
          DMESTOQUE.TSubProd.ExecSQL;

          // - 02/02/2009:  inserir outro

          DMPESSOA.TAux1.Next;

          while not DMPESSOA.TAux1.Eof do
          begin

            DMESTOQUE.TSubProd.Close;
            DMESTOQUE.TSubProd.SQL.Clear;
            DMESTOQUE.TSubProd.SQL.Add('insert into SUBPRODUTO');
            DMESTOQUE.TSubProd.SQL.Add('(COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, CODPRODFABR, FABRICANTE,');
            DMESTOQUE.TSubProd.SQL.Add('MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, IPIPROD, PESOLIQ,');
            DMESTOQUE.TSubProd.SQL.Add('PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD, LOTE,');
            DMESTOQUE.TSubProd.SQL.Add('PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, COD_UNIDCOMPRA, COD_UNIDVENDA,');
            DMESTOQUE.TSubProd.SQL.Add('COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, DESCCUPOM, NCM,');
            DMESTOQUE.TSubProd.SQL.Add('OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, BALANCA,');
            DMESTOQUE.TSubProd.SQL.Add('ANVISA, MINSAUDE)');
            DMESTOQUE.TSubProd.SQL.Add('values');
            DMESTOQUE.TSubProd.SQL.Add('(:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, :CODPRODFABR,');
            DMESTOQUE.TSubProd.SQL.Add(':FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, :LOCALESTANTE, :ATIVO,');
            DMESTOQUE.TSubProd.SQL.Add(':IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, :MOTIVO,');
            DMESTOQUE.TSubProd.SQL.Add(':QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVAL, :ATESTGAR,');
            DMESTOQUE.TSubProd.SQL.Add(':SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, :CODEAN1,');
            DMESTOQUE.TSubProd.SQL.Add(':CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL, :COMPOSICAO,');
            DMESTOQUE.TSubProd.SQL.Add(':ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, :MINSAUDE)');

            DMESTOQUE.TSubProd.ParamByName('cod_subproduto').AsInteger := DMMACS.TCodigo.FieldByName('cod_subproduto').AsInteger;

            DMESTOQUE.TSubProd.ParamByName('COD_CST').AsInteger := DMPESSOA.TAux1.FieldByName('COD_CST').AsInteger;
            DMESTOQUE.TSubProd.ParamByName('cod_produto').AsInteger := DMPESSOA.TAux1.FieldByName('cod_produto').AsInteger;
            DMESTOQUE.TSubProd.ParamByName('ALTURA').AsString := DMPESSOA.TAux1.FieldByName('ALTURA').AsString;
            DMESTOQUE.TSubProd.ParamByName('ANVISA').AsString := DMPESSOA.TAux1.FieldByName('ANVISA').AsString;
            DMESTOQUE.TSubProd.ParamByName('ATESTGAR').AsString := DMPESSOA.TAux1.FieldByName('ATESTGAR').AsString;
            DMESTOQUE.TSubProd.ParamByName('ATESTVAL').AsString := DMPESSOA.TAux1.FieldByName('ATESTVAL').AsString;
            DMESTOQUE.TSubProd.ParamByName('ATIVO').AsString := DMPESSOA.TAux1.FieldByName('ATIVO').AsString;
            DMESTOQUE.TSubProd.ParamByName('BALANCA').AsString := DMPESSOA.TAux1.FieldByName('BALANCA').AsString;
            DMESTOQUE.TSubProd.ParamByName('CLASSIFICACAO').AsString := DMPESSOA.TAux1.FieldByName('CLASSIFICACAO').AsString;
            DMESTOQUE.TSubProd.ParamByName('CODBARRA').AsString := DMPESSOA.TAux1.FieldByName('CODBARRA').AsString;
            DMESTOQUE.TSubProd.ParamByName('CODCOMPOSTO').AsString := DMPESSOA.TAux1.FieldByName('CODCOMPOSTO').AsString;
            DMESTOQUE.TSubProd.ParamByName('CODEAN1').AsString := DMPESSOA.TAux1.FieldByName('CODEAN1').AsString;
            DMESTOQUE.TSubProd.ParamByName('CODPRODFABR').AsString := DMPESSOA.TAux1.FieldByName('CODPRODFABR').AsString;
            DMESTOQUE.TSubProd.ParamByName('COD_INTERNO').AsString := DMPESSOA.TAux1.FieldByName('COD_INTERNO').AsString;

            DMESTOQUE.TSubProd.ParamByName('COD_UNIDCOMPRA').AsInteger := DMPESSOA.TAux1.FieldByName('COD_UNIDCOMPRA').AsInteger;
            DMESTOQUE.TSubProd.ParamByName('COD_UNIDVENDA').AsInteger := DMPESSOA.TAux1.FieldByName('COD_UNIDVENDA').AsInteger;

            DMESTOQUE.TSubProd.ParamByName('COMPOSICAO').AsString := DMPESSOA.TAux1.FieldByName('COMPOSICAO').AsString;
            DMESTOQUE.TSubProd.ParamByName('CONTRINT').AsString := DMPESSOA.TAux1.FieldByName('CONTRINT').AsString;
            DMESTOQUE.TSubProd.ParamByName('COR').AsString := DMPESSOA.TAux1.FieldByName('COR').AsString;
            DMESTOQUE.TSubProd.ParamByName('DESCCUPOM').AsString := DMPESSOA.TAux1.FieldByName('DESCCUPOM').AsString;
            DMESTOQUE.TSubProd.ParamByName('DESCRICAO').AsString := DMPESSOA.TAux1.FieldByName('DESCRICAO').AsString;
            DMESTOQUE.TSubProd.ParamByName('DTCAD').AsDateTime := DMPESSOA.TAux1.FieldByName('DTCAD').AsDateTime;
            DMESTOQUE.TSubProd.ParamByName('EMBPROD').AsCurrency := DMPESSOA.TAux1.FieldByName('EMBPROD').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('ESPECIFICACAO').AsString := DMPESSOA.TAux1.FieldByName('ESPECIFICACAO').AsString;
            DMESTOQUE.TSubProd.ParamByName('FABRICANTE').AsString := DMPESSOA.TAux1.FieldByName('FABRICANTE').AsString;
            DMESTOQUE.TSubProd.ParamByName('GERMI').AsCurrency := DMPESSOA.TAux1.FieldByName('GERMI').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('IPIPROD').AsCurrency := DMPESSOA.TAux1.FieldByName('IPIPROD').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('LARGURA').AsString := DMPESSOA.TAux1.FieldByName('LARGURA').AsString;
            DMESTOQUE.TSubProd.ParamByName('LOCALESTANTE').AsString := DMPESSOA.TAux1.FieldByName('LOCALESTANTE').AsString;
            DMESTOQUE.TSubProd.ParamByName('LOTE').AsString := DMPESSOA.TAux1.FieldByName('LOTE').AsString;
            DMESTOQUE.TSubProd.ParamByName('MARCA').AsString := DMPESSOA.TAux1.FieldByName('MARCA').AsString;
            DMESTOQUE.TSubProd.ParamByName('MARK').AsString := DMPESSOA.TAux1.FieldByName('MARK').AsString;
            DMESTOQUE.TSubProd.ParamByName('MINSAUDE').AsString := DMPESSOA.TAux1.FieldByName('MINSAUDE').AsString;
            DMESTOQUE.TSubProd.ParamByName('MOTIVO').AsString := DMPESSOA.TAux1.FieldByName('MOTIVO').AsString;
            DMESTOQUE.TSubProd.ParamByName('NCM').AsString := DMPESSOA.TAux1.FieldByName('NCM').AsString;
            DMESTOQUE.TSubProd.ParamByName('OBSFISCAL').AsString := DMPESSOA.TAux1.FieldByName('OBSFISCAL').AsString;
            DMESTOQUE.TSubProd.ParamByName('PENEIRA').AsString := DMPESSOA.TAux1.FieldByName('PENEIRA').AsString;
            DMESTOQUE.TSubProd.ParamByName('PESOBRUTO').AsCurrency := DMPESSOA.TAux1.FieldByName('PESOBRUTO').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('PESOLIQ').AsCurrency := DMPESSOA.TAux1.FieldByName('PESOLIQ').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('PUREZA').AsCurrency := DMPESSOA.TAux1.FieldByName('PUREZA').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('QTDATC').AsCurrency := DMPESSOA.TAux1.FieldByName('QTDATC').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('QUANTGARANTIA').AsCurrency := DMPESSOA.TAux1.FieldByName('QUANTGARANTIA').AsCurrency;
            DMESTOQUE.TSubProd.ParamByName('SAFRA').AsString := DMPESSOA.TAux1.FieldByName('SAFRA').AsString;
            DMESTOQUE.TSubProd.ParamByName('TIPOGARANTIA').AsString := DMPESSOA.TAux1.FieldByName('TIPOGARANTIA').AsString;
            DMESTOQUE.TSubProd.ExecSQL;

            DMMACS.TCodigo.Edit;
            DMMACS.TCodigo.FieldByName('cod_subproduto').AsInteger := DMMACS.TCodigo.FieldByName('cod_subproduto').AsInteger + 1;
            DMMACS.TCodigo.Post;
            DMMACS.IBTCodigo.CommitRetaining;

            DMPESSOA.TAux1.Next;
          end;
        end;

        DMPESSOA.TAux3.Next;
      end;
    end;
    DMMACS.Transaction.CommitRetaining;
    DMESTOQUE.TransacEstoque.CommitRetaining;
    DMPESSOA.TransacPessoa.CommitRetaining;
  except
    DMESTOQUE.TransacEstoque.RollbackRetaining;
  end;
end;

procedure TFOrdemMec.Verificar1Click(Sender: TObject);
begin
  if FMenu.LCODUSUARIO.Caption = '111522' then
    funcaocordup
  else
    MessageDlg('Função liberada apenas para a equipe de suporte!', mtWarning, [mbOK], 0);
end;

procedure TFOrdemMec.RelatriosdeOrdens1Click(Sender: TObject);
begin
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

// - 04/02/2009: passar como parametro placa e será retornado o seu respectivo código (caso não axar result := -1)

function TFOrdemMec.VerificaPlacaAtiva(placa: string): Boolean;
begin
  Result := False;
end;

procedure TFOrdemMec.EdFiscalEnter(Sender: TObject);
begin
  inherited;
  if EdFiscal.Text = 'NF-e' then
    EdFiscal.Text := ''
  else
    EdFiscal.SelectAll;

  EdFiscal.Font.Color := clBlack;
end;

procedure TFOrdemMec.EdFiscalExit(Sender: TObject);
begin
  inherited;
  if Trim(EdFiscal.Text) = '' then
    EdFiscal.Text := 'NF-e';
  EdFiscal.Font.Color := clGray;
end;

procedure TFOrdemMec.EdFiscalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    AtualizaGridConsulta('NUMFISCAL');
    EdFiscal.SelectAll;
  end;

  if key = #27 then
  begin
    CBORDEM.Text := 'FISCAL';
    AtualizaGridConsulta('');
    EdFiscal.SelectAll;
  end;
end;

procedure TFOrdemMec.FCadPlaca1btnConfirmarClick(Sender: TObject);
begin
  inherited;
  btnConfirmarClick(Sender);
  // - 28/04/2009: valida
  if (((XOK) or ((not XOK) and not (Length(Trim(edNome.Text)) <= 0) and not (Length(Trim(edPlaca.Text)) <= 0)))) or (CBVENDABALCAO.Checked = true) then
  begin
    if FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCOD_CLIENTE), '') then
    begin
      XCOD_CLIENTE := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
      FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
      FrmCliente.EDCodigo.Hint := DMPESSOA.WCliente.FieldByName('NOME').AsString;
      FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;

      SelecionaFormaPagamento;

      FBEquipPlaca.EDCodigo.SetFocus;

    end
    else
    begin
      XCOD_CLIENTE := -1;
      FrmCliente.EDCodigo.Text := '';
      FrmCliente.EDCodigo.Hint := '';
      FrmCliente.EdDescricao.Text := '';
    end;

    if FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(XCOD_EQUIPAMENTO), '') then
    begin
      XCOD_EQUIPAMENTO := DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
      FBEquipPlaca.EDCodigo.Text := DMPESSOA.TEquip.FieldByName('PLACA').AsString;
      FBEquipPlaca.EdDescricao.Text := DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
      if DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> '' then
      begin
        lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
      end
      else
      begin
        lbNumFrota.Caption := '';
      end;
      FrmFormPag1.EDCodigo.SetFocus;

    end
    else
    begin
      XCOD_EQUIPAMENTO := -1;
      FBEquipPlaca.EDCodigo.Text := '';
      FBEquipPlaca.EdDescricao.Text := '';
      lbNumFrota.Caption := '';
    end;

    FrmCliente.Repaint;
    FBEquipPlaca.Repaint;

    PCadastroRapido.SendToBack;
    PCadastroRapido.Visible := False;
  end;

  if CbVendaBalcao.Checked = True then
  begin
    CBVENDABALCAO.Visible := True;
    CBVENDABALCAO.BringToFront;
    CBVENDABALCAO.Checked := true;
  end
  else
  begin
    CBVENDABALCAO.Checked := False;
  end;
end;

procedure TFOrdemMec.FrmCidadeBTNOPENClick(Sender: TObject);
begin
  inherited;
  //LIBERA TODAS OS ESTADOS PARA CONSUTA
  filtraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', ' Order by NOME');
  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_CIDADE';
  FMenu.XCodPesqPresSel := FrmCidade.EDCodigo.text;
  if AbrirForm(TFCadCidade, FCadCidade, 1) = 'Selected' then
  begin
    XCOD_CIDADE := DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
    FrmCidade.EdDescricao.Text := DMGEOGRAFIA.WCidade.FieldByName('UF').AsString + '-' + DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
    FrmCidade.EDCodigo.text := DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
  end
  else
  begin
    XCOD_CIDADE := -1;
    FrmCidade.EdDescricao.Text := '';
    FrmCidade.EDCodigo.text := '';
  end;
end;

procedure TFOrdemMec.FrmCidadeBTNMINUSClick(Sender: TObject);
begin
  inherited;
  //Codigo da tabela local =0
  XCOD_CIDADE := -1;
  FrmCidade.EDCodigo.Text := '';
  FrmCidade.EdDescricao.Text := '';
end;

procedure TFOrdemMec.FrmCidadeEDCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if FrmCidade.EDCodigo.Text <> '' then
    begin
      if SelectRegistro('VWCIDADE', 'COD_CIDADE', FrmCidade.EDCodigo.Text) = True then
      begin //Slecionou o registro procurado
        XCOD_CIDADE := DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
        FrmCidade.EDCodigo.text := DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
        FrmCidade.EdDescricao.Text := DMMACS.TSelect.FieldByName('UF').AsString + '-' + DMMACS.TSelect.FieldByName('NOME').AsString;
      end
      else
      begin
        XCOD_CIDADE := -1;
        FrmCidade.EDCodigo.Text := '';
        FrmCidade.EdDescricao.Text := '';
      end;
    end
    else
    begin
      XCOD_CIDADE := -1;
      FrmCidade.EDCodigo.Text := '';
      FrmCidade.EdDescricao.Text := '';
    end;
  end;
end;

procedure TFOrdemMec.BitBtn8Click(Sender: TObject);
var
  XSUCCESS: Boolean;
  XDESCERRO: string;
  XCODNEWORDEM: Integer;
  XEncontrado: Boolean;
begin
  //inherited;
   {
   If DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString='MECANICA'
   Then Begin
   If AbrirForm(TFORCAMENTOMAC, FORCAMENTOMAC, 1)='Selected' Then
          XEncontrado:=True;
   End
   Else Begin
   If AbrirForm(TFOrcamento, FOrcamento, 1)='Selected' Then
          XEncontrado:=True;
   End;
   }
  FMenu.SelectedForm := True;
  if DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString = 'MECANICA' then
  begin
    if AbrirForm(TFORCAMENTOMAC, FORCAMENTOMAC, 1) = 'Selected' then
      XEncontrado := True;
  end
  else if DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString = 'INDUSTRIA' then
  begin
    if AbrirForm(TFOrcamento3, FOrcamento3, 1) = 'Selected' then
      XEncontrado := True;
  end
  else if AbrirForm(TFORCAMENTO, FORCAMENTO, 1) = 'Selected' then
    xEncontrado := true;

  if XEncontrado = True then
  begin
    if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente importar o orçamento' + #13 + 'Nº ' + DMSAIDA.WOrc.FieldByName('NUMORC').AsString + '?', '', 2, 3, False, 'c') = 2 then
    begin
      //Filtra Orçamento referente
      if FiltraTabela(DMSAIDA.TOrc, 'ORCAMENTO', 'COD_ORCAMENTO', DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString, '') = True then
      begin
        if FiltraTabela(DMServ.Alx, 'ORDEM', 'NUMORC', DMSAIDA.TOrc.FieldByName('NUMORC').AsString, '') then
        begin
          Mensagem(' INFORMAÇÃO ', 'Esse orçamento já foi importado anteriormente (OS Nº ' + DMServ.Alx.FieldByName('NUMERO').AsString + '). O Sistema importará novamente, mas verifique por favor.', '', 1, 1, False, 'A');
        end;
        //FILTRA FORMA DE PAGAMENTO DE ACORDO COM ORÇAMENTO
        FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMSAIDA.WOrc.FieldByNAme('COD_FORMPAG').AsString, '');

        //FILTRA LOJA
        FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
        //AUTODETERMINA IMPORTAÇÃO COMO SUCESSO
        XSUCCESS := True;
        XDESCERRO := '';
        try
          //INSERE NOVO PEDIDO
           //	BtnNovo.Click;

          XCOD_ORDEM := -1;
          XCOD_CLIENTE := -1;
          XCOD_EQUIPAMENTO := -1;
          XCOD_FUNCIONARIO := -1;
          XCOD_ITPROD := -1;
          XCOD_ITSERV := -1;
          XCOD_VENDEDOR := -1;
          XCOD_FORMPAG := -1;

          if FiltraTabela(DMMacs.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = True then
          begin

            // - 19/03/2009: busca proximo numero de OS
            if DMMACS.TEmpresa.FieldByName('PROX_OS').AsString = '' then
              XNumOrdem := '1'
            else
              XNumOrdem := DMMACS.TEmpresa.FieldByName('PROX_OS').AsString;

            // - 19/03/2009: mostra na edit numero OS
            DBNumOrd.Text := XNumOrdem;

            // - 19/03/2009: incrementa numero OS em Empresa
            try
              DMMACS.TEmpresa.EDIT;
              DMMACS.TEmpresa.FieldByName('PROX_OS').AsString := IntToStr(StrToInt(DMMACS.TEmpresa.FieldByName('PROX_OS').AsString) + 1);
              DMMACS.TEmpresa.Post;
              DMMACS.Transaction.CommitRetaining;
            except
              MessageDlg('O Número da ordem não foi incrementado em empresa', mtWarning, [mbOK], 0);
              DMMACS.Transaction.RollbackRetaining;
            end;

          end;
          try
            DMServ.TOrd.Insert;
            XCOD_ORDEM := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
            XCODPKMESTRE := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
            DMServ.TOrd.Post;
            DMServ.TOrd.ApplyUpdates;
            DMServ.IBT.CommitRetaining;

            DMServ.TAlx1.Close;
            DMServ.TAlx1.SQL.Clear;
            DMServ.TAlx1.SQL.Add('update ORDEM set NUMERO = :NUMERO, DTABERT = :DTABERT, HRABERT = :HRABERT,');
            DMServ.TAlx1.SQL.Add('STATUS = :STATUS, COD_LOJA = :COD_LOJA, LOCALAT = :LOCALAT, EDIT = :EDIT');
            DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
            DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
            DMServ.TAlx1.ParamByName('NUMERO').AsString := XNumOrdem;
            DMServ.TAlx1.ParamByName('DTABERT').AsDateTime := Date();
            DMServ.TAlx1.ParamByName('HRABERT').AsDateTime := Time();
            DMServ.TAlx1.ParamByName('STATUS').AsString := 'ABERTO';
            DMServ.TAlx1.ParamByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
            DMServ.TAlx1.ParamByName('LOCALAT').AsString := 'BALCÃO';
            DMServ.TAlx1.ParamByName('EDIT').AsString := '1';
            DMServ.TAlx1.ExecSQL;

            DMServ.IBT.CommitRetaining;

          except
            MessageDlg('A Odem não foi inserida no banco', mtWarning, [mbOK], 0);
            PConsulta.Visible := False;
            PCadastro.Visible := True;
            PCadastro.BringToFront;
          end;
          if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCODPKMESTRE), '') = False then
          begin
            Mensagem('Mzr Sistemas - INFORMAÇÃO', 'A Ordem inserida foi perdida. Reinicie o sistema!', '', 1, 1, false, 'i');
            exit
          end;

          //Seleciona somente os registros corretos
          FiltraSlave;
          //Chama função para calcular descontos
          EfetuaDesconto('GERAL', 'MOEDA');

          FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCODPKMESTRE), '');

          DMServ.TOrd.Edit;
          DMServ.TOrd.FieldByName('EDIT').AsString := '0';

          //ATRIBUI VALOR DA PK PARA VARIAVEL PARA QUE DEPOIS OS DADOS POSSAM SER REENCONTRADOS
          XCODNEWORDEM := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
          //IMPORTA INFORMAÇÕES DE CABEÇALHO DO ORÇAMENTO
          DMServ.TOrd.FieldByName('COD_CLIENTE').AsString := DMSAIDA.TOrc.FieldByName('COD_CLIENTE').AsString;
          DMServ.TOrd.FieldByName('COD_USUARIO').AsString := DMSAIDA.TOrc.FieldByName('COD_USUARIO').AsString;
          DMServ.TOrd.FieldByName('NUMORC').AsString := DMSAIDA.TOrc.FieldByName('NUMORC').AsString;
          DMServ.TOrd.FieldByName('COD_VENDEDOR').AsString := DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsString;
          XCOD_VENDEDOR := DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger;
          DMServ.TOrd.FieldByName('COD_FORMPAG').AsString := DMSAIDA.TOrc.FieldByName('COD_FORMPAG').AsString;
          DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger := DMSAIDA.TOrc.FieldByName('COD_EQUIPAMENTO').AsInteger;
          DMServ.TOrd.FieldByName('OBSERVACAO').AsString := DMSAIDA.TOrc.FieldByName('OBS').AsString;
          DMServ.TOrd.FieldByName('TOTORD').AsCurrency := DMSAIDA.TOrc.FieldByName('VLRTOTAL').AsCurrency;
          DMServ.TOrd.FieldByName('TOTPROD').AsCurrency := DMSAIDA.TOrc.FieldByName('VLRPROD').AsCurrency;
          DMServ.TOrd.FieldByName('TOTSERV').AsCurrency := DMSAIDA.TOrc.FieldByName('VLRSERV').AsCurrency;
          DMServ.TOrd.FieldByName('TOTDESP').AsCurrency := DMSAIDA.TOrc.FieldByName('VLRDESP').AsCurrency;
          DMServ.TOrd.FieldByName('DESCPROD').AsCurrency := DMSAIDA.TOrc.FieldByName('DESCPROD').AsCurrency;
          DMServ.TOrd.FieldByName('DESCSERV').AsCurrency := DMSAIDA.TOrc.FieldByName('DESCSERV').AsCurrency;
          DMServ.TOrd.Post;

        except
          XSUCCESS := False;
          XDESCERRO := ' Cabeçalho de orçamento;';
        end;

        ////////////////////////////////////////////////////
      //FILTRA DESPESAS DE ORÇAMENTO PARA SEREM IMPORTADOS
        ////////////////////////////////////////////////////
        try
          DMESTOQUE.Alx.Close;
          DMESTOQUE.ALX.SQL.Clear;
          //Se for orçamento de mecanica importa as despesas como serviços
          if DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString = 'MECANICA' then
            DMESTOQUE.ALX.SQL.Add('select * From despadic Where (despadic.gerador=' + #39 + 'ORCMEC' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)')
          else
            DMESTOQUE.ALX.SQL.Add('select * From despadic Where (despadic.gerador=' + #39 + 'ORCAMENTO' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
          DMESTOQUE.ALX.ParamByName('COD_GERADOR').AsString := DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
          DMESTOQUE.ALX.Open;
          //Percorre os itens de Despesas do orçamento importando para ordem
          DMESTOQUE.ALX.First;
          while not DMESTOQUE.ALX.Eof do
          begin
            try
              if DMESTOQUE.Alx.FieldByName('COD_EQUIPE').AsString = '' then
                MessageDlg('A despesa "' + DMESTOQUE.ALX.FieldByName('DESPESA').AsString + '" será inserida sem uma equipe informada.', mtWarning, [mbOK], 0);

              DMServ.IBT.CommitRetaining;
              DMServ.Alx.Close;
              DMServ.Alx.SQL.Clear;
              DMServ.Alx.SQL.Add(' insert into despadic(COD_GERADOR, GERADOR, DESPESA, QTD, VLRREAL, VLRFINAL, VLRTOTFIN, DESCONTO, MARCA, ');
              DMServ.Alx.SQL.Add('                      UNIDADE, COD_EQUIPE, COD_FUNCIONARIO, CST, COMISSAO, COD_SERVICO) ');
              DMServ.Alx.SQL.Add('             values(:COD_GERADOR, :GERADOR, :DESPESA, :QTD, :VLRREAL, :VLRFINAL, :VLRTOTFIN, :DESCONTO, :MARCA, ');
              DMServ.Alx.SQL.Add('             :UNIDADE, :COD_EQUIPE, :COD_FUNCIONARIO, :CST, :COMISSAO, :SERVICO) ');
              DMServ.Alx.ParamByName('COD_GERADOR').AsInteger := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
              DMServ.Alx.ParamByName('GERADOR').AsString := 'ORDEM';
              DMServ.Alx.ParamByName('DESPESA').AsString := DMESTOQUE.ALX.FieldByName('DESPESA').AsString;
              DMServ.Alx.ParamByName('QTD').AsCurrency := DMESTOQUE.ALX.FieldByName('QTD').AsCurrency;
              DMServ.Alx.ParamByName('VLRFINAL').AsCurrency := DMESTOQUE.ALX.FieldByName('VLRFINAL').AsCurrency;
              DMServ.Alx.ParamByName('VLRTOTFIN').AsCurrency := DMESTOQUE.ALX.FieldByName('VLRTOTFIN').AsCurrency;
              DMServ.Alx.ParamByName('DESCONTO').AsCurrency := DMESTOQUE.ALX.FieldByName('desconto').AsCurrency;
              DMServ.Alx.ParamByName('COD_EQUIPE').AsString := DMESTOQUE.Alx.FieldByName('COD_EQUIPE').AsString; //FrmEquipe.EDCodigo.Text;
              DMServ.Alx.ParamByName('SERVICO').AsString := DMESTOQUE.Alx.FieldByName('COD_SERVICO').AsString;
              DMServ.Alx.ExecSQL;
              DMServ.IBT.CommitRetaining;
            except
              on E: Exception do
              begin
                if E.Message = 'attempt to store duplicate value (visible to active transactions) in unique index "DESPADIC_IDX1"' then
                begin
                  try
                    DMServ.IBT.RollbackRetaining;
                    //Jônatas 12/06/2013
                    //pega o valor do gerador e armazena em XCOD
                    DMMACS.TALX.Close;
                    DMMACS.TALX.SQL.Clear;
                    DMMACS.TALX.SQL.Add('  select gen_id(GEN_DESPADIC_ID, 0) as codigo from rdb$database ');
                    DMMACS.TALX.Open;
                    DMMACS.TALX.Close;
                    DMMACS.TALX.SQL.Clear;
                    DMMACS.TALX.SQL.Add('SET GENERATOR GEN_DESPADIC_ID TO ' + IntToStr(DMMACS.TALX.FieldByName('codigo').AsInteger + 100));
                    DMMACS.TALX.ExecSQL;
                    DMMACS.Transaction.CommitRetaining;
                    DMServ.IBT.CommitRetaining;
                    ShowMessage('Um erro foi encontrado e corrigido. Tente novamente.');
                    //Jônatas 26/09/2013 - Não limpar os campos da tela, mas fazer as refiltragens pra garantir que ão foram feitas alterações erradas
                    FiltraSlave;
                    //Chama função para calcular descontos
                    EfetuaDesconto('GERAL', 'PERCENTO');
                    EDesricaoServico.SetFocus;
                    Exit;
                  except
                    ShowMessage('Falha ao gerar código do serviço.' + #13 + ' Foi encontrado um erro ao inserir o serviço. Entre em contato com o suporte e informe o erro ocorrido');
                    DMMACS.Transaction.RollbackRetaining;
                    DMServ.IBT.RollbackRetaining;
                  end;
                end
                else
                begin
                  MessageDlg('O ITEM NÃO PODE SER INSERIDO. VERIFIQUE!' + #13 + 'Erro: 1348', mtWarning, [mbOK], 0);
                  DMServ.IBT.RollbackRetaining;
                  FiltraSlave;
                  //Chama função para calcular descontos
                  EfetuaDesconto('GERAL', 'PERCENTO');
                  Exit;
                end;
              end;
            end;
            DMESTOQUE.ALX.Next;
          end;
        except
          XSUCCESS := False;
          XDESCERRO := XDESCERRO + ' em importar despesas;';
        end;

        // apenas repassa a forma de pagamento para os campos que logo mais serão usados para conferir valores
        if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMSAIDA.TOrc.FieldByName('COD_FORMPAG').AsString, '') = true then
        begin
          FrmFormPag1.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('cod_formpag').AsString;
          FrmFormPag1.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('descricao').AsString;
        end;

        ////////////////////////////////////////////////////
      //FILTRA SERVIÇOS DE ORÇAMENTO PARA SEREM IMPORTADOS
        ////////////////////////////////////////////////////
        try
          DMESTOQUE.TSlaveServ.Close;
          DMESTOQUE.TSlaveServ.SQL.Clear;
          DMESTOQUE.TSlaveServ.SQL.Add('select itservorc.cod_itservorc, itservorc.cod_orcamento, itservorc.cod_servico, ');
          DMESTOQUE.TSlaveServ.SQL.Add('itservorc.desconto, itservorc.qtd, itservorc.vlrtotal AS TOTAL, itservorc.vlrunit,  subservico.vlrunit AS VLRUNITCUSTO, ');
          DMESTOQUE.TSlaveServ.SQL.Add('subservico.descricao ');
          DMESTOQUE.TSlaveServ.SQL.Add('from itservorc left join subservico ON itservorc.cod_servico = subservico.cod_subservico ');
          DMESTOQUE.TSlaveServ.SQL.Add('Where itservorc.cod_orcamento = :CODORDEM ');
          DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsString := DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
          DMESTOQUE.TSlaveServ.SQL.Text;
          DMESTOQUE.TSlaveServ.Open;

          //Percorre os itens de serviço do orçamento importando para ordem
          DMESTOQUE.TSlaveServ.First;
          while not DMESTOQUE.TSlaveServ.Eof do
          begin
            //Inserir serviço a lista de serviços
            XCOD_ITSERV := InserReg(DMSERV.TSOrd, 'ITSERVORD', 'COD_ITSERVORD');
            DMSERV.TSOrd.FieldByName('COD_ITSERVORD').AsInteger := XCOD_ITSERV;
            DMSERV.TSOrd.FieldByName('COD_ORDEM').AsInteger := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
            DMSERV.TSOrd.FieldByName('COD_SERVICO').AsInteger := DMESTOQUE.TSlaveServ.FieldByName('COD_SERVICO').AsInteger;
            DMSERV.TSOrd.FieldByName('QTD').AsCurrency := DMESTOQUE.TSlaveServ.FieldByName('QTD').AsCurrency;
            DMSERV.TSOrd.FieldByName('DESCONTO').AsCurrency := DMESTOQUE.TSlaveServ.FieldByName('DESCONTO').AsCurrency;
            DMSERV.TSOrd.FieldByName('VLRUNIT').AsCurrency := DMESTOQUE.TSlaveServ.FieldByName('VLRUNIT').AsCurrency;
            DMSERV.TSOrd.FieldByName('VLRUNITCUSTO').AsCurrency := DMESTOQUE.TSlaveServ.FieldByName('VLRUNITCUSTO').AsCurrency;
            DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency := DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
            DMSERV.TSOrd.FieldByName('COD_FUNCIONARIO').AsInteger := DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsInteger;
            DMSERV.TSOrd.FieldByName('DATA').AsDateTime := Date();
            DMSERV.TSOrd.FieldByName('PIS').AsCurrency := (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMMACS.TLoja.FieldByName('PIS').AsCurrency) / 100;
            DMSERV.TSOrd.FieldByName('CONTSOC').AsCurrency := (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMMACS.TLoja.FieldByName('CONTSOC').AsCurrency) / 100;
            DMSERV.TSOrd.FieldByName('IR').AsCurrency := (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMMACS.TLoja.FieldByName('IMPREND').AsCurrency) / 100;
            DMSERV.TSOrd.FieldByName('COFINS').AsCurrency := (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMMACS.TLoja.FieldByName('COFINS').AsCurrency) / 100;
            DMSERV.TSOrd.FieldByName('INSS').AsCurrency := (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMMACS.TLoja.FieldByName('INSS').AsCurrency) / 100;
            DMSERV.TSOrd.FieldByName('ISSQN').AsCurrency := (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMMACS.TLoja.FieldByName('ISSQN').AsCurrency) / 100;
            DMSERV.TSOrd.FieldByName('OUTROS').AsCurrency := (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMMACS.TLoja.FieldByName('OUTROIMPSERV').AsCurrency) / 100;

            // ou seja, se existe vendedor no orcamento passa por esse codigo abaixo
            if XCOD_VENDEDOR > 0 then
            begin
              FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsString, '');

              if FrmFormPag1.EdDescricao.Text = 'À VISTA' then
              begin
                DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency) / 100;
              end
              else
              begin
                DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPSER').AsCurrency) / 100;
              end;
            end
            else
            begin
              DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency := 0;
            end;

            DMSERV.TSOrd.FieldByName('TOTENCARGO').AsCurrency := DMSERV.TSOrd.FieldByName('PIS').AsCurrency + DMSERV.TSOrd.FieldByName('CONTSOC').AsCurrency + DMSERV.TSOrd.FieldByName('IR').AsCurrency + DMSERV.TSOrd.FieldByName('COFINS').AsCurrency + DMSERV.TSOrd.FieldByName('INSS').AsCurrency + DMSERV.TSOrd.FieldByName('ISSQN').AsCurrency + DMSERV.TSOrd.FieldByName('OUTROS').AsCurrency;
            DMSERV.TSOrd.FieldByName('LUCMOE').AsCurrency := DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency - DMSERV.TSOrd.FieldByName('TOTENCARGO').AsCurrency - DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency;
            DMSERV.TSOrd.FieldByName('LUCPER').AsCurrency := (DMSERV.TSOrd.FieldByName('LUCMOE').AsCurrency * 100) / DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
            DMServ.TSOrd.Post;
            DMESTOQUE.TSlaveServ.Next;
          end;
        except
          XSUCCESS := False;
          XDESCERRO := XDESCERRO + ' em importar serviços;';
        end;

        /////////////////////////////////////////////////////
      //FILTRA PRODUTOS DE ORÇAMENTO PARA SEREM IMPORTADOS
        /////////////////////////////////////////////////////
        try
          DMESTOQUE.TSlave.Close;
          DMESTOQUE.TSlave.SQL.Clear;
          DMESTOQUE.TSlave.SQL.Add('Select itprodorC.cod_itprodorC, itprodorC.cod_orcamento, itprodorc.cod_estoque,  itprodorc.qtd, itprodorc.vlrtotal AS TOTAL, ');
          DMESTOQUE.TSlave.SQL.Add('itprodorc.desconto, itprodorc.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, subproduto.cod_cst, ');
          DMESTOQUE.TSlave.sql.Add(' subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS PRIMCOD, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL2').AsString + ' AS SEGCOD ');
          DMESTOQUE.TSlave.SQL.Add('From itprodorc left Join estoque on itprodorc.cod_estoque = estoque.cod_estoque ');
          DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
          DMESTOQUE.TSlave.SQL.Add('Where itprodorc.cod_orcamento = :CODORDEM ');
          DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString := DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
          DMESTOQUE.TSlave.Open;
          //Percorre os itens de produto do orçamento importando para pedido
          DMESTOQUE.TSlave.First;
          while not DMESTOQUE.TSlave.Eof do
          begin
            //ENCONTRA ESTOQUE
            if FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '') = False then
            begin
              Mensagem('OPÇÃO BLOQUEADA', 'Não foi possível encontrar a tabela estoque para o produto:' + #13 + DMESTOQUE.TSlave.FieldByName('descricao').AsString, '', 1, 1, False, 'a');
              XSUCCESS := False;
              Exit;
            end;

            //Valida quanto ao estoque físico (veirifca se ha estoque suficiente
            //Verifica se o desconto dado no produto é superior ao permitido
            if DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency = 0 then
            begin //Se não ha restrições de desconto do produto em empresa procura em produto
              if (DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency > DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency) then
              begin
                if Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c') = 2 then
                begin
                  if ControlAccess('DESCPMAIOR', '') = False then
                  begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                    //Processo de importação recusado
                    XSUCCESS := False;
                  end;
                end
                else
                begin
                  //Processo de importação recusado
                  XSUCCESS := False;
                end;
              end;
            end
            else
            begin
              if (DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency > DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency) then
              begin
                if Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c') = 2 then
                begin
                  if ControlAccess('DESCPMAIOR', '') = False then
                  begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                    //Processo de importação recusado
                    XSUCCESS := False;
                  end;
                end;
              end;
            end;
            if DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString = '1' then
            begin //se o estoque deve ser atualizado no pedido executa procedimento
              if DMMacs.TLoja.FieldByName('VENDESTNEG').AsString = '0' then
              begin
                if DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency > DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency then
                begin //o estoque que esta sendo negociado é maior que o estoque físico e segundo configuraçãoes isto não é permitido
                  Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação. Produto:' + #13 + DMESTOQUE.TSlave.FieldByName('descricao').AsString, '', 1, 1, False, 'a');
                  XSUCCESS := False;
                  FiltraSlave;
                  Exit;
                end;
              end;
            end;
            //Inserir Produto a lista do ordem
            XCodSlave := InserReg(DMServ.TPOrd, 'ITPRODORD', 'COD_ITPRODORD');
            DMServ.TPOrd.FieldByName('COD_ITPRODORD').AsInteger := XCodSlave;
            DMServ.TPOrd.FieldByName('COD_ORDEM').AsInteger := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
            DMServ.TPOrd.FieldByName('NUMREQ').AsString := 'ORC-' + DMSAIDA.TOrc.FieldByName('NUMORC').AsString;
            DMServ.TPOrd.FieldByName('COD_FUNCIONARIO').AsInteger := DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsInteger;
            DMServ.TPOrd.FieldByName('DATA').AsString := DateToStr(Date());
            DMServ.TPOrd.FieldByName('VALCUSTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
            DMServ.TPOrd.FieldByName('VALREP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
            DMServ.TPOrd.FieldByName('COEFDIV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
            DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency * EDQuantidade.ValueNumeric;
            CalcLuc(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency, DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency, DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency);
            DMServ.TPOrd.FieldByName('LUCMOE').AsCurrency := AlxLUCMOE;
            DMServ.TPOrd.FieldByName('VLRVENDBD').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;
            DMServ.TPOrd.FieldByName('LUCPER').AsCurrency := AlxLUCPER;
            DMServ.TPOrd.FieldByName('LUCREL').AsCurrency := ALXLUCREAL;
            try

              // se tiver um funcionario selecionado
              if XCOD_VENDEDOR > 0 then
              begin
                // filtra estoque para buscar os valores das porcentagens das comissoes
                FiltraTabela(DMESTOQUE.Alx4, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString, '');

                // se na loja esta configurado p buscar preço somente a prazo
                if DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '1' then
                begin
                  // se na loja esta configurado p buscar do funcionario
                  if (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0') then
                  begin
                    // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                    FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(XCOD_VENDEDOR), '');

                    DMPESSOA.TFunCargo.Last; //VAI P/ O ULTIMO CARGO CADASTRADO

                    //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                    DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency) / 100;
                  end
                  else
                  begin
                    //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                    DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) / 100;
                  end;
                end
                else
                begin
                  // se na loja esta configurado p buscar do funcionario
                  if (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0') then
                  begin
                    // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                    FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(XCOD_VENDEDOR), '');

                    DMPESSOA.TFunCargo.Last; //VAI P/ O ULTIMO CARGO CADASTRADO

                    // sse a forma de pagamento for a vista
                    if FrmFormPag1.EdDescricao.Text = 'À VISTA' then
                    begin
                      //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                      DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency) / 100;
                    end
                    else
                    begin
                      //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                      DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency) / 100;
                    end;
                  end
                  else
                  begin
                    // sse a forma de pagamento for a vista
                    if FrmFormPag1.EdDescricao.Text = 'À VISTA' then
                    begin
                      //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                      DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) / 100;
                    end
                    else
                    begin
                      //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                      DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) / 100;
                    end;
                  end;
                end;
              end;
            except
              DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency := 0;
            end;
            DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
            DMServ.TPOrd.FieldByName('COD_CST').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_CST').AsInteger;
            DMServ.TPOrd.FieldByName('QTD').Value := DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
            DMServ.TPOrd.FieldByName('DESCONTO').Value := DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency;
            DMServ.TPOrd.FieldByName('VLRUNIT').Value := DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency;
            DMServ.TPOrd.FieldByName('TOTAL').Value := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
            //Tenta gravar as informações
            try
              //Atualiza Estoque
              DMEstoque.TEstoque.edit;
              DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
              //atualiza estoque físico
              DMEstoque.TEstoque.FieldByName('ESTFISICO').Value := DMEstoque.TEstoque.FieldByName('ESTFISICO').Value - DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
              //Atualiza data da ultima venda
              DMEstoque.TEstoque.FieldByName('ULTVENDA').AsString := DateToStr(Date());
              DMESTOQUE.TEstoque.Post;

              //ATUALIZA CUSTO DE ESTOQUE
              DMESTOQUE.CalcCustMed(DMESTOQUE.TEstoque.FieldByNAme('COD_ESTOQUE').AsInteger, 'S', DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency, DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency * DMEstoque.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency);

              DMESTOQUE.TEstoque.Edit;
              //Atualiza saldo de estoque
              DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency := (DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency + DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency) - DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency;
              DMESTOQUE.TEstoque.Post;

              DMServ.TPOrd.Edit;
              DMServ.TPOrd.Post;
              DMEstoque.TEstoque.Edit;
              DMEstoque.TEstoque.Post;
              DMESTOQUE.TransacEstoque.CommitRetaining;
            except
              Mensagem('OPÇÃO BLOQUEADA', 'Problemas ao atualizar o estoque. Produto:' + #13 + DMESTOQUE.TSlave.FieldByName('subproduto.descricao').AsString, '', 1, 1, False, 'a');
              XSUCCESS := False;
              Exit;
            end;
            DMESTOQUE.TSlave.Next;
          end;
        except
          XSUCCESS := False;
          XDESCERRO := ' em importar produtos'
        end;
        if XSUCCESS = True then
        begin
          DMServ.TOrd.Edit;
          DMServ.TOrd.Post;
          DMESTOQUE.TransacEstoque.CommitRetaining;
          DMServ.IBT.CommitRetaining;
          DMServ.IBT.CommitRetaining;
          FBEquipPlaca.EDCodigo.Text := '';
          FBEquipPlaca.EdDescricao.Text := '';
          FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCODNEWORDEM), '');
          BtnConsultar.Click;
          DMServ.TOrd.Edit;
          DMServ.TOrd.FieldByName('EDIT').AsString := '1';
          DMServ.TOrd.Post;

          {DMSAIDA.TOrc.Edit;
          DMSAIDA.TOrc.FieldByName('EXPORTA').AsString := '1';
          DMSAIDA.TOrc.Post;
          DMSAIDA.IBT.CommitRetaining;}
        end
        else
        begin
          Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao importar orçamento. Verifique as informações!', 'Problemas ' + XDESCERRO, 1, 1, True, 'a');
          DMESTOQUE.TransacEstoque.RollbackRetaining;
          DMESTOQUE.TransacEstoque.RollbackRetaining;
          DMSAIDA.IBT.RollbackRetaining;
          BtnCancelar.Click;
        end;
      end
      else
      begin
        Mensagem('INFORMAÇÃO!', 'Não foi possivel importar o orçamento solicitado! A tabela de orçamento não localizou registro. Tente reiniciar o sistema!', '', 1, 1, False, 'a');
        Exit;
      end;
    end;
  end;
  FiltraSlave;
  EfetuaDesconto('GERAL', 'PERCENTO');
end;

procedure TFOrdemMec.Duplicata1Click(Sender: TObject);
begin
  inherited;
  if Mensagem('CONFIRMAÇÃO !', 'Imprimir Duplicata para a ordem?', '', 2, 3, False, 'c') = 2 then
  begin
    //filtra ordem correta
    FiltraTabela(DMServ.TOrd, 'ordem', 'cod_ordem', DMServ.WOrdem.FieldByName('cod_ordem').AsString, '');
    //seleciona o ctas a receber pertencente a ordem
        { DMFINANC.TAlx.Close;
         DMFINANC.TAlx.SQL.Clear;
         DMFINANC.TAlx.SQL.Add(' SELECT ordem.cod_ordem, ctareceber.cod_ctareceber, parcelacr.numparc, ctareceber.numdoc, ordem.totord, ordem.numfiscal, parcelacr.numordem, parcelacr.valor, parcelacr.dtvenc, ');
         DMFINANC.TAlx.SQL.Add(' docfisord.dtemissao, ordem.totprod, ordem.totserv, parcelacr.valext, vwcliente.nome, vwcliente.cpfcnpj, ');
         DMFINANC.TAlx.SQL.Add(' vwcliente.endereco, vwcliente.cidade, vwcliente.bairro, parcelacr.dtvenc, vwcidade.uf, pessoa.cep, pessoa.bairro, pessoaj.insc_est, pessoaj.razao_social from parcelacr ');
         DMFINANC.TAlx.SQL.Add(' left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
         DMFINANC.TAlx.SQL.Add(' left join ordem on ctareceber.cod_gerador = ORDEM.cod_ordem ');
         DMFINANC.TAlx.SQL.Add(' left join docfisord on ordem.cod_ordem = docfisord.cod_ordem' );
         DMFINANC.TAlx.SQL.Add(' left join vwcliente on ctareceber.cod_cliente = vwcliente.cod_cliente ');
         DMFINANC.TAlx.SQL.Add(' left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
         DMFINANC.TAlx.SQL.Add(' left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
         DMFINANC.TAlx.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
         DMFINANC.TAlx.SQL.Add(' where (ordem.cod_ordem=:codigo) and (ctareceber.tipogerador='+#39+'ORD'+#39+')');
         DMFINANC.TAlx.ParamByName('CODIGO').AsString:=DMServ.TOrd.FieldByName('cod_ordem').AsString;
         DMFINANC.TAlx.Open; }

         //Paulo 30/05/2011: Foi quebrado a sql acima para agilizar o tempo da consulta
    DMFINANC.TAlx.Close;
    DMFINANC.TAlx.SQL.Clear;
    DMFINANC.TAlx.SQL.Add('SELECT  ctareceber.cod_ctareceber, parcelacr.numparc, ctareceber.numdoc,  parcelacr.numordem, parcelacr.valor, parcelacr.dtvenc,');
    DMFINANC.TAlx.SQL.Add('vwcliente.nome, vwcliente.cpfcnpj,vwcliente.endereco, vwcliente.cidade, vwcliente.bairro,');
    DMFINANC.TAlx.SQL.Add(' vwcidade.uf, pessoa.cep, pessoa.bairro, pessoaj.insc_est, pessoaj.razao_social,');
    DMFINANC.TAlx.SQL.Add('parcelacr.valext,parcelacr.dtvenc,ctareceber.cod_cliente from parcelacr');
    DMFINANC.TAlx.SQL.Add('left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
    DMFINANC.TAlx.SQL.Add(' left join vwcliente on ctareceber.cod_cliente = vwcliente.cod_cliente');
    DMFINANC.TAlx.SQL.Add(' left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade');
    DMFINANC.TAlx.SQL.Add(' left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa');
    DMFINANC.TAlx.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa');
    DMFINANC.TAlx.SQL.Add(' where (ctareceber.cod_gerador=:CODIGO) and (ctareceber.tipogerador=' + #39 + 'ORD' + #39 + ')');
    DMFINANC.TAlx.ParamByName('CODIGO').AsString := DMServ.TOrd.FieldByName('cod_ordem').AsString;
    DMFINANC.TAlx.Open;

    DMSAIDA.TAlx.SQL.Clear;
    DMSAIDA.TAlx.SQL.Add('select ordem.cod_ordem,ordem.totord, ordem.numfiscal, ordem.numfiscalnfse, ordem.totprod, ordem.totserv, docfisord.dtemissao from ordem');
    DMSAIDA.TAlx.SQL.Add('left join docfisord on ordem.cod_ordem = docfisord.cod_ordem ');
    DMSAIDA.TAlx.SQL.Add('where ordem.cod_ordem=:CODIGO');
    DMSAIDA.TAlx.ParamByName('CODIGO').AsString := DMServ.TOrd.FieldByName('cod_ordem').AsString;
    DMSAIDA.TAlx.Open;

    if not DMFINANC.TAlx.IsEmpty then
    begin
      DMCONTA.TParcCR.Close;
      DMCONTA.TParcCR.SQL.Clear;
      DMCONTA.TParcCR.SQL.Add(' update parcelacr set parcelacr.numfisc=:numero where parcelacr.cod_ctareceber=:codigo ');
      DMCONTA.TParcCR.ParamByName('numero').AsString := DMSAIDA.TAlx.FieldByName('numfiscal').AsString;
      DMCONTA.TParcCR.ParamByName('codigo').AsString := DMFINANC.TAlx.FieldByName('cod_ctareceber').AsString;
      DMCONTA.TParcCR.ExecSQL;
      DMCONTA.IBT.CommitRetaining;
      {
      //receleciona as contas
      DMFINANC.TAlx.Close;
      DMFINANC.TAlx.SQL.Clear;
      DMFINANC.TAlx.SQL.Add(' SELECT ordem.cod_ordem, ctareceber.cod_ctareceber, parcelacr.numparc, ctareceber.numdoc, ordem.totord, ordem.numfiscal, parcelacr.numordem, parcelacr.valor, parcelacr.dtvenc, ');
      DMFINANC.TAlx.SQL.Add(' docfisord.dtemissao, ordem.totprod, ordem.totserv, parcelacr.valext, vwcliente.nome, vwcliente.cpfcnpj, ');
      DMFINANC.TAlx.SQL.Add(' vwcliente.endereco, vwcliente.cidade,  parcelacr.dtvenc, vwcidade.uf, pessoa.cep, pessoa.bairro, pessoaj.insc_est, pessoaj.razao_social from parcelacr ');
      DMFINANC.TAlx.SQL.Add(' left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
      DMFINANC.TAlx.SQL.Add(' left join ordem on ctareceber.cod_gerador = ORDEM.cod_ordem ');
      DMFINANC.TAlx.SQL.Add(' left join docfisord on ordem.cod_ordem = docfisord.cod_ordem' );
      DMFINANC.TAlx.SQL.Add(' left join vwcliente on ctareceber.cod_cliente = vwcliente.cod_cliente ');
      DMFINANC.TAlx.SQL.Add(' left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
      DMFINANC.TAlx.SQL.Add(' left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
      DMFINANC.TAlx.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
      DMFINANC.TAlx.SQL.Add(' where (ordem.cod_ordem=:codigo) and (ctareceber.tipogerador='+#39+'ORD'+#39+')');
      DMFINANC.TAlx.ParamByName('CODIGO').AsString:=DMServ.TOrd.FieldByName('cod_ordem').AsString;
      DMFINANC.TAlx.Open;
      }

   //seleciona empresa
      FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', '', '', '');
      //SELECIONA CIDADE PARA A EMPRESA
      FiltraTabela(DMpessoa.TALX, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
      QRDUPLICATA.Preview;
    end
    else
    begin
      MessageDlg('A ORDEM DE SERVIÇO NÃO POSSUI CONTAS PENDENTES', mtWarning, [mbOK], 0);
    end;
  end;

end;

procedure TFOrdemMec.QRDUPLICATABeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  try
    QrImageLogo.Picture.LoadFromFile(DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString);
    QrImageLogo02.Picture.LoadFromFile(DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString);
  except
  end;
end;

procedure TFOrdemMec.BtnLiberaExportaClick(Sender: TObject);
begin
  inherited;
  //LIBERA EXPORTAÇÃO DE ORDENS
  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add('update empresa set empresa.emexporta=' + #39 + '0' + #39);
  DMMACS.TALX.ExecSQL;
  DMMACS.Transaction.CommitRetaining;
end;

procedure TFOrdemMec.OrdporSubstituioTributria1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  FMenu.TIPOREL := 'ORDST';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
  FMenu.TIPOREL := '';
end;

procedure TFOrdemMec.BitBtn1Click(Sender: TObject);
begin
  inherited;
  // verifica se jah existe ordem com o mesmo numero
  DMServ.TAlx1.Close;
  DMServ.TAlx1.SQL.Clear;
  DMServ.TAlx1.SQL.Add('select * from ordem where (ordem.numero = :numero)');
  DMServ.TAlx1.ParamByName('numero').AsString := DBNumOrd.Text;
  DMServ.TAlx1.Open;

  if (not DMServ.TAlx1.IsEmpty) and (DMServ.TAlx1.FieldByName('cod_ordem').AsInteger <> XCOD_ORDEM) then
  begin
    Mensagem('   A T E N Ç Ã O   ', 'Já existe outra ordem de serviço com o mesmo número. Por favor, altere o valor.', '', 1, 1, false, 'I');
    DBNumOrd.SetFocus;
    Exit;
  end;

  //VALIDA CAMPOS NECESSÁRIOS
  if (XCOD_CLIENTE = -1) or (FrmCliente.EDCodigo.Text = '') then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um Cliente para Ordem de Serviço', '', 1, 1, False, 'a');
    FrmCliente.EDCodigo.SetFocus;
    Exit;
  end;

  if ((XCOD_EQUIPAMENTO = -1) or (FBEquipPlaca.EDCodigo.Text = '')) and (CBVENDABALCAO.Checked = FALSE) then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe uma placa para Ordem de Serviço', '', 1, 1, False, 'a');
    FBEquipPlaca.EDCodigo.SetFocus;
    Exit;
  end;

  if (XCOD_FORMPAG = -1) or (FrmFormPag1.EDCodigo.Text = '') then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe a Forma de Pagamento para a Ordem de Serviço', '', 1, 1, False, 'a');
    FrmFormPag1.EDCodigo.SetFocus;
    Exit;
  end;

  if XCOD_CLIENTE = DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger then
  begin
    if FrmFormPag1.EdDescricao.Text <> 'À VISTA' then
    begin
      Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
      FrmFormPag1.BTNOPEN.SetFocus;
      Exit;
    end;
  end;

  if (DBBox.Text = '') and (CBVENDABALCAO.Checked = False) then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe o box para Ordem de Serviço', '', 1, 1, False, 'a');
    Exit;
  end;

  //VERIFICA SE O PEDIDO JÁ POSSUI DOC FI PARA EDITAR O VALOR
  if FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido=' + #39 + IntToStr(XCOD_ORDEM) + #39 + ')') = True then
  begin
    //EDITAL FISCAL EXISTENTE
    DMSAIDA.TFiscPV.Edit;
    DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency := DMServ.TOrd.FieldByName('VALOR').AsCurrency;
    DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency := DMServ.TOrd.FieldByName('VALOR').AsCurrency;
    DMSAIDA.TFiscPV.Post;
  end;

  DMServ.TOrd.Edit;
  if CBGarantia.Checked then
    DMServ.TOrd.FieldByName('GARANTIA').AsString := '1'
  else
    DMServ.TOrd.FieldByName('GARANTIA').AsString := '';

  //INFORMA CODIGO DO USUARIO
  DMServ.TOrd.FieldByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
  //INFORMA CODIGO DO CLIENTE
  DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
  //INFORMA CODIGO DO EQUIPAMENTO
  DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO;
  DMServ.TOrd.Post;
  //FILTRA VENDEDOR
  FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
  DMServ.TOrd.Edit;
  //INFORMA CODIGO DO VENDEDOR
  DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger := XCOD_VENDEDOR;
  //INFORMA CODIGO DO RESPONSÁVEL
  DMServ.TOrd.FieldByName('COD_FUNCIONARIO').AsInteger := DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
  //INFORMA CODIGO DA LOJA
  DMServ.TOrd.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
  //INFORMA FORMA DE PAGAMENTO
  DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger := XCOD_FORMPAG;
  DMServ.TOrd.FieldByName('observacao').AsString := MObs.Lines.Text;
  DMServ.TOrd.FieldByName('OBSORDEM').AsString := MObsOrdem.Lines.Text;
  //GRAVA TOTAIS
  DMServ.TOrd.FieldByName('TOTORD').AsCurrency := EdValorOrd.ValueNumeric;
  DMServ.TOrd.FieldByName('TOTPROD').AsCurrency := EdtotalProd.ValueNumeric;
  DMServ.TOrd.FieldByName('TOTSERV').AsCurrency := EdTotalserv.ValueNumeric;
  DMServ.TOrd.FieldByName('TOTDESP').AsCurrency := EdTotDesp.ValueNumeric;
  DMServ.TOrd.FieldByName('DESCONTO').AsCurrency := EdDescTOrdem.ValueNumeric;
  DMServ.TOrd.FieldByName('DESCPROD').AsCurrency := EdDescTProd.ValueNumeric;
  DMServ.TOrd.FieldByName('DESCSERV').AsCurrency := EdDescTServ.ValueNumeric;
  //Informa Situação do pedido
  DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
  DMServ.TOrd.FieldByName('EDIT').AsString := '0';
  if (CBVENDABALCAO.Checked = true) and (DMServ.TOrd.FieldByName('BOX').AsString = '') then
    DMServ.TOrd.FieldByName('BOX').AsString := '-1';
  if (CBVENDABALCAO.Checked = true) then
    DMServ.TOrd.FieldByName('LOCALAT').AsString := 'BALCÃO';

  DMServ.TOrd.Post;
  //ALEX: 13/05/2009 - O TRECHO ABAIXO FOI COMENTADO  PEDIDO DA MERCESCAN
  //COMENTAR PAR MERCESCAN
  if (XCOD_EQUIPAMENTO > 0) then
  begin
    //verifica se o equipamento selecionado pertence ao cliente selecionado
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' select * from equipamento where equipamento.cod_equipamento=:codigo ');
    DMServ.TAlx1.ParamByName('codigo').AsString := DMServ.TOrd.FieldByName('cod_equipamento').AsString;
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      if (DMServ.TAlx1.FieldByName('cod_cliente').AsString <> DMServ.TOrd.FieldByName('cod_cliente').AsString) and ((DMServ.TAlx1.FieldByName('cod_cliente').AsString <> '') or (DMServ.TAlx1.FieldByName('cod_cliente').AsString <> '0')) then
      begin
        Mensagem('   A T E N Ç Ã O   ', 'O Equipamento selecionado na ordem não corresponde com o cliente selecionado. Altere por favor!', '', 1, 1, false, 'I');
        FrmCliente.EDCodigo.SetFocus;
        Exit;
      end;
    end
    else
    begin
      Mensagem('   A T E N Ç Ã O   ', 'O Equipamento selecionado na ordem não foi encontrado', '', 1, 1, false, 'I');
      Exit;
    end;
  end;

  try
    DMServ.IBT.CommitRetaining;
  except
    DMServ.IBT.RollbackRetaining;
  end;

  //FILTRA VIEW DE ORDEM PARA PODER IMPRIMIR
  FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
  if FiltraTabela(XView, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '') then
    PmRelatorio.Items[0].Click;
  BtnCancelarClick(Sender);
end;

procedure TFOrdemMec.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
end;

procedure TFOrdemMec.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  //Caso este codigo seja alterado, o mesmo codigo em edcodfabkeyup no bloco de tratamento de para ENTER (RETURN) tbm deve ser alterado
    //Refiltra a tabela vwsimilar de acordo com registro escolhido
  DMESTOQUE.WSimilar.Close;
  DMESTOQUE.WSimilar.SQL.Clear;
  DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where vwsimilar.cod_estoque=:Codigo');
  DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
  DMESTOQUE.WSimilar.Open;
  if not DMESTOQUE.WSimilar.IsEmpty then
  begin
    EscreveLabelsPROD;
    PListaProdutos.Visible := False;
    EDCodFab.Text := '';
    EDQuantidade.Text := '1,00';
    EDQuantidade.SetFocus;
  end
  else
  begin
    MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);
  end;

  EDCodFabEnter(sender);
end;

procedure TFOrdemMec.Valida1Click(Sender: TObject);
var
  XAuxA, XAuxB, XCount: Integer;
  Year, Month, Day: word;
begin
  inherited;
  //Djonathan 23/11/2009: SELECIONA O USUSARIO ATUAL DO PROGRAMA PARA VERIFICAÇÃO
  DMMACS.TUsuario.Close;
  DMMACS.TUsuario.SQL.Clear;
  DMMACS.TUsuario.SQL.Add('select * from usuario where usuario.codusuario = :codusuario');
  DMMAcs.TUsuario.ParamByName('CODUSUARIO').AsString := FMenu.LCODUSUARIO.Caption;
  DMMAcs.TUsuario.Open;

  //Djonathan 23/11/2009: SE VERDADEIRO ENTAO MENSAGEM, APENAS ADM PODE FAZER VERIFICACAO
  if (DMMACS.TUsuario.FieldByName('ADM').AsString <> '1') and (FMenu.LCODUSUARIO.Caption <> '111522') then
  begin
    MessageBox(0, 'Opção disponível apenas para o Administrador!', 'Atenção', MB_ICONWARNING or MB_OK);
    exit
  end;
  //Djonathan 23/11/2009: PASSOU PELO TESTE, ABRE PAINEL DE VALIDACOES E PREENCHE SEUS CAMPOS
  PInterfaceValidacoes.Visible := true;
  PInterfaceValidacoes.BringToFront;
  DMMACS.TEmpresa.Close;
  DMMACS.TEmpresa.Open;
  EDProxNota.Text := DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
  MBrechas.Lines.Text := '';
  MDuplicados.Lines.Text := '';

  //Djonathan 26/11/2009: MOSTRA ULTIMO E PRIMEIRO DIAS DO MES
  //meiro dia
  DecodeDate(Date(), Year, Month, Day);
  EDataInicial.Text := ('01' + '/' + IntToStr(Month) + '/' + IntToStr(Year));
  XInicialSQL := ('01' + '/' + IntToStr(Month) + '/' + IntToStr(Year));
  //Ultimo dia
  EDataFinal.Text := (IntToStr(UltDiaMes(Month, Year)) + '/' + IntToStr(Month) + '/' + IntToStr(Year));
  XFinalSql := (IntToStr(UltDiaMes(Month, Year)) + '/' + IntToStr(Month) + '/' + IntToStr(Year));

  XAuxA := EncontraValores('DOCFISORD', 'COD_DOCFISCORD', '', '', ' desc');
  XAuxB := EncontraValores('DOCFISSAIDA', 'COD_DOCFISC', '', '', ' desc');
  if (XAuxA > XAuxB) then
    XMax := IntToStr(XAuxA)
  else
    XMax := IntToStr(XAuxB);

  EDUltNota.Text := XMax;

end;

procedure TFOrdemMec.Button2Click(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Deseja mesmo alterar o número da proxima nota fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    DMSAIDA.TAlx.Close;
    DMSAIDA.TAlx.SQL.Clear;
    DMSAIDA.TAlx.SQL.Add('update empresa set prox_nf = :prox_nf');
    DMSAIDA.TAlx.ParamByName('prox_nf').AsInteger := StrToInt(EDProxNota.Text);
    DMSAIDA.TAlx.ExecSQL;
    DMSAIDA.IBT.CommitRetaining;
    DMSAIDA.TAlx.Open;
  end;
end;

procedure TFOrdemMec.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  PInterfaceValidacoes.Visible := false;
  PInterfaceValidacoes.SendToBack;
end;

procedure TFOrdemMec.BRastrearClick(Sender: TObject);
var
  XAuxC, XAuxD, XCount: Integer;
begin
  inherited;

  XInicialSQL := EDataInicial.Text;
  XFinalSQL := EDataFinal.Text;

  //Djonathan 23/11/2009: ENCONTRANDO MAXIMO E MINIMO
  XAuxC := EncontraValores('DOCFISORD', 'COD_DOCFISCORD', XInicialSQL, XFinalSQL, '');
  XAuxD := EncontraValores('DOCFISSAIDA', 'COD_DOCFISC', XInicialSQL, XFinalSQL, '');
  if ((XAuxD <= 0) or (XAuxC < XAuxD)) then
    XMin := IntToStr(XAuxC)
  else
  begin
    XMin := IntToStr(XAuxD);
  end;

  XAuxC := EncontraValores('DOCFISORD', 'COD_DOCFISCORD', XInicialSql, XFinalSql, ' desc');
  XAuxD := EncontraValores('DOCFISSAIDA', 'COD_DOCFISC', XInicialSQL, XFinalSQL, ' desc');
  if ((XAuxC > XAuxD)) then
    XMax := IntToStr(XAuxC)
  else
    XMax := IntToStr(XAuxD);

  //Djonathan 23/11/2009: VARRE AS TABELAS CODFISORD E DOCFISSAIDA ATRAVES DE NUMEROS QUE NAO ESTEJAM SENDO USADOS EM NOTAS
  for XCount := StrToInt(XMax) downto StrToInt(XMin) do
  begin
    if ((ComparaValores('DOCFISORD', 'COD_DOCFISCORD', XCount)) and (ComparaValores('DOCFISSAIDA', 'COD_DOCFISC', XCount))) then
      MBrechas.Lines.Add(intToStr(XCount));
    if ((not (ComparaValores('DOCFISORD', 'COD_DOCFISCORD', XCount))) and ((not (ComparaValores('DOCFISSAIDA', 'COD_DOCFISC', XCount))))) then
      MDuplicados.Lines.Add(intToStr(XCount));
    if (ComparaValoresInternos('DOCFISORD', 'VWORDEM', 'COD_ORDEM', 'COD_ORDEM', XCount) = true) then
      MDuplicados.Lines.Add(intToStr(XCount));
    if ((ComparaValoresInternos('DOCFISSAIDA', 'VWPEDV', 'COD_PEDVENDA', 'COD_PEDIDO', XCount) = true)) then
      MDuplicados.Lines.Add(intToStr(XCount));

  end;
end;

procedure TFOrdemMec.btnConfirmarClick(Sender: TObject);
var
  XCOD_PESSOAF, XCOD_PESSOAJ, XFlag: Integer;
begin
  inherited;
  //DJ 27/11/2009: VERIFICA SE USUARIO INFORMOU A PLACA
  if Length(Trim(edNome.Text)) <= 0 then
  begin
    Mensagem('   A T E N Ç Ã O   ', 'Informe um nome para o cliente!', '', 1, 1, false, 'I');
    edNome.SetFocus;
    Exit;
  end;

  if (Length(Trim(edPlaca.Text)) <= 0) and (CheckBox1.Checked = false) then
  begin
    Mensagem('   A T E N Ç Ã O   ', 'Informe a placa!', '', 1, 1, false, 'I');
    edPlaca.SetFocus;
    Exit;
  end;

  //   Try
  if XcontroleCtrlN = False then
  begin
    //SE O CLIENTE AINDA NÃO FOI CADASTRADO O SISTEMA DEVE CADASTRA-LO
    if not verificaPessoa(false) then
    begin
      //ATUALIZA OS CÓDIGOS TEMPORÁRIOS
      DMMACS.TCodigo.Close;
      DMMACS.TCodigo.SQL.Clear;
      DMMACS.TCodigo.SQL.Add('SELECT * FROM CODIGO');
      DMMACS.TCodigo.Open;
      XCOD_PESSOAF := DMMACS.TCodigo.FieldByName('cod_pessoaf').AsInteger;
      XCOD_PESSOAJ := DMMACS.TCodigo.FieldByName('cod_pessoaJ').AsInteger;
      XCOD_PESSOA := DMMACS.TCodigo.FieldByName('cod_pessoa').AsInteger;
      XCOD_CLIENTE := DMMACS.TCodigo.FieldByName('COD_CLIENTE').AsInteger;
      //XCOD_CIDADE:=DMMACS.TCodigo.FieldByName('COD_CIDADE').AsInteger;
      if edPlaca.Text <> '' then
        XCOD_EQUIPAMENTO := DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger
      else
        XCOD_EQUIPAMENTO := -1;

      //INICIA VALIDAÇÃO DOS CODIGOS
      //VALIDA CODIGO PESSOA
      XFlag := 0;
      while XFlag = 0 do
      begin
        DMPESSOA.TALX.Close;
        DMPESSOA.TALX.SQL.Clear;
        DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOA WHERE PESSOA.COD_PESSOA=:CODIGO');
        DMPESSOA.TALX.ParamByName('CODIGO').AsInteger := XCOD_PESSOA;
        DMPESSOA.TALX.Open;

        if not DMPESSOA.TALX.IsEmpty then
          XCod_Pessoa := XCod_Pessoa + 1
        else
          XFlag := 1;
      end;
      //VALIDA CODIGO PESSOA FISICA
      XFlag := 0;
      while XFlag = 0 do
      begin
        DMPESSOA.TALX.Close;
        DMPESSOA.TALX.SQL.Clear;
        DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAF WHERE PESSOAF.COD_PESSOAF=:CODIGO');
        DMPESSOA.TALX.ParamByName('CODIGO').AsInteger := XCod_PessoaF;
        DMPESSOA.TALX.Open;

        if not DMPESSOA.TALX.IsEmpty then
          XCod_PessoaF := XCod_PessoaF + 1
        else
          XFlag := 1;
      end;
      //VALIDA CODIGO PESSOA JURIDICA
      XFlag := 0;
      while XFlag = 0 do
      begin
        DMPESSOA.TALX.Close;
        DMPESSOA.TALX.SQL.Clear;
        DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAJ WHERE PESSOAJ.COD_PESSOAJ=:CODIGO');
        DMPESSOA.TALX.ParamByName('CODIGO').AsInteger := XCod_PessoaJ;
        DMPESSOA.TALX.Open;

        if not DMPESSOA.TALX.IsEmpty then
          XCod_PessoaJ := XCod_PessoaJ + 1
        else
          XFlag := 1;
      end;
      //VALIDA CODIGO CLIENTE
      XFlag := 0;
      while XFlag = 0 do
      begin
        DMPESSOA.TALX.Close;
        DMPESSOA.TALX.SQL.Clear;
        DMPESSOA.TALX.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE=:CODIGO');
        DMPESSOA.TALX.ParamByName('CODIGO').AsInteger := XCod_Cliente;
        DMPESSOA.TALX.Open;

        if not DMPESSOA.TALX.IsEmpty then
          XCod_Cliente := XCod_Cliente + 1
        else
          XFlag := 1;
      end;

      //VALIDA CODIGO equipamento
      XFlag := 0;
      //Edmar - 15/05/2014 - Condição para que só seja feita a validação caso tenha que cadastra equipamento
      if XCOD_EQUIPAMENTO <> -1 then
      begin
        while XFlag = 0 do
        begin
          DMPESSOA.TALX.Close;
          DMPESSOA.TALX.SQL.Clear;
          DMPESSOA.TALX.SQL.Add(' SELECT * FROM equipamento WHERE equipamento.cod_equipamento=:CODIGO ');
          DMPESSOA.TALX.ParamByName('CODIGO').AsInteger := XCod_EQUIPAMENTO;
          DMPESSOA.TALX.Open;

          if not DMPESSOA.TALX.IsEmpty then
            XCOD_EQUIPAMENTO := XCOD_EQUIPAMENTO + 1
          else
            XFlag := 1;
        end;
      end;
      //FIM DE VALIDAÇÃO DOS CODIGOS

      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' update CODIGO SET codigo.cod_pessoaf=:PESSOAF, codigo.cod_pessoa=:PESSOA, ');
      DMMACS.TALX.SQL.Add(' codigo.cod_pessoaj=:PESSOAJ, codigo.cod_cliente=:CLIENTE, ');
      DMMACS.TALX.SQL.Add(' codigo.cod_equipamento=:EQUIPAMENTO ');
      DMMACS.TALX.ParamByName('PESSOAF').AsInteger := XCOD_PESSOAF + 1;
      DMMACS.TALX.ParamByName('PESSOAJ').AsInteger := XCOD_PESSOAJ + 1;
      DMMACS.TALX.ParamByName('PESSOA').AsInteger := XCOD_PESSOA + 1;
      DMMACS.TALX.ParamByName('CLIENTE').AsInteger := XCOD_CLIENTE + 1;
      DMMACS.TALX.ParamByName('EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO + 1;
      DMMACS.TALX.ExecSQL;
      DMMACS.Transaction.CommitRetaining;
      //FIM DE ATUALIZAÇÃO DE CODIGOS

      // inserir nova pessoa
      DMPESSOA.TPessoa.Close;
      DMPESSOA.TPessoa.SQL.Clear;
      DMPESSOA.TPessoa.SQL.Add('insert into pessoa');
      DMPESSOA.TPessoa.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
      DMPESSOA.TPessoa.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
      DMPESSOA.TPessoa.SQL.Add('values');
      DMPESSOA.TPessoa.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
      DMPESSOA.TPessoa.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
      DMPESSOA.TPessoa.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');
      DMPESSOA.TPessoa.ParamByName('COD_PESSOA').AsInteger := XCod_Pessoa;
      DMPESSOA.TPessoa.ParamByName('NOME').AsString := edNome.Text;
      DMPESSOA.TPessoa.ParamByName('COD_CIDADE').AsInteger := XCOD_CIDADE;
      if edCNPJCPF.Text <> '' then
        DMPESSOA.TPessoa.ParamByName('CPFCNPJ').AsString := edCNPJCPF.Text;
      if edFone.Text <> '' then
        DMPESSOA.TPessoa.ParamByName('TELREL').AsString := edFone.Text;

      DMPESSOA.TPessoa.ExecSQL;
      DMPESSOA.TransacPessoa.CommitRetaining;
      // inserir nova pessoa
      DMPESSOA.TPessoa.Close;
      DMPESSOA.TPessoa.SQL.Clear;
      DMPESSOA.TPessoa.SQL.Add('select * from pessoa');
      DMPESSOA.TPessoa.Open;

      // add proximo codigo
      try
        DMMACS.TCodigo.Edit;
        DMMACS.TCodigo.FieldByname('COD_PESSOA').AsInteger := XCOD_PESSOA + 1;
        DMMACS.TCodigo.Post;
        DMMACS.IBTCodigo.CommitRetaining;
      except
        MessageDlg('ERRO: 278' + #13 + #10 + 'Conflito ao atualizar o código de pessoa', mtWarning, [mbOK], 0);
      end;

      XCOD_CLIENTE := DMMACS.TCodigo.FieldByName('COD_cliente').AsInteger;

      //verifica se este codigo de cliente já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
      XFlag := 0;
      while XFlag = 0 do
      begin
        DMPESSOA.TALX.Close;
        DMPESSOA.TALX.SQL.Clear;
        DMPESSOA.TALX.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE=:CODIGO');
        DMPESSOA.TALX.ParamByName('CODIGO').AsInteger := XCOD_CLIENTE;
        DMPESSOA.TALX.Open;

        if not DMPESSOA.TALX.IsEmpty then
          XCOD_CLIENTE := XCOD_CLIENTE + 1
        else
          XFlag := 1;
      end;

      // inserir novo cliente
      DMPESSOA.TCliente.Close;
      DMPESSOA.TCliente.SQL.Clear;
      DMPESSOA.TCliente.SQL.Add('insert into cliente');
      DMPESSOA.TCliente.SQL.Add('(COD_CLIENTE, COD_PESSOA, COD_INTERNO, DATA_CAD, R_SAL_CONJ, R_SALARIO,');
      DMPESSOA.TCliente.SQL.Add('R_HON_PROF, R_OUTREC, D_ALUGUEL, D_RESIDENCIA, D_VEICULO, D_FAMILIAR,');
      DMPESSOA.TCliente.SQL.Add('D_OUTDESP, LIM_CRED, QTDTEMPORESID, BENS, COD_VENDEDOR, INFOCOM, ENDENTRAGA,');
      DMPESSOA.TCliente.SQL.Add('ATUALIZAR, COD_USUARIO, ATIVO, CREDENCIAL, RAMOATIV, ATACADISTA, COD_FORMPAG,');
      DMPESSOA.TCliente.SQL.Add('EXPORT, SEPARAR, MULTA, JURO, OBS, SCPC, TAMANHO, INFORMACAO,');
      DMPESSOA.TCliente.SQL.Add('DIAVENCIMENTO)');
      DMPESSOA.TCliente.SQL.Add('values');
      DMPESSOA.TCliente.SQL.Add('(:COD_CLIENTE, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :R_SAL_CONJ, :R_SALARIO,');
      DMPESSOA.TCliente.SQL.Add(':R_HON_PROF, :R_OUTREC, :D_ALUGUEL, :D_RESIDENCIA, :D_VEICULO, :D_FAMILIAR,');
      DMPESSOA.TCliente.SQL.Add(':D_OUTDESP, :LIM_CRED, :QTDTEMPORESID, :BENS, :COD_VENDEDOR, :INFOCOM,');
      DMPESSOA.TCliente.SQL.Add(':ENDENTRAGA, :ATUALIZAR, :COD_USUARIO, :ATIVO, :CREDENCIAL, :RAMOATIV,');
      DMPESSOA.TCliente.SQL.Add(':ATACADISTA, :COD_FORMPAG, :EXPORT, :SEPARAR, :MULTA, :JURO, :OBS, :SCPC,');
      DMPESSOA.TCliente.SQL.Add(':TAMANHO, :INFORMACAO, :DIAVENCIMENTO)');

      DMPESSOA.TCliente.ParamByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
      DMPESSOA.TCliente.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
      DMPESSOA.TCliente.ParamByName('COD_INTERNO').AsInteger := XCOD_CLIENTE;
      DMPESSOA.TCliente.ParamByName('DATA_CAD').AsDateTime := Date();
      DMPESSOA.TCliente.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;

      if cbConsumidor.Checked then
      begin
        DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '0';
      end
      else
      begin
        DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '1';
      end;

      DMPESSOA.TCliente.ExecSQL;
      DMPESSOA.TransacPessoa.CommitRetaining;
      // inserir novo cliente
      DMPESSOA.TCliente.Close;
      DMPESSOA.TCliente.SQL.Clear;
      DMPESSOA.TCliente.SQL.Add('select * from cliente');
      DMPESSOA.TCliente.Open;

      // add proximo codigo
      try
        DMMACS.TCodigo.Edit;
        DMMACS.TCodigo.FieldByname('COD_CLIENTE').AsInteger := XCOD_CLIENTE + 1;
        DMMACS.TCodigo.Post;
        DMMACS.IBTCodigo.CommitRetaining;
      except
        MessageDlg('ERRO: 356' + #13 + #10 + 'Conflito ao atualizar o código de cliente', mtWarning, [mbOK], 0);
      end;

      if RGTIPO.ItemIndex = 0 then
      begin

        XCOD_PESSOAF := DMMACS.TCodigo.FieldByName('COD_PESSOAF').AsInteger;

        //verifica se este codigo de PESSOAF já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
        XFlag := 0;
        while XFlag = 0 do
        begin
          DMPESSOA.TALX.Close;
          DMPESSOA.TALX.SQL.Clear;
          DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAF WHERE PESSOAF.COD_PESSOAF=:CODIGO');
          DMPESSOA.TALX.ParamByName('CODIGO').AsInteger := XCOD_PESSOAF;
          DMPESSOA.TALX.Open;

          if not DMPESSOA.TALX.IsEmpty then
            XCOD_PESSOAF := XCOD_PESSOAF + 1
          else
            XFlag := 1;
        end;

        //inserir pessoa fisica
        DMPESSOA.TPessoaF.Close;
        DMPESSOA.TPessoaF.SQL.Clear;
        DMPESSOA.TPessoaF.SQL.Add('insert into pessoaf');
        DMPESSOA.TPessoaF.SQL.Add('(COD_PESSOAF, COD_PESSOA, ESTADO_CIVIL, SEXO, EMP_TRAB, END_TRAB, BAIRRO_TRAB,');
        DMPESSOA.TPessoaF.SQL.Add('DATA_ADMIS, CARGO, RG, DATA_EXPED, ORGAO_EXPED, TITULO, NOME_CONJ, DATANASC_CONJ,');
        DMPESSOA.TPessoaF.SQL.Add('RG_CONJ, CPF_CONJ, EMP_CONJ, NOME_PAI, NOME_MAE, ENDE_FILIACAO)');
        DMPESSOA.TPessoaF.SQL.Add('values');
        DMPESSOA.TPessoaF.SQL.Add('(:COD_PESSOAF, :COD_PESSOA, :ESTADO_CIVIL, :SEXO, :EMP_TRAB, :END_TRAB,');
        DMPESSOA.TPessoaF.SQL.Add(':BAIRRO_TRAB, :DATA_ADMIS, :CARGO, :RG, :DATA_EXPED, :ORGAO_EXPED, :TITULO,');
        DMPESSOA.TPessoaF.SQL.Add(':NOME_CONJ, :DATANASC_CONJ, :RG_CONJ, :CPF_CONJ, :EMP_CONJ, :NOME_PAI,');
        DMPESSOA.TPessoaF.SQL.Add(':NOME_MAE, :ENDE_FILIACAO)');

        DMPESSOA.TPessoaF.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
        DMPESSOA.TPessoaF.ParamByName('COD_PESSOAF').AsInteger := XCOD_PESSOAF;
        DMPESSOA.TPessoaF.ExecSQL;
        DMPESSOA.TransacPessoa.CommitRetaining;

        DMPESSOA.TPessoaF.Close;
        DMPESSOA.TPessoaF.SQL.Clear;
        DMPESSOA.TPessoaF.SQL.Add('select * from pessoaf');
        DMPESSOA.TPessoaF.Open;

        // add proximo codigo
        try
          DMMACS.TCodigo.Edit;
          DMMACS.TCodigo.FieldByName('COD_PESSOAF').AsInteger := XCOD_PESSOAF + 1;
          DMMACS.TCodigo.Post;
          DMMACS.IBTCodigo.CommitRetaining;
        except
          MessageDlg('ERRO: 421' + #13 + #10 + 'Conflito ao atualizar o código de pessoa fisica', mtWarning, [mbOK], 0);
        end;
      end
      else
      begin

        XCOD_PESSOAJ := DMMACS.TCodigo.FieldByName('COD_PESSOAJ').AsInteger;

        //verifica se este codigo de PESSOAF já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
        XFlag := 0;
        while XFlag = 0 do
        begin
          DMPESSOA.TALX.Close;
          DMPESSOA.TALX.SQL.Clear;
          DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAJ WHERE PESSOAJ.COD_PESSOAJ=:CODIGO');
          DMPESSOA.TALX.ParamByName('CODIGO').AsInteger := XCOD_PESSOAJ;
          DMPESSOA.TALX.Open;

          if not DMPESSOA.TALX.IsEmpty then
            XCOD_PESSOAJ := XCOD_PESSOAJ + 1
          else
            XFlag := 1;
        end;

        // INSERIR PESSOA JURIDICA
        DMPESSOA.TPessoaJ.Close;
        DMPESSOA.TPessoaJ.SQL.Clear;
        DMPESSOA.TPessoaJ.SQL.Add('insert into pessoaJ');
        DMPESSOA.TPessoaJ.SQL.Add('(COD_PESSOAJ, COD_PESSOA, INSC_EST, RAZAO_SOCIAL, INSC_MUN, WEB_PAGE)');
        DMPESSOA.TPessoaJ.SQL.Add('values');
        DMPESSOA.TPessoaJ.SQL.Add('(:COD_PESSOAJ, :COD_PESSOA, :INSC_EST, :RAZAO_SOCIAL, :INSC_MUN, :WEB_PAGE)');

        DMPESSOA.TPessoaJ.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;

        DMPESSOA.TPessoaJ.ParamByName('COD_PESSOAJ').AsInteger := XCOD_PESSOAJ;

        DMPESSOA.TPessoaJ.ParamByName('RAZAO_SOCIAL').AsString := edNome.Text;

        DMPESSOA.TPessoaJ.ExecSQL;
        DMPESSOA.TransacPessoa.CommitRetaining;

        DMPESSOA.TPessoaJ.Close;
        DMPESSOA.TPessoaJ.SQL.Clear;
        DMPESSOA.TPessoaJ.SQL.Add('select * from pessoaJ');
        DMPESSOA.TPessoaJ.Open;

        // add proximo codigo
        try
          DMMACS.TCodigo.Edit;
          DMMACS.TCodigo.FieldByName('COD_PESSOAJ').AsInteger := XCOD_PESSOAJ + 1;
          DMMACS.TCodigo.Post;
          DMMACS.IBTCodigo.CommitRetaining;
        except
          MessageDlg('ERRO: 483' + #13 + #10 + 'Conflito ao atualizar o código de pessoa juridica', mtWarning, [mbOK], 0);
        end;

      end;
    end
    else
    begin
      //Altera Pessoa Encontrada
      DMPESSOA.TPessoa.Close;
      DMPESSOA.TPessoa.SQL.Clear;
      DMPESSOA.TPessoa.SQL.Add('Update Pessoa Set pessoa.NOME = :Nome, Pessoa.Cod_Cidade = :CodigoCidade, Pessoa.TELREL=:TelRel  ');
      DMPESSOA.TPessoa.SQL.Add(' Where Pessoa.COD_PESSOA=:CodigoPessao ');
      DMPESSOA.TPessoa.ParamByName('CodigoPessao').AsInteger := XCod_Pessoa;
      DMPESSOA.TPessoa.ParamByName('NOME').AsString := edNome.Text;
      DMPESSOA.TPessoa.ParamByName('CodigoCidade').AsInteger := XCOD_CIDADE;
      DMPESSOA.TPessoa.ParamByName('TelRel').AsString := edFone.Text;
      DMPESSOA.TPessoa.ExecSQL;
      DMPESSOA.TransacPessoa.CommitRetaining;
      //Insere os dados de equipamento informado
      if (edPlaca.Text <> '') or (edModelo.Text <> '') then
      begin
        DMPESSOA.TEquip.Close;
        DMPESSOA.TEquip.SQL.Clear;
        DMPESSOA.TEquip.SQL.Add('insert into EQUIPAMENTO');
        DMPESSOA.TEquip.SQL.Add('(COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, MARCA, MODELO, ANO, COR, CHASSI,');
        DMPESSOA.TEquip.SQL.Add('PLACA, DTAQUISICAO, CONCESSIONARIA, MOTOR, ANOMOTOR, CHASSIMOTOR, KMATUAL,');
        DMPESSOA.TEquip.SQL.Add('UNIDRODAGEM, NUM_FROTA, ALTURAMAX)');
        DMPESSOA.TEquip.SQL.Add('values');
        DMPESSOA.TEquip.SQL.Add('(:COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :MARCA, :MODELO,:ANO, :COR,');
        DMPESSOA.TEquip.SQL.Add(':CHASSI, :PLACA, :DTAQUISICAO, :CONCESSIONARIA, :MOTOR, :ANOMOTOR, :CHASSIMOTOR,');
        DMPESSOA.TEquip.SQL.Add(':KMATUAL, :UNIDRODAGEM, :NUM_FROTA, :ALTURAMAX)');

        DMPESSOA.TEquip.ParamByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO;
        DMPESSOA.TEquip.ParamByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
        DMPESSOA.TEquip.ParamByName('MODELO').AsString := edModelo.Text;
        DMPESSOA.TEquip.ParamByName('DESCRICAO').AsString := edModelo.Text;
        DMPESSOA.TEquip.ParamByName('PLACA').AsString := edPlaca.Text;
        DMPESSOA.TEquip.ParamByName('NUM_FROTA').AsString := edNumFrota.Text;
        DMPESSOA.TEquip.ExecSQL;

        DMPESSOA.TransacPessoa.CommitRetaining;

        DMPESSOA.TEquip.Close;
        DMPESSOA.TEquip.SQL.Clear;
        DMPESSOA.TEquip.SQL.Add('select * from EQUIPAMENTO');
        DMPESSOA.TEquip.Open;
      end;
    end;
  end
  else
  begin
    //se o cliente é cadastrado, altera suas informações
    if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', IntToStr(XCOD_CLIENTE), '') = True then
    begin
      if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString, '') = True then
      begin
        DMPESSOA.TPessoa.Edit;
        DMPESSOA.TPessoa.FieldByName('NOME').AsString := edNome.Text;
        DMPESSOA.TPessoa.FieldByName('TELREL').AsString := edFone.Text;
        DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsInteger := XCod_cidade;
        DMPESSOA.TPessoa.Post;
        DMPESSOA.TransacPessoa.CommitRetaining;
      end;
    end;
  end;
  if XControleCadPlaca = False then
  begin
    if (edPlaca.Text <> '') or (edModelo.Text <> '') then
    begin
      XCOD_EQUIPAMENTO := DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger;
      //verifica se este codigo de PESSOAF já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
      XFlag := 0;
      while XFlag = 0 do
      begin
        DMPESSOA.TALX.Close;
        DMPESSOA.TALX.SQL.Clear;
        DMPESSOA.TALX.SQL.Add('SELECT * FROM EQUIPAMENTO WHERE EQUIPAMENTO.COD_EQUIPAMENTO=:CODIGO');
        DMPESSOA.TALX.ParamByName('CODIGO').AsInteger := XCOD_EQUIPAMENTO;
        DMPESSOA.TALX.Open;

        if not DMPESSOA.TALX.IsEmpty then
          XCOD_EQUIPAMENTO := XCOD_EQUIPAMENTO + 1
        else
          XFlag := 1;
      end;

      DMPESSOA.TEquip.Close;
      DMPESSOA.TEquip.SQL.Clear;
      DMPESSOA.TEquip.SQL.Add('insert into EQUIPAMENTO');
      DMPESSOA.TEquip.SQL.Add('(COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, MARCA, MODELO, ANO, COR, CHASSI,');
      DMPESSOA.TEquip.SQL.Add('PLACA, DTAQUISICAO, CONCESSIONARIA, MOTOR, ANOMOTOR, CHASSIMOTOR, KMATUAL,');
      DMPESSOA.TEquip.SQL.Add('UNIDRODAGEM, NUM_FROTA, ALTURAMAX)');
      DMPESSOA.TEquip.SQL.Add('values');
      DMPESSOA.TEquip.SQL.Add('(:COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :MARCA, :MODELO,:ANO, :COR,');
      DMPESSOA.TEquip.SQL.Add(':CHASSI, :PLACA, :DTAQUISICAO, :CONCESSIONARIA, :MOTOR, :ANOMOTOR, :CHASSIMOTOR,');
      DMPESSOA.TEquip.SQL.Add(':KMATUAL, :UNIDRODAGEM, :NUM_FROTA, :ALTURAMAX)');

      DMPESSOA.TEquip.ParamByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO;
      DMPESSOA.TEquip.ParamByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
      DMPESSOA.TEquip.ParamByName('MODELO').AsString := edModelo.Text;
      DMPESSOA.TEquip.ParamByName('DESCRICAO').AsString := edModelo.Text;
      DMPESSOA.TEquip.ParamByName('PLACA').AsString := edPlaca.Text;
      DMPESSOA.TEquip.ParamByName('NUM_FROTA').AsString := edNumFrota.Text;
      DMPESSOA.TEquip.ExecSQL;

      DMPESSOA.TransacPessoa.CommitRetaining;

      DMPESSOA.TEquip.Close;
      DMPESSOA.TEquip.SQL.Clear;
      DMPESSOA.TEquip.SQL.Add('select * from EQUIPAMENTO');
      DMPESSOA.TEquip.Open;

      // add proximo codigo
      try
        DMMACS.TCodigo.Edit;
        DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO + 1;
        DMMACS.TCodigo.Post;
        DMMACS.IBTCodigo.CommitRetaining;
      except
        MessageDlg('ERRO: 548' + #13 + #10 + 'Conflito ao atualizar o código de equipamento', mtWarning, [mbOK], 0);
      end;
    end
    else
    begin
      XCOD_EQUIPAMENTO := -1;
    end;
  end;

  //seleciona informações para a tela principal
  if FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCOD_CLIENTE), '') then
  begin
    FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
    FrmCliente.EDCodigo.Hint := DMPESSOA.WCliente.FieldByName('NOME').AsString;
    FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;

    SelecionaFormaPagamento;

    FBEquipPlaca.EDCodigo.SetFocus;

  end
  else
  begin
    XCOD_CLIENTE := -1;
    FrmCliente.EDCodigo.Text := '';
    FrmCliente.EDCodigo.Hint := '';
    FrmCliente.EdDescricao.Text := '';
  end;

  if FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(XCOD_EQUIPAMENTO), '') then
  begin
    FBEquipPlaca.EDCodigo.Text := DMPESSOA.TEquip.FieldByName('PLACA').AsString;
    FBEquipPlaca.EdDescricao.Text := DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
    if DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> '' then
    begin
      lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
    end
    else
    begin
      lbNumFrota.Caption := '';
    end;
    FrmFormPag1.EDCodigo.SetFocus;

  end
  else
  begin
    XCOD_EQUIPAMENTO := -1;
    FBEquipPlaca.EDCodigo.Text := '';
    FBEquipPlaca.EdDescricao.Text := '';
    lbNumFrota.Caption := '';
  end;

  FrmCliente.Repaint;
  FBEquipPlaca.Repaint;

  PCadastroRapido.SendToBack;
  PCadastroRapido.Visible := False;

  if CheckBox1.Checked = True then
  begin
    CBVENDABALCAO.Visible := True;
    CBVENDABALCAO.Checked := true;
  end
  else
  begin
    CBVENDABALCAO.Checked := False;
  end;
end;

procedure TFOrdemMec.edPlacaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EDPlaca.SelLength > 0) and not (KEY = 8) and not (KEY = 13) and not (KEY = 27) then
  begin
    EDPlaca.Text := '';
  end;

  {If (Length(EDPlaca.Text) = 3) And Not (KEY = 8) Then Begin
      EDPlaca.Text := EDPlaca.Text + '-';
      EDPlaca.SelStart := 4;
  End;}
end;

procedure TFOrdemMec.edPlacaKeyPress(Sender: TObject; var Key: Char);
var
  xPlacaLimpa: string;
begin
  inherited;
  xPlacaLimpa := Trim(UpperCase(StringReplace(StringReplace(EDPlaca.Text, '-', '', [rfReplaceAll]), ' ', '', [rfReplaceAll])));

  if (Length(xPlacaLimpa) = 4) and not (Key = #8)
    and not (Key = #13) and not (Key = #27) then
  begin
    if not (Key in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[1] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[2] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[3] in ['a'..'z', 'A'..'Z']) then // PADRÃO ANTIGO ABC 1234
    begin
      EDPlaca.Text := xPlacaLimpa[1] + xPlacaLimpa[2] + xPlacaLimpa[3] + '-' + xPlacaLimpa[4];
      EDPlaca.SelStart := 5;
    end;
  end;

  if (Length(xPlacaLimpa) = 7) and not (Key = #8) and not (Key = #13) and not (Key = #27) then
    Key := #0;
  {If Not (key In ['a'..'z', 'A'..'Z', '0'..'9', #8, #13, #27])
      Then
      Key := #0
  Else Begin // ['A'..'Z','a'..'z'
      If Length(EDPlaca.Text) < 4 Then
          If Not (key In ['a'..'z', 'A'..'Z', #8, #13, #27]) Then
              Key := #0;

      If (Length(EDPlaca.Text) > 3) Then
          If Not (key In ['0'..'9', #8, #13, #27]) Then
              Key := #0
  End;}
end;

procedure TFOrdemMec.TransparentButton1Click(Sender: TObject);
begin
  PCadastroRapido.Visible := false;
  //   PCadastroRapido.SendToBack;
  FrmCliente.EDCodigo.SetFocus;
end;

procedure TFOrdemMec.EspelhoNotaFiscal1Click(Sender: TObject);
var
  XCODDOC: Integer;
begin
  {PCadastro.SendToBack;
  PCadastro.Visible := False; }

  if (DMServ.WOrdem.FieldByName('numfiscal').AsString <> '') then
  begin
    XCODDOC := StrToInt(DMServ.WOrdem.FieldByName('cod_ordem').AsString);
    GeraRelEspelhoNf('ORDEM', XCODDOC);
  end;

  //Testa se existe documento fiscal para o pedido
  if (DMServ.WOrdem.FieldByName('numfiscal').AsString = '') then
    MessageBox(0, 'Não foi localizado documento fiscal referente a esta ordem!', 'Atenção', MB_ICONWARNING or MB_OK)
  else
  begin
    FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfEspelhoNf.frf');
    FsRel.ShowReport;
  end;
end;

procedure TFOrdemMec.edNomeExit(Sender: TObject);
begin
  inherited;
  BuscaCliente('NOME', edNome.Text);
end;

procedure TFOrdemMec.edCNPJCPFExit(Sender: TObject);
begin
  inherited;
  BuscaCliente('CPFCNPJ', edCNPJCPF.Text);
end;

procedure TFOrdemMec.SintticodeOrdens1Click(Sender: TObject);
begin
  inherited;
  {    PCadastro.SendToBack;
      PCadastro.Visible := False; }
  FMenu.TIPOREL := 'SINTETICO';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TFOrdemMec.AnalticodeOrdens1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  FMenu.TIPOREL := 'ANALITICO';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TFOrdemMec.ServiosPorEquipe1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  FMenu.TIPOREL := 'EQUIPE';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
  FMenu.TIPOREL := '';
end;

procedure TFOrdemMec.DBGridConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (shift = [ssCtrl]) and (key = 83) then
  begin
    try
      if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then
      begin
        ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
      end;
      DBGridConsulta.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\Ordemmec.lgm');
      Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
    except
      Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
    end;
  end;
  if (shift = [ssCtrl]) and (key = 67) then
  begin
    try
      if FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'COD_ORDEM', XView.FieldByName('cod_ordem').AsString, '') = True then
      begin
        Clipboard.AsText := DMServ.TFiscOrd.FieldByName('nfechave').AsString;
        MessageDlg('A Chave da Nfe foi Copiada (' + Clipboard.AsText + ')' + #13 + #10 + 'para colar pressione Ctrl+v', mtWarning, [mbOK], 0);
      end;
    except
      Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de copiar a chave de Nfe!', '', 1, 1, false, 'i');
    end;
  end;
  if (shift = [ssCtrl]) and (key = 65) then
  begin
    MessageDlg('ESTA FUNÇÃO REABRE A O.S. POSSIBILITANDO ALTERAR INFORMAÇÕES IMPORTANTES. CONTINUE APENAS EM CASO DE CERTEZA', mtWarning, [mbOK], 0);
    if Mensagem('Confirmação do usuário', 'Deseja Reabrir a O.S para correção', '', 2, 3, False, 'c') = 2 then
    begin
      AbrirForm(TFSENHA, FSENHA, 0);
      //repassa resultado da tela de autenticação de senha para as variáveis de controle
      if XAlxResult = True then
      begin
        if DMServ.WOrdem.FieldByname('cod_ordem').AsInteger > 0 then
        begin
          if DMServ.TOrd.FieldByName('EDIT').AsString = '1' then
          begin
            Mensagem('    A T E N Ç Ã O   ', 'A ORDEM ESTÁ SENDO USADA NO MOMENTO.' + #13 + 'Use Ctrl+D para destravar', '', 1, 1, false, 'I');
            AtualizaGridConsulta('ORIGEM');
            Exit;
          end
          else
          begin
            FMenu.XTIPOBOLTO := 'OSABERTA';
            BtnConsultar.OnClick(SENDER);
          end;
        end;
      end;
    end;
  end;
end;

procedure TFOrdemMec.ServiosporEquipecomFrota1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
 // abri formulario do relatorio de equipes
  AbrirForm(TFRelEquipe, FRelEquipe, 0);
end;

procedure TFOrdemMec.EfetuarDevoluodeNotaFiscal1Click(Sender: TObject);
begin
  inherited;
  {
 //Somente continua processo de devolução se for encontrado documento fiscal correspondente
  If FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', XView.FieldByName('cod_ordem').AsString, '') = True
      Then Begin
//A Nota fiscal precisa estar fechada
      If XView.FieldByName('STATUS').AsString <> 'FECHADO'
          Then Begin
          MessageDlg('A Ordem (' + XView.FieldByName('NUMERO').AsString + ') selecionado para devolução deve estar Fechado para ser devolvido', mtWarning, [mbOK], 0);
          Exit;
      End;
     //Confirma devolução da Nota com o usuario
      If Mensagem('Confirmação do usuário', 'Deseja realmente efetuar devolução da Nota Fiscal Número: ' + XView.FieldByName('NUMFISCAL').AsString + '?', '', 2, 3, False, 'c') = 2
          Then Begin
          If DevNotaFiscal(XView.FieldByName('cod_ordem').AsInteger) = False
              Then Begin
              If MessageDlg('Erro ao tentar efetuar devolução' + #13 + #10 + 'Deseja visualizar o erro ocorrido?', mtConfirmation, [mbYes, mbNo], 0) = mryes Then
                  MessageDlg(FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
          End;
      End;
  End
  Else Begin
      MessageDlg('O pedido (' + XView.FieldByName('NUMERO').AsString + ') selecionado para devolução não apresenta documento fiscal', mtWarning, [mbOK], 0);
  End;
  }

//Edmar - 20/03/2015 - busca o cliente do pedido
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.WOrdem.FieldByname('COD_CLIENTE').AsString, '');

  if not FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '') then
  begin
    //se não estiver, dá uma mensagem para o usuario informando que deve cadastra-lo como cliente antes de devolver
    MessageDlg('O cliente ' + DMPESSOA.WCliente.FieldByName('NOME').AsString + ' deve estar cadastrado como fornecedor para efetuar a devolução da NF-e.', mtWarning, [mbOK], 0);

    Exit;
  end;

  FMenu.XCOD_CLIENTE_DEVOLUCAO := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString;
  FMenu.XNUM_FISCAL_DEVOLUCAO := DMServ.WOrdem.FieldByName('NUMFISCAL').AsString;
  FMenu.XCOD_PK_DEVOLVIDO := DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;

  FMenu.XTABELA_DEVOLUCAO := 'ORDEM';

  AbrirForm(TFDevolucao, FDevolucao, 0);
end;

procedure TFOrdemMec.VisualizarDanfe1Click(Sender: TObject);
begin
  inherited;
  //Filtra se o pedido tem serviço cadastrado
  if (FiltraTabela(DMSAIDA.TAlx, 'DESPADIC', 'COD_GERADOR', IntToStr(XView.FieldByName('cod_ordem').AsInteger), '')) = True then
  begin
    if DMMACS.TLoja.FieldByName('SERVNFE').AsString <> '1' then
      XServicoOp := True;

  end;
  FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
  FMzrNfe.SetInFiscal('', XView.FieldByName('COD_ORDEM').AsInteger, 0, 'ORDEM', '', 1, '', '', '', 0, 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  FMzrNfe.DanfeVisualizar;
  FMzrNfe := nil;
end;

procedure TFOrdemMec.VisualizarnoSefaz1Click(Sender: TObject);
begin
  inherited;
  FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
  FMzrNfe.SetInFiscal('', XView.FieldByName('cod_ordem').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'SEFAZ', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  FMzrNfe.ShowModal;
end;

procedure TFOrdemMec.ConsultarStatusNFe1Click(Sender: TObject);
begin
  inherited;
  FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
  FMzrNfe.SetInFiscal('', XView.FieldByName('cod_ordem').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'CONSULTAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  FMzrNfe.ShowModal;
end;

procedure TFOrdemMec.RecuperarDados1Click(Sender: TObject);
var
  XChaveNfe: string;
begin
  inherited;
  if FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', XView.FieldByName('cod_ordem').AsString, '') = True then
  begin
    if DMServ.TFiscOrd.FieldByName('nfestatus').AsInteger = 2 then
    begin
      if Mensagem('Confirmação do usuário', 'Deseja realmente Retornar os dados para a Ordem de Número ' + XView.FieldByName('numero').AsString + '?', '', 2, 3, False, 'c') = 2 then
      begin
        if InputQuery('Chave de Acesso', 'Informe a Chave de Acesso da NFe para recuperar os Dados', XChaveNfe) = True then
        begin
          if DMServ.TFiscOrd.FieldByName('MODELONF').AsString = '65' then
            XEmiteNFCe := True
          else
            XEmiteNFCe := False;
          FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
          //Function TFMzrNfe.SetInFiscal(NomePeriodo: String; CodigoPedido: Integer; CodigoDestinatario: Integer; tipopedido: String; tipoacao: String; tipoemissao: Integer; Cfop: String; NatOperacao: String; FormPagamento: String; NumFiscal: Integer; DtEmissao: TDate; CodigoIbge: String; Municipio: String; Uf: String; BaseIcms, VlrIcm, VlrIpi, BaseIcmsSt, VlrIcmsSt, VlrProduto, VlrFrete, VlrSeguro, Desconto, VlrOutros, VlrNotaFiscal: Real): Boolean;
          FMzrNfe.SetInFiscal(XChaveNfe, XView.FieldByName('cod_ordem').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'RETORNADADOS', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
          FMzrNfe.ShowModal;
        end;
      end;

    end
    else
    begin
      MessageDlg('Os dados não podem ser recuperados devido ao fato que a OS esta marcada como NFe enviada e homologada' + #13 + #10 + 'NFeStatus = 1 ou 3', mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TFOrdemMec.VerificarServidorSefaz1Click(Sender: TObject);
begin
  inherited;
  FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
  FMzrNfe.SetInFiscal('', 0, 0, 'ORDEM', 'STATUSSERV', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  FMzrNfe.ShowModal;
end;

procedure TFOrdemMec.CancelarNFe1Click(Sender: TObject);
begin
  inherited;
  if XView.FieldByName('STATUS').AsString = 'CANCELADO' then
  begin
    MessageDlg('NFe já cancelada', mtWarning, [mbOK], 0);
  end
  else
  begin
    if XView.FieldByName('numfiscal').AsString = '' then
    begin
      MessageDlg('Documento fiscal da Ordem ' + XView.FieldByName('NUMERO').AsString + ' não foi emitido corretamente.', mtWarning, [mbOK], 0);
      Exit;
    end;
    if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar a Nota Fiscal Eletrônica Nº ' + XView.FieldByName('numfiscal').AsString + '?', '', 2, 3, False, 'c') = 2 then
    begin
      if FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, ' AND (MODELONF = ''65'')') then
        XEmiteNFCe := True
      else
        XEmiteNFCe := False;
      FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
      FMzrNfe.SetInFiscal('', XView.FieldByName('cod_ordem').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'CANCELAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      FMzrNfe.ShowModal;
    end;
  end;
end;

procedure TFOrdemMec.RelatriodeDanfes1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
//Paulo 11/11/2010: Abre o rel periodo fiscal
  XRelDanfe := 'ORDEM';
  AbrirForm(TFRelPeriodoFiscal, FRelPeriodoFiscal, 0);
end;

procedure TFOrdemMec.ListaNfe1Click(Sender: TObject);
begin
  inherited;
  AbrirForm(TFListaNfe, FListaNfe, 0);
end;

procedure TFOrdemMec.InutilizarNumerao1Click(Sender: TObject);
begin
  inherited;
  if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente Inutilizar Numeração de Nota Fiscal Eletrônica ?', '', 2, 3, False, 'c') = 2 then
  begin
    FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', XView.FieldByName('cod_ordem').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'INUTILIZAR', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.ShowModal;
  end;
end;

procedure TFOrdemMec.EDCodFabKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  PListaProdutos.Top := 46;
  PListaProdutos.Left := 46;
  PListaProdutos.Visible := True;
  PListaProdutos.BringToFront;

  //Edmar - 15/08/2014 - Se foi informado uma letra, filtra a lista
  if Length(EDCodFab.Text) = 1 then
    EDCodFabEnter(sender);

  if (Key = VK_ESCAPE) or (EDCodFab.Text = '') then
  begin
    EDCodFabEnter(sender);

    PListaProdutos.Visible := False;
    PListaProdutos.SendToBack;
    EDCodFab.Text := '';
    lPesquisa.Caption := 'Pesquisa:';

    xPesquisaDesc := False;
    xPesquisaCtrlInt := False;
    xPesquisaCodFabr := False;

    LimpaCamposProd;

    Exit;
  end;

  if Key = Vk_Return then
  begin
    DMESTOQUE.WSimilar.Close;
    DMESTOQUE.WSimilar.SQL.Clear;
    DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
    DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
    DMESTOQUE.WSimilar.Open;

    if not DMESTOQUE.WSimilar.IsEmpty then
    begin
      EscreveLabelsPROD;
      PListaProdutos.Visible := False;
      PListaProdutos.SendToBack;
      EDCodFab.Text := '';
      EDQuantidade.Text := '1,00';
    end
    else
      MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

    EDCodFabEnter(sender);
    Exit;
  end;

  if Key = Vk_Down then
  begin
    DMESTOQUE.WSimilar.Next;
    XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

    Exit;
  end;

  if Key = Vk_UP then
  begin
    DMESTOQUE.WSimilar.Prior;
    XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

    Exit;
  end;

  if DMESTOQUE.WSimilar.Locate('DESCRICAO', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
  begin
    if xPesquisaDesc = false then
    begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
      DMESTOQUE.WSimilar.Open;

      xPesquisaDesc := True;
      xPesquisaCtrlInt := False;
      xPesquisaCodFabr := False;
    end;

    DMESTOQUE.WSimilar.Locate('DESCRICAO', EDCodFab.Text, [loCaseInsensitive, loPartialKey]);

    lPesquisa.Caption := 'Descrição:';
    XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

    Exit;
  end;

  if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
  begin
    if xPesquisaCodFabr = false then
    begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CODFABRICANTE');
      DMESTOQUE.WSimilar.Open;

      xPesquisaCodFabr := True;
      xPesquisaDesc := False;
      xPesquisaCtrlInt := False;
    end;

    DMESTOQUE.WSimilar.Locate('CODFABRICANTE', EDCodFab.Text, [loCaseInsensitive, loPartialKey]);

    lPesquisa.Caption := 'Cod. Fabricante:';
    XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

    Exit;
  end;

  if DMESTOQUE.WSimilar.Locate('CONTRINT', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
  begin
    if xPesquisaCtrlInt = false then
    begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CONTRINT');
      DMESTOQUE.WSimilar.Open;

      xPesquisaCtrlInt := True;
      xPesquisaCodFabr := False;
      xPesquisaDesc := False;
    end;

    DMESTOQUE.WSimilar.Locate('CONTRINT', EDCodFab.Text, [loCaseInsensitive, loPartialKey]);

    lPesquisa.Caption := 'Ctrl. Interno:';
    XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

    Exit;
  end;

  XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
  lPesquisa.Caption := 'Fora de Pesquisa';

  {if DMESTOQUE.WSimilar.Locate('DESCRICAO', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
    begin
     lPesquisa.Caption := 'Descrição:';
   XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

        Exit;
    end;

    if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
    begin
        lPesquisa.Caption := 'Cod. Fabricante:';
        XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

        Exit;
    end;

    if DMESTOQUE.WSimilar.Locate('CONTRINT', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
    begin
        lPesquisa.Caption := 'Ctrl. Interno:';
        XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

        Exit;
    end;

    lPesquisa.Caption := 'Fora de Pesquisa';}

 {    If (DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '1') and (Key<>113)
     Then Begin
         If Key = Vk_Down
             Then Begin
             DMESTOQUE.WSimilar.Next;
             XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
             exit;
         End;
         If Key = Vk_UP
             Then Begin
             DMESTOQUE.WSimilar.Prior;
             XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
             Exit;
         End;

         If (PListaProdutos.Visible = True)
         Then Begin
             If LPesquisa.Caption = 'Controle Interno'
                 Then Begin
                 If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CI'
                     Then Begin
                     DMESTOQUE.WSimilar.Close;
                     DMESTOQUE.WSimilar.SQL.Clear;
                     DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR  where (vwsimilar.contrint like upper(' + #39 + EDCodFab.Text + '%' + #39 + ')) AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
                     DMESTOQUE.WSimilar.Open;
                     XOrdem := 'CI';
                 End;
             End;
             If LPesquisa.Caption = 'Cód. Fabricante:'
                 Then Begin
                 If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CF'
                     Then Begin
                     DMESTOQUE.WSimilar.Close;
                     DMESTOQUE.WSimilar.SQL.Clear;
                     DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR where (vwsimilar.codfabricante like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
                     DMESTOQUE.WSimilar.Open;
                     XOrdem := 'CF';
                 End;
             End;
             If LPesquisa.Caption = 'Descrição'
                 Then Begin
                 If XOrdem <> 'DS'
                     Then Begin
                     DMESTOQUE.WSimilar.Close;
                     DMESTOQUE.WSimilar.SQL.Clear;
                     DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR where (vwsimilar.descricao like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
                     DMESTOQUE.WSimilar.Open;
                     XOrdem := 'DS';
                 End;
             End;
             If Key <> Vk_Return
             Then Begin
                 If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CF' Then
                 Begin
                     If DMESTOQUE.WSimilar.Locate('codfabricante', EDCodFab.Text, [loPartialKey]) = True Then
                     Begin
                         XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
                         DMESTOQUE.WSimilar.Close;
                         DMESTOQUE.WSimilar.SQL.Clear;
                         DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY codfabricante');
                         DMESTOQUE.WSimilar.Open;

                     End;
                 End;
                 If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CI' Then
                 Begin
                     If DMESTOQUE.WSimilar.Locate('contrint', EDCodFab.Text, [loPartialKey]) = True Then
                     Begin
                         XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
                         DMESTOQUE.WSimilar.Close;
                         DMESTOQUE.WSimilar.SQL.Clear;
                         DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR  WHERE (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')  ORDER BY contrint');
                         DMESTOQUE.WSimilar.Open;
                     End;
                 End;

                 If DMESTOQUE.WSimilar.Locate('codfabricante', EDCodFab.Text, [loPartialKey]) = false
                 Then Begin
                     DMESTOQUE.WSimilar.Close;
                     DMESTOQUE.WSimilar.SQL.Clear;
                     DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
                     DMESTOQUE.WSimilar.Open;
                     If DMESTOQUE.WSimilar.Locate('descricao', EDCodFab.Text, [loPartialKey]) = false
                     Then Begin
                         If DMESTOQUE.WSimilar.Locate('contrint', EDCodFab.Text, [loPartialKey]) = false
                         Then Begin
                             LPesquisa.Caption := 'Fora de Pesquisa';
                         End
                         Else Begin
                             LPesquisa.Caption := 'Controle Interno';
                             XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
                         End;
                     End
                     Else Begin
                         LPesquisa.Caption := 'Descrição';
                         XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
                     End;
                 End;
            {Else Begin
                LPesquisa.Caption:='Cód. Fabricante';
                XCodTmpEstoque:=DBGrid1.Columns[0].Field.Text;
            End; }
             {End;
         End
         Else Begin
             DMESTOQUE.WSimilar.Close;
             DMESTOQUE.WSimilar.SQL.Clear;
             DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM  VWSIMILAR WHERE  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ');
             DMESTOQUE.WSimilar.Open;

             XOrdem := '';
             PListaProdutos.Visible := True;
             PListaProdutos.BringToFront;
             If DMESTOQUE.WSimilar.Locate('contrint', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) = false
             Then Begin
                 If DMESTOQUE.WSimilar.Locate('codfabricante', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) = false Then
                 Begin
                     DMESTOQUE.WSimilar.Close;
                     DMESTOQUE.WSimilar.SQL.Clear;
                     DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR  WHERE (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')  ORDER BY DESCRICAO');
                     DMESTOQUE.WSimilar.Open;
                     DMESTOQUE.WSimilar.Locate('descricao', EDCodFab.Text, [loCaseInsensitive, loPartialKey]);
                 End;
             End;
             XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
         End;
         If Key = VK_ESCAPE
             Then Begin
             DMESTOQUE.WSimilar.Close;
             DMESTOQUE.WSimilar.SQL.Clear;
             DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ');
             DMESTOQUE.WSimilar.Open;

             PListaProdutos.Visible := False;
             XOrdem := '';
             EDCodFab.Text := '';
         End;
         If EDCodFab.Text = ''
             Then Begin
             PListaProdutos.Visible := False;
             XOrdem := '';
         End;

         If Key = Vk_Return
             Then Begin
   // caso este codigo seja alterado o codigo em TFOrdemMec.DBGrid1DblClick tbm deve assim ser alterado
   //Refiltra a tabela vwsimilar de acordo com registro escolhido
             DMESTOQUE.WSimilar.Close;
             DMESTOQUE.WSimilar.SQL.Clear;
             DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
             DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
             DMESTOQUE.WSimilar.Open;
             If Not DMESTOQUE.WSimilar.IsEmpty
                 Then Begin
                 EscreveLabelsPROD;
                 PListaProdutos.Visible := False;
                 EDCodFab.Text := '';
                 EDQuantidade.Text := '1,00';
            //EDQuantidade.SetFocus;
             End
             Else Begin
                 MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);
             End;
         End;
     End; }
end;

procedure TFOrdemMec.SalvarXMLDistribuio1Click(Sender: TObject);
var
  Xcfop: string;
begin
  inherited;
  XSafeXmlDist := True;
  //Paulo 13/01/2011: Gera Nfe distribuição base no pedido selecionado
  //Seta os dados para chamar a função
  FiltraTabela(DMMACS.TPeriodoFiscal, 'PERIODOFISCAL', 'FECHADO', 'N', '');
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XView.FieldByName('COD_ORDEM').AsInteger), '');
  FiltraTabela(DMServ.Alx, 'DOCFISORD', 'COD_ORDEM', IntToStr(XView.FieldByName('COD_ORDEM').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP', IntToStr(DMServ.Alx.FieldByName('COD_CFOP').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx1, 'CFOP', 'COD_CFOP', IntToStr(DMServ.Alx.FieldByName('COD_CFOP1').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx2, 'CFOP', 'COD_CFOP', IntToStr(DMServ.Alx.FieldByName('COD_CFOP2').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx3, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx4, 'CIDADE', 'COD_CIDADE', IntToStr(DMESTOQUE.Alx3.FieldByName('COD_CIDADE').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx5, 'ESTADO', 'COD_ESTADO', IntToStr(DMESTOQUE.Alx4.FieldByName('COD_ESTADO').AsInteger), '');

  if DMServ.Alx.FieldByName('MODELONF').AsString = '65' then
    XEmiteNFCe := True
  else
    XEmiteNFCe := False;

  Xcfop := DMESTOQUE.Alx.FieldByName('CFOP').AsString + '/' + DMESTOQUE.Alx1.FieldByName('CFOP').AsString + '/' + DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
  XXmlNfe := DMServ.Alx.FieldByName('NFEXML').AsString;
  XNfeRecibo := DMServ.Alx.FieldByName('NFERECIBO').AsString;
  XNfeTipoAmbiente := DMServ.Alx.FieldByName('NFEAMBIENTE').AsInteger;
  XUfLocal := 'PR';
  XNfeChave := DMServ.Alx.FieldByName('NFECHAVE').AsString;
  XSetInPeriodoFiscal := DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;

  FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe

  FMzrNfe.SetInFiscal(XSetInPeriodoFiscal, XView.FieldByName('COD_ORDEM').AsInteger, XView.FieldByName('COD_CLIENTE').AsInteger, 'ORDEM', 'EMITIR', 1, Xcfop,
    DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, XView.FieldByName('FORMAPAG').AsString, StrToInt(DMServ.Alx.FieldByName('NUMDOCFIS').AsString),
    XView.FieldByName('DTABERT').AsDateTime, IntToStr(DMESTOQUE.Alx4.FieldByName('COD_IBGE').AsInteger), DMESTOQUE.Alx4.FieldByName('NOME').AsString,
    DMESTOQUE.Alx5.FieldByName('UF_ESTADO').AsString, DMServ.Alx.FieldByName('BASEICMS').AsFloat, DMServ.Alx.FieldByName('VLRICMS').AsFloat,
    DMServ.Alx.FieldByName('VLRTOTIPI').AsFloat, DMServ.Alx.FieldByName('BASCALSUBS').AsFloat, DMServ.Alx.FieldByName('VLRICMSUBS').AsFloat,
    DMServ.Alx.FieldByName('VLRTOTPROD').AsFloat, DMServ.Alx.FieldByName('VLRFRETE').AsFloat, DMServ.Alx.FieldByName('VLRSEG').AsFloat,
    DMServ.Alx.FieldByName('VLRDESCONTO').AsFloat, DMServ.Alx.FieldByName('VLROUTRASDESP').AsFloat, DMServ.Alx.FieldByName('VLRTOTDOCNF').AsFloat,
    DMServ.Alx.FieldByName('valortotaltributa').AsFloat);
  FMzrNfe.ShowModal;

end;

procedure TFOrdemMec.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  try
    if (DMESTOQUE.Alx3.FieldByName('qtd').AsCurrency = 0) or (DMESTOQUE.Alx3.FieldByName('VLRTOTFIN').AsCurrency = 0) then
    begin
      DBGrid4.Canvas.Font.Color := clRed;
      DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  except
  end;
end;

procedure TFOrdemMec.RelatriodeOrdenseProdutos1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  //Paulo 06/10/2011: Abre a tela de rel para relatório de ordens e produtos
  FMenu.TIPOREL := 'ORDPROD';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
  ;
end;

procedure TFOrdemMec.cbTerceirosClick(Sender: TObject);
begin
  inherited;
  //Paulo 01/11/2011: Ativa o campo de custo
  if (cbTerceiros.Checked = true) then
  begin
    edCustoTerceiros.Enabled := true;
    edCustoTerceiros.SetFocus;
  end
  else
  begin
    edCustoTerceiros.Enabled := false;
    EValorServ.SetFocus;
  end;
end;

procedure TFOrdemMec.RelatriodeOrdenseServios1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  FMenu.TIPOREL := 'RELORDEMTERCEIRO';
  AbrirForm(TFRelOrdem, FRelOrdem, 0);
end;

//Paulo 29/11/2011:busca a comissão do responsavel da equipe

procedure TFOrdemMec.RetornaComissao(CodResp: Integer);
begin
  inherited;
  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add('SELECT * FROM FUNCARGO WHERE FUNCARGO.COD_FUNCIONARIO = :FUNC');
  DMMACS.TALX.ParamByName('FUNC').AsInteger := CodResp;
  DMMACS.TALX.Open;

  DMMACS.TALX.Last;

  if FrmFormPag1.EdDescricao.Text = 'À VISTA' then
    lbComissaoServ.Caption := FormatFloat('0.00', DMMACS.TALX.FieldByName('COMISSAO_VVSER').AsFloat)
  else
    lbComissaoServ.Caption := FormatFloat('0.00', DMMACS.TALX.FieldByName('COMISSAO_VPSER').AsFloat);

end;

procedure TFOrdemMec.RvSystem1PrintHeader(Sender: TObject);
begin
  inherited;
  {If DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 Then
      ImpCompModelo10;}
  if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 17 then
    ImpCompModelo17;
  if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 18 then
    ImpCompModelo18;
end;
//Comprovante de OS numero 10

procedure TFOrdemMec.ImpCompModelo10;
var
  Bitmap: TBitmap;
  xLinha1Obs, xLinha2Obs, xLinha3Obs, xLinha4Obs: string;
begin
  XtotalProd := 0;
  XLinha := 0.3;
  //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
  if FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = False then
    Exit;
  //Paulo 15/03/2011: busca mecanico responsavel
  FiltraTabela(DMESTOQUE.TDesp, 'DESPADIC', 'COD_GERADOR', DMServ.TOrd.FieldByName('COD_ORDEM').AsString, 'AND(GERADOR=' + #39 + 'ORDEM' + #39 + ')');
  FiltraTabela(DMPESSOA.TEquipe, 'EQUIPE', 'COD_EQUIPE', DMESTOQUE.TDesp.FieldByName('COD_EQUIPE').AsString, '');
  //Alex 04/05/2014: Verifica a quantidade de itens a serem impressos
  DMFINANC.TAlx.Close;
  DMFINANC.TAlx.SQL.Clear;
  DMFINANC.TAlx.SQL.Add(' Select count(despadic.cod_despadic) as qtd from despadic where (despadic.gerador=''ORDEM'') and (despadic.cod_gerador=:codigo)');
  DMFINANC.TAlx.ParamByName('codigo').AsString := DMServ.TOrd.FieldByName('COD_ORDEM').AsString;
  DMFINANC.TAlx.Open;
  XQuantServicosImprimir := DMFINANC.TAlx.FieldByName('qtd').AsInteger;
  DMFINANC.TAlx.Close;
  DMFINANC.TAlx.SQL.Clear;
  DMFINANC.TAlx.SQL.Add(' Select count(itprodord.cod_itprodord) as qtd from itprodord where (itprodord.cod_ordem = :codigo) ');
  DMFINANC.TAlx.ParamByName('codigo').AsString := DMServ.TOrd.FieldByName('COD_ORDEM').AsString;
  DMFINANC.TAlx.Open;
  XQuantProdutosImprimir := DMFINANC.TAlx.FieldByName('qtd').AsInteger;
  //Alex 02/05/2014: Verifica o tipo da pagina a ser usada na impressão
  if (XQuantProdutosImprimir + XQuantServicosImprimir) > 5 then
    XtipoImp := 'INTEIRA'
  else
    XtipoImp := 'MEIA';

  with RvSystem1.BaseReport do
  begin
    while PmRelatorio.Tag < 2 do
    begin
      XtotalProd := 0;

      PmRelatorio.Tag := PmRelatorio.Tag + 1;
      //Edmar - 11/07/2014 - Imprime cabeçalho da empresa
      ImpCompModelo10_Cabecalho_Empresa;
      //Edmar - 11/07/2014 - Imprime cabeçalho do cliente
      ImpCompModelo10_Cabecalho_Cliente;
      xcont := 1;
      //Edmar - 11/07/2014 - Imprime cabeçalho dos produtos
      ImpCompModelo10_Cabecalho_Produtos;
      xcont := xcont + 1;
      DMESTOQUE.TSlave.First;
      //Edmar - 11/07/2014 - Imprime produtos da ordem
      ImpCompModelo10_Corpo_Produtos;
      xcont := xcont + 1;
      //Edmar - 11/07/2014 - Imprime cabeçalho dos serviços
      ImpCompModelo10_Cabecalho_Servicos;
      xcont := xcont + 1;
      DMESTOQUE.TDesp.First;
      //Edmar - 11/07/2014 - Imprime serviços da ordem
      ImpCompModelo10_Corpo_Servicos;

      //With RvSystem1.BaseReport Do
      //Begin
          //Edmar - 11/07/2014 - se ultrapassar 55 linha cria uma nova página
          //e reimprime cabeçalhos
      if xcont > 55 then
      begin
        XLinha := 0.3;
        xcont := 1;
        XNovaPag := 2;
        Xcop := 2;
        NewPage;
        ImpCompModelo10_Cabecalho_Empresa;
        ImpCompModelo10_Cabecalho_Cliente;
      end;

      //Paulo 20/01/2011: Dados Financeiro
      PrintLeft('_____________________________________________________________________________________________________________________________', 0.3);
      PrintRight('_____________________________________________________________________________________________________________________________', PageWidth - 0.5);
      NewLine;
      xcont := xcont + 1;
      SetFont('Verdana', 7);
      Bold := True;
      PrintLeft('Forma de Pagamento:', 0.3);
      PrintLeft('Pagamento:', 3.0);
      PrintRight('Valor:', PageWidth - 2.0);
      PrintRight('Vencimento:', PageWidth - 0.8);
      NewLine;
      xcont := xcont + 1;
      Bold := False;
      PrintLeft(DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString, 0.3);

      if not DMMACS.TMP.IsEmpty then
      begin
        DMMACS.TMP.First;
        while not DMMACS.TMP.Eof do
        begin
          PrintLeft(DMMACS.TMP.FieldByName('DESC2').AsString, 3.0);
          PrintRight(FormatFloat('#,###0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency), PageWidth - 2.0);
          PrintRight(DMMACS.TMP.FieldByName('DESC1').AsString, PageWidth - 0.8);
          NewLine;
          xcont := xcont + 1;
          DMMACS.TMP.Next;
        end;
      end
      else
      begin
        NewLine;
        xcont := xcont + 1;
      end;
      //Edmar - 11/07/2014 - se ultrapassar 55 linha cria uma nova página
      //e reimprime cabeçalhos
      if xcont > 55 then
      begin
        XLinha := 0.3;
        xcont := 1;
        XNovaPag := 2;
        Xcop := 2;
        NewPage;
        ImpCompModelo10_Cabecalho_Empresa;
        ImpCompModelo10_Cabecalho_Cliente;
      end;

      SetFont('Arial', 7);

      PrintLeft('-----------------------------------------------------------------------------------------------------------------------------', 0.3);
      PrintRight('-----------------------------------------------------------------------------------------------------------------------------', PageWidth - 0.5);

      xcont := xcont + 1;
      NewLine;
      SetFont('Verdana', 8);
      Bold := True;
      PrintLeft('Sub-Total Serviços R$:', 0.3);
      Bold := False;
      PrintLeft(FormatFloat('#,###0.00', DMESTOQUE.ALX2.FieldByName('VLRTOTFIN').AsCurrency), 2.0);
      Bold := True;
      PrintRight('Sub-Total Peças R$:', PageWidth - 1.2);
      Bold := False;
      PrintRight(FormatFloat('#,###0.00', XtotalProd), PageWidth - 0.5);
      xcont := xcont + 1;
      NewLine;
      SetFont('Verdana', 8);
      Bold := True;
      PrintLeft('Desconto Serviços R$:', 0.3);
      Bold := False;
      PrintLeft(FormatFloat('#,###0.00', (DMServ.TOrd.FieldByName('TOTSERV').AsCurrency - DMESTOQUE.ALX2.FieldByName('VLRTOTFIN').AsCurrency)), 2.0);
      Bold := True;
      PrintRight('Desconto Peças R$:', PageWidth - 1.2);
      Bold := False;
      PrintRight(FormatFloat('#,###0.00', (XtotalProd - DMServ.TOrd.FieldByName('TOTPROD').AsCurrency)), PageWidth - 0.5);
      xcont := xcont + 1;
      NewLine;
      Bold := True;
      SetFont('Arial', 7);
      Bold := True;
      PrintLeft('-----------------------------------------------------------------------------------------------------------------------------', 0.3);
      PrintRight('-----------------------------------------------------------------------------------------------------------------------------', PageWidth - 0.5);
      xcont := xcont + 1;
      NewLine;
      SetFont('Verdana', 8);
      Bold := True;
      //Edmar - 11/07/2014 - se ultrapassar 55 linha cria uma nova página
      //e reimprime cabeçalhos
      if xcont > 55 then
      begin
        XLinha := 0.3;
        xcont := 1;
        XNovaPag := 2;
        Xcop := 2;
        NewPage;
        ImpCompModelo10_Cabecalho_Empresa;
        ImpCompModelo10_Cabecalho_Cliente;
      end;

      PrintLeft('Total Serviços R$:', 0.3);
      PrintLeft(FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('TOTSERV').AsCurrency), 2.0);
      PrintRight('Total Peças R$:', PageWidth - 1.2);
      PrintRight(FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('TOTPROD').AsCurrency), PageWidth - 0.5);
      xcont := xcont + 1;
      NewLine;
      SetFont('Arial', 7);
      Bold := True;
      PrintLeft('-----------------------------------------------------------------------------------------------------------------------------', 0.3);
      PrintRight('-----------------------------------------------------------------------------------------------------------------------------', PageWidth - 0.5);
      xcont := xcont + 1;
      NewLine;
      //Edmar - 11/07/2014 - se ultrapassar 55 linha cria uma nova página
      //e reimprime cabeçalhos
      if xcont > 55 then
      begin
        XLinha := 0.3;
        xcont := 1;
        XNovaPag := 2;
        Xcop := 2;
        NewPage;
        ImpCompModelo10_Cabecalho_Empresa;
        ImpCompModelo10_Cabecalho_Cliente;
      end;

      SetFont('Verdana', 7);
      Bold := True;
      PrintLeft('Observação:', 0.3);
      //Edmar - 12/02/2015 - Na mesma linha da observação, imprime o total da ordem de serviço
      SetFont('Verdana', 9);
      Bold := True;
      PrintRight('Total Ordem R$:', PageWidth - 1.2);
      PrintRight(FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('TOTORD').AsCurrency), PageWidth - 0.5);
      NewLine;
      //Edmar - 12/02/2015 - Copia a observação e separa em quatro variaveis
      //para imprimir quatro linhas de observação (reduz espaço para impressão de mais itens
      //e aumenta a o numero de caracteres para a observação
      xLinha1Obs := Copy(DMServ.TOrd.FieldByName('obsordem').AsString, 0, 60);
      xLinha2Obs := Copy(DMServ.TOrd.FieldByName('obsordem').AsString, 61, 60);
      xLinha3Obs := Copy(DMServ.TOrd.FieldByName('obsordem').AsString, 122, 60);
      xLinha4Obs := Copy(DMServ.TOrd.FieldByName('obsordem').AsString, 182, 55);

      SetFont('Verdana', 7);
      Bold := False;
      PrintLeft(xLinha1Obs, 0.3); //linha 1 da observação
      NewLine;
      SetFont('Verdana', 7);
      Bold := False;
      PrintLeft(xLinha2Obs, 0.3); //linha 2 da observação
      NewLine;
      SetFont('Verdana', 7);
      Bold := False;
      PrintLeft(xLinha3Obs, 0.3); //linha 3 da observação
      //junto com a terceira linha da observação, imprime o traço da assinatura
      PrintRight('______________________________________', PageWidth - 0.5);
      xcont := xcont + 1;
      NewLine;
      //junto com a quarta linha da observação, imprime o nome do cliente
      SetFont('Verdana', 8);
      Bold := True;
      PrintRight(DMServ.Alx.FieldByName('NOME').AsString, PageWidth - 0.7);
      SetFont('Verdana', 7);
      Bold := False;
      PrintLeft(xLinha4Obs, 0.3); //linha 4 da observação
      //terminado a impressão da ordem de serviço
      //imprime o rodapé do comprovante
      SetFont('Arial', 7);
      NewLine;
      xcont := xcont + 1;
      PrintLeft('-----------------------------------------------------------------------------------------------------------------------------', 0.3);
      PrintRight('-----------------------------------------------------------------------------------------------------------------------------', PageWidth - 0.5);
      NewLine;
      xcont := xcont + 1;
      SetFont('Verdana', 6);
      Bold := False;
      PrintCenter(DMMACS.TLoja.FieldByName('TMP3').AsString, PageWidth / 2);
      NewLine;
      if PmRelatorio.Tag = 2 then
        Exit; //comando para sair do loop
      if XtipoImp = 'MEIA' then
      begin
        XLinha := (PageHeight / 2) + 0.1;
        MoveTo(0, PageHeight / 2);
        LineTo(PageWidth, PageHeight / 2);
        MoveTo(0, PageHeight / 2);
        LineTo(PageWidth, PageHeight / 2);
        MoveTo(0, PageHeight / 2);
        LineTo(PageWidth, PageHeight / 2);
      end
      else
      begin
        XLinha := 0.3;
        NewPage;
      end;
    end;
  end;
  //end;
end;

//Comprovante de OS numero 17
procedure TFOrdemMec.ImpCompModelo17;
var
  Bitmap: TBitmap;
  //Xcop,XNovaPag,xcont: Integer;
  XLinha: Double;
  XtotalProd: Real;
begin
  try
    //XNovaPag:=2;

       //Xcop:=1;
    XLinha := 0.3;
    //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
    if FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = False then
      Exit;

    //Paulo 15/03/2011: busca mecanico responsavel
    FiltraTabela(DMESTOQUE.TDesp, 'DESPADIC', 'COD_GERADOR', DMServ.TOrd.FieldByName('COD_ORDEM').AsString, 'AND(GERADOR=' + #39 + 'ORDEM' + #39 + ')');
    FiltraTabela(DMPESSOA.TEquipe, 'EQUIPE', 'COD_EQUIPE', DMESTOQUE.TDesp.FieldByName('COD_EQUIPE').AsString, '');

    //Paulo 19/01/2011: Cabeçalho do relatório
    with RvSystem1.BaseReport do
    begin
      XtotalProd := 0;
      while XNovaPag = 2 do
      begin
        XtotalProd := 0;
        //PrintBitmap(0.5,0.3,1.5,1.5,Bitmap); //Adiciono a logo do lado esquerdo
        //Paulo 19/01/2012:Carrega a imagem para ser usado no relatório
        try
          Bitmap := TBitmap.Create;
          Bitmap.LoadFromFile('logoEmpresa.bmp');
          // PrintBitmapRect(0.5,XLinha,1.7,1.0,Bitmap); //Adiciono a logo do lado esquerdo
           //PrintBitmap(0.5,XLinha,1.5,1.5,Bitmap); //Adiciono a logo do lado esquerdo
          Bitmap := TBitmap.Create;
          Bitmap.LoadFromFile('logoEmpresa.bmp');
          PrintImage(RVSystem1, XLinha, 0.5, 1.5, 0.7, Bitmap);
        finally
          //  FreeAndNil(Bitmap);
        end;

        //Titulo centralizado
        SetFont('Arial', 12);
        Bold := True;
        PrintXY((PageWidth / 2) - 1.3, XLinha + 0.2, DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString);
        //PrintCenter(DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString,PageWidth/2);

        //data e hora
        SetFont('Arial', 7);
        Bold := True;
        PrintXY(PageWidth - 1.5, XLinha + 0.2, DateToStr(Date()) + ' - ' + TimeToStr(Time()));
        //PrintRight(DateToStr(Date())+' - '+TimeToStr(Time()),PageWidth-0.5);

        NewLine;

        //cnpj e endereço centralizado
        SetFont('Arial', 8);
        Bold := False;
        PrintCenter('CNPJ: ' + DMMACS.TEmpresa.FieldByName('CNPJ').AsString, PageWidth / 2);
        //Imprime modelo do relatorio
        PrintRight('Mod. Imp: 17', PageWidth - 0.5);
        NewLine;
        PrintCenter('Endereço: ' + DMMACS.TEmpresa.FieldByName('ENDERECO').AsString + ' Bairro: ' +
          DMMACS.TEmpresa.FieldByName('BAIRRO').AsString, PageWidth / 2);
        NewLine;

        PrintCenter('Fone: ' + DMMACS.TEmpresa.FieldByName('FONE').AsString, PageWidth / 2);
        NewLine;

        XLinha := XLinha + 0.8;

        MoveTo(0.3, XLinha); //Xlinha = 1.0
        LineTo(PageWidth - 0.5, XLinha);

        NewLine;

        //Paulo 20/01/2012: Busca dados da OS
        //CompdeAbertura1Click(Sender);

        //Paulo 20/01/2012: Cabeçalho da OS:
        SetFont('Arial', 8);
        Bold := True;
        PrintLeft('O.S nº.' + DMServ.TOrd.FieldByName('NUMERO').AsString, 0.3);
        PrintLeft('Emissão: ' + DMServ.TOrd.FieldByName('DTABERT').AsString, 1.1);
        PrintLeft('Cliente: ' + DMServ.Alx.FieldByName('NOME').AsString, 2.5);
        PrintRight('CPF/CNPJ: ' + DMServ.Alx.FieldByName('CPFCNPJ').AsString, PageWidth - 1.3);
        NewLine;
        PrintLeft('Tel.:' + DMServ.Alx.FieldByName('TELREL').AsString, 0.3);
        PrintLeft('Endereço:' + DMServ.Alx.FieldByName('ENDERECO').AsString + ', ' + DMServ.Alx.FieldByName('ENDNUMERO').AsString, 2.5);
        PrintRight('Bairro: ' + DMServ.Alx.FieldByName('BAIRRO').AsString, PageWidth - 1.3);
        NewLine;
        PrintLeft('Cidade:' + DMServ.Alx.FieldByName('CIDADE').AsString + ' - ' + DMServ.Alx.FieldByName('UF_ESTADO').AsString, 0.3);
        PrintLeft('Veiculo:' + DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString, 3.0);
        PrintRight('Placa: ' + DMPESSOA.TEquip.FieldByName('PLACA').AsString, PageWidth - 1.3);
        //NewLine;

        XLinha := XLinha + 0.8;
        MoveTo(0.3, XLinha); //Xlinha = 1.5
        LineTo(PageWidth - 0.5, XLinha);
        NewLine;

        xcont := 1;
        //Paulo 20/01/2012: dados de PRODUTOS
        if not DMESTOQUE.TSlave.IsEmpty then
        begin
          SetFont('Arial', 7);
          Bold := True;
          PrintLeft('Produtos:', 0.3);
          SetFont('Verdana', 7);
          Bold := True;
          PrintLeft('Código:', 1.0);
          PrintLeft('Quantidade:', 1.6);
          PrintLeft('Descrição:', 2.5);
          PrintRight('Vlr. Unitário:', PageWidth - 1.2);
          PrintRight('Vlr. Total:', PageWidth - 0.5);
          NewLine;
          xcont := xcont + 1;
          DMESTOQUE.TSlave.First;
          while not DMESTOQUE.TSlave.Eof do
          begin
            SetFont('Arial', 5);
            Bold := False;
            PrintLeft(DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString, 0.8);
            SetFont('Arial', 7);
            PrintLeft(DMESTOQUE.TSlave.FieldByName('PRIMCOD').AsString, 1.0);
            PrintLeft(DMESTOQUE.TSlave.FieldByName('QTD').AsString, 1.8);
            PrintLeft(DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString, 2.5);
            PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency), PageWidth - 1.2);
            PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency), PageWidth - 0.5);
            XtotalProd := XtotalProd + DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
            NewLine;
            xcont := xcont + 1;
            DMESTOQUE.TSlave.Next;
          end;
          PrintLeft('-----------------------------------------------------------------------------------------------------------------------------', 0.3);
          PrintRight('-----------------------------------------------------------------------------------------------------------------------------', PageWidth - 0.5);
          NewLine;
        end;

        //Paulo 20/01/2012: dados de SERVIÇOS
        if not DMESTOQUE.TDesp.IsEmpty then
        begin
          SetFont('Arial', 7);
          Bold := True;
          PrintLeft('Serviços:', 0.3);
          SetFont('Verdana', 7);
          Bold := True;
          PrintLeft('Quantidade:', 1.6);
          PrintLeft('Descrição:', 2.5);
          PrintRight('Vlr. Unitário:', PageWidth - 1.2);
          PrintRight('Vlr. Total:', PageWidth - 0.5);
          NewLine;
          xcont := xcont + 1;
          DMESTOQUE.TDesp.First;
          while not DMESTOQUE.TDesp.Eof do
          begin
            Bold := False;
            SetFont('Arial', 7);
            PrintLeft(DMESTOQUE.TDesp.FieldByName('QTD').AsString, 1.8);
            PrintLeft(DMESTOQUE.TDesp.FieldByName('DESPESA').AsString, 2.5);
            PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency), PageWidth - 1.2);
            PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency), PageWidth - 0.5);
            NewLine;
            xcont := xcont + 1;
            DMESTOQUE.TDesp.Next;
          end;

        end;

        //Paulo 20/01/2011: Dados Financeiro
        PrintLeft('_____________________________________________________________________________________________________________________________', 0.3);
        PrintRight('_____________________________________________________________________________________________________________________________', PageWidth - 0.5);
        NewLine;
        xcont := xcont + 1;
        SetFont('Verdana', 7);
        Bold := True;
        PrintLeft('Forma de Pagamento:', 0.3);
        PrintLeft('Pagamento:', 3.0);
        PrintRight('Valor:', PageWidth - 2.0);
        PrintRight('vencimento:', PageWidth - 0.8);
        NewLine;
        xcont := xcont + 1;
        Bold := False;
        PrintLeft(DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString, 0.3);
        if not DMMACS.TMP.IsEmpty then
        begin
          DMMACS.TMP.First;
          while not DMMACS.TMP.Eof do
          begin
            PrintLeft(DMMACS.TMP.FieldByName('DESC2').AsString, 3.0);
            PrintRight(FormatFloat('#,###0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency), PageWidth - 2.0);
            PrintRight(DMMACS.TMP.FieldByName('DESC1').AsString, PageWidth - 0.8);
            NewLine;
            xcont := xcont + 1;
            DMMACS.TMP.Next;
          end;
        end
        else
        begin
          NewLine;
          xcont := xcont + 2;
        end;

        SetFont('Arial', 7);

        PrintLeft('-----------------------------------------------------------------------------------------------------------------------------', 0.3);
        PrintRight('-----------------------------------------------------------------------------------------------------------------------------', PageWidth - 0.5);

        xcont := xcont + 1;
        NewLine;
        SetFont('Verdana', 8);
        Bold := True;
        PrintLeft('Total Serviços R$:', 0.3);
        PrintLeft(FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('TOTSERV').AsCurrency), 2.0);
        PrintRight('Total Ordem R$:', PageWidth - 1.2);
        PrintRight(FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('TOTORD').AsCurrency), PageWidth - 0.5);
        NewLine;
        PrintLeft('Total Peças R$:', 0.3);
        PrintLeft(FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('TOTPROD').AsCurrency), 2.0);
        xcont := xcont + 1;
        NewLine;
        SetFont('Arial', 7);
        Bold := True;
        PrintLeft('-----------------------------------------------------------------------------------------------------------------------------', 0.3);
        PrintRight('-----------------------------------------------------------------------------------------------------------------------------', PageWidth - 0.5);
        xcont := xcont + 1;
        NewLine;
        SetFont('Verdana', 7);
        Bold := True;
        PrintLeft('Observação:', 0.3);
        NewLine;
        Bold := False;
        PrintLeft(DMServ.TOrd.FieldByName('OBSERVACAO').AsString, 0.3);
        Bold := True;
        SetFont('Verdana', 9);
        Bold := True;
        NewLine;
        xcont := xcont + 2;
        NewLine;
        NewLine;
        PrintRight('_______________________________________', PageWidth - 0.5);
        xcont := xcont + 1;
        NewLine;
        SetFont('Verdana', 8);
        Bold := True;
        PrintRight(DMServ.Alx.FieldByName('NOME').AsString, PageWidth - 1.3);
        xcont := xcont + 1;
        NewLine;
        SetFont('Arial', 7);
        PrintLeft('-----------------------------------------------------------------------------------------------------------------------------', 0.3);
        PrintRight('-----------------------------------------------------------------------------------------------------------------------------', PageWidth - 0.5);
        NewLine;
        xcont := xcont + 1;
        SetFont('Verdana', 6);
        Bold := False;
        PrintCenter(DMMACS.TLoja.FieldByName('TMP3').AsString, PageWidth / 2);
        NewLine;

        if (xcont > 22) and (Xcop = 1) then
        begin
          XNovaPag := 2;
          Xcop := 2;
          NewPage;
        end
        else
        begin
          if Xcop = 2 then
            XNovaPag := 1
          else
          begin
            xcont := 1;
            XLinha := (PageHeight / 2) + 0.3;
            MoveTo(0, PageHeight / 2);
            LineTo(PageWidth, PageHeight / 2);
            MoveTo(0, PageHeight / 2);
            LineTo(PageWidth, PageHeight / 2);
            MoveTo(0, PageHeight / 2);
            LineTo(PageWidth, PageHeight / 2);
            Xcop := 2;

          end;
        end;

      end;

    end;

  except

  end;
end;

//Comprovante de OS numero 18 - Cabecalho
procedure TFOrdemMec.ImpCompModelo18_Cabecalho;
var
  Bitmap: TBitmap;
begin
  try
    with RvSystem1.BaseReport do
    begin
      try
        Bitmap := TBitmap.Create;
        Bitmap.LoadFromFile('logoEmpresa.bmp');
        Bitmap := TBitmap.Create;
        Bitmap.LoadFromFile('logoEmpresa.bmp');
        //PrintImage(RVSystem1, XLinha, 0.3, 1.9, 1.1, Bitmap);
        PrintImage(RVSystem1, XLinha, 0.3, 2.9, 0.9, Bitmap);
      finally
      end;
      //Titulo esquerda
      SetFont('Arial', 10);
      Bold := False;
      PrintXY(3.3, XLinha + 0.2, DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString + '            Fone: ' + DMMACS.TEmpresa.FieldByName('FONE').AsString);
      //data e hora
      SetFont('Arial', 10);
      Bold := false;
      NewLine;
      PrintRight('Impresso: ' + DateToStr(Date()) + ' [18]', PageWidth - 0.4);
      NewLine;
      XLinha := XLinha + 0.2;
      //cnpj e endereço centralizado
      SetFont('Arial', 10);
      Bold := False;
      PrintXY(3.3, XLinha + 0.2, DMMACS.TEmpresa.FieldByName('ENDERECO').AsString + ' - ' + DMMACS.TEmpresa.FieldByName('NUMERO').AsString);
      NewLine;
      XLinha := XLinha + 0.4;
      //Imprime o site
      Bold := False;
      SetFont('Arial', 10);
      PrintXY(3.3, XLinha, DMMACS.TEmpresa.FieldByName('WEB_PAGE').AsString);
      //Imprime modelo do relatorio
      SetFont('Arial', 12);
      Bold := True;
      PrintRight('OS Nº' + DMServ.TOrd.FieldByName('NUMERO').AsString, PageWidth - 0.5);
      NewLine;
      XLinha := XLinha + 0.2;
      //Imprime o Status da OS
      SetFont('Arial', 10);
      if DMServ.TOrd.FieldByName('STATUS').AsString = 'ABERTO' then
        PrintRight(DMServ.TOrd.FieldByName('STATUS').AsString + ' - ' + DMServ.TOrd.FieldByName('dtabert').AsString, PageWidth - 0.5)
      else
        PrintRight(DMServ.TOrd.FieldByName('STATUS').AsString + ' - ' + DMServ.TOrd.FieldByName('dtfech').AsString, PageWidth - 0.5);

      MoveTo(0.3, XLinha); //Xlinha = 1.0
      LineTo(PageWidth - 0.5, XLinha);
      NewLine;
      NewLine;
      XLinha := XLinha + 0.5;
    end;
  except
  end;
end;

//Comprovante de OS numero 18 - Cabecalho do cliente
procedure TFOrdemMec.ImpCompModelo18_Cabecalho_Cliente;
var
  Bitmap: TBitmap;
begin
  try
    with RvSystem1.BaseReport do
    begin
      //1º LINHA
      SetFont('Arial', 9);
      Bold := True;
      PrintLeft('Cliente: ', 0.3);
      PrintLeft('Veículo: ', 6.1);
      PrintLeft('CPF:', 3.6);
      Bold := False;
      PrintLeft(Copy(DMServ.Alx.FieldByName('NOME').AsString, 0, 32), 0.8);
      PrintLeft(Copy(DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString, 0, 24), 6.7);
      PrintLeft(DMServ.Alx.FieldByName('cpfcnpj').AsString, 4.0);
      //2º LINHA
      SetFont('Arial', 9);
      NewLine;
      Bold := True;
      PrintLeft('Tel.:', 0.3);
      PrintLeft('Bairro: ', 3.6);
      PrintLeft('Placa:', 6.1);
      Bold := False;
      PrintLeft(DMServ.Alx.FieldByName('TELREL').AsString, 0.8);
      PrintLeft(Copy(DMPESSOA.TEquip.FieldByName('PLACA').AsString, 0, 24), 6.6);
      PrintLeft(DMServ.Alx.FieldByName('BAIRRO').AsString, 4.1);
      //3º LINHA
      NEWLINE;
      Bold := True;
      PrintLeft('Cidade:', 0.3);
      PrintLeft('OBS: ', 3.6);
      PrintLeft('Km: ', 6.1);
      Bold := False;
      PrintLeft(DMServ.Alx.FieldByName('CIDADE').AsString + ' - ' + DMServ.Alx.FieldByName('UF_ESTADO').AsString, 0.8);
      PrintLeft(FormatFloat('0,000', DMServ.TOrd.FieldByName('totkm').AsCurrency), 6.5);
      PrintLeft(Copy(MObsOrdem.Lines[0], 0, 40), 4.0); //Imprime Linha 1 de Obs
      //4º Linha
      Newline;
      Bold := True;
      PrintLeft('Endereço:', 0.3);
      Bold := False;
      PrintLeft(DMServ.Alx.FieldByName('ENDERECO').AsString + ', ' + DMServ.Alx.FieldByName('ENDNUMERO').AsString, 1.0);
      PrintLeft(Copy(MObsOrdem.Lines[1], 0, 26), 4.0); //Imprime Linha 2 de Obs
      newline;
      XLinha := XLinha + 0.4;
      MoveTo(0.3, XLinha); //Xlinha = 1.5
      LineTo(PageWidth - 0.5, XLinha);
    end;
  except

  end;
end;

//Comprovante de OS numero 18 - Cabecalho de produtos
procedure TFOrdemMec.ImpCompModelo18_Cabecalho_Produtos;
begin
  try
    with RvSystem1.BaseReport do
    begin
      SetFont('Arial', 11);
      Bold := True;
      PrintLeft('Cd. Int.: |', 0.3);
      PrintLeft('Cd. Fab.: |', 1.0);
      PrintLeft('  Descrição:', 1.7);
      PrintLeft('|  Vlr. Unit.: |', 5.3);
      PrintLeft('Qtd.:|', 6.3);
      PrintLeft('Vlr. Total:|', 6.7);
    end;
  except
  end;
end;

//Comprovante de OS numero 18 - Imprime os dados de Produto
procedure TFOrdemMec.ImpCompModelo18_ItemdeProduto;
begin
  try
    with RvSystem1.BaseReport do
    begin
      SetFont('Arial', 8);
      Bold := False;
      PrintLeft(DMESTOQUE.TSlave.FieldByName('PRIMCOD').AsString, 0.3);
      PrintLeft('| ', 0.9);
      PrintLeft(Copy(DMESTOQUE.TSlave.FieldByName('SEGCOD').AsString, 1, 10), 1.0);
      PrintLeft('|', 1.7);
      PrintLeft(Copy(DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString, 1, 53), 1.8);
      PrintLeft('|', 5.3);
      PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency), PageWidth - 2.3);
      PrintLeft('|', 6.1);
      PrintRight(DMESTOQUE.TSlave.FieldByName('QTD').AsString, PageWidth - 1.7);
      PrintLeft('|', 6.7);
      PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency), PageWidth - 0.9);
      PrintLeft('|', 7.4);
      XtotalProd := XtotalProd + DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
      SetFont('Arial', 5);
      NewLine;
    end;
  except
  end;
end;

//Comprovante de OS numero 18 - Imprime os dados de Serviços
procedure TFOrdemMec.ImpCompModelo18_ItemdeServicos;
begin
  try
    with RvSystem1.BaseReport do
    begin
      SetFont('Arial', 8);
      Bold := False;
      PrintLeft('|', 1.7);
      PrintLeft(DMESTOQUE.TDesp.FieldByName('DESPESA').AsString, 1.8);
      PrintLeft('|', 5.3);
      PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency), PageWidth - 2.3);
      PrintLeft('|', 6.1);
      PrintRight(DMESTOQUE.TDesp.FieldByName('QTD').AsString, PageWidth - 1.7);
      PrintLeft('|', 6.7);
      PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency), PageWidth - 0.9);
      //Edmar - 07/05/2014 - Adicionado o incremento da váriavel para o calculo de desconto correto.
      xTotalServ := xTotalServ + DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency;
      PrintRight('| ', PageWidth - 0.8);
      PrintRight(DMESTOQUE.TDesp.FieldByName('cod_equipe').AsString, PageWidth - 0.5);
    end;
  except
  end;
end;

//Comprovante de OS numero 18 - Imprime os dados de Forma de Pagamento
procedure TFOrdemMec.ImpCompModelo18_FormadePagamento;
var
  Xtag, lnh: Integer;
begin
  try
    with RvSystem1.BaseReport do
    begin
      //Controle de Linha meia pagina pagina inteira
      if (XtipoImp = 'MEIA') {//Se numero de itens inferior a 11} then
      begin
        for Xtag := xContaLinha to 14 do
        begin
          NewLine;
        end;
      end;
      SetFont('Arial', 11);
      //PrintLeft('-----------------------------------------------------------------------------------------------------------------------------------------------', 0.3);
      MoveTo(0.3, XLinha + 2.1); //Xlinha = 1.5
      LineTo(PageWidth - 0.5, XLinha + 2.1);
      NewLine;
      xcont := xcont + 1;
      SetFont('Arial', 11);
      Bold := True;
      PrintLeft('Forma de Pagamento: ', 0.3);
      PrintLeft('Desc.:', 5.3);
      //          PrintLeft('Total Ordem R$:', 5.5);
      Bold := False;
      PrintLeft(DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString, 2.0);
      if ((xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency) <= 0 then
        PrintLeft('0,00', 5.9)
      else
        PrintLeft(FormatFloat('####,##0.00', (xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency), 5.0);
      xTotalFinalOrdem := DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
      PrintLeft(FormatFloat('####,##0.00', xTotalFinalOrdem), 6.8);
      NewLine;
      SetFont('Arial', 11);
      //PrintLeft('-----------------------------------------------------------------------------------------------------------------------------------------------', 0.3);
      MoveTo(0.3, XLinha + 2.3); //Xlinha = 1.5
      LineTo(PageWidth - 0.5, XLinha + 2.3);
      NewLine;
      NewLine;
      RvSystem1.BaseReport.Printleft('_______________________________________', (RvSystem1.BaseReport.PageWidth / 2) - 1.7 {2.5});
      xcont := xcont + 1;
      NewLine;
      //Edmar - 07/05/2014 - Zera as variaveis de total devido ao calculo incorreto do desconto
      xTotalProd := 0;
      xTotalServ := 0;

      RvSystem1.BaseReport.SetFont('Verdana', 8);
      RvSystem1.BaseReport.Bold := false;
      RvSystem1.BaseReport.Printleft(DMServ.Alx.FieldByName('NOME').AsString, (RvSystem1.BaseReport.PageWidth / 2) - 1.0 {3.0});
      xcont := xcont + 1;
      NewLine;
      RvSystem1.BaseReport.SetFont('Arial', 7);
      //            RvSystem1.BaseReport.PrintLeft('-----------------------------------------------------------------------------------------------------------------------------', 0.3);
      //            RvSystem1.BaseReport.PrintRight('-----------------------------------------------------------------------------------------------------------------------------', RvSystem1.BaseReport.PageWidth - 0.5);
      //            NewLine;
      //            RvSystem1.BaseReport.SetFont('Verdana', 6);
      //            RvSystem1.BaseReport.Bold := False;
      //            RvSystem1.BaseReport.PrintCenter(DMMACS.TLoja.FieldByName('TMP3').AsString, RvSystem1.BaseReport.PageWidth / 2);
    end;
  except
  end;
end;

//Comprovante de OS numero 18
procedure TFOrdemMec.ImpCompModelo18;
var
  XtotalProd: Real;
  XQtdPagina: string;
begin
  try
    XLinha := 0.1;
    //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
    if FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = False then
      Exit;
    //Alex 25/04/2014: busca mecanico responsavel
    FiltraTabela(DMESTOQUE.TDesp, 'DESPADIC', 'COD_GERADOR', DMServ.TOrd.FieldByName('COD_ORDEM').AsString, 'AND(GERADOR=' + #39 + 'ORDEM' + #39 + ')');
    FiltraTabela(DMPESSOA.TEquipe, 'EQUIPE', 'COD_EQUIPE', DMESTOQUE.TDesp.FieldByName('COD_EQUIPE').AsString, '');
    //Alex 04/05/2014: Verifica a quantidade de itens a serem impressos
    DMFINANC.TAlx.Close;
    DMFINANC.TAlx.SQL.Clear;
    DMFINANC.TAlx.SQL.Add(' Select count(despadic.cod_despadic) as qtd from despadic where (despadic.gerador=''ORDEM'') and (despadic.cod_gerador=:codigo)');
    DMFINANC.TAlx.ParamByName('codigo').AsString := DMServ.TOrd.FieldByName('COD_ORDEM').AsString;
    DMFINANC.TAlx.Open;
    XQuantServicosImprimir := DMFINANC.TAlx.FieldByName('qtd').AsInteger;
    DMFINANC.TAlx.Close;
    DMFINANC.TAlx.SQL.Clear;
    DMFINANC.TAlx.SQL.Add(' Select count(itprodord.cod_itprodord) as qtd from itprodord where (itprodord.cod_ordem = :codigo) ');
    DMFINANC.TAlx.ParamByName('codigo').AsString := DMServ.TOrd.FieldByName('COD_ORDEM').AsString;
    DMFINANC.TAlx.Open;
    XQuantProdutosImprimir := DMFINANC.TAlx.FieldByName('qtd').AsInteger;
    //Alex 02/05/2014: Verifica o tipo da pagina a ser usada na impressão
    if (XQuantProdutosImprimir + XQuantServicosImprimir) >= 16 then
      XtipoImp := 'INTEIRA'
    else
      XtipoImp := 'MEIA';

    //Repassa para o componente de memo a observação da OS
    MObsOrdem.Lines.Clear;
    MObsOrdem.lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
    with RvSystem1.BaseReport do
    begin
      XQtdPagina := '';
      while PmRelatorio.Tag < 2 do
      begin
        xContaLinha := 0; //Variavel para controle de linhas de produtos e serviços
        XtotalProd := 0;
        PmRelatorio.Tag := PmRelatorio.Tag + 1;
        //Imprime cabeçalho da Empresa
        ImpCompModelo18_Cabecalho;
        //Alex 25/04/2014: Cabeçalho da OS para clientes:
        ImpCompModelo18_Cabecalho_Cliente;
        XLinha := XLinha + 0.8;
        NewLine;
        xcont := 1;
        //Alex 01/05/2014 - Se a tabela de produtos não estiver vazia, imprime os produtos
        if not DMESTOQUE.TSlave.IsEmpty then
        begin
          //Alex 01/05/2014 - Imprime o cabeçalho de produtos
          ImpCompModelo18_Cabecalho_Produtos;
          NewLine;
          xcont := xcont + 1;
          //Alex 01/05/2014 - Imprime todos os produtos da tabela
          DMESTOQUE.TSlave.First;
          while not DMESTOQUE.TSlave.Eof do
          begin
            //Alex 01/05/2014 - Imprime a linha de produtos
            ImpCompModelo18_ItemdeProduto;
            xContaLinha := xContaLinha + 1;
            xcont := xcont + 1;
            DMESTOQUE.TSlave.Next;
          end;
        end;
        //Alex 01/05/2014: dados de SERVIÇOS
        if not DMESTOQUE.TDesp.IsEmpty then
        begin
          xcont := xcont + 1;
          DMESTOQUE.TDesp.First;
          while not DMESTOQUE.TDesp.Eof do
          begin
            //Alex 01/05/2014 - Imprime itens de serviços
            ImpCompModelo18_ItemdeServicos;
            xContaLinha := xContaLinha + 1;
            NewLine;
            xcont := xcont + 1;
            DMESTOQUE.TDesp.Next;
          end;
        end;
        //Alex 01/05/2014 - Imprime os dados do financeiro
//	             MoveTo(0.3, XLinha + 1.9); //Xlinha = 1.5
//	             LineTo(PageWidth - 0.5, XLinha + 1.9);
        ImpCompModelo18_FormadePagamento;
        //	             MoveTo(0.3, XLinha + 2.2); //Xlinha = 1.5
        //	             LineTo(PageWidth - 0.5, XLinha + 2.2);
        if PmRelatorio.Tag = 2 then
          Exit; //comando para sair do loop
        if XtipoImp = 'MEIA' then
        begin
          XLinha := (PageHeight / 2) + 0.1;
          MoveTo(0, PageHeight / 2);
          LineTo(PageWidth, PageHeight / 2);
          MoveTo(0, PageHeight / 2);
          LineTo(PageWidth, PageHeight / 2);
          MoveTo(0, PageHeight / 2);
          LineTo(PageWidth, PageHeight / 2);
        end
        else
        begin
          XLinha := 0.3;
          NewPage;
        end;
      end;
    end;

  except
  end;
end;

//Paulo 20/01/2012: Insere uma imagem no relatório

procedure TFOrdemMec.PrintImage(RVSystem: TRvSystem; Row, Col, ImageWidth, ImageHeight: Double; Bitmap: TBitmap; FileName: string = '');
var
  Calc, L1, C1, L2, C2: Double;
  InternalBitmap: TBitmap;
begin
  try
    InternalBitmap := TBitmap.Create;
    try
      if not Assigned(Bitmap) then
      begin
        InternalBitmap.LoadFromFile(FileName);
      end
      else
      begin
        InternalBitmap.Assign(Bitmap);
      end;
      with RVSystem.BaseReport do
      begin
        if ImageWidth <= 0.0 then
        begin
          Calc := ImageHeight * (InternalBitmap.Width / XDPI) / (InternalBitmap.Height / YDPI);
          C1 := Col;
          L1 := Row;
          C2 := Col + Calc;
          L2 := Row + ImageHeight;
        end
        else if ImageHeight <= 0.0 then
        begin
          Calc := ImageWidth * (InternalBitmap.Height / YDPI) / (InternalBitmap.Width / XDPI);
          C1 := Col;
          L1 := Row;
          C2 := Col + ImageWidth;
          L2 := Row + Calc;
        end
        else
        begin
          C1 := Col;
          L1 := Row;
          C2 := Col + ImageWidth;
          L2 := Row + ImageHeight;
        end;
        PrintBitmapRect(C1, L1, C2, L2, InternalBitmap);
      end;
    finally
      InternalBitmap.Free;
    end;
  except

  end;
end;

procedure TFOrdemMec.CompAbertura2vias1Click(Sender: TObject);
begin
  inherited;
  //XComp2Vias:=True;
  XNovaPag := 2;

  Xcop := 1;
  RVSystem1.SystemPreview.FormState := wsMaximized;
  RVSystem1.DefaultDest := rdPreview; { poderia ser rdPrinter para impressora    }
  RVSystem1.SystemPReview.RulerType := rtBothCm; // Para mostrar a reguá n preview
  RVSystem1.Execute;
end;

procedure TFOrdemMec.RvSystem1BeforePrint(Sender: TObject);
begin
  inherited;
  with Sender as TBaseReport do
  begin
    SetPaperSize(DMPAPER_A4, 0, 0);

  end;
end;

procedure TFOrdemMec.RvSystem1Print(Sender: TObject);
var
  Bitmap: TBitmap;
begin
  inherited;
  if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 then
    ImpCompModelo10;
end;

procedure TFOrdemMec.GerarXMLporPerodo1Click(Sender: TObject);
begin
  //Inherited;
  //Paulo 13/02/2012: Abre o rel periodo fiscal
  FMenu.TIPOREL := 'XMLDISTRIBUICAO';
  FMenu.XTipoEmissaoNFe := 'ORDEM';
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  AbrirForm(TFRelPeriodoFiscal, FRelPeriodoFiscal, 0);
end;

procedure TFOrdemMec.ICMSIndevido1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
//Paulo 08/03/2012: Gera cartas de correção para notas fiscais
  XCARTACORRECAO := True;
  AbrirForm(TFListaNfe, FListaNfe, 0);
end;

procedure TFOrdemMec.BandFinalBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if ((xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency) <= 0 then
    QrAbertOrdem13Desc.Caption := '0,00'
  else
    QrAbertOrdem13Desc.Caption := FormatFloat('####,##0.00', (xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency);

  xTotalFinalOrdem := DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
  QRLTotalFinalOrdem.Caption := FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.QrAbertOrdem13BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  qrmObservacao.Lines.Clear;
  qrmObservacao.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
  xTotalProd := 0;
  xTotalServ := 0;
  xTotalDescProd := 0;
  xTotalDescServ := 0;
end;

procedure TFOrdemMec.BandProdBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalProd := xTotalProd + DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
  xTotalFinalProd := DMServ.TOrd.fieldByName('TOTPROD').AsCurrency;
end;

procedure TFOrdemMec.ProdutoseServios1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  FMenu.TIPOREL := 'RELSINSERV';
  AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFOrdemMec.QrAbertOrdem14MeiaPaginaBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  xTotalProd := 0;
  xTotalServ := 0;
  xTotalDescProd := 0;
  xTotalDescServ := 0;
end;

procedure TFOrdemMec.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalProd := xTotalProd + DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
end;

procedure TFOrdemMec.QRBand6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if ((xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency) <= 0 then
    QrlDescontoOrdem14MeiaPagina.Caption := '0,00'
  else
    QrlDescontoOrdem14MeiaPagina.Caption := FormatFloat('####,##0.00', (xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency);
  xTotalFinalOrdem := DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
  QRLTotalFinalOrdem14MeiaPagina.Caption := FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QrObs14MeiaPagina.Lines.Clear;
  QrObs14MeiaPagina.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
end;

procedure TFOrdemMec.QrAbertOrdem14CompletoBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  xTotalProd := 0;
  xTotalServ := 0;
  xTotalDescProd := 0;
  xTotalDescServ := 0;
end;

procedure TFOrdemMec.QRBand8BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QrObs14PaginaCompleta.Lines.Clear;
  QrObs14PaginaCompleta.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
end;

procedure TFOrdemMec.QRSubDetail3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalProd := xTotalProd + DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
  //     xTotalFinalProd:=DMServ.TOrd.fieldByName('TOTPROD').AsCurrency;
end;

procedure TFOrdemMec.QRBand12BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if ((xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency) <= 0 then
    QrlDescontoOrdem14PaginaToda.Caption := '0,00'
  else
    QrlDescontoOrdem14PaginaToda.Caption := FormatFloat('####,##0.00', (xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency);
  xTotalFinalOrdem := DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
  QRLTotalFinalOrdem14PaginaCompleta.Caption := FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.RecuperareEnviarXMLdeCancelamento1Click(Sender: TObject);
begin
  inherited;
  FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
  FMzrNfe.SetInFiscal('', XView.FieldByName('COD_ORDEM').AsInteger, XView.FieldByName('COD_CLIENTE').AsInteger, 'ORDEM', 'XMLCANCELAMENTO', 0, '', '', '', 0, Date(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  FMzrNfe.ShowModal;
end;

procedure TFOrdemMec.QRSubDetail2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalServ := xTotalServ + DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
end;

procedure TFOrdemMec.QRSubDetail4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalServ := xTotalServ + DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
end;

procedure TFOrdemMec.QrAbertOrdem15MeiaPaginaBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  xTotalProd := 0;
  xTotalServ := 0;
  xTotalDescProd := 0;
  xTotalDescServ := 0;
end;

procedure TFOrdemMec.QRBand14BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QrObs15MeiaPagina.Lines.Clear;
  QrObs15MeiaPagina.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
end;

procedure TFOrdemMec.QRSubDetail5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalProd := xTotalProd + DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
end;

procedure TFOrdemMec.QRSubDetail6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalServ := xTotalServ + DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
end;

procedure TFOrdemMec.QRBand17BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if ((xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency) <= 0 then
    QrlDescontoOrdem15MeiaPagina.Caption := '0,00'
  else
    QrlDescontoOrdem15MeiaPagina.Caption := FormatFloat('####,##0.00', (xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency);
  xTotalFinalOrdem := DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
  QRLTotalFinalOrdem15MeiaPagina.Caption := FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.QRBand19BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QrObs15PaginaCompleta.Lines.Clear;
  QrObs15PaginaCompleta.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
end;

procedure TFOrdemMec.QRSubDetail7BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalProd := xTotalProd + DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
end;

procedure TFOrdemMec.QRSubDetail8BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalServ := xTotalServ + DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
end;

procedure TFOrdemMec.QRBand22BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if ((xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency) <= 0 then
    QrlDescontoOrdem15PaginaToda.Caption := '0,00'
  else
    QrlDescontoOrdem15PaginaToda.Caption := FormatFloat('####,##0.00', (xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency);
  xTotalFinalOrdem := DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
  TotalTermoContratacao.Caption := FormatFloat('####,##0.00', xTotalFinalOrdem);
  QRLTotalFinalOrdem15PaginaCompleta.Caption := FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.BandServBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalServ := xTotalServ + DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
  try
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add(' select equipe.descricao from equipe where equipe.cod_equipe=:codigo ');
    DMESTOQUE.Alx.ParamByName('codigo').AsInteger := DMESTOQUE.TDesp.FieldByName('cod_equipe').AsInteger;
    DMESTOQUE.Alx.Open;
    if not DMESTOQUE.Alx.IsEmpty then
      QRLEquipe.Caption := DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString
    else
      QRLEquipe.Caption := '';
  except
    QRLEquipe.Caption := '';
  end;
end;

procedure TFOrdemMec.QRSubDetail11BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalFinalProd := DMServ.TOrd.fieldByName('TOTPROD').AsCurrency;
end;

procedure TFOrdemMec.QRBand32BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalFinalOrdem := DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
  QRLTotalFinalOrdem16.Caption := FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

//Jônatas 26/06/2013 - Coloca máscara no formato do texto do edit pelo keydown

procedure TFOrdemMec.EdPlaca2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdPlaca2.SelLength > 0) and not (KEY = 8) and not (KEY = 13) then
  begin
    EdPlaca2.Text := '';
  end;

  {If (Length(EdPlaca2.Text) = 3) And Not (KEY = 8) Then Begin
      EdPlaca2.Text := EdPlaca2.Text + '-';
      EdPlaca2.SelStart := 4;
  End;}
end;
//Jônatas 26/06/2013 - faz a máscara no texto do edit pelo keypress

procedure TFOrdemMec.EdPlaca2KeyPress(Sender: TObject; var Key: Char);
var
  xPlacaLimpa: string;
begin
  inherited;
  xPlacaLimpa := Trim(UpperCase(StringReplace(StringReplace(EdPlaca2.Text, '-', '', [rfReplaceAll]), ' ', '', [rfReplaceAll])));

  if (Length(xPlacaLimpa) = 4) and not (Key = #8)
    and not (Key = #13) and not (Key = #27) then
  begin
    if not (Key in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[1] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[2] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[3] in ['a'..'z', 'A'..'Z']) then // PADRÃO ANTIGO ABC 1234
    begin
      EdPlaca2.Text := xPlacaLimpa[1] + xPlacaLimpa[2] + xPlacaLimpa[3] + '-' + xPlacaLimpa[4];
      EdPlaca2.SelStart := 5;
    end;
  end;

  if (Length(xPlacaLimpa) = 7) and not (Key = #8) and not (Key = #13) and not (Key = #27) then
    Key := #0;
  //checa se o que foi digitado se encontra nos intervalos
   {If Not (key In ['a'..'z', 'A'..'Z', '0'..'9', #8, #13])
       Then
       Key := #0
   Else Begin
       If Length(EdPlaca2.Text) < 4 Then
           If Not (key In ['a'..'z', 'A'..'Z', #8, #13]) Then
               Key := #0;
       If (Length(EdPlaca2.Text) > 3) Then
           If Not (key In ['0'..'9', #8, #13]) Then
               Key := #0
   End;
  //atualiza o edit
   EdPlaca2.Repaint;}
end;

//Jônatas 26/06/2013 - faz a máscara no texto do edit pelo keypress

procedure TFOrdemMec.EdPlaca3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdPlaca3.SelLength > 0) and not (KEY = 8) and not (KEY = 13) then
  begin
    EdPlaca3.Text := '';
  end;

  {If (Length(EdPlaca3.Text) = 3) And Not (KEY = 8) Then Begin
      EdPlaca3.Text := EdPlaca3.Text + '-';
      EdPlaca3.SelStart := 4;
  End;}
end;

//Jônatas 26/06/2013 - Coloca máscara no formato do texto do edit pelo keydown

procedure TFOrdemMec.EdPlaca3KeyPress(Sender: TObject; var Key: Char);
var
  xPlacaLimpa: string;
begin
  inherited;
  xPlacaLimpa := Trim(UpperCase(StringReplace(StringReplace(EdPlaca3.Text, '-', '', [rfReplaceAll]), ' ', '', [rfReplaceAll])));

  if (Length(xPlacaLimpa) = 4) and not (Key = #8)
    and not (Key = #13) and not (Key = #27) then
  begin
    if not (Key in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[1] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[2] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[3] in ['a'..'z', 'A'..'Z']) then // PADRÃO ANTIGO ABC 1234
    begin
      EdPlaca3.Text := xPlacaLimpa[1] + xPlacaLimpa[2] + xPlacaLimpa[3] + '-' + xPlacaLimpa[4];
      EdPlaca3.SelStart := 5;
    end;
  end;

  if (Length(xPlacaLimpa) = 7) and not (Key = #8) and not (Key = #13) and not (Key = #27) then
    Key := #0;
  //checa se o que foi digitado se encontra nos intervalos
   {If Not (key In ['a'..'z', 'A'..'Z', '0'..'9', #8, #13])
       Then
       Key := #0
   Else Begin
       If Length(EdPlaca3.Text) < 4 Then
           If Not (key In ['a'..'z', 'A'..'Z', #8, #13]) Then
               Key := #0;
       If (Length(EdPlaca3.Text) > 3) Then
           If Not (key In ['0'..'9', #8, #13]) Then
               Key := #0
   End;
  //atualiza o edit
   EdPlaca3.Repaint;}
end;
//Jônatas 26/08/2013 - Para dar destaque ao botão de inserir serviços conforme solicitado pela Mercescan

procedure TFOrdemMec.BtnInserirEnter(Sender: TObject);
begin
  inherited;
  BtnInserir.Font.Color := clRed;
  BtnInserir.Font.Style := [fsBold];
end;
//Jônatas 26/08/2013 - Para dar destaque ao botão de inserir serviços conforme solicitado pela Mercescan

procedure TFOrdemMec.BtnInserirExit(Sender: TObject);
begin
  inherited;
  BtnInserir.Font.Color := clWindowText;
  BtnInserir.Font.Style := [];
end;

procedure TFOrdemMec.BtnInsertProdEnter(Sender: TObject);
begin
  inherited;
  BtnInsertProd.Font.Color := clRed;
  BtnInsertProd.Font.Style := [fsBold];
end;

procedure TFOrdemMec.BtnInsertProdExit(Sender: TObject);
begin
  inherited;
  BtnInsertProd.Font.Color := clWindowText;
  BtnInsertProd.Font.Style := [];
end;

procedure TFOrdemMec.ServiosporClassificao1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  FMenu.TIPOREL := 'RELSERVICOCLASSIFICACAO';
  DMBANCO.TAlx.Close;
  DMBANCO.TAlx.SQL.Clear;
  DMBANCO.TAlx.SQL.Add('SELECT * FROM CAIXA where caixa.cod_loja=:CODLOJA');
  DMBANCO.TAlx.ParamByName('CODLOJA').AsInteger := StrToInt(FMenu.LCODLOJA.Caption);
  DMBANCO.TAlx.Open;
  AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFOrdemMec.ServiosporClassificaoGrfico1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  FMenu.TIPOREL := 'RELSERVICOCLASSIFICACAOGRAFICO';
  DMBANCO.TAlx.Close;
  DMBANCO.TAlx.SQL.Clear;
  DMBANCO.TAlx.SQL.Add('SELECT * FROM CAIXA where caixa.cod_loja=:CODLOJA');
  DMBANCO.TAlx.ParamByName('CODLOJA').AsInteger := StrToInt(FMenu.LCODLOJA.Caption);
  DMBANCO.TAlx.Open;
  AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFOrdemMec.CancelarNfseClick(Sender: TObject);
begin
  inherited;
  DMESTOQUE.Alx5.Close;
  DMESTOQUE.Alx5.SQL.Clear;
  DMESTOQUE.Alx5.SQL.Add('select docfisord.nfse_numerodocumento from docfisord where docfisord.cod_ordem = :ordem');
  DMESTOQUE.Alx5.ParamByName('ordem').AsInteger := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
  DMESTOQUE.Alx5.Open;

  if DMESTOQUE.Alx5.IsEmpty then
  begin
    Mensagem('A T E N Ç Ã O ', 'Essa Nfse ainda não foi gerada. Escolha uma ordem válida.', '', 1, 1, false, 'A');
    Exit;
  end
  else
  begin
    if Mensagem('A T E N Ç Ã O', 'DESEJA REALMENTE CANCELAR A NFS-E DE NÚMERO ' + DMESTOQUE.Alx5.FieldByName('nfse_numerodocumento').AsString, '', 2, 3, False, 'c') = 2 then
      FMzrNFSe.CancelarNFSe(DMESTOQUE.Alx5.FieldByName('nfse_numerodocumento').AsString);
  end;
end;

procedure TFOrdemMec.VisualizaNfseClick(Sender: TObject);
begin
  inherited;
  FMzrNFSe := TFMzrNFSe.Create(FMzrNFSe);

  FMzrNFSe.VisualizaNfse(DMServ.WOrdem.FieldByName('cod_ordem').AsInteger);
end;

procedure TFOrdemMec.ConsultaNfseClick(Sender: TObject);
begin
  inherited;
  DMESTOQUE.Alx5.Close;
  DMESTOQUE.Alx5.SQL.Clear;
  DMESTOQUE.Alx5.SQL.Add('select docfisord.nfse_numerodocumento from docfisord where docfisord.cod_ordem = :ordem');
  DMESTOQUE.Alx5.ParamByName('ordem').AsInteger := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
  DMESTOQUE.Alx5.Open;

  if DMESTOQUE.Alx5.IsEmpty then
  begin
    Mensagem('A T E N Ç Ã O ', 'Essa Nfse ainda não foi gerada. Escolha uma ordem válida.', '', 1, 1, false, 'A');
    Exit;
  end
  else if not FMzrNFSe.ConsultaNfse(DMESTOQUE.Alx5.FieldByName('nfse_numerodocumento').AsString) then
    Mensagem('A T E N Ç Ã O ', 'Essa Nfse ainda não foi gerada. Escolha uma ordem válida', '', 1, 1, false, 'A')
  else
    Mensagem('I N F O R M A Ç Ã O', 'A Nfse está ativa no servidor.', '', 1, 1, false, 'I');

  Exit;
end;

procedure TFOrdemMec.EdMaxRegistroExit(Sender: TObject);
begin
  inherited;
  if EdMaxRegistro.Text = '' then
    EdMaxRegistro.Text := '50'
end;

procedure TFOrdemMec.EdMaxRegistroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    Key := #0
end;

procedure TFOrdemMec.ReimprimirNFSeClick(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
    PCadastro.Visible := False;}
  if XView.FieldByName('STATUS').AsString = 'ABERTO' then
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'PARA EFETUAR A IMPRESSÃO FISCAL O PEDIDO DEVE ESTAR FECHADO.' + #13 + 'Antes de fechar confira todas as informações do pedido.', '', 1, 1, False, 'a');
    Exit;
  end;

  if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '') = True then
  begin
    if Mensagem('A T E N Ç Ã O', 'DESEJA IMPRIMIR O DOCUMENTO FISCAL PARA O PEDIDO:' + #13 + 'Nº ' + XView.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
    begin
      FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');

      if DMMACS.TLoja.FieldByName('SERVNFE').AsString = '0' then
      begin
        DMServ.TFiscOrd.Close;
        DMServ.TFiscOrd.SQL.Clear;
        DMServ.TFiscOrd.SQL.Add(' Select * from docfisord where docfisord.cod_ordem=:Codigo ');
        DMServ.TFiscOrd.ParamByName('Codigo').AsInteger := XView.FieldByName('COD_ORDEM').AsInteger;
        DMServ.TFiscOrd.Open;

        if not DMServ.TFiscOrd.IsEmpty then
        begin
          if (DMServ.TFiscOrd.FieldByName('NFSE_STATUSGERAL').AsString = '1') then
          begin
            //Se Documento Fiscal Enviado ou Cancelado
            MessageDlg('Esta O.S já gerou uma NFS-e. Portanto, não pode ser transmitida.', mtWarning, [mbOK], 0);
            Exit;
          end;
          FMenu.TIPOREL := 'NFSE';
        end
        else //edmar - 27/03/2014 - Se estiver vazio é necessario que o registro seja incluido em docfisord
          //sendo assim, muda-se o tipo
          FMenu.TIPOREL := 'NFSER';

        if MessageDlg('Impressora NF Pronta?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
        begin
          AbreFiscal;
          Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº ' + XView.FieldByName('NUMERO').AsString, 'Valor: ' + XView.FieldByName('total').AsString);
        end;
      end;
    end
    else
      Mensagem('A T E N Ç Ã O', 'Sua empresa não está autorizada a emitir nota fiscal de serviço.', '', 2, 3, False, 'I');
  end;
end;

procedure TFOrdemMec.RecuperarDadosdaNfse1Click(Sender: TObject);
var
  xNumNfse: string;
begin
  inherited;
  //Edmar - 26/03/2014 - Se for equiplano a mensagem é outra
  if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'EQUIPLANO' then
  begin
    if InputQuery('Número documento', 'Informe o número RPS da NFS-e que deseja retornar', xNumNfse) = True then
    begin
      FMzrNFSe.RetornaDadosNfse(DMServ.WOrdem.FieldByName('cod_ordem').AsString, xNumNfse);
    end;
  end
  else
  begin
    if InputQuery('Número documento', 'Informe o número da NFS-e que deseja retornar', xNumNfse) = True then
    begin
      FMzrNFSe.RetornaDadosNfse(DMServ.WOrdem.FieldByName('cod_ordem').AsString, xNumNfse);
    end;
  end;
end;

function TFOrdemMec.EfetuaCalculoISS: Boolean;
begin
  EdTotIss.ValueNumeric := EdTotalserv.ValueNumeric * (xAliquotaIss / 100);
end;

function TFOrdemMec.RetemIss: Boolean;
begin
  if cbRtIss.Checked then
  begin
    EdTotalserv.ValueNumeric := EdTotalserv.ValueNumeric - EdTotIss.ValueNumeric;
    EdTotalOrd.ValueNumeric := EdTotalserv.ValueNumeric + EdtotalProd.ValueNumeric;
    EdValorOrd.ValueNumeric := EdTotalserv.ValueNumeric + EdtotalProd.ValueNumeric;
  end;
end;

procedure TFOrdemMec.cbRtIssClick(Sender: TObject);
begin
  inherited;
  if cbRtIss.Checked then
    EdTotalserv.ValueNumeric := EdTotalserv.ValueNumeric - EdTotIss.ValueNumeric
  else
    EdTotalserv.ValueNumeric := EdTotalserv.ValueNumeric + EdTotIss.ValueNumeric;

  EdTotalOrd.ValueNumeric := EdTotalserv.ValueNumeric + EdtotalProd.ValueNumeric;
  EdValorOrd.ValueNumeric := EdTotalserv.ValueNumeric + EdtotalProd.ValueNumeric;
end;

procedure TFOrdemMec.edDtInicialKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    //Edmar - 07/02/2014 - Teste se foi informado as duas datas
    if (edDtInicial.Text <> '  /  /    ') and (edDtFinal.Text <> '  /  /    ') then
    begin
      //Edmar - 07/02/2014 - Verifica se pesquisa por data de abertura ou de fechamento
         //e passa a informação correspondente
      if (rbAbertura.Checked) then
        FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'ABERT')
      else
        FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'FECH')
    end;
  end
  else if key = vk_escape then
    AtualizaGridConsulta('');
end;

procedure TFOrdemMec.edDtFinalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    //Edmar - 07/02/2014 - Teste se foi informado as duas datas
    if (edDtInicial.Text <> '  /  /    ') and (edDtFinal.Text <> '  /  /    ') then
    begin
      //Edmar - 07/02/2014 - Verifica se pesquisa por data de abertura ou de fechamento
         //e passa a informação correspondente
      if (rbAbertura.Checked) then
        FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'ABERT')
      else
        FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'FECH')
    end;
  end
  else if key = vk_escape then
    AtualizaGridConsulta('');
end;

procedure TFOrdemMec.FiltraOrdemData(xDataInicial, xDataFinal, xSituacao: string);
begin
  DMServ.WOrdem.Close;
  DMServ.WOrdem.SQL.Clear;
  DMServ.WOrdem.SQL.Add('SELECT * FROM VWORDEM');

  //Edmar - 07/04/2014 - Condições diferentes para diferentes situações
  if xSituacao = 'ABERT' then
  begin
    DMServ.WOrdem.SQL.Add('where vwordem.dtabert between :dtIni and :dtFin');
    DMServ.WOrdem.SQL.Add('order by dtabert');
  end
  else
  begin
    DMServ.WOrdem.SQL.Add('where vwordem.dtfech between :dtIni and :dtFin');
    DMServ.WOrdem.SQL.Add('order by dtfech');
  end;

  DMServ.WOrdem.ParamByName('dtIni').AsString := xDataInicial;
  DMServ.WOrdem.ParamByName('dtFin').AsString := xDataFinal;

  //Edmar - 07/04/2014 - Libera dados
  DMServ.WOrdem.Open;
end;

procedure TFOrdemMec.BTNOPENClick(Sender: TObject);
begin
  inherited;
  if AbrirForm(TFSERVICO, FSERVICO, 1) <> 'Selected' then
  begin
    DMServ.WSubServ.Close;
    DMServ.WSubServ.SQL.Clear;
    DMServ.WSubServ.SQL.Add('SELECT * FROM VWSUBSERVICO ORDER BY DESCRICAO');
    DMServ.WSubServ.Open;
  end
  else
  begin
    InsereClassificacaoServico;
  end;
end;

procedure TFOrdemMec.BTNMINUSClick(Sender: TObject);
begin
  inherited;
  if EDesricaoServico.Text = DbServicoClassificacao.Text then
    EDesricaoServico.Text := '';

  XCOD_SERVICOCLASSIFICACAO := -1;
  try
    DbServicoClassificacao.KeyValue := '';
  except
  end;
  DbServicoClassificacao.ListField := '';
  DbServicoClassificacao.ListField := 'DESCRICAO';
end;

procedure TFOrdemMec.EDFISCALNFSEEnter(Sender: TObject);
begin
  inherited;
  if EDFISCALNFSE.Text = 'NFs-e' then
    EDFISCALNFSE.Text := ''
  else
    EDFISCALNFSE.SelectAll;

  EDFISCALNFSE.Font.Color := clBlack;
end;

procedure TFOrdemMec.EDFISCALNFSEExit(Sender: TObject);
begin
  inherited;
  if Trim(EDFISCALNFSE.Text) = '' then
    EDFISCALNFSE.Text := 'NFs-e';

  EDFISCALNFSE.Font.Color := clGray;
end;

procedure TFOrdemMec.EDFISCALNFSEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    AtualizaGridConsulta('NFSE');
    EDFISCALNFSE.SelectAll;
  end;

  if key = #27 then
  begin
    CBORDEM.Text := 'NFSE';
    AtualizaGridConsulta('');
    EDFISCALNFSE.SelectAll;
  end;
end;

procedure TFOrdemMec.EDBoxEnter(Sender: TObject);
begin
  inherited;
  if EDBox.Text = 'BOX' then
    EDBox.Text := ''
  else
    EDBox.SelectAll;

  EDBox.Font.Color := clBlack;
end;

procedure TFOrdemMec.CartadeCorreoEletrnica1Click(Sender: TObject);
begin
  inherited;
  IniciaCCe(XView.FieldByName('cod_ordem').AsInteger, 'ORDEM');
end;

procedure TFOrdemMec.QRBand36BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if ((xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency) <= 0 then
    QrAbertOrdem13CompletoDesconto.Caption := '0,00'
  else
    QrAbertOrdem13CompletoDesconto.Caption := FormatFloat('####,##0.00', (xTotalProd + xTotalServ) - DMServ.TOrd.fieldByName('TOTORD').AsCurrency);

  xTotalFinalOrdem := DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
  QRLTotalFinalOrdem13Completo.Caption := FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.ProdutosVendidosModelo011Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  FMenu.TIPOREL := 'RELATORIODEVENDADEPRODUTOMEC';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TFOrdemMec.EDCodFabEnter(Sender: TObject);
begin
  inherited;
  DMESTOQUE.WSimilar.Close;
  DMESTOQUE.WSimilar.SQL.Clear;
  DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
  DMESTOQUE.WSimilar.Open;
end;

procedure TFOrdemMec.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
begin
  inherited;
  if (Msg.Message = WM_KEYDOWN) and (Msg.wParam = VK_TAB) then
  begin
    if DbServicoClassificacao.Focused then
    begin
      InsereClassificacaoServico;
    end;

    PListaProdutos.Visible := False;
    PListaProdutos.SendToBack;
  end;
end;

procedure TFOrdemMec.DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = Vk_Return then
    DBGrid1DblClick(sender);
end;

procedure TFOrdemMec.InsereClassificacaoServico;
begin
  if DbServicoClassificacao.Text <> '' then
    XCOD_SERVICOCLASSIFICACAO := DMServ.WSubServ.FieldByName('COD_SUBSERVICO').AsInteger
  else
    XCOD_SERVICOCLASSIFICACAO := -1;

  EValorServ.ValueNumeric := DMServ.WSubServ.FieldByName('VLRTOTSUBSERV').AsCurrency;
  EDesricaoServico.Text := DMServ.WSubServ.FieldByName('DESCRICAO').AsString;
end;

//Edmar - 11/07/2014 - Imprime cabeçalho empresa
procedure TFOrdemMec.ImpCompModelo10_Cabecalho_Empresa;
var
  Bitmap: TBitmap;
begin
  with RvSystem1.BaseReport do
  begin
    //Paulo 19/01/2012:Carrega a imagem para ser usado no relatório
    try
      Bitmap := TBitmap.Create;
      Bitmap.LoadFromFile('logoEmpresa.bmp');
      // PrintBitmapRect(0.5,XLinha,1.7,1.0,Bitmap); //Adiciono a logo do lado esquerdo
      //PrintBitmap(0.5,XLinha,1.5,1.5,Bitmap); //Adiciono a logo do lado esquerdo
      Bitmap := TBitmap.Create;
      Bitmap.LoadFromFile('logoEmpresa.bmp');
      PrintImage(RVSystem1, XLinha, 0.5, 1.5, 0.7, Bitmap);
    finally
      //  FreeAndNil(Bitmap);
    end;

    //Titulo centralizado
    SetFont('Arial', 12);
    Bold := True;
    PrintXY((PageWidth / 2) - 1.3, XLinha + 0.2, DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString);
    //PrintCenter(DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString,PageWidth/2);

    //data e hora
    SetFont('Arial', 7);
    Bold := True;
    PrintXY(PageWidth - 1.5, XLinha + 0.2, DateToStr(Date()) + ' - ' + TimeToStr(Time()));
    //PrintRight(DateToStr(Date())+' - '+TimeToStr(Time()),PageWidth-0.5);

    NewLine;

    //cnpj e endereço centralizado
    SetFont('Arial', 8);
    Bold := False;
    PrintCenter('CNPJ: ' + DMMACS.TEmpresa.FieldByName('CNPJ').AsString, PageWidth / 2);
    //Imprime modelo do relatorio
    PrintRight('Mod. Imp: 10', PageWidth - 0.5);
    NewLine;
    PrintCenter('Endereço: ' + DMMACS.TEmpresa.FieldByName('ENDERECO').AsString + ' Bairro: ' +
      DMMACS.TEmpresa.FieldByName('BAIRRO').AsString, PageWidth / 2);
    NewLine;

    PrintCenter('Fone: ' + DMMACS.TEmpresa.FieldByName('FONE').AsString, PageWidth / 2);
    NewLine;

    XLinha := XLinha + 0.8;

    MoveTo(0.3, XLinha); //Xlinha = 1.0
    LineTo(PageWidth - 0.5, XLinha);

    NewLine;
  end;
end;

//Edmar - 11/07/2014 - Imprime cabeçalho cliente
procedure TFOrdemMec.ImpCompModelo10_Cabecalho_Cliente;
begin
  with RvSystem1.BaseReport do
  begin
    SetFont('Arial', 8);
    Bold := True;
    PrintLeft('O.S nº.' + DMServ.TOrd.FieldByName('NUMERO').AsString, 0.3);
    PrintLeft('Emissão: ' + DMServ.TOrd.FieldByName('DTABERT').AsString, 1.1);
    PrintLeft('Cliente: ' + DMServ.Alx.FieldByName('NOME').AsString + '      CPF/CNPJ: ' + DMServ.Alx.FieldByName('CPFCNPJ').AsString, 2.5);
    //PrintRight('CPF/CNPJ: ' + DMServ.Alx.FieldByName('CPFCNPJ').AsString, PageWidth - 1.3);
    NewLine;
    PrintLeft('Tel.:' + DMServ.Alx.FieldByName('TELREL').AsString, 0.3);
    PrintLeft('Endereço:' + DMServ.Alx.FieldByName('ENDERECO').AsString + ', ' + DMServ.Alx.FieldByName('ENDNUMERO').AsString, 2.5);
    PrintRight('Bairro: ' + DMServ.Alx.FieldByName('BAIRRO').AsString, PageWidth - 1.3);
    NewLine;
    PrintLeft('Cidade:' + DMServ.Alx.FieldByName('CIDADE').AsString + ' - ' + DMServ.Alx.FieldByName('UF_ESTADO').AsString, 0.3);
    PrintLeft('Veiculo: ' + DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString + '     Placa: ' + DMPESSOA.TEquip.FieldByName('PLACA').AsString + '     Km Atual: ' + DMServ.TOrd.FieldByName('TOTKM').AsString, 3.0);
    //PrintRight('Placa: ' + DMPESSOA.TEquip.FieldByName('PLACA').AsString, PageWidth - 1.3);
    NewLine;
    PrintLeft('Mecânico Responsável: ' + DMPESSOA.TEquipe.FieldByName('DESCRICAO').AsString, 0.3);
    NewLine;

    XLinha := XLinha + 0.8;
    MoveTo(0.3, XLinha);
    LineTo(PageWidth - 0.5, XLinha);

    //NewLine;
  end;
end;

//Edmar - 11/07/2014 - Imprime cabeçalho de produtos
procedure TFOrdemMec.ImpCompModelo10_Cabecalho_Produtos;
begin
  if not DMESTOQUE.TSlave.IsEmpty then
  begin
    with RvSystem1.BaseReport do
    begin
      SetFont('Arial', 7);
      Bold := True;
      PrintLeft('Produtos:', 0.3);
      SetFont('Verdana', 7);
      Bold := True;
      PrintLeft('Código:', 1.0);
      PrintLeft('Quantidade:', 1.6);
      PrintLeft('Descrição:', 2.5);
      PrintRight('Vlr. Unitário:', PageWidth - 1.2);
      PrintRight('Vlr. Total:', PageWidth - 0.5);
      NewLine;
    end;
  end;
end;

//Edmar - 11/07/2014 - Imprime produtos da ordem
procedure TFOrdemMec.ImpCompModelo10_Corpo_Produtos;
begin
  with RvSystem1.BaseReport do
  begin
    while not DMESTOQUE.TSlave.Eof do
    begin
      //Edmar - 11/07/2014 - se ultrapassar 55 linhas cria uma nova página
      //e reimprime cabeçalhos
      if xcont > 55 then
      begin
        PrintLeft('_____________________________________________________________________________________________________________________________', 0.3);
        PrintRight('_____________________________________________________________________________________________________________________________', PageWidth - 0.5);
        XLinha := 0.3;
        xcont := 1;
        XNovaPag := 2;
        Xcop := 2;
        NewPage;
        ImpCompModelo10_Cabecalho_Empresa;
        ImpCompModelo10_Cabecalho_Cliente;
        ImpCompModelo10_Cabecalho_Produtos;

      end;

      SetFont('Arial', 5);
      Bold := False;
      PrintLeft(DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString, 0.8);
      SetFont('Arial', 7);
      PrintLeft(DMESTOQUE.TSlave.FieldByName('PRIMCOD').AsString, 1.0);
      PrintLeft(DMESTOQUE.TSlave.FieldByName('QTD').AsString, 1.8);
      PrintLeft(DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString, 2.5);
      PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency), PageWidth - 1.2);
      PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency), PageWidth - 0.5);
      XtotalProd := XtotalProd + DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
      NewLine;
      xcont := xcont + 1;
      DMESTOQUE.TSlave.Next;
    end;
    PrintLeft('-----------------------------------------------------------------------------------------------------------------------------', 0.3);
    PrintRight('-----------------------------------------------------------------------------------------------------------------------------', PageWidth - 0.5);
    NewLine;
  end;
end;

//Edmar - 11/07/2014 - Imprime cabeçalho de serviços
procedure TFOrdemMec.ImpCompModelo10_Cabecalho_Servicos;
begin
  with RvSystem1.BaseReport do
  begin
    if not DMESTOQUE.TDesp.IsEmpty then
    begin
      SetFont('Arial', 7);
      Bold := True;
      PrintLeft('Serviços:', 0.3);
      SetFont('Verdana', 7);
      Bold := True;
      PrintLeft('Quantidade:', 1.6);
      PrintLeft('Descrição:', 2.5);
      PrintRight('Vlr. Unitário:', PageWidth - 1.2);
      PrintRight('Vlr. Total:', PageWidth - 0.5);
      NewLine;
    end;
  end;
end;

//Edmar - 11/07/2014 - Imprime serviços da ordem
procedure TFOrdemMec.ImpCompModelo10_Corpo_Servicos;
begin
  with RvSystem1.BaseReport do
  begin
    while not DMESTOQUE.TDesp.Eof do
    begin
      //Edmar - 11/07/2014 - se ultrapassar 55 linha cria uma nova página
      //e reimprime cabeçalhos
      if xcont > 55 then
      begin
        PrintLeft('_____________________________________________________________________________________________________________________________', 0.3);
        PrintRight('_____________________________________________________________________________________________________________________________', PageWidth - 0.5);
        XLinha := 0.3;
        xcont := 1;
        XNovaPag := 2;
        Xcop := 2;
        NewPage;
        ImpCompModelo10_Cabecalho_Empresa;
        ImpCompModelo10_Cabecalho_Cliente;
        ImpCompModelo10_Cabecalho_Servicos;
      end;

      Bold := False;
      SetFont('Arial', 7);
      PrintLeft(DMESTOQUE.TDesp.FieldByName('QTD').AsString, 1.8);
      PrintLeft(DMESTOQUE.TDesp.FieldByName('DESPESA').AsString, 2.5);
      PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency), PageWidth - 1.2);
      PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency), PageWidth - 0.5);
      xcont := xcont + 1;
      NewLine;
      DMESTOQUE.TDesp.Next;
    end;
  end;
end;

//Edmar - 21/07/2014 - Busca os totais corretos da ordem e retorna para os edits
procedure TFOrdemMec.RetornaValoresBanco;
begin
  EdtotalProd.ValueNumeric := DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
  EdtotalServ.ValueNumeric := DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;
  EdValorOrd.ValueNumeric := DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;
  EdTotIss.ValueNumeric := DMServ.TOrd.FieldByName('TOTISS').AsCurrency;
  EdDescTOrdem.ValueNumeric := DMServ.TOrd.FieldByName('DESCONTO').AsCurrency;
  EdDescTProd.ValueNumeric := DMServ.TOrd.FieldByName('DESCPROD').AsCurrency;
  EdDescTServ.ValueNumeric := DMServ.TOrd.FieldByName('DESCSERV').AsCurrency;
  //DJ 02/11/2009: Parametro aplicado no sistema, evita erro ao apresentar valores na consulta
  EdTotalOrd.ValueNumeric := DMServ.TOrd.FieldByName('TOTORD').AsCurrency;
  EdValorOrd.ValueNumeric := EdTotalOrd.ValueNumeric;
end;

procedure TFOrdemMec.QRBand41BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  xTotalFinalOrdem := DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
  QRLTotalFinalProd19.Caption := FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.QrAbertOrdem19BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
var
  xPrimParcela, xIntervalo, xQtdeParcela, I: Integer;
  xObsParcela, xVencimento: string;
  xVlrParcela: Real;
  Ano, Mes, Dia: Word;
begin
  inherited;
  qrObservacao19.Lines.Clear;
  qrObservacao19.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);

  qrObservacaoFinanc.Lines.Clear;

  xObsParcela := '';
  DecodeDate(StrToDate(DMServ.TOrd.FieldByName('dtabert').AsString), Ano, Mes, Dia);

  //Edmar - 03/09/2014 - Se for diferente de à vista monta a string que mostrará as informações da fatura
  if DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString <> 'À VISTA' then
  begin
    xPrimParcela := DMFINANC.TFormPag.FieldByName('PrimParcela').AsInteger;
    xIntervalo := DMFINANC.TFormPag.FieldByName('Intervalo').AsInteger;
    xQtdeParcela := DMFINANC.TFormPag.FieldByName('QuantParcela').AsInteger;

    xVlrParcela := StrToFloat(FormatFloat('#,##0.00', DMServ.TOrd.fieldByName('TOTORD').AsCurrency / xQtdeParcela));

    xVencimento := DateToStr(DMServ.TOrd.FieldByName('DTABERT').AsDateTime + xPrimParcela);

    if (xPrimParcela = 0) then
      xObsParcela := 'R$ ' + FormatFloat('#,##0.00', xVlrParcela) + ' Entrada' + #13
    else
      xObsParcela := 'R$ ' + FormatFloat('#,##0.00', xVlrParcela) + ' ' + xVencimento + #13;

    for I := 2 to xQtdeParcela do
    begin
      xVencimento := DateToStr(StrToDate(xVencimento) + xIntervalo);

      xObsParcela := (xObsParcela + 'R$ ' + FormatFloat('#,##0.00', xVlrParcela) + ' ' + xVencimento) + #13;
    end;

    qrObservacaoFinanc.Lines.Add(xObsParcela);
  end
  else
  begin
    qrObservacaoFinanc.Lines.Add('À VISTA');
  end;

  xTotalProd := 0;
  xTotalServ := 0;
  xTotalDescProd := 0;
  xTotalDescServ := 0;
end;

procedure TFOrdemMec.btnConsultarProdutosClick(Sender: TObject);
begin
  inherited;
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.codbarra, subproduto.descricao,');
  DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
  DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
  DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
  DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
  DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv, estoque.VLRBONIFIC');
  DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
  DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) ');
  DMESTOQUE.Alx.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
  DMESTOQUE.Alx.Open;
  AbrirForm(TFConsProduto, FConsProduto, 1);
end;

procedure TFOrdemMec.TermoContratClick(Sender: TObject);
var
  xTextoContratacao: string;
  XEnderecoEmpresa: string;
  ContParc, Cod_Tmp: Integer;
  Xdesc1, Xdesc2, Xdesc3: string;
  Data: Integer;
  Mes: string;
  Year, Month, Day: word;
begin
  inherited;

  //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
  if FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = False then
    Exit;

  DMServ.TAlx3.Close;
  DMServ.TAlx3.SQL.Clear;
  DMServ.TAlx3.SQL.Add(' SELECT EMPRESA.ENDERECO, EMPRESA.NUMERO, EMPRESA.BAIRRO, CIDADE.NOME CIDADE, ESTADO.UF_ESTADO FROM EMPRESA ');
  DMServ.TAlx3.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = EMPRESA.COD_CIDADE ');
  DMServ.TAlx3.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
  DMServ.TAlx3.SQL.Add(' WHERE EMPRESA.COD_EMPRESA = :EMPRESA ');
  DMServ.TAlx3.ParamByName('EMPRESA').AsInteger := DMMACS.TEmpresa.FieldByName('COD_EMPRESA').AsInteger;
  DMServ.TAlx3.Open;

  //FILTRA DADOS PARA CABEÇALHO DA ORDEM
  DMServ.Alx.Close;
  DMServ.Alx.SQL.Clear;
  DMServ.Alx.SQL.Add(' Select ordem.cod_ordem, pessoa.nome, pessoaj.razao_social, pessoa.cpfcnpj, vwcidade.nome as cidade, ');
  DMServ.Alx.SQL.Add(' vwcidade.uf AS UF_ESTADO, pessoa.CEP, pessoa.bairro, pessoa.telrel, pessoa.endereco, pessoa.endnumero ');
  DMServ.Alx.SQL.Add(' from ordem ');
  DMServ.Alx.SQL.Add(' Left Join cliente on ordem.cod_cliente = cliente.cod_cliente ');
  DMServ.Alx.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
  DMServ.Alx.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
  DMServ.Alx.SQL.Add(' left join vwcidade on pessoa.cod_cidade = vwcidade.cod_cidade where ordem.cod_ordem=:codigo ');
  DMServ.Alx.ParamByName('codigo').AsInteger := DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsInteger;
  DMServ.Alx.Open;
  //FILTRA CLIENTE PARA ENCONTRAR PESSOA
  if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '') = False then
  begin
    MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
    Exit;
  end;

  //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
  if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '') = False then
  begin
    MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
    Exit;
  end;

  //Edmar - 11/12/2014 - filtra os dados da pessoa fisica
  FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '');

  //FILTRA PESSOA JURIDICA CASO EXISTA UMA PARA IMPRESSÃO DE CLIENTE
  FiltraTabela(DMPESSOA.TPessoaj, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

  //FILTRA CIDADE DO CLIENTE
  FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '');

  //FILTRA ESTADO DO CLIENTE
  FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

  //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
  FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

  //FILTRA ORDEM PARA IMPRESSÃO
  if FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsString, '') = False then
    Exit;

  //FILTRA EQUIPAMENTO PARA IMPRESSÃO
  if DMSERV.WOrdem.FieldByNAme('COD_EQUIPAMENTO').AsString <> '' then
    FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.WOrdem.FieldByNAme('COD_EQUIPAMENTO').AsString, '');

  //FILTRA FORMA DE PAGAMENTO
  FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMSERV.TOrd.FieldByNAme('COD_FORMPAG').AsString, '');

  //FILTRA FUNCIONARIO RESPONSAVEL
  FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMSERV.WOrdem.FieldByNAme('COD_FUNCIONARIO').AsInteger), '');

  XCOD_ORDEM := DMSERV.WOrdem.fieldbyname('COD_ORDEM').AsInteger;

  //FILTRA PRODUTOS, SERVIÇOS E DESPESAS
  FiltraSlave;
  RetornaValoresBanco;
  // se a atividade for EQUIPE, eh selecionado as despesas
  if (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE') and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsString = '6') then
  begin
    DMESTOQUE.Alx4.Close;
    DMESTOQUE.Alx4.SQL.Clear;
    DMESTOQUE.Alx4.SQL.Add('select despadic.cod_gerador, despadic.despesa, equipe.cod_equipe, equipe.descricao from despadic');
    DMESTOQUE.Alx4.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
    DMESTOQUE.Alx4.SQL.Add('where despadic.cod_gerador = :codigo');
    DMESTOQUE.Alx4.ParamByName('codigo').AsInteger := XCOD_ORDEM;
    DMESTOQUE.Alx4.Open;
  end;

  //Edmar - 11/12/2014 - Formata o endereço da Empresa
  XEnderecoEmpresa := DMServ.TAlx3.FieldByName('ENDERECO').AsString + ', ' + DMServ.TAlx3.FieldByName('NUMERO').AsString + ', ' + DMServ.TAlx3.FieldByName('BAIRRO').AsString + ', ' + DMServ.TAlx3.FieldByName('CIDADE').AsString + '/' + DMServ.TAlx3.FieldByName('UF_ESTADO').AsString;

  try
    Data := DayOfWeek(Date()); //Volta um número inteiro que representa o dia da semana
    DecodeDate(Date(), Year, Month, Day);
    case Month of
      1: Mes := 'Janeiro';
      2: Mes := 'Fevereiro';
      3: Mes := 'Março';
      4: Mes := 'Abril';
      5: Mes := 'Maio';
      6: Mes := 'Junho';
      7: Mes := 'Julho';
      8: Mes := 'Agosto';
      9: Mes := 'Setembro';
      10: Mes := 'Outubro';
      11: Mes := 'Novembro';
      12: Mes := 'Dezembro';
    end;
  except
  end;

  xTextoContratacao := '';

  //Edmar - 11/12/2014 - Monta o conteudo do texto complementar de contratação
  xTextoContratacao := xTextoContratacao + 'Eu, ' + DMPESSOA.TPessoa.FieldByName('NOME').AsString + ', brasileiro, portador do RG ' + DMPESSOA.TPessoaF.FieldByName('RG').AsString + ' inscrito no CPF ' + DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString + ', proprietário do veículo ';
  xTextoContratacao := xTextoContratacao + DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString + ', placas ' + DMPESSOA.TEquip.FieldByName('PLACA').AsString + ', declaro para os devidos fins e a quem possa interessar, que no dia ' + DMServ.TOrd.FieldByName('DTABERT').AsString + ', deixei na ';
  xTextoContratacao := xTextoContratacao + 'sede da empresa ' + DMMACS.TEmpresa.FieldByName('FANTASIA').AsString + ', pessoa jurídica de direito privado, inscrita no CNPJ ' + DMMACS.TEmpresa.FieldByName('CNPJ').AsString + ', com endereço na ';
  xTextoContratacao := xTextoContratacao + XEnderecoEmpresa + ', os produtos conforme descritos na ordem de serviço acima.' + #13;
  xTextoContratacao := xTextoContratacao + 'Estou ciente de que deverei retirar as rodas ou pneus acima descritos num prazo máximo de 60 (sessenta) dias.' + #13;
  xTextoContratacao := xTextoContratacao + 'Também estou ciente e concordo que, se por qualquer motivo as rodas ou pneus não forem por mim retirados no prazo combinado, a ';
  xTextoContratacao := xTextoContratacao + DMMACS.TEmpresa.FieldByName('FANTASIA').AsString + ' está autorizada a descartar os produtos sem que eu tenha qualquer direito a indenização.' + #13;
  xTextoContratacao := xTextoContratacao + 'Caso o prazo de 60 (sessenta) dias para retirada dos produtos não seja respeitado e a ' + DMMACS.TEmpresa.FieldByName('FANTASIA').AsString + ' opte por manter os ';
  xTextoContratacao := xTextoContratacao + 'produtos armazenados, fica acordado que pagarei pelo armazenamento dos produtos uma taxa de R$ 50,00 (cinquenta reais) mensais.' + #13 + #13;
  xTextoContratacao := xTextoContratacao + DMServ.TAlx3.FieldByName('CIDADE').AsString + ', ' + IntToStr(Day) + ' de ' + Mes + ' de ' + IntToStr(Year);

  //a situação financeira será gerado na tabela tmp para ser impressa
  DMMACS.TMP.Close;
  DMMACS.TMP.SQL.Clear;
  DMMACS.TMP.SQL.Add(' delete from tmp ');
  DMMACS.TMP.ExecSQL;
  DMMACS.Transaction.CommitRetaining;
  DMMACS.TMP.Close;
  DMMACS.TMP.SQL.Clear;
  DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
  DMMACS.TMP.Open;

  Cod_Tmp := 1;
  if DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA' then
  begin
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := Cod_Tmp;
    DMMACS.TMP.FieldByName('DESC1').AsString := 'À Vista';
    if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 10 then
    begin
      DMMACS.TMP.FieldByName('DESC2').AsString := DMServ.TOrd.FieldByName('TIPOPAG').AsString;
      DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMServ.TOrd.FieldByName('totord').AsCurrency;
    end
    else
    begin
      DMMACS.TMP.FieldByName('OBS').AsString := DMServ.TOrd.FieldByName('TIPOPAG').AsString;
      DMMACS.TMP.FieldByName('DESC3').AsString := FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('totord').AsCurrency);
    end;
    DMMACS.TMP.FieldByName('OBS').AsString := xTextoContratacao;
    DMMACS.TMP.Post;
    Cod_Tmp := Cod_Tmp + 1;
  end
  else
  begin
    //insere sql necessária para filtrar parcelas da conta
    DMMacs.TALX.Close;
    DMMacs.TALX.sql.Clear;
    DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
    DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador=' + #39 + 'ORD' + #39 + ') And (ctareceber.cod_gerador=:CODGERADOR) ');
    DMMacs.TALX.ParamByName('CODGERADOR').AsInteger := XCOD_ORDEM;
    DMMacs.TALX.Open;

    //Assume parcelas em campo blob de loja para após ser passado em relatóri
    Xdesc1 := '';
    Xdesc2 := '';
    Xdesc3 := '';

    DMMACS.TALX.First;
    ContParc := 0;
    if not DMMACS.TALX.IsEmpty then
    begin //Edmar - 11/12/2014 - Se encontrou alguma parcela, percorre tmp
      //adicionando a parcela que foi encontrada
      while not DMMACS.TALX.Eof do
      begin
        DMMACS.TMP.Insert;
        DMMACS.TMP.FieldByName('COD_TMP').AsInteger := Cod_Tmp;
        DMMACS.TMP.FieldByName('DESC1').AsString := DMMacs.TALX.FieldByName('dtvenc').AsString;
        DMMACS.TMP.FieldByName('DESC2').AsString := DMMacs.TALX.FieldByName('cobranca').AsString;
        DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMMacs.TALX.FieldByName('valor').AsCurrency;
        DMMACS.TMP.FieldByName('OBS').AsString := xTextoContratacao;
        DMMACS.TMP.Post;
        Cod_Tmp := Cod_Tmp + 1;

        DMMACS.TALX.Next;
        ContParc := ContParc + 1;
      end;
    end
    else
    begin
      //Se não possui nenhuma parcela
        //apenas insere o texto do termo de contratação
      DMMACS.TMP.Insert;
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := Cod_Tmp;
      DMMACS.TMP.FieldByName('OBS').AsString := xTextoContratacao;
      DMMACS.TMP.Post;
    end;
  end;
  DMMACS.Transaction.CommitRetaining;
  DMMACS.TMP.Close;
  DMMACS.TMP.SQL.Clear;
  DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
  DMMACS.TMP.Open;

  QrCompTermoContratacao.Preview;
end;

procedure TFOrdemMec.ExtratodeOrdensdeServio1Click(Sender: TObject);
begin
  inherited;
  {PCadastro.SendToBack;
  PCadastro.Visible := False;}
  FMenu.TIPOREL := 'EXTRATO_OS';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TFOrdemMec.EDCodBarraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    if FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'UPPER(CONTRINT)', UpperCase(EDCodBarra.Text), '') then
      EscreveLabelsPROD
    else
    begin
      LimpaCamposProd;
      LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
    end;
  end;

  if Key = VK_ESCAPE then
  begin
    LimpaCamposProd;
  end;
end;

procedure TFOrdemMec.RecuperareEnviarXML1Click(Sender: TObject);
begin
  inherited;
  //Edmar - 01/04/2015 - Cria o formulário de NFS-e
  FMzrNFSe := TFMzrNFSe.Create(FMzrNFSe);

  FMzrNFSe.ReenviaPdfXml(DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger);
  FMzrNFSe.ShowModal;
end;

procedure TFOrdemMec.CancelarDevoluo1Click(Sender: TObject);
begin
  if Mensagem(' I N F O R M A Ç Ã O ', 'Ao cancelar a devolução da ordem, o sistema irá apenas retornar os itens para que possam ser devolvidos novamente. Deseja continuar?', '', 2, 3, False, 'c') = 2 then
  begin
    //Edmar - 14/04/2015 - Efetua o cancelamento da ordem extornando o financeiro e retornando o estoque se preciso
    CancFechaClick(Sender);

    //Edmar - 14/04/2015 - Após isso, limpar o número da NF-e devolvida e marcar todos os
    //itens da ordem como não devolvido
    try
      MDO.QAlx1.Close;
      MDO.QAlx1.SQL.Clear;
      MDO.QAlx1.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.IT_DEV = '''' WHERE ITPRODORD.COD_ORDEM = :COD_ORDEM ');
      MDO.QAlx1.ParamByName('COD_ORDEM').AsInteger := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
      MDO.QAlx1.ExecSQL;

      MDO.QAlx2.Close;
      MDO.QAlx2.SQL.Clear;
      MDO.QAlx2.SQL.Add(' UPDATE ORDEM SET ORDEM.NUMFISCAL_DEVOLVIDA = '''' WHERE ORDEM.COD_ORDEM = :ORDEM ');
      MDO.QAlx2.ParamByName('ORDEM').AsInteger := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
      MDO.QAlx2.ExecSQL;

      MDO.Transac.CommitRetaining;

      Mensagem(' I N F O R M A Ç Ã O ', 'Devolução cancelada com sucesso.', '', 1, 1, False, 'I');
    except
      MDO.Transac.RollbackRetaining;
      Mensagem(' I N F O R M A Ç Ã O ', 'Não foi possível cancelar a devolução. Contate o suporte.', '', 1, 1, False, 'I');
    end;
  end;
end;

procedure TFOrdemMec.QRSubDetail14BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalServ := xTotalServ + DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
  try
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add(' select equipe.descricao from equipe where equipe.cod_equipe=:codigo ');
    DMESTOQUE.Alx.ParamByName('codigo').AsInteger := DMESTOQUE.TDesp.FieldByName('cod_equipe').AsInteger;
    DMESTOQUE.Alx.Open;
    if not DMESTOQUE.Alx.IsEmpty then
      QRLabel254.Caption := DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString
    else
      QRLabel254.Caption := '';
  except
    QRLabel254.Caption := '';
  end;
end;

procedure TFOrdemMec.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
  FMenu.SelectedForm := True;
  FMenu.XCodOrdemVinculo := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
  Close;
end;

procedure TFOrdemMec.RelatoriodeDanfces1Click(Sender: TObject);
begin
  inherited;
  //Edmar - 01/09/2015 - nova marcação para o relatorio de nfces
  XRelDanfe := 'ORDEM_NFCE';
  AbrirForm(TFRelPeriodoFiscal, FRelPeriodoFiscal, 0);
end;

procedure TFOrdemMec.ComprasDestinadasasOrdensdeServio1Click(Sender: TObject);
begin
  inherited;
  FMenu.TIPOREL := 'COMPRASOS';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TFOrdemMec.PCalculoHoraExit(Sender: TObject);
begin
  inherited;
  if PCalculoHora.Visible = True then
    EdQtdHora.SetFocus;
end;

procedure TFOrdemMec.BitBtn4Click(Sender: TObject);
begin
  inherited;
  PCalculoHora.Visible := False;
  EQtdServ.SetFocus;
end;

procedure TFOrdemMec.BitBtn3Click(Sender: TObject);

begin
  inherited;
  EQtdServ.ValueNumeric := ConverteTempoDecimal(EdQtdHora.Text);
  PCalculoHora.Visible := False;
  EQtdServ.SetFocus;
end;

procedure TFOrdemMec.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PCalculoHora.Visible := True;
  PCalculoHora.BringToFront;
  EdQtdHora.SetFocus;
end;

procedure TFOrdemMec.EdQtdHoraExit(Sender: TObject);
begin
  inherited;
  try
    StrToTime(EdQtdHora.Text);
  except
    MessageDlg('Informe um tempo válido (ex: 02:59)', mtWarning, [mbOK], 0);
    EdQtdHora.Clear;
  end;
end;

procedure TFOrdemMec.ProdutosVendidoscomValordeCusto1Click(
  Sender: TObject);
begin
  inherited;
  FMenu.TIPOREL := 'RELATORIODEVENDADEPRODUTOCUSTO';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TFOrdemMec.ProdutovendidovalorcustoNFe1Click(Sender: TObject);
begin
  inherited;
  FMenu.TIPOREL := 'RELATORIODEVENDADEPRODUTOCUSTONFE';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TFOrdemMec.FrmVendedorEDCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_return then
  begin
    //If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmVendedor.EDCodigo.Text+#39)=True
    if FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', Trim(FrmVendedor.EDCodigo.Text), '') = True then
    begin //CASO CONSEGUIU SELECIONAR CLIENTE
      XCOD_VENDEDOR := DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
      FrmVendedor.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      FrmVendedor.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;

      // busca a comissão do funcionario
      DMPESSOA.TALX.Close;
      DMPESSOA.TALX.SQL.Clear;
      DMPESSOA.TALX.SQL.Add(' SELECT FUNCARGO.COMISSAO_VVPRO FROM FUNCARGO ');
      DMPESSOA.TALX.SQL.Add(' WHERE FUNCARGO.COD_FUNCIONARIO = :VENDEDOR ');
      DMPESSOA.TALX.ParamByName('VENDEDOR').AsInteger := XCOD_VENDEDOR;
      DMPESSOA.TALX.Open;

      XALIQCOMISS := DMPESSOA.TALX.FieldByName('COMISSAO_VVPRO').AsCurrency;
    end
    else
    begin //CASO NÃO CONSEGUIU SELECIONAR CLIENTE
      XCOD_VENDEDOR := -1;
      FrmVendedor.EdDescricao.Text := '';
      FrmVendedor.EDCodigo.Text := '';

      XALIQCOMISS := 0;
    end;
  end;
end;

procedure TFOrdemMec.FrmVendedorBTNOPENClick(Sender: TObject);
begin
  inherited;
  FMenu.TIPOAUX := 'VENDEDOR';

  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_INTERNO';
  FMenu.XCodPesqPresSel := FrmVendedor.EDCodigo.Text;
  if AbrirForm(TFFuncionario, FFuncionario, 1) = 'Selected' then
  begin
    XCOD_VENDEDOR := DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
    FrmVendedor.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
    FrmVendedor.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;

    // busca a comissão do funcionario
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add(' SELECT FUNCARGO.COMISSAO_VVPRO FROM FUNCARGO ');
    DMPESSOA.TALX.SQL.Add(' WHERE FUNCARGO.COD_FUNCIONARIO = :VENDEDOR ');
    DMPESSOA.TALX.ParamByName('VENDEDOR').AsInteger := XCOD_VENDEDOR;
    DMPESSOA.TALX.Open;

    XALIQCOMISS := DMPESSOA.TALX.FieldByName('COMISSAO_VVPRO').AsCurrency;
  end
  else
  begin
    XCOD_VENDEDOR := -1;
    FrmVendedor.EDCodigo.Text := '';
    FrmVendedor.EdDescricao.Text := '';
    XALIQCOMISS := 0;
  end;
end;

procedure TFOrdemMec.QrAbertOrdem21BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  xTotalProd := 0;
  xTotalServ := 0;
  xTotalDescProd := 0;
  xTotalDescServ := 0;
end;

procedure TFOrdemMec.QRSubDetail21BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalProd := xTotalProd + DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
end;

procedure TFOrdemMec.QRBand55BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QRSubTotalOrdem21.Caption := FormatFloat('####,##0.00', (xTotalServ + xTotalProd));
  QrlTotalOrdem21.Caption := FormatFloat('####,##0.00', DMServ.TOrd.FieldByName('totord').AsCurrency);
  QrlTotaldesconto21.Caption := FormatFloat('####,##0.00', (xTotalServ + xTotalProd) - DMServ.TOrd.FieldByName('totord').AsCurrency);
  QrObservacao.Lines.Text := DMServ.TOrd.FieldByName('obsordem').AsString;
end;

procedure TFOrdemMec.ProdutosporVendedor1Click(Sender: TObject);
begin
  inherited;
  FMenu.TIPOREL := 'SINTETICOVENDEDOR';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TFOrdemMec.MEVeiculoEnter(Sender: TObject);
begin
  inherited;
  if MEVeiculo.Text = 'VEICULO' then
    MEVeiculo.Text := ''
  else
    MEVeiculo.SelectAll;

  MEVeiculo.Font.Color := clBlack;
end;

procedure TFOrdemMec.MEVeiculoExit(Sender: TObject);
begin
  inherited;
  if Trim(MEVeiculo.Text) = '' then
    MEVeiculo.Text := 'VEICULO';

  MEVeiculo.Font.Color := clGray;
end;

procedure TFOrdemMec.MEVeiculoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (shift = [ssCtrl]) and (key = 70) {//CTRL+F} then
  begin
    PInfoCliente.Top := (PConsulta.Height - PInfoCliente.PPrincipal.Height) div 2;
    PInfoCliente.left := (PConsulta.Width - PInfoCliente.PPrincipal.Width) div 2;
    PInfoCliente.OnExit := LimpaInfoCliente;
    PInfoCliente.PesquisaPlaca(MEPLACA.Text);
    PInfoCliente.Visible := True;
    PInfoCliente.BringToFront;
    PInfoCliente.FrmCliente.EDCodigo.SetFocus;
    PInfoCliente.Repaint;
    Exit;
  end;
  if (shift = [ssCtrl]) then
    Exit;

  if (MEPLACA.SelLength > 0) and not (KEY = 8) and not (KEY = 13) and not (KEY = 27) then
  begin
    MEPLACA.Text := '';
  end;

  if (Length(MEPLACA.Text) = 3) and not (KEY = 8) then
  begin
    MEPLACA.Text := MEPLACA.Text + '-';
    MEPLACA.SelStart := 4;
  end;

end;

procedure TFOrdemMec.MEVeiculoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    AtualizaGridConsulta('VEICULO');
    MEVeiculo.SelectAll;
  end;

  if key = #27 then
  begin
    CBORDEM.Text := 'VEICULO';
    AtualizaGridConsulta('');
    MEVeiculo.SelectAll;
  end;
end;

procedure TFOrdemMec.btnPagamentosClick(Sender: TObject);
begin
  inherited;
  IniciaPagamento('ORDEM', XView.FieldByName('COD_ORDEM').AsInteger);

  if xResultadoPagamento = False then
    Exit;

  //Nota Fiscal
  if ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
    or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
    or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
    or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
    or ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF'))) then
  begin
    if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '') = True then
    begin
      //Atualiza o Valor da NF
      FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
      FMenu.TIPOREL := 'NF';
      if Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?', '', 2, 3, False, 'c') = 2 then
      begin
        FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XView.FieldByName('COD_ORDEM').AsInteger), '');
        AbreFiscal;
        Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº ' + XView.FieldByName('NUMERO').AsString, 'Valor: ' + XView.FieldByName('total').AsString);
      end;
    end;
  end;
  FMenu.TIPOREL := '';
  AtualizaGridConsulta('');
end;

procedure TFOrdemMec.ReimprimirNFCeemcontingncia1Click(Sender: TObject);
begin
  inherited;
  // verifica se o pedido está mesmo em contingencia
  if XView.FieldByName('FISCO').AsString = 'CONT' then
  begin
    FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
    FMzrNfe.SetRetransmissaoNFCe(XView.FieldByName('COD_ORDEM').AsInteger, 'ORDEM', XView.FieldByName('NUMFISCAL').AsInteger);
    FMzrNfe.ShowModal;
  end
  else
  begin
    Mensagem('OPÇÃO BLOQUEADA', 'Apenas NFCe em contingência pode ser reimpresso.', '', 1, 1, False, 'a');
  end;
end;

procedure TFOrdemMec.QRBand60BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QrObs22MeiaPagina.Lines.Clear;
  QrObs22MeiaPagina.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
end;

procedure TFOrdemMec.QRSubDetail25BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalProd := xTotalProd + DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
end;

procedure TFOrdemMec.QRSubDetail26BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalServ := xTotalServ + DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
end;

procedure TFOrdemMec.QRBand63BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QrlTotalOrdem22MeiaPagina.Caption := FormatFloat('####,##0.00', DMServ.TOrd.FieldByName('totord').AsCurrency);
  QrlTotalDescon22MeiaPagina.Caption := FormatFloat('####,##0.00', DMServ.TOrd.FieldByName('desconto').AsCurrency);
  QrObs22MeiaPagina.Lines.Text := DMServ.TOrd.FieldByName('obsordem').AsString;
end;

procedure TFOrdemMec.QRBand43BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QrObs15MeiaPagina.Lines.Clear;
  QrObs15MeiaPagina.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
end;

procedure TFOrdemMec.QRBand56BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QrlObs22.Lines.Clear;
  QrlObs22.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
end;

procedure TFOrdemMec.QRSubDetail23BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalProd := xTotalProd + DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
end;

procedure TFOrdemMec.QRSubDetail24BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  xTotalServ := xTotalServ + DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
end;

procedure TFOrdemMec.QRBand59BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  QrlTotalOrdem22.Caption := FormatFloat('####,##0.00', DMServ.TOrd.FieldByName('totord').AsCurrency);
  QrlTotalDesconto22.Caption := FormatFloat('####,##0.00', DMServ.TOrd.FieldByName('desconto').AsCurrency);
  QrlObs22.Lines.Text := DMServ.TOrd.FieldByName('obsordem').AsString;
end;

procedure TFOrdemMec.btnInserirMultiplosVendedoresClick(Sender: TObject);
var
  Value: Variant;
begin
  inherited;
  if Sender = btnInserirMultiplosVendedores then
    xTipoComissaoVendedor := 'PROD'
  else
    xTipoComissaoVendedor := 'SERV';

  DMServ.TAlx2.Close;
  DMServ.TAlx2.SQL.Clear;
  DMServ.TAlx2.SQL.Add(' Select vwfuncionario.cod_func, vwfuncionario.nome, vwfuncionario.ativo from vwfuncionario ');
  DMServ.TAlx2.SQL.Add(' left join funcargo on vwfuncionario.cod_func = funcargo.cod_funcionario ');
  DMServ.TAlx2.SQL.Add(' left join cargo on funcargo.cod_cargo = cargo.cod_cargo ');
  DMServ.TAlx2.SQL.Add(' Where (upper(cargo.descricao) Like ' + #39 + 'VENDEDOR%' + #39') and ((vwfuncionario.ativo is null) or (vwfuncionario.ativo <> ' + #39 + '1' + #39 + '))');
  DMServ.TAlx2.Open;
  if not DMServ.TAlx2.IsEmpty then
  begin
    PSelecionaMultiploVendedor.Visible := true;
    PSelecionaMultiploVendedor.BringToFront;
    DBGMultiploVendedor.DataSource := DMServ.DSAlx2;
    DBGMultiploVendedor.SetFocus;
  end
  else
  begin
    MessageDlg('Não existem vendedores disponíveis', mtWarning, [mbOK], 0);
  end;
end;

procedure TFOrdemMec.PSelecionaMultiploVendedorExit(Sender: TObject);
begin
  inherited;
  if PSelecionaMultiploVendedor.Visible = true then
    DBGMultiploVendedor.SetFocus;
end;

procedure TFOrdemMec.btnAdicionaMultiploVendedorClick(Sender: TObject);
begin
  inherited;
  try
    if DMServ.TAlx2.FieldByName('COD_FUNC').AsInteger <= 0 then
    begin
      MessageDlg('Selecione um vendedor', mtWarning, [mbOK], 0);
      DBGMultiploVendedor.SetFocus;
      Exit;
    end;
    InsereMultiploVendedor(DMServ.TAlx2.FieldByName('COD_FUNC').AsInteger, xTipoComissaoVendedor);
  except
  end;
end;

procedure TFOrdemMec.DBGMultiploVendedorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btnAdicionaMultiploVendedor.Click;
  if Key = #27 then
  begin
    PSelecionaMultiploVendedor.Visible := False;
    if xTipoComissaoVendedor = 'PROD' then
      BtnInsertProd.SetFocus
    else
      BtnInserir.SetFocus;
  end;
end;

procedure TFOrdemMec.btnAdicionaMultiploVendedorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27 then
  begin
    PSelecionaMultiploVendedor.Visible := False;
    if xTipoComissaoVendedor = 'PROD' then
      BtnInsertProd.SetFocus
    else
      BtnInserir.SetFocus;
  end;
end;

procedure TFOrdemMec.btnRemoveVendedorProdutoClick(Sender: TObject);
begin
  inherited;
  if Sender = btnRemoveVendedorProduto then
    RemoveMultiploVendedor('PROD')
  else
    RemoveMultiploVendedor('SERV');
end;

procedure TFOrdemMec.Comissodeprodutoscombase1Click(Sender: TObject);
begin
  inherited;
  FMenu.XTipoRel := 'COMISSAOPRODUTOMULTIPLOSVENDEDORES';
  AbrirForm(TFRelComissaoProd, FRelComissaoProd, 0);
end;

procedure TFOrdemMec.Comissodevendasdeprodutos1Click(Sender: TObject);
begin
  inherited;
  FMenu.XTipoRel := 'COMISSAOPRODUTOMULTIPLOSVENDEDORES';
  AbrirForm(TFRelComissaoProd, FRelComissaoProd, 0);
end;

procedure TFOrdemMec.comissionadoservClick(Sender: TObject);
begin
  inherited;
  try
    //carrega as comissões para os serviços atuais
    DMESTOQUE.TRel.Close;
    DMESTOQUE.TRel.SQL.Clear;
    DMESTOQUE.TRel.SQL.Add(' SELECT vwfuncionario.cod_func, vwfuncionario.nome vendedor, vwordem.numero as OS, ');
    DMESTOQUE.TRel.SQL.Add(' '''' codigo, despadic.despesa produto_servico, ''S'' tipo, vwordem.dtabert data, ');
    DMESTOQUE.TRel.SQL.Add(' despadic.vlrtotfin-((despadic.vlrtotfin * cast(:descserv as decimal))/100) total, comprod.percento comissao, ');
    DMESTOQUE.TRel.SQL.Add(' (despadic.vlrtotfin-((despadic.vlrtotfin * cast(:descserv as decimal))/100)) * (comprod.percento / 100) valorcomissao ');
    DMESTOQUE.TRel.SQL.Add(' from comprod ');
    DMESTOQUE.TRel.SQL.Add(' left join despadic on comprod.cod_gerador = despadic.cod_despadic ');
    DMESTOQUE.TRel.SQL.Add(' left join vwordem on despadic.cod_gerador = vwordem.cod_ordem ');
    DMESTOQUE.TRel.SQL.Add(' left join vwfuncionario on comprod.cod_funcionario = vwfuncionario.cod_func ');
    DMESTOQUE.TRel.SQL.Add(' where (comprod.tipo = ''COMOSSERV'') and (vwordem.cod_ordem = :cod_ordem) ');
    DMESTOQUE.TRel.ParamByName('cod_ordem').AsInteger := XCOD_ORDEM;
    DMESTOQUE.TRel.ParamByName('descserv').AsCurrency := EdDescTServ.ValueNumeric;
    DMESTOQUE.TRel.Open;

    DMMACS.TLoja.Edit;
    DMMACS.TLoja.FieldByName('TMP1').AsString := '';
    DMMACS.TLoja.Post;
    DMMACS.Transaction.CommitRetaining;

    // se o relatorio retornou vazio
    if DMESTOQUE.TRel.IsEmpty then
    begin
      Mensagem('   A T E N Ç Ã O   ', 'O relatório retornou vazio.', '', 1, 1, false, 'I');
      Exit;
    end;

    FSDSRel.DataSource := DMESTOQUE.DRel;
    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComissaoVendaProdutoMultiplosVendedores.frf');
    FSRel.ShowReport;
  except
  end;
end;

procedure TFOrdemMec.Mostrarcomissionados1Click(Sender: TObject);
begin
  inherited;
  try
    //carrega as comissões para os produtos atuais
    DMESTOQUE.TRel.Close;
    DMESTOQUE.TRel.SQL.Clear;
    DMESTOQUE.TRel.SQL.Add(' SELECT vwfuncionario.cod_func, vwfuncionario.nome vendedor, vwordem.numero AS OS, ');
    DMESTOQUE.TRel.SQL.Add(' vwsimilar.contrint codigo, vwsimilar.descricao AS produto_servico, ''P'' tipo, itprodord.data, ');
    DMESTOQUE.TRel.SQL.Add(' itprodord.total-((itprodord.total * cast(:descprod as decimal))/100) total, comprod.percento comissao, ');
    DMESTOQUE.TRel.SQL.Add(' (itprodord.total-((itprodord.total * cast(:descprod as decimal))/100)) * (comprod.percento / 100) valorcomissao ');
    DMESTOQUE.TRel.SQL.Add(' from comprod ');
    DMESTOQUE.TRel.SQL.Add(' left join itprodord on comprod.cod_gerador = itprodord.cod_itprodord ');
    DMESTOQUE.TRel.SQL.Add(' left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
    DMESTOQUE.TRel.SQL.Add(' left join vwordem on itprodord.cod_ordem = vwordem.cod_ordem ');
    DMESTOQUE.TRel.SQL.Add(' left join vwfuncionario on comprod.cod_funcionario = vwfuncionario.cod_func ');
    DMESTOQUE.TRel.SQL.Add(' WHERE (comprod.tipo = ''COMOS'') and (vwordem.cod_ordem = :cod_ordem) ');
    DMESTOQUE.TRel.ParamByName('cod_ordem').AsInteger := XCOD_ORDEM;
    DMESTOQUE.TRel.ParamByName('descprod').AsCurrency := EdDescTProd.ValueNumeric;
    DMESTOQUE.TRel.Open;

    DMMACS.TLoja.Edit;
    DMMACS.TLoja.FieldByName('TMP1').AsString := '';
    DMMACS.TLoja.Post;
    DMMACS.Transaction.CommitRetaining;

    // se o relatorio retornou vazio
    if DMESTOQUE.TRel.IsEmpty then
    begin
      Mensagem('   A T E N Ç Ã O   ', 'O relatório retornou vazio.', '', 1, 1, false, 'I');
      Exit;
    end;

    FSDSRel.DataSource := DMESTOQUE.DRel;
    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComissaoVendaProdutoMultiplosVendedores.frf');
    FSRel.ShowReport;
  except
  end;
end;

procedure TFOrdemMec.ActSearchPlacaUpdate(Sender: TObject);
begin
  inherited;
  ActSearchPlaca.Enabled := ((XCOD_CLIENTE >= 0) and (XCOD_EQUIPAMENTO < 0) and (Length(Trim(FBEquipPlaca.EDCodigo.Text)) > 0));
end;

procedure TFOrdemMec.ActSearchPlacaExecute(Sender: TObject);
var
  cds: TClientDataSet;
begin
  inherited;
  cds := GetPlacaInfo(Trim(FBEquipPlaca.EDCodigo.Text));
  try
    DMPESSOA.InsertNewEquipamento(MDO.InsertNewEquipamento, DMPESSOA.WCliente.FieldByNAme('COD_CLIENTE').Value,
      cds.FieldByNAme('MARCAMODELO').Value, cds.FieldByNAme('MARCA').Value, cds.FieldByNAme('MODELO').Value,
      cds.FieldByNAme('ANO').Value, cds.FieldByNAme('COR').Value, cds.FieldByNAme('CHASSI').Value,
      Trim(FBEquipPlaca.EDCodigo.Text), Null, Null, 1, Null
    );

    if FBEquipPlaca.EDCodigo.Text <> '' then
      PesquisaCodigoEquipamento(FBEquipPlaca.EDCodigo.Text, true);
  finally
    cds.Free;
  end;
end;

end.
