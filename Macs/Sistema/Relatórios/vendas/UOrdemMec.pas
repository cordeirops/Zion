unit UOrdemMec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDropDownEdit,
  TFlatEditUnit, cxGroupBox, Grids, DBGrids, EditFloat, ColorEditFloat,
  Mask, DBCtrls, DBColorEdit, cxCheckBox, UFrmBusca, ComCtrls, Menus,
  ColorMaskEdit, cxGraphics, IBQuery, DB, Ibdatabase, FashionPanel,DateUtils,
  FR_Class, FR_DSet, FR_DBSet, UInfoClienteEquip, ClipBrd, FR_Shape, UCadPlaca,
  QRCtrls, QuickRpt, TransBtn, RpDefine, RpBase, RpSystem, RpRave,
  RpRender, RpRenderRTF;

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
    EDCodFab: TColorMaskEdit;
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
    LPesquisa: TLabel;
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
    Label24: TLabel;
    Label28: TLabel;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    CBPagamento: TComboBox;
    FrmConta: TFrmBusca;
    FrmFormPag: TFrmBusca;
    DBDATAENTREGA: TColorMaskEdit;
    DBHORAENTREGA: TColorMaskEdit;
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
    QRDBText32: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText54: TQRDBText;
    FSDSTmp: TfrDBDataSet;
    PValidacoesFiscais: TPopupMenu;
    Valida1: TMenuItem;
    ColorMaskEdit1: TColorMaskEdit;
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
    Label17: TLabel;
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
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel138: TQRLabel;
    QRDBText137: TQRDBText;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRDBText138: TQRDBText;
    QRDBText139: TQRDBText;
    QRDBText140: TQRDBText;
    QRDBText141: TQRDBText;
    QRDBText143: TQRDBText;
    QRDBText144: TQRDBText;
    QRDBText145: TQRDBText;
    QRDBText146: TQRDBText;
    QRDBText147: TQRDBText;
    QRDBText148: TQRDBText;
    QRDBText149: TQRDBText;
    QRSysData10: TQRSysData;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRDBText150: TQRDBText;
    QRDBRichText6: TQRDBRichText;
    QrObs15MeiaPagina: TQRRichText;
    QRLabel147: TQRLabel;
    QRBand15: TQRBand;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRShape112: TQRShape;
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
    QRShape118: TQRShape;
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
    QRShape124: TQRShape;
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
    QRBand18: TQRBand;
    QrAbertOrdem15Completo: TQuickRep;
    QRBand19: TQRBand;
    QRLabel155: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel162: TQRLabel;
    QRDBText164: TQRDBText;
    QRLabel163: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRLabel166: TQRLabel;
    QRLabel167: TQRLabel;
    QRLabel168: TQRLabel;
    QRDBText165: TQRDBText;
    QRDBText166: TQRDBText;
    QRDBText167: TQRDBText;
    QRDBText168: TQRDBText;
    QRDBText170: TQRDBText;
    QRDBText171: TQRDBText;
    QRDBText172: TQRDBText;
    QRDBText173: TQRDBText;
    QRDBText174: TQRDBText;
    QRDBText175: TQRDBText;
    QRDBText176: TQRDBText;
    QRSysData12: TQRSysData;
    QRShape131: TQRShape;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QRDBText177: TQRDBText;
    QRLabel170: TQRLabel;
    QRSysData13: TQRSysData;
    QRDBRichText7: TQRDBRichText;
    QrObs15PaginaCompleta: TQRRichText;
    QRLabel171: TQRLabel;
    QRBand20: TQRBand;
    QRLabel172: TQRLabel;
    QRLabel173: TQRLabel;
    QRLabel174: TQRLabel;
    QRLabel175: TQRLabel;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    QRShape134: TQRShape;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRShape137: TQRShape;
    QRShape138: TQRShape;
    QRSubDetail7: TQRSubDetail;
    QRDBText178: TQRDBText;
    QRDBText179: TQRDBText;
    QRDBText180: TQRDBText;
    QRDBText181: TQRDBText;
    QRDBText182: TQRDBText;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRShape143: TQRShape;
    QRDBText183: TQRDBText;
    QRSubDetail8: TQRSubDetail;
    QRDBText184: TQRDBText;
    QRDBText185: TQRDBText;
    QRDBText186: TQRDBText;
    QRDBText187: TQRDBText;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRBand21: TQRBand;
    QRBand22: TQRBand;
    QRLabel178: TQRLabel;
    QRDBText188: TQRDBText;
    QRDBText189: TQRDBText;
    QRLTotalFinalOrdem15PaginaCompleta: TQRLabel;
    QRShape148: TQRShape;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRShape151: TQRShape;
    QRLabel180: TQRLabel;
    QRDBText190: TQRDBText;
    QRShape152: TQRShape;
    QRLabel181: TQRLabel;
    QrlDescontoOrdem15PaginaToda: TQRLabel;
    QRBand23: TQRBand;
    QRLabel145: TQRLabel;
    QRDBText142: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRDBImage2: TQRDBImage;
    QRLabel169: TQRLabel;
    QRDBText169: TQRDBText;
    QRDBRichText8: TQRDBRichText;
    QRLabel179: TQRLabel;
    QRDBText191: TQRDBText;
    QRLabel182: TQRLabel;
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
    procedure FormActivate(Sender: TObject);
    procedure CBFILTROPropertiesChange(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure EDNumKeyPress(Sender: TObject; var Key: Char);
    procedure EDBoxKeyPress(Sender: TObject; var Key: Char);
    procedure MEPLACAKeyPress(Sender: TObject; var Key: Char);
    procedure EDCliente1KeyPress(Sender: TObject; var Key: Char);
    procedure EDNumEnter(Sender: TObject);
    procedure EDNumExit(Sender: TObject);
    procedure EDBoxEnter(Sender: TObject);
    procedure EDBoxExit(Sender: TObject);
    procedure MEPLACAEnter(Sender: TObject);
    procedure MEPLACAExit(Sender: TObject);
    procedure EDCliente1Enter(Sender: TObject);
    procedure EDCliente1Exit(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FrmClienteEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    procedure FBEquipPlacaEDCodigoExit(Sender: TObject);
    procedure FBEquipPlacaEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FBEquipPlacaBTNOPENClick(Sender: TObject);
    procedure FrmFormPag1EDCodigoKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
    procedure FrmFormPag1BTNOPENClick(Sender: TObject);
    procedure FrmFormPag1EDCodigoExit(Sender: TObject);
    procedure FBEquipPlacaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmFormPag1BTNMINUSClick(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure CdigodeBarra1Click(Sender: TObject);
    procedure ControleInterno1Click(Sender: TObject);
    procedure CdigoFabricante1Click(Sender: TObject);
    procedure Descrio1Click(Sender: TObject);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure MEPLACAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCliente1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PPesquisaExit(Sender: TObject);
    procedure EDCliente1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBFILTROClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure CompdeAbertura1Click(Sender: TObject);
    procedure Garantia1Click(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure FrmFormPagBTNOPENClick(Sender: TObject);
    procedure FrmFormPagBTNMINUSClick(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure FrmFormPagEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBPagamentoExit(Sender: TObject);
    procedure DBGCTAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmContaServEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmContaServBTNOPENClick(Sender: TObject);
    procedure FrmContaServBTNMINUSClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure FrmFormPagExit(Sender: TObject);
    procedure b(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      State: TOwnerDrawState);
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
    procedure QRDUPLICATABeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
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
    procedure edPlacaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPlacaKeyPress(Sender: TObject; var Key: Char);
    procedure TransparentButton1Click(Sender: TObject);
    procedure EspelhoNotaFiscal1Click(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure edCNPJCPFExit(Sender: TObject);
    procedure SintticodeOrdens1Click(Sender: TObject);
    procedure AnalticodeOrdens1Click(Sender: TObject);
    procedure ServiosPorEquipe1Click(Sender: TObject);
    procedure DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure EDCodFabKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SalvarXMLDistribuio1Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RelatriodeOrdenseProdutos1Click(Sender: TObject);
    procedure cbTerceirosClick(Sender: TObject);
    procedure RelatriodeOrdenseServios1Click(Sender: TObject);
    procedure RvSystem1PrintHeader(Sender: TObject);
    procedure CompAbertura2vias1Click(Sender: TObject);
    procedure RvSystem1BeforePrint(Sender: TObject);

    procedure RvSystem1Print(Sender: TObject);
    procedure GerarXMLporPerodo1Click(Sender: TObject);
    procedure ICMSIndevido1Click(Sender: TObject);
    procedure BandFinalBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QrAbertOrdem13BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure BandProdBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ProdutoseServios1Click(Sender: TObject);
    procedure QrAbertOrdem14MeiaPaginaBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QrAbertOrdem14CompletoBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RecuperareEnviarXMLdeCancelamento1Click(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QrAbertOrdem15MeiaPaginaBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand14BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand17BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand19BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand22BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BandServBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand32BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure EdPlaca2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPlaca2KeyPress(Sender: TObject; var Key: Char);
    procedure EdPlaca3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPlaca3KeyPress(Sender: TObject; var Key: Char);
    //procedure GBPRINCIPALCADASTROClick(Sender: TObject);

  private
    { Private declarations }

    //filtra grid consulta
    procedure AtualizaGridConsulta(FILTRO :STRING);
    //Procedure para imprimir o modelo de comprovante numero 10
	 Procedure ImpCompModelo10;
    //Procedure para imprimir o modelo de comprovante numero 17
	 Procedure ImpCompModelo17;
    //LIMPAR TODOS OS CAMPOS PRINCIPAIS
    Procedure LimpaCampos;
    //LIMPAR CAMPOS PRODUTOS
    Procedure LimpaCamposProd;
    //LIMPAR CAMPOS SERVIÇO
    Procedure LimpaCamposServ;
    //pesquisa codigo do equipamento
    Procedure PesquisaCodigoEquipamento(codigo:String;cliente:boolean);
    //pesquisa codigo equipe
    Procedure PesquisaCodigoEquipe(codigo:String);
    //pesquisa codigo forma pagamento
    Procedure PesquisaCodigoPagamento(codigo:String);
    //seleciona forma de pagamento e vendedor de acordo com o cliente
    Procedure SelecionaFormaPagamento;
    //Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
    Procedure EscreveLabelsPROD;
    //opções de pesquisa para o produto
    procedure TipoPesquisaProduto(tipo:String);
    //pesquisa PRODUTO
    //Procedure PesquisaProduto(str:String);
    //FILTRA OS REGISTROS DE PRODUTOS E SERVIÇOS PERTENCENTES A ORDEM
   Procedure FiltraSlave;
   // função para calcular data de garantia
    Function Calcula_Garantia(Qtde, Tipo: string): TDateTime;
   // remover produto selecionado
   procedure RemoverProduto;
   // remover serviço selecionado
   procedure RemoverServico;
   //modo pesquisa
   procedure SelecionarModoPesquisa(mostrar:Boolean; tipo:String);
   procedure PesquisaGrid(str:String);
   function ProxPesq:String;
   function AntPesq:String;
   function RetNomeGrid:String;


   // travar paines principais
   procedure TravarPaines(oi:boolean);
   //Fecha pedido (Atualiza estoque e joga no financeiro
   Function FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
   //Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
   Function CancelLanOrd(CodPedido: String):Boolean;
   // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
   procedure Exporta_OrdensServico;
   // Conecta banco de ddos para exportar Ordens
   Function ConectaBancoDados(XEndereco: string): boolean;

   // verifica se jah existe o funcionario no banco de fora, e se na estiver jah cadastra na hora
    Function VerificaFuncionario(Atividade: String; Cod_funcionario: string): integer;
    // verifica se o cliente esta cadastrado no banco, se nao tiver jah cadastra na hora
    Function VerificaCliente(Cod_Cliente: integer): integer;
    // verifica se existe a cidade do cliente, se nao jah cadastra
    Function VerificaCidade: integer;
    // verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
    Function VerificaEstado: integer;
    // VERIFICA SE NO BANCO DE FORA ESTAH CADASTRADO O EQUIPAMENTO DA ORDEM, SE NAO TIVER JAH CADASTRA
   function VerificaEquipamento(Cod_equipamento: string): integer;
   // busca forma de pagamento, se necessario cadastra a nova forma
   Function Forma_Pagamento: integer;
   // procura dados na tabela unidade tanto no banco local como o de fora e insere novos dads se necessario
   Function DadosUnidade: integer;
   // VERIFICA SE NO BANCO DE FORA TEM A EQUIPE CADASTRADA JUNTO COM SEU RESPONSAVEL E FUNCIONARIO
   function VerificaEquipe(Cod_equipe: string; Cod_responsavel: string): integer;
   // CADASTRO DE FUNCIONARIO
   Function CadastroFuncionario: integer;
   // VERTIFICA A FORMA DE PAGAMENTO NO CADASTRO DO CLIENTE
   Function FormaPgto_Cliente: integer;
   // Quando eh informado o valor de desconto do total dos produtos em "%" eh efetuado calculo para cada produto da ordem
   Procedure CalcPercentProd;
   //FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
   Function CalcComisTotVend: Boolean;
   //verifa se nao ordem passada no parametro existem (produtos - prod / serviços - serv) conforme solicitado e retorna true caso encontrar
   function VerificaProdutosServicos(NumOrdem:Integer; prod:Boolean; serv:Boolean):Boolean;
   //atualizar os dados do funcionario no banco externo
   Function AtualizarFuncionarioBancoExterno(codFunInt:integer;codFunExt:integer): Boolean;
   //pesquisa equipamento do cliente e seta no localizar
   procedure PesquisaEquipCliente(codigo:String);
   //ALEX: 19/01/2009 - Funcção Utilizada para realizar devolução total da ordem selecionada
   Function DevTotPed(XCod_PedDev: Integer): Boolean;
   //Djonathan 23/11/2009: Função utilizada para retornar valores maximos e minimos da funcao
   Function EncontraValores(XSqlTabelaA: String; XSQLTabelaAux: String; XInicial: String; XFinal: String; XDesc : String):Integer;
   //Djonathan 23/11/2009: Funcao utilizada para comparar tabela com parametro
   Function ComparaValores(XSqlTabelaA: String; XCodigoB: String; XCount: Integer): Boolean;
   //Djonathan 24/11/2009: Função utilizada para retornar se existe na tabela um valor igual ao parametro
   function ComparaValoresInternos(XSqlTabelaA: String;XView: String;XCodigoV: String;XCodigoB: String;XCount: Integer): Boolean;
   //DJ 27/11/2009: Verifica dados da pessoa, mesma função da UCadplaca
	function verificaPessoa(msg:Boolean):Boolean;
   //DJ 27/11/2009: Limpa os dados o painel cadastro rapido(ctrl + N),igual a UCadPlaca
   procedure limpar(pessoa,equipamento:Boolean);
   // - 04/02/2009: passar como parametro placa (passar true para definir placa como ativa)e será retornado o seu respectivo código (caso não axar result := -1)
   function VerificaPlacaAtiva(placa:String):Boolean;

   // VERIFICA CST PARA EXPORTAÇÃO
   Function VerificaCST(XCod_Cst: Integer): integer;

   //Gera documento fiscal para a ordem
   Function GeraFiscal: Boolean;
   //Função Utilizada para gerar a tela do fiscal a partir da tela de consulta
   Function AbreFiscal: Boolean;
   procedure funcaocordup;
   //Função Para calcular desconto da ordem
	Function EfetuaDesconto(OrigemDesconto: String; TipoDesconto: String): Boolean;
   //Função utilizada para buscar o cliente atravez do nome o cpfcnpj
   Function BuscaCliente(XTipo: String; XValor: String):Boolean;
   //Função utilizada para buscar o veiculo do cliente atravez da placa
   Function BuscaPlaca(XValor: String):Boolean;
   //Função que efetua a devolução total de Nota Fiscal Normal e Nota Fiscal Eletronica, emitindo as Notas Fiscais de entrada Correspondente
   Function DevNotaFiscal(XCod_PedDev: Integer): Boolean;
   //Função Auxiliar para Devolução de Nota Fiscal - Efetua Estorno do Financeiro
   Function DevNotaFiscal_EstornoFinanceiro: Boolean;
   //Função Auxiliar para Devolução de Nota Fiscal - Tentar registrar o cliente da nota fiscal de saída como fornecedor da NF de entrada
   Function DevNotaFiscal_SetaClienteFornecedor: Boolean;
   //Função Auxiliar para Devolução de Nota Fiscal - Verifica Configurações necessárias para devolução
   Function DevNotaFiscal_VerificaConfigs: Boolean;
   //Função Auxiliar para Devolução de Nota Fiscal - Gera Pedido de compra e lançao itens
   Function DevNotaFiscal_EfetuaDevolucao: Boolean;
	//Filtra Tabela Slave e calcula total
	Procedure FiltraSlaveDev(XCod_PedSlave: Integer);
   //Função Auxiliar para Devolução de Nota Fiscal - Fecha o pedido e seta dados do fiscal
   Function DevNotaFiscal_SetaFiscal: Boolean;
   //Função Auxiliar para Devolução de Nota Fiscal - Fecha o pedido e seta dados do fiscal
   Function DevNotaFiscal_EmiteFiscal: Boolean;
   //Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
   Function RetornaNumPed: Integer;
   //Paulo 29/11/2011:busca a comissão do responsavel da equipe
   procedure RetornaComissao(CodResp: Integer);
   //Paulo 29/11/2011:Imprime imagem no relatório do rave report
   procedure PrintImage(RVSystem:TRvSystem; Row,Col,ImageWidth,ImageHeight: Double; Bitmap: TBitmap; FileName:String='');
   //Paulo 19/04/2012: Função Utilizada para gerar a tela do fiscal para serviços a partir da tela de consulta
   Function AbreFiscalServicos: Boolean;
  public

    { Public declarations }

  end;

var
  FOrdemMec: TFOrdemMec;

  //VARIAVEIS RESPONSÁVEIS POR ARMAZENAR OS VALORES DAS CHAVES PRIMÁRIAS E ESTRANGEIRAS UTILIZADAS NA ORDEM
  XCOD_ORDEM, XCOD_CLIENTE, XCOD_EQUIPAMENTO, XCOD_CONTABANCO, XCOD_VENDEDOR, XCOD_FUNCIONARIO, XCOD_FORMPAG, XCOD_CONTA, XCOD_CONTASERV: INTEGER;
  XCOD_ITPROD, XCOD_ITSERV, XCOD_ITDESP: INTEGER;
  XDATA: STRING;
  XResult : real; // armazena valores das horas calculadas para calculo
  XNum_Horas: String; // armazena as horas normais e extras para executar calculo financeiro
  XESTADO:STRING; //Controla o estado inserçao ou edição
  XLIBDESCPROD, XLIBMARGEMSEG: Boolean;//Variável que controla se foi liberado um desconto superior ao cadastrado para o produto
  XALIQCOMISS: REAL;// Armazena o percentual Total de comissão utilizado para caso haja mais de um comissionado
  XVLRUNITVISTA, XVLRTVISTA, XVLRTOTAL, XVLRTPROD, XVLRTSERV: REAL;// ARMARZENA VALOR TOTAL DO PEDIDO
  XLIBERA_MARK : Boolean; // se o campo for TRUE o campo MARK eh liberado na grid do funcionario
  XDiaSemana : integer; // recebe de retorno o numero q representa o dia da semana

  XPESPROD: Integer; // pesquisa de produto 1 - codigo de barra, 0 - controle interno, 2 - codigo do fabricante, 3 - descricao
  //Estes valores devem ser passados no on show de cada formulario que inheritar o fcadpadrao
//	XTabela: TIBQuery; //Nome da tabela padrão para se trabalhar no Cadastro Padrão
	XCampo: String; //Nome do campo Principal da tabela padrão para se trabalhar no Cadastro Padrão
//   XPkTabela: String; //Nome da PK da tabela padrão para se trabalhar no Cadastro Padrão
//   XTransaction: TIBTransaction; //Nome do Transaction padrão para se trabalhar no Cadastro Padrão
   XView: TIBQuery; // Nome da View Padrao
   XTab: Boolean; // Caso true Define que a query de consulta é a Xtabela
   XDescricao: String; // Descriçao da tabela padrão em andamento utilizado nas mensagens
//   XSQLTABELA: String; // Nome da tabela no BD para consultas Sql
   XSQLVIEW: String; // Nome da VIEW no BD para consultas Sql
   XLiberaDados: String; //String que passa mais uma consulta na procedure liberadados
   XCODPKCOMIS: Integer;//Chave primaria para lançamento automático de comissão ao fechar o pedido
   XVLRCOMIS: REAL;// Armazena o Vlr da Comissão que o vendedor receberá no pedido

   XCod_usuario: Integer;
   XDtGarantia: String;
   XQtdGarantia: Integer;

   XNumOrdem: String; // - 19/03/2009: armazena numero da ordem

   XCOD_CLIENTE_SELECT :Integer;

   XTipoProc: Smallint; //0 = procura normal 1=procura pelo nome

   XTipoPes:String;
   XContPes:String;

   XCod_PedCompra, XCod_PedVendaDev, XCod_FornecedorDev, XCodSlaveDev, XCOD_FISCAL: Integer; //ALEX : 19/01/09 - Variaveis auxiliares para controle de devolução de ordem de serviço
	XCfopDev: String; //Variavel para armazenar temporariamente o cfop de devolução
   XOrdem: String;
   XCodTmpEstoque: String;//Armaena de forma temporaria o codigo do estoque durante a pesquisa automatica (inteligente)
   XInicialSQl,XFinalSql: String; //Djonathan 26/11/2009
   XMin,XMax: String; //Djonathan 26/11/2009
   XOK : Boolean;// - 27/04/2009: ser variavel estiver como true é que ja foi encontrado uma placa com cliente correspondente
   XCONTROLECONSULTA: Boolean; //DJ 02/12/2009: Indica se esta acontecendo uma consulta
   XcontroleCtrlN, XControleCadPlaca: Boolean; //Determina se o cadastro de ctrln esta cadastrando ou consultando
   XFatOrd:Boolean; //Paulo 14/03/2011: PAra controle de fatura
   XCARTACORRECAO, XComp2Vias:Boolean; //Paulo 20/01/2012: Para impressão de ordem em 2 vias
   Xcop,XNovaPag,xcont: Integer;

   //relatorio QRAbertOrdem13
   xTotalProd, xTotalServ, xTotalDescProd, xTotalDescServ  : Double;
   xTotalFinalServ, xTotalFinalProd, xTotalFinalOrdem : Double;
  
implementation

uses AlxMessage, Alxor32, UMenu, UDmServ, UDMEstoque, UDMMacs, UDMPessoa,
  UCliente, UCadEquipamento, UFormPag, UDMFinanc, UProduto, USenha,
  Alxorprn, UCadEquipe, UDMGEOGRAFIA, UFiscal, UDMSaida, UDMCaixa,
  UDmBanco, UDMConta, UConsPlncta, UPedidoPadrao, UDMEntrada, UDMExporta,
  UExpImp, URelMecanica, Math, UOrcamento, UCadCidade, UFiscalOrdem,
  URelEquipe, UFiscalEntradas, UMzrNfe, URelPeriodoFiscal, UPedVenda,
  UPadraoFiscal, UListaNfe, UMDO, URelOrdem, UFServico, URelData;

{$R *.dfm}

//Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
Function TFOrdemMec.RetornaNumPed: Integer;
Var
	XFlag: Integer;
Begin
   Result:=-1;
   XFlag:=-1;
   Try
      //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
      FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
      //Recebe o Código de vendas
      If DMMacs.TEmpresa.FieldByName('PROX_OS').AsString='' Then
      		XNumOrdem:='1'
      Else
         	XNumOrdem:=DMMacs.TEmpresa.FieldByName('PROX_OS').AsString;

      While XFlag=-1 do
      Begin
      		If FiltraTabela(DMMACS.TALX, 'VWORDEM', 'numero', XNumOrdem, '')=True
           Then Begin
               XNumOrdem:=IntToStr((StrToInt(XNumOrdem)+1));
           End
           Else Begin
               XFlag:=1;
           End;
      End;
      //Incrementa o codigo de vendas em Empresa
      DMMACS.TEmpresa.Edit;
      DMMacs.TEmpresa.FieldByName('PROX_OS').AsString:=IntToStr(StrToInt(XNumOrdem)+1);
      DMMACS.TEmpresa.Post;
      //Atualiza e confirma os Dados de empresa
      try
           DMMacs.Transaction.CommitRetaining;
      except
           DMMacs.Transaction.RollbackRetaining;
      end;
      Result:=StrToInt(XNumOrdem);
   Except
      Result:=StrToInt(XNumOrdem);
   End;
End;
//Função Auxiliar para Devolução de Nota Fiscal - Verifica Configurações necessárias para devolução
Function TFOrdemMec.DevNotaFiscal_VerificaConfigs: Boolean;
Begin
	Result:=True;
   Try
       FMenu.MAux.Lines.Clear;
       //Verifica se existe a forma de pagamento a vista
       If FiltraTabela(DMFINANC.TFormPag,'FORMPAG', 'DESCRICAO', 'À VISTA', '')=False
       Then Begin
           Result:=False;
           FMenu.MAux.Lines.Add('Financeiro : É necessário ter forma de pagamento A VISTA cadastrada');
       End;

       //Verifica Cfop para devolução de mercadoria
       XCfopDev:='1202'

   Except
		Result:=False
   End;
End;
//Função Auxiliar para Devolução de Nota Fiscal - Tentar registrar o cliente da nota fiscal de saída como fornecedor da NF de entrada
Function TFOrdemMec.DevNotaFiscal_SetaClienteFornecedor: Boolean;
Begin
	Result:=True;
   Try
   	//Procura fornecedor com o mesmo código pessoa que o código do cliente
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('  select pessoa.cod_pessoa, vwcliente.cod_cliente, vwfornec.cod_fornec from ordem ');
       DMMACS.TALX.SQL.Add('   left join vwcliente on ordem.cod_cliente=vwcliente.cod_cliente ');
       DMMACS.TALX.SQL.Add('   left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
       DMMACS.TALX.SQL.Add('   left join vwfornec on pessoa.cod_pessoa = vwfornec.cod_pessoa ');
       DMMACS.TALX.SQL.Add('   Where ordem.cod_ordem=:codigo ');
       DMMACS.TALX.ParamByName('codigo').AsInteger:=XCod_PedVendaDev;
       DMMACS.TALX.Open;
       If DMMACS.TALX.FieldByName('cod_fornec').AsInteger<=0
       Then Begin
       	//Não existe fornecedor cadastrado, devemos cadastrar
           XCod_FornecedorDev := InserReg(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC');
           DMPESSOA.TFornecedor.Edit;
           DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsInteger := DMMACS.TALX.FieldByname('COD_PESSOA').AsInteger;
           DMPESSOA.TFornecedor.FieldByName('COD_INTERNO').AsInteger := XCod_FornecedorDev;
           DMPESSOA.TFornecedor.FieldByName('DATA_CAD').AsDateTime := Date();
           DMPESSOA.TFornecedor.Post;
       End
       Else Begin
       	//Já existe um fornecedor cadastrado para este caso
           XCod_FornecedorDev:=DMMACS.TALX.FieldByName('cod_fornec').AsInteger
       End;
   Except
		Result:=False
   End;
End;
//Função Auxiliar para Devolução de Nota Fiscal - Efetua Estorno do Financeiro
Function TFOrdemMec.DevNotaFiscal_EstornoFinanceiro: Boolean;
Begin
	Result:=True;
   Try
   	//Chama Função já existente para cancelar financeiro
       If CancelLanOrd(IntToStr(XCod_PedVendaDev))=False Then
       	Result:=False;
   Except
		Result:=False
   End;
End;

//Filtra Tabela Slave e calcula total
Procedure TFOrdemMec.FiltraSlaveDev(XCod_PedSlave: Integer);
Begin
    //INSERE COMANDOS PARA FILTRAR
    DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;
    DMESTOQUE.TSlave.SQL.Add(' Select * From itprodord ');
    DMESTOQUE.TSlave.SQL.Add(' left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
    DMESTOQUE.TSlave.SQL.Add(' Where itprodord.cod_ordem = :CODPEDVENDA ');
    DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsInteger:=XCod_PedVendaDev;
    DMESTOQUE.TSlave.Open;
    //INSERE COMANDOS PARA FILTRAR ITENS DEVOLVIDOS
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add(' Select * ');
    DMESTOQUE.Alx.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
    DMESTOQUE.Alx.SQL.Add(' Where itprodord.cod_ordem = :CODPEDVENDA ');
    DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsInteger:=XCod_PedCompra;
    DMESTOQUE.Alx.Open;
End;
//Função Auxiliar para Devolução de Nota Fiscal - Gera Pedido de compra e lançao itens
Function TFOrdemMec.DevNotaFiscal_EfetuaDevolucao: Boolean;
Var
	XProxPed: Integer;
Begin
	Result:=True;
   Try
   	//PASSO 01 - Seta dados do pedido de venda como devolvido
       If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCod_PedVendaDev), '')=True
       Then Begin
           DMServ.TOrd.Edit;
           DMServ.TOrd.FieldByName('status').AsString:='DEVOLVIDO';
           DMServ.TOrd.FieldByName('COMISSAO').AsCurrency := 0;
           DMServ.TOrd.Post;
       End
       Else Begin
           Result:=False;
           FMenu.MAux.Lines.Add('A o efetuar devolução A oRDEM DE sERVIÇO não foi encontrado para setar status como devolvido');
       End;
       //PASSO 02 - Criar e gravar cabeçalho de novo pedido de compra

       //filtra as formas de pagamento
       FiltraTabela(DMFINANC.TFormPag,'FORMPAG', 'DESCRICAO', 'À VISTA', '');
       XProxPed:=DMMACS.TEmpresa.FieldByName('PROXPEDCOMP').AsInteger;
       DMMACS.TEmpresa.Edit;
       DMMACS.TEmpresa.FieldByName('PROXPEDCOMP').AsInteger:=DMMACS.TEmpresa.FieldByName('PROXPEDCOMP').AsInteger+1;
       DMMACS.TEmpresa.Post;
       //ABRE NOVO PEDIDO DE COMPRA PARA SUPORTAR A DEVOLUÇÃO
       XCod_PedCompra:=InserReg(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP');//Insere novo registro de pedido de compra com codigo novo
       DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger:=XCod_PedCompra;
       DMENTRADA.TPedC.FieldByName('NUMPED').AsInteger:=XProxPed;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime:=DATE();
       DMENTRADA.TPedC.FieldByName('DTFECH').AsDateTime:=DATE();
       DMENTRADA.TPedC.FieldByName('FISCO').AsString:='NF';
       DMENTRADA.TPedC.FieldByName('COBRANCA').AsString:='CARTEIRA';
       DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger := XCod_FornecedorDev;
       DMENTRADA.TPedC.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
       DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency:=DMServ.WOrdem.FieldByName('TOTAL').AsCurrency;
       DMENTRADA.TPedC.FieldByName('COD_DEVOLUCAO').AsInteger:=XCod_PedVendaDev;
      	DMENTRADA.TPedC.FieldByName('NUMDEV').AsString:=DMServ.WOrdem.FieldByName('NUMFISCAL').AsString;
       DMENTRADA.TPedC.FieldByName('COD_FORMPAG').AsInteger:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       DMENTRADA.TPedC.FieldByName('SITUACAO').AsString:='FECHADO';
       DMENTRADA.TPedC.Post;

       //PASSO 03 - Insere os itens de pedido
   	FiltraSlaveDev(XCod_PedVendaDev); //seleciona items do pedido
       //Percorremos todos os itens do pedido de venda para efetuar os laçamentos de entrada
   	DMESTOQUE.TSlave.First;
   	While Not DMESTOQUE.TSlave.Eof Do
   	Begin
           //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
           If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '')=False
           Then Begin
				Result:=False;
               FMenu.MAux.Lines.Add('Estoque: Verifique a ocorrencia de itens de venda com problemas de código de estoque');
               Exit;
           End;
           If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '')=False
           Then Begin
				Result:=False;
               FMenu.MAux.Lines.Add('Vwsimilar: Verifique a ocorrencia de itens de venda com problemas de código de estoque');
               Exit;
           End;
           If FiltraTabela(DMServ.TPOrd, 'itprodord', 'cod_itprodord', DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsString, '')=False
           Then Begin
				Result:=False;
               FMenu.MAux.Lines.Add('Itens de de venda: Verifique a ocorrencia de itens de venda com problemas de código de estoque');
               Exit;
           End;
           //Seta informações do item de venda como devolvido
           DMServ.TPOrd.Edit;
           DMServ.TPOrd.FieldByName('OPERACAO').AsString:='DVL';
           DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency:=0;
           DMServ.TPOrd.FieldByName('QTDDEV').AsCurrency:=DMServ.TPOrd.FieldByName('qtd').AsCurrency;
           DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency:=0;
           DMServ.TPOrd.FieldByName('LUCMOE').AsCurrency:=0;
           DMServ.TPOrd.Post;

           //INSERE PRODUTO EM ITENS DE PEDIDO DE COMPRA
           XCodSlaveDev:=InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');
           DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger:=XCodSlaveDev;
           DMENTRADA.TItemPC.FieldByName('COD_DEVOLUCAO').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsInteger;
           DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency:=DMESTOQUE.TSlave.FieldByName('ALIQICMS').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency:=DMESTOQUE.TSlave.FieldByName('BASEICMS').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency:=DMESTOQUE.TSlave.FieldByName('VLRICMS').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('REDUCBASEICMS').AsCurrency:=DMESTOQUE.TSlave.FieldByName('REDUCBASEICMS').AsCurrency;
           If DMESTOQUE.TSlave.FieldByName('APLICARST').AsString='1'
           Then Begin
           	DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency:=DMESTOQUE.TSlave.FieldByName('BASEICMSSUBS').AsCurrency;
           	DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency:=DMESTOQUE.TSlave.FieldByName('VLRICMSSUBS').AsCurrency;
           End
           Else Begin
           	DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency:=0;
           	DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency:=0;
			End;
           DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency:=DMESTOQUE.TSlave.FieldByName('ALIQIPI').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VLRIPI').AsCurrency:=DMESTOQUE.TSlave.FieldByName('VLRIPI').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('FRETE').AsCurrency:=0;
           DMENTRADA.TItemPC.FieldByName('EMBPROD').AsCurrency:=0;
           DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger:=XCod_PedCompra;
           DMENTRADA.TItemPC.FieldByName('DATA').AsString:=DateToStr(Date());
           DMENTRADA.TItemPC.FieldByName('QTDEST').AsCurrency:=DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
           DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency:=DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency:=DMESTOQUE.TSlave.FieldByName('desconto').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency:=DMESTOQUE.TSlave.FieldByName('DESCNF').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TSlave.FieldByName('VALUNIT').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency:=DMESTOQUE.TSlave.FieldByName('total').AsCurrency;
			DMENTRADA.TItemPC.FieldByName('COD_CST').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_CST').AsInteger;
           DMENTRADA.TItemPC.FieldByName('CFOP').AsString:=XCfopDev;
           DMENTRADA.TItemPC.Post;
           //ATULIZA ESTOQUE
           DMESTOQUE.TEstoque.Edit;
           DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency;
           DMESTOQUE.TEstoque.Post;
           DMESTOQUE.TSlave.Next;
       End;

   Except
		Result:=False
   End;
End;

//Função Auxiliar para Devolução de Nota Fiscal - Fecha o pedido e seta dados do fiscal
Function TFOrdemMec.DevNotaFiscal_SetaFiscal: Boolean;
Begin
	Result:=True;
   Try
   	//Filtra documento fiscal de Saída
       If FiltraTabela(DMSAIDA.TAlx, 'docfisord', 'COD_ORDEM', IntToStr(XCod_PedVendaDev), '')=True
       Then Begin
			//Sql para localizar todos os periodos fiscais em aberto
       	DMMACS.TPeriodoFiscal.Close;
       	DMMACS.TPeriodoFiscal.SQL.Clear;
       	DMMACS.TPeriodoFiscal.SQL.Add(' Select * from periodofiscal where (periodofiscal.fechado=''N'')');
       	DMMACS.TPeriodoFiscal.Open;
       	DMMACS.TPeriodoFiscal.Last;
       	If DMMACS.TPeriodoFiscal.RecordCount>1
       	Then Begin
               Result:=False;
           	FMenu.MAux.Lines.Add('Documento Fiscal: Erro ao selecionar documento fiscal de saída');
               Exit;
       	End;
           //INSERE FISCAL EM PEDIDO DE COMPRA
           XCOD_FISCAL:=InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC');
           DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsInteger:=XCod_PedCompra;
           DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger:=XCOD_FISCAL;
           DMENTRADA.TFiscPC.FieldByName('COD_PERIODOFISCAL').AsInteger:= DMSAIDA.TAlx.FieldByName('COD_CFOP').AsInteger;
           DMENTRADA.TFiscPC.FieldByName('COD_PERIODOFISCAL').AsInteger:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
           DMENTRADA.TFiscPC.FieldByName('DTEMISSAO').AsDateTime:=DMSAIDA.TAlx.FieldByName('DTEMISSAO').AsDateTime;
           DMENTRADA.TFiscPC.FieldByName('DTENTSAID').AsDateTime:=DMSAIDA.TAlx.FieldByName('DTENTSAID').AsDateTime;
           DMENTRADA.TFiscPC.FieldByName('HORASAID').AsDateTime:=DMSAIDA.TAlx.FieldByName('HORASAID').AsDateTime;
           DMENTRADA.TFiscPC.FieldByName('BASEICMS').AsCurrency:=DMSAIDA.TAlx.FieldByName('BASEICMS').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('VLRICMS').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRICMS').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency:=DMSAIDA.TAlx.FieldByName('BASCALSUBS').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRICMSUBS').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('VLRSEG').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRSEG').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('VLRTOTIPI').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRTOTIPI').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('VLROUTRASDESP').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLROUTRASDESP').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('VLRTOTPROD').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRTOTPROD').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('VLRTOTDOCNF').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRTOTDOCNF').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('VLRISENTOICMS').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRISENTOICMS').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('SERIE').AsString:='1';
           DMENTRADA.TFiscPC.FieldByName('MODELONF').AsString:=DMSAIDA.TAlx.FieldByName('MODELONF').AsString;
           DMENTRADA.TFiscPC.FieldByName('obs').AsString:='Ref. Devolução da NF: '+DMSAIDA.TAlx.FieldByName('numdocfis').AsString;
           DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString:=DMSAIDA.TAlx.FieldByName('FRETECOMP').AsString;
           DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRFRETE').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsCurrency:=DMSAIDA.TAlx.FieldByName('COD_TRANSP').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('QUANTFRETE').AsCurrency:=DMSAIDA.TAlx.FieldByName('QUANTFRETE').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('ESPECIEFRETE').AsString:=DMSAIDA.TAlx.FieldByName('ESPECIEFRETE').AsString;
           DMENTRADA.TFiscPC.FieldByName('MARCAFRETE').AsString:=DMSAIDA.TAlx.FieldByName('MARCAFRETE').AsString;
           DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString:=DMSAIDA.TAlx.FieldByName('NUMCONHEC').AsString;
           DMENTRADA.TFiscPC.FieldByName('PLACA').AsString:=DMSAIDA.TAlx.FieldByName('PLACA').AsString;
           DMENTRADA.TFiscPC.FieldByName('UFPLACA').AsString:=DMSAIDA.TAlx.FieldByName('UFPLACA').AsString;
           DMENTRADA.TFiscPC.FieldByName('PESOBRUTO').AsCurrency:=DMSAIDA.TAlx.FieldByName('PESOBRUTO').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('PESOLIQ').AsCurrency:=DMSAIDA.TAlx.FieldByName('PESOLIQ').AsCurrency;
           DMENTRADA.TFiscPC.FieldByName('FRETECONTA').AsString:=DMSAIDA.TAlx.FieldByName('FRETECONTA').AsString;
           DMENTRADA.TFiscPC.FieldByName('TIPODOCFIS').AsString:='1';
           DMENTRADA.TFiscPC.FieldByName('SERIE').AsString:='1';
           DMENTRADA.TFiscPC.FieldByName('EMISSAOPROPRIA').AsString:='1';
           DMENTRADA.TFiscPC.Post;
       End
       Else Begin
       	Result:=False;
           FMenu.MAux.Lines.Add('Documento Fiscal: Erro ao selecionar documento fiscal de saída');
       End;
   Except
		Result:=False
   End;
End;

//Função Auxiliar para Devolução de Nota Fiscal - Fecha o pedido e seta dados do fiscal
Function TFOrdemMec.DevNotaFiscal_EmiteFiscal: Boolean;
Begin
	Result:=True;
   Try
   	//Confirma alterações
       Try
           DMPESSOA.TransacPessoa.CommitRetaining;
           DMServ.IBT.CommitRetaining;
           DMENTRADA.IBT.CommitRetaining;

           FMenu.TIPOREL:='NF';
           FMenu.TIPOAUX:='';
           FMenu.XNotaEntrada:=True;
           If FiltraTabela(DMENTRADA.WPedc, 'VWPEDC', 'COD_PEDCOMP', IntToStr(XCod_PedCompra), '')= True
           Then Begin
           	AbrirForm(TFFiscalEntradas, FFiscalEntradas, 0);
           End
           Else Begin
               Result:=False;
		        FMenu.MAux.Lines.Add('Fiscal: Erro ao localizar visão do pedido após confirmar dados')
           End;

           FMenu.XNotaEntrada:=False;
       Except
           Result:=False;
           FMenu.MAux.Lines.Add('Fiscal: Erro ');
           DMPESSOA.TransacPessoa.RollbackRetaining;
           DMServ.IBT.RollbackRetaining;
           DMENTRADA.IBT.RollbackRetaining;
       End;
   Except
		Result:=False;
       FMenu.MAux.Lines.Add('Fiscal: Erro ')
   End;
End;

//Função que efetua a devolução total de Nota Fiscal Normal e Nota Fiscal Eletronica, emitindo as Notas Fiscais de entrada Correspondente
Function TFOrdemMec.DevNotaFiscal(XCod_PedDev: Integer): Boolean;
Begin
	Result:=True;
   Try
       XCod_PedVendaDev:=XCod_PedDev;//Seta para o código genérico o código do pedido de venda para devolução
   	//PASSO 01 - Verificar Configurações para Garantir Devolução financeira e de Estoque junto com possibilidade para o Fiscal
		If DevNotaFiscal_VerificaConfigs=True
       Then Begin
           //PASSO 02 - Estornar Financeiro
           If DevNotaFiscal_EstornoFinanceiro=True
           Then Begin
               //PASSO 03 - Transformar Cliente em Fornecedor
               If DevNotaFiscal_SetaClienteFornecedor=True
               Then Begin
                   //PASSO 04 - Gerar novo Pedido de Compra e Lançar devoluções dos Itens
                   If DevNotaFiscal_EfetuaDevolucao=True
                   Then Begin
                       //PASSO 05 - Fechar o Pedido sem gerar Financeiro e setar documento fiscal
                       If DevNotaFiscal_SetaFiscal=True
                       Then Begin
                       	//PASSO 06 - Emitir Documentos Fiscais
                           If DevNotaFiscal_EmiteFiscal=False
                           Then Begin

                           End;
                       End
                       Else Begin
                       	Result:=False;
                       	If MessageDlg('Erro ao gerar documento fiscal para a Nota Fiscal de Devolução. Deseja visualizar estes erro?', mtConfirmation, [mbYes, mbNo], 0)=mrYes Then
                           	MessageDlg('Mensagem:'+FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
                       End;
                   End
                   Else Begin
                   	Result:=False;
                       If MessageDlg('Erro ao gerar devolução para a Nota Fiscal de saída. Deseja visualizar estes erro?', mtConfirmation, [mbYes, mbNo], 0)=mrYes Then
                           MessageDlg('Mensagem:'+FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
                   End;
               End
               Else Begin
               	Result:=False;
                   If MessageDlg('Erro ao setar Cliente/Fornecedor para a Nota Fiscal de Devolução. Deseja visualizar estes erro?', mtConfirmation, [mbYes, mbNo], 0)=mrYes Then
                       MessageDlg('Mensagem:'+FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
               End;
           End
           Else Begin
           	Result:=False;
       		If MessageDlg('Erro ao estornar movimentações financeiras da Nota fiscal de Saída. Deseja visualizar estes erro?', mtConfirmation, [mbYes, mbNo], 0)=mrYes Then
					MessageDlg('Mensagem:'+FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
           End;
       End
       Else Begin
       	Result:=False;
           If MessageDlg('Erro ao validar configurações para devolução de Nota Fiscal. Deseja visualizar estes erro?', mtConfirmation, [mbYes, mbNo], 0)=mrYes Then
               MessageDlg('Mensagem:'+FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
       End;
   Except
       Result:=False;
   End;
   If Result=True
   Then Begin
       Try
           DMPESSOA.TransacPessoa.CommitRetaining;
           DMSAIDA.IBT.CommitRetaining;
           DMENTRADA.IBT.CommitRetaining;
           MessageDlg('Devolução ocorrida com seucesso!', mtWarning, [mbOK], 0);
       Except
           DMPESSOA.TransacPessoa.RollbackRetaining;
           DMSAIDA.IBT.RollbackRetaining;
           DMENTRADA.IBT.RollbackRetaining;
           MessageDlg('Não foi possível gravar devolução. Os dados foram retornados', mtWarning, [mbOK], 0);
       End;
   End
   Else Begin
       DMPESSOA.TransacPessoa.RollbackRetaining;
       DMSAIDA.IBT.RollbackRetaining;
       DMENTRADA.IBT.RollbackRetaining;
       MessageDlg('Não foi possível gravar devolução. Os dados foram retornados', mtWarning, [mbOK], 0);
   End;
End;

//Função utilizada para buscar o cliente atravez do nome o cpfcnpj
Function TFOrdemMec.BuscaCliente(XTipo: String; XValor: String):Boolean;
Begin
	//Limpa SQl
   DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add('SELECT * FROM VWCLIENTE ');
	If XTipo='NOME'
   Then Begin
       DMPESSOA.TALX.SQL.Add(' WHERE upper(VWCLIENTE.NOME)=:NOME');
       DMPESSOA.TALX.ParamByName('NOME').AsString:=XValor;
   End;
	If XTipo='CPFCNPJ'
   Then Begin
       DMPESSOA.TALX.SQL.Add(' WHERE VWCLIENTE.CPFCNPJ=:CPFCNPJ');
       DMPESSOA.TALX.ParamByName('CPFCNPJ').AsString:=XValor;
   End;

   DMPESSOA.TALX.Open;
   If not DMPESSOA.TALX.IsEmpty
   Then Begin
       //Seleciona cidade
       DMGEOGRAFIA.WCidade.Close;
       DMGEOGRAFIA.WCidade.SQL.Clear;
       DMGEOGRAFIA.WCidade.SQL.Add(' Select * from vwcidade where vwcidade.cod_cidade=:codigo ');
       DMGEOGRAFIA.WCidade.ParamByName('codigo').AsInteger:=DMPESSOA.TALX.FieldByName('COD_CIDADE').AsInteger;
       DMGEOGRAFIA.WCidade.Open;
		If not DMGEOGRAFIA.TCidade.IsEmpty
       Then Begin
          XCOD_CIDADE:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
          FrmCidade.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
          FrmCidade.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
       End;
       If MessageDlg('Foi encontrado o cliente: '+#13+DMPESSOA.TALX.FieldByName('NOME').AsString+#13+'CPF/CNPJ: '+DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString+#13+FrmCidade.EdDescricao.Text+#13+'Deseja editar este cliente?', mtWarning, [mbyes, mbno], 0)=mryes
       Then Begin
           XcontroleCtrlN:=True;
           XCOD_CLIENTE:=DMPESSOA.TALX.FieldByName('COD_CLIENTE').AsInteger;
           edNome.Text:=DMPESSOA.TALX.FieldByName('NOME').AsString;
           edCNPJCPF.Text:=DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString;
           edFone.Text:=DMPESSOA.TALX.FieldByName('TELREL').AsString;
       End;
   End
   Else Begin
       XcontroleCtrlN:=False;
   End;
End;

//Função utilizada para buscar o veiculo do cliente atravez da placa
Function TFOrdemMec.BuscaPlaca(XValor: String):Boolean;
Begin
	If edPlaca.Text<>''
   Then Begin
       //Limpa SQl
       DMPESSOA.TALX.Close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add(' select * from equipamento where (equipamento.placa=:placa) ');
       DMPESSOA.TALX.ParamByName('placa').AsString:=edPlaca.Text;
       DMPESSOA.TALX.Open;
       If not DMPESSOA.TALX.IsEmpty
       Then Begin
           XControleCadPlaca:=True;
           XCOD_EQUIPAMENTO:=DMPESSOA.TALX.FieldByName('COD_EQUIPAMENTO').AsInteger;
           edModelo.Text:=DMPESSOA.TALX.FieldByName('modelo').AsString;
           edNumFrota.Text:=DMPESSOA.TALX.FieldByName('num_frota').AsString;
       end
       Else Begin
           XControleCadPlaca:=False;
           XCOD_EQUIPAMENTO:=-1;
       End;
   End;
End;

//Função Para calcular desconto da ordem
Function TFOrdemMec.EfetuaDesconto(OrigemDesconto: String; TipoDesconto: String): Boolean;
Begin
	//se nao tiver nenhum desconto zerar o desconto de produto
   If DMESTOQUE.TSlave.IsEmpty Then
		EdDescTProd.ValueNumeric := 0;

   //se nao tiver nenhum desconto zerar o desconto de serviço
   If DMESTOQUE.TDesp.IsEmpty Then
        EdDescTServ.ValueNumeric := 0;

	//CALCULA DESCONTOS
   //SERVICOS
	If (OrigemDesconto='SERVICO') or (OrigemDesconto='GERAL')
   Then Begin
   	IF XVLRTSERV<>0
       Then Begin
           //Efetua desconto somente para serviços
           If TipoDesconto='PERCENTO'
           Then Begin
               EdTotalserv.ValueNumeric:=XVLRTSERV-(EdDescTServ.ValueNumeric*XVLRTSERV)/100
           End
           Else Begin
               EdDescTServ.ValueNumeric:=((XVLRTSERV-EdTotalserv.ValueNumeric)*100)/XVLRTSERV;
           End;
       End
       Else Begin
           EdDescTServ.ValueNumeric:=0;
			EdTotalserv.ValueNumeric:=0;
       End
   End;
   //PRODUTOS
	If (OrigemDesconto='PRODUTO') or (OrigemDesconto='GERAL')
   Then Begin
   	If XVLRTPROD<>0
       Then Begin
           //Efetua desconto somente para serviços
           If TipoDesconto='PERCENTO' Then
               EdtotalProd.ValueNumeric:=XVLRTPROD-(EdDescTProd.ValueNumeric*XVLRTPROD)/100
           Else
               EdDescTProd.ValueNumeric:=((XVLRTPROD-EdtotalProd.ValueNumeric)*100)/XVLRTPROD;
       End
       Else Begin
			EdtotalProd.ValueNumeric:=0;
			EdDescTProd.ValueNumeric:=0
       End;
   End;

   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorOrd.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric+EdTotDesp.ValueNumeric;
	EdTotalOrd.ValueNumeric:=EdValorOrd.ValueNumeric;   
	EdDescTOrdem.ValueNumeric:=((XVLRTOTAL-EdValorOrd.ValueNumeric)*100)/XVLRTOTAL;

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
End;
//Função Utilizada para gerar a tela do fiscal a partir da tela de consulta
Function TFOrdemMec.AbreFiscal: Boolean;
Begin
	Result:=True;
   Try
		DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
		AbrirForm(TFFiscalOrdem, FFiscalOrdem, 0);
   Except
      Result:=False;
   End
End;

//Paulo 19/04/2012: Função Utilizada para gerar a tela do fiscal para serviços a partir da tela de consulta
Function TFOrdemMec.AbreFiscalServicos: Boolean;
Begin
	Result:=True;
   Try
		DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
		AbrirForm(TFfServico, FfServico, 0);
   Except
      Result:=False;
   End
End;

//Gera documento fiscal para a ordem
Function TFOrdemMec.GeraFiscal: Boolean;
Begin
   // verifica se jah existe ordem com o mesmo numero
   DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add('select * from ordem where (ordem.numero = :numero)');
   DMServ.TAlx1.ParamByName('numero').AsString := DBNumOrd.Text;
   DMServ.TAlx1.Open;

   If (Not DMServ.TAlx1.IsEmpty) and (DMServ.TAlx1.FieldByName('cod_ordem').AsInteger <> XCOD_ORDEM)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Já existe outra ordem de serviço com o mesmo número. Por favor, altere o valor.','',1,1,false,'I');
       DBNumOrd.SetFocus;
       Exit;
   End;

   // seleciona todos os produtos da ordem de serviço
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('select * from itprodord where itprodord.cod_ordem = :cod_ordem');
   DMESTOQUE.Alx1.ParamByName('cod_ordem').AsInteger := XCOD_ORDEM;
   DMESTOQUE.Alx1.Open;

   // se nao possuir nenhum produto verifica se existem servico na ordem
   If DMESTOQUE.Alx1.IsEmpty
   Then Begin
           // na tabela despadic eh feito uma verificação se possui servico relacionado a ordem
           DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx2.SQL.Add('select * from despadic where despadic.cod_gerador = :codigo');
           DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := XCOD_ORDEM;
           DMESTOQUE.Alx2.Open;
    End;

    //FDOISUFADSUIFODAUSIOFUDIAOSUFIOASUOIFAS

       // se nao possui servico e nem produtos eh exibido a mensagem - SEGUNDO SOLICITAÇÃO É OBRIGATORIO PODER GRAVAR SEM SERVICO
       If (DMESTOQUE.Alx2.IsEmpty)
       Then Begin
           If Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço atual não possui produtos e serviços inclusos. Deseja apagá-la ?','',2,3,false,'A')=2
           Then Begin
	       		//Apaga ORDEM
				FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
				DMServ.TOrd.Delete;

                //REGISTRA COMANDO DO USUARIO
               Try
                   Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.TOrd.FieldByName('TOTORD').AsString);
               Except
               End;

          		//Confirma Transação
          		DMSERV.IBT.CommitRetaining;
           End;
       End;

   //VALIDA CAMPOS NECESSÁRIOS
   If (XCOD_CLIENTE=-1) or (FrmCliente.EDCodigo.Text = '')
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um Cliente para Ordem de Serviço', '', 1, 1, False, 'a');
       FrmCliente.EDCodigo.SetFocus;
       Exit;
   End;

   If ((XCOD_EQUIPAMENTO=-1)  or (FBEquipPlaca.EDCodigo.Text = '')) AND (CBVENDABALCAO.Checked=FALSE)
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe uma placa para Ordem de Serviço', '', 1, 1, False, 'a');
       FBEquipPlaca.EDCodigo.SetFocus;
       Exit;
   End;

   If (XCOD_FORMPAG=-1) or (FrmFormPag1.EDCodigo.Text = '')
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe a Forma de Pagamento para a Ordem de Serviço', '', 1, 1, False, 'a');
       FrmFormPag1.EDCodigo.SetFocus;
       Exit;
   End;

   If XCOD_CLIENTE=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
   Then Begin
       If FrmFormPag1.EdDescricao.Text<>'À VISTA'
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
           FrmFormPag1.BTNOPEN.SetFocus;
           Exit;
       End;
   End;

   If (DBBox.Text = '') and (CBVENDABALCAO.Checked=False)
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe o box para Ordem de Serviço', '', 1, 1, False, 'a');
       Exit;
   End;

   //VERIFICA SE O PEDIDO JÁ POSSUI DOC FI PARA EDITAR O VALOR
   If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+IntToStr(XCOD_ORDEM)+#39+')')=True
   Then Begin
       //EDITAL FISCAL EXISTENTE
       DMSAIDA.TFiscPV.Edit;
       DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency:=DMServ.TOrd.FieldByName('VALOR').AsCurrency;
       DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency:=DMServ.TOrd.FieldByName('VALOR').AsCurrency;
       DMSAIDA.TFiscPV.Post;
   End;


       DMServ.TOrd.Edit;
       IF CBGarantia.Checked Then
           DMServ.TOrd.FieldByName('GARANTIA').AsString:='1'
       Else
           DMServ.TOrd.FieldByName('GARANTIA').AsString:='';

       //INFORMA CODIGO DO USUARIO
       DMServ.TOrd.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
       //INFORMA CODIGO DO CLIENTE
       DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger:=XCOD_CLIENTE;
       //INFORMA CODIGO DO EQUIPAMENTO
       DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger:=XCOD_EQUIPAMENTO;
       DMServ.TOrd.Post;
       //FILTRA VENDEDOR
       FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
       DMServ.TOrd.Edit;
       //INFORMA CODIGO DO VENDEDOR
       DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger:=DMPESSOA.VWFuncionario.fieldByName('COD_FUNC').AsInteger;
       //INFORMA CODIGO DO RESPONSÁVEL
       DMServ.TOrd.FieldByName('COD_FUNCIONARIO').AsInteger:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
       //INFORMA CODIGO DA LOJA
       DMServ.TOrd.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       //INFORMA FORMA DE PAGAMENTO
       DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
       DMServ.TOrd.FieldByName('observacao').AsString:=MObs.Lines.Text;
       //GRAVA TOTAIS
       DMServ.TOrd.FieldByName('TOTORD').AsCurrency:=EdValorOrd.ValueNumeric;
       DMServ.TOrd.FieldByName('TOTPROD').AsCurrency:=EdtotalProd.ValueNumeric;
       DMServ.TOrd.FieldByName('TOTSERV').AsCurrency:=EdTotalserv.ValueNumeric;
       DMServ.TOrd.FieldByName('TOTDESP').AsCurrency:=EdTotDesp.ValueNumeric;
       DMServ.TOrd.FieldByName('DESCONTO').AsCurrency:=EdDescTOrdem.ValueNumeric;
       DMServ.TOrd.FieldByName('DESCPROD').AsCurrency:=EdDescTProd.ValueNumeric;
       DMServ.TOrd.FieldByName('DESCSERV').AsCurrency:=EdDescTServ.ValueNumeric;
       //Informa Situação do pedido
       DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
       If (CBVENDABALCAO.Checked=true) and (DMServ.TOrd.FieldByName('BOX').AsString='')
       Then Begin
           DMServ.TOrd.FieldByName('BOX').AsString:='-1';
           DBBox.Text:='-1';
       End;
       If (CBVENDABALCAO.Checked=true) Then
           DMServ.TOrd.FieldByName('LOCALAT').AsString:='BALCÃO';

       DMServ.TOrd.Post;
       Try
          DMServ.IBT.CommitRetaining;
       Except
          DMServ.IBT.RollbackRetaining;
       End;
	AbrirForm(TFFiscalOrdem, FFiscalOrdem, 0);
   FiltraSlave;
   //Chama função para calcular descontos
   EfetuaDesconto('GERAL', 'MOEDA');
end;

// DJ 27/11/2009: VERIFICA OS CADASTROS DA PESSOA, VALIDA CPF CNPJ
function TFOrdemMec.verificaPessoa(msg:Boolean):Boolean;
Begin
     Result := False;
     // - 27/04/2009: verificar se CPF/CNPJ ja existi
     If Trim(edCNPJCPF.Text) <> ''
     Then Begin
       DMPESSOA.TALX.Close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add('select * from pessoa');
       DMPESSOA.TALX.SQL.Add('where pessoa.cpfcnpj like :CPFCNPJ and pessoa.cod_pessoa in ( select cliente.cod_pessoa from cliente)');
       DMPESSOA.TALX.ParamByName('CPFCNPJ').AsString := Trim(edCNPJCPF.Text);
       DMPESSOA.TALX.Open;

       If not DMPESSOA.TALX.IsEmpty
       Then Begin

            If msg
            Then Begin

                If Mensagem('   A T E N Ç Ã O   ','Foi encontrado um cliente com este CPF/CNPJ. Deseja utiliza-lo?','',2,3,false,'A')=2
                Then Begin

                     XCOD_PESSOA := DMPESSOA.TALX.FieldByName('COD_PESSOA').AsInteger;
                     FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_PESSOA', DMPESSOA.TALX.FieldByName('COD_PESSOA').AsString , '');
                     XCOD_CLIENTE := DMPESSOA.TCliente.FieldByName('cod_cliente').AsInteger;

                     edNome.Text := DMPESSOA.TALX.FieldByName('NOME').AsString;
                     edFone.Text := DMPESSOA.TALX.FieldByName('TELREL').AsString;

                     // selecionando dados da tabela pessoa fisica
                     DMPESSOA.TPessoaF.Close;
                     DMPESSOA.TPessoaF.SQL.Clear;
                     DMPESSOA.TPessoaF.SQL.Add('select * from pessoaf where pessoaf.cod_pessoa = :codigo');
                     DMPESSOA.TPessoaF.ParamByName('codigo').AsInteger := XCOD_PESSOA;
                     DMPESSOA.TPessoaF.Open;

                     If DMPESSOA.TPessoaF.IsEmpty
                     Then
                         RGTIPO.ItemIndex := 1
                     Else
                         RGTIPO.ItemIndex := 0;

                     If SelectRegistro('VWCIDADE', 'COD_CIDADE', DMPESSOA.TALX.FieldByName('COD_CIDADE').AsString) = True
                      Then Begin //Slecionou o registro procurado
                           XCOD_CIDADE:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
                           FrmCidade.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
                           FrmCidade.EdDescricao.Text:=DMMACS.TSelect.FieldByName('UF').AsString+'-'+DMMACS.TSelect.FieldByName('NOME').AsString;
                      End
                      Else Begin
                           XCOD_CIDADE:=-1;
                           FrmCidade.EDCodigo.Text:='';
                           FrmCidade.EdDescricao.Text:='';
                      End;

                     Result := True;

                     edPlaca.SetFocus;
                End
                Else Begin
                    limpar(True, False);
                    Result := False;
                End;
            End
            Else Begin
                 XCOD_PESSOA := DMPESSOA.TALX.FieldByName('COD_PESSOA').AsInteger;
                 FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_PESSOA', DMPESSOA.TALX.FieldByName('COD_PESSOA').AsString , '');
                 XCOD_CLIENTE := DMPESSOA.TCliente.FieldByName('cod_cliente').AsInteger;
                 Result := True;
            End;
       End;
     End;
End;

//Djonathan 23/11/2009 : Funcao que retorna o minimo e o maximo de uma tabela
Function TFOrdemMec.EncontraValores(XSqlTabelaA: String; XSQLTabelaAux: String; XInicial: String; XFinal: String; XDesc: String): Integer;

begin
 	DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('select first 1 ' + XSQLTabelaAux + ',numdocfis from ' + XSqlTabelaA + ' where ');
   if ((XInicial <> '') and (XFinal <> ''))
   then begin
   	DMESTOQUE.Alx.SQL.Add('dtemissao between :dtemissao and :dtemissao2 and ');
       DMESTOQUE.Alx.ParamByName('dtemissao').AsDate := StrToDate(XInicial);
   	DMESTOQUE.Alx.ParamByName('dtemissao2').AsDate := StrToDate(XFinal);
   end;
   DMESTOQUE.Alx.SQL.Add('numdocfis is not null and numdocfis <> '''' order by ' + XSQLTabelaAux + XDesc);
   DMESTOQUE.Alx.Open;
   if ((XInicial <> '') and (XFinal <> '') and (DMESTOQUE.Alx.FieldByName('numdocfis').AsString = ''))then
   	Result := 0
   else
   Result := StrToInt(DMESTOQUE.Alx.FieldByName('numdocfis').AsString);
end;

//Djonathan 23/11/2009: Funcao que compara tabela com parametro
function TFOrdemMec.ComparaValores(XSqlTabelaA: String;XCodigoB: String; XCount: Integer): Boolean;
begin
		DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add('select ' + XCodigoB + ',numdocfis from ' + XSQLTabelaA + ' where numdocfis = :numdocfis');
   	DMESTOQUE.Alx.ParamByName('numdocfis').AsString := IntToStr(XCount);
   	DMESTOQUE.Alx.Open;
       if (DMESTOQUE.Alx.FieldByName('numdocfis').AsString = '') or (DMESTOQUE.Alx.FieldByName('numdocfis').AsString = '0')then
       	Result := true
       else
       	Result := false;
end;

//Djonathan 23/11/2009: BUSCA VALORES DENTRO DE UMA TABELA ONDE O PARAMETRO FOR IGUAL AO CAMPO DA TABELA
function TFOrdemMec.ComparaValoresInternos(XSqlTabelaA: String;XView: String;XCodigoV: String;XCodigoB: String;XCount: Integer): Boolean;
begin
   	DMESTOQUE.Alx.SQL.Clear;
		DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Add('select count(numdocfis) as registros from ' + XSQLTabelaA + ' left join ' +XView);
		DMESTOQUE.Alx.SQL.Add(' on ' + XSQLTabelaA + '.' + XCodigoB + ' = ' + XView + '.' + XCodigoV +  ' where ' + XView + '.' + XCodigoV + ' is not null and numdocfis = :numdocfis');
       DMESTOQUE.Alx.ParamByName('numdocfis').AsString := IntToStr(XCount);
   	DMESTOQUE.Alx.Open;
       if (DMESTOQUE.Alx.FieldByName('registros').AsInteger >= 2) then
       	Result := true
       else
       	Result := false;
end;

//Função que efetua a devolução total do pedido de venda
Function TFOrdemMec.DevTotPed(XCod_PedDev: Integer): Boolean;
Var
	XTotPedDev: Real;
Begin
	Try
       XTotPedDev:=0;
       If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCod_PedDev), '')=False
       Then Begin
           Mensagem('Atenção', 'O Sistema não encontrou o pedido especificado. Reinicie o sistema e tente novamente, se o problema persistir entre em contato com a equipe de suporte'  , '', 1, 1, False, 'a');
           Exit;//Caso não encontrar cancelar
       End;
		If FiltraTabela(DMServ.TFiscOrd , 'DOCFISORD', 'COD_ORDEM', IntToStr(XCod_PedDev), '')=False
       Then Begin
			Mensagem('Atenção', 'O Sistema não encontrou o documento fiscal especificado. Reinicie o sistema e tente novamente, se o problema persistir entre em contato com a equipe de suporte'  , '', 1, 1, False, 'a');
   		Exit;//Caso não encontrar cancelar
       End;

   	If DMServ.TOrd.FieldByName('STATUS').AsString<>'FECHADO'
       Then Begin
			Mensagem('ATENÇÃO', 'Este pedido esta aberto ou já passou por um processo de devolução.'  , '', 1, 1, False, 'A');
           Exit;
       End;
       //ABRE NOVO PEDIDO DE COMPRA PARA SUPORTAR A DEVOLUÇÃO
       XCod_PedCompra:=InserReg(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP');
       DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('COMISSAO').AsCurrency := 0;
       DMServ.TOrd.Post;
       DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger:=XCod_PedCompra;
       DMENTRADA.TPedC.FieldByName('NUMPED').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime:=DATE();
       DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger:=DMMACS.TLoja.FieldByName('COD_FORDEV').AsInteger;
       DMENTRADA.TPedC.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
       DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency:=DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime:=Date();
       DMENTRADA.TPedC.FieldByName('COD_DEVOLUCAO').AsInteger:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
       DMENTRADA.TPedC.FieldByName('NUMDEV').AsString:=DMServ.TOrd.FieldByName('NUMERO').AsString;
       //filtra as formas de pagamento
       FiltraTabela(DMFINANC.TFormPag,'FORMPAG', 'DESCRICAO', 'À VISTA', '');
       DMENTRADA.TPedC.FieldByName('COD_FORMPAG').AsInteger:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       DMENTRADA.TPedC.FieldByName('SITUACAO').AsString:='ABERTO';
       DMENTRADA.TPedC.Post;
       FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
       DMMACS.TEmpresa.Edit;
       DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString)+1);
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
		DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsInteger:=XCod_PedDev;
		DMESTOQUE.TSlave.Open;
   	//INSERE COMANDOS PARA FILTRAR ITENS DEVOLVIDOS
 		DMESTOQUE.Alx.Close;
		DMESTOQUE.Alx.SQL.Clear;
		DMESTOQUE.Alx.SQL.Add('Select * ');
		DMESTOQUE.Alx.SQL.Add('From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.Alx.SQL.Add('Where itenspedc.cod_pedcompra = :CODPEDVENDA ');
		DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsInteger:=XCod_PedCompra;
		DMESTOQUE.Alx.Open;

   	DMESTOQUE.TSlave.First;
   	While Not DMESTOQUE.TSlave.Eof Do
   	Begin
           //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
           FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
           FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
           FiltraTabela(DMServ.TPOrd, 'itprodord', 'cod_itprodord', DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsString, '');
           DMServ.TPOrd.Edit;
           DMServ.TPOrd.FieldByName('OPERACAO').AsString:='DVL';
           DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency:=0;
           DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency:=0;
           DMServ.TPOrd.FieldByName('LUCMOE').AsCurrency:=0;
           DMServ.TPOrd.Post;

           //INSERE PRODUTO EM ITENS DE PEDIDO DE COMPRA
           XCodSlaveDev:=InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');
           DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger:=XCodSlaveDev;
           DMENTRADA.TItemPC.FieldByName('COD_DEVOLUCAO').AsInteger:=DMServ.TPOrd.FieldByName('cod_itprodord').AsInteger;
           DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency:=DMServ.TPOrd.FieldByName('ALIQICMS').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency:=DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency:=DMServ.TPOrd.FieldByName('VLRICMS').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('REDUCBASEICMS').AsCurrency:=DMServ.TPOrd.FieldByName('REDUCBASEICMS').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency:=DMServ.TPOrd.FieldByName('BASEICMSSUBS').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency:=DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency:=DMServ.TPOrd.FieldByName('ALIQIPI').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VLRIPI').AsCurrency:=DMServ.TPOrd.FieldByName('VLRIPI').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('FRETE').AsCurrency:=0;
           DMENTRADA.TItemPC.FieldByName('EMBPROD').AsCurrency:=0;
           DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger:=XCod_PedCompra;
           DMENTRADA.TItemPC.FieldByName('DATA').AsString:=DateToStr(Date());
           DMENTRADA.TItemPC.FieldByName('QTDEST').AsCurrency:=DMServ.TPOrd.FieldByName('QTD').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger:=DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsInteger;
           DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency:=DMServ.TPOrd.FieldByName('QTD').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency:=DMServ.TPOrd.FieldByName('DESCONTO').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency:=DMServ.TPOrd.FieldByName('vlrunit').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency:=DMServ.TPOrd.FieldByName('total').AsCurrency;
           XTotPedDev:=XTotPedDev+DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency;
           DMENTRADA.TItemPC.Post;
           //ATULIZA ESTOQUE
           DMESTOQUE.TEstoque.Edit;
           DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMServ.TPOrd.FieldByName('QTD').AsCurrency;
           DMESTOQUE.TEstoque.Post;
           DMESTOQUE.TransacEstoque.CommitRetaining;
           
           DMESTOQUE.TSlave.Next;
		End;
       DMENTRADA.TPedC.Edit;
       DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency:=XTotPedDev;
       DMENTRADA.TPedC.Post;
      	//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   	If FiltraTabela(DMSAIDA.TAlx, 'DOCFISORD', 'COD_DOCFIS', '', '(cod_ORDEM='+#39+IntToStr(XCod_PedDev)+#39+')')=True
   	Then Begin
       	//INSERE FISCAL EM PEDIDO DE COMPRA
	        XCOD_FISCAL:=InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC');
           FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_CFOPDEV').AsString, '');
       	DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsInteger:=XCod_PedCompra;
       	DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger:=XCOD_FISCAL;
       	DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsInteger:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       	DMENTRADA.TFiscPC.FieldByName('DTEMISSAO').AsDateTime:=DMSAIDA.TAlx.FieldByName('DTEMISSAO').AsDateTime;
       	DMENTRADA.TFiscPC.FieldByName('DTENTSAID').AsDateTime:=DMSAIDA.TAlx.FieldByName('DTENTSAID').AsDateTime;
       	DMENTRADA.TFiscPC.FieldByName('HORASAID').AsDateTime:=DMSAIDA.TAlx.FieldByName('HORASAID').AsDateTime;
       	DMENTRADA.TFiscPC.FieldByName('BASEICMS').AsCurrency:=DMSAIDA.TAlx.FieldByName('BASEICMS').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRICMS').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRICMS').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency:=DMSAIDA.TAlx.FieldByName('BASCALSUBS').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRICMSUBS').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRSEG').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRSEG').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRTOTIPI').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRTOTIPI').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLROUTRASDESP').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLROUTRASDESP').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRTOTPROD').AsCurrency:=XTotPedDev;
       	DMENTRADA.TFiscPC.FieldByName('VLRTOTDOCNF').AsCurrency:=XTotPedDev;
       	DMENTRADA.TFiscPC.FieldByName('VLRISENTOICMS').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRISENTOICMS').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('SERIE').AsString:='1';
       	DMENTRADA.TFiscPC.FieldByName('MODELONF').AsString:=DMMACS.TLoja.FieldByName('MODELONF').AsString;
       	DMENTRADA.TFiscPC.FieldByName('OBS').AsString:='Dev. NF: '+DMSAIDA.TAlx.FieldByName('numdocfis').AsString+' - '+DMSAIDA.TAlx.FieldByName('OBS').AsString;
       	DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString:=DMSAIDA.TAlx.FieldByName('FRETECOMP').AsString;
       	DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency:=DMSAIDA.TAlx.FieldByName('VLRFRETE').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsCurrency:=DMSAIDA.TAlx.FieldByName('COD_TRANSP').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('QUANTFRETE').AsCurrency:=DMSAIDA.TAlx.FieldByName('QUANTFRETE').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('ESPECIEFRETE').AsString:=DMSAIDA.TAlx.FieldByName('ESPECIEFRETE').AsString;
       	DMENTRADA.TFiscPC.FieldByName('MARCAFRETE').AsString:=DMSAIDA.TAlx.FieldByName('MARCAFRETE').AsString;
       	DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString:=DMSAIDA.TAlx.FieldByName('NUMCONHEC').AsString;
       	DMENTRADA.TFiscPC.FieldByName('PLACA').AsString:=DMSAIDA.TAlx.FieldByName('PLACA').AsString;
       	DMENTRADA.TFiscPC.FieldByName('UFPLACA').AsString:=DMSAIDA.TAlx.FieldByName('UFPLACA').AsString;
       	DMENTRADA.TFiscPC.FieldByName('PESOBRUTO').AsCurrency:=DMSAIDA.TAlx.FieldByName('PESOBRUTO').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('PESOLIQ').AsCurrency:=DMSAIDA.TAlx.FieldByName('PESOLIQ').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('FRETECONTA').AsString:=DMSAIDA.TAlx.FieldByName('FRETECONTA').AsString;
       	DMENTRADA.TFiscPC.Post;
       End;
{       If CancelaFinac(IntToStr(XCod_PedDev))=True Then
       	Result:=True
       Else
       	Result:=False;}
       Result:=True;
       MessageDlg('Ordem Devolvida como Ped. Compra Nº '+DMENTRADA.TPedC.FieldByName('NUMPED').AsString, mtWarning, [mbOK], 0);
   Except
       Result:=False;
   End;
End;

//DJ 27/11/2009: LIMPA CAMPOS DO CADASTRO RAPIDO (ctrl + N)
procedure TFOrdemMec.limpar(pessoa,equipamento:Boolean);
Begin
     If (pessoa)
     Then Begin
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
     End;

     If (equipamento)
     Then Begin
          edPlaca.Text := '';
          edModelo.Text := '';
          edNumFrota.Text := '';
          XCOD_EQUIPAMENTO := -1;
     End;

     XOK := False;

End;

// form activate
procedure TFOrdemMec.FormActivate(Sender: TObject);
begin
  inherited;
   XComp2Vias:=False;

   PConsulta.Visible := True;
   PConsulta.BringToFront;

   FMenu.XTIPOBOLTO:='';
   If DMMACS.TLoja.FieldByName('ORDENAORDEM').AsString<>'' Then
   	CBORDEM.Text:= DMMACS.TLoja.FieldByName('ORDENAORDEM').AsString;
  	//Desmarca as opções de remessa para garantia e devolução
   FMenu.XRemessaGarantia:=False;
   FMenu.XSimplesRemessa:=False;

   FMenu.XDevolucao:=False;
	FMenu.TIPOREL:='';//demarca para não ocorrer caso de reimpressão de nota por erro

   XTipoProc:=0; //0 = procura de produtos normal 1=procura pelo nome
	XCampo:='NUMERO';
   XView:=DMSERV.WOrdem;
   XTab:=False;
   XDescricao:=' a ordem ';
   XSQLVIEW:= 'VWORDEM';

   //SETA DBS
   DBGridConsulta.DataSource:=DMSERV.DWOrdem;

   //setar o focus em algum lugar ###################

   AtualizaGridConsulta('');

   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('ADM', '')
   Then begin
       RemoverTudo1.Enabled := True;
       RemoverTudo2.Enabled := True;
   end
   else begin
  		RemoverTudo1.Enabled := False;
       RemoverTudo2.Enabled := False;
   end;

   // BUSCA OS DADOS DA TABELA USUARIO PARA SELECIONAR O FUNCIONARIO VENDEDOR
   If FMenu.LCODUSUARIO.Caption='111522'
   Then Begin
       XCod_usuario:=-1;
   End
   Else Begin
       FiltraTabela(DMMACS.TUsuario,'USUARIO','CODUSUARIO',FMenu.LCODUSUARIO.Caption,'');

       FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMMACS.TUsuario.FieldByname('COD_FUNCIONARIO').AsString,'');
       Try
           xcod_usuario:=DMPESSOA.TFuncionario.FieldByname('cod_func').AsInteger;
       Except
           xcod_usuario:=-1;
       End;
	End;
   If FileExists('C:\MZR\Arquivos\LayoutGrid\Ordemmec.lgm')
   Then
       DBGridConsulta.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\Ordemmec.lgm');

    //VERIFICA INFORMAÇÕES NECESSÁRIAS PARA CONTROLES DE CÁLCULOS FISCAIS
   If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '') = True
   Then Begin
       //Localiza o caixa em questão para verificar se suas configurações são de Nota Fiscal
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='NF') and (DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString <> '')
       Then
           //BitBtn17.Visible := True
       else
           //BitBtn17.Visible := False;
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='NFe')
       Then Begin
           DBGridConsulta.Hint:='Pressione Ctrl+s para salvar o lay-out do grid e Ctrl+c para copiar a chave de acesso da NFe';
           DBGridConsulta.ShowHint:=True;
       End
       Else Begin
           DBGridConsulta.Hint:='Pressione Ctrl+s para salvar o lay-ou do grid';
           DBGridConsulta.ShowHint:=True;
       End;
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='NFe') Then
           LEmissor.Caption:='Emissão: Nota Fiscal Eletrônica';
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='NF') Then
           LEmissor.Caption:='Emissão: Nota Fiscal';
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='ECF') Then
           LEmissor.Caption:='Emissão: Cupom Fiscal';
   END;

   //Jônatas 26/06/2013 - controle para mostrar Edits para placas adicionais para mecânica
   PanelPlacaAdicional.Visible:=false;
   If DMMACS.TLoja.FieldByName('USAPLACASADICIONAIS').AsString='1'
   then begin
        //mais coisa vai aqui ainda
        PanelPlacaAdicional.Visible:=true;
        PanelPlacaAdicional.BringToFront;
        EdPlaca2.Height:=24;
        EdPlaca3.Height:=24;
   end;

end;

procedure TFOrdemMec.AtualizaGridConsulta(FILTRO :STRING);
begin

   if FILTRO = 'ORIGEM'
   THEN BEGIN
       CBFILTRO.Text := 'ABERTAS';
       CBORDEM.Text := 'BOX';
   END;

   DMServ.WOrdem.Close;
   DMServ.WOrdem.SQL.Clear;
   DMServ.WOrdem.SQL.Add('select * from VWORDEM ');
   //Jônatas 27/06/2013 - se o campo de placas adicionais for verdadeiro
   //inclui na filtragem as placas adicionais
   If DMMACS.TLoja.FieldByName('USAPLACASADICIONAIS').AsString='1'
   then begin
        DMServ.WOrdem.SQL.Add('LEFT JOIN ordem ON ordem.cod_ordem = vwordem.cod_ordem');
   end;
   DMServ.WOrdem.SQL.Add(' WHERE (vwordem.COD_LOJA='+FMenu.LCODLOJA.Caption+')');

   DMServ.WOrdem.SQL.Add(' AND vwordem.COD_ORDEM IS NOT NULL ');

   //FILTRO PARA EDIT'S
   if FILTRO = 'NUMERO' THEN
       DMServ.WOrdem.SQL.Add(' AND vwordem.numero = '+#39+TRIM(EDNum.Text)+#39)
   ELSE
   IF FILTRO = 'BOX' THEN
       DMServ.WOrdem.SQL.Add(' AND (upper (VWordem.box)) like (upper ('+#39+TRIM(EDBox.Text)+'%'+#39+'))')
   ELSE
   IF FILTRO = 'PLACA'
   THEN begin
        //Jônatas 28/06/2013 - Inclui as placas adicionais para fazer a filtragem
       If DMMACS.TLoja.FieldByName('USAPLACASADICIONAIS').AsString='1' then
            DMServ.WOrdem.SQL.Add(' AND ((upper (vwordem.placa)) like (upper ('+#39+MEPlaca.Text+'%'+#39+')) OR (upper (ordem.placa2)) like (upper ('+#39+MEPlaca.Text+'%'+#39+')) OR (upper (ordem.placa3)) like (upper ('+#39+MEPlaca.Text+'%'+#39+')))')
       else
           DMServ.WOrdem.SQL.Add(' AND (upper (vwordem.placa)) like (upper ('+#39+MEPlaca.Text+'%'+#39+'))');

   end
   ELSE
   IF FILTRO = 'CLIENTE' THEN
       DMServ.WOrdem.SQL.Add(' AND(upper (VWordem.cliente)) like (upper ('+#39+TRIM(EDCliente1.Text)+'%'+#39+'))')
   ELSE
   IF FILTRO = 'NUMFISCAL' THEN
       DMServ.WOrdem.SQL.Add(' AND vwordem.numfiscal = '+#39+TRIM(EdFiscal.Text)+#39)
   ELSE
       FILTRO := '';



   IF FILTRO = '' THEN BEGIN
       //FILTRO COMBO
       If CBFILTRO.Text='ABERTAS' Then
           DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS='+#39+'ABERTO'+#39+')')
       else
       If CBFILTRO.Text='FECHADAS' Then
           DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS='+#39+'FECHADO'+#39+')')
       else
       If CBFILTRO.Text='TERMINADAS' Then
           DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS='+#39+'TERMINADO'+#39+')')
       Else
       If CBFILTRO.Text='NFE2' Then
           DMServ.WOrdem.SQL.Add(' AND (vwordem.FISCO='+#39+'NFE2'+#39+')')
       Else
       If CBFILTRO.Text='CANCELADO' Then
           DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS='+#39+'CANCELADO'+#39+')');

   END;

   //ORDENAÇÃO COMBO
	If CBORDEM.Text='NUMERO'Then //ordenar pelo número
   	DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.NUMERO, vwordem.STATUS DESC, vwordem.BOX, vwordem.DTABERT DESC')
	else
   If CBORDEM.Text='CLIENTE'Then //ordenar pelo cliente
   	DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.CLIENTE, vwordem.STATUS DESC,vwordem.BOX,vwordem.DTABERT DESC')
	else
   If CBORDEM.Text='DATA'Then //ordenar pela data
   	DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.DTABERT DESC, vwordem.STATUS DESC, vwordem.BOX')
   else
   If CBORDEM.Text='PLACA'Then //ordenar pela placa
   	DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.placa, vwordem.DTABERT DESC, vwordem.STATUS DESC, vwordem.BOX')
   else
   If CBORDEM.Text = 'BOX' Then  //ordenar pelo box
       DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.BOX, vwordem.PLACA, vwordem.STATUS DESC, vwordem.STATUS, vwordem.DTABERT DESC');
   If CBORDEM.Text = 'FISCAL' Then  //ordenar pelo box
       DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.numfiscal, vwordem.PLACA, vwordem.STATUS DESC, vwordem.STATUS, vwordem.DTABERT DESC');


   DMServ.WOrdem.Open;

end;

// MUDA FILTRO OU ORDENAÇÃO
procedure TFOrdemMec.CBFILTROPropertiesChange(Sender: TObject);
begin
  inherited;
end;


//SETA CORES NA GRID DE CONSULTA
procedure TFOrdemMec.DBGridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   if (DMServ.WOrdem.FieldByName('STATUS').AsString='ABERTO') or (DMServ.WOrdem.FieldByName('FISCO').AsString='NFE2') then
   begin
   	if DMServ.WOrdem.FieldByName('GARANT').AsString='1'
   	then begin
           DBGridConsulta.Canvas.Font.Color := clBlue;
           DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   	End
       Else Begin
  			DBGridConsulta.Canvas.Font.Color := clRed;
			DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       End;
   end;
end;

//PRESS ENTER CAMPO NUMEOR LOCALIZAR
procedure TFOrdemMec.EDNumKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if key = #13 then BEGIN
       AtualizaGridConsulta('NUMERO');
       EDNum.SelectAll;
   END;

   if key = #27
   then begin
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
   if key = #13 then BEGIN
       AtualizaGridConsulta('BOX');
       EDBox.SelectAll;
   END;

   if key = #27
   then begin
      CBORDEM.Text := 'BOX';
      AtualizaGridConsulta('');
      EDBox.SelectAll;
   end;
end;
//PRESS ENTER CAMPO PLACA LOCALIZAR
procedure TFOrdemMec.MEPLACAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if not (key in ['a'..'z','A'..'Z', '0'..'9', #8, #13,#27])
   then
       Key := #0
   else begin    // ['A'..'Z','a'..'z'
       if  Length(MEPLACA.Text) < 4 then
           if not (key in ['a'..'z','A'..'Z', #8, #13,#27]) then
               Key := #0;

       if ( Length(MEPLACA.Text) > 3 ) then
           if not (key in ['0'..'9', #8, #13,#27]) then
               Key := #0
   end;

   if key = #13 then BEGIN
       AtualizaGridConsulta('PLACA');
       PesquisaEquipCliente(MEPLACA.Text);
       MEPLACA.SelectAll;
   END;

  if key = #27
   then begin
      CBORDEM.Text := 'PLACA';
      AtualizaGridConsulta('');
      //CBORDEM.Text := 'BOX';
      MEPLACA.SelectAll;
   end;


end;
//PRESS ENTER CAMPO CLIENTE LOCALIZAR
procedure TFOrdemMec.EDCliente1KeyPress(Sender: TObject; var Key: Char);
var
   pos:integer;
   tmp:string;
begin
  inherited;
     // If (shift=[ssCtrl]) and (key = 74) then
     //   Exit;
        
      if XContPes = 'DOWN' then begin
           pos := EDCliente1.SelStart;
           EDCliente1.Text := ProxPesq;
           EDCliente1.SelStart := pos-1;
           //EDCliente1.SelLength := 30;
           //EDCliente1.SelText := Copy(EDCliente1.Text, EDCliente1.SelStart+ 1, Length(EDCliente1.Text));
      end
      else
      if XContPes = 'UP' then begin
           pos := EDCliente1.SelStart;
           EDCliente1.Text := AntPesq;
           EDCliente1.SelStart := pos+1;
           //EDCliente1.SelLength := 30;
           //teste:=Copy(EDCliente1.Text, pos + 1, Length(EDCliente1.Text));
           //EDCliente1.SelText := teste;
      end
      else begin
           //PesquisaGrid(Copy(EDCliente1.Text,1, EDCliente1.SelStart));
           //tmp := RetNomeGrid;
           //if tmp <> '' then
               //EDCliente1.Text := EDCliente1.Text+Copy(tmp,Length(EDCliente1.Text)+1,Length(tmp));
      end;
   if key = #27
   then begin
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

procedure TFOrdemMec.EDBoxEnter(Sender: TObject);
begin
  inherited;
   if EDBox.Text = 'BOX' then
        EDBox.Text := ''
   else
    EDBox.SelectAll;

   EDBox.Font.Color := clBlack;
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
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TEmpresa, 'empresa', '','','');
	If DMMACS.TEmpresa.FieldByName('EMEXPORTA').AsString='1'
   Then Begin
		MessageDlg('Por Favor, verifique o processo de exportação de ordens em andamento.', mtWarning, [mbOK], 0);
       Exit;
   End;
  inherited;
     //EFETUA CONTROLE DE ACESSO
   If ControlAccess('ABRIRORD', 'M')=False Then
  		Exit;

   CBVENDABALCAO.Checked:=False;
   
   // INICIALIZANDO VARIAVEL
   XCOD_ORDEM:=-1;
   XCOD_CLIENTE:=-1;
   XCOD_EQUIPAMENTO:=-1;
   XCOD_FUNCIONARIO:=-1;
   XCOD_ITPROD:=-1;
   XCOD_ITSERV:=-1;
   XCOD_VENDEDOR:=-1;
   XCOD_FORMPAG:=-1;

   // GERA NUMERO DA ORDEM
   XNumOrdem := IntToStr(RetornaNumPed);
	DBNumOrd.Text := XNumOrdem;

   Try
       DMServ.TOrd.Insert;
       XCOD_ORDEM:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
       XCODPKMESTRE:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
       DMServ.TOrd.FieldByName('NUMERO').AsString:= XNumOrdem;
       DMServ.TOrd.FieldByName('DTABERT').AsDateTime:=Date();
       DMServ.TOrd.FieldByName('HRABERT').AsDateTime:=Time();
       DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
       DMServ.TOrd.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMServ.TOrd.FieldByName('LOCALAT').AsString:='';
       DMServ.TOrd.FieldByName('EDIT').AsString := '1';
       DMServ.TOrd.Post;
       DMServ.IBT.CommitRetaining;

   Except
       MessageDlg('A Odem não foi inserida no banco', mtWarning, [mbOK], 0);
       PConsulta.Visible:=False;
       PCadastro.Visible:=True;
       PCadastro.BringToFront;
   End;

   // - 19/03/2009: verificar se OS foi inserida
   If FiltraTabela(DMServ.TOrd,  'ORDEM', 'COD_ORDEM', IntToStr(XCODPKMESTRE), '') = False
   Then Begin
        Mensagem('Mzr Sistemas - INFORMAÇÃO', 'A Ordem inserida foi perdida.'+#13+'Para evitar outras falhas Reinicie o sistema.', '', 1, 1, false, 'i');
        exit
   End;


   //Seleciona somente os registros corretos
   FiltraSlave;
   //Chama função para calcular descontos
   EfetuaDesconto('GERAL', 'MOEDA');

       //VERIFICA RESTRICOES DE USUARIO
       If ControlAccess('USAGARANT', '')=False
       Then Begin
           CBGarantia.Checked:=False;
           CBGarantia.Enabled:=False;
       End
       Else Begin
           CBGarantia.Enabled:=True;
       End;
       If DMMACS.TLoja.FieldByName('USAGARANTIA').AsString='1'
       Then Begin
           CBGarantia.Visible:=True;
           CBGarantia.BringToFront;
       End
       Else Begin
           CBGarantia.Visible:=False;
       End;

       XEstado:='INSERT';//Define como estado de inserção

       // limpa todos os campos
       LimpaCampos;
       LimpaCamposProd;
       LimpaCamposServ;


   //cancela o botão "X" de fechar para que o usuário possa apenas gravar ou cancelar
   BtnFecha.Visible := False;

   //limpar todos os campos de cadastro
   LimpaCampos;
   LimpaCamposProd;
   LimpaCamposServ;

   //MOSTRAR PAINEL DE CADASTRO
   PCadastro.Visible := True;
   PCadastro.BringToFront;
   PageControl1.ActivePageIndex := 0;
	//bUSCA FORMA DE PAGAMENTO A VISTA COMO PADRÃO
   If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '')
   Then Begin
       XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('cod_formpag').AsInteger;
       FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('cod_interno').AsString;
   End;
   FrmCliente.EDCodigo.SetFocus;
   FrmCliente.Repaint;
   FrmEquipe.Repaint;
   FBEquipPlaca.Repaint;
   FrmFormPag1.Repaint;
   
end;

// limpa CAMPOS PRINCIPAIS
Procedure TFOrdemMec.LimpaCampos;
begin
   FrmCliente.EDCodigo.Text:='';
   FrmCliente.EdDescricao.Text:='';
   FrmEquipe.EDCodigo.Text:='';
   FrmEquipe.EdDescricao.Text:='';
   FrmFormPag1.EDCodigo.Text:='';
   FrmFormPag1.EdDescricao.Text:='';
   EdDescTProd.Text := '0,00';
   EdtotalProd.Text := '0,00';
   FBEquipPlaca.EDCodigo.Text := '';
   FBEquipPlaca.EdDescricao.Text := '';
   DBBox.Text  := '0';
   EdValorOrd.Text := '0,00';
   EdContatoCliente.Text := '';
   CBGarantia.Checked := False;
   EdObsFinanceira.Text:='';

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
   LEstoque.Caption:='';
   LSaldoEstoque.Caption:='';
   LProduto.Caption:='';
   LLocal.Caption := '';
   LCst.Caption:='';

   //limpa edits do painel de preços
   EdVlrAtacadoPrazo.text:='0,00';
   EdVlrAtacadoVista.text:='0,00';
   EdVlrVarejoPrazo.text:='0,00';
   EdVlrVarejoVista.text:='0,00';
end;

procedure TFOrdemMec.LimpaCamposServ;
begin
   ETotalServItem.Text := '0,00';
   EValorServ.Text := '0,00';
   EQtdServ.Text := '0,00';
   edCustoTerceiros.Text := '0,00';
   edCustoTerceiros.Enabled:=False; 
   EDesricaoServico.Clear;

   FrmEquipe.EDCodigo.Clear;
   FrmEquipe.EdDescricao.Clear;
end;

//press key codigo do cliente
procedure TFOrdemMec.FrmClienteEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = VK_return
   Then Begin
       If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmCliente.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FrmCliente.EDCodigo.Hint := DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FrmCliente.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '')=True Then
               EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
           Else
               EdObsFinanceira.Text:='';

           //SelectFormPag_Vendedor;       #################################
           FBEquipPlaca.EDCodigo.SetFocus;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XCOD_CLIENTE:=-1;
           FrmCliente.EdDescricao.Text:='';
           FrmCliente.EDCodigo.Hint := '';
           FrmCliente.EDCodigo.Text:='';
           EdObsFinanceira.Text:='';           
       End;
   End;
    // - 27/04/2009: pressionar Ctrl+N chama painel de cadastro cliente/placa

   If (shift=[ssCtrl]) and (key = 78)
   Then Begin
        limpar(true, true);
        PCadastroRapido.Visible := True;
        PCadastroRapido.BringToFront;
        //Localiza Cidade
	     If FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString,'' ) = True
        Then Begin
            XCOD_CIDADE:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
            FrmCidade.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
            FrmCidade.EDCodigo.Text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
        End
        Else Begin
			 XCOD_CIDADE:=-1;        
            FrmCidade.EdDescricao.Text:='';
            FrmCidade.EDCodigo.Text:='';
        End;
        CheckBox1.Checked:=True;
        edNome.SetFocus;
   End;

   FrmCliente.Repaint;
end;

// press botao cliente
procedure TFOrdemMec.FrmClienteBTNOPENClick(Sender: TObject);
begin
 // inherited;
  FrmCliente.BTNOPENClick(Sender);
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
   	If DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString='1' Then
       	MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS', mtWarning, [mbOK], 0);
       If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',  DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '')=True
       Then Begin
           If (DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency>=XVLRTOTAL) And (DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency<>0) Then
               Mensagem('INFORMAÇÃO', 'Este cliente possui créditos!'+#13+'Valor de crédito: '+ FormatFloat('0.00',  DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency), '', 1, 1, false, 'i');
       End;
       //VEERIFICA SE DIAS DE INTERVALO MAIOR QUE ZERO, SE IGUAL OU MENOR A ZERO O SISTEMA NÃO DEVE FAZER CONTROLE
       If DMMACS.TLoja.FieldByName('DIASBLOQCLI').AsInteger<>0
       Then Begin
           If VerificBloqCli(IntToStr(DMPESSOA.WCliente.FieldByName('COD_cliente').AsInteger))=True Then
               Mensagem('C R É D I T O   B L O Q U E A D O', 'Cliente possui Crédito Bloqueado. Por atrasos de '+DIASATRASO+'/'+IntToStr(StrToInt(DIASATRASO)-DMMACS.TLoja.FieldByNAme('DIASBLOQCLI').AsInteger)+' dias em suas contas!', '', 1, 1, false, 'i');
       End;
       XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmCliente.EDCodigo.Hint := DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
       DMPESSOA.TCliente.Close;
       DMPESSOA.TCliente.SQL.Clear;
       DMPESSOA.TCliente.SQL.Add(' Select * from cliente where cliente.cod_cliente=:Codigo ');
       DMPESSOA.TCliente.ParamByName('Codigo').AsInteger:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       DMPESSOA.TCliente.Open;
       If not DMPESSOA.TCliente.IsEmpty Then
           EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
       Else
           EdObsFinanceira.Text:='';

 	    SelecionaFormaPagamento;

       FBEquipPlaca.EDCodigo.SetFocus;

   End
   Else Begin
       if XCOD_CLIENTE=-1
       then begin
         //XCOD_CLIENTE:=-1;
         FrmCliente.EDCodigo.Text:='';
         FrmCliente.EDCodigo.Hint := '';
         FrmCliente.EdDescricao.Text:='';
         EdObsFinanceira.Text:='';         
       end;
   End;

   FrmCliente.Repaint;
   FrmEquipe.Repaint;
   FBEquipPlaca.Repaint;
   FrmFormPag1.Repaint;
end;

//pesquisa codigo equipamento
procedure TFOrdemMec.PesquisaCodigoEquipamento(codigo:String; cliente:boolean);
var
   Tmp:Boolean;
begin
   // letras maiusculas
   codigo:= Trim(UpperCase(codigo));
   If codigo <> ''
   Then Begin
       DMESTOQUE.Alx.close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select * from equipamento');
       DMESTOQUE.Alx.SQL.Add('where upper(equipamento.placa) like upper ('+#39+codigo+#39+')  AND (EQUIPAMEnTO.ATIVO='+#39+'S'+#39+')');
       DMESTOQUE.Alx.Open;
       DMESTOQUE.Alx.first;
       if not DMESTOQUE.alx.IsEmpty
       then begin
           XCOD_EQUIPAMENTO:=DMESTOQUE.Alx.FieldByName('COD_EQUIPAMENTO').AsInteger;
           FBEquipPlaca.EdDescricao.Text:=DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;
           If DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> ''
           Then Begin
                lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
           End
           Else Begin
                lbNumFrota.Caption := '';
           End;
           if cliente
           then begin
               // busca o cliente q esta atrelado ao equipamento
               FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',DMESTOQUE.Alx.FieldByname('cod_cliente').AsString,'');
               If Not DMPESSOA.WCliente.IsEmpty
               Then Begin
                 If DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString='1' Then
                     MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS', mtWarning, [mbOK], 0);

                  XCOD_CLIENTE := DMPESSOA.WCliente.FieldByname('COD_CLIENTE').AsInteger;
                  FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByname('cod_interno').AsString;
                  FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByname('nome').AsString;
                  If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '')=True Then
                     EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
                  Else
                     EdObsFinanceira.Text:='';
               End
               Else Begin
                  XCOD_CLIENTE := -1;
                  FrmCliente.EdDescricao.Text := '';
                  FrmCliente.EDCodigo.Text := '';
                  EdObsFinanceira.Text:='';
               End;
           end;
           FrmFormPag1.EDCodigo.SetFocus;
       end
       Else Begin
          XCOD_EQUIPAMENTO := -1;
          FBEquipPlaca.EdDescricao.Text := '';
          lbNumFrota.Caption := '';
          FBEquipPlaca.EDCodigo.SelectAll;
       End;
   FrmCliente.Repaint;
   FrmEquipe.Repaint;
   FBEquipPlaca.Repaint;
   FrmFormPag1.Repaint;
   lbNumFrota.Repaint;
   End;
end;
// exit codigo equipamento
procedure TFOrdemMec.FBEquipPlacaEDCodigoExit(Sender: TObject);
begin
  inherited;
  If FBEquipPlaca.EDCodigo.Text = ''
  then begin
       XCOD_EQUIPAMENTO:=-1;
       FBEquipPlaca.EDCodigo.Text:='';
       FBEquipPlaca.EdDescricao.Text:='';
  end;

end;

// key down codigo equipamento
procedure TFOrdemMec.FBEquipPlacaEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (FBEquipPlaca.EDCodigo.SelLength > 0) And NOT (KEY = 8) and not (KEY = 13) then
   begin
       FBEquipPlaca.EDCodigo.Text := '';
   end;

   if (Length(FBEquipPlaca.EDCodigo.Text)= 3) AND NOT (KEY = 8) then BEGIN
       FBEquipPlaca.EDCodigo.Text := FBEquipPlaca.EDCodigo.Text+'-';
       FBEquipPlaca.EDCodigo.SelStart := 4;
   END;
   if key = 13
   then begin
       If FBEquipPlaca.EDCodigo.Text <> '' then
           PesquisaCodigoEquipamento(FBEquipPlaca.EDCodigo.Text, true);
   end;
end;

// click botao equipamento
procedure TFOrdemMec.FBEquipPlacaBTNOPENClick(Sender: TObject);
begin
  inherited;
   FBEquipPlaca.BTNOPENClick(Sender);
   //FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', '', ' ORDER BY EQUIPAMENTO.DESCRICAO');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected'
   Then Begin
       XCOD_EQUIPAMENTO:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
 		FBEquipPlaca.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
       FBEquipPlaca.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
       If DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> ''
       Then Begin
            lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
       End
       Else Begin
            lbNumFrota.Caption := '';
       End;
      // FrmFormPag1.EDCodigo.SetFocus;

   End
   Else Begin
       if XCOD_EQUIPAMENTO=-1
       then begin
         //XCOD_EQUIPAMENTO:=-1;
         FBEquipPlaca.EDCodigo.Text:='';
         FBEquipPlaca.EdDescricao.Text:='';
         lbNumFrota.Caption := '';
         FBEquipPlaca.EDCodigo.SetFocus;
       end;
   End;

   FBEquipPlacaEDCodigoExit(Sender);

   FrmCliente.Repaint;
   FrmEquipe.Repaint;
   FBEquipPlaca.Repaint;
   FrmFormPag1.Repaint;
   lbNumFrota.Repaint;
end;

//pesquisa pelo codigo da forma de pagamento
Procedure TFOrdemMec.PesquisaCodigoPagamento(codigo:String);
begin
   // letras maiusculas
   codigo:= Trim(UpperCase(codigo));

   If codigo <> ''
   Then Begin
     //seleciona a forma de pagamento
       If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', codigo, '')=true
       Then Begin
          XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
          FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
          FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
          //DBBox.SetFocus;
       End
       Else Begin
          XCOD_FORMPAG:=-1;
          FrmFormPag1.EDCodigo.Text:='';
          FrmFormPag1.EdDescricao.Text:='';
       End;
       FrmCliente.Repaint;
       FrmEquipe.Repaint;
       FBEquipPlaca.Repaint;
       FrmFormPag1.Repaint;
   end;
end;
// key press codigo equipamento
procedure TFOrdemMec.FrmFormPag1EDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_RETURN
     Then Begin
     if FrmFormPag1.EDCodigo.Text<>''
     Then Begin
         PesquisaCodigoPagamento(FrmFormPag1.EDCodigo.Text);
     End;
  end;
end;
//click botao forma de pagamento
procedure TFOrdemMec.FrmFormPag1BTNOPENClick(Sender: TObject);
Var
 XBoxAux: String;
begin
  inherited;
  FrmFormPag1.BTNOPENClick(Sender);
  If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCOD_FORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormPag1.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormPag1.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   	FrmFormPag1.Repaint;
       XBoxAux:=DBBox.Text;
       DBBox.SetFocus;
       DBBox.Text:=XBoxAux;
   End
   Else Begin
      if XCOD_FORMPAG=-1
      then begin
        //XCOD_FORMPAG:=-1;
        FrmFormPag1.EDCodigo.Text:='';
        FrmFormPag1.EdDescricao.Text:='';
      end;
   End;
end; 
// exit codigo equipamento
procedure TFOrdemMec.FrmFormPag1EDCodigoExit(Sender: TObject);
begin
  inherited;
   if FrmFormPag1.EDCodigo.Text<>''
     Then Begin
         PesquisaCodigoPagamento(FrmFormPag1.EDCodigo.Text);
     End
     else begin
         XCOD_FORMPAG:=-1;
           FrmFormPag1.EDCodigo.Text:='';
           FrmFormPag1.EdDescricao.Text:='';
     end;
end;

//seleciona forma de pagamento e vendedor de acordo com o cliente
Procedure TFOrdemMec.SelecionaFormaPagamento;
Begin
   //Insere forma de pagamento para o cliente
   If DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsInteger<>-1
   Then Begin
       If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsString, '')=True
       Then Begin
           XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByname('COD_FORMPAG').AsInteger;
           FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByname('COD_INTERNO').AsString;
           FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByname('DESCRICAO').AsString;
       End
       Else Begin
           XCOD_FORMPAG:=-1;
           FrmFormPag1.EDCodigo.Text:='';
           FrmFormPag1.EdDescricao.Text:='';
       End;
   End
   Else Begin
       XCOD_FORMPAG:=-1;
       FrmFormPag1.EDCodigo.Text:='';
       FrmFormPag1.EdDescricao.Text:='';
   End;
End;

//press key codigo equipamento
procedure TFOrdemMec.FBEquipPlacaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   FBEquipPlaca.EDCodigoKeyPress(Sender, Key);

   if not (key in ['a'..'z','A'..'Z', '0'..'9', #8, #13])
   then
       Key := #0
   else begin    // ['A'..'Z','a'..'z'
       if  Length(FBEquipPlaca.EDCodigo.Text) < 4 then
           if not (key in ['a'..'z','A'..'Z', #8, #13]) then
               Key := #0;
       if ( Length(FBEquipPlaca.EDCodigo.Text) > 3 ) then
           if not (key in ['0'..'9', #8, #13]) then
               Key := #0
   end;



   FBEquipPlaca.Repaint;

end;
//click limpar forma de pagamento
procedure TFOrdemMec.FrmFormPag1BTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmFormPag1.BTNMINUSClick(Sender);
   XCOD_FORMPAG:=-1;
   FrmFormPag1.EDCodigo.Text:='';
   FrmFormPag1.EdDescricao.Text:='';
   FrmFormPag1.Repaint;
end; 

//click botao produto
procedure TFOrdemMec.BtnProcProdClick(Sender: TObject);
var
  aux:String;
begin
  inherited;
  aux := FMenu.TIPOAUX;
  //set no fmenu soh pro focus ficar na descrição
  FMenu.TIPOAUX:='PEDVENDA';
  //abre formulario de produto para seleção
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
	Then Begin
   	//Depois de selecionado escreve nas labels o produto
       EscreveLabelsPROD;
       EDCodFab.Text := '';
       EDQuantidade.Text := '1,00';
       EDQuantidadeExit(Sender);
       EDQuantidade.SetFocus;
       //Panel4.Repaint;
   End
   Else Begin
       LimpaCamposProd;
       LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
   End;
   FMenu.TIPOAUX := aux;
end;

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFOrdemMec.EscreveLabelsPROD;
Begin
	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;

   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;

   //Filtra tabela de CST
	If FiltraTabela(DMEstoque.TCST, 'CST', 'COD_CST', DMEstoque.TSubProd.FieldByName('COD_CST').AsString, '')=False Then
   	Exit;


   // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   XCOD_ESTOQUE := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;

   // nao está selecionando apenas valores á prazo
   If DMMACS.TLoja.FieldByName('tipovenda').AsString = '0'
   Then Begin
       If (EDQuantidade.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
       Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
           If FrmFormPag1.EdDescricao.Text = 'À VISTA'
           Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
               EDValUnit.Text := FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency);
           End
           Else Begin
               EDValUnit.Text := FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);


           End;
       End
       Else Begin
           If FrmFormPag1.EdDescricao.Text = 'À VISTA'
           Then Begin
               EDValUnit.Text := FormatCurr('0.00',DMEstoque.WSimilar.FieldByName('VENDVARV').AsCurrency);
           End
           Else Begin
               EDValUnit.Text := FormatCurr('0.00',DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency);
               
           End;
       End;
   End 
   // forçando venda a prazo
  Else Begin
       If (EDQuantidade.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
       Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
           EDValUnit.Text := FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
       End
       Else Begin
           EDValUnit.Text := FormatCurr('0.00',DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency);
       End;
   End;

	//Passa os valores do produto selecionado para as labels
   LProduto.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
   If  DMEstoque.TSubProd.FieldByName('Marca').asstring<>'' Then
       LProduto.Caption:=LProduto.Caption+'     Marca: '+dMEstoque.TSubProd.FieldByName('Marca').asstring;
	If DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring<>'' Then
   	LLocal.Caption:='Estante: '+DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring;
   LEstoque.Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency);
   LSaldoEstoque.Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency);
   If DMESTOQUE.TCST.FieldByName('VENDA').AsString='1' Then
   	LCst.Caption:='C.S.T.: '+DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString+'/Venda'
   Else
   	LCst.Caption:='C.S.T.: '+DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString+'/Não Venda';

   //PASSA VALORES PARA O PAINEL DE CONSULTA DE PREÇOS
   EdVlrAtacadoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
   EdVlrAtacadoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
   EdVlrVarejoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
   EdVlrVarejoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
End;

//opções de pesquisa para o produto
procedure TFOrdemMec.TipoPesquisaProduto(tipo:String);
begin
   CdigodeBarra1.Checked := False;
   ControleInterno1.Checked := False;
   CdigoFabricante1.Checked := False;
   Descrio1.Checked := False;

   if tipo = 'BARRA'
   THEN BEGIN
       CdigodeBarra1.Checked := True;
       LPesquisa.Caption := 'Código de Barra:'; 
       XPESPROD := 1;
   END
   ELSE
   IF TIPO = 'FABRICANTE'
   THEN BEGIN
       CdigoFabricante1.Checked := True;
       LPesquisa.Caption := 'Código do Fabricante:';
       XPESPROD := 2;
   END
   ELSE
   IF TIPO = 'DESCRICAO'
   THEN BEGIN
       Descrio1.Checked := True;
       LPesquisa.Caption := 'Descrição do Produto:';
       XPESPROD := 3;
   END
   ELSE BEGIN
       ControleInterno1.Checked := True;
       LPesquisa.Caption := 'Controle Interno:';
       XPESPROD := 0;
   END;
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
procedure TFOrdemMec.EDCodFabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   str : String;
begin
  inherited;
  If DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '0'
  Then Begin
       // ALEX - 21/05/2009: pressionar Ctrl+P chama painel de busca de produtos pelo nome
       If (shift=[ssCtrl]) and (key = 78)
       Then Begin
           If XTipoProc=0
           Then Begin
               XTipoProc:=1;
               PListaProdutos.Visible:=true;
               PListaProdutos.BringToFront;
           End
           Else Begin
               XTipoProc:=0;
               PListaProdutos.Visible:=False;
           End;
       End;
  // End;

   If XTipoProc=1
   Then Begin
       If Key=Vk_Down
       Then Begin
           DMESTOQUE.WSimilar.Next;
       End;
       If Key=Vk_UP
       Then Begin
           DMESTOQUE.WSimilar.Prior;
       End;
   End;

   If Key=VK_Return
   Then Begin
       If XTipoProc=0
       Then Begin
           //TIPO DE BUSCA
           if XPESPROD = 1 then
               str := 'CODBARRA'
           ELSE
           if XPESPROD = 2 then
               str := 'CODFABRICANTE'
           ELSE
           if XPESPROD = 3 then
               str := 'DESCRICAO'
           ELSE
               str := 'CONTRINT';


           //Paulo 12/07/2011: Busca o produto pelo código conforme determinado na config loja
           if DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString ='CI' then
           begin
               If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(EDCodFab.Text),'')=True
               Then Begin
                   EscreveLabelsPROD;
                   EDCodFab.Text := '';
                   EDQuantidade.Text := '1,00';
                   
                  // EDQuantidade.SetFocus;
               End
               Else Begin
                   LimpaCamposProd;
                   LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
               end;
           end;
           if DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString ='CF' then
           begin
               If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(EDCodFab.Text),'')=True
               Then Begin
                   EscreveLabelsPROD;
                   EDCodFab.Text := '';
                   EDQuantidade.Text := '1,00';
                  // EDQuantidade.SetFocus;
               End
               Else Begin
                   LimpaCamposProd;
                   LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
               end;
           end;
           if DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString ='CB' then
           begin
              If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(EDCodFab.Text),'')=True
              Then Begin
                   EscreveLabelsPROD;
                   EDCodFab.Text := '';
                   EDQuantidade.Text := '1,00';
                  // EDQuantidade.SetFocus;
              End
              Else Begin
                   LimpaCamposProd;
                   LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
              end;
           End;

           //Paulo 12/07/2011: Se não existe config na loja
           if(DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'NC')then
           begin
               If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(EDCodFab.Text),'')=True
               Then Begin
                   EscreveLabelsPROD;
                   EDCodFab.Text := '';
                   EDQuantidade.Text := '1,00';
                  // EDQuantidade.SetFocus;
               End
               Else Begin
                   If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(EDCodFab.Text),'')=True
                   Then Begin
                       EscreveLabelsPROD;
                       EDCodFab.Text := '';
                       EDQuantidade.Text := '1,00';
                      // EDQuantidade.SetFocus;
                   End
                   Else Begin
                       If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(EDCodFab.Text),'')=True
                       Then Begin
                           EscreveLabelsPROD;
                           EDCodFab.Text := '';
                           EDQuantidade.Text := '1,00';
                        //   EDQuantidade.SetFocus;
                       End
                       Else Begin
                            If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'DESCRICAO', UpperCase(EDCodFab.Text),'')=True
                             Then Begin
                                 EscreveLabelsPROD;
                                 EDCodFab.Text := '';
                                 EDQuantidade.Text := '1,00';
                              //   EDQuantidade.SetFocus;
                             End
                             Else begin
                                 LimpaCamposProd;
                                 LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
                             end;
                       end;
                   End;
               End;
           end;
       End
       Else Begin
           str:=EDCodFab.Text;
			If str[1]='.'
           Then begin
           	EDCodFab.Text:=TiraCaracterEmPosicao(str,1);
           	FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CODFABRICANTE) like upper('+#39+EDCodFab.Text+'%'+#39+'))  AND (VWSIMILAR.ATIVO='+#39+'S'+#39+') ORDER BY DESCRICAO');
           End
           Else Begin
           	FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(DESCRICAO) like upper('+#39+EDCodFab.Text+'%'+#39+'))  AND (VWSIMILAR.ATIVO='+#39+'S'+#39+') ORDER BY DESCRICAO');
           End;
       End;
   End;
  end;
end;

procedure TFOrdemMec.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If PConsulta.Visible=True
   Then Begin
		if (Key = VK_Down) Then
           XView.Next;
		if (Key = VK_Up) Then
           XView.Prior;
   End;
   //CONTROLE PARA PAINEL DE PRECOS
   //pressionando F1 busca os valores de venda do produto que está selecionado
   If Key=Vk_F1
   Then Begin
       PPrecos.Visible:=True;
       PPrecos.BringToFront;
       PPrecos.SetFocus;
       //EdVlrVarejoVista.SetFocus;
   End;
   //pressionando esc, fecha o painel de consulta de preços do produto
   If Key=Vk_Escape
   Then Begin
   	If PPrecos.Visible=True
       Then Begin
	       PPrecos.Visible:=False;
       End;
       IF PInfoCliente.Visible = True   // se estiver aparecendo info de cliente limpa
       THEN BEGIN
            LimpaInfoCliente(Self);
       END;
       If PListaProdutos.Visible=True Then
           PListaProdutos.Visible:=False;
   End;

   //botão GRAVAR
    If Key=vk_f5 Then
        if PCadastro.Visible then
    	    BtnGravar.Click;

    //botão CANCELAR
    If Key=vk_f7 Then
        if PCadastro.Visible then
    	    BtnCancelar.Click;

   // se estiver com painel cadastro acionado nao deixar fazer as ações abaixo
   //if PCadastro.Visible = true then
      //Exit;

   // CTRL + D -> eh o comando para desbloquear a ordem de servico caso tenha ocorrido algum problema
   // qdo estava sendo consultada e caiu energia, ou foi pressionado F4 (por exemplo) e nao passou pelo
   // botão GRAVAR ou CANCELAR que liberar a ordem
   If (shift=[ssCtrl]) and (key = 68)
   Then Begin
       // faz o filtro na tabela para verificar se ela esta realmente bloqueada
       FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMServ.WOrdem.FieldByname('cod_ordem').AsString,'');

       // se ela nao estiver bloqueada eh exibida a msg e finalizada a operação
       If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
       Then Begin
           If Mensagem('   A T E N Ç Ã O   ','Deseja desbloquear a Ordem nº ' + DMServ.WOrdem.FieldByName('numero').AsString + ' ?','',2,3,false,'A')=2
           Then Begin

               // abre formulario de senha
               AbrirForm(TFSenha,FSenha,0);

               // caso tenha informado os dados do administrador correto, a OS eh liberada
               If XAlxResult = true
               Then Begin
                   // liberando a ordem para consulta
                   DMServ.TOrd.Edit;
                   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                   DMServ.TOrd.Post;
                   DMServ.TOrd.ApplyUpdates;
                   DMServ.IBT.CommitRetaining;
               End;
           End;
       End;
   End;
  //CTRL+J // MOSTRA INFORMAÇÕES CLIENTE
   If (shift=[ssCtrl]) and (key = 70)
   Then Begin
      PInfoCliente.Top := (PConsulta.Height - PInfoCliente.PPrincipal.Height) div 2;
      PInfoCliente.left := (PConsulta.Width - PInfoCliente.PPrincipal.Width)  div 2;
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
    If Key=vk_f4 Then
        if PConsulta.Visible then
    	    BtnNovo.Click;

    //botão apagar
    If Key=vk_f8 Then
        if PConsulta.Visible then
    	    BtnApagar.Click;

    //botão consultar
    If Key=vk_f6 Then
        if PConsulta.Visible then
    	    BtnConsultar.Click;




    //FOCUS EM LOCALIZAR
    If Key=vk_f2 Then
        if PConsulta.Visible
        then BEGIN
          AtualizaGridConsulta('ORIGEM');
    	    EDNum.SetFocus;
        END;

   

   inherited;
end;

// on exit campo qnt produto
procedure TFOrdemMec.EDQuantidadeExit(Sender: TObject);
begin
  inherited;
   If (EDQuantidade.ValueNumeric<>0) And (EDValUnit.ValueNumeric<>0)
   Then Begin
		CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
	    EDTotal.ValueNumeric:=AlxCalculo;
   End;
end;
//press key desconto produto
procedure TFOrdemMec.EDDescKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

   if key = #13
   then begin
       EDDesc.SetFocus;
       exit;
   end;
   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPROD', 'M')=False Then
  		Key:=#0;
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

   If (EDQuantidade.ValueNumeric<>0) And (EDValUnit.ValueNumeric<>0)
   Then Begin
		CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
	    EDTotal.ValueNumeric:=AlxCalculo;
   End;
end;
//exit valor unitario produto
procedure TFOrdemMec.EDValUnitExit(Sender: TObject);
begin
  inherited;
   If (EDQuantidade.ValueNumeric<>0) And (EDValUnit.ValueNumeric<>0)
   Then Begin
		CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
	    EDTotal.ValueNumeric:=AlxCalculo;
   End;
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
   If Key=#13
   Then Begin
		CalcPercent(0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric)- EDTotal.ValueNumeric, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
		EDDesc.ValueNumeric:=AlxPercento;
       BtnInsertProd.SetFocus;
   End;
end;
//exit campo total do produto
procedure TFOrdemMec.EDTotalExit(Sender: TObject);
begin
  inherited;
   CalcPercent(0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric)- EDTotal.ValueNumeric, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
	EDDesc.ValueNumeric:=AlxPercento;
end;

procedure TFOrdemMec.BtnInsertProdClick(Sender: TObject);
Var
	XEstReserv, xestfisico, xqnt: real;
   xcod_item :Integer;
begin
  inherited;
	//Valida se foi encontrado algum produto
   If LProduto.Caption=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Selecione um Produto antes de Inserir.', '', 1, 1, False, 'a');
		EDCodFab.SetFocus;
	    Exit;
   End;

   //Valida quanto a quantidade
   If EDQuantidade.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O Produto não pode ser inserido a lista com quantidade inferior a 1 (um).', '', 1, 1, False, 'a');
		EDQuantidade.SetFocus;
	    Exit;
   End;

   //Valida quanto ao valor unitario do produto
   If EDValUnit.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O Produto não pode ser inserido a lista com o Valor Unitário igual ou inferior a 0 (zero).', '', 1, 1, False, 'a');
		EDValUnit.SetFocus;
	    Exit;
   End;
   //Valida quanto ao valor total do produto
   If EDTotal.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o Valor Total igual ou inferior a 0 (zero).', '', 1, 1, False, 'a');
		EDTotal.SetFocus;
	    Exit;
   End;
   //Valida quanto a CST
   If DMESTOQUE.TCST.FieldByName('VENDA').AsString<>'1'
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto selecionado possui um C.S.T que não esta marcado para venda, verifique o seu produto (código de situação tributária).', '', 1, 1, False, 'a');
	    Exit;
   End;

   If (DMMACS.TLoja.FieldByName('controlprodlista').AsString='1') or (DMMACS.TLoja.FieldByName('controlprodlista').AsString= null)
   Then Begin
        //VERIFICA SE JÁ EXISTE ALGUM PRODUTO IGUAL AO CORRENTE INSERIDO A LISTA
        //SE ENCONTRAR PEDIR SE O USUÁRIO DESEJA ALTERAR O LANÇAMENTO.
        DMESTOQUE.TSlave.Close;
        DMESTOQUE.TSlave.SQL.Clear;
        DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
        DMESTOQUE.TSlave.SQL.Add('itprodord.desconto, itprodord.data, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, ');
        DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD ');
        DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
        DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
        DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
        DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
        DMESTOQUE.TSlave.SQL.Add('Where (itprodord.cod_ordem = :CODORDEM) AND (itprodord.cod_estoque=:CODESTOQUE) ');
        DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
        DMESTOQUE.TSlave.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString;
        DMESTOQUE.TSlave.Open;
        If Not DMESTOQUE.TSlave.IsEmpty
        Then Begin
           If Mensagem('A T E N Ç Ã O !', 'O sistema encontrou o mesmo produto já lançado a lista. com '+DMESTOQUE.TSlave.FieldByName('QTD').AsString+' qtdes.'+#13+'Deseja alterar este produto já lançado?', '', 2, 3, False, 'c')= 2
           Then Begin
               //o usuario decidiu alterar o lançamento anterior este é cancelado e o outro é excluido da lista
               xqnt := DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency+EDQuantidade.ValueNumeric;
               RemoverProduto;
               FiltraSlave;
               //Chama função para calcular descontos
               EfetuaDesconto('GERAL', 'PERCENTO');
               EDQuantidade.ValueNumeric := xqnt;
               CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
               EDTotal.ValueNumeric:=AlxCalculo;
               EDQuantidade.SetFocus;
               exit;
           End
        End;
   End;

   //Verifica se o vlr unitário esta dentro da margem de segurança
   If ((EDTotal.ValueNumeric/EDQuantidade.ValueNumeric)<DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency)
   Then Begin
       If Mensagem('A T E N Ç Ã O !', 'O Produto está com o Valor abaixo da margem de segurança. Deseja continuar?', '', 2, 3, False, 'c')= 2
       Then Begin
           // parametro para passar na verificação do usuario que tem margem de segurança disponivel
           FMenu.TIPOREL:='VERIFICMARGEM';
           If ControlAccess('MARGEMSEG', '')=False
           Then Begin  //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
               If Mensagem('A T E N Ç Ã O !', 'Usuário sem permissão.'+#13+'Deseja solicitar a senha de um administrador?', '', 2, 3, False, 'c')= 2
               Then Begin
                   AbrirForm(TFSENHA, FSENHA, 0);
                   //repassa resultado da tela de autenticação de senha para as variáveis de controle
                   If XAlxResult=True Then
                       XLIBMARGEMSEG:=True
                   Else
                       XLIBMARGEMSEG:=False;
               End
               Else Begin
                   XLIBMARGEMSEG:=False;
               end;
           End
           Else Begin
               XLIBMARGEMSEG:=True;
           End;
       End
       Else Begin
           XLIBMARGEMSEG:=False;
           Exit;
       End;
   End
   Else Begin
       XLIBMARGEMSEG:=True;
   End;
   // limpando a variavel utilizada como paramtro para verificar se o usuario tem permissao para vender itens abaixo da margem de segurança
   FMenu.TIPOREL:='';

   //Verifica se o desconto dado no produto é superior ao permitido
   If DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency=0
   Then Begin//Se não ha restrições de desconto do produto em empresa procura em produto
   	If (EDDesc.ValueNumeric>DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency)
   	Then Begin
       	If Mensagem('A T E N Ç Ã O !', 'O Desconto concedido é maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
           Then Begin
               If ControlAccess('DESCPMAIOR', '')=False
               Then Begin  //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                   If Mensagem('A T E N Ç Ã O !', 'Usuário sem permissão.'+#13+'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c')= 2
                   Then Begin
                       AbrirForm(TFSENHA, FSENHA, 0);
                       //repassa resultado da tela de autenticação de senha para as variáveis de controle
                       If XAlxResult=True Then
                           XLIBDESCPROD:=True
                       Else
                           XLIBDESCPROD:=False;
                   End
                   Else Begin
                       XLIBDESCPROD:=False;
                   end;
               End
               Else Begin
                   XLIBDESCPROD:=True;
               End;
           End;
       End
       Else Begin
           XLIBDESCPROD:=True;
       End;
   End
   Else Begin
       If (EDDesc.ValueNumeric>DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency)
       Then Begin
           If Mensagem('A T E N Ç Ã O !', 'O Desconto concedido é maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
           Then Begin
               If ControlAccess('DESCPMAIOR', '')=False
               Then Begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                   If Mensagem('A T E N Ç Ã O !', 'Usuário sem permissão.'+#13+'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c')= 2
                   Then Begin
                       AbrirForm(TFSENHA, FSENHA, 0);
                       //repassa resultado da tela de autenticação de senha para as variáveis de controle
                       If XAlxResult=True Then
                           XLIBDESCPROD:=True
                       Else
                       	XLIBDESCPROD:=False;
                   End
                   Else Begin
                       XLIBDESCPROD:=False;
                   end;
               end
               Else Begin
                   XLIBDESCPROD:=True;
               End;
           End;
       End
       Else Begin
       	XLIBDESCPROD:=True;
       End;
   End;
   //Verifica se a Margem de Seguranca do produto foi obedecida
   If XLIBMARGEMSEG=False
   Then Begin
			If ControlAccess('MARGEMSEG', '')=False Then
				Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para vender este produto abaixo da margem de segurança!', '', 1, 1, False, 'a');
           EDValUnit.SetFocus;
           EXIT;
   End;
   //Verifica se o desconto do produto foi liberado
   If XLIBDESCPROD=False
   Then Begin
       If ControlAccess('DESCPMAIOR', '')=False Then
           Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para vender este produto com tal desconto!', '', 1, 1, False, 'a');
       EDDesc.SetFocus;
       EXIT;
   End;

   //Valida quanto ao estoque físico (verifca se ha estoque suficiente
  	If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
   Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
	 	If DMMacs.TLoja.FieldByName('VENDESTNEG').AsString='0'
	    Then Begin
		   	If LEstoque.Caption<>''
	        Then Begin
		       	If EDQuantidade.ValueNumeric>StrToFloat(TiraPonto(LEstoque.caption))
	            Then Begin//o estoque que esta sendo negociado é maior que o estoque físico e segundo configuraçãoes isto não é permitido
	 				Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
	                EDQuantidade.SetFocus;
                   FiltraSlave;
                   //Chama função para calcular descontos
                   EfetuaDesconto('GERAL', 'PERCENTO');
	 				Exit;
	            End;
	        End
	        Else Begin
				Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
	            EDQuantidade.SetFocus;
               FiltraSlave;
               //Chama função para calcular descontos
               EfetuaDesconto('GERAL', 'PERCENTO');
				Exit;
           End;
       End;
   End;
     Try 
       // seleciona todos os dados de subproduto que tenha o mesmo cod_subprod que a tabela estoque
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('select estoque.cod_estoque, subproduto.cod_cst, estoque.cod_subprod, subproduto.cod_subproduto, subproduto.quantgarantia, subproduto.tipogarantia');
       DMServ.TAlx1.SQL.Add('from estoque left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
       DMServ.TAlx1.SQL.Add('where estoque.cod_estoque = :codigo');
       DMServ.TAlx1.ParamByName('codigo').AsInteger := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       DMServ.TAlx1.Open;

       // verifica se no produto foi lancado algum tipo de garantia. O tipo de garantia nao pode ser em horas                          ** função para remover os espaços **
       If (DMServ.TAlx1.FieldByname('quantgarantia').AsString <> '') and (DMServ.TAlx1.FieldByname('tipogarantia').AsString <> '') and (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') <> 'Hs')
       Then Begin
           // função para retornar a data de termino da garantia
           XDtGarantia:= DateToStr(Calcula_Garantia(DMServ.TAlx1.FieldByname('quantgarantia').AsString,DMServ.TAlx1.FieldByname('tipogarantia').AsString));
       End;
       // verifica se no produto foi lancado algum tipo de garantia. O tipo de garantia deve ser em horas
       If (DMServ.TAlx1.FieldByname('quantgarantia').AsString <> '') and (DMServ.TAlx1.FieldByname('tipogarantia').AsString <> '') and ((SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') = 'Hs') or (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') = 'Km'))
       Then Begin
           // função para retornar a data de termino da garantia
            XDtGarantia:= '01/01/1900';
       End;
       If (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') = 'Km')
       Then Begin
           // SELECIONA TODOS OS DADOS DE EQUIPAMENTO COM O MESMO CODIGO
           FiltraTabela(DMESTOQUE.Alx,'EQUIPAMENTO','COD_EQUIPAMENTO',IntToStr(XCOD_EQUIPAMENTO),'');

           // armazena o KM final do equipamento que sera o limite de sua garantia
           XQtdGarantia := DMESTOQUE.Alx.FieldByname('KMATUAL').AsInteger + DMServ.TAlx1.FieldByname('quantgarantia').AsInteger;
       End;
   Except
       XQtdGarantia:=0;
       XDtGarantia:='';
   End;

   //ALEX - 16/03/09: O CODIGO ABAIXO FOI DESATIVADO POR DAR MUITO PROBLEMAS COM USUARIOS DUPLICADOS
   {Try
       // BUSCANDO DADOS DA TABELA USUARIO COM O MESMO CODIGO
       FiltraTabela(DMMACS.TUsuario,'USUARIO','CODUSUARIO',FMenu.LCODUSUARIO.Caption,'');

       // BUSCANDO DADOS DA TABELA FUNCIONARIO REFERENTE AO USUARIO
       FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMMACS.TUsuario.FieldByName('cod_funcionario').AsString,'');

       XCOD_VENDEDOR := DMPESSOA.TFuncionario.FieldByname('cod_func').AsInteger;
   Except
       XCOD_VENDEDOR:=-1;
   End;
   }
   XCOD_VENDEDOR:=-1;
   //Tenta gravar as informações
   Try

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

       If DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency <> 0
       Then Begin
            DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency/DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);
            If (EDTotal.ValueNumeric <> 0)
            Then Begin
                 DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := EDTotal.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);
                 DMSERV.TPOrd.ParamByName('LUCPER').AsCurrency := ((EDTotal.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) * 100) / EDTotal.ValueNumeric;
            End;

       End
       Else Begin
            DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := 0;
       End;

       DMSERV.TPOrd.ParamByName('DATA').AsDateTime := Date();
       DMSERV.TPOrd.ParamByName('DESCONTO').AsCurrency := EDDesc.ValueNumeric;

       If XDtGarantia<>'' Then
          DMSERV.TPOrd.ParamByName('DATA_GARANTIA').AsString := XDtGarantia;

       If XQtdGarantia<>0 Then
          DMSERV.TPOrd.ParamByName('KMGARANTIA').AsInteger := XQtdGarantia;
       DMSERV.TPOrd.ParamByName('OPERACAO').AsString := 'VND';
       DMSERV.TPOrd.ParamByName('QTD').AsCurrency := EDQuantidade.ValueNumeric;
       DMSERV.TPOrd.ParamByName('QTDRET').AsCurrency := EDQuantidade.ValueNumeric;
       DMSERV.TPOrd.ParamByName('REDUCBASEICMS').AsCurrency := 0;
       DMSERV.TPOrd.ParamByName('TOTAL').AsCurrency := EDTotal.ValueNumeric;
       DMSERV.TPOrd.ParamByName('VALCOMP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency * EDQuantidade.ValueNumeric;
       DMSERV.TPOrd.ParamByName('VALCUSTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
       DMSERV.TPOrd.ParamByName('VALREP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
       DMSERV.TPOrd.ParamByName('VLRICMS').AsCurrency := (EDTotal.ValueNumeric * DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency) / 100;
       DMSERV.TPOrd.ParamByName('VLRICMSSUBS').AsCurrency := 0;
       DMSERV.TPOrd.ParamByName('VLRIPI').AsCurrency := 0;
       DMSERV.TPOrd.ParamByName('VLRUNIT').AsCurrency := EDValUnit.ValueNumeric;
       Try
           DMSERV.TPOrd.ExecSQL;
           DMServ.IBT.CommitRetaining;
           Try
       		//Atualiza Estoque
       		DMEstoque.TEstoque.edit;
       		DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-EDQuantidade.ValueNumeric;
               DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
               DMESTOQUE.TEstoque.Post;
               DMESTOQUE.TransacEstoque.CommitRetaining;
           Except
               DMESTOQUE.TransacEstoque.RollbackRetaining;
               MessageDlg('O ESTOQUE NÃO FOI ATUALIZADO', mtWarning, [mbOK], 0);
           End; 
       Except
           DMServ.IBT.RollbackRetaining;
           MessageDlg('O ITEM NÃO FOI INSERIDO A LISTA', mtWarning, [mbOK], 0);
       End;
   Except
       MessageDlg('OCORRERAM PROBLEMAS AO INSERIR O ITEM. VERIFIQUE!', mtWarning, [mbOK], 0);
   End;
	//limpa labels de seleção
   LimpaCamposProd;
   //Filtra slaves e calcula total
   FiltraSlave;
   //Chama função para calcular descontos
   EfetuaDesconto('GERAL', 'PERCENTO');

   if DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString ='BP' then
      BtnProcProd.SetFocus;
   if DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString ='CB' then
      EDCodFab.SetFocus;


    {
   //Tenta gravar as informações
   Try

       // seleciona todos os dados de subproduto que tenha o mesmo cod_subprod que a tabela estoque
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('select estoque.cod_estoque, estoque.cod_subprod, subproduto.cod_subproduto, subproduto.quantgarantia, subproduto.tipogarantia');
       DMServ.TAlx1.SQL.Add('from estoque left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
       DMServ.TAlx1.SQL.Add('where estoque.cod_estoque = :codigo');
       DMServ.TAlx1.ParamByName('codigo').AsInteger := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       DMServ.TAlx1.Open;

       // verifica se no produto foi lancado algum tipo de garantia. O tipo de garantia nao pode ser em horas                          ** função para remover os espaços **
       If (DMServ.TAlx1.FieldByname('quantgarantia').AsString <> '') and (DMServ.TAlx1.FieldByname('tipogarantia').AsString <> '') and (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') <> 'Hs')
       Then Begin
           // função para retornar a data de termino da garantia
           DMServ.TPOrd.FieldByName('DATA_GARANTIA').AsString := DateToStr(Calcula_Garantia(DMServ.TAlx1.FieldByname('quantgarantia').AsString,DMServ.TAlx1.FieldByname('tipogarantia').AsString));
       End;
       // verifica se no produto foi lancado algum tipo de garantia. O tipo de garantia deve ser em horas
       If (DMServ.TAlx1.FieldByname('quantgarantia').AsString <> '') and (DMServ.TAlx1.FieldByname('tipogarantia').AsString <> '') and ((SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') = 'Hs') or (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') = 'Km'))
       Then Begin
           // função para retornar a data de termino da garantia
           DMServ.TPOrd.FieldByName('DATA_GARANTIA').AsString := '01/01/1900';
       End;
       If (SubstituiCaracter(DMServ.TAlx1.FieldByname('tipogarantia').AsString,' ','') = 'Km')
       Then Begin

           // SELECIONA TODOS OS DADOS DE EQUIPAMENTO COM O MESMO CODIGO
           FiltraTabela(DMESTOQUE.Alx,'EQUIPAMENTO','COD_EQUIPAMENTO',IntToStr(XCOD_EQUIPAMENTO),'');

           // armazena o KM final do equipamento que sera o limite de sua garantia
           DMServ.TPOrd.FieldByName('KMGARANTIA').AsInteger := DMESTOQUE.Alx.FieldByname('KMATUAL').AsInteger + DMServ.TAlx1.FieldByname('quantgarantia').AsInteger;
       End;



       //Inserir Produto a lista do pedido
       XCOD_ITPROD:=InserReg(DMSERV.TPOrd, 'ITPRODORD', 'COD_ITPRODORD');
       DMSERV.TPOrd.FieldByName('COD_ITPRODORD').AsInteger:=XCOD_ITPROD;
       DMSERV.TPOrd.FieldByName('COD_ORDEM').AsInteger:=XCOD_ORDEM;
       DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsInteger:= XCOD_ESTOQUE;

       DMSERV.TPOrd.FieldByName('QTD').Value:=EDQuantidade.ValueNumeric;
       DMSERV.TPOrd.FieldByName('QTDRET').Value:=EDQuantidade.ValueNumeric;
       //DMSERV.TPOrd.FieldByName('NUMREQ').AsString:=EDNumReg.Text;
       DMSERV.TPOrd.FieldByName('OPERACAO').AsString:='VND';
       DMSERV.TPOrd.FieldByName('DESCONTO').Value:=EDDesc.ValueNumeric;
       DMSERV.TPOrd.FieldByName('VLRUNIT').Value:=EDValUnit.ValueNumeric;
       DMSERV.TPOrd.FieldByName('TOTAL').Value:=EDTotal.ValueNumeric;

       // BUSCANDO DADOS DA TABELA USUARIO COM O MESMO CODIGO
       FiltraTabela(DMMACS.TUsuario,'USUARIO','CODUSUARIO',FMenu.LCODUSUARIO.Caption,'');

       // BUSCANDO DADOS DA TABELA FUNCIONARIO REFERENTE AO USUARIO
       FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMMACS.TUsuario.FieldByName('cod_funcionario').AsString,'');

       XCOD_VENDEDOR := DMPESSOA.TFuncionario.FieldByname('cod_func').AsInteger;

       DMSERV.TPOrd.FieldByName('COD_FUNCIONARIO').AsInteger:=XCOD_VENDEDOR;
       DMSERV.TPOrd.FieldByName('DATA').AsDateTime:=Date();
       DMSERV.TPOrd.FieldByName('VALCUSTO').Value:=DMESTOQUE.TEstoque.FieldByName('VALCUSTO').Value;
       DMSERV.TPOrd.FieldByName('VALREP').Value:=DMESTOQUE.TEstoque.FieldByName('VALREP').Value;
       DMSERV.TPOrd.FieldByName('COEFDIV').Value:=DMESTOQUE.TEstoque.FieldByName('COEFDIV').Value;
       DMSERV.TPOrd.FieldByName('VALCOMP').Value:=DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').Value*EDQuantidade.ValueNumeric;
       CalcLuc(EDTotal.ValueNumeric, EDDesc.ValueNumeric, EDQuantidade.ValueNumeric);
       If DMSERV.TPOrd.FieldByName('COEFDIV').AsCurrency<>0 Then
           DMSERV.TPOrd.FieldByName('LUCMOE').AsCurrency:=(DMSERV.TPOrd.FieldByName('VALREP').AsCurrency/DMSERV.TPOrd.FieldByName('COEFDIV').AsCurrency)
           Else
               DMSERV.TPOrd.FieldByName('LUCMOE').AsCurrency:=0;

       If (DMSERV.TPOrd.FieldByName('LUCMOE').AsCurrency<>0) and (DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency<>0)
       Then Begin
           DMSERV.TPOrd.FieldByName('LUCMOE').AsCurrency:=DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency-DMSERV.TPOrd.FieldByName('LUCMOE').AsCurrency;
           DMSERV.TPOrd.FieldByName('LUCPER').AsCurrency:=(DMSERV.TPOrd.FieldByName('LUCMOE').AsCurrency*100)/DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency;
       End;

       DMSERV.TPOrd.FieldByName('ALIQICMS').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
       DMSERV.TPOrd.FieldByName('BASEICMS').AsCurrency:=EDTotal.ValueNumeric;
       DMSERV.TPOrd.FieldByName('VLRICMS').AsCurrency:=(EDTotal.ValueNumeric*DMSERV.TPOrd.FieldByName('ALIQICMS').AsCurrency)/100;
       DMSERV.TPOrd.FieldByName('REDUCBASEICMS').AsCurrency:=0;
       DMSERV.TPOrd.FieldByName('BASEICMSSUBS').AsCurrency:=0;
       DMSERV.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency:=0;
       DMSERV.TPOrd.FieldByName('ALIQIPI').AsCurrency:=0;
       DMSERV.TPOrd.FieldByName('VLRIPI').AsCurrency:=0;


       //Atualiza Estoque
       DMEstoque.TEstoque.edit;
       //atualiza estoque físico
       If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString='' Then
       	DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=(EDQuantidade.ValueNumeric) * -1
       Else
       	DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value-EDQuantidade.ValueNumeric;

       //Atualiza saldo de estoque
      	DMEstoque.TEstoque.FieldByName('ESTSALDO').Value:=(DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMEstoque.TEstoque.FieldByName('ESTPED').Value)-DMEstoque.TEstoque.FieldByName('ESTRESERV').Value;
       //prepara estoque em pedido de compra

       //prepara estoque em pedido de venda
       If DMEstoque.TEstoque.FieldByName('ESTRESERV').AsString='' Then
           XEstReserv:=0
       Else
           XEstReserv:=DMEstoque.TEstoque.FieldByName('ESTRESERV').Value;

       //prepara estoque fisico
       If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString='' Then
           XEstFisico:=0
       Else
           XEstFisico:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value;

       DMSERV.TPOrd.Post;
		DMEstoque.TEstoque.Post;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMServ.IBT.CommitRetaining;
       //Panel2.OnEnter(Sender);        #########
   Except
       DMESTOQUE.TransacEstoque.RollbackRetaining;
       DMServ.IBT.RollbackRetaining;
   End;
	//limpa labels de seleção
   LimpaCamposProd;
   //Filtra slaves e calcula total
   FiltraSlave;
    }
   EDCodFab.SetFocus;

end;

//FILTRA OS REGISTROS DE PRODUTOS E SERVIÇOS PERTENCENTES A ORDEM
Procedure TFOrdemMec.FiltraSlave;
var
	XDESCMOEDA: real;
Begin
   XVLRTVISTA:=0;
   XVLRUNITVISTA:=0;
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
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
	DMESTOQUE.TSlave.Open;
	If XCONTROLECONSULTA = False Then
  		EdTotalPROD.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
  	XVLRTPROD:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
   
  	//INSERE COMANDOS PARA FILTRAR
 	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, unidade.sigla_unid as UNIDADE, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
	DMESTOQUE.TSlave.SQL.Add('itprodord.desconto, itprodord.data, itprodord.cod_funcionario, itprodord.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, itprodord.operacao,');
	DMESTOQUE.TSlave.SQL.Add(' itprodord.baseicms, itprodord.vlricms, itprodord.aliqicms, cst.cod_sit_trib, itprodord.descnf as DESCONTONF, ');
   DMESTOQUE.TSlave.sql.Add('subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD ');
	DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('left join cst ON itprodord.cod_cst = cst.cod_cst ');
	DMESTOQUE.TSlave.SQL.Add('Left Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
	DMESTOQUE.TSlave.SQL.Add('Where itprodord.cod_ordem = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCOD_ORDEM;
   DMESTOQUE.TSlave.SQL.Add('order by itprodord.cod_itprodord desc');
	DMESTOQUE.TSlave.Open;


   //TRABALHANDO COM DESPESAS

   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('select Sum(despadic.vlrtotfin) AS VLRTOTFIN From despadic Where (despadic.gerador='+#39+'ORDEM'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
   DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsInteger:=XCOD_ORDEM;
   DMESTOQUE.Alx2.Open;
	If XCONTROLECONSULTA = False Then
   	EdTotalserv.ValueNumeric:=DMESTOQUE.Alx2.FieldByName('VLRTOTFIN').AsCurrency;
   XVLRTSERV:=DMESTOQUE.Alx2.FieldByName('VLRTOTFIN').AsCurrency;

   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add('select * from despadic');
   DMESTOQUE.Alx3.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
   DMESTOQUE.Alx3.SQL.Add('where (despadic.cod_gerador= :cod) and (despadic.gerador='+#39+'ORDEM'+#39+')');
   DMESTOQUE.Alx3.SQL.Add('order by despadic.cod_despadic desc');
   DMESTOQUE.Alx3.ParamByName('cod').AsInteger:=XCOD_ORDEM;
   DMESTOQUE.Alx3.Open;


   //FILTRA DESPESAS
   DMESTOQUE.TDesp.Close;
   DMESTOQUE.TDesp.SQL.Clear;
   DMESTOQUE.TDesp.SQL.Add('select despadic.cod_gerador, despadic.despesa, despadic.gerador, despadic.qtd, despadic.vlrfinal, despadic.cod_equipe, DESPADIC.COD_DESPADIC,');
   DMESTOQUE.TDesp.SQL.Add('equipe.cod_equipe, equipe.descricao, DESPADIC.VLRREAL, DESPADIC.LUCMOE, DESPADIC.LUCPER, DESPADIC.DESCONTO, DESPADIC.MARCA, DESPADIC.UNIDADE, DESPADIC.VLRTOTFIN');
   DMESTOQUE.TDesp.SQL.Add('From despadic ');
   DMESTOQUE.TDesp.SQL.Add('LEFT JOIN EQUIPE ON DESPADIC.COD_EQUIPE = EQUIPE.COD_EQUIPE');
   DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador='+#39+'ORDEM'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=XCOD_ORDEM;
   DMESTOQUE.TDesp.SQL.Add('order by despadic.cod_despadic desc');
	DMESTOQUE.TDesp.Open;

	XCONTROLECONSULTA := False;
   //ATRIBUI TOTAL VENDIDO SEM DESCONTO À VARIAVEL
   XVLRTOTAL:=XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric;
End;

// função para calcular data de garantia
function TFOrdemMec.Calcula_Garantia(Qtde, Tipo: string): TDateTime;
begin
   // se tipo da garantia informado no cadastro do produto for em Dias

   // função para remover os espaços
   Tipo := SubstituiCaracter(Tipo,' ','');

   Result := Date();

   If Tipo = 'Dias'
   Then Begin
       Result := IncDay(Date,StrToInt(Qtde));
   End;
   If Tipo = 'Meses'
   Then Begin
       Result := IncMonth(Date,StrToInt(Qtde));
   End;
   If Tipo = 'Ano'
   Then Begin
       Result := IncYear(Date,StrToInt(Qtde));
   End;

end;

// CLICK REMOVER PRODUTO
procedure TFOrdemMec.BtnDeleteProdClick(Sender: TObject);
begin
  inherited;
   If DMESTOQUE.TSlave.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
       if DMServ.TOrd.FieldByName('EXPORTADO').AsString <> '#'
       then begin
         DMServ.TAlx1.Close;
         DMServ.TAlx1.SQL.Clear;
         DMServ.TAlx1.SQL.Add('select * from estoque');
         DMServ.TAlx1.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
         DMServ.TAlx1.SQL.Add('where estoque.cod_estoque = :codigo');
         DMServ.TAlx1.ParamByName('codigo').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
         DMServ.TAlx1.Open;

         // verifica o tamanho do produto para colocar abreviação se necessario
         If Length(DMServ.TAlx1.FieldByname('descricao').AsString) > 20
         Then Begin
             // se clicar em não, o produto naum sera apagado
             If Mensagem('   A T E N Ç Ã O   ','Deseja realmente apagar o produto ' + Copy(DMServ.TAlx1.FieldByname('descricao').AsString,0,20) + '. ?','',2,3,false,'I')=3 Then
                 Exit;
         End
         Else Begin
             // se clicar em não, o produto naum sera apagado
             If Mensagem('   A T E N Ç Ã O   ','Deseja realmente apagar o produto ' + DMServ.TAlx1.FieldByname('descricao').AsString + ' ?','',2,3,false,'I')=3 Then
                 Exit;
         End;

         RemoverProduto;

         //VOLTA VALORES AS LABELS
         EscreveLabelsPROD;
         EDQuantidade.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTD').Value;
         EDValUnit.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').Value;
         EDDesc.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('DESCONTO').Value;
         EDTotal.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').Value;
         //Filtra registros escrsavos
         FiltraSlave;
         //Chama função para calcular descontos
         EfetuaDesconto('GERAL', 'PERCENTO');
         //Panel2.OnEnter(Sender);
       End
       ELSE BEGIN
           If Mensagem('   A T E N Ç Ã O   ','Deseja remover TODOS os PRODUTOS da lista?','',2,3,false,'I')=3 Then
                   Exit;

            DMESTOQUE.TSlave.First;

            while not DMESTOQUE.TSlave.Eof
            do begin
                 RemoverProduto;
                 FiltraSlave;
                 //Chama função para calcular descontos
                 EfetuaDesconto('GERAL', 'PERCENTO');
                 DMESTOQUE.TSlave.First;
            end;

            LimpaCamposProd;
       END;
   END;
   DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
   DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR ');
   DMESTOQUE.WSimilar.Open;
end;
 //click popup remover tudo
procedure TFOrdemMec.RemoverTudo1Click(Sender: TObject);
begin
  inherited;

  If Mensagem('   A T E N Ç Ã O   ','Deseja remover TODOS os produtos da lista?','',2,3,false,'I')=3 Then
               Exit;

  DMESTOQUE.TSlave.First;

  while not DMESTOQUE.TSlave.Eof do begin
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
   XAPAGA:=0;
   If DMESTOQUE.TSlave.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar

       // se a atividade for equipe eh feita uma outra verificação
       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
       Then Begin
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('select * from estoque');
           DMServ.TAlx1.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
           DMServ.TAlx1.SQL.Add('where estoque.cod_estoque = :codigo');
           DMServ.TAlx1.ParamByName('codigo').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
           DMServ.TAlx1.Open;

       End;

       if XAPAGA= 0
       then begin
           //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
           FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
           FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
           FiltraTabela(DMSERV.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsString, '');
           //Atualiza Estoque
           DMEstoque.TEstoque.edit;
           DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMServ.TPOrd.FieldByName('QTD').Value;
           DMEstoque.TEstoque.FieldByName('ESTRESERV').Value:=DMEstoque.TEstoque.FieldByName('ESTRESERV').Value-DMServ.TPOrd.FieldByName('QTD').Value;
           DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
           DMEstoque.TEstoque.Post;
           //Atualiza saldo de estoque
           //prepara estoque em pedido de compra
           Try
               DMEstoque.TEstoque.Edit;
               DMEstoque.TEstoque.FieldByName('ESTSALDO').Value:=(DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency-DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency)+DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency;
               DMEstoque.TEstoque.Post;
           Except
           End;
           DMESTOQUE.TransacEstoque.CommitRetaining;

           // essa variavel eh soh para fazer verificação na função "calcula comissao" e nao precisar usar o mesmo filtratabela igual ao debaixo
           XCampo := '1';
           // filtra estoque para buscar os valores das porcentagens das comissoes
           FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsString,'');
           XCOD_ULTPROD := DMSERV.TPOrd.FieldByName('COD_ESTOQUE').AsInteger;

           //APAGA ITEM
           DMSERV.TPOrd.Delete;
            If DMSERV.TPOrd.UpdatesPending Then
               DMSERV.TPOrd.ApplyUpdates;

           //CONFIRMA TRANZAÇÃO
           Try
              DMServ.IBT.CommitRetaining;
           Except
              DMServ.IBT.RollbackRetaining;
           End;

           //VOLTA VALORES AS LABELS
           EscreveLabelsPROD;
           EDQuantidade.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTD').Value;
           EDValUnit.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').Value;
           EDDesc.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('DESCONTO').Value;
           EDTotal.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').Value;
           //Filtra registros escrsavos
           //FiltraSlave;
           //Panel2.OnEnter(Sender);
       end
       else begin

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
               DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMServ.TPOrd.FieldByName('QTD').Value;
               DMEstoque.TEstoque.FieldByName('ESTRESERV').Value:=DMEstoque.TEstoque.FieldByName('ESTRESERV').Value-DMServ.TPOrd.FieldByName('QTD').Value;
               DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
               DMEstoque.TEstoque.Post;
               //Atualiza saldo de estoque
               //prepara estoque em pedido de compra
               Try
                   DMEstoque.TEstoque.Edit;
                   DMEstoque.TEstoque.FieldByName('ESTSALDO').Value:=(DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency-DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency)+DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency;
                   DMEstoque.TEstoque.Post;
               Except
               End;
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
               EDQuantidade.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTD').Value;
               EDValUnit.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').Value;
               EDDesc.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('DESCONTO').Value;
               EDTotal.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').Value;
               //Filtra registros escrsavos
               //FiltraSlave;
               //Panel2.OnEnter(Sender);
              // DMServ.TPOrd.Next;               
           end;
       end;
   End;
end;

//key press descricao serviço
procedure TFOrdemMec.EDesricaoServicoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if key = #13 then
       EValorServ.SetFocus;
end;
//key pres valor do serviço
procedure TFOrdemMec.EValorServKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then begin
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
   ETotalServItem.ValueNumeric:=(EValorServ.ValueNumeric*EQtdServ.ValueNumeric);
   ETotalServItem.ValueNumeric:=(ETotalServItem.ValueNumeric-((ETotalServItem.ValueNumeric/100)*EDescServ.ValueNumeric));
end;
//press key desconto serviço
procedure TFOrdemMec.EDescServKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if key = #13 then begin
       ETotalServItem.ValueNumeric:=(EValorServ.ValueNumeric*EQtdServ.ValueNumeric);
       ETotalServItem.ValueNumeric:=(EValorServ.ValueNumeric-((EValorServ.ValueNumeric/100)*EDescServ.ValueNumeric));
       FrmEquipe.edcodigo.setfocus;
   end;
end;
 //on exit qnt serviço
procedure TFOrdemMec.EQtdServExit(Sender: TObject);
begin
  inherited;
   ETotalServItem.ValueNumeric:=(EValorServ.ValueNumeric*EQtdServ.ValueNumeric);
end;

//pesquisa codigo equipe
Procedure TFOrdemMec.PesquisaCodigoEquipe(codigo:String);
begin
   // letras maiusculas
   codigo:= Trim(UpperCase(codigo));

   If codigo <> ''
   Then Begin
       // seleciona equipe que tiver o mesmo codigo
       DMServ.Alx.Close;
       DMServ.Alx.SQL.Clear;
       DMServ.Alx.SQL.Add(' select * from equipe ');
       DMServ.Alx.SQL.Add(' where equipe.cod_equipe = :codigo ');
       DMServ.Alx.ParamByName('codigo').AsString := codigo;
       DMServ.Alx.Open;

       If Not DMServ.Alx.IsEmpty
       Then Begin
           FrmEquipe.EdDescricao.Text := DMServ.Alx.FieldByname('descricao').AsString;
           RetornaComissao(DMServ.Alx.fieldbyname('cod_responsavel').AsInteger);
           BtnInserir.SetFocus;
       End
       Else Begin
           FrmEquipe.EdDescricao.Text := '';
           FrmEquipe.EDCodigo.SelectAll;
           FrmEquipe.EDCodigo.SetFocus;
       End;
   FrmCliente.Repaint;
   FrmEquipe.Repaint;
   FBEquipPlaca.Repaint;
   FrmFormPag1.Repaint;
   End;
end;

 // pres key codigo da equipe
procedure TFOrdemMec.FrmEquipeEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmEquipe.EDCodigoKeyPress(Sender, Key);

  if not (key in ['0'..'9', #8, #13]) then
               Key := #0;

  If Key=#13
     Then Begin
     if FrmEquipe.EDCodigo.Text<>''
     Then Begin
         PesquisaCodigoEquipe(FrmEquipe.EDCodigo.Text);
     End;
  end;
end;

//on exit codigo equipe
procedure TFOrdemMec.FrmEquipeEDCodigoExit(Sender: TObject);
begin
  inherited;
   if FrmEquipe.EDCodigo.Text<>''
     Then Begin
         PesquisaCodigoEquipe(FrmEquipe.EDCodigo.Text);
     End
     ELSE BEGIN
       FrmEquipe.EdDescricao.Text := '';
     END;
end;
 // click botao equipe 
procedure TFOrdemMec.FrmEquipeBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmEquipe.BTNOPENClick(Sender);
  if AbrirForm(TFCadEquipe, FCadEquipe, 1)='Selected'
   then begin
       FrmEquipe.EDCodigo.Text:= DMPESSOA.TALX1.fieldbyname('Cod_Equipe').AsString;
       FrmEquipe.EdDescricao.Hint := DMPESSOA.TALX1.fieldbyname('descricao').AsString;
       FrmEquipe.EdDescricao.Text := DMPESSOA.TALX1.fieldbyname('descricao').AsString;
       BtnInserir.SetFocus;
       RetornaComissao(DMPESSOA.TALX1.fieldbyname('cod_responsavel').AsInteger);
   End
   Else Begin
       FrmEquipe.EDCodigo.Text := '';
       FrmEquipe.EdDescricao.Hint := '';
       FrmEquipe.EdDescricao.Text := '';
   End;
end;
 //btn inserir serviço
procedure TFOrdemMec.BtnInserirClick(Sender: TObject);
var
   xcod_despesa :Integer;
begin
  inherited;

   // eh necesario informar a descricao de uma equipe
   If EDesricaoServico.Text = ''
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','É necessário informar a descrição do serviço.','',1,1,false,'I');
       EDesricaoServico.SetFocus;
       Exit;
   End;

   // se o servico nao possuir valor eh exibido uma mensagem para o
   //usuario se ele tem certeza que deseja inserir um servico sem valor
   If EValorServ.ValueNumeric = 0 Then
       Mensagem('   A T E N Ç Ã O   ','O valor unitário do serviço é igual a ZERO! ','',1,1,false,'I');

   // eh necessario selecionar uma equipe p serviço
   If FrmEquipe.EDCodigo.Text = ''
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Selecione uma equipe','',1,1,false,'I');
       FrmEquipe.EDCodigo.SetFocus;
       Exit;
   End;

   If EQtdServ.ValueNumeric = 0
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','A quantidade do serviços é igual a ZERO! ','',1,1,false,'I');
       //ETotalServItem.SetFocus;
       //Exit;
   End;

  //Paulo 30/06/2011: Não deixa inserir um serviço com o valor zerado
   If ETotalServItem.ValueNumeric = 0
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','O valor total do serviço é igual a ZERO! ','',1,1,false,'I');
   End;

   FiltraTabela(DMESTOQUE.TDesp,'DESPADIC','COD_GERADOR','','(COD_GERADOR = ' + IntToStr(XCOD_ORDEM) + ') AND (GERADOR = ' + #39 + 'ORDEM' + #39 + ')');

   Try
       DMServ.IBT.CommitRetaining;
       DMServ.Alx.Close;
       DMServ.Alx.SQL.Clear;
       DMServ.Alx.SQL.Add(' insert into despadic(COD_GERADOR, GERADOR, DESPESA, QTD, VLRREAL, VLRFINAL, VLRTOTFIN, DESCONTO, MARCA, ');
       DMServ.Alx.SQL.Add('                      UNIDADE, COD_EQUIPE, COD_FUNCIONARIO, CST, COMISSAO) ');
       DMServ.Alx.SQL.Add('             values(:COD_GERADOR, :GERADOR, :DESPESA, :QTD, :VLRREAL, :VLRFINAL, :VLRTOTFIN, :DESCONTO, :MARCA, ');
       DMServ.Alx.SQL.Add('             :UNIDADE, :COD_EQUIPE, :COD_FUNCIONARIO, :CST, :COMISSAO) ');
       DMServ.Alx.ParamByName('COD_GERADOR').AsInteger := XCOD_ORDEM;
       DMServ.Alx.ParamByName('GERADOR').AsString := 'ORDEM';
       DMServ.Alx.ParamByName('DESPESA').AsString := EDesricaoServico.Text;
       DMServ.Alx.ParamByName('QTD').AsCurrency := EQtdServ.ValueNumeric;
       DMServ.Alx.ParamByName('VLRFINAL').AsCurrency := EValorServ.ValueNumeric;
       DMServ.Alx.ParamByName('VLRTOTFIN').AsCurrency := ETotalServItem.ValueNumeric;
       DMServ.Alx.ParamByName('DESCONTO').AsCurrency := EDescServ.ValueNumeric;
       DMServ.Alx.ParamByName('COD_EQUIPE').AsString := FrmEquipe.EDCodigo.Text;
       DMServ.Alx.ParamByName('COD_FUNCIONARIO').AsInteger := XCod_usuario;
       DMServ.Alx.ParamByName('CST').AsString := '041';
       DMServ.Alx.ParamByName('COMISSAO').AsFloat := StrToFloat(lbComissaoServ.Caption);
       //Paulo 31/10/2011: Para identificar se o serviço é de terceiros ou não
       If (cbTerceiros.Checked=true) Then
       	DMServ.Alx.ParamByName('UNIDADE').AsString := '1'
       else
       	DMServ.Alx.ParamByName('UNIDADE').AsString := '0';
       DMServ.Alx.ParamByName('VLRREAL').AsCurrency := edCustoTerceiros.ValueNumeric;

       DMServ.Alx.ExecSQL;
       DMServ.IBT.CommitRetaining;
   Except
       on E: Exception do
       begin
          if E.Message ='attempt to store duplicate value (visible to active transactions) in unique index "DESPADIC_IDX1"'
          then begin
             Try
             	  DMServ.IBT.RollbackRetaining;
                 //Jônatas 12/06/2013
                 //pega o valor do gerador e armazena em XCOD
                 DMMACS.TALX.Close;
                 DMMACS.TALX.SQL.Clear;
                 DMMACS.TALX.SQL.Add('  select gen_id(GEN_DESPADIC_ID, 0) as codigo from rdb$database ');
                 DMMACS.TALX.Open;
                 //Incrementa o gerador para fazer a Chave primária ser válida na inserção
                 xcod_despesa:=DMMACS.TALX.FieldByName('codigo').AsInteger+100;
                 DMMACS.TALX.Close;
                 DMMACS.TALX.SQL.Clear;
                 DMMACS.TALX.SQL.Add('SET GENERATOR GEN_DESPADIC_ID TO '+IntToStr(xcod_despesa));
                 DMMACS.TALX.ExecSQL;
                 DMMACS.Transaction.CommitRetaining;  
                 DMServ.IBT.CommitRetaining;
                 ShowMessage('Um erro foi encontrado e corrigido. Tente novamente.');
             Except
                 ShowMessage('Falha ao gerar código do serviço.'+#13+' Foi encontrado um erro ao inserir o serviço. Entre em contato com o suporte e informe oerro ocorrido');
                 DMMACS.Transaction.RollbackRetaining;
                 DMServ.IBT.RollbackRetaining;
             End;
          End
          else begin
               MessageDlg('O ITEM NÃO PODE SER INSERIDO. VERIFIQUE!'+#13+'Erro: 1348', mtWarning, [mbOK], 0);
               DMServ.IBT.RollbackRetaining;
               FiltraSlave;
               //Chama função para calcular descontos
               EfetuaDesconto('GERAL', 'PERCENTO');
               Exit;
          End;
       End;
   {
       DMServ.IBT.RollbackRetaining;
       MessageDlg('O ITEM NÃO PODE SER INSERIDO. VERIFIQUE!'+#13+'Erro: 1348', mtWarning, [mbOK], 0);
       FiltraSlave;
       //Chama função para calcular descontos
       EfetuaDesconto('GERAL', 'PERCENTO');
       Exit;:}
   End;
   FiltraSlave;
   //Chama função para calcular descontos
   EfetuaDesconto('GERAL', 'PERCENTO');
   LimpaCamposServ;
   EDesricaoServico.SetFocus;
end;
//click botao remover
procedure TFOrdemMec.BBExcluirClick(Sender: TObject);
begin
  inherited;
    if DMServ.TOrd.FieldByName('EXPORTADO').AsString <> '#'
    then begin
      DMESTOQUE.Alx1.Close;
      DMESTOQUE.Alx1.SQL.Clear;
      DMESTOQUE.Alx1.sql.Add('select * from despadic');
      DMESTOQUE.Alx1.sql.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
      DMESTOQUE.Alx1.sql.Add('where despadic.cod_despadic= :cod');
      DMESTOQUE.Alx1.ParamByName('cod').AsString:= DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsString;
      DMESTOQUE.Alx1.Open;

       If Length(DMESTOQUE.Alx1.FieldByName('DESPESA').AsString) > 20
       Then Begin
           If Mensagem('   A T E N Ç Ã O   ','Deseja realmente excluir o serviço ' + #39 + Copy(DMESTOQUE.Alx1.FieldByname('DESPESA').AsString,0,20) + #39 + '. ?','',2,3,false,'I')=3 Then
               Exit;
       End
       Else Begin
           If Mensagem('   A T E N Ç Ã O   ','Deseja realmente excluir o serviço ' + #39 + DMESTOQUE.Alx1.FieldByname('DESPESA').AsString + #39 + ' ?','',2,3,false,'I')=3 Then
               Exit;
       End; 

      //volta valores do serviço para as grids de edição
      EDesricaoServico.Text:=DMESTOQUE.Alx3.fieldbyname('DESPESA').AsString;
      EValorServ.Text:=DMESTOQUE.Alx3.fieldbyname('VLRFINAL').AsString;
      EQtdServ.Text:=DMESTOQUE.Alx3.fieldbyname('QTD').AsString;
      EDescServ.Text:=DMESTOQUE.Alx3.fieldbyname('DESCONTO').AsString;
      ETotalServItem.Text:=DMESTOQUE.Alx3.fieldbyname('VLRTOTFIN').AsString;
      FrmEquipe.EDCodigo.Text:=DMESTOQUE.Alx3.fieldbyname('COD_EQUIPE').AsString;
      FrmEquipe.EdDescricao.Text:=DMESTOQUE.Alx3.fieldbyname('DESCRICAO').AsString;

      RemoverServico;
    end
    else begin
       If Mensagem('   A T E N Ç Ã O   ','Deseja remover TODOS os SERVIÇOS da lista?','',2,3,false,'I')=3 Then
               Exit;

        DMESTOQUE.Alx3.First;

        while not DMESTOQUE.Alx3.Eof do begin
             RemoverServico;
        end;

        LimpaCamposServ;
    end;
end;

// remover serviço selecionado
procedure TFOrdemMec.RemoverServico;
var
   XAPAGA: Integer; //controla para que sejama apagados todos os serviços da ordem exportada
begin
  inherited;
      XAPAGA:=0;



       if XAPAGA = 0
       then begin

          //exclui serviço/despesa do banco
          DMESTOQUE.Alx.close;
          dmestoque.Alx.SQL.clear;
          DMESTOQUE.Alx.sql.Add('delete from despadic where (despadic.cod_gerador= :cod1)');
          DMESTOQUE.Alx.SQL.Add('and despadic.cod_despadic= :cod2');
          DMESTOQUE.Alx.ParamByName('cod1').AsInteger:=XCOD_ORDEM;
          DMESTOQUE.Alx.ParamByName('cod2').AsInteger:=DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsInteger;
          DMESTOQUE.Alx.ExecSQL;
          DMESTOQUE.TransacEstoque.CommitRetaining;

          FiltraSlave;
          //Chama função para calcular descontos
          EfetuaDesconto('GERAL', 'PERCENTO');

      end
      else begin

          //exclui serviço/despesa do banco
          DMESTOQUE.Alx.close;
          dmestoque.Alx.SQL.clear;
          DMESTOQUE.Alx.sql.Add('delete from despadic where (despadic.cod_gerador= :cod1)');
          //DMESTOQUE.Alx.SQL.Add('and despadic.cod_despadic= :cod2');
          DMESTOQUE.Alx.ParamByName('cod1').AsInteger:=XCOD_ORDEM;
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
   If Mensagem('   A T E N Ç Ã O   ','Deseja remover todos os SERVIÇOS da lista?','',2,3,false,'I')=3 Then
               Exit;

  DMESTOQUE.Alx3.First;

  while not DMESTOQUE.Alx3.Eof do begin
       RemoverServico;
  end;

  LimpaCamposServ;

end;
//click botao gravar
procedure TFOrdemMec.BtnGravarClick(Sender: TObject);
Var
	XFlagControlNumero: Integer;
begin
  inherited;
   FMenu.XTIPOBOLTO:='';

   //CONTROLE DA NUMERAÇÃO DA ORDEM DE SERVIÇO
   XFlagControlNumero:=1;
   While XFlagControlNumero=1 do
   Begin
       If FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'numero', '', ' (numero='+#39+DBNumOrd.Text+#39+') AND (VWORDEM.cod_ordem<>'+IntToStr(XCOD_ORDEM)+') ')=True
       Then Begin
           //caso já exista o mesmo numero em outro pedido incrementamos mais um numero de acordo com a tabela empresa e continuamos loop para teste
           DBNumOrd.Text:=IntToStr(RetornaNumPed);
           MessageDlg('O Número anteriormente informado para a O.S. já existia em banco.'+#13+#10+'O Sistemas alterou automaticamente para: '+DBNumOrd.Text, mtWarning, [mbOK], 0)
       End
       Else Begin
           Try
               //Testamos o numero do edit para garantir que é um numero
               StrToInt(DBNumOrd.Text);
               If XNumOrdem<>DBNumOrd.Text Then
                   MessageDlg('O Número anteriormente informado para a O.S. já existia em banco.'+#13+#10+'O Sistemas alterou automaticamente para: '+DBNumOrd.Text, mtWarning, [mbOK], 0)
           Except
           End;
           XFlagControlNumero:=0;
       End;
   End;
   // seleciona todos os produtos da ordem de serviço
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('select * from itprodord where itprodord.cod_ordem = :cod_ordem');
   DMESTOQUE.Alx1.ParamByName('cod_ordem').AsInteger := XCOD_ORDEM;
   DMESTOQUE.Alx1.Open;

   // se nao possuir nenhum produto verifica se existem servico na ordem
   If DMESTOQUE.Alx1.IsEmpty
   Then Begin

           // na tabela despadic eh feito uma verificação se possui servico relacionado a ordem
           DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx2.SQL.Add('select * from despadic where despadic.cod_gerador = :codigo');
           DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := XCOD_ORDEM;
           DMESTOQUE.Alx2.Open;

    End;

    //FDOISUFADSUIFODAUSIOFUDIAOSUFIOASUOIFAS

       // se nao possui servico e nem produtos eh exibido a mensagem - SEGUNDO SOLICITAÇÃO É OBRIGATORIO PODER GRAVAR SEM SERVICO
       If (DMESTOQUE.Alx2.IsEmpty)
       Then Begin
           If Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço atual não possui produtos e serviços inclusos. Deseja apagá-la ?','',2,3,false,'A')=2
           Then Begin
	       		//Apaga ORDEM
				FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
				Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.TOrd.FieldByName('TOTORD').AsString);
				DMServ.TOrd.Delete;

          		//Confirma Transação
          		DMSERV.IBT.CommitRetaining;

          		//atualiza vew
         		AtualizaGridConsulta('ORIGEM');

               PCadastro.Visible:=False;
               PConsulta.Visible:=true;
               PConsulta.BringToFront;
               //EdNome.SetFocus;
               //habilita o botão "X" de fechar para que o usuário possa fechar a tela
               BtnFecha.Visible:=True;

               XEstado:='';

               Exit;
           End;
       End;

   //VALIDA CAMPOS NECESSÁRIOS
   If (XCOD_CLIENTE=-1) or (FrmCliente.EDCodigo.Text = '')
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um Cliente para Ordem de Serviço', '', 1, 1, False, 'a');
       FrmCliente.EDCodigo.SetFocus;
       Exit;
   End;

   If ((XCOD_EQUIPAMENTO=-1)  or (FBEquipPlaca.EDCodigo.Text = '')) AND (CBVENDABALCAO.Checked=FALSE)
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe uma placa para Ordem de Serviço', '', 1, 1, False, 'a');
       FBEquipPlaca.EDCodigo.SetFocus;
       Exit;
   End;

   If (XCOD_FORMPAG=-1) or (FrmFormPag1.EDCodigo.Text = '')
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe a Forma de Pagamento para a Ordem de Serviço', '', 1, 1, False, 'a');
       FrmFormPag1.EDCodigo.SetFocus;
       Exit;
   End;

   If XCOD_CLIENTE=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
   Then Begin
       If FrmFormPag1.EdDescricao.Text<>'À VISTA'
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
           FrmFormPag1.BTNOPEN.SetFocus;
           Exit;
       End;
   End;

   If ((DBBox.Text = '') and (CBVENDABALCAO.Checked=False)) and (DBBox.Text<>'0') 
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe o box para Ordem de Serviço', '', 1, 1, False, 'a');
       Exit;
   End;


       DMServ.TOrd.Edit;
       IF CBGarantia.Checked Then
           DMServ.TOrd.FieldByName('GARANTIA').AsString:='1'
       Else
           DMServ.TOrd.FieldByName('GARANTIA').AsString:='';

       //INFORMA CODIGO DO USUARIO
       DMServ.TOrd.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
       //INFORMA CODIGO DO CLIENTE
       DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger:=XCOD_CLIENTE;
       //INFORMA CODIGO DO EQUIPAMENTO
       DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger:=XCOD_EQUIPAMENTO;
       DMServ.TOrd.Post;
       //FILTRA VENDEDOR
       FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
       DMServ.TOrd.Edit;
       //INFORMA CODIGO DO VENDEDOR
       DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger:=DMPESSOA.VWFuncionario.fieldByName('COD_FUNC').AsInteger;
       //INFORMA CODIGO DO RESPONSÁVEL
       DMServ.TOrd.FieldByName('COD_FUNCIONARIO').AsInteger:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
       //INFORMA CODIGO DA LOJA
       DMServ.TOrd.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       //INFORMA FORMA DE PAGAMENTO
       DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
       DMServ.TOrd.FieldByName('observacao').AsString:=MObs.Lines.Text;
       DMServ.TOrd.FieldByName('OBSORDEM').AsString:=MObsOrdem.Lines.Text;
       DMServ.TOrd.FieldByName('box').AsString:=DBBox.Text;
       DMServ.TOrd.FieldByName('contato').AsString:=EdContatoCliente.Text;              
       //BOX
       //XTabela.FieldByName('BOX').AsString:=EdContatoCliente.Text;
       //CONTATO NO CLIENTE
       //XTabela.FieldByName('CONTATO').AsString:=EdContatoCliente.Text;
       //INICIA PROCESSO PARA GRAVAR TABELAS

       //GRAVA TOTAIS
       DMServ.TOrd.FieldByName('TOTORD').AsCurrency:=EdValorOrd.ValueNumeric;
       DMServ.TOrd.FieldByName('TOTPROD').AsCurrency:=EdtotalProd.ValueNumeric;
       DMServ.TOrd.FieldByName('TOTSERV').AsCurrency:=EdTotalserv.ValueNumeric;
       DMServ.TOrd.FieldByName('TOTDESP').AsCurrency:=EdTotDesp.ValueNumeric;
       DMServ.TOrd.FieldByName('DESCONTO').AsCurrency:=EdDescTOrdem.ValueNumeric;
       DMServ.TOrd.FieldByName('DESCPROD').AsCurrency:=EdDescTProd.ValueNumeric;
       DMServ.TOrd.FieldByName('DESCSERV').AsCurrency:=EdDescTServ.ValueNumeric;
       //Informa Situação do pedido
		If FMenu.XTIPOBOLTO<>'OSABERTA' Then
       	DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
       DMServ.TOrd.FieldByName('EDIT').AsString := '0';
       If (CBVENDABALCAO.Checked=true) and (DMServ.TOrd.FieldByName('BOX').AsString='')
       Then Begin
           DMServ.TOrd.FieldByName('BOX').AsString:='-1';
           DBBox.Text:='-1';
       End;
       If (CBVENDABALCAO.Checked=true) Then
           DMServ.TOrd.FieldByName('LOCALAT').AsString:='BALCÃO';



       DMServ.TOrd.Post;
        //ALEX: 13/05/2009 - O TRECHO ABAIXO FOI COMENTADO  PEDIDO DA MERCESCAN
        //COMENTAR PAR MERCESCAN
       If (XCOD_EQUIPAMENTO > 0)
       Then Begin
           //verifica se o equipamento selecionado pertence ao cliente selecionado
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add(' select * from equipamento where equipamento.cod_equipamento=:codigo ');
           DMServ.TAlx1.ParamByName('codigo').AsString := DMServ.TOrd.FieldByName('cod_equipamento').AsString;
           DMServ.TAlx1.Open;
           If NOT DMServ.TAlx1.IsEmpty
           Then Begin
           	If CBVENDABALCAO.Checked=False
               Then Begin
                   If (DMServ.TAlx1.FieldByName('cod_cliente').AsString<> IntToStr(XCOD_CLIENTE)) and ((DMServ.TAlx1.FieldByName('cod_cliente').AsString<>'') or (DMServ.TAlx1.FieldByName('cod_cliente').AsString<>'0'))
                   Then Begin
                       Mensagem('   A T E N Ç Ã O   ','O Equipamento selecionado na ordem não corresponde com o cliente selecionado. Altere por favor!','',1,1,false,'I');
                       FrmCliente.EDCodigo.SetFocus;
                       Exit;
                   End;
               End;
           End
           Else Begin
               Mensagem('   A T E N Ç Ã O   ','O Equipamento selecionado na ordem não foi encontrado','',1,1,false,'I');
               Exit;
           End;
       End;
       //Jônatas 27/06/2013 - Gravar as placas adicionais
       DMServ.TAlx2.Close;
       DMServ.TAlx2.SQL.Clear;
       DMServ.TAlx2.SQL.Add('UPDATE ordem');
       DMServ.TAlx2.SQL.Add(' SET ordem.placa2=:PLACA2 , ordem.placa3=:PLACA3');
       DMServ.TAlx2.SQL.Add(' WHERE ordem.numero=:NUMERO_ORDEM');
       DMServ.TAlx2.ParamByName('NUMERO_ORDEM').AsString:=XNumOrdem;
       DMServ.TAlx2.ParamByName('PLACA2').AsString:=EdPlaca2.Text;
       DMServ.TAlx2.ParamByName('PLACA3').AsString:=EdPlaca3.Text;
       DMServ.TAlx2.ExecSQL;

       
       Try
          DMServ.IBT.CommitRetaining;
       Except
          DMServ.IBT.RollbackRetaining;
       End;

       //Atualiza View da tela de Consulta
       AtualizaGridConsulta('ORIGEM');

       PCadastro.Visible:=False;
       PConsulta.Visible:=true;
       PConsulta.BringToFront;
       //EdNome.SetFocus;
       //habilita o botão "X" de fechar para que o usuário possa fechar a tela
       BtnFecha.Visible:=True;

       XEstado:='';

end;
//click em cancelar
procedure TFOrdemMec.BtnCancelarClick(Sender: TObject);
begin
    FMenu.XTIPOBOLTO:='';
    FiltraSlave;
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
   If ControlAccess('EXCORD', 'M')=False Then
  		Exit;

   FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '');

   if  DMSERV.TOrd.IsEmpty then begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM JÁ FOI REMOVIDA.','',1,1,false,'I');
       AtualizaGridConsulta('');
       Exit;
   end;


   XCOD_ORDEM:=XView.FieldByName('COD_ORDEM').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
   If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM ESTÁ SENDO USADA NO MOMENTO.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       AtualizaGridConsulta('');
       Exit;
   End
   Else Begin
       DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('EDIT').AsString := '1';
       DMServ.TOrd.Post;
       DMServ.TOrd.ApplyUpdates;
       DMServ.IBT.CommitRetaining;
   End;

  	If (DMSERV.WOrdem.FieldByName('STATUS').AsString<>'TERMINADA') AND (DMSERV.WOrdem.FieldByName('STATUS').AsString<>'FECHADA')
   Then Begin //se passar pelas restrições de apagamento da ordem
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'DESEJA APAGAR A ORDEM DE SERVIÇO '+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   	Then Begin

       	//Filtra registros do pedido
       	FiltraSlave;
           //VERIFICA SE EXISTEM ITENS NA ORDEM, ELA SOMENTE PODERÁ SER APAGADA SE ESTIVER SEM ITENS
			If (Not DMESTOQUE.TSlave.IsEmpty) or (Not DMESTOQUE.TDesp.IsEmpty) or (Not DMESTOQUE.TSlaveServ.IsEmpty)
       	Then Begin
				Mensagem('OPÇÃO BLOQUEADA', 'ANTES DE REMOVER ESTA ORDEM É NECESSÁRIO REMOVER TODOS OS PRODUTOS E SERVIÇOS DA ORDEM '+'Nº '+XView.FieldByName('NUMERO').AsString+'.', '', 1, 1, False, 'a');
               DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('EDIT').AsString := '0';
               DMServ.TOrd.Post;
               DMServ.TOrd.ApplyUpdates;
               DMServ.IBT.CommitRetaining;
               AtualizaGridConsulta('ORIGEM');
				Exit;
           End;

           //REGISTRA COMANDO DO USUARIO
           Try
               Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.TOrd.FieldByName('TOTORD').AsString);
           Except
           End;

			Try

	       		//Apaga ORDEM
				FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '');
				DMServ.TOrd.Delete;

          		//Confirma Tranzaçào
          		DMSERV.IBT.CommitRetaining;

          		//atualiza view
          		AtualizaGridConsulta('ORIGEM');
			Except
          		//caso não conseguiu executar as tranzações acima retorna as informações anteriores
          		DMSERV.IBT.RollbackRetaining
       	End;
   	End
       Else Begin
           DMServ.TOrd.Edit;
           DMServ.TOrd.FieldByName('EDIT').AsString := '0';
           DMServ.TOrd.Post;
           DMServ.TOrd.ApplyUpdates;
           DMServ.IBT.CommitRetaining;
           AtualizaGridConsulta('ORIGEM');
       End;
   End;
end;

//CLICK BOTAO CONSULTAR
procedure TFOrdemMec.BtnConsultarClick(Sender: TObject);
begin
	XCONTROLECONSULTA := true; //DJ 02/11/2009: Indica que esta acontecendo uma consulta

   LimpaCamposProd;
   LimpaCamposServ;

   // repassando valor do cidgo da ordem para variavel
   XCOD_ORDEM := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;
   XNumOrdem := DMServ.WOrdem.FieldByname('NUMERO').AsString;
   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   if  DMSERV.TOrd.FieldByName('STATUS').Asstring='FECHADO' then begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM JÁ FOI FECHADA.','',1,1,false,'I');
       AtualizaGridConsulta('ORIGEM');
       Exit;
   end;

   if  DMSERV.TOrd.IsEmpty then begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM JÁ FOI REMOVIDA.','',1,1,false,'I');
       AtualizaGridConsulta('ORIGEM');
       Exit;
   end;

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
   If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM ESTÁ SENDO USADA NO MOMENTO.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       AtualizaGridConsulta('ORIGEM');
       Exit;
   End
   Else Begin
       //DMServ.TOrd.Edit;
       //DMServ.TOrd.FieldByName('EDIT').AsString := '1'; //seta a ordem como em uso
      // DMServ.TOrd.Post;
      DMServ.TAlx1.Close;
      DMServ.TAlx1.SQL.Clear;
      DMServ.TAlx1.SQL.Add('update ordem set ordem.edit = :EDITAR');
      DMServ.TAlx1.SQL.Add('where ordem.cod_ordem = :COD');
      DMServ.TAlx1.ParamByName('EDITAR').AsInteger:=1;
      DMServ.TAlx1.ParamByName('COD').AsInteger:=XCOD_ORDEM;
      DMServ.TAlx1.ExecSQL;
      DMServ.IBT.CommitRetaining;
   End;

       If (XView.FieldByName('STATUS').AsString<>'FECHADO') OR (FMenu.XTIPOBOLTO='OSABERTA') //se a ordem ja não estiver fechada
       Then Begin
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
          XESTADO:='EDIT'; //recebe estado de edição da ordem de serviço

          //VERIFICA VENDA BALCÃO
          If DMServ.TOrd.FieldByName('localat').AsString='BALCÃO'  Then
               CBVENDABALCAO.Checked:=True
          Else
               CBVENDABALCAO.Checked:=False;

          //VERIFICA RESTRICOES DE USUARIO
          If ControlAccess('USAGARANT', '')=False
          Then Begin
               CBGarantia.Checked:=False;
               CBGarantia.Enabled:=False;
          End
          Else Begin
              CBGarantia.Enabled:=True;
          End;

          //cancela o botão "X" de fechar para que o usuário possa apenas gravar ou cancelar
          BtnFecha.Visible:=False;

          //filtra cliente para atribuir dados as variáveis e edits
          If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', XView.FieldByName('COD_CLIENTE').AsString, '')=True
          Then Begin
               XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
               FrmCliente.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
               FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               DMPESSOA.TCliente.Close;
               DMPESSOA.TCliente.SQL.Clear;
               DMPESSOA.TCliente.SQL.Add(' Select * from cliente where cliente.cod_cliente=:Codigo ');
               DMPESSOA.TCliente.ParamByName('Codigo').AsInteger:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
               DMPESSOA.TCliente.Open;
               If not DMPESSOA.TCliente.IsEmpty Then
                   EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
               Else
                   EdObsFinanceira.Text:='';
          End
          Else Begin
               XCOD_CLIENTE:=-1;
               FrmCliente.EDCodigo.Text:='';
               FrmCliente.EdDescricao.Text:='';
               EdObsFinanceira.Text:='';
          End;

          XCOD_FORMPAG:=DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
          //filtra forma de pagamento para atribuir valores para variáveis de controle e edits
          If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '')=True
          Then Begin
               XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
               FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
               FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XCOD_FORMPAG:=-1;
               FrmFormPag1.EDCodigo.Text:='';
               FrmFormPag1.EdDescricao.Text:='';
          End;

           XCOD_EQUIPAMENTO:= DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger;
           //se for MERCESCAN, aparece o formulario de busca pela placa do veículo
              // VERIFICA PRIMEIRO SE A ORDEM POSSUI EQUIPAMENTO
              If FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','COD_EQUIPAMENTO',IntToStr(XCOD_EQUIPAMENTO),'')= TRUE
              Then Begin
                   FBEquipPlaca.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
                   FBEquipPlaca.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;

                   XCOD_EQUIPAMENTO:= DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;

                   If DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> ''
                   Then Begin
                        lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
                   End
                   Else Begin
                        lbNumFrota.Caption := '';
                   End;

              End
              else begin
                  XCOD_EQUIPAMENTO:=-1;
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
          DMServ.TAlx1.ParamByName('PLACA').AsString:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
          DMServ.TAlx1.ParamByName('NUMORDEM').AsString:=XNumOrdem;
          DMServ.TAlx1.Open;
          If not DMServ.TAlx1.IsEmpty
          then begin
               EdPlaca2.Text:=DMServ.TAlx1.FieldByName('PLACA2').AsString;
               EdPlaca3.Text:=DMServ.TAlx1.FieldByName('PLACA3').AsString;
          end
          Else
          begin
               EdPlaca2.Text:='';
               EdPlaca3.Text:='';
          end;


          //atualiza o número da frota
          lbNumFrota.Repaint;

          //Informa outros valores
          DBNumOrd.Text:=DMServ.TOrd.FieldByName('NUMERO').AsString;
          EdtotalProd.ValueNumeric:=DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
          EdtotalServ.ValueNumeric:=DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;
          EdValorOrd.ValueNumeric:=DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;
          EdDescTOrdem.ValueNumeric:=DMServ.TOrd.FieldByName('DESCONTO').AsCurrency;
          EdDescTProd.ValueNumeric:=DMServ.TOrd.FieldByName('DESCPROD').AsCurrency;
          EdDescTServ.ValueNumeric:=DMServ.TOrd.FieldByName('DESCSERV').AsCurrency;
          //DJ 02/11/2009: Parametro aplicado no sistema, evita erro ao apresentar valores na consulta
          EdTotalOrd.ValueNumeric:=DMServ.TOrd.FieldByName('TOTORD').AsCurrency;
          EdValorOrd.ValueNumeric:=EdTotalOrd.ValueNumeric;

          MObs.Lines.Text:=DMServ.TOrd.FieldByName('observacao').AsString;
          MObsOrdem.Lines.Text:=DMServ.TOrd.FieldByName('OBSORDEM').AsString;
          DBBox.Text:=DMServ.TOrd.FieldByName('box').AsString;
          EdContatoCliente.Text:=DMServ.TOrd.FieldByName('contato').AsString;
          //seleciona items da ordem
          FiltraSlave;            

          If DMServ.TOrd.FieldByName('GARANTIA').AsString='1' Then
               CBGarantia.Checked:=True
          Else
               CBGarantia.Checked:=False;

          //VERIFICA QUAL O COMPONENTE DE BUSCA DE PRODUTO DEVE APARECER
          IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
          THEN BEGIN
                    TipoPesquisaProduto('');
          END;
          IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC'
          THEN BEGIN
               TipoPesquisaProduto('');
          End;
          IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
          THEN BEGIN
               TipoPesquisaProduto('');
          End;


          PConsulta.Visible := False;
          PCadastro.Visible := True;
          PCadastro.BringToFront;

          FrmCliente.EDCodigo.SetFocus;

       End
       Else Begin
           Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'PEDIDO FECHADO!'+#13+'NÃO É POSSÍVEL ALTERAR/CONSULTAR.', '', 1, 1, False, 'a');
           AtualizaGridConsulta('ORIGEM');
           Exit;
       End;

       EDCodFab.SetFocus;

   inherited;

end;

procedure TFOrdemMec.MEPLACAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If (shift=[ssCtrl]) and (key = 70) //CTRL+F
   Then Begin
      PInfoCliente.Top := (PConsulta.Height - PInfoCliente.PPrincipal.Height) div 2;
      PInfoCliente.left := (PConsulta.Width - PInfoCliente.PPrincipal.Width)  div 2;
      PInfoCliente.OnExit := LimpaInfoCliente;
      PInfoCliente.PesquisaPlaca(MEPLACA.Text);
      PInfoCliente.Visible := True;
       PInfoCliente.BringToFront;
      PInfoCliente.FrmCliente.EDCodigo.SetFocus;
      PInfoCliente.Repaint;
      Exit;
   end;
  If (shift=[ssCtrl]) then
      Exit;

   if (MEPLACA.SelLength > 0) And NOT (KEY = 8) and not (KEY = 13) and not (KEY = 27) then
   begin
       MEPLACA.Text := '';
   end;

   if (Length(MEPLACA.Text)= 3) AND NOT (KEY = 8) then BEGIN
       MEPLACA.Text := MEPLACA.Text+'-';
       MEPLACA.SelStart := 4;
   END;
end;
//modo pesquisa
procedure TFOrdemMec.SelecionarModoPesquisa(mostrar:Boolean; tipo:String);
begin
   if NOT mostrar
   then begin
       PPesquisa.SendToBack;
       PPesquisa.Visible := False;
       XTipoPes := '';
   end
   else begin
       PPesquisa.BringToFront;
       PPesquisa.Visible := True;

       XTipoPes := tipo;

       if tipo = 'CLIENTE'
       THEN BEGIN
           DBGridPesquisa.DataSource := DMPESSOA.DSALX;
           DBGridPesquisa.Columns.Items[0].FieldName := 'NOME';
           DBGridPesquisa.Columns.Items[1].FieldName := 'COD_INTERNO';
       END;
   end;
end;

procedure TFOrdemMec.PesquisaGrid(str:String);
begin
   if XTipoPes = 'CLIENTE'
   THEN BEGIN
       DMPESSOA.TALX.close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add('SELECT cliente.cod_pessoa,pessoa.cod_pessoa, cliente.cod_interno,pessoa.nome');
       DMPESSOA.TALX.SQL.Add(' FROM CLIENTE JOIN PESSOA ON cliente.cod_pessoa = pessoa.cod_pessoa');
       //DMPESSOA.WCliente.SQL.Add('left join  cidade ON pessoa.cod_cidade = cidade.cod_cidade');
       DMPESSOA.TALX.SQL.Add(' where (upper(NOME) like upper('+#39+str+'%'+#39+')) order by nome');
       DMPESSOA.TALX.Open;
       //FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'NOME', '', ' (upper(NOME) like upper('+#39+str+'%'+#39+'))')
   END;
end;
procedure TFOrdemMec.EDCliente1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   key2:Char;
   POS:INTEGER;
begin
  inherited;
   XContPes := '';

   If (shift=[ssCtrl]) and (key = 70) //CTRJ+F
   Then Begin
      PInfoCliente.Top := (PConsulta.Height - PInfoCliente.PPrincipal.Height) div 2;
      PInfoCliente.left := (PConsulta.Width - PInfoCliente.PPrincipal.Width)  div 2;
      PInfoCliente.OnExit := LimpaInfoCliente;
      PInfoCliente.PesquisaDescricao(EDCliente1.Text);
      PInfoCliente.Visible := True;
      PInfoCliente.BringToFront;
      PInfoCliente.FrmCliente.EDCodigo.SetFocus;
      PInfoCliente.Repaint;
      Exit;
   end;

   If (shift=[ssCtrl]) then
      Exit;

  if key = vk_return then BEGIN
       AtualizaGridConsulta('CLIENTE');
       EDCliente1.SelectAll;
       SelecionarModoPesquisa(FALSE, '');
   END
   else


       if key = vk_up then begin
          if PPesquisa.Visible then begin
            XContPes := 'UP';
            EDCliente1KeyPress(Sender, key2);

         end;
      end
      else
      if key = vk_down then begin

           if not PPesquisa.Visible then begin
               SelecionarModoPesquisa(true, 'CLIENTE');
               PesquisaGrid(EDCliente1.Text);
               pos := EDCliente1.SelStart;
               EDCliente1.Text := AntPesq;
               EDCliente1.SelStart := pos+1;

           end else begin
               XContPes := 'DOWN';
               EDCliente1KeyPress(Sender, key2);
           end;
      end
      else begin
           EDCliente1.Text := copy(EDCliente1.Text, 1,EDCliente1.SelStart);
           EDCliente1.SelStart := Length(EDCliente1.Text);
      end;


  // end;


end;

procedure TFOrdemMec.PPesquisaExit(Sender: TObject);
begin
  inherited;
   SelecionarModoPesquisa(false,'');
end;
function TFOrdemMec.ProxPesq:String;
begin

   Result := '';
   if XTipoPes = 'CLIENTE'
   THEN BEGIN
       DMPESSOA.TALX.Next;
       Result := DMPESSOA.TALX.FieldByName('NOME').AsString;
   END;
end;

function TFOrdemMec.AntPesq:String;
begin
   Result := '';
   if XTipoPes = 'CLIENTE'
   THEN BEGIN
       DMPESSOA.TALX.Prior;
       Result := DMPESSOA.TALX.FieldByName('NOME').AsString;
   END;
end;

function TFOrdemMec.RetNomeGrid:String;
begin
   Result := '';
   if XTipoPes = 'CLIENTE'
   THEN BEGIN
       Result := DMPESSOA.TALX.FieldByName('NOME').AsString;
   END;
end;
procedure TFOrdemMec.EDCliente1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if PPesquisa.Visible then begin
       if XContPes = '' then
           PesquisaGrid(Copy(EDCliente1.Text,1, EDCliente1.SelStart));
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
  PmRelatorio.Popup(Left+PConsulta.left+PBotoesConsulta.left+ BtnRelatorio.Left, top+PConsulta.Top+PBotoesConsulta.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;
//click comprovante de abertura popup
procedure TFOrdemMec.CompdeAbertura1Click(Sender: TObject);
Var
	ContParc, Cod_Tmp: Integer;
   Xdesc1, Xdesc2, Xdesc3: String;
begin
  inherited;
  // FSDSRel.DataSet := DMESTOQUE.TSlave;
  // FSRel.Dataset := FSDSRel;

  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELABERTORD', 'M')=False Then
  		Exit;

   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

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
   DMServ.Alx.ParamByName('codigo').AsInteger:=DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsInteger;
   DMServ.Alx.Open;
   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '')=False
   Then Begin
   	MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
		Exit;
   End;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False
   Then Begin
   	MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
   	Exit;
   End;
   //FILTRA PESSOA JURIDICA CASO EXISTA UMA PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TPessoaj, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');


   //FILTRA CIDADE DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA ESTADO DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA ORDEM PARA IMPRESSÃO
   If FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsString, '')=False Then
   	Exit;

   //FILTRA EQUIPAMENTO PARA IMPRESSÃO
   If DMSERV.WOrdem.FieldByNAme('COD_EQUIPAMENTO').AsString<>'' Then
      FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.WOrdem.FieldByNAme('COD_EQUIPAMENTO').AsString, '');


   //FILTRA FORMA DE PAGAMENTO
   FiltraTabela(DMFINANC.TFormPag , 'FORMPAG', 'COD_FORMPAG', DMSERV.TOrd.FieldByNAme('COD_FORMPAG').AsString, '');

   //FILTRA FUNCIONARIO RESPONSAVEL
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMSERV.WOrdem.FieldByNAme('COD_FUNCIONARIO').AsInteger) , '');

   XCOD_ORDEM:=DMSERV.WOrdem.fieldbyname('COD_ORDEM').AsInteger;

   //FILTRA PRODUTOS, SERVIÇOS E DESPESAS
	FiltraSlave;


   // se a atividade for EQUIPE, eh selecionado as despesas
   If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE') and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='6')
   Then Begin
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add('select despadic.cod_gerador, despadic.despesa, equipe.cod_equipe, equipe.descricao from despadic');
       DMESTOQUE.Alx4.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
       DMESTOQUE.Alx4.SQL.Add('where despadic.cod_gerador = :codigo');
       DMESTOQUE.Alx4.ParamByName('codigo').AsInteger := XCOD_ORDEM;
       DMESTOQUE.Alx4.Open;
   End;


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

   Cod_Tmp:=1;
   If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
   Then Begin
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
       DMMACS.TMP.FieldByName('DESC1').AsString:='À Vista';
       if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 10 then
       begin
           DMMACS.TMP.FieldByName('DESC2').AsString:=DMServ.TOrd.FieldByName('TIPOPAG').AsString;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMServ.TOrd.FieldByName('totord').AsCurrency;
       end
       else begin
           DMMACS.TMP.FieldByName('OBS').AsString:=DMServ.TOrd.FieldByName('TIPOPAG').AsString;
           DMMACS.TMP.FieldByName('DESC3').AsString:=FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('totord').AsCurrency);
       end;
       DMMACS.TMP.Post;
       Cod_Tmp:=Cod_Tmp+1;
	End
   Else Begin
       //insere sql necessária para filtrar parcelas da conta
       DMMacs.TALX.Close;
       DMMacs.TALX.sql.Clear;
       DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
       DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'ORD'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
       DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:= XCOD_ORDEM;
       DMMacs.TALX.Open;

       //Assume parcelas em campo blob de loja para após ser passado em relatóri
       Xdesc1:='';
       Xdesc2:='';
       Xdesc3:='';

       DMMACS.TALX.First;
       ContParc:=0;
       while not DMMACS.TALX.Eof do
       Begin
           //Paulo 28/06/2011: Para armazenar as parcelas somente p/ o modelo 10
          // if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 then
          // begin
          //     Xdesc1:=Xdesc1+DMMacs.TALX.FieldByName('dtvenc').AsString+#13;
          //     Xdesc2:=Xdesc2+DMMacs.TALX.FieldByName('cobranca').AsString+#13;
          //     Xdesc3:=Xdesc3+FormatFloat('#,###0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+#13;
          // end
         //  else begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
               DMMACS.TMP.FieldByName('DESC1').AsString:=DMMacs.TALX.FieldByName('dtvenc').AsString;
               DMMACS.TMP.FieldByName('DESC2').AsString:=DMMacs.TALX.FieldByName('cobranca').AsString;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMMacs.TALX.FieldByName('valor').AsCurrency;
               DMMACS.TMP.Post;
               Cod_Tmp:=Cod_Tmp+1;
         //  end;
           DMMACS.TALX.Next;
           ContParc:=ContParc+1;
       End;
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
   End;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
   DMMACS.TMP.Open;

   //if XComp2Vias = True then
   //	Exit;

   If DMMacs.TLoja.FieldByName('IMPMATRICIAL').AsString<>'1'
   Then Begin
       //EFETUA CONTROLE PARA VERIFICAR QUAL COMPROVANTE DEVE SER IMPRESSO
        If DMServ.TOrd.FieldByName('LOCALAT').AsString<>'BALCÃO' Then
        begin
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 THEN
           begin
              CompAbertura2vias1Click(Sender);
              Exit;
           end;
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 11 THEN
              FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem11.frf');
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 12 THEN
              FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem12.frf');
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 13 THEN
                QrAbertOrdem13.Preview;
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 16 THEN
                QrAbertOrdem16.Preview;
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 14
           Then Begin
               DMESTOQUE.TSlave.Last;
				DMESTOQUE.TDesp.Last;
           	If (DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount)>12 Then
                	QrAbertOrdem14Completo.Preview
               Else
               	QrAbertOrdem14MeiaPagina.Preview;

           End;
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 15
           Then Begin
               DMESTOQUE.TSlave.Last;
				DMESTOQUE.TDesp.Last;
           	If (DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount)>12 Then
                	QrAbertOrdem15Completo.Preview
               Else
               	QrAbertOrdem15MeiaPagina.Preview;
           End;

           if (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 10) and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 11)  and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 12) and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 13)  and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 14)   and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 15) THEN
				if (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 16) Then
              		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem6.frf');
        end
        Else begin
           if (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10) or (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 17) THEN
           begin
               CompAbertura2vias1Click(Sender);
              	Exit;
           end;
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 11 THEN
              FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem11.frf');
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 12 THEN
              FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem12b.frf');
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 13 THEN
                QrAbertOrdem13.Preview;
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 16 THEN
                QrAbertOrdem13.Preview;

           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 14
           Then Begin
               DMESTOQUE.TSlave.Last;
				DMESTOQUE.TDesp.Last;
           	If (DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount)>12 Then
                	QrAbertOrdem14Completo.Preview
               Else
               	QrAbertOrdem14MeiaPagina.Preview;

           End;
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 15
           Then Begin
               DMESTOQUE.TSlave.Last;
				DMESTOQUE.TDesp.Last;
           	If (DMESTOQUE.TSlave.RecordCount + DMESTOQUE.TDesp.RecordCount)>12 Then
                	QrAbertOrdem15Completo.Preview
               Else
               	QrAbertOrdem15MeiaPagina.Preview;
           End;
           if (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 10) and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 11)  and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 12) and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 13) and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 14) and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 15) THEN
           	if (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 16) and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 17) Then
              		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAbertOrdem6b.frf');
        end;
   End
   Else Begin
       ImpOrdCanvas('ABERTURA');
   End;
   FSRel.ShowReport;
end;
//click popup garantia
procedure TFOrdemMec.Garantia1Click(Sender: TObject);
begin
  inherited;
  // dados da loja
   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

   //dados da empresa
   FiltraTabela(DMMACS.TEmpresa,'EMPRESA','COD_EMPRESA',DMMACS.TLoja.FieldByname('cod_empresa').AsString,'');

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
   XCodPedidoGerador :Integer; // - 16/03/2009: guarda codigo do pedido
   XFlag : Boolean; // - 13/03/2009: verifica se deve imprimir NF depois do cupom conforme configurado em caixa
   XNumAuxECF:String; // - 16/03/2009: armazena numero auxiliar cupom
begin
  inherited;

  // - 16/03/2009: armazena codigo da ordem
  XCodPedidoGerador := XView.FieldByName('COD_ORDEM').AsInteger;

  If XView.FieldByName('status').AsString<>'FECHADO'
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário que o pedido esteja fechado antes da impressão fiscal. Antes de fechar recomendamos que confira todas as informações do pedido.', '', 1, 1, False, 'a');
		Exit;
   End;

   // faz as verificações da nota fiscal e arquivo de relatorio
   If AnaliseDados('OS', DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger) = false Then
       Exit;

  	If FiltraTabela(DMServ.TOrd, 'ordem', 'COD_ordem', XView.FieldByName('COD_ORDEM').AsString, '')=True
   Then Begin

       If (DMServ.TOrd.FieldByName('FISCO').AsString<>'ECF') AND (DMServ.TOrd.FieldByName('FISCO').AsString<>'NF')AND (DMServ.TOrd.FieldByName('FISCO').AsString<>'ECF/NF')
       Then Begin
			If Mensagem('A T E N Ç Ã O', 'Deseja realmente Imprimir Documento Fiscal para o pedido'+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   		Then Begin

                          //    ATENÇÃO !!!
               //  QUALQUER MODIFICAÇÃO NO CÓDIGO ABAIXO DEVERÁ SER ALTERADO TBM QUANDO FOR FECHADO UMA ORDEM E IMPRESSO O FISCAL


           	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');

               XFlag := True; // - 13/03/2009: deixar como true caso não for ECF poderá ser emitido NF igual

               // - 13/03/2009: add para impressoa de cupom fiscal
               If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
               Then Begin
   				// - 13/03/2009: Imprime Cupom Fiscal
   				If ECF(XView.Fieldbyname('COD_ORDEM').AsInteger, 'ORDEM')=True
               	Then Begin
       				/// - 13/03/2009: REGISTRA COMANDO DO USUARIO
       				Registra('ORDEM DE SERVIÇO', 'ECF',  XView.FieldByName('dtabert').AsString, 'Nº '+XView.FieldByName('NUMERO').AsString, 'Valor: '+XView.FieldByName('total').AsString);
               	End;

                   // - 13/03/2009: se em caixa estiver configurado para emitir NF apos ECF
                   If DMCAIXA.TCaixa.FieldByName('EMITNF').AsString='1'
                   Then Begin
                     If Mensagem('A T E N Ç Ã O', 'Deseja Imprimir Nota Fiscal para o pedido'+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 3
                     Then Begin
                            XFlag := False;
                     End;
                   End;
               End;

               // - 13/03/2009: verificação ninja pra imprimir NF
               If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF') or ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF') And (XFlag)))
               Then Begin
                   //Atualiza o Valor da NF
                   FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
                   //VERIFICA SE JÁ EXISTE ALGUM DOCUMENTO IMPRESSO COM O MESMO NUMERO DE NOTA
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add('  select * from docfisord ');
                   DMMACS.TALX.SQL.Add('   where docfisord.numdocfis=:CODIGO ');
                   DMMACS.TALX.ParamByName('CODIGO').AsString:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
                   DMMACS.TALX.Open;
                   If Not DMMACS.TALX.IsEmpty
                   Then Begin
                       MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                       Exit;
                   End;
                   //VERIFICA C JAH EXISTE DOCUMENTO IMPRESSO EM COMPRAS
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add(' select * from docfis');
                   DMMACS.TALX.SQL.Add(' where (docfis.numdocfis=:CODIGO)   AND (docfis.empemit='+#39'1'+#39+')  ');
                   DMMACS.TALX.ParamByName('CODIGO').AsString:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
                   DMMACS.TALX.Open;
                   If Not DMMACS.TALX.IsEmpty
                   Then Begin
                       MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                       Exit;
                   End;

                    FMenu.TIPOREL := 'NF';
                   //Imprime NOTA Fiscal
					If Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?'  , '', 2, 3, False, 'c')= 2
                   Then Begin
                       If NFOS(DMServ.TOrd.Fieldbyname('COD_ORDEM').AsInteger)=True
                       Then Begin

                           //REGISTRA COMANDO DO USUARIO
                           Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº '+XView.FieldByName('NUMERO').AsString, 'Valor: '+XView.FieldByName('total').AsString);


                           // - 16/03/2009:     qnd faz RecalFiscal em OS na função da NF tem mais procedimentos relacionados a impressao de ECF/NF


                           // - 16/03/2009: se td der certo marcar como ECF/NF o Fisco
                                                // e se em caixa estiver configurado para emitir NF apos ECF
                           If (DMCAIXA.TCaixa.FieldByName('EMITNF').AsString = '1')
                           Then Begin
                              Try
                                 // - 16/03/2009: filtra ordem
                                 DMServ.TOrd.Close;
                                 DMServ.TOrd.SQL.Clear;
                                 DMServ.TOrd.SQL.Add('select * from ordem');
                                 DMServ.TOrd.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
                                 DMServ.TOrd.ParamByName('OLD_COD_ORDEM').AsInteger := XCodPedidoGerador;
                                 DMServ.TOrd.Open;

                                 // - 16/03/2009: verificar realmente se foi impresso o ECF do pedido
                                 If (DMServ.TOrd.FieldByName('FISCO').AsString = 'ECF/NF')
                                 Then Begin

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

                                 End;
                              Except

                               End;
                           End;

                           //INCREMENTA Nº NF
                           Try
                               DMMACS.TEmpresa.Edit;
                               DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger+1;
                               DMMACS.TEmpresa.Post;
                               DMMACS.Transaction.CommitRetaining;
                           Except
                               MessageDlg('Não foi possível atualizar o Nº da NF. Por favor faça isso manualmente.', mtWarning, [mbOK], 0);
                               DMMACS.Transaction.RollbackRetaining;
                           End;
                       End;
                   End;
               End;
               AtualizaGridConsulta('ORIGEM');
           End;
       End
       Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Este pedido já passou por uma impressão fiscal!', '', 1, 1, False, 'a');
			Exit;
       End;
   End;
end;
 //click botao fechar
procedure TFOrdemMec.BtnFechaPedClick(Sender: TObject);
begin
  inherited;
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('FECHORD', 'M')=False Then
  		Exit;

   // repassando valor do cidgo da ordem para variavel
   XCOD_ORDEM := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
   If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM ESTÁ SENDO USADA NO MOMENTO.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       Exit;
   End;

   If DMServ.TOrd.FieldByName('STATUS').AsString <> 'ABERTO'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM PRESCISA ESTAR EM ABERTO PARA PODER SER FECHADA.','',1,1,false,'I');
       Exit;
   End;

   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

  	If XView.IsEmpty
   Then Begin
		Mensagem('A T E N Ç Ã O', 'Não existe nenhuma ordem a ser fechada!', '', 1, 1, False, 'a');
       Exit;
   End;

   If XView.FieldByName('TOTAL').AsCurrency=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Esta ordem não contém produto ou serviços. Por isso não pode ser fechada!', '', 1, 1, False, 'i');
       Exit;
   End;

  	If XView.FieldByName('STATUS').AsString<>'FECHADO'
   Then Begin
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente fechar a ordem de serviço '+XView.FieldByName('NUMERO').AsString, '', 2, 3, False, 'C')=2
       Then Begin

           // BUSCANDO DADOS DA ORDEM
           FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMServ.WOrdem.FieldByname('cod_ordem').AsString,'');

           // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
           If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
           Then Begin
               Mensagem('    A T E N Ç Ã O   ','A ordem está sendo usada no momento.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
               Exit;
           End
           Else Begin
               DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('EDIT').AsString := '1';
               DMServ.TOrd.Post;
               
               DMServ.IBT.CommitRetaining;
           End;

           CBGeraFinanceiro.Checked:=False;
           CBGeraFinanceiro.Visible:=False;

           CBPagamento.Text := 'Carteira';

           PFinanceiro.Visible:=True;
           PFinanceiro.BringToFront;



           //LIMPA VALORES ANTIGOS
	   	   	FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '');
           If ControlAccess('GERAFINANC', '')=True Then
               CBGeraFinanceiro.Visible:=true;

      		//FORMA DE PAGAMENTO
      		XCOD_FORMPAG:=DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
 	   		If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '')=True
      		Then Begin
				XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
  		    	FrmFormPag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
       		    FrmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      		End
      		Else Begin
				XCOD_FORMPAG:=-1;
               FrmFormPag.EDCodigo.Text:='';
       		    FrmFormPag.EdDescricao.Text:='';
      		End;

           XCOD_CONTA:=-1;
           FrmConta.EdDescricao.Text:='';
           FrmConta.EDCodigo.Text:='';
           XCOD_CONTASERV:=-1;
           FrmContaServ.EdDescricao.Text:='';
           FrmContaServ.EDCodigo.Text:='';
           DBDATAENTREGA.Clear;
           DBDATAENTREGA.Text:=DateTostr(Date());
           DBHORAENTREGA.Text:=TimeTostr(Time());
           If DMServ.TOrd.FieldByName('DTFECH').AsString<>'' Then
               EdDtFech.Text:=DMServ.TOrd.FieldByName('DTFECH').AsString
           Else
               EdDtFech.Text:=DateToStr(Date());
           FrmFormPag.EDCodigo.SetFocus;

           FrmFormPag.Refresh;
          FrmConta.EDCodigo.SetFocus;
          FrmContaServ.EDCodigo.SetFocus;
          TravarPaines(True);
          CBPagamento.SetFocus;
          FPFinanceiro.Refresh;

          
       End;


	End;

end;


// travar paines principais
procedure TFOrdemMec.TravarPaines(oi:boolean);
begin

   if oi
   then begin
       PConsulta.Enabled := False;
       PCadastro.Enabled := False;
   end
   else begin
       PConsulta.Enabled := True;
       PCadastro.Enabled := True;
   end;

end;
//click botao buscar forma de pagamento no painel financeiro
procedure TFOrdemMec.FrmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;
   If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCOD_FORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   End;
end;
//click botao limpar forma de pagamento no painel financeiro
procedure TFOrdemMec.FrmFormPagBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCOD_FORMPAG:=-1;
   FrmFormPag.EDCodigo.Text:='';
   FrmFormPag.EdDescricao.Text:='';
end;

// click botao cancelar  painel financeiro
procedure TFOrdemMec.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
   PFinanceiro.Visible:=False;
   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;

   TravarPaines(False);

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString,'');

   // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
   DMServ.TOrd.Edit;
   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
   DMServ.TOrd.Post;
   DMServ.IBT.CommitRetaining;
end;
// key press  codigo pagamento painel financeiro
procedure TFOrdemMec.FrmFormPagEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key=VK_RETURN
   Then Begin
       if FrmFormPag.EDCodigo.Text<>''
       Then Begin
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', FrmFormPag.EDCodigo.Text, '')
           Then Begin
		       XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
              FrmFormPag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
              FrmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
		       XCOD_FORMPAG:=-1;
              FrmFormPag.EDCodigo.Text:='';
              FrmFormPag.EdDescricao.Text:='';
           End;
       End;
   End;
end;
//exit combo pagamento
procedure TFOrdemMec.CBPagamentoExit(Sender: TObject);
begin
  inherited;
   // se o pagamento for cartão abre as contas correntes
   If CBPagamento.Text = 'Cartão'
   Then Begin
   	If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '')
       Then Begin
           XCOD_FORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           FrmFormPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
           FrmFormPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
       End;
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       PBanco.Visible := true;
       PBanco.BringToFront;
       DBGCTA.SetFocus;
   End;

   FrmFormPagExit(sender);
end;

//key down grid dos bancos
procedure TFOrdemMec.DBGCTAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   // se pressionado ENTER
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCO:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           XCOD_CONTABANCO:=-1;

       PBanco.Visible:=False;
       PBanco.SendToBack;
       FrmConta.EDCodigo.SetFocus;
   End;

   // se rpessinado ESC
   If Key = VK_ESCAPE
   Then Begin
       PBanco.Visible := false;
       PBanco.SendToBack;
   End;
end;

//key press conta lançamento produtos
procedure TFOrdemMec.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
	Oper:Char;
begin
  inherited;
	If Key = #13
   Then Begin
      	Oper:='C';
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCOD_CONTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCOD_CONTA:=-1;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCOD_CONTA:=-1;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
end;

//botao consulta conta lançamento produtos
procedure TFOrdemMec.FrmContaBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   Oper:='C';

   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCOD_CONTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
   FrmConta.Refresh;
end;
//limpar conta lançamento produtos
procedure TFOrdemMec.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCOD_CONTA:=-1;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
   FrmConta.Refresh;
end;
//key press campo codigo conta laçamento serviço
procedure TFOrdemMec.FrmContaServEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
	Oper:Char;
begin
  inherited;
	If Key = #13
   Then Begin
      	Oper:='C';
 		If FrmContaServ.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmContaServ.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCOD_CONTASERV:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmContaServ.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCOD_CONTASERV:=-1;
		      	FrmContaServ.EdDescricao.Text:='';
		      	FrmContaServ.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCOD_CONTASERV:=-1;
	      	FrmContaServ.EdDescricao.Text:='';
	      	FrmContaServ.EDCodigo.text:='';
       End;
   End;
end;

//key press botao consulta conta laçamento serviço
procedure TFOrdemMec.FrmContaServBTNOPENClick(Sender: TObject);
   Var
	Oper: Char;
begin
  inherited;
   Oper:='C';
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCOD_CONTASERV:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmContaServ.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
   FrmConta.Repaint;
   FrmConta.Refresh;
end;

//key press limpar conta laçamento serviço
procedure TFOrdemMec.FrmContaServBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCOD_CONTASERV:=-1;
   FrmContaServ.EDCodigo.Text:='';
   FrmContaServ.EdDescricao.Text:='';
   FrmConta.Refresh;
end;
//click botao ok no painel financeiro
procedure TFOrdemMec.BtnMoedaOKClick(Sender: TObject);
var
   XCodPedidoGerador :Integer; // - 16/03/2009: guarda codigo do pedido
   XFlag : Boolean; // - 13/03/2009: verifica se deve imprimir NF depois do cupom conforme configurado em caixa
   XNumAuxECF:String; // - 16/03/2009: armazena numero auxiliar cupom
begin
  inherited;
  	//Bloqueia opção a vista para determinadas formas de pagamento
	If ((CBPagamento.Text<>'Carteira') and (CBPagamento.Text<>'Chq. Terc.')  and (CBPagamento.Text<>'Banco') and (CBPagamento.Text<>'Crédito') and (CBPagamento.Text<>'Cartão')) and (FrmFormPag.EdDescricao.tEXT='À VISTA')
	Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'A forma de pagamento '+CBPagamento.Text+' não permite fecharo pedido como À Vista!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
   End;
   //valida quanto a forma de pagamento
	If CBPagamento.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe se o pagamento será feito em carteira ou cheque!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
   End;

   //valida quanto a data de entrega
	If DBDataEntrega.Text='  /  /    '
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a data de entrega do equipamento/Veículo ao cliente!', '', 1, 1, False, 'i');
       DBDataEntrega.SetFocus;
       Exit;
   End;

   //valida quanto a hora de entrega
	If DBHoraEntrega.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a hora de entrega do equipamento/Veículo ao cliente!', '', 1, 1, False, 'i');
       DBHoraEntrega.SetFocus;
       Exit;
   End;

   //valida quanto a Conta
	If XCOD_CONTA=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmConta.EDCodigo.SetFocus;
       Exit;
   End;

   //Valida Quanto a conta
   If Not FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', '', '', 'Where (COD_FILIAL='+FMenu.LCODEMPRESA.Caption+') And (CLASSIFICACAO='+FrmConta.EDCodigo.Text+')')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta válida para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmConta.EDCodigo.SetFocus;
       Exit;
   End;

   //valida quanto a forma de pagamento
	If XCOD_FORMPAG=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma forma de pagamento para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmFormPag.EDCodigo.SetFocus;
       Exit;
   End;

   //Paulo 14/03/2011: Verifica se gera financeiro ou não(para controle de fatura)
   if CBGeraFinanceiro.Checked = True then
   begin
       XFatOrd:=True;
   end
   else begin
       XFatOrd:=False;
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
	 XCOD_ORDEM:=DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
   FechaOrd(DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, EdDtFech.Text);
   //End;

     //  QUALQUER MODIFICAÇÃO NO CÓDIGO ABAIXO DEVERÁ SER ALTERADO NO BOTÃO FISCAL TBM

    XFlag := True; // - 13/03/2009: deixar como true caso não for ECF poderá ser emitido NF igual

   // - 13/03/2009: add para impressoa de cupom fiscal
   If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
   Then Begin
       // - 13/03/2009: Imprime Cupom Fiscal
       If ECF(XCodPedidoGerador, 'ORDEM')=True
       Then Begin
           /// - 13/03/2009: REGISTRA COMANDO DO USUARIO
           Registra('ORDEM DE SERVIÇO', 'ECF',  XView.FieldByName('dtabert').AsString, 'Nº '+XView.FieldByName('NUMERO').AsString, 'Valor: '+XView.FieldByName('total').AsString);
       End;

       // - 13/03/2009: se em caixa estiver configurado para emitir NF apos ECF
       If DMCAIXA.TCaixa.FieldByName('EMITNF').AsString='1'
       Then Begin
         If Mensagem('A T E N Ç Ã O', 'Deseja Imprimir Nota Fiscal para o pedido'+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 3
         Then Begin
                XFlag := False;
         End;
       End;
   End;

   // - 13/03/2009: verificação p/ imprimir NF
   If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') or((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF') And (XFlag)))
   Then Begin
       //Atualiza o Valor da NF
       FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

       FMenu.TIPOREL := 'NF';
       //Imprime NOTA Fiscal
		If Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?'  , '', 2, 3, False, 'c')= 2
       Then Begin
       	FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
           AbreFiscal;
           //If NFOS(XCodPedidoGerador)=True
           //Then Begin

               //REGISTRA COMANDO DO USUARIO
               Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº '+XView.FieldByName('NUMERO').AsString, 'Valor: '+XView.FieldByName('total').AsString);


               // - 16/03/2009:     qnd faz RecalFiscal em OS na função da NF tem mais procedimentos relacionados a impressao de ECF/NF


               // - 16/03/2009: se td der certo marcar como ECF/NF o Fisco
                                    // e se em caixa estiver configurado para emitir NF apos ECF
               {If (DMCAIXA.TCaixa.FieldByName('EMITNF').AsString = '1')
               Then Begin
                  Try
                     // - 16/03/2009: filtra ordem
                     DMServ.TOrd.Close;
                     DMServ.TOrd.SQL.Clear;
                     DMServ.TOrd.SQL.Add('select * from ordem');
                     DMServ.TOrd.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
                     DMServ.TOrd.ParamByName('OLD_COD_ORDEM').AsInteger := XCodPedidoGerador;
                     DMServ.TOrd.Open;

                     // - 16/03/2009: verificar realmente se foi impresso o ECF do pedido
                     If (DMServ.TOrd.FieldByName('FISCO').AsString = 'ECF/NF')
                     Then Begin

                       // - 16/03/2009: recuperar numero fiscal  e  passar para numfiscal auxiliar

                       XNumAuxECF := DMServ.TOrd.FieldByName('NUMFISCALAUX').AsString;

                       {DMServ.TOrd.Close;
                       DMServ.TOrd.SQL.Clear;
                       DMServ.TOrd.SQL.Add('update ORDEM set FISCO = :FISCO');
                       DMServ.TOrd.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
                       DMServ.TOrd.ParamByName('OLD_COD_ORDEM').AsInteger := XCodPedidoGerador;
                       DMServ.TOrd.ParamByName('FISCO').AsString := 'ECF/NF';}

                       // - 16/03/2009: seta numero fiscal aux(ECF) na tabela fiscal de ordem  }
                       {DMServ.TFiscOrd.Close;
                       DMServ.TFiscOrd.SQL.Clear;
                       DMServ.TFiscOrd.SQL.Add('update DOCFISORD set NUMFISCALAUX = :NUMFISCALAUX');
                       DMServ.TFiscOrd.SQL.Add('where COD_ORDEM = :COD_ORDEM');
                       DMServ.TFiscOrd.ParamByName('COD_ORDEM').AsInteger := XCodPedidoGerador;
                       DMServ.TFiscOrd.ParamByName('NUMFISCALAUX').AsString := XNumAuxECF;


                       //DMServ.TOrd.ExecSQL;
                       DMServ.TFiscOrd.ExecSQL;
                       DMServ.IBT.CommitRetaining;

                     End;
                  Except

                   End;
               End;
                // - 14/04/2009: código abaixo comentado por já ser feito no ALXOR32
               //INCREMENTA Nº NF
             {  Try
                   DMMACS.TEmpresa.Edit;
                   DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger+1;
                   DMMACS.TEmpresa.Post;
                   DMMACS.Transaction.CommitRetaining;
               Except
                   MessageDlg('Não foi possível atualizar o Nº da NF. Por favor faça isso manualmente.', mtWarning, [mbOK], 0);
                   DMMACS.Transaction.RollbackRetaining;
               End;  }
           //End;}
       End;

       {//Paulo 19/04/2012: Emite nota fiscal de Nota fiscal de Serviços (NFSe)
       If Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?'  , '', 2, 3, False, 'c')= 2
       Then Begin
       	FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
           AbreFiscalServicos;
       end; }   
   End;
               //AtualizaGridConsulta('ORIGEM');

    //     FIM  ---------------------

   PFinanceiro.Visible:=False;
   // BUSCANDO DADOS DA ORDEM
   DMServ.TOrd.Close;
   DMServ.TOrd.Open;
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString,'');

   // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
   DMServ.TOrd.Edit;
   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
   DMServ.TOrd.Post;
   DMServ.IBT.CommitRetaining;

   //Atualiza View da tela de Consulta
   AtualizaGridConsulta('ORIGEM');
   TravarPaines(False);
   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;

   //Paulo 10/08/2011: Para imprimir o Comp da OS
   FiltraTabela(DMServ.WOrdem,'VWORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');
   CompdeAbertura1Click(Sender);
end;

//Fecha Ordem(joga no financeiro)
Function TFOrdemMec.FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
Var
	ATUFINANC: Boolean; //controle financeiro foram efetivados
   XVLRDESP:Real;//O VLR DAS DESPESAS É DIV POR DOIS ENTRE PROD E SERV.
Begin
	//inicializa as variaveis como true, caso encontre erro na passagem da função eslas passaram a false
   FechaOrd:=True;
   ATUFINANC:=True;
     // Tenta filtrar a ordem
     If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '') = True
     Then Begin
         XVLRDESP:=DMServ.TOrd.FIELDBYNAME('TOTDESP').AsCurrency/2;
         //Filtra loja
         FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

         //***********************************************
         // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **
         //***********************************************
       //Filtra cliente
		FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.TOrd.FIELDBYNAME('COD_CLIENTE').AsString, '');
       If (CBGeraFinanceiro.Checked=False)
       Then Begin
       	If CBPagamento.Text='Multiplo'
           Then Begin
           	//tenta validar a data
           	Try
               	StrToDate(EdDtFech.Text);
               Except
               	MessageDlg('Por favor, verifique a data de fechamento. Ela não passou na validação', mtWarning, [mbOK], 0);
                   EdDtFech.SetFocus;
               End;
               //tenta fechar as contas
				If FecConta('ORDEM', XCOD_ORDEM, DMServ.TOrd.FieldByName('TOTORD').AsCurrency, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency, XCOD_CONTA, XCOD_CONTASERV, StrToDate(EdDtFech.Text))=True
               Then Begin
                   ATUFINANC:=True;
               End
               Else
                   ATUFINANC:=False;
           End
           Else Begin
               //Filtra Forma de Pagamento
               If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCOD_FORMPAG), '') = True
               Then Begin // Encontrou forma de pagamento, continua processo
                   //verifica moeda padrão para lançamento
                       If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                       Then Begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
                           If CBPagamento.Text='Cheque'
                           Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
                               If LancChEnt(XCOD_CONTA, XCOD_CONTASERV, 'Fech. Ordem'+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', DMServ.TOrd.FieldByName('TOTPROD').AsCurrency+XVLRDESP, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, '', '', 0, '', '', 'ORDEM', IntToStr(XCOD_ORDEM))=True
                               Then  ////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               Else//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                           End;
                           If CBPagamento.Text = 'Cartão'
                           Then Begin
                               If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCOD_CONTA,'(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency+XVLRDESP, 'TOTPROD',StrToInt(CodPedido), 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                               Then  Begin////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                                   exit;
                               End;
                               If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCOD_CONTA,'(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, 'TOTSERV',StrToInt(CodPedido), 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                               Then  Begin////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           End;
                           If (CBPagamento.Text <> 'Cheque') and (CBPagamento.Text <> 'Cartão')
                           Then Begin
                               //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A PRODUTOS
                               If (DMServ.TOrd.FieldByName('TOTPROD').Value)>0
                               Then Begin
                                   If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, '(Produtos) Fech. Ordem Serv. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  DMServ.TOrd.FieldByName('TOTPROD').Value, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                                   Then Begin//informa que a atualização do financeiro foi efetivada
                                       ATUFINANC:=True;
                                   End
                                   Else Begin//informa que a finalização do financeiro falhou
                                       ATUFINANC:=False;
                                   End;
                               End;
                               //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A SERVIÇOS
                               If (DMServ.TOrd.FieldByName('TOTSERV').Value+XVLRDESP)>0
                               Then Begin
                                   If LanCaixa(-1, DateToStr(Date()), XCOD_CONTASERV, '(Serviços) Fech. Ordem Serv. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  DMServ.TOrd.FieldByName('TOTSERV').Value+XVLRDESP, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                                   Then Begin//informa que a atualização do financeiro foi efetivada
                                       ATUFINANC:=True;
                                   End
                                   Else Begin//informa que a finalização do financeiro falhou
                                       ATUFINANC:=False;
                                   End;
                               End;
                           End;
                       End
                       Else Begin//Não é à vista
                           If LancConta('ORDEM', StrToInt(CodPedido), DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, DMServ.TOrd.FieldByName('TOTPROD').Value+XVLRDESP, DMServ.TOrd.FieldByName('TOTSERV').Value+XVLRDESP, XCOD_CONTA, XCOD_CONTASERV, -1, 'Fech. Ordem de Serviço '+DMServ.TOrd.FieldByName('NUMERO').AsString, XCOD_FORMPAG, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), XVLRCOMIS, EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString)=True
                           Then Begin
                               ATUFINANC:=True;
                           End
                           Else Begin
                               ATUFINANC:=False;
                           End;
                       End;
                   //End
                   //Else Begin // não encontrou moeda padrão
                   //	ATUFINANC:=False;
                   //End;
               End
               Else Begin //não esncontrou forma de pagamento, processo inválido retornar informações
                   ATUFINANC:=False;
               End;
       	End;
       End
       Else Begin
           ATUFINANC:=True;
       End;
       //Verifica se todas as atualizações foram possíveis
       If ATUFINANC=True
       Then Begin //então tenta-se confirmar operação
       	Try
   			//calcula comissão
   			//CalcComisTotVend;
           	//FECHA PEDIDO
               DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('STATUS').AsString:='FECHADO';
               DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
               //XTabela.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
               DMServ.TOrd.FieldByName('DTENTREGA').AsString:=DBDATAENTREGA.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TOrd.FieldByName('DTFECH').AsString:=EdDtFech.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TOrd.FieldByName('HRENTREGA').AsString:=DBHORAENTREGA.Text;
               DMServ.TOrd.FieldByName('COMISSAO').AsCurrency:=XVLRCOMIS;
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
           Except
				Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
				DMCAIXA.IBT.RollbackRetaining;
				DMServ.IBT.RollbackRetaining;
               DMBANCO.IBT.RollbackRetaining;
               MDO.Transac.RollbackRetaining;
           End;
       End
       Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
           DMCAIXA.IBT.RollbackRetaining;
			DMServ.IBT.RollbackRetaining;
       End;

   End
   Else Begin //else de filtragem de pedido
       FechaOrd:=false;
   End;
End;

//exit forma de pagamento
procedure TFOrdemMec.FrmFormPagExit(Sender: TObject);
begin
  inherited;
   //BUSCA CONTAS PADRÕES
	If FrmFormPag.EdDescricao.Text='À VISTA'
	Then Begin//Busca contas para À VISTA
   	//PRODUTO
		If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
       Then Begin//se existir uma conta padrao configurada
			XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTA), '');
           FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           XCOD_CONTA:=-1;
       	FrmConta.EDCodigo.Text:='';
           FrmConta.EdDescricao.Text:='';
       End;
       //SERVIÇO
		If DMMACS.TLoja.FieldByName('PLNCTASERV').AsString<>''
       Then Begin//se existir uma conta padrao configurada
			XCOD_CONTASERV:=DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTASERV), '');
           FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           XCOD_CONTASERV:=-1;
       	FrmContaServ.EDCodigo.Text:='';
           FrmContaServ.EdDescricao.Text:='';
       End;
   End
   Else Begin//Busca conta para À Prazo
   	//PRODUTO
		If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
       Then Begin//se existir uma conta padrao configurada
			XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCod_Conta), '');
           FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           XCOD_CONTA:=-1;
       	FrmConta.EDCodigo.Text:='';
           FrmConta.EdDescricao.Text:='';
       End;
       //SERVIÇO
		If DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsString<>''
       Then Begin//se existir uma conta padrao configurada
			XCOD_CONTASERV:=DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTASERV), '');
           FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
           XCOD_CONTASERV:=-1;
       	FrmContaServ.EDCodigo.Text:='';
           FrmContaServ.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFOrdemMec.b(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
  State: TOwnerDrawState);
begin
  inherited;

end;
//click em cancelamentos
procedure TFOrdemMec.BtnCancelamentosClick(Sender: TObject);
begin
  inherited;
   PMCancelamento.Popup(Left+PConsulta.left+PBotoesConsulta.left+ BtnCancelamentos.Left, top+PConsulta.Top+PBotoesConsulta.top+BtnCancelamentos.Top+BtnCancelamentos.Height);
end;

//click em cancelamento total
procedure TFOrdemMec.CancTotClick(Sender: TObject);
   Var
	XCodPedidoTroca: String;
   XCODLANEST: Integer;
   XQTDLOTE: Real;
begin
 // inherited;
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');
	If DMServ.WOrdem.FieldByName('STATUS').AsString='CANCELADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A ORDEM DE SERVIÇO SE ENCONTRA CANCELADA!', '', 1, 1, False, 'a');
       Exit;
   End;

	If DMServ.WOrdem.FieldByName('STATUS').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A ORDEM DE SERVIÇO NÃO SE ENCONTRADA FECHADA!'+#13+'PRESSIONE O BOTÃO CONSULTAR PARA ALTERAR AS INFORMAÇÕES.', '', 1, 1, False, 'a');
       Exit;
   End;

	If Mensagem('A T E N Ç Ã O', 'DESEJA FAZER O CANCELAMENTO DA ORDEM:'+#13+'Nº '+DMServ.WOrdem.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin

       // BUSCANDO A ORDEM PARA LIBERAÇÃO DE CONSULTA
       FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMServ.WOrdem.FieldByName('COD_ORDEM').AsString,'');
       DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('EDIT').AsString := '0';
       DMServ.TOrd.Post;
       DMServ.IBT.CommitRetaining;

       XCodPedidoTroca:=DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;
       If FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
       Then Begin
           //REGISTRA COMANDO DO USUARIO
           Registra('ORDEM', 'CANCELA ORD', DMServ.WOrdem.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString+'-'+DMServ.WOrdem.FieldByName('CLIENTE').AsString, 'Vlr:'+DMServ.TOrd.FieldByName('totord').AsString+'-'+DMServ.WOrdem.FieldByName('equipamento').AsString);
			If CancelLanOrd(XCodPedidoTroca)=True
           Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
				DMServ.TOrd.EDIT;
           	DMServ.TOrd.FieldByName('STATUS').AsString:='CANCELADO';
				DMServ.TOrd.Post;
           End;
           XCodPedido:=XView.FieldByName('COD_ORDEM').AsString;
           //INSERE COMANDOS PARA FILTRAR
           DMESTOQUE.Alx.Close;
	        DMESTOQUE.Alx.SQL.Clear;
	        DMESTOQUE.Alx.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.qtd, itprodord.total, ');
           DMESTOQUE.Alx.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
	        DMESTOQUE.Alx.SQL.Add('itprodord.desconto, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, subproduto.CONTRINT, itprodord.data, itprodord.operacao ');
	        DMESTOQUE.Alx.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
	        DMESTOQUE.Alx.SQL.Add('Left Join ORDEM on itprodord.cod_Ordem = Ordem.cod_Ordem ');
	        DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	        DMESTOQUE.Alx.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
	        DMESTOQUE.Alx.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
	        DMESTOQUE.Alx.SQL.Add('Where ORDEM.cod_ORDEM = :CODPEDVENDA ');
	        DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString:=DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;
	        DMESTOQUE.Alx.Open;
           DMESTOQUE.ALX.First;
           While Not DMESTOQUE.ALX.Eof do
           Begin
	            If DMESTOQUE.Alx.FieldByName('OPERACAO').AsString<>'DVL'
               Then Begin
                   If (DMESTOQUE.Alx.RecordCount<>0) AND (DMESTOQUE.Alx.FieldByName('OPERACAO').AsString<>'DVL')
                   Then Begin//caso a tabela esteja vasia não pode apagar
	  	                //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
		                FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.ALX.FieldByName('COD_ESTOQUE').AsString, '');
                       FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.ALX.FieldByName('COD_ESTOQUE').AsString, '');
                       FiltraTabela(DMServ.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.ALX.FieldByName('COD_ITPRODORD').AsString, '');
                       DMServ.TPOrd.Edit;
                       DMServ.TPOrd.FieldByName('OPERACAO').AsString:='DVL';
                       DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency:=0;
                       DMServ.TPOrd.Post;
                       XCODLANEST:=InserReg(DMENTRADA.TLancENT, 'LANCENT', 'COD_LANENT');
                       DMENTRADA.TLancENT.FieldByName('COD_LANENT').AsInteger:=XCODLANEST;
                       DMENTRADA.TLancENT.FieldByName('COD_ESTOQUE').AsString:=DMESTOQUE.Testoque.FieldByName('COD_ESTOQUE').AsString;
                       DMENTRADA.TLancENT.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
                       DMENTRADA.TLancENT.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
                       DMENTRADA.TLancENT.FieldByName('NUMNOTA').AsString:='CLD OS-'+DMServ.WOrdem.FieldByName('NUMERO').AsString;
                       DMENTRADA.TLancENT.FieldByName('MOTIVO').AsString:='Canc. O.S: '+DMServ.WOrdem.FieldByName('NUMERO').AsString+' /Cliente: '+DMServ.WOrdem.FieldByName('CLIENTE').AsString;
                       DMENTRADA.TLancENT.FieldByName('DT_LANCAMENTO').AsString:=DateToStr(Date());
                       DMENTRADA.TLancENT.FieldByName('DT_ESTOQUE').AsString:=DMServ.WOrdem.FieldByName('dtabert').AsString;
                       DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency:=DMServ.TPOrd.FieldByName('qtd').AsCurrency;
                       DMENTRADA.TLancENT.FieldByName('QTDANT').AsString:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
                       DMENTRADA.TLancEnt.POST;
                       DMESTOQUE.TEstoque.Edit;
                       DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency;
                       DMESTOQUE.TEstoque.POST;
                       DMESTOQUE.TransacEstoque.CommitRetaining;
                   End;
               End;
               DMESTOQUE.Alx.Next;
           End;
           Try
               // EDITANDO A ORDEM PARA LIBERAR, PQ ELA PODE ESTAR BLOQUEADA
               FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');
               DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('EDIT').AsString := '0';
               DMServ.TOrd.Post;

               DMESTOQUE.TransacEstoque.CommitRetaining;
               DMENTRADA.IBT.CommitRetaining;
               DMSAIDA.IBT.CommitRetaining;
           Except
               DMESTOQUE.TransacEstoque.RollbackRetaining;
               DMENTRADA.IBT.RollbackRetaining;
               DMSAIDA.IBT.RollbackRetaining;
           End;
           AtualizaGridConsulta('ORIGEM');
       End
       Else Begin
			Exit;
       End;
   End;
end;

//click cancelar fechamento
procedure TFOrdemMec.CancFechaClick(Sender: TObject);
Var
	XCodPedidoTroca: String;
begin
 // inherited;
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');

	If (DMServ.WOrdem.FieldByName('numfiscal').AsString<>'0') AND (DMServ.WOrdem.FieldByName('numfiscal').AsString<>'')
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO','Esta O.S. Passou por uma impressão fiscal e não pode mais ter seu fechamento cancelado.', '', 1, 1, False, 'a');
       Exit;
   End;

	If DMServ.WOrdem.FieldByName('STATUS').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO','A ORDEM DE SERVIÇO NÃO SE ENCONTRADA FECHADA!'+#13+'PRESSIONE O BOTÃO CONSULTAR PARA ALTERAR AS INFORMAÇÕES.', '', 1, 1, False, 'a');
       Exit;
   End;

	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CANCPEDFECH', 'M')=False Then
  		Exit;

	If Mensagem('A T E N Ç Ã O', 'DESEJA EFETUAR O CANCELAMENTO DA ORDEM DE SERVIÇO:'+#13+'Nº '+DMServ.WOrdem.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin

       // verifica se o caixa estah aberto
       If DMCAIXA.VerifAbCaixa = false
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','CAIXA FECHADO. A ORDEM DE SERVIÇO NÃO PODE SER CANCELADA.','',1,1,false,'I');
           Exit;
       End;

       XCodPedidoTroca:=DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;

       If FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
       Then Begin
           //REGISTRA COMANDO DO USUARIO
           Registra('ORDEM', 'C. FECH ORD', DMServ.WOrdem.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString+'-'+DMServ.WOrdem.FieldByName('CLIENTE').AsString, 'Vlr:'+DMServ.TOrd.FieldByName('totord').AsString+'-'+DMServ.WOrdem.FieldByName('equipamento').AsString);
			If DMServ.WOrdem.FieldByName('TIPOPAG').AsString='Multiplo'
           Then Begin
               DMServ.TOrd.EDIT;
               DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
               DMServ.TOrd.FieldByName('EDIT').AsString := '0';
               DMServ.TOrd.Post;
               Try
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMENTRADA.IBT.CommitRetaining;
                   DMSAIDA.IBT.CommitRetaining;
		           	MessageDlg('Esta Ordem foi fechada com a opção Multipla para pagamento. Ela será gravada com status de aberto, porém seus lançamentos financeiros não serão cancelados.', mtWarning, [mbOK], 0);
               Except
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
                   DMENTRADA.IBT.RollbackRetaining;
                   DMSAIDA.IBT.RollbackRetaining;
               End;
               If FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
               Then Begin
                   BtnConsultar.Click;
               End;
           End
           Else Begin
               If CancelLanOrd(XCodPedidoTroca)=True
               Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
                   DMServ.TOrd.EDIT;
                   DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
                   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                   DMServ.TOrd.Post;
               End;
               Try
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMENTRADA.IBT.CommitRetaining;
                   DMSAIDA.IBT.CommitRetaining;
               Except
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
                   DMENTRADA.IBT.RollbackRetaining;
                   DMSAIDA.IBT.RollbackRetaining;
               End;
               If FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
               Then Begin
                   BtnConsultar.Click;
               End;
           End;
       End
       Else Begin
			Exit;
       End;
   End;

end;

//Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
Function TFOrdemMec.CancelLanOrd(CodPedido: String):Boolean;
Var
	xcod_chequerec: String;
begin
   //Inicia resultado como falso
   Result:=True;

	//filtra loja para capturar as configurações
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//filtra DADOS DA VIEW
	DMServ.WOrdem.Close;
	DMServ.WOrdem.SQL.Clear;
	DMServ.WOrdem.SQL.Add('SELECT * FROM vwordem WHERE COD_ORDEM=:CODIGO');
	DMServ.WOrdem.ParamByName('CODIGO').AsString:=CodPedido;
	DMServ.WOrdem.Open;
   If DMServ.WOrdem.IsEmpty
   Then Begin
   	MessageDlg('O Registro de ordem não foi encontrado', mtWarning, [mbOK], 0);
       Exit;
   End;
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', CodPedido, '');
   FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '');

   If DMServ.TOrd.FieldByName('TipoPag').AsString<>'Multiplo'
   Then Begin
   	//SE A FORMA DE PAGAMENTO FOR DIFERENTE DE MULTIPLO

		//CONTROLE QUE DELETA TODA A MOVIMENTAÇÃO QUANDO UMA ORDEM É FECHADO COM CHEQUE E É À VISTA.

       FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByName('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')');

       XCampo:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

       //seleciona cheques para serem apagados
       DMCAIXA.TAlx.close;
       DMCAIXA.TAlx.SQL.Clear;
       DMCAIXA.TAlx.SQL.Add('select * from chequerec');
       DMCAIXA.TAlx.SQL.Add('where chequerec.cod_movbanco = :CODMOV');
       DMCAIXA.TAlx.ParamByName('CODMOV').AsString:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
       DMCAIXA.TAlx.Open;

       IF NOT DMCAIXA.TAlx.IsEmpty
       then begin
           xcod_chequerec:=         DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
         //seleciona lançamentos de caixa para serem deletados
         DMCAIXA.TLanCaixa.Close;
         DMCAIXA.TLanCaixa.SQL.Clear;
         DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
         DMCAIXA.TLanCaixa.SQL.Add('where ((lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =:CODLANCA))');
         DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
         DMCAIXA.TLanCaixa.Open;
         DMCAIXA.TLanCaixa.First;

         //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
         IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
         THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
              LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');

         end;


         //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
         If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
         then begin
              while not DMCAIXA.TLanCaixa.Eof do
              begin
                DMCAIXA.TLanCaixa.Delete;
                DMCAIXA.TLanCaixa.ApplyUpdates;

              end;
         end;

         //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
         If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + xcod_chequerec + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
         Then Begin
                 DMBANCO.TMovBanco.Delete;
                 DMBANCO.TMovBanco.ApplyUpdates;
         End;


         //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
         If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.TOrd.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')')= true
         Then Begin
             DMBANCO.TMovBanco.Delete;
             DMBANCO.TMovBanco.ApplyUpdates;
         End;


         //apaga cheques ligados ao pedido de venda
         if not DMCAIXA.TAlx.IsEmpty
         then begin
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
            DMBANCO.TChequeRec.ParamByName('CODIGO').AsString:=XCampo;
            DMBANCO.TChequeRec.ExecSQL;
            DMBANCO.IBT.CommitRetaining;
            DMBANCO.TChequeRec.Open;
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('select * from chequerec');
            DMBANCO.TChequeRec.Open;
         end;
     END;

     //VERIRIFA SE A OS FOI À VISTA
     If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
     Then Begin
         //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
         DMCAIXA.TLanCaixa.Close;
         DMCAIXA.TLanCaixa.SQL.Clear;
         DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR='+#39+'ORDSERV'+#39+') AND (COD_GERADOR=:CODPEDIDO)');
         DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsString:=CodPedido;
         DMCAIXA.TLanCaixa.Open;
         DMCAIXA.TLanCaixa.First;
         If Not DMCAIXA.TLanCaixa.IsEmpty
         Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
           while not DMCAIXA.TLanCaixa.Eof do begin
               If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
                   MDO.Transac.CommitRetaining
                   //DMCAIXA.IBT.CommitRetaining
               Else
                   Result:=False;
               DMCAIXA.TLanCaixa.Next;
           end;
         End;


         If DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Cartão'
         Then Begin
             If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTPROD' + #39 + ')')= true
             Then Begin
                 DMBANCO.TMovBanco.Delete;
                 DMBANCO.TMovBanco.ApplyUpdates;
             End;
             If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTSERV' + #39 + ')')= true
             Then Begin
                 DMBANCO.TMovBanco.Delete;
                 DMBANCO.TMovBanco.ApplyUpdates;
             End;

             DMBANCO.IBT.CommitRetaining;

         End;



     End
     Else Begin
          //SE A VENDA NÃO FOI À VISTA
          //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
          If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'ORD'+#39+') AND (COD_GERADOR='+CodPedido+')')=True
          Then Begin//se foi encontrado alguma conta
             //FILTRA PARCELAS
             If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
             Then Begin//se foi encontrado alguma conta
                 //PARA CADA PARCELA VERIFICA SE ESTA FECHADA
                 DMCONTA.TParcCR.First;
                 While not DMCONTA.TParcCR.Eof do
                 Begin
                     //deleta lançamentos de caixa caso seja forma de pagamento carteira.
                     if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Carteira'
                     then begin
                           FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador='+#39+'CTAR'+#39+') AND (lancaixa.cod_gerador =' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39')');
                          while not DMCAIXA.TLanCaixa.Eof
                          do begin
                             If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
                                 MDO.Transac.CommitRetaining
                                //DMCAIXA.IBT.CommitRetaining
                             Else
                                 Result:=False;
                             DMCAIXA.TLanCaixa.Next;
                          end;
                      end;

                      //filtra movimentação bancaria da parcela em questão
                      FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + IntToStr(DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39')');
                      //filtra cheque da parcela
                      FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', '', '(COD_MOVBANCO = ' + #39 + IntToStr(DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger) + #39 +')');

                      //variável utilizada para apos apagar a movimentação bancaria sejam apagados os cheques ligados as parcelas
                      XCampo:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

                      //filtra os lançamentos de caixa ligados a parcela
                      FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger) + #39')');

                         If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTARCH'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString+')')=True
                         Then Begin
                            //se o codigo de abertura do caixa atual for diferente do codigo de lançamento de caixa da ordem e este cheque foi movimentado em caixa faz o estorno
                            IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
                            THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
                                LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1');
                            end;
                            DMCAIXA.IBT.CommitRetaining;
                            MDO.Transac.CommitRetaining;

                                DMCAIXA.TLanCaixa.First;

                                while not DMCAIXA.TLanCaixa.Eof do
                                //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
                                If (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption) AND (DMCAIXA.TLanCaixa.FieldByName('COD_GERADOR').AsString = DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString)
                                then begin
                                      if ((DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'LCHR') OR (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'MCHR') or (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'DCHR'))
                                      THEN BEGIN
                                        DMCAIXA.TLanCaixa.Delete;
                                        DMCAIXA.TLanCaixa.ApplyUpdates;
                                      END;
                                end
                                else
                                      dmcaixa.TLanCaixa.Next;

                            DMCAIXA.IBT.CommitRetaining;
                         End;

                            //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
                            If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
                               Then Begin
                               DMBANCO.TMovBanco.First;
                                   while not DMBANCO.TMovBanco.Eof do
                                       DMBANCO.TMovBanco.Delete;
                                       DMBANCO.TMovBanco.ApplyUpdates;
                                   //end;
                               DMBANCO.TMovBanco.Next;
                               End;
                            DMBANCO.IBT.CommitRetaining;  

                            //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
                            If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')')= true
                            Then Begin
                               DMBANCO.TMovBanco.Delete;
                               DMBANCO.TMovBanco.ApplyUpdates;
                            End;
                            DMBANCO.IBT.CommitRetaining;


                     //apaga cheques ligados a ordem

                      DMBANCO.TChequeRec.Close;
                      DMBANCO.TChequeRec.SQL.Clear;
                      DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
                      DMBANCO.TChequeRec.ParamByName('CODIGO').AsString:=XCampo;
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
               End;
             End;
             DMCONTA.TCtaR.Delete;
             DMCONTA.TCtaR.ApplyUpdates;
             Result := true;
          End;
     End;
   End
   Else Begin
   	//SE A FORMA DE PAGAMENTO FOR IGUAL A MULTIPLO

       //ENTRADA - verifica entrada
       //verifica se foi dado lançamentos de entrada
       //seleciona lançamentos de caixa para serem deletados
        DMCAIXA.TLanCaixa.Close;
        DMCAIXA.TLanCaixa.SQL.Clear;
        DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
        DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador='+#39+'ORDEMENT'+#39+') AND (lancaixa.cod_gerador =:CODLANCA)');
        DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
        DMCAIXA.TLanCaixa.Open;
        DMCAIXA.TLanCaixa.First;

        //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
        IF DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption= false
        THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
            LanCaixa(-1, DateToStr(Date()), DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger, 'Cancel. fech. Ped. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMENTEST', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
        end;


        //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
        If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
        then begin
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
        DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador='+#39+'ORDEMTRO'+#39+') AND (lancaixa.cod_gerador =:CODLANCA)');
        DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
        DMCAIXA.TLanCaixa.Open;
        DMCAIXA.TLanCaixa.First;

        //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
        IF DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption= false
        THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
            LanCaixa(-1, DateToStr(Date()), DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger, 'Cancel. fech. Ped. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdem.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMTROEST', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
        end;


        //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
        If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
        then begin
            while not DMCAIXA.TLanCaixa.Eof do
            begin
              DMCAIXA.TLanCaixa.Delete;
              DMCAIXA.TLanCaixa.ApplyUpdates;
            end;
        end;

		 MessageDlg('OS LANÇAMENTO EFETUADOS EM CHEQUE E A PRAZO NÃO SERÃO CANCELADOS', mtWarning, [mbOK], 0);
   End;
   Try
           DMCONTA.IBT.CommitRetaining;
           DMBANCO.IBT.CommitRetaining;
           DMCAIXA.IBT.CommitRetaining;
           MDO.Transac.CommitRetaining;
	Except
   End;
end;
//reimprimir nota fiscal
procedure TFOrdemMec.ReeimprimirNF1Click(Sender: TObject);
begin
  inherited;
    //AbrirForm(TFSENHA, FSENHA, 0);
    //repassa resultado da tela de autenticação de senha para as variáveis de controle
    XAlxResult:=True;
    If XAlxResult=True
    Then Begin
       If XView.FieldByName('STATUS').AsString='ABERTO'
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'PARA EFETUAR A IMPRESSÃO FISCAL O PEDIDO DEVE ESTAR FECHADO.'+#13+'Antes de fechar confira todas as informações do pedido.', '', 1, 1, False, 'a');
           Exit;
       End;
       If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', XView.FieldByName('COD_ORDEM').AsString, '')=True
       Then Begin
           If Mensagem('A T E N Ç Ã O', 'DESEJA IMPRIMIR O DOCUMENTO FISCAL PARA O PEDIDO:'+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
           Then Begin
           	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');

               If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF')  or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NFe')
               Then Begin
                   DMServ.TFiscOrd.Close;
                   DMServ.TFiscOrd.SQL.Clear;
                   DMServ.TFiscOrd.SQL.Add(' Select * from docfisord where docfisord.cod_ordem=:Codigo ' );
                   DMServ.TFiscOrd.ParamByName('Codigo').AsInteger:=XView.FieldByName('COD_ORDEM').AsInteger;
                   DMServ.TFiscOrd.Open;
                   If not DMServ.TFiscOrd.IsEmpty
                   Then Begin
                       If (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger=1) or (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger=3)
                       Then Begin
                           //Se Documento Fiscal Enviado ou Cancelado
                           MessageDlg('Esta O.S já gerou uma Nota Fiscal Eletrônica enviada e recebida pelo sefaz. Sendo assim não pode mais ser transmitida.', mtWarning, [mbOK], 0);
                           Exit;
                       End;
                   End;

                  //REIMPRIME NOTA FISCAL
                   FMenu.TIPOREL:='RNF';
                   If MessageDlg('Impressora NF Pronta?', mtConfirmation, [mbYes, mbNo], 0)=mryes
                   Then Begin
                       FMenu.TIPOREL := 'NF';
                       AbreFiscal;
                   	Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº '+XView.FieldByName('NUMERO').AsString, 'Valor: '+XView.FieldByName('total').AsString);
					End;
               End;
               // - 13/03/2009: add para impressoa de cupom fiscal
               If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
               Then Begin
                   If Mensagem('A T E N Ç Ã O', 'IMPRIMIR ECF PARA A ORDEM Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
                   Then Begin
   				            // - 13/03/2009: Imprime Cupom Fiscal
   				            If ECF(XView.Fieldbyname('COD_ORDEM').AsInteger, 'ORDEM')=True
               	      Then Begin
       				          /// - 13/03/2009: REGISTRA COMANDO DO USUARIO
       				          Registra('ORDEM DE SERVIÇO', 'ECF',  XView.FieldByName('dtabert').AsString, 'Nº '+XView.FieldByName('NUMERO').AsString, 'Valor: '+XView.FieldByName('total').AsString);
               	      End;
                   END;
                   // - 13/03/2009: se em caixa estiver configurado para emitir NF apos ECF
                   If DMCAIXA.TCaixa.FieldByName('EMITNF').AsString='1'
                   Then Begin
                     If Mensagem('A T E N Ç Ã O', 'Deseja Imprimir Nota Fiscal para o pedido'+#13+'Nº '+XView.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
                     Then Begin
                         FMenu.TIPOREL:='RNF';
                         //Imprime NOTA Fiscal
                         If Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?'  , '', 2, 3, False, 'c')= 2
                         Then Begin
                             If NFOS(XView.Fieldbyname('COD_ORDEM').AsInteger)=True
                             Then Begin
                                 //REGISTRA COMANDO DO USUARIO
                                 Registra('ORDEM DE SERVIÇO', 'NF', XView.FieldByName('dtabert').AsString, 'Nº '+XView.FieldByName('NUMERO').AsString, 'Valor: '+XView.FieldByName('total').AsString);
                             End;
                         End;
                     End;
                   End;
               End;

               AtualizaGridConsulta('');
           End;
       End;
    End;
end;
//click exportar pedido popup
procedure TFOrdemMec.ExportarPedido1Click(Sender: TObject);
begin
  inherited;
   inherited;
   // SELECIONANDO AS ORDENS QUE AINDA ESTAO ABERTAS E FORAM SELECIONADAS E QUE AINDA NAO FORAM EXPORTADAS
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add('select count(ordem.cod_ordem) as TOTAL from ordem where (ordem.exp = ' + #39 + 'X' + #39+ ')');
   DMServ.Alx.SQL.Add('and (ordem.status = ' + #39 + 'ABERTO' + #39 + ') and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null) or (ordem.exportado = ' + #39 + '#' + #39 +'))  and (ordem.exp = ' + #39 + 'X' + #39 + ')');
   DMServ.Alx.Open;

   // VERIFICA SE EXISTE NO MINIMO UMA ORDEM FILTRADA
   If DMServ.Alx.FieldByName('TOTAL').AsInteger > 0
   Then begin
       If DMServ.Alx.FieldByName('TOTAL').AsInteger = 1
       Then Begin

           // COMO VAI SER UMA UNICA ORDEM A SER EXPORTADA, EH FEITO ESSA SQL PARA BUSCAR O "NUMERO" QUE SERA EXIBIDO NA MENSAGEM
           DMServ.TOrd.Close;
           DMServ.TOrd.SQL.Clear;
           DMServ.TOrd.SQL.Add('select * from ordem where (ordem.exp = ' + #39 + 'X' + #39+ ')');
           DMServ.TOrd.Open;

           If Mensagem('Exportação de Ordem de Serviço','Deseja realmente exporta a Ordem de Serviço nº' + DMServ.TOrd.FieldByname('NUMERO').AsString + ' ?','',2,3,false,'I') = 2
           Then Begin
               // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
             	Exporta_OrdensServico;
           End
           Else Begin
               Exit;
           End;
       End
       Else Begin
           If Mensagem('Exportação de Ordem de Serviço','Deseja realmente exportar as ' + DMServ.Alx.FieldByName('TOTAL').AsString + ' Ordens de Serviço selecionadas ?','',2,2,false,'I') = 2
           Then Begin
               // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
               Exporta_OrdensServico;
           End
           Else Begin
               Exit;
           End;
       End;
       AtualizaGridConsulta('ORIGEM');
   End
   Else Begin
       Mensagem('   A T E N Ç Ã O   ','Não há Ordem de Serviço aberta para exportação','',1,1,false,'A');
   End;
end;

// exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
procedure TFOrdemMec.Exporta_OrdensServico;
var
   XCOD_ORDEM,XCOD_SUBPRODUTO, XCOD_ESTOQUE, XCOD_PRODUTO, XCOD_GRUPO, XCOD_SUBGRUPO, XCOD_CST, XCOD_AUX:INTEGER;
begin

try
   // Conecta banco de ddos para exportar Ordens
   PConsulta.Refresh;
   PExp.Visible := true;
   PExp.BringToFront;
   PBExport.Min := 0;
   PBExport.Max := 100;
   PBExport.Position :=50;
   LBCONEXAO.Caption := 'ESTABELECENDO CONEXÃO COM BANCO ... ';
   PExp.Refresh;
 	If ConectaBancoDados(RecuperaCaminhoBancoExportaXml) = true
   Then Begin
       PConsulta.Refresh;
       PExp.Visible := true;
       PExp.BringToFront;
       PExp.Refresh;
       PBExport.Position :=100;

       LBCONEXAO.Caption := 'PREPARANDO ORDENS PARA SEREM EXPORTADAS ... ';
       PExp.Refresh;

       //SQL PARA INDICAR NA EMPRESA QUE ESTA SENDO EXPORTADO ORDENS
       DMEXPORTA.Alx.Close;
       DMEXPORTA.Alx.SQL.Clear;
       DMEXPORTA.Alx.SQL.Add('update empresa set empresa.emexporta='+#39+'1'+#39);
       DMEXPORTA.Alx.ExecSQL;
       DMEXPORTA.IBTExporta.CommitRetaining;

       // se refere ás posições da barra de progressão
       XContador := 0;

       // VERIFICA SE EXISTEM MAIS DE UMA ORDEM A SEREM EXPORTADAS
       // O SISTEMA NÃO PERMITIRÁ EXPORTAR MAIS DE UMA ORDEM
       DMServ.Alx.Close;
       DMServ.Alx.SQL.Clear;
       DMServ.Alx.SQL.Add('select count(ordem.cod_ordem) as REGISTRO FROM ordem where (ordem.exp = ' + #39 + 'X' + #39+ ')');
       DMServ.Alx.SQL.Add('and (ordem.status = ' + #39 + 'ABERTO' + #39 + ')'); //and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null)) and (ordem.exp = ' + #39 + '#' + #39 + ')');
       DMServ.Alx.Open;
   	If DMServ.Alx.FieldByName('REGISTRO').AsInteger>1
       Then Begin
			MessageDlg('Por favor, selecione apenas uma ordem para exportação.', mtWarning, [mbOK], 0);
           // OCULTANDO BARRA DE PROGRESSAO
           PExp.Visible := FALSE;
           PExp.SendToBack;
           Exit;
       End;

       // seleciona no banco local todas as ordens de serviço que fram selecionadas e que ainda nao foram exportadas - banco local
       DMServ.TOrd.Close;
       DMServ.TOrd.SQL.Clear;
       DMServ.TOrd.SQL.Add('select * from ordem where (ordem.exp = ' + #39 + 'X' + #39+ ')');
       DMServ.TOrd.SQL.Add('and (ordem.status = ' + #39 + 'ABERTO' + #39 + ')'); //and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null)) and (ordem.exp = ' + #39 + '#' + #39 + ')');
       DMServ.TOrd.Open;

       // seleciona o numero de produtos na ordem de servico para servir de base para Barra de Progressão
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('select count(itprodord.cod_itprodord) as TOTAL_PROD from itprodord');
       DMSAIDA.TAlx.SQL.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');
       DMSAIDA.TAlx.SQL.Add('where ((ordem.exportado = ' + #39 + '' + #39 +') OR (ORDEM.EXPORTADO IS NULL)) and (ordem.exp = ' + #39 + 'X' + #39 + ')');
       DMSAIDA.TAlx.Open;
       // seleciona o numero de servico na ordem para servir de base para barra de prograessao
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('select count(despadic.cod_despadic) as TOTAL_SERV from despadic');
       DMServ.TAlx1.SQL.Add('left join ordem on despadic.cod_gerador = ordem.cod_ordem');
       DMServ.TAlx1.SQL.Add('where ((ordem.exportado = ' + #39 + '' + #39 +') OR (ORDEM.EXPORTADO IS NULL)) and (ordem.exp = ' + #39 + 'X' + #39 + ')');
       DMServ.TAlx1.Open;

       // dados do componente ProgreeBar
       XContador := 0;
       PBExport.Min := 0;
       PBExport.Max := 0;
       //PBExport.Max := DMSAIDA.TAlx.FieldByname('TOTAL_PROD').AsInteger + DMServ.TAlx1.FieldByname('TOTAL_SERV').AsInteger;

       //PConsulta.Refresh;
       //PExp.Visible := true;
       //PExp.BringToFront;
       DMServ.TOrd.First;
       //PBExport.Max := DMServ.TOrd.RecordCount;
       While NOT DMServ.TOrd.Eof do
       Begin
           PBExport.Max := PBExport.Max+1;
           DMServ.TOrd.Next;
       END;

       PBExport.Position := XContador;

       // primeiro registro
       DMServ.TOrd.First;

       While Not DMServ.TOrd.Eof do
       Begin
       	// VALIDA CPF E CNPJ DP CLIENTE ANTES DA EXPORTAÇÃO
           DMPESSOA.WCliente.Close;
           DMPESSOA.WCliente.SQL.Clear;
           DMPESSOA.WCliente.SQL.Add(' select * FROM vwcliente WHERE vwcliente.cod_cliente=:CODIGO ');
           DMPESSOA.WCliente.ParamByName('CODIGO').AsInteger:=DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger;
           DMPESSOA.WCliente.Open;
           If ValidaCGC(DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString)=False
           Then Begin
           	If ValidCPF(DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString)=False
               Then Begin
               	MessageDlg('O Cliente não possui CPF/CNPJ Válido.'+#13+#10+'A ordem não será exportada', mtWarning, [mbOK], 0);
                   PExp.Visible := FALSE;
                   PExp.SendToBack;
                   exit;
               End;
           End;
           XContador := XContador+1;
           LBCONEXAO.Caption := 'Enviando Ordem ('+IntToStr(XContador)+'/'+IntToStr(PBExport.Max)+') ... ';
           PBExport.Position := XContador;
           PExp.Refresh;

           XCOD_ORDEM := 0;
           Try
               DMEXPORTA.Alx.Close;
               DMEXPORTA.Alx.SQL.Clear;
               DMEXPORTA.Alx.SQL.Add(' select gen_id(gen_ordem_id, 0) as codigo from rdb$database ');
               DMEXPORTA.Alx.Open;
               //ALEX - 16/03/2009: APÓS INSERIR O REGISTRO RECEBE O CAMPO AUTO INCREMENTO
               XCOD_ORDEM := DMEXPORTA.Alx.FieldByName('CODIGO').AsInteger+1;
			Except
           	MessageDlg('FALHA 530', mtWarning, [mbOK], 0);
           End;
           Try
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
               DMEXPORTA.TOrd.ParamByName('COD_VENDEDOR').AsInteger := VerificaFuncionario('VENDEDOR',DMServ.TOrd.FieldByName('COD_VENDEDOR').AsString);
               DMEXPORTA.TOrd.ParamByName('DTABERT').AsDate := DMServ.TOrd.FieldByName('DTABERT').AsDateTime;
               DMEXPORTA.TOrd.ParamByName('HRABERT').AsTime := DMServ.TOrd.FieldByName('HRABERT').AsDateTime;
               // verifica se jah existe o funcionario no banco de fora, e se nao estiver jah cadastra na hora
               DMEXPORTA.TOrd.ParamByName('COD_FUNCIONARIO').AsInteger := VerificaFuncionario('FUNCIONARIO',DMServ.TOrd.FieldByName('COD_FUNCIONARIO').AsString);
               DMEXPORTA.TOrd.ParamByName('OBSERVACAO').AsString := DMServ.TOrd.FieldByName('OBSERVACAO').AsString;
               DMEXPORTA.TOrd.ParamByName('STATUS').AsString := 'ABERTO';
               DMEXPORTA.TOrd.ParamByName('NUMERO').AsString := DMServ.TOrd.FieldByName('NUMERO').AsString;
               DMEXPORTA.TOrd.ParamByName('TOTKM').AsString := DMServ.TOrd.FieldByName('TOTKM').AsString;
               DMEXPORTA.TOrd.ParamByName('DESCONTO').AsCurrency := DMServ.TOrd.FieldByName('DESCONTO').AsCurrency;
               // passando o parametro "USUARIO" a função irah retornar o codigo de usuario do banco de fora, e nao o cod_funcionario
               DMEXPORTA.TOrd.ParamByName('COD_USUARIO').AsInteger := -1 ;//VerificaFuncionario('USUARIO',DMServ.TOrd.FieldByName('COD_USUARIO').AsString);
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
           Except
           	MessageDlg('FALHA AO INSERIR ORDEM', mtWarning, [mbOK], 0);
           End;
           // ******************************************************************************************************************
           // seleciona os subprodutos relacionados á ordem de servico atual - banco local
           DMServ.TPOrd.Close;
           DMServ.TPOrd.SQL.Clear;
           DMServ.TPOrd.SQL.Add('select * from itprodord where itprodord.cod_ordem = :codigo');
           DMServ.TPOrd.ParamByName('codigo').AsInteger := DMServ.TOrd.FieldByname('cod_ordem').AsInteger;
           DMServ.TPOrd.Open;

           // ITENS DO PEDIDO DE VENDA DO BANCO DE FORA
           //DMEXPORTA.TItensProd.Close;
           //DMEXPORTA.TItensProd.SQL.Clear;
           //DMEXPORTA.TItensProd.SQL.Add('SELECT * FROM ITPRODORD');
           //DMEXPORTA.TItensProd.Open;

           // primeiro registro da lista de subprodutos
           DMServ.TPOrd.First;

           // INSERINDO TODOS OS PRODUTOS NO BANCO DE FORA
           While Not DMServ.TPOrd.Eof do
           Begin
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

               Try
                   // se o banco que for receber as exportações nao possuir o subproduto atual, o mesmo eh cadastrado
                   If DMEXPORTA.TSubProd.IsEmpty
                   Then Begin
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

                       DMEXPORTA.TSubProd.ParamByName('cod_subproduto').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_subproduto').AsInteger;
                       XCOD_SUBPRODUTO := DMEXPORTA.TCodigo.FieldByname('cod_subproduto').AsInteger;
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
                       DMEXPORTA.TEstoque.ParamByName('cod_estoque').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_estoque').AsInteger;
                       XCOD_ESTOQUE := DMEXPORTA.TCodigo.FieldByname('cod_estoque').AsInteger;
                       DMEXPORTA.TCodigo.Edit;
                       DMEXPORTA.TCodigo.FieldByName('cod_subproduto').AsInteger := DMEXPORTA.TCodigo.fieldByName('cod_subproduto').AsInteger + 1;
                       DMEXPORTA.TCodigo.FieldByName('cod_estoque').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_estoque').AsInteger + 1;
                       DMEXPORTA.TCodigo.Post;
                   End
                   Else Begin
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
                   End;

                   // seleciona dados da tabela produto que tenha o mesmo codigo que a tabela subproduto - banco local
                   DMESTOQUE.TProduto.Close;
                   DMESTOQUE.TProduto.SQL.Clear;
                   DMESTOQUE.TProduto.SQL.Add('select * from produto where produto.cod_produto = :codigo');
                   DMESTOQUE.TProduto.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByname('cod_produto').AsInteger;
                   DMESTOQUE.TProduto.Open;

                   // seleciona o produto que tenha a mesma descricao que o banco local - banco de fora
                   If DMESTOQUE.TProduto.FieldByName('descricao').AsString=''
                   Then Begin
                   	MessageDlg('O SubProduto: '+DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString+#13+#10+'Controle Interno: '+DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString +#13+#10+''+#13+#10+'Foi Inserido sem estar lincado ao produto correto. Verifique por favor', mtWarning, [mbOK], 0);
                   	DMEXPORTA.TProduto.Close;
                   	DMEXPORTA.TProduto.SQL.Clear;
                   	DMEXPORTA.TProduto.SQL.Add('select * from produto ');
                   	DMEXPORTA.TProduto.Open;
                   End
                   Else Begin
                   	Try
                           DMEXPORTA.TProduto.Close;
                           DMEXPORTA.TProduto.SQL.Clear;
                           DMEXPORTA.TProduto.SQL.Add('select * from produto where (upper(produto.descricao) = upper(' + #39 + DMESTOQUE.TProduto.FieldByName('descricao').AsString + #39 + '))');
                           DMEXPORTA.TProduto.Open;
                       Except
                       	MessageDlg('O nome do Produto:'+#13+#10+'Apresenta alguma irregularidade, verifique o uso de apóstrofes no nome, caso exista, procure removê-lo  e tentar novamente.'+#13+#10+''+#13+#10+'Antes verifique vestigios de exportação desta ordem na outra base.', mtWarning, [mbOK], 0);
                       End;
                   End;
                   If DMEXPORTA.TProduto.IsEmpty
                   Then Begin
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
                   End
                   Else Begin
                       XCOD_PRODUTO := DMEXPORTA.TProduto.FieldByname('cod_produto').AsInteger;
                       DMEXPORTA.TProduto.Close;
                       DMEXPORTA.TProduto.SQL.Clear;
                       DMEXPORTA.TProduto.SQL.Add('update PRODUTO set');
                       DMEXPORTA.TProduto.SQL.Add('COD_INTERNO = :COD_INTERNO, DESCRICAO = :DESCRICAO, APLICACAO = :APLICACAO, COD_SUBGRUPOPROD = :COD_SUBGRUPOPROD,');
                       DMEXPORTA.TProduto.SQL.Add('COD_GRUPOPROD = :COD_GRUPOPROD, COD_CST = :COD_CST, COD_LOJA = :COD_LOJA,VENDVISTA = :VENDVISTA,');
                       DMEXPORTA.TProduto.SQL.Add('VENDPRAZO = :VENDPRAZO,CUSTOVENDA = :CUSTOVENDA,COMPVISTA = :COMPVISTA,COMPPRAZO = :COMPPRAZO,QTDCOMP = :QTDCOMP,QTDVEND = :QTDVEND');
                       DMEXPORTA.TProduto.SQL.Add('where COD_PRODUTO = :OLD_COD_PRODUTO');

                       DMEXPORTA.TProduto.ParamByName('OLD_COD_PRODUTO').AsInteger := XCOD_PRODUTO;
                   End;

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

                   If DMEXPORTA.TGrupo.IsEmpty
                   Then Begin
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
                   End
                   Else Begin
                       XCOD_GRUPO := DMEXPORTA.TGrupo.FieldByname('cod_grupoprod').AsInteger;
                       DMEXPORTA.TGrupo.Close;
                       DMEXPORTA.TGrupo.SQL.Clear;
                       DMEXPORTA.TGrupo.SQL.Add('update GRUPOPROD set DESCRICAO = :DESCRICAO, COD_INTERNO = :COD_INTERNO, TIPO = :TIPO');
                       DMEXPORTA.TGrupo.SQL.Add('where COD_GRUPOPROD = :OLD_COD_GRUPOPROD');

                       DMEXPORTA.TGrupo.ParamByName('OLD_COD_GRUPOPROD').AsInteger := XCOD_GRUPO;
                   End;

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

                   If DMEXPORTA.TSubgru.IsEmpty
                   Then Begin
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
                   End
                   Else Begin
                       XCOD_SUBGRUPO := DMEXPORTA.TSubgru.FieldByName('cod_subgrupoprod').AsInteger;

                       DMEXPORTA.TSubgru.Close;
                       DMEXPORTA.TSubgru.SQL.Clear;
                       DMEXPORTA.TSubgru.SQL.Add('update SUBGRUPOPROD set DESCRICAO = :DESCRICAO, COD_INTERNO = :COD_INTERNO, TIPO = :TIPO');
                       DMEXPORTA.TSubgru.SQL.Add('where COD_SUBGRUPOPROD = :OLD_COD_SUBGRUPOPROD');

                       DMEXPORTA.TSubgru.ParamByName('OLD_COD_SUBGRUPOPROD').AsInteger := XCOD_SUBGRUPO;
                   End;

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
                   //ALEX - 17/03/2009: O Sistema estava dupliando as unidades por isso as mesmas saiam duplicadas em comprovantes e nas ordens por isso o trecho abaixo foi comentado
                   //ALEX - 17/03/2009: Apos comentar o trecho abaixo as duas linhas de codigo foram inseridas pegando diretamente o codigo
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
               Except
               	MessageDlg('FALHA 531', mtWarning, [mbOK], 0);
               End;

               Try
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
                       DMEXPORTA.TItensProd.ParamByName('COD_FUNCIONARIO').AsInteger := VerificaFuncionario('FUNCIONARIO',DMServ.TPOrd.FieldByName('COD_FUNCIONARIO').AsString);
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

                   //ATUALIZA ESTOQUE
                   DMEXPORTA.TEstoque.Close;
                   DMEXPORTA.TEstoque.SQL.Clear;
                   DMEXPORTA.TEstoque.SQL.Add('Select * from ESTOQUE where estoque.cod_estoque=:codigo');
                   DMEXPORTA.TEstoque.ParamByName('codigo').AsInteger := XCOD_ESTOQUE;
                   DMEXPORTA.TEstoque.Open;

                   If not DMEXPORTA.TEstoque.IsEmpty
                   Then Begin
                       DMEXPORTA.TEstoque.edit;
                       DMEXPORTA.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEXPORTA.TEstoque.FieldByName('ESTFISICO').AsCurrency-DMServ.TPOrd.FieldByName('QTD').AsCurrency;
                       DMEXPORTA.TEstoque.Post;
                   End
                   Else Begin
						MessageDlg('O produto de código: '+DMESTOQUE.TEstoque.FieldByName('contrint').AsString+' Não teve estoque atualziado na base de destino.', mtWarning, [mbOK], 0);
                   End;
                   DMEXPORTA.IBTExporta.CommitRetaining;
               Except
               	MessageDlg('FALHA 532', mtWarning, [mbOK], 0);
               End;

           // proximo ptoduto da ordem
           DMServ.TPOrd.Next;
           End;

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

           While Not DMESTOQUE.TDesp.Eof do
           Begin
           	Try
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
                   FiltraTabela(DMPESSOA.TEquipe,'EQUIPE','COD_EQUIPE',DMESTOQUE.TDesp.FieldByname('COD_EQUIPE').AsString,'');

                   // VERIFICA SE NO BANCO DE FORA TEM A EQUIPE CADASTRADA JUNTO COM SEU RESPONSAVEL E FUNCIONARIOS
                   DMEXPORTA.TDesp.ParamByName('COD_EQUIPE').AsInteger := VerificaEquipe(DMESTOQUE.TDesp.FieldByname('COD_EQUIPE').AsString,DMPESSOA.TEquipe.FieldByname('COD_RESPONSAVEL').AsString);

                   // ESSE CAMPO EH O FUNCIONARIO QUE ATRIBUIU O SERVICO NA ORDEM
                   if (DMESTOQUE.TDesp.FieldByName('COD_FUNCIONARIO').AsString <> '') and (DMESTOQUE.TDesp.FieldByName('COD_FUNCIONARIO').AsInteger > 0) then
                       DMEXPORTA.TDesp.ParamByName('COD_FUNCIONARIO').AsInteger :=-1;// VerificaFuncionario('RESPONSAVEL',DMESTOQUE.TDesp.FieldByName('COD_FUNCIONARIO').AsString);
                   DMEXPORTA.TDesp.ExecSQL;

                   // posição do progressBar
                   //XContador := XContador + 1;
                   //PBExport.Position := XContador;
                   // atualizando o banco de fora
                   DMEXPORTA.IBTExporta.CommitRetaining;
               Except
               	MessageDlg('FALHA 532', mtWarning, [mbOK], 0);
               End;
           // proxima despesa
           DMESTOQUE.TDesp.Next;
           End;

           LBCONEXAO.Caption := 'Finalizando Transação ... ';
           PExp.Refresh;

       // proxima ordem
       DMServ.TOrd.Next;
       End;


       Try
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
       Except
       	MessageDlg('FALHA 533', mtWarning, [mbOK], 0);
       End;
       //ATUALIZAR GRID DE CONSULTA
       AtualizaGridConsulta('ORIGEM');

       // OCULTANDO BARRA DE PROGRESSAO
       PExp.Visible := FALSE;
       PExp.SendToBack;
       //SQL PARA INDICAR NA EMPRESA QUE ESTA SENDO EXPORTADO ORDENS
       DMEXPORTA.Alx.Close;
       DMEXPORTA.Alx.SQL.Clear;
       DMEXPORTA.Alx.SQL.Add('update empresa set empresa.emexporta='+#39+'0'+#39);
       DMEXPORTA.Alx.ExecSQL;
       DMEXPORTA.IBTExporta.CommitRetaining;

       Mensagem('INFORMAÇÃO','ORDEN(S) EXPORTADA(S) COM SUCESSO!','',1,1,false,'i');
   End
   Else Begin
       // OCULTANDO BARRA DE PROGRESSAO
       PExp.Visible := FALSE;
       PExp.SendToBack;
       //SQL PARA INDICAR NA EMPRESA QUE ESTA SENDO EXPORTADO ORDENS
       DMEXPORTA.Alx.Close;
       DMEXPORTA.Alx.SQL.Clear;
       DMEXPORTA.Alx.SQL.Add('update empresa set empresa.emexporta='+#39+'0'+#39);
       DMEXPORTA.Alx.ExecSQL;
       DMEXPORTA.IBTExporta.CommitRetaining;

       Mensagem('   A T E N Ç Ã O   ','Ocorreu uma falha ao conectar com o Banco de Dados de Exportação.'+#13+'Se o problema persistir consulte o Suporte.','',1,1,false,'A');
       Exit;
   End;

Except
   // OCULTANDO BARRA DE PROGRESSAO
       PExp.Visible := FALSE;
       PExp.SendToBack;
       DMServ.IBT.RollbackRetaining;
       Mensagem('   A T E N Ç Ã O   ','Ocorreu uma falha durante a Exportação dos Dados.'+#13+'Se o problema persistir consulte o Suporte.','',1,1,false,'A');
       Exit;
end;
end;

// Conecta banco de ddos para exportar Ordens
Function TFOrdemMec.ConectaBancoDados(XEndereco: string): boolean;
begin
   Try
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
   Except
       Result:=false;
   End;

end;
// verifica se jah existe o funcionario no banco de fora, e se na estiver jah cadastra na hora
Function TFOrdemMec.VerificaFuncionario(Atividade: String; Cod_funcionario: string): integer;
var
   XCod_Func,tmp,aux:integer;
begin
   Result:=-1;
   try
       tmp := StrToInt(Cod_funcionario);
       if tmp = 111522
       then begin
           Result := 111522;
           Exit;
       end;
   Except
       Result:=-1;
   end;

   Try
       // FILTRA TABELA DE FUNCIONARIO PARA BUSCAR O CODIGO DE PESSOA
       If Atividade = 'VENDEDOR' Then
           FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',Cod_funcionario,'')
       else If Atividade = 'FUNCIONARIO' Then
           FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',Cod_funcionario,'')
       else If Atividade = 'USUARIO'
       Then Begin
           // busca dados usuario
           FiltraTabela(DMMACS.TUsuario,'USUARIO','CODUSUARIO',Cod_funcionario,'');

           // busca dados de funcionario em relacao aos dados de usuario
           FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsString,'');
       End
       else If Atividade = 'RESPONSAVEL'
       Then Begin
           // busca os dados da tabela funcionario para selecionar dados da pessoa
           FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',Cod_funcionario,'');
       End;

       // filtra tabela de pessoa para buscar o cpf do funcionario
       FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TFuncionario.FieldByName('cod_pessoa').AsString,'');

       // busca no banco de dados de fora o funcionario com o mesmo cpf
       // verifica se existe com mesmo CPF/CNPJ
       DMEXPORTA.TPessoa.Close;
       DMEXPORTA.TPessoa.SQL.Clear;
       DMEXPORTA.TPessoa.SQL.Add('select * from pessoa');
       DMEXPORTA.TPessoa.SQL.Add('where (pessoa.cpfcnpj = :cpf)');
       DMEXPORTA.TPessoa.ParamByName('cpf').AsString := DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString;
       DMEXPORTA.TPessoa.Open;

       // senao axar
       If (DMEXPORTA.TPessoa.IsEmpty)
       Then Begin
           // verifica se existe com mesmo nome
           DMEXPORTA.TPessoa.Close;
           DMEXPORTA.TPessoa.SQL.Clear;
           DMEXPORTA.TPessoa.SQL.Add('select * from pessoa');
           DMEXPORTA.TPessoa.SQL.Add('where UPPER(pessoa.nome) = UPPER(:nome)');
           DMEXPORTA.TPessoa.ParamByName('nome').AsString := DMPESSOA.TPessoa.FieldByName('nome').AsString;
           DMEXPORTA.TPessoa.Open;
       end;

       // se o banco de fora nao possui o funcionario, o mesmo sera cadastrado
       If (DMEXPORTA.TPessoa.IsEmpty) //and (DMPESSOA.TPessoa.FieldByName('nome').AsString <> '')
       Then Begin
           // função para cadastrar funcionario
           XCod_Func := CadastroFuncionario;

       End
       Else Begin
           DMEXPORTA.TFuncionario.Close;
           DMEXPORTA.TFuncionario.SQL.Clear;
           DMEXPORTA.TFuncionario.SQL.Add('select * from funcionario where funcionario.cod_pessoa = :codigo');
           DMEXPORTA.TFuncionario.ParamByName('codigo').AsInteger := DMEXPORTA.TPessoa.FieldByname('cod_pessoa').AsInteger;
           DMEXPORTA.TFuncionario.Open;
           XCod_Func := DMEXPORTA.TFuncionario.FieldByName('cod_func').AsInteger;
           //fazer atualização dos dados do funcionario
           Try
               If AtualizarFuncionarioBancoExterno(StrToInt(Cod_funcionario),XCod_Func)=False Then
                   Result:=-1;
           Except
               Result:=-1;
           End
       End;

       If Atividade = 'USUARIO'
       Then Begin
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

           If DMEXPORTA.TUsuario.IsEmpty
           Then Begin
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
           End
           else begin
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
       End;

       DMEXPORTA.IBTExporta.CommitRetaining;

       Result := XCod_Func;
   Except
       Result:=-1;
   End;
end;

// verifica se o cliente esta cadastrado no banco, se nao tiver jah cadastra na hora
Function TFOrdemMec.VerificaCliente(Cod_Cliente: integer): integer;
VAR
   XCOD_PESSOA, XCOD_CLIENTE, XCOD_PESSOAF, XFLAG :INTEGER;
begin
	Try
       // FILTRA A TABELA CLIENTE PARA BUSCAR O COD_PESSOA
       iF FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',IntToStr(Cod_Cliente),'')=True
       Then Begin
           // FILTRA A TABELA PESSOA P BUSCAR O NOME REFERNTE AO COD_PESSOA REPASSADO PELA TABELA CLIENTE
           FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TCliente.FieldByname('cod_pessoa').AsString,'');
       End
       Else Begin
           MessageDlg('As Informações completas da pessoa relacionada, não foram encontradas.'+#13+#10+'Entre no cadastro e atualize os dados', mtWarning, [mbOK], 0);
           Exit;
       End      ;

       If DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString=''
       Then Begin
           MessageDlg('O Cliente esta sem CPF/CNPJ', mtWarning, [mbOK], 0)
       End
       Else Begin
           // verifica se existe cliente com mesmo CPF/CNPJ
           DMEXPORTA.TPessoa.Close;
           DMEXPORTA.TPessoa.SQL.Clear;
           DMEXPORTA.TPessoa.SQL.Add('select * from pessoa');
           DMEXPORTA.TPessoa.SQL.Add('where (pessoa.cpfcnpj = :cpf)');
           DMEXPORTA.TPessoa.ParamByName('cpf').AsString := DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString;
           DMEXPORTA.TPessoa.Open;
       End;

       // se encontrar na tabela pessoa
       If not(DMEXPORTA.TPessoa.IsEmpty)
       Then Begin
           // filtrar cliente
           DMEXPORTA.TCliente.Close;
           DMEXPORTA.TCliente.SQL.Clear;
           DMEXPORTA.TCliente.SQL.Add('select * from cliente');
           DMEXPORTA.TCliente.SQL.Add('where (cliente.cod_pessoa= :codigo)');
           DMEXPORTA.TCliente.ParamByName('codigo').AsString := DMEXPORTA.TPessoa.FieldByName('COD_PESSOA').AsString;
           DMEXPORTA.TCliente.Open;
       end;

       // se nao encontrar
       If (DMEXPORTA.TPessoa.IsEmpty) //and (DMPESSOA.TPessoa.FieldByName('nome').AsString <> '')
       Then Begin
       	//PROCURA UM CODIGO VALIDO PARA PESSOA
           //VALIDA CODIGO PESSOA
           XCod_Pessoa:=DMEXPORTA.TCodigo.FieldByname('COD_PESSOA').AsInteger;
           XFlag:=0;
           while XFlag=0 do
           Begin
               DMEXPORTA.ALX.Close;
               DMEXPORTA.ALX.SQL.Clear;
               DMEXPORTA.ALX.SQL.Add('SELECT * FROM PESSOA WHERE PESSOA.COD_PESSOA=:CODIGO');
               DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger:=XCod_Pessoa;
               DMEXPORTA.ALX.Open;

               If Not DMEXPORTA.ALX.IsEmpty Then
                   XCod_Pessoa:=XCod_Pessoa+1
               Else
                   XFlag:=1;
           End;
           //VALIDA CODIGO CLIENTE
           XCod_CLIENTE:=DMEXPORTA.TCodigo.FieldByname('COD_CLIENTE').AsInteger;
           XFlag:=0;
           while XFlag=0 do
           Begin
               DMEXPORTA.ALX.Close;
               DMEXPORTA.ALX.SQL.Clear;
               DMEXPORTA.ALX.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE=:CODIGO');
               DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger:=XCod_CLIENTE;
               DMEXPORTA.ALX.Open;

               If Not DMEXPORTA.ALX.IsEmpty Then
                   XCod_CLIENTE:=XCod_CLIENTE+1
               Else
                   XFlag:=1;
           End;

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
           DMEXPORTA.TCodigo.FieldByName('COD_PESSOA').AsInteger:=XCOD_PESSOA+1;
           DMEXPORTA.TCodigo.FieldByName('COD_CLIENTE').AsInteger:=XCOD_CLIENTE+1;
           DMEXPORTA.TCodigo.Post;
       End
       //se encontrar pessoa
       Else Begin
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

          If XCOD_CLIENTE>0
          Then Begin
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
          End
          Else Begin
          		//VALIDA CODIGO CLIENTE
           	XCod_CLIENTE:=DMEXPORTA.TCodigo.FieldByname('COD_CLIENTE').AsInteger;
           	XFlag:=0;
           	while XFlag=0 do
           	Begin
               	DMEXPORTA.ALX.Close;
               	DMEXPORTA.ALX.SQL.Clear;
               	DMEXPORTA.ALX.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE=:CODIGO');
               	DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger:=XCod_CLIENTE;
               	DMEXPORTA.ALX.Open;

               	If Not DMEXPORTA.ALX.IsEmpty Then
                   	XCod_CLIENTE:=XCod_CLIENTE+1
               	Else
                   	XFlag:=1;
           	End;
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
               DMEXPORTA.TCodigo.FieldByName('COD_CLIENTE').AsInteger:=XCOD_CLIENTE+1;
               DMEXPORTA.TCodigo.Post;
			End;
       End;
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
       FiltraTabela(DMEXPORTA.TPessoa,'PESSOA','COD_PESSOA',IntToStr(XCOD_PESSOA),'');

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
       If (DMPESSOA.TPessoaJ.IsEmpty) and (Not DMPESSOA.TPessoaF.IsEmpty)
       Then Begin
           DMEXPORTA.Alx.Close;
           DMEXPORTA.Alx.SQL.Clear;
           DMEXPORTA.Alx.SQL.Add('select * from pessoaF');
           DMEXPORTA.Alx.SQL.Add('where (pessoaF.cod_pessoa = :codigo)');
           DMEXPORTA.Alx.ParamByName('codigo').AsInteger := XCOD_PESSOA;
           DMEXPORTA.Alx.Open;
           If DMEXPORTA.Alx.IsEmpty
           Then Begin
                //PROCURA UM CODIGO VALIDO PARA PESSOA
                //VALIDA CODIGO PESSOA
                XCod_PessoaF:=DMEXPORTA.TCodigo.FieldByname('COD_PESSOAF').AsInteger;
                XFlag:=0;
                while XFlag=0 do
                Begin
                   DMEXPORTA.ALX.Close;
                   DMEXPORTA.ALX.SQL.Clear;
                   DMEXPORTA.ALX.SQL.Add('SELECT * FROM PESSOAF WHERE PESSOAF.COD_PESSOAF=:CODIGO');
                   DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger:=XCod_PessoaF;
                   DMEXPORTA.ALX.Open;

                   If Not DMEXPORTA.ALX.IsEmpty Then
                       XCod_PessoaF:=XCod_PessoaF+1
                   Else
                       XFlag:=1;
                End;

                DMEXPORTA.Tcodigo.edit;
                DMEXPORTA.TCodigo.FieldByName('COD_PESSOAF').AsInteger:=XCOD_PESSOAF+1;
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
           End
           Else Begin
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

           End;

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
           if DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString<> '' then
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

       End
       // caso contrario eh efetuado o cadastro como pessoa juridica no banco externo
       Else Begin
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

           If DMEXPORTA.Alx.IsEmpty
           Then Begin
                //PROCURA UM CODIGO VALIDO PARA PESSOA
                //VALIDA CODIGO PESSOA
                XCOD_PESSOAJ:=DMEXPORTA.TCodigo.FieldByname('COD_PESSOAJ').AsInteger;
                XFlag:=0;
                while XFlag=0 do
                Begin
                   DMEXPORTA.ALX.Close;
                   DMEXPORTA.ALX.SQL.Clear;
                   DMEXPORTA.ALX.SQL.Add('SELECT * FROM PESSOAJ WHERE PESSOAJ.COD_PESSOAJ=:CODIGO');
                   DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger:=XCod_PessoaJ;
                   DMEXPORTA.ALX.Open;
                   If Not DMEXPORTA.ALX.IsEmpty Then
                       XCod_PessoaJ:=XCod_PessoaJ+1
                   Else
                       XFlag:=1;
                End;
               //ATUALIZA PROXIMO CODIGO DE PESSOA J
               DMEXPORTA.Tcodigo.edit;
               DMEXPORTA.TCodigo.FieldByName('COD_PESSOAJ').AsInteger:=XCOD_PESSOAJ+1;
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

           End
           Else Begin
               //ARMAZENAR CODIGO SE ENCONTROU
               XCOD_PESSOAJ := DMEXPORTA.Alx.FieldByName('COD_PESSOAJ').AsInteger;

               DMEXPORTA.TPessoaJ.Close;
               DMEXPORTA.TPessoaJ.SQL.Clear;
               DMEXPORTA.TPessoaJ.SQL.Add('update pessoaJ set');
               DMEXPORTA.TPessoaJ.SQL.Add('INSC_EST = :INSC_EST,');
               DMEXPORTA.TPessoaJ.SQL.Add('RAZAO_SOCIAL = :RAZAO_SOCIAL,INSC_MUN = :INSC_MUN, WEB_PAGE = :WEB_PAGE');
               DMEXPORTA.TPessoaJ.SQL.Add('where COD_PESSOAJ = :OLD_COD_PESSOAJ');

               DMEXPORTA.TPessoaJ.ParamByName('OLD_COD_PESSOAJ').AsInteger := XCOD_PESSOAJ;
           End;

           //ATUALIZAR DADOS
           DMEXPORTA.TPessoaJ.ParamByName('INSC_EST').AsString := DMPESSOA.TPessoaJ.fieldByname('INSC_EST').AsString;
           DMEXPORTA.TPessoaJ.ParamByName('RAZAO_SOCIAL').AsString := DMPESSOA.TPessoaJ.fieldByname('RAZAO_SOCIAL').AsString;
           if DMPESSOA.TPessoaJ.fieldByname('INSC_MUN').AsString <> '' then
               DMEXPORTA.TPessoaJ.ParamByName('INSC_MUN').AsString := DMPESSOA.TPessoaJ.fieldByname('INSC_MUN').AsString;
           if DMPESSOA.TPessoaJ.fieldByname('WEB_PAGE').AsString <> '' then
               DMEXPORTA.TPessoaJ.ParamByName('WEB_PAGE').AsString := DMPESSOA.TPessoaJ.fieldByname('WEB_PAGE').AsString;
           DMEXPORTA.TPessoaJ.ExecSQL;

       End;

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
           DMEXPORTA.TCliente.ParamByName('COD_VENDEDOR').AsInteger := VerificaFuncionario('VENDEDOR',DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsString);

       DMEXPORTA.TCliente.ParamByName('INFOCOM').AsString := DMPESSOA.TCliente.FieldByname('INFOCOM').AsString;
       DMEXPORTA.TCliente.ParamByName('ENDENTRAGA').AsString := DMPESSOA.TCliente.FieldByname('ENDENTRAGA').AsString;
       DMEXPORTA.TCliente.ParamByName('ATUALIZAR').AsString := DMPESSOA.TCliente.FieldByname('ATUALIZAR').AsString;
       DMEXPORTA.TCliente.ParamByName('COD_USUARIO').AsInteger := DMPESSOA.TCliente.FieldByname('COD_USUARIO').AsInteger;
       IF DMPESSOA.TCliente.FieldByname('ATIVO').AsString = '' THEN
           DMEXPORTA.TCliente.ParamByName('ATIVO').AsString := '1'
       ELSE
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
   Except
   	MessageDlg('A Ordem Será Exportada sem cliente', mtWarning, [mbOK], 0);
       Result:=-1;
   End;
end;


// verifica se existe a cidade do cliente, se nao jah cadastra
Function TFOrdemMec.VerificaCidade: integer;
begin
   If DMPESSOA.TPessoa.FieldByname('COD_CIDADE').AsInteger <> -1
   Then Begin
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

       If DMEXPORTA.TCidade.IsEmpty
       Then Begin
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

           Try
           	DMEXPORTA.IBTExporta.CommitRetaining;
           Except
               Result:=-1;
           End;
       End
       Else Begin
       	Result := DMEXPORTA.TCidade.FieldByname('cod_cidade').AsInteger;
       End;
   End
   Else Begin
       Result := -1;
   End;
end;

// verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
Function TFOrdemMec.VerificaEstado: integer;
BEGIN
   DMGEOGRAFIA.TEstado.Close;
   DMGEOGRAFIA.TEstado.SQL.Clear;
   DMGEOGRAFIA.TEstado.SQL.Add('select * from estado where estado.cod_estado = :codigo');
   DMGEOGRAFIA.TEstado.ParamByName('codigo').AsInteger := DMGEOGRAFIA.TCidade.FieldByname('COD_ESTADO').AsInteger;
   DMGEOGRAFIA.TEstado.Open;

   DMEXPORTA.TEstado.Close;
   DMEXPORTA.TEstado.SQL.Clear;
   DMEXPORTA.TEstado.SQL.Add('select * from estado where (upper(estado.descricao) = upper(' + #39 + DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString + #39 + '))');
   DMEXPORTA.TEstado.Open;

   If (DMEXPORTA.TEstado.IsEmpty) and (DMGEOGRAFIA.TEstado.FieldByName('descricao').AsString <> '')
   Then Begin
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
   End;

   Result := DMEXPORTA.TEstado.FieldByname('cod_estado').AsInteger;

END;

// VERIFICA SE NO BANCO DE FORA ESTAH CADASTRADO O EQUIPAMENTO DA ORDEM, SE NAO TIVER JAH CADASTRA
function TFOrdemMec.VerificaEquipamento(Cod_equipamento: string): integer;
VAR
   XCOD_AUX, XFlag :INTEGER;
begin
   Result:=-1;
   // BUSCANDO NO BANCO LOCAL, OS DADOS DO EQUIPAMENTO
   FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','COD_EQUIPAMENTO',Cod_equipamento,'');

   // verifica se no banco de fora existe o mesmo equipamento
   DMEXPORTA.TEquip.Close;
   DMEXPORTA.TEquip.SQL.Clear;
   DMEXPORTA.TEquip.SQL.Add('SELECT * FROM EQUIPAMENTO WHERE UPPER(EQUIPAMENTO.PLACA) = UPPER(' + #39 + DMPESSOA.TEquip.FieldByName('PLACA').AsString + #39 + ')');
   DMEXPORTA.TEquip.Open;

   If DMEXPORTA.TEquip.IsEmpty
   Then Begin

   	//VALIDA CODIGO CLIENTE
       XCOD_EQUIPAMENTO:=DMEXPORTA.TCodigo.FieldByname('COD_EQUIPAMENTO').AsInteger;
       XFlag:=0;
       while XFlag=0 do
       Begin
           DMEXPORTA.ALX.Close;
           DMEXPORTA.ALX.SQL.Clear;
           DMEXPORTA.ALX.SQL.Add('SELECT * FROM EQUIPAMENTO WHERE EQUIPAMENTO.COD_EQUIPAMENTO=:CODIGO');
           DMEXPORTA.ALX.ParamByName('CODIGO').AsInteger:=XCOD_EQUIPAMENTO;
           DMEXPORTA.ALX.Open;

           If Not DMEXPORTA.ALX.IsEmpty Then
               XCOD_EQUIPAMENTO:=XCOD_EQUIPAMENTO+1
           Else
               XFlag:=1;
       End;

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
   End
   Else Begin
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

   End;

   DMEXPORTA.TEquip.ParamByName('COD_CLIENTE').AsInteger := DMEXPORTA.TOrd.ParamByName('COD_CLIENTE').AsInteger{ VerificaCliente( DMServ.TOrd.ParamByName('COD_CLIENTE').AsInteger)};
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
Function TFOrdemMec.Forma_Pagamento: integer;
VAR
   XCOD_AUX :INTEGER;
begin
   Result:=-1;
   // seleciona no banco o local os dados da tabela forma de pagamento, princialmente a descricao
   FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',DMServ.TOrd.FieldByName('cod_formpag').AsString,'');

   // verifica se no banco de fora existe a forma de pagemtn o com a mesma descricao
   DMEXPORTA.TFormPag.Close;
   DMEXPORTA.TFormPag.SQL.Clear;
   DMEXPORTA.TFormPag.SQL.Add('select * from formpag where (upper(formpag.descricao) = upper(' + #39 + DMFINANC.TFormPag.FieldByName('descricao').AsString + #39 + '))');
   DMEXPORTA.TFormPag.Open;

   If DMEXPORTA.TFormPag.IsEmpty
   Then Begin
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
   End
   Else Begin
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
   End;

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
Function TFOrdemMec.DadosUnidade: integer;
VAR
   XCOD_AUX :INTEGER;
begin
   DMEXPORTA.TUnidade.Close;
   DMEXPORTA.TUnidade.SQL.Clear;
   DMEXPORTA.TUnidade.SQL.Add('SELECT * FROM UNIDADE WHERE (UPPER(UNIDADE.DESC_UNID) = UPPER(' + #39 + DMESTOQUE.TUnidade.FieldByName('desc_unid').AsString + #39 + '))');
   DMEXPORTA.TUnidade.Open;

   If (DMEXPORTA.TUnidade.IsEmpty)// and (DMESTOQUE.TUnidade.FieldByName('desc_unid').AsString <> '')
   Then Begin
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
       DMEXPORTA.TCodigo.FieldByName('cod_unidade').AsInteger := DMEXPORTA.TUnidade.FieldByName('cod_unidade').AsInteger +1;
       DMEXPORTA.TCodigo.Post;

   End ELSE
       XCOD_AUX := DMEXPORTA.TUnidade.FieldByName('cod_unidade').AsInteger;

       Result := XCOD_AUX;
end;

// VERIFICA CST PARA EXPORTAÇÃO
Function TFOrdemMec.VerificaCST(XCod_Cst: Integer): integer;

begin
     Result:=0;
     // seleciona no banco local a cst correspondente
     DMESTOQUE.TCST.Close;
     DMESTOQUE.TCST.SQL.Clear;
     DMESTOQUE.TCST.SQL.Add('select * from cst where cst.cod_cst = :codigo');
     DMESTOQUE.TCST.ParamByName('codigo').AsInteger := XCod_Cst;
     DMESTOQUE.TCST.Open;
     If Not DMESTOQUE.TCST.IsEmpty
     Then Begin
         // seleciona no banco de fora o CST que tenha a Mesma descricao
         DMEXPORTA.TCst.Close;
         DMEXPORTA.TCst.SQL.Clear;
         DMEXPORTA.TCst.SQL.Add('select * from cst where (upper(cst.descricao) = upper(' +#39 + DMESTOQUE.TCST.FieldByName('descricao').AsString + #39 + '))');
         DMEXPORTA.TCst.Open;
         If DMEXPORTA.TCst.IsEmpty
         Then Begin
             DMEXPORTA.TCst.Close;
             DMEXPORTA.TCst.SQL.Clear;
             DMEXPORTA.TCst.SQL.Add('insert into CST (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF, SUBSITUICAO) values (:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF, :SUBSTITUICAO)');
             DMEXPORTA.TCst.ParamByName('cod_cst').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_CST').AsInteger;
             Result:=DMEXPORTA.TCodigo.FieldByName('cod_CST').AsInteger;
             DMEXPORTA.TCodigo.Edit;
             DMEXPORTA.TCodigo.FieldByName('cod_cst').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_cst').AsInteger + 1;
             DMEXPORTA.TCodigo.Post;
          End
          Else Begin
             Result:=DMEXPORTA.TCst.FieldByName('cod_CST').AsInteger;
             DMEXPORTA.TCst.Close;
             DMEXPORTA.TCst.SQL.Clear;
             DMEXPORTA.TCst.SQL.Add('update CST set DESCRICAO = :DESCRICAO, COD_SIT_TRIB = :COD_SIT_TRIB, INDICEECF = :INDICEECF, SUBSTITUICAO = :SUBSTITUICAO ');
             DMEXPORTA.TCst.SQL.Add('where COD_CST = :OLD_COD_CST');
             DMEXPORTA.TCst.ParamByName('OLD_COD_CST').AsInteger := Result;
          End;
          DMEXPORTA.TCst.ParamByName('cod_sit_trib').AsString := DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString;
          DMEXPORTA.TCst.ParamByName('descricao').AsString := DMESTOQUE.TCST.FieldByname('descricao').AsString;
          DMEXPORTA.TCst.ParamByName('INDICEECF').AsString := DMESTOQUE.TCST.FieldByname('INDICEECF').AsString;
          DMEXPORTA.TCst.ParamByName('substituicao').AsString := DMESTOQUE.TCST.FieldByname('substituicao').AsString;
          DMEXPORTA.TCst.ExecSQL;
     End
     Else Begin
     		Result:=-1;
     End;
End;

// VERIFICA SE NO BANCO DE FORA TEM A EQUIPE CADASTRADA JUNTO COM SEU RESPONSAVEL E FUNCIONARIO
function TFOrdemMec.VerificaEquipe(Cod_equipe: string; Cod_responsavel: string): integer;
VAR
   XCOD_AUX :INTEGER;
begin
	Try
       // BUSCANDO TODOS OS DADOS DA TABELA EQUIPE DO BANCO LOCAL
       FiltraTabela(DMPESSOA.TEquipe,'EQUIPE','COD_EQUIPE',Cod_equipe,'');

       // verifica se no banco de fora jah existe a equipe cadastrada com nome, responsavel e funcionarios
       DMEXPORTA.TEquipe.Close;
       DMEXPORTA.TEquipe.SQL.Clear;
       DMEXPORTA.TEquipe.SQL.Add('select * from equipe where upper(equipe.descricao) = upper(' + #39 + DMPESSOA.TEquipe.FieldByname('descricao').AsString + #39 +  ')');
       DMEXPORTA.TEquipe.Open;

       If DMEXPORTA.TEquipe.IsEmpty
       Then Begin
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

       End
       Else Begin
           // ATUALIZANDO TABELA EQUIPE
           XCOD_AUX :=  DMEXPORTA.TEquipe.FieldByName('COD_EQUIPE').AsInteger;

           DMEXPORTA.TEquipe.Close;
           DMEXPORTA.TEquipe.SQL.Clear;
           DMEXPORTA.TEquipe.SQL.Add('update EQUIPE set');
           DMEXPORTA.TEquipe.SQL.Add('DESCRICAO = :DESCRICAO, COD_RESPONSAVEL = :COD_RESPONSAVEL, OBSERVACAO = :OBSERVACAO');
           DMEXPORTA.TEquipe.SQL.Add('where COD_EQUIPE = :OLD_COD_EQUIPE');

           DMEXPORTA.TEquipe.ParamByName('OLD_COD_EQUIPE').AsInteger := XCOD_AUX;

       End;

       DMEXPORTA.TEquipe.ParamByName('DESCRICAO').AsString := DMPESSOA.TEquipe.FieldByname('DESCRICAO').AsString;
       DMEXPORTA.TEquipe.ParamByName('COD_RESPONSAVEL').AsInteger := VerificaFuncionario('RESPONSAVEL',Cod_responsavel);
       DMEXPORTA.TEquipe.ParamByName('OBSERVACAO').AsString := DMPESSOA.TEquipe.FieldByname('OBSERVACAO').AsString;
       DMEXPORTA.TEquipe.ExecSQL;


       DMEXPORTA.TEquipe.Close;
       DMEXPORTA.TEquipe.SQL.Clear;
       DMEXPORTA.TEquipe.SQL.Add('select * from equipe where upper(equipe.descricao) = upper(' + #39 + DMPESSOA.TEquipe.FieldByname('descricao').AsString + #39 +  ')');
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

       While Not DMPESSOA.TFunEquipe.Eof do
       Begin
           // BUSCA FUNCIOANRIO PARA SELECIONAR DADOS DA TABELA PESSOA
           FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMPESSOA.TFunEquipe.FieldByName('COD_FUNCIONARIO').AsString,'');

           // FILTRANDO PESSOA RELACIONADO AO FUNCIONARIO
           FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TFuncionario.FieldByname('cod_pessoa').AsString,'');

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
           If DMEXPORTA.TPessoa.IsEmpty
           Then Begin
               // função para cadastrar funcionario
               //CadastroFuncionario;

               // SE FOR INSERIR, ATRIBUI-SE O CODIGO DO NOVO FUNCIOANRIO CADASTRADO
               DMEXPORTA.TFunEquipe.FieldByName('COD_FUNCIONARIO').AsInteger := CadastroFuncionario;//DMEXPORTA.TFuncionario.FieldByName('COD_FUNC').AsInteger;
           End
           Else Begin
               // se o funcionario jah esta cadastrado, eh buscado seu codigo e é atribuido na equipe
               FiltraTabela(DMEXPORTA.TFuncionario,'FUNCIONARIO','cod_pessoa',DMEXPORTA.TPessoa.FieldByname('cod_pessoa').AsString,'');
               DMEXPORTA.TFunEquipe.FieldByName('COD_FUNCIONARIO').AsInteger := DMEXPORTA.TFuncionario.FieldByname('COD_FUNC').AsInteger;
           End;

           DMEXPORTA.TFunEquipe.FieldByName('COD_FUNEQUIPE').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_FUNEQUIPE').AsInteger;
           DMEXPORTA.TFunEquipe.FieldByName('COD_EQUIPE').AsInteger := DMEXPORTA.TEquipe.FieldByName('COD_EQUIPE').AsInteger;
           DMEXPORTA.TFunEquipe.Post;

           // auto incremento
           DMEXPORTA.TCodigo.Edit;
           DMEXPORTA.TCodigo.FieldByName('COD_FUNEQUIPE').AsInteger := DMEXPORTA.TCodigo.FieldByName('COD_FUNEQUIPE').AsInteger + 1;
           DMEXPORTA.TCodigo.Post;

       // proximo funcionario atrelado a equipe no banco de fora
       DMPESSOA.TFunEquipe.Next;
       End;
       DMEXPORTA.IBTExporta.CommitRetaining;

       // retornando o codigo da equipe, seja ela nova ou jah existente no banco de fora
       Result := DMEXPORTA.TEquipe.FieldByName('COD_EQUIPE').AsInteger;
   Except
   	MessageDlg('A ordem foi exportada com serviços sem equipe', mtWarning, [mbOK], 0);
   End;
end;

// CADASTRO DE FUNCIONARIO
Function TFOrdemMec.CadastroFuncionario: integer;
var
   XCOD_AUX, XCOD_PESSOA :Integer;
begin
   // apenas seleciona dados da tabela pessoa fisica p inserir no banco de dados de fora
   FiltraTabela(DMPESSOA.TPessoaF,'PESSOAF','COD_PESSOA',DMPESSOA.TPessoa.FieldByname('cod_pessoa').AsString,'');

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
  DMEXPORTA.TCodigo.FieldByname('COD_PESSOA').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_PESSOA').AsInteger+1;
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
   if DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString<> '' then
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
       DMEXPORTA.TFuncionario.ParamByName('DATA_CAD').AsDateTime:= DMPESSOA.TFuncionario.FieldByname('DATA_CAD').AsDateTime;
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
   If FiltraTabela(DMEXPORTA.TCARGO,'CARGO','COD_CARGO','','UPPER(DESCRICAO) = UPPER(' + #39 + DMPESSOA.TALx.FieldByName('descricao').AsString + #39 + ')') = false
   Then Begin
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

       FiltraTabela(DMEXPORTA.TCARGO,'CARGO','COD_CARGO','','UPPER(DESCRICAO) = UPPER(' + #39 + DMPESSOA.TALx.FieldByName('descricao').AsString + #39 + ')')

   End;

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
Function TFOrdemMec.FormaPgto_Cliente: integer;
VAR
   XCOD_AUX :INTEGER;
begin

   // faz a SQL para buscar no banco local a descricao da forma de pagamento
   DMFINANC.TFormPag.Close;
   DMFINANC.TFormPag.SQL.Clear;
   DMFINANC.TFormPag.SQL.Add('select * from formpag where formpag.cod_formpag = '+ DMPESSOA.TCliente.FieldByname('cod_formpag').AsString);
   DMFINANC.TFormPag.Open;

   // verifica se no banco de fora existe a mesma forma de pagamento que o banco local
   DMEXPORTA.TFormPag.Close;
   DMEXPORTA.TFormPag.SQL.Clear;
   DMEXPORTA.TFormPag.SQL.Add('select * from formpag where (upper(formpag.descricao) = upper(' + #39 + DMFINANC.TFormPag.FieldByName('descricao').AsString + #39 + '))');
   DMEXPORTA.TFormPag.Open;

   If DMEXPORTA.TFormPag.IsEmpty
   Then Begin
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
   End
   Else Begin
       XCOD_AUX := DMEXPORTA.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

       DMEXPORTA.TFormPag.Close;
       DMEXPORTA.TFormPag.SQL.Clear;
       DMEXPORTA.TFormPag.SQL.Add('update formpag set');
       DMEXPORTA.TFormPag.SQL.Add('COD_LOJA = :COD_LOJA, DESCRICAO = :DESCRICAO,');
       DMEXPORTA.TFormPag.SQL.Add('DESCFISC = :DESCFISC, PRIMPARCELA = :PRIMPARCELA, INTERVALO = :INTERVALO,');
       DMEXPORTA.TFormPag.SQL.Add('QUANTPARCELA = :QUANTPARCELA, JUROAPLIC = :JUROAPLIC, MEDIADIAS = :MEDIADIAS, TIPO = :TIPO');
       DMEXPORTA.TFormPag.SQL.Add('where COD_FORMPAG = :OLD_COD_FORMPAG');

       DMEXPORTA.TFormPag.ParamByName('OLD_COD_FORMPAG').AsInteger := XCOD_AUX;

   End;

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
   XCOD_ORDEM:=XView.FieldByName('COD_ORDEM').AsInteger;

   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');



       If (DMServ.TOrd.FieldByName('STATUS').AsString <> 'ABERTO')
       Then Begin
           Mensagem('    A T E N Ç Ã O   ','A ordem não está "Aberta".','',1,1,false,'I');
           Exit;
       End;
      // If Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço atual não possui produtos e serviços inclusos. Deseja apagá-la ?','',2,3,false,'A')=2


       DMServ.TOrd.Close;
       DMServ.TOrd.SQL.Clear;
       DMServ.TOrd.SQL.Add('select * from ordem where ordem.cod_ordem = :codigo');
       DMServ.TOrd.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
       DMServ.TOrd.Open;

       If (DMServ.TOrd.FieldByName('exportado').AsString <> '#')
       Then Begin
           DMServ.TOrd.Edit;
           If DMServ.TOrd.FieldByName('EXP').AsString = 'X'
           Then Begin
               DMServ.TOrd.FieldByName('EXP').AsString := '';
               DMServ.TOrd.FieldByName('EDIT').AsString := '0';
           End
           Else Begin
               if not VerificaProdutosServicos(XCOD_ORDEM, true,true)
               then
                   Mensagem('    A T E N Ç Ã O   ','A Ordem de Serviço não possui Produtos e Serviços inclusos.','',1,1,false,'I')
               else begin
                   DMServ.TOrd.FieldByName('EXP').AsString := 'X';
                   DMServ.TOrd.FieldByName('EDIT').AsString := '1';
               end;
           End;

           DMServ.TOrd.Post;
           DMServ.IBT.CommitRetaining;

           AtualizaGridConsulta('ORIGEM');
       End
       else begin
           //if Mensagem('   A T E N Ç Ã O   ','Esta Ordem de Serviço já foi exportada, deseja exportá-la novamente?','',2,3,false,'A')=2
           //then begin
               // abre formulario de senha
               //AbrirForm(TFSenha,FSenha,0);

               // caso tenha informado os dados do administrador corretamente
              // If XAlxResult = true
              // Then Begin
                   DMServ.TOrd.Edit;
                   If DMServ.TOrd.FieldByName('EXP').AsString = 'X'
                   Then Begin
                       DMServ.TOrd.FieldByName('EXP').AsString := '';
                       DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                   End
                   Else Begin
                       if Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço já foi exportada.'+#13+'Deseja exportá-la novamente?','',2,3,false,'A')=2
                       then begin
                           // abre formulario de senha
                           AbrirForm(TFSenha,FSenha,0);
                           // caso tenha informado os dados do administrador corretamente
                           If XAlxResult = true
                           Then Begin
                               if not VerificaProdutosServicos(XCOD_ORDEM, true,true)
                               then
                                   Mensagem('    A T E N Ç Ã O   ','A Ordem de Serviço não possui Produtos e Serviços inclusos.','',1,1,false,'I')
                               else begin
                                   DMServ.TOrd.FieldByName('EXP').AsString := 'X';
                                   DMServ.TOrd.FieldByName('EDIT').AsString := '1';
                               end;
                           END;
                       END;
                   End;

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

  if (EdtotalProd.ValueNumeric = 0) and (EdDescTProd.ValueNumeric <> 0)
  then begin
       Mensagem('A T E N Ç Ã O !', 'Não há produtos na Ordem para conceder desconto.', '', 1, 1, False, 'a');
       EdDescTProd.ValueNumeric := 0;
       Exit;
  end;
   CalcPercentProd;
//   FiltraSlave;
   EfetuaDesconto('PRODUTO', 'PERCENTO');
end;

// Quando eh informado o valor de desconto do total dos produtos em "%" eh efetuado calculo para cada produto da ordem
Procedure TFOrdemMec.CalcPercentProd;
begin
   // soh efetua calculo se tiver vendedor relacionado á ordem
   If XCOD_VENDEDOR > 0
   Then Begin
       // busca todos os produtos relacionados á ordem
       FiltraTabela(DMServ.TPOrd,'ITPRODORD','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

       If Not DMServ.TPOrd.IsEmpty
       Then Begin
           DMServ.TPOrd.First;
           XVLRCOMIS := 0;

           While Not DMServ.TPOrd.Eof do
           Begin
               DMServ.TPOrd.Edit;
               DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency - (DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency * (StrToFloat(EdDescTProd.Text)/100)));
               DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency := (DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency - (DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency * (StrToFloat(EdDescTProd.Text)/100)));
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

end;
 // on exit total de produto
procedure TFOrdemMec.EdtotalProdExit(Sender: TObject);
begin
  inherited;
   If XVLRTPROD<>EdtotalProd.ValueNumeric
   Then Begin
		CalcPercent(0, XVLRTPROD-EdtotalProd.ValueNumeric, XVLRTPROD , 'D');
       DMServ.TOrd.edit;
       DMServ.TOrd.FieldByName('DESCPROD').AsCurrency:=AlxPercento;
		EdDescTProd.ValueNumeric:=AlxPercento;
   End
   Else Begin
       FiltraSlave;
   	XCONTROLECONSULTA := true;    
       DMServ.TOrd.edit;
       DMServ.TOrd.FieldByName('DESCPROD').AsCurrency:=0;
       EdtotalProd.ValueNumeric:=XVLRTPROD;
		EdDescTProd.ValueNumeric:=0;
   End;
   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorOrd.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric+EdTotDesp.ValueNumeric;
   EdTotalOrd.ValueNumeric:=EdValorOrd.ValueNumeric;
	CalcPercent(0, (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) - (EdtotalProd.ValueNumeric+EdTotalserv.ValueNumeric+EdTotDesp.ValueNumeric), (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) , 'D');
   EdDescTOrdem.ValueNumeric:=AlxPercento;
   CalcComisTotVend;
end;

//FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
Function TFOrdemMec.CalcComisTotVend: Boolean;
Begin
   //VERIFICA SE EXISTE ALGUM COMISSIONADO PARA A ORDEM
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add(' Select *  from comissao ');
   DMFINANC.TAlx.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
	DMFINANC.TAlx.ParamByName('GERADOR').AsString:='ORDEM';
	DMFINANC.TAlx.ParamByName('CODGERADOR').AsInteger:=XCOD_ORDEM;
   DMFINANC.TAlx.Open;

   DMFINANC.TSlctComis.Close;
   DMFINANC.TSlctComis.SQL.Clear;
   DMFINANC.TSlctComis.SQL.Add(' Select SUM(comissao.perprod) as PERPROD, SUM(comissao.vlrcomisprod) AS COMISPROD, ');
   DMFINANC.TSlctComis.SQL.Add('        SUM(comissao.perserv) as PERSERV, SUM(comissao.vlrcomisserv) AS COMISSERV ');
   DMFINANC.TSlctComis.SQL.Add(' from comissao ');
   DMFINANC.TSlctComis.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
	DMFINANC.TSlctComis.ParamByName('GERADOR').AsString:='ORDEM';
	DMFINANC.TSlctComis.ParamByName('CODGERADOR').AsInteger:=XCOD_ORDEM;
   DMFINANC.TSlctComis.Open;
   XVLRCOMIS:=DMFINANC.TSlctComis.FieldByName('COMISPROD').AsCurrency+DMFINANC.TSlctComis.FieldByName('COMISSERV').AsCurrency;;
   If (DMFINANC.TAlx.IsEmpty)
   Then Begin
       If XCOD_VENDEDOR > 0
       Then Begin
           FiltraTabela(DMServ.TPOrd,'ITPRODORD','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

           DMServ.TPOrd.First;

           //se a tabela estiver vazia significa que não existe comissionado
           If XVLRTOTAL<>0
           Then Begin
               While Not DMServ.TPOrd.Eof Do
               Begin

                   // filtra estoque para buscar os valores das porcentagens das comissoes
                   FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMServ.TPOrd.FieldByname('cod_estoque').AsString,'');

                       // se na loja esta configurado p buscar preço somente a prazo
                       If DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '1'
                       Then Begin
                           // se na loja esta configurado p buscar do funcionario
                           If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
                           Then Begin
                               // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                               FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                               DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                               //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                               XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                           End
                           Else Begin
                               //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                               XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                           End;
                       End
                       Else Begin
                           // se na loja esta configurado p buscar do funcionario
                           If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
                           Then Begin
                               // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                               FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                               DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                               // sse a forma de pagamento for a vista
                               if FrmFormPag1.EdDescricao.Text = 'À VISTA'
                               Then Begin
                                   //fORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                                  XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100;
                               End
                               Else Begin
                                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                                   XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                               End;
                           End
                           Else Begin
                               // sse a forma de pagamento for a vista
                               If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                               Then Begin
                                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                                   XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) /100;
                               End
                               Else Begin
                                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                                   XVLRCOMIS := XVLRCOMIS + (DMServ.TPOrd.fieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                               End;
                           End;
                       End;
               // proximo item da ordem de serviço
               DMServ.TPOrd.Next;
               End;

               // TODOS OS SERVIÇOS DA ORDEM
               FiltraTabela(DMServ.TSOrd,'ITSERVORD','COD_ORDEM',IntToStr(XCOD_ORDEM),'');

               DMServ.TSOrd.First;

               // PERCORRE TODOS OS SERVIÇOS DA ORDEM DE SERVIÇO
               While not DMServ.TSOrd.Eof do
               Begin

                   // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                   If FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'') = true
                   Then Begin
                       DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                       If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                       Then Begin
                           //FORMA DE PAGAMENTO À vista
                           XVLRCOMIS := XVLRCOMIS + ((DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency) * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency)/100;
                       End
                       Else Begin
                           //FORMA DE PAGAMENTO À prazo
                           XVLRCOMIS := XVLRCOMIS + ((DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency) * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPSER').AsCurrency)/100;
                       End;
                   End;
               // proximo serviço
               DMServ.TSOrd.Next;
               End;
           End
           Else Begin
               XVLRCOMIS:=0;
           End;
       End;
   End;
	//LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', XVLRCOMIS);

End;

//on exit desconto serviços
procedure TFOrdemMec.EdDescTServExit(Sender: TObject);
begin
  inherited;
  if (EdTotalserv.ValueNumeric = 0) and (EdDescTServ.ValueNumeric <> 0)
  then begin
       Mensagem('A T E N Ç Ã O !', 'Não há serviços na ordem para conceder desconto!', '', 1, 1, False, 'a');
       EdDescTServ.ValueNumeric := 0;
       Exit;
  end;
//  FiltraSlave;
  EfetuaDesconto('SERVICO', 'PERCENTO');
end;

//on exit total do serviços
procedure TFOrdemMec.EdTotalservExit(Sender: TObject);
begin
  inherited;
   If XVLRTSERV<>EdTotalserv.ValueNumeric
   Then Begin
		CalcPercent(0, XVLRTSERV-EdtotalServ.ValueNumeric, XVLRTSERV , 'D');
       DMServ.TOrd.edit;
       DMServ.TOrd.FieldByName('DESCSERV').AsCurrency:=AlxPercento;
		EdDescTServ.ValueNumeric:=AlxPercento;
   End
   Else Begin
       FiltraSlave;
       DMServ.TOrd.edit;
       DMServ.TOrd.FieldByName('DESCSERV').AsCurrency:=0;
       EdtotalServ.ValueNumeric:=XVLRTSERV;
		EdDescTServ.ValueNumeric:=0;
   End;
   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorOrd.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric+EdTotDesp.ValueNumeric;
   EdTotalOrd.ValueNumeric:=EdValorOrd.ValueNumeric;
	CalcPercent(0, (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) - (EdtotalProd.ValueNumeric+EdTotalserv.ValueNumeric+EdTotDesp.ValueNumeric), (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) , 'D');
   EdDescTOrdem.ValueNumeric:=AlxPercento;
	CalcComisTotVend;
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
function TFOrdemMec.VerificaProdutosServicos(NumOrdem:Integer; prod:Boolean; serv:Boolean):Boolean;
begin

   Result := True;
   if prod
   then begin
        // seleciona todos os produtos da ordem de serviço
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add('select * from itprodord where itprodord.cod_ordem = :cod_ordem');
       DMESTOQUE.Alx1.ParamByName('cod_ordem').AsInteger := NumOrdem;
       DMESTOQUE.Alx1.Open;

       // se nao possuir nenhum
       If DMESTOQUE.Alx1.IsEmpty
       Then
           Result := False
        else
           Exit;
     end;

     if serv
     then begin
       // na tabela despadic eh feito uma verificação se possui servico relacionado a ordem
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.SQL.Clear;
       DMESTOQUE.Alx2.SQL.Add('select * from despadic where despadic.cod_gerador = :codigo');
       DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := NumOrdem;
       DMESTOQUE.Alx2.Open;
       // se nao possui servico
       If (DMESTOQUE.Alx2.IsEmpty)
       Then
           Result:=False
       else
           Result:=True;
     end;

end;

Function TFOrdemMec.AtualizarFuncionarioBancoExterno(codFunInt:integer;codFunExt:integer):Boolean;
var
   XCOD_PESSOA, XCOD_PESSOAF, aux :Integer;
begin
	Try
   	Result:=False;
       //filtra tabela funcionario
       FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',IntToStr(codFunInt),'');
       FiltraTabela(DMEXPORTA.TFuncionario,'FUNCIONARIO','COD_FUNC',IntToStr(codFunExt),'');

       //filtra tabela pessoa
       FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TFuncionario.FieldByname('cod_pessoa').AsString,'');
       FiltraTabela(DMEXPORTA.TPessoa,'PESSOA','COD_PESSOA',DMEXPORTA.TFuncionario.FieldByname('cod_pessoa').AsString,'');

       XCOD_PESSOA := DMEXPORTA.TFuncionario.FieldByname('cod_pessoa').AsInteger;

       //filtra trabela pessoa fisica
       FiltraTabela(DMPESSOA.TPessoaF,'PESSOAF','COD_PESSOA',DMEXPORTA.TPessoa.FieldByname('cod_pessoa').AsString,'');
       FiltraTabela(DMEXPORTA.TPessoaF,'PESSOAF','COD_PESSOA',DMEXPORTA.TPessoa.FieldByname('cod_pessoa').AsString,'');

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
       if DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString<> '' then
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
           DMEXPORTA.TFuncionario.ParamByName('DATA_CAD').AsDateTime:= DMPESSOA.TFuncionario.FieldByname('DATA_CAD').AsDateTime;
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
       If not FiltraTabela(DMEXPORTA.TCARGO,'CARGO','COD_CARGO','','UPPER(DESCRICAO) = UPPER(' + #39 + DMPESSOA.TALx.FieldByName('descricao').AsString + #39 + ')') = false
       Then Begin
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

           FiltraTabela(DMEXPORTA.TCARGO,'CARGO','COD_CARGO',IntToStr(aux),'');

       End;
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
       Result:=True;
   except
       Result:=False;
   End;
end;


procedure TFOrdemMec.CBFILTROExit(Sender: TObject);
begin
  inherited;
  AtualizaGridConsulta('');
end;
//CLOSE DO FORM
procedure TFOrdemMec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if XESTADO = 'INSERT'
  THEN BEGIN
    // SE ESTIVER INSERINDO ORDEM NAO DEIXA SAIR
    Action := caNone;

    BtnGravar.Click;

  END;
end;
//KEY PRESS NA GRID
procedure TFOrdemMec.DBGridConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #27
   then begin
      AtualizaGridConsulta('ORIGEM');
   end;
end;


//pesquisa cliente do equipamento
procedure TFOrdemMec.PesquisaEquipCliente(codigo:String);
var
   XcodEquipAux:integer;
begin
   // letras maiusculas
   codigo:= Trim(UpperCase(codigo));

   If codigo <> ''
   Then Begin
       DMESTOQUE.Alx.close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select * from equipamento');
       DMESTOQUE.Alx.SQL.Add('where (upper(equipamento.placa) like upper ('+#39+codigo+#39+')) AND (EQUIPAMENTO.ATIVO='+#39+'S'+#39+')');
       DMESTOQUE.Alx.Open;
       if not DMESTOQUE.alx.IsEmpty
       then begin
           XcodEquipAux:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
           //FBEquipPlaca.EdDescricao.Text:=DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;

           // busca o cliente q esta atrelado ao equipamento
           FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',DMESTOQUE.Alx.FieldByname('cod_cliente').AsString,'');

           If Not DMPESSOA.WCliente.IsEmpty
           Then Begin
              XCOD_CLIENTE_SELECT := DMPESSOA.WCliente.FieldByname('COD_CLIENTE').AsInteger;
              //FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByname('cod_interno').AsString;
              EDCliente1.Text := DMPESSOA.WCliente.FieldByname('nome').AsString;
           End;

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
    Except
       Try
		      Close;
	      Except
        End;
    end;
end;
procedure TFOrdemMec.Devoluo1Click(Sender: TObject);
begin
  inherited;
	If Mensagem('C O N F I R M A Ç Ã O', 'DESEJA EFETUAR A DEVOLUÇÃO DA NOTA FISCAL :'+#13+'Nº '+DMServ.WOrdem.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
       DevTotPed(DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger);
   End;

end;

procedure TFOrdemMec.Cancelar1Click(Sender: TObject);
Var
	XCodPedidoTroca: String;
   XCODLANEST: Integer;
   XQTDLOTE: Real;
begin
  inherited;
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');
	If DMServ.WOrdem.FieldByName('STATUS').AsString='CANCELADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta N.F. se encontra Cancelada!', '', 1, 1, False, 'a');
       Exit;
   End;

	If DMServ.WOrdem.FieldByName('STATUS').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta O.S. não se encontra fechada! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
       Exit;
   End;

   // - 10/02/2009: deixar cancelar N.F. Exportadas
   // se a ordem de servico jah foi exportada, nao sera possivel cancelar
   {If DMServ.WOrdem.FieldByName('EXPORTADO').AsString = '#'
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Esta Ordem de Serviço já foi exportada e portanto não pode ser cancelada.','',1,1,false,'I');
       Exit;
   End;}

	If Mensagem('A T E N Ç Ã O', 'Deseja realmente Cancelar a N.F. da OS '+#13+'Nº '+DMServ.WOrdem.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
       // BUSCANDO A ORDEM PARA LIBERAÇÃO DE CONSULTA
       FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMServ.WOrdem.FieldByName('COD_ORDEM').AsString,'');
      // DMServ.TOrd.Edit;
       //DMServ.TOrd.FieldByName('EDIT').AsString := '0';
      // DMServ.TOrd.Post;
      DMServ.TAlx1.Close;
      DMServ.TAlx1.SQL.Clear;
      DMServ.TAlx1.SQL.Add('update ordem set ordem.edit = :EDITAR');
      DMServ.TAlx1.SQL.Add('where ordem.cod_ordem = :COD');
      DMServ.TAlx1.ParamByName('EDITAR').AsInteger:=1;
      DMServ.TAlx1.ParamByName('COD').AsInteger:=XCOD_ORDEM;
      DMServ.TAlx1.ExecSQL;
      DMServ.IBT.CommitRetaining;

       XCodPedidoTroca:=DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;
       If FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
       Then Begin
           //REGISTRA COMANDO DO USUARIO
           Registra('ORDEM', 'CANCELA ORD', DMServ.WOrdem.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString+'-'+DMServ.WOrdem.FieldByName('CLIENTE').AsString, 'Vlr:'+DMServ.TOrd.FieldByName('totord').AsString+'-'+DMServ.WOrdem.FieldByName('equipamento').AsString);
			If CancelLanOrd(XCodPedidoTroca)=True
           Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
				DMServ.TOrd.EDIT;
           	DMServ.TOrd.FieldByName('STATUS').AsString:='CANCELADO';
				DMServ.TOrd.Post;
           End;
           XCodPedido:=XView.FieldByName('COD_ORDEM').AsString;
           //INSERE COMANDOS PARA FILTRAR
           DMESTOQUE.Alx.Close;
	        DMESTOQUE.Alx.SQL.Clear;
	        DMESTOQUE.Alx.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.qtd, itprodord.total, ');
           DMESTOQUE.Alx.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
	        DMESTOQUE.Alx.SQL.Add('itprodord.desconto, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, subproduto.CONTRINT, itprodord.data, itprodord.operacao ');
	        DMESTOQUE.Alx.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
	        DMESTOQUE.Alx.SQL.Add('Left Join ORDEM on itprodord.cod_Ordem = Ordem.cod_Ordem ');
	        DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	        DMESTOQUE.Alx.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
	        DMESTOQUE.Alx.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
	        DMESTOQUE.Alx.SQL.Add('Where ORDEM.cod_ORDEM = :CODPEDVENDA ');
	        DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString:=DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;
	        DMESTOQUE.Alx.Open;
           DMESTOQUE.ALX.First;
           While Not DMESTOQUE.ALX.Eof do
           Begin
	            If DMESTOQUE.Alx.FieldByName('OPERACAO').AsString<>'DVL'
               Then Begin
                   If (DMESTOQUE.Alx.RecordCount<>0) AND (DMESTOQUE.Alx.FieldByName('OPERACAO').AsString<>'DVL')
                   Then Begin//caso a tabela esteja vasia não pode apagar
	  	                //LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
		                FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.ALX.FieldByName('COD_ESTOQUE').AsString, '');
                       FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.ALX.FieldByName('COD_ESTOQUE').AsString, '');
                       FiltraTabela(DMServ.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.ALX.FieldByName('COD_ITPRODORD').AsString, '');
                       DMServ.TPOrd.Edit;
                       DMServ.TPOrd.FieldByName('OPERACAO').AsString:='DVL';
                       DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency:=0;
                       DMServ.TPOrd.Post;
                       XCODLANEST:=InserReg(DMENTRADA.TLancENT, 'LANCENT', 'COD_LANENT');
                       DMENTRADA.TLancENT.FieldByName('COD_LANENT').AsInteger:=XCODLANEST;
                       DMENTRADA.TLancENT.FieldByName('COD_ESTOQUE').AsString:=DMESTOQUE.Testoque.FieldByName('COD_ESTOQUE').AsString;
                       DMENTRADA.TLancENT.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
                       DMENTRADA.TLancENT.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
                       DMENTRADA.TLancENT.FieldByName('NUMNOTA').AsString:='CLD OS-'+DMServ.WOrdem.FieldByName('NUMERO').AsString;
                       DMENTRADA.TLancENT.FieldByName('MOTIVO').AsString:='Canc. O.S: '+DMServ.WOrdem.FieldByName('NUMERO').AsString+' /Cliente: '+DMServ.WOrdem.FieldByName('CLIENTE').AsString;
                       DMENTRADA.TLancENT.FieldByName('DT_LANCAMENTO').AsString:=DateToStr(Date());
                       DMENTRADA.TLancENT.FieldByName('DT_ESTOQUE').AsString:=DMServ.WOrdem.FieldByName('dtabert').AsString;
                       DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency:=DMServ.TPOrd.FieldByName('qtd').AsCurrency;
                       DMENTRADA.TLancENT.FieldByName('QTDANT').AsString:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
                       DMENTRADA.TLancEnt.POST;
                       DMESTOQUE.TEstoque.Edit;
                       DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency;
                       DMESTOQUE.TEstoque.POST;
                       DMESTOQUE.TransacEstoque.CommitRetaining;
                   End;
               End;
               DMESTOQUE.Alx.Next;
           End;
           Try
               // EDITANDO A ORDEM PARA LIBERAR, PQ ELA PODE ESTAR BLOQUEADA
               FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCOD_ORDEM),'');
               DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('EDIT').AsString := '0';
               DMServ.TOrd.Post;

               DMESTOQUE.TransacEstoque.CommitRetaining;
               DMENTRADA.IBT.CommitRetaining;
               DMSAIDA.IBT.CommitRetaining;
           Except
               DMESTOQUE.TransacEstoque.RollbackRetaining;
               DMENTRADA.IBT.RollbackRetaining;
               DMSAIDA.IBT.RollbackRetaining;
           End;
           AtualizaGridConsulta('');
       End
       Else Begin
			Exit;
       End;
   End;
end;

procedure TFOrdemMec.CommesmoCliente1Click(Sender: TObject);
begin
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
        Mensagem('Atenção', 'Relatório retornou vazio!'  , '', 1, 1, False, 'a')
    else begin
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

  if not DMPESSOA.TAux3.IsEmpty
  then begin
    DMPESSOA.TAux3.First;
    while not DMPESSOA.TAux3.Eof
    do begin

        // - 023/02/2009:  FILTRA A TABELA CLIENTE
       FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_PESSOA', DMPESSOA.TAux3.fieldByName('COD_PESSOA').AsString,'');
       FiltraTabela(DMPESSOA.TAux1,'CLIENTE','COD_PESSOA', DMPESSOA.TAux3.fieldByName('COD_PESSOA').AsString,'');


       // - 023/02/2009:  FILTRA A TABELA PESSOA
       FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TAux3.fieldByName('COD_PESSOA').AsString,'');
       FiltraTabela(DMPESSOA.TAux2,'PESSOA','COD_PESSOA',DMPESSOA.TAux3.fieldByName('COD_PESSOA').AsString,'');

       DMPESSOA.TCliente.Next;
       DMPESSOA.TPessoa.Next;

       if (DMPESSOA.TCliente.FieldByName('data_cad').AsString = DMPESSOA.TAux1.FieldByName('data_cad').AsString)
          and (DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString = DMPESSOA.TAux2.FieldByName('CPFCNPJ').AsString)
       then begin

         try

              // - 023/02/2009:  deletar codigos
              DMPESSOA.TCliente.Close;
              DMPESSOA.TCliente.SQL.Clear;
              DMPESSOA.TCliente.SQL.Add('delete from cliente where cliente.cod_pessoa = '+DMPESSOA.TAux1.fieldByName('cod_pessoa').AsString);
              DMPESSOA.TCliente.ExecSQL;

              DMPESSOA.TPessoa.Close;
              DMPESSOA.TPessoa.SQL.Clear;
              DMPESSOA.TPessoa.SQL.Add('delete from pessoa where pessoa.cod_pessoa = '+DMPESSOA.TAux2.fieldByName('cod_pessoa').AsString);
              DMPESSOA.TPessoa.ExecSQL;

              DMPESSOA.TransacPessoa.CommitRetaining;

          Except

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
               IF DMPESSOA.TAux1.FieldByname('ATIVO').AsString = '' THEN
                   DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '1'
               ELSE
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
          Except
              DMPESSOA.TransacPessoa.RollbackRetaining;
          end;

       end
       else begin

              DMPESSOA.TCliente.Close;
              DMPESSOA.TCliente.SQL.Clear;
              DMPESSOA.TCliente.SQL.Add('delete from cliente where cliente.cod_pessoa = '+DMPESSOA.TAux1.fieldByName('cod_pessoa').AsString);
              DMPESSOA.TCliente.ExecSQL;

              DMPESSOA.TPessoa.Close;
              DMPESSOA.TPessoa.SQL.Clear;
              DMPESSOA.TPessoa.SQL.Add('delete from pessoa where pessoa.cod_pessoa = '+DMPESSOA.TAux2.fieldByName('cod_pessoa').AsString);
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
               IF DMPESSOA.TAux1.FieldByname('ATIVO').AsString = '' THEN
                   DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '1'
               ELSE
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
            while not DMPESSOA.TAux1.Eof
            do begin
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
               IF DMPESSOA.TAux1.FieldByname('ATIVO').AsString = '' THEN
                   DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '1'
               ELSE
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
               DMMACS.TCodigo.FieldByName('COD_CLIENTE').AsInteger := DMMACS.TCodigo.FieldByName('COD_CLIENTE').AsInteger+1;
               DMMACS.TCodigo.FieldByName('COD_PESSOA').AsInteger := DMMACS.TCodigo.FieldByName('COD_PESSOA').AsInteger+1;
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
Except
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

  if not DMPESSOA.TAux3.IsEmpty
  then begin
    DMPESSOA.TAux3.First;
    while not DMPESSOA.TAux3.Eof
    do begin
       FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','COD_EQUIPAMENTO',DMPESSOA.TAux3.fieldByName('cod_equipamento').AsString,'');
       FiltraTabela(DMPESSOA.TAux1,'EQUIPAMENTO','COD_EQUIPAMENTO',DMPESSOA.TAux3.fieldByName('cod_equipamento').AsString,'');

       DMPESSOA.TEquip.Next;

       if (DMPESSOA.TEquip.FieldByName('PLACA').AsString = DMPESSOA.TAux1.FieldByName('PLACA').AsString)
       then begin

         try

              // - 023/02/2009:  deletar codigos
              DMPESSOA.TEquip.Close;
              DMPESSOA.TEquip.SQL.Clear;
              DMPESSOA.TEquip.SQL.Add('delete from equipamento where equipamento.cod_equipamento = '+DMPESSOA.TAux1.fieldByName('cod_equipamento').AsString);
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

          Except

              DMPESSOA.TransacPessoa.RollbackRetaining;

          end;

          try



              DMPESSOA.TransacPessoa.CommitRetaining;
          Except
              DMPESSOA.TransacPessoa.RollbackRetaining;
          end;

       end
       else begin

              DMPESSOA.TEquip.Close;
              DMPESSOA.TEquip.SQL.Clear;
              DMPESSOA.TEquip.SQL.Add('delete from equipamento where equipamento.cod_equipamento = '+DMPESSOA.TAux1.fieldByName('cod_equipamento').AsString);
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
          while not DMPESSOA.TAux1.Eof
            do begin
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
               DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger := DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger+1;
               DMMACS.TCodigo.Post;
               DMMACS.IBTCodigo.CommitRetaining;

               DMPESSOA.TAux1.Next;
             end;
       end;

       DMPESSOA.TAux3.Next;
     end;
  end;
  DMPESSOA.TransacPessoa.CommitRetaining;
Except
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

  if not DMPESSOA.TAux3.IsEmpty
  then begin
    DMPESSOA.TAux3.First;
    while not DMPESSOA.TAux3.Eof
    do begin
       FiltraTabela(DMPESSOA.TFuncionario,'funcionario','cod_func',DMPESSOA.TAux3.fieldByName('cod_func').AsString,'');
       FiltraTabela(DMPESSOA.TAux1,'funcionario','cod_func',DMPESSOA.TAux3.fieldByName('cod_func').AsString,'');

       DMPESSOA.TFuncionario.Next;

       if (DMPESSOA.TFuncionario.FieldByName('COD_PESSOA').AsString = DMPESSOA.TAux1.FieldByName('COD_PESSOA').AsString)
       then begin

         try

              // - 023/02/2009:  deletar codigos
              DMPESSOA.TFuncionario.Close;
              DMPESSOA.TFuncionario.SQL.Clear;
              DMPESSOA.TFuncionario.SQL.Add('delete from funcionario where funcionario.cod_func = '+DMPESSOA.TAux1.fieldByName('cod_func').AsString);
              DMPESSOA.TFuncionario.ExecSQL;




             DMPESSOA.TransacPessoa.CommitRetaining;

          Except

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
                   DMPESSOA.TFuncionario.ParamByName('DATA_CAD').AsDateTime:= DMPESSOA.TAux1.FieldByname('DATA_CAD').AsDateTime;
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
          Except
              DMPESSOA.TransacPessoa.RollbackRetaining;
          end;

       end
       else begin

              DMPESSOA.TFuncionario.Close;
              DMPESSOA.TFuncionario.SQL.Clear;
              DMPESSOA.TFuncionario.SQL.Add('delete from funcionario where funcionario.cod_func = '+DMPESSOA.TAux1.fieldByName('cod_func').AsString);
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
                   DMPESSOA.TFuncionario.ParamByName('DATA_CAD').AsDateTime:= DMPESSOA.TAux1.FieldByname('DATA_CAD').AsDateTime;
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
             while not DMPESSOA.TAux1.Eof
            do begin
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
                   DMPESSOA.TFuncionario.ParamByName('DATA_CAD').AsDateTime:= DMPESSOA.TAux1.FieldByname('DATA_CAD').AsDateTime;
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
               DMMACS.TCodigo.FieldByName('cod_func').AsInteger := DMMACS.TCodigo.FieldByName('cod_func').AsInteger+1;
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
Except
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

  if not DMPESSOA.TAux3.IsEmpty
  then begin
    DMPESSOA.TAux3.First;
    while not DMPESSOA.TAux3.Eof
    do begin
       FiltraTabela(DMMACS.TUsuario,'usuario','codusuario',DMPESSOA.TAux3.fieldByName('codusuario').AsString,'');
       FiltraTabela(DMPESSOA.TAux1,'usuario','codusuario',DMPESSOA.TAux3.fieldByName('codusuario').AsString,'');

       DMMACS.TUsuario.Next;

       if (DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsString = DMPESSOA.TAux1.FieldByName('COD_FUNCIONARIO').AsString)
       then begin

         try

              // - 023/02/2009:  deletar codigos
              DMMACS.TUsuario.Close;
              DMMACS.TUsuario.SQL.Clear;
              DMMACS.TUsuario.SQL.Add('delete from usuario where usuario.codusuario = '+DMPESSOA.TAux1.fieldByName('codusuario').AsString);
              DMMACS.TUsuario.ExecSQL;




             DMPESSOA.TransacPessoa.CommitRetaining;

          Except

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
          Except
              DMPESSOA.TransacPessoa.RollbackRetaining;
          end;

       end
       else begin

               DMMACS.TUsuario.Close;
              DMMACS.TUsuario.SQL.Clear;
              DMMACS.TUsuario.SQL.Add('delete from usuario where usuario.codusuario = '+DMPESSOA.TAux1.fieldByName('codusuario').AsString);
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
              while not DMPESSOA.TAux1.Eof
            do begin
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
               DMMACS.TCodigo.FieldByName('CODUSUARIO').AsInteger := DMMACS.TCodigo.FieldByName('CODUSUARIO').AsInteger+1;
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
Except
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

  if not DMPESSOA.TAux3.IsEmpty
  then begin
    DMPESSOA.TAux3.First;
    while not DMPESSOA.TAux3.Eof
    do begin
       FiltraTabela(DMESTOQUE.TEstoque,'estoque','cod_estoque',DMPESSOA.TAux3.fieldByName('cod_estoque').AsString,'');
       FiltraTabela(DMPESSOA.TAux1,'estoque','cod_estoque',DMPESSOA.TAux3.fieldByName('cod_estoque').AsString,'');

       DMESTOQUE.TEstoque.Next;

       if (DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString = DMPESSOA.TAux1.FieldByName('COD_SUBPROD').AsString)
       then begin

         try

              // - 023/02/2009:  deletar codigos
              DMESTOQUE.TEstoque.Close;
              DMESTOQUE.TEstoque.SQL.Clear;
              DMESTOQUE.TEstoque.SQL.Add('delete from estoque where estoque.cod_estoque = '+DMPESSOA.TAux1.fieldByName('cod_estoque').AsString);
              DMESTOQUE.TEstoque.ExecSQL;



            DMESTOQUE.TransacEstoque.CommitRetaining;
          Except

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
          Except
              DMESTOQUE.TransacEstoque.RollbackRetaining;
          end;

       end
       else begin
              DMESTOQUE.TEstoque.Close;
              DMESTOQUE.TEstoque.SQL.Clear;
              DMESTOQUE.TEstoque.SQL.Add('delete from estoque where estoque.cod_estoque = '+DMPESSOA.TAux1.fieldByName('cod_estoque').AsString);
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
              while not DMPESSOA.TAux1.Eof
            do begin
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
               DMMACS.TCodigo.FieldByName('cod_estoque').AsInteger := DMMACS.TCodigo.FieldByName('cod_estoque').AsInteger+1;
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
Except
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

  if not DMPESSOA.TAux3.IsEmpty
  then begin
    DMPESSOA.TAux3.First;
    while not DMPESSOA.TAux3.Eof
    do begin
       FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO',DMPESSOA.TAux3.fieldByName('COD_SUBPRODUTO').AsString,'');
       FiltraTabela(DMPESSOA.TAux1,'SUBPRODUTO','COD_SUBPRODUTO',DMPESSOA.TAux3.fieldByName('COD_SUBPRODUTO').AsString,'');

       DMESTOQUE.TSubProd.Next;

       if (DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString = DMPESSOA.TAux1.FieldByName('COD_INTERNO').AsString)
       then begin

         try

              // - 023/02/2009:  deletar codigos
              DMESTOQUE.TSubProd.Close;
              DMESTOQUE.TSubProd.SQL.Clear;
              DMESTOQUE.TSubProd.SQL.Add('delete from SUBPRODUTO where SUBPRODUTO.COD_SUBPRODUTO = '+DMPESSOA.TAux1.fieldByName('COD_SUBPRODUTO').AsString);
              DMESTOQUE.TSubProd.ExecSQL;



            DMESTOQUE.TransacEstoque.CommitRetaining;
          Except

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
          Except
              DMESTOQUE.TransacEstoque.RollbackRetaining;
          end;

       end
       else begin
              DMESTOQUE.TSubProd.Close;
              DMESTOQUE.TSubProd.SQL.Clear;
              DMESTOQUE.TSubProd.SQL.Add('delete from SUBPRODUTO where SUBPRODUTO.COD_SUBPRODUTO = '+DMPESSOA.TAux1.fieldByName('COD_SUBPRODUTO').AsString);
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

            while not DMPESSOA.TAux1.Eof
            do begin

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
               DMMACS.TCodigo.FieldByName('cod_subproduto').AsInteger := DMMACS.TCodigo.FieldByName('cod_subproduto').AsInteger+1;
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
Except
    DMESTOQUE.TransacEstoque.RollbackRetaining;
end;
end;

procedure TFOrdemMec.Verificar1Click(Sender: TObject);
begin
   If FMenu.LCODUSUARIO.Caption='111522' Then
       funcaocordup
   Else
       MessageDlg('Função liberada apenas para a equipe de suporte!', mtWarning, [mbOK], 0);
end;

procedure TFOrdemMec.RelatriosdeOrdens1Click(Sender: TObject);
begin
     AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

// - 04/02/2009: passar como parametro placa e será retornado o seu respectivo código (caso não axar result := -1)
function TFOrdemMec.VerificaPlacaAtiva(placa:String):Boolean;
begin
    Result := False;


    


end;
procedure TFOrdemMec.EdFiscalEnter(Sender: TObject);
begin
  inherited;
   if EdFiscal.Text = 'FISCAL' then
        EdFiscal.Text := ''
   else
    EdFiscal.SelectAll;

   EdFiscal.Font.Color := clBlack;
end;

procedure TFOrdemMec.EdFiscalExit(Sender: TObject);
begin
  inherited;
   if Trim(EdFiscal.Text) = '' then
        EdFiscal.Text := 'FISCAL';
   EdFiscal.Font.Color := clGray;
end;

procedure TFOrdemMec.EdFiscalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if key = #13
   THEN BEGIN
       AtualizaGridConsulta('NUMFISCAL');
       EdFiscal.SelectAll;
   END;

   if key = #27
   Then Begin
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
  	If (((XOK) or ((Not XOK) AND not (Length(Trim(edNome.Text)) <=0) AND not (Length(Trim(edPlaca.Text)) <=0)))) or (CBVENDABALCAO.Checked=true)
  	Then Begin
         If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCOD_CLIENTE), '')
         Then Begin
             XCOD_CLIENTE:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
             FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
             FrmCliente.EDCodigo.Hint := DMPESSOA.WCliente.FieldByName('NOME').AsString;
             FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;

             SelecionaFormaPagamento;

             FBEquipPlaca.EDCodigo.SetFocus;

         End
         Else Begin
             XCOD_CLIENTE := -1;
             FrmCliente.EDCodigo.Text:='';
             FrmCliente.EDCodigo.Hint := '';
             FrmCliente.EdDescricao.Text:='';
         End;


         If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(XCOD_EQUIPAMENTO), '')
         Then Begin
             XCOD_EQUIPAMENTO:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
             FBEquipPlaca.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
             FBEquipPlaca.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
             If DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> ''
             Then Begin
                  lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
             End
             Else Begin
                  lbNumFrota.Caption := '';
             End;
             FrmFormPag1.EDCodigo.SetFocus;

         End
         Else Begin
               XCOD_EQUIPAMENTO:=-1;
               FBEquipPlaca.EDCodigo.Text:='';
               FBEquipPlaca.EdDescricao.Text:='';
               lbNumFrota.Caption := '';
         End;


         FrmCliente.Repaint;
         FBEquipPlaca.Repaint;

         PCadastroRapido.SendToBack;
         PCadastroRapido.Visible := False;
   End;

   If CbVendaBalcao.Checked=True
   Then Begin
       CBVENDABALCAO.Visible:=True;
       CBVENDABALCAO.BringToFront;
     	CBVENDABALCAO.Checked:=true;
   End
   Else Begin
     CBVENDABALCAO.Checked:=False;
   End;
end;

procedure TFOrdemMec.FrmCidadeBTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA TODAS OS ESTADOS PARA CONSUTA
	 filtraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', ' Order by NOME');
    FMenu.XPreSel := True;
    FMenu.XFieldPesqPreSel := 'COD_CIDADE';
    FMenu.XCodPesqPresSel := FrmCidade.EDCodigo.text;
    If AbrirForm(TFCadCidade, FCadCidade, 1)='Selected'
    Then Begin
        XCOD_CIDADE:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
        FrmCidade.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
        FrmCidade.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    End
    Else Begin
        XCOD_CIDADE:=-1;
        FrmCidade.EdDescricao.Text:='';
        FrmCidade.EDCodigo.text:='';
    End;
end;

procedure TFOrdemMec.FrmCidadeBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCOD_CIDADE:=-1;
   FrmCidade.EDCodigo.Text:='';
   FrmCidade.EdDescricao.Text:='';
end;

procedure TFOrdemMec.FrmCidadeEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmCidade.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('VWCIDADE', 'COD_CIDADE', FrmCidade.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
				XCOD_CIDADE:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
           	FrmCidade.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
           	FrmCidade.EdDescricao.Text:=DMMACS.TSelect.FieldByName('UF').AsString+'-'+DMMACS.TSelect.FieldByName('NOME').AsString;
          End
          Else Begin
				XCOD_CIDADE:=-1;
           	FrmCidade.EDCodigo.Text:='';
           	FrmCidade.EdDescricao.Text:='';
          End;
       End
       Else Begin
     		XCOD_CIDADE:=-1;
         	FrmCidade.EDCodigo.Text:='';
          	FrmCidade.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFOrdemMec.BitBtn8Click(Sender: TObject);
var
	XSUCCESS: Boolean;
   XDESCERRO: String;
	XCODNEWORDEM: Integer;
begin
  //inherited;
  If AbrirForm(TFOrcamento, FOrcamento, 1)='Selected'
   Then Begin
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente importar o orçamento'+#13+'Nº '+DMSAIDA.WOrc.FieldByName('NUMORC').AsString+'?'  , '', 2, 3, False, 'c')= 2
   	Then Begin
			//Filtra Orçamento referente
           If FiltraTabela(DMSAIDA.TOrc, 'ORCAMENTO', 'COD_ORCAMENTO', DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString, '')=True
           Then Begin
           	//FILTRA FORMA DE PAGAMENTO DE ACORDO COM ORÇAMENTO
           	FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMSAIDA.WOrc.FieldByNAme('COD_FORMPAG').AsString, '');

           	//FILTRA LOJA
               FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
               //AUTODETERMINA IMPORTAÇÃO COMO SUCESSO
               XSUCCESS:=True;
				XDESCERRO:='';
               TRY
					//INSERE NOVO PEDIDO
				   //	BtnNovo.Click;

                   XCOD_ORDEM:=-1;
                   XCOD_CLIENTE:=-1;
                   XCOD_EQUIPAMENTO:=-1;
                   XCOD_FUNCIONARIO:=-1;
                   XCOD_ITPROD:=-1;
                   XCOD_ITSERV:=-1;
                   XCOD_VENDEDOR:=-1;
                   XCOD_FORMPAG:=-1;

                   If FiltraTabela(DMMacs.TEmpresa,  'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = True
                   Then Begin

                        // - 19/03/2009: busca proximo numero de OS
                       If DMMACS.TEmpresa.FieldByName('PROX_OS').AsString = '' Then
                           XNumOrdem := '1'
                       Else
                           XNumOrdem := DMMACS.TEmpresa.FieldByName('PROX_OS').AsString;

                       // - 19/03/2009: mostra na edit numero OS
                       DBNumOrd.Text := XNumOrdem;

                       // - 19/03/2009: incrementa numero OS em Empresa
                       Try
                           DMMACS.TEmpresa.EDIT;
                           DMMACS.TEmpresa.FieldByName('PROX_OS').AsString := IntToStr(StrToInt(DMMACS.TEmpresa.FieldByName('PROX_OS').AsString)+1);
                           DMMACS.TEmpresa.Post;
                           DMMACS.Transaction.CommitRetaining;
                       Except
                           MessageDlg('O Número da ordem não foi incrementado em empresa', mtWarning, [mbOK], 0);
                           DMMACS.Transaction.RollbackRetaining;
                       End;

                   End;
                   Try
                       DMServ.TOrd.Insert;
                       XCOD_ORDEM:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
                       XCODPKMESTRE:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
                       DMServ.TOrd.Post;
                       DMServ.TOrd.ApplyUpdates;
                       DMServ.IBT.CommitRetaining;

                       DMServ.TAlx1.Close;
                       DMServ.TAlx1.SQL.Clear;
                       DMServ.TAlx1.SQL.Add('update ORDEM set NUMERO = :NUMERO, DTABERT = :DTABERT, HRABERT = :HRABERT,');
                       DMServ.TAlx1.SQL.Add('STATUS = :STATUS, COD_LOJA = :COD_LOJA, LOCALAT = :LOCALAT, EDIT = :EDIT');
                       DMServ.TAlx1.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
                       DMServ.TAlx1.ParamByName('OLD_COD_ORDEM').AsInteger := XCOD_ORDEM;
                       DMServ.TAlx1.ParamByName('NUMERO').AsString:= XNumOrdem;
                       DMServ.TAlx1.ParamByName('DTABERT').AsDateTime:=Date();
                       DMServ.TAlx1.ParamByName('HRABERT').AsDateTime:=Time();
                       DMServ.TAlx1.ParamByName('STATUS').AsString:='ABERTO';
                       DMServ.TAlx1.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
                       DMServ.TAlx1.ParamByName('LOCALAT').AsString:='BALCÃO';
                       DMServ.TAlx1.ParamByName('EDIT').AsString := '1';
                       DMServ.TAlx1.ExecSQL;

                       DMServ.IBT.CommitRetaining;


                   Except
                       MessageDlg('A Odem não foi inserida no banco', mtWarning, [mbOK], 0);
                       PConsulta.Visible:=False;
                       PCadastro.Visible:=True;
                       PCadastro.BringToFront;
                   End;
                   If FiltraTabela(DMServ.TOrd,  'ORDEM', 'COD_ORDEM', IntToStr(XCODPKMESTRE), '') = False
                   Then Begin
                        Mensagem('Mzr Sistemas - INFORMAÇÃO', 'A Ordem inserida foi perdida. Reinicie o sistema!', '', 1, 1, false, 'i');
                        exit
                   End;


                   //Seleciona somente os registros corretos
                   FiltraSlave;
                   //Chama função para calcular descontos
                   EfetuaDesconto('GERAL', 'MOEDA');

                   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCODPKMESTRE), '');
                   
                   DMServ.TOrd.Edit;
                   DMServ.TOrd.FieldByName('EDIT').AsString := '0';

               	//ATRIBUI VALOR DA PK PARA VARIAVEL PARA QUE DEPOIS OS DADOS POSSAM SER REENCONTRADOS
					XCODNEWORDEM:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
               	//IMPORTA INFORMAÇÕES DE CABEÇALHO DO ORÇAMENTO
                   DMServ.TOrd.FieldByName('COD_CLIENTE').AsString:=DMSAIDA.TOrc.FieldByName('COD_CLIENTE').AsString;
               	DMServ.TOrd.FieldByName('COD_USUARIO').AsString:=DMSAIDA.TOrc.FieldByName('COD_USUARIO').AsString;
               	DMServ.TOrd.FieldByName('NUMORC').AsString:=DMSAIDA.TOrc.FieldByName('NUMORC').AsString;
               	DMServ.TOrd.FieldByName('COD_VENDEDOR').AsString:=DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsString;
                   XCOD_VENDEDOR := DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger;
               	DMServ.TOrd.FieldByName('COD_FORMPAG').AsString:=DMSAIDA.TOrc.FieldByName('COD_FORMPAG').AsString;
               	DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger:=-1;
               	DMServ.TOrd.FieldByName('OBSERVACAO').AsString:=DMSAIDA.TOrc.FieldByName('OBS').AsString;
               	DMServ.TOrd.FieldByName('TOTORD').AsCurrency:=DMSAIDA.TOrc.FieldByName('VLRTOTAL').AsCurrency;
               	DMServ.TOrd.FieldByName('TOTPROD').AsCurrency:=DMSAIDA.TOrc.FieldByName('VLRPROD').AsCurrency;
               	DMServ.TOrd.FieldByName('TOTSERV').AsCurrency:=DMSAIDA.TOrc.FieldByName('VLRSERV').AsCurrency;
               	DMServ.TOrd.FieldByName('TOTDESP').AsCurrency:=DMSAIDA.TOrc.FieldByName('VLRDESP').AsCurrency;
               	DMServ.TOrd.FieldByName('DESCPROD').AsCurrency:=DMSAIDA.TOrc.FieldByName('DESCPROD').AsCurrency;
               	DMServ.TOrd.FieldByName('DESCSERV').AsCurrency:=DMSAIDA.TOrc.FieldByName('DESCSERV').AsCurrency;
                   DMServ.TOrd.Post;

               Except
                   XSUCCESS:=False;
                   XDESCERRO:=' Cabeçalho de orçamento;';
               End;

               ////////////////////////////////////////////////////
           	//FILTRA DESPESAS DE ORÇAMENTO PARA SEREM IMPORTADOS
               ////////////////////////////////////////////////////
               TRY
   				DMESTOQUE.Alx.Close;
   				DMESTOQUE.ALX.SQL.Clear;
   				DMESTOQUE.ALX.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'ORCAMENTO'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
					DMESTOQUE.ALX.ParamByName('COD_GERADOR').AsString:=DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
					DMESTOQUE.ALX.Open;

               	//Percorre os itens de Despesas do orçamento importando para ordem
               	DMESTOQUE.ALX.First;
               	While not DMESTOQUE.ALX.Eof do
               	Begin
   					//Inserir serviço a lista de serviços
						XCOD_ITDESP:=InserReg(DMESTOQUE.TDesp, 'DESPADIC', 'COD_DESPADIC');
   					DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger:=XCOD_ITDESP;
   					DMESTOQUE.TDesp.FieldByName('COD_GERADOR').AsInteger:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
   					DMESTOQUE.TDesp.FieldByName('GERADOR').AsString:='ORDEM';
   					DMESTOQUE.TDesp.FieldByName('DESPESA').AsString:=DMESTOQUE.ALX.FieldByName('DESPESA').AsString;
   					DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency:=DMESTOQUE.ALX.FieldByName('QTD').AsCurrency;
   					DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency:=DMESTOQUE.ALX.FieldByName('VLRREAL').AsCurrency;
   					DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency:=DMESTOQUE.ALX.FieldByName('VLRFINAL').AsCurrency;
   					DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency:=DMESTOQUE.ALX.FieldByName('VLRTOTFIN').AsCurrency;
                       DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency:=DMESTOQUE.ALX.FieldByName('VLRTOTFIN').AsCurrency-(DMESTOQUE.ALX.FieldByName('VLRFINAL').AsCurrency*DMESTOQUE.ALX.FieldByName('QTD').AsCurrency);
                       DMESTOQUE.TDesp.FieldByName('LUCPER').AsCurrency:=((DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency*100)/(DMESTOQUE.ALX.FieldByName('VLRFINAL').AsCurrency*DMESTOQUE.ALX.FieldByName('QTD').AsCurrency));
						DMESTOQUE.TDesp.Post;
                   	DMESTOQUE.ALX.Next;
               	End;
               Except
                   XSUCCESS:=False;
                   XDESCERRO:=XDESCERRO+' em importar despesas;';
               End;

               // apenas repassa a forma de pagamento para os campos que logo mais serão usados para conferir valores
               If FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',DMSAIDA.TOrc.FieldByName('COD_FORMPAG').AsString,'') = true
               Then Begin
                   FrmFormPag1.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('cod_formpag').AsString;
                   FrmFormPag1.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('descricao').AsString;
               End;

               ////////////////////////////////////////////////////
           	//FILTRA SERVIÇOS DE ORÇAMENTO PARA SEREM IMPORTADOS
               ////////////////////////////////////////////////////
               TRY
					DMESTOQUE.TSlaveServ.Close;
					DMESTOQUE.TSlaveServ.SQL.Clear;
					DMESTOQUE.TSlaveServ.SQL.Add('select itservorc.cod_itservorc, itservorc.cod_orcamento, itservorc.cod_servico, ');
					DMESTOQUE.TSlaveServ.SQL.Add('itservorc.desconto, itservorc.qtd, itservorc.vlrtotal AS TOTAL, itservorc.vlrunit,  subservico.vlrunit AS VLRUNITCUSTO, ');
					DMESTOQUE.TSlaveServ.SQL.Add('subservico.descricao ');
					DMESTOQUE.TSlaveServ.SQL.Add('from itservorc left join subservico ON itservorc.cod_servico = subservico.cod_subservico ');
					DMESTOQUE.TSlaveServ.SQL.Add('Where itservorc.cod_orcamento = :CODORDEM ');
					DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsString:=DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
                   DMESTOQUE.TSlaveServ.SQL.Text;
					DMESTOQUE.TSlaveServ.Open;

               	//Percorre os itens de serviço do orçamento importando para ordem
               	DMESTOQUE.TSlaveServ.First;
               	While not DMESTOQUE.TSlaveServ.Eof do
               	Begin
   					//Inserir serviço a lista de serviços
   					XCOD_ITSERV:=InserReg(DMSERV.TSOrd, 'ITSERVORD', 'COD_ITSERVORD');
   					DMSERV.TSOrd.FieldByName('COD_ITSERVORD').AsInteger:=XCOD_ITSERV;
   					DMSERV.TSOrd.FieldByName('COD_ORDEM').AsInteger:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
   					DMSERV.TSOrd.FieldByName('COD_SERVICO').AsInteger:=DMESTOQUE.TSlaveServ.FieldByName('COD_SERVICO').AsInteger;
   					DMSERV.TSOrd.FieldByName('QTD').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('QTD').AsCurrency;
   					DMSERV.TSOrd.FieldByName('DESCONTO').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('DESCONTO').AsCurrency;
   					DMSERV.TSOrd.FieldByName('VLRUNIT').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('VLRUNIT').AsCurrency;
   					DMSERV.TSOrd.FieldByName('VLRUNITCUSTO').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('VLRUNITCUSTO').AsCurrency;
   					DMSERV.TSOrd.FieldByName('TOTAL').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
   					DMSERV.TSOrd.FieldByName('COD_FUNCIONARIO').AsInteger:=DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsInteger;
   					DMSERV.TSOrd.FieldByName('DATA').AsDateTime:=Date();
   					DMSERV.TSOrd.FieldByName('PIS').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('PIS').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('CONTSOC').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('CONTSOC').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('IR').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('IMPREND').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('COFINS').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('COFINS').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('INSS').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('INSS').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('ISSQN').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('ISSQN').AsCurrency)/100;
   					DMSERV.TSOrd.FieldByName('OUTROS').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency*DMMACS.TLoja.FieldByName('OUTROIMPSERV').AsCurrency)/100;

                       // ou seja, se existe vendedor no orcamento passa por esse codigo abaixo
                       If XCOD_VENDEDOR > 0
                       Then Begin
                           FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsString,'');

                           If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                           Then Begin
                               DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency:= (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency)/100;
                           End
                           Else Begin
                               DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency:= (DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPSER').AsCurrency)/100;
                           End;
                       End
                       Else Begin
                           DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency:=0;
                       End;

   					DMSERV.TSOrd.FieldByName('TOTENCARGO').AsCurrency:=DMSERV.TSOrd.FieldByName('PIS').AsCurrency+DMSERV.TSOrd.FieldByName('CONTSOC').AsCurrency+DMSERV.TSOrd.FieldByName('IR').AsCurrency+DMSERV.TSOrd.FieldByName('COFINS').AsCurrency+DMSERV.TSOrd.FieldByName('INSS').AsCurrency+DMSERV.TSOrd.FieldByName('ISSQN').AsCurrency+DMSERV.TSOrd.FieldByName('OUTROS').AsCurrency;
						DMSERV.TSOrd.FieldByName('LUCMOE').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency-DMSERV.TSOrd.FieldByName('TOTENCARGO').AsCurrency-DMSERV.TSOrd.FieldByName('COMISSAO').AsCurrency;
						DMSERV.TSOrd.FieldByName('LUCPER').AsCurrency:=(DMSERV.TSOrd.FieldByName('LUCMOE').AsCurrency*100)/DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
						DMServ.TSOrd.Post;
                   	DMESTOQUE.TSlaveServ.Next;
               	End;
               Except
                   XSUCCESS:=False;
                   XDESCERRO:=XDESCERRO+' em importar serviços;';
               End;

               /////////////////////////////////////////////////////
           	//FILTRA PRODUTOS DE ORÇAMENTO PARA SEREM IMPORTADOS
               /////////////////////////////////////////////////////
               TRY
					DMESTOQUE.TSlave.Close;
					DMESTOQUE.TSlave.SQL.Clear;
					DMESTOQUE.TSlave.SQL.Add('Select itprodorC.cod_itprodorC, itprodorC.cod_orcamento, itprodorc.cod_estoque,  itprodorc.qtd, itprodorc.vlrtotal AS TOTAL, ');
					DMESTOQUE.TSlave.SQL.Add('itprodorc.desconto, itprodorc.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, ');
		   			DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD ');
					DMESTOQUE.TSlave.SQL.Add('From itprodorc left Join estoque on itprodorc.cod_estoque = estoque.cod_estoque ');
					DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
					DMESTOQUE.TSlave.SQL.Add('Where itprodorc.cod_orcamento = :CODORDEM ');
					DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString:=DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
					DMESTOQUE.TSlave.Open;
	               	//Percorre os itens de produto do orçamento importando para pedido
	               	DMESTOQUE.TSlave.First;
               	While not DMESTOQUE.TSlave.Eof do
               	Begin
						//ENCONTRA ESTOQUE
                   	If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '')=False
                   	Then Begin
                   		Mensagem('OPÇÃO BLOQUEADA', 'Não foi possível encontrar a tabela estoque para o produto:'+#13+DMESTOQUE.TSlave.FieldByName('descricao').AsString, '', 1, 1, False, 'a');
                       	XSUCCESS:=False;
	 						Exit;
                   	End;

   					//Valida quanto ao estoque físico (veirifca se ha estoque suficiente
   					//Verifica se o desconto dado no produto é superior ao permitido
       				If DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency=0
       				Then Begin//Se não ha restrições de desconto do produto em empresa procura em produto
       					If (DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency>DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency)
       					Then Begin
								If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
               				Then Begin
									If ControlAccess('DESCPMAIOR', '')=False
               					Then Begin  //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                                   	//Processo de importação recusado
                                   	XSUCCESS:=False;
                               	End;
                           	End
               				Else Begin
                           		//Processo de importação recusado
                   				XSUCCESS:=False;
                   			End;
               			End;
       				End
       				Else Begin
       					If (DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency>DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency)
       					Then Begin
								If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
               				Then Begin
									If ControlAccess('DESCPMAIOR', '')=False
               					Then Begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                           			//Processo de importação recusado
                               		XSUCCESS:=False;
                           		End;
                   			End;
                   		End;
               		End;
	  					If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
	    				Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
		  					If DMMacs.TLoja.FieldByName('VENDESTNEG').AsString='0'
	        				Then Begin
                       		If DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency>DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency
	                			Then Begin//o estoque que esta sendo negociado é maior que o estoque físico e segundo configuraçãoes isto não é permitido
	 								Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação. Produto:'+#13+DMESTOQUE.TSlave.FieldByName('descricao').AsString, '', 1, 1, False, 'a');
                               	XSUCCESS:=False;
                                   FiltraSlave;
	 								Exit;
                           	End;
	            			End;
	        			End;
                   	//Inserir Produto a lista do ordem
   					XCodSlave:=InserReg(DMServ.TPOrd, 'ITPRODORD', 'COD_ITPRODORD');
   					DMServ.TPOrd.FieldByName('COD_ITPRODORD').AsInteger:=XCodSlave;
						DMServ.TPOrd.FieldByName('COD_ORDEM').AsInteger:=DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
						DMServ.TPOrd.FieldByName('NUMREQ').AsString:='ORC-'+DMSAIDA.TOrc.FieldByName('NUMORC').AsString;
						DMServ.TPOrd.FieldByName('COD_FUNCIONARIO').AsInteger:=DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsInteger;
						DMServ.TPOrd.FieldByName('DATA').AsString:=DateToStr(Date());
       				DMServ.TPOrd.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALCUSTO').Value;
       				DMServ.TPOrd.FieldByName('VALREP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALREP').Value;
       				DMServ.TPOrd.FieldByName('COEFDIV').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('COEFDIV').Value;
						DMServ.TPOrd.FieldByName('VALCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').Value*EDQuantidade.ValueNumeric;
						CalcLuc(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency, DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency, DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency);
						DMServ.TPOrd.FieldByName('LUCMOE').AsCurrency:=AlxLUCMOE;
						DMServ.TPOrd.FieldByName('VLRVENDBD').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;
						DMServ.TPOrd.FieldByName('LUCPER').AsCurrency:=AlxLUCPER;
						DMServ.TPOrd.FieldByName('LUCREL').AsCurrency:=ALXLUCREAL;
       				Try

                           // se tiver um funcionario selecionado
                           If XCOD_VENDEDOR > 0
                           Then Begin
                               // filtra estoque para buscar os valores das porcentagens das comissoes
                               FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString,'');

                               // se na loja esta configurado p buscar preço somente a prazo
                               If DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '1'
                               Then Begin
                                   // se na loja esta configurado p buscar do funcionario
                                   If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
                                   Then Begin
                                       // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                                       FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                                       DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                                       DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                                   End
                                   Else Begin
                                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                                       DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                                   End;
                               End
                               Else Begin
                                   // se na loja esta configurado p buscar do funcionario
                                   If (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
                                   Then Begin
                                       // DADOS DA TABELA FUNCARGO QUE SERÃO UTILIZADAS PARA OS CALCULOS ABAIXO
                                       FiltraTabela(DMPESSOA.TFunCargo,'FUNCARGO','COD_FUNCIONARIO',IntToStr(XCOD_VENDEDOR),'');

                                       DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO

                                       // sse a forma de pagamento for a vista
                                       If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                                       Then Begin
                                           //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                                           DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100;
                                       End
                                       Else Begin
                                           //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                                           DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                                       End;
                                   End
                                   Else Begin
                                       // sse a forma de pagamento for a vista
                                       If FrmFormPag1.EdDescricao.Text = 'À VISTA'
                                       Then Begin
                                           //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                                           DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) /100;
                                       End
                                       Else Begin
                                           //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                                           DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                                       End;
                                   End;
                               End;
                           End;
       				Except
							DMServ.TPOrd.FieldByName('COMISSAO').AsCurrency:=0;
       				End;
						DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
						DMServ.TPOrd.FieldByName('QTD').Value:=DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
						DMServ.TPOrd.FieldByName('DESCONTO').Value:=DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency;
						DMServ.TPOrd.FieldByName('VLRUNIT').Value:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency;
                   	DMServ.TPOrd.FieldByName('TOTAL').Value:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
   					//Tenta gravar as informações
   					Try
       					//Atualiza Estoque
       					DMEstoque.TEstoque.edit;
                           DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
          					//atualiza estoque físico
							DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value-DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
              				//Atualiza data da ultima venda
							DMEstoque.TEstoque.FieldByName('ULTVENDA').AsString:=DateToStr(Date());
                             DMESTOQUE.TEstoque.Post;

							//ATUALIZA CUSTO DE ESTOQUE
							DMESTOQUE.CalcCustMed(DMESTOQUE.TEstoque.FieldByNAme('COD_ESTOQUE').AsInteger, 'S', DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency, DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency*DMEstoque.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency);

                             DMESTOQUE.TEstoque.Edit;
       					//Atualiza saldo de estoque
                       		DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency:=(DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency)-DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency;
							DMESTOQUE.TEstoque.Post;

                             DMServ.TPOrd.Edit;
       					DMServ.TPOrd.Post;
                             DMEstoque.TEstoque.Edit;
							DMEstoque.TEstoque.Post;
                             DMESTOQUE.TransacEstoque.CommitRetaining;
                   	Except
                   		Mensagem('OPÇÃO BLOQUEADA', 'Problemas ao atualizar o estoque. Produto:'+#13+DMESTOQUE.TSlave.FieldByName('subproduto.descricao').AsString, '', 1, 1, False, 'a');
                       	XSUCCESS:=False;
                         Exit;
                   	End;
                   	DMESTOQUE.TSlave.Next;
                   End;
               Except
                   XSUCCESS:=False;
                   XDESCERRO:=' em importar produtos'
               End;
               If XSUCCESS=True
               Then Begin
                   DMServ.TOrd.Edit;
                   DMServ.TOrd.Post;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMServ.IBT.CommitRetaining;
                   FBEquipPlaca.EDCodigo.Text:='';
                   FBEquipPlaca.EdDescricao.Text:='';
                   FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCODNEWORDEM), '');
                   BtnConsultar.Click;
                   DMServ.TOrd.Edit;
                   DMServ.TOrd.FieldByName('EDIT').AsString := '1';
                   DMServ.TOrd.Post;
               End
               Else Begin
               	Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao importar orçamento. Verifique as informações!', 'Problemas '+XDESCERRO, 1, 1, True, 'a');
					DMESTOQUE.TransacEstoque.RollbackRetaining;
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
                   DMSAIDA.IBT.RollbackRetaining;
                   BtnCancelar.Click;
               End;
           End
           Else Begin
				Mensagem('INFORMAÇÃO!', 'Não foi possivel importar o orçamento solicitado! A tabela de orçamento não localizou registro. Tente reiniciar o sistema!', '', 1, 1, False, 'a');
               Exit;
           End;
		End;
   End;
end;

procedure TFOrdemMec.Duplicata1Click(Sender: TObject);
begin
  inherited;
	If Mensagem('CONFIRMAÇÃO !', 'Imprimir Duplicata para a ordem?', '', 2, 3, False, 'c')= 2
	Then Begin
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
       DMFINANC.TAlx.SQL.Add(' where (ctareceber.cod_gerador=:CODIGO) and (ctareceber.tipogerador='+#39+'ORD'+#39+')');
       DMFINANC.TAlx.ParamByName('CODIGO').AsString:=DMServ.TOrd.FieldByName('cod_ordem').AsString;
       DMFINANC.TAlx.Open;

       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('select ordem.cod_ordem,ordem.totord, ordem.numfiscal,ordem.totprod, ordem.totserv,docfisord.dtemissao from ordem');
       DMSAIDA.TAlx.SQL.Add('left join docfisord on ordem.cod_ordem = docfisord.cod_ordem ');
       DMSAIDA.TAlx.SQL.Add('where ordem.cod_ordem=:CODIGO');
       DMSAIDA.TAlx.ParamByName('CODIGO').AsString:=DMServ.TOrd.FieldByName('cod_ordem').AsString;
       DMSAIDA.TAlx.Open;


       If not DMFINANC.TAlx.IsEmpty
       Then Begin
			DMCONTA.TParcCR.Close;
           DMCONTA.TParcCR.SQL.Clear;
           DMCONTA.TParcCR.SQL.Add(' update parcelacr set parcelacr.numfisc=:numero where parcelacr.cod_ctareceber=:codigo ');
           DMCONTA.TParcCR.ParamByName('numero').AsString:=DMSAIDA.TAlx.FieldByName('numfiscal').AsString;
           DMCONTA.TParcCR.ParamByName('codigo').AsString:=DMFINANC.TAlx.FieldByName('cod_ctareceber').AsString;
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
           FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', '', '','');
           //SELECIONA CIDADE PARA A EMPRESA
           FiltraTabela(DMpessoa.TALX, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
           QRDUPLICATA.Preview;
       End
       Else Begin
			MessageDlg('A ORDEM DE SERVIÇO NÃO POSSUI CONTAS PENDENTES', mtWarning, [mbOK], 0);
       End;
   End;

end;

procedure TFOrdemMec.QRDUPLICATABeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  	Try
   	QrImageLogo.Picture.LoadFromFile(DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString);
   	QrImageLogo02.Picture.LoadFromFile(DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString);
   Except
   End;
end;

procedure TFOrdemMec.BtnLiberaExportaClick(Sender: TObject);
begin
  inherited;
    //LIBERA EXPORTAÇÃO DE ORDENS
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('update empresa set empresa.emexporta='+#39+'0'+#39);
    DMMACS.TALX.ExecSQL;
    DMMACS.Transaction.CommitRetaining;  
end;

procedure TFOrdemMec.OrdporSubstituioTributria1Click(Sender: TObject);
begin
  inherited;
    	FMenu.TIPOREL:='ORDST';
     	AbrirForm(TFRelMecanica, FRelMecanica, 0);
		FMenu.TIPOREL:='';
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

   If (Not DMServ.TAlx1.IsEmpty) and (DMServ.TAlx1.FieldByName('cod_ordem').AsInteger <> XCOD_ORDEM)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Já existe outra ordem de serviço com o mesmo número. Por favor, altere o valor.','',1,1,false,'I');
       DBNumOrd.SetFocus;
       Exit;
   End;

   //VALIDA CAMPOS NECESSÁRIOS
   If (XCOD_CLIENTE=-1) or (FrmCliente.EDCodigo.Text = '')
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe um Cliente para Ordem de Serviço', '', 1, 1, False, 'a');
       FrmCliente.EDCodigo.SetFocus;
       Exit;
   End;

   If ((XCOD_EQUIPAMENTO=-1)  or (FBEquipPlaca.EDCodigo.Text = '')) AND (CBVENDABALCAO.Checked=FALSE)
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe uma placa para Ordem de Serviço', '', 1, 1, False, 'a');
       FBEquipPlaca.EDCodigo.SetFocus;
       Exit;
   End;

   If (XCOD_FORMPAG=-1) or (FrmFormPag1.EDCodigo.Text = '')
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe a Forma de Pagamento para a Ordem de Serviço', '', 1, 1, False, 'a');
       FrmFormPag1.EDCodigo.SetFocus;
       Exit;
   End;

   If XCOD_CLIENTE=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
   Then Begin
       If FrmFormPag1.EdDescricao.Text<>'À VISTA'
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
           FrmFormPag1.BTNOPEN.SetFocus;
           Exit;
       End;
   End;

   If (DBBox.Text = '') and (CBVENDABALCAO.Checked=False)
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe o box para Ordem de Serviço', '', 1, 1, False, 'a');
       Exit;
   End;


   //VERIFICA SE O PEDIDO JÁ POSSUI DOC FI PARA EDITAR O VALOR
   If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+IntToStr(XCOD_ORDEM)+#39+')')=True
   Then Begin
       //EDITAL FISCAL EXISTENTE
       DMSAIDA.TFiscPV.Edit;
       DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency:=DMServ.TOrd.FieldByName('VALOR').AsCurrency;
       DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency:=DMServ.TOrd.FieldByName('VALOR').AsCurrency;
       DMSAIDA.TFiscPV.Post;
   End;

   DMServ.TOrd.Edit;
   IF CBGarantia.Checked Then
       DMServ.TOrd.FieldByName('GARANTIA').AsString:='1'
   Else
       DMServ.TOrd.FieldByName('GARANTIA').AsString:='';

   //INFORMA CODIGO DO USUARIO
   DMServ.TOrd.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
   //INFORMA CODIGO DO CLIENTE
   DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger:=XCOD_CLIENTE;
   //INFORMA CODIGO DO EQUIPAMENTO
   DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger:=XCOD_EQUIPAMENTO;
   DMServ.TOrd.Post;
   //FILTRA VENDEDOR
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
   DMServ.TOrd.Edit;
   //INFORMA CODIGO DO VENDEDOR
   DMServ.TOrd.FieldByName('COD_VENDEDOR').AsInteger:=DMPESSOA.VWFuncionario.fieldByName('COD_FUNC').AsInteger;
   //INFORMA CODIGO DO RESPONSÁVEL
   DMServ.TOrd.FieldByName('COD_FUNCIONARIO').AsInteger:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
   //INFORMA CODIGO DA LOJA
   DMServ.TOrd.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
   //INFORMA FORMA DE PAGAMENTO
   DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;
   DMServ.TOrd.FieldByName('observacao').AsString:=MObs.Lines.Text;
   DMServ.TOrd.FieldByName('OBSORDEM').AsString:=MObsOrdem.Lines.Text;
   //GRAVA TOTAIS
   DMServ.TOrd.FieldByName('TOTORD').AsCurrency:=EdValorOrd.ValueNumeric;
   DMServ.TOrd.FieldByName('TOTPROD').AsCurrency:=EdtotalProd.ValueNumeric;
   DMServ.TOrd.FieldByName('TOTSERV').AsCurrency:=EdTotalserv.ValueNumeric;
   DMServ.TOrd.FieldByName('TOTDESP').AsCurrency:=EdTotDesp.ValueNumeric;
   DMServ.TOrd.FieldByName('DESCONTO').AsCurrency:=EdDescTOrdem.ValueNumeric;
   DMServ.TOrd.FieldByName('DESCPROD').AsCurrency:=EdDescTProd.ValueNumeric;
   DMServ.TOrd.FieldByName('DESCSERV').AsCurrency:=EdDescTServ.ValueNumeric;
   //Informa Situação do pedido
   DMServ.TOrd.FieldByName('STATUS').AsString:='ABERTO';
   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
   If (CBVENDABALCAO.Checked=true) and (DMServ.TOrd.FieldByName('BOX').AsString='') Then
       DMServ.TOrd.FieldByName('BOX').AsString:='-1';
   If (CBVENDABALCAO.Checked=true) Then
       DMServ.TOrd.FieldByName('LOCALAT').AsString:='BALCÃO';

   DMServ.TOrd.Post;
   //ALEX: 13/05/2009 - O TRECHO ABAIXO FOI COMENTADO  PEDIDO DA MERCESCAN
   //COMENTAR PAR MERCESCAN
   If (XCOD_EQUIPAMENTO > 0)
   Then Begin
       //verifica se o equipamento selecionado pertence ao cliente selecionado
       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add(' select * from equipamento where equipamento.cod_equipamento=:codigo ');
       DMServ.TAlx1.ParamByName('codigo').AsString := DMServ.TOrd.FieldByName('cod_equipamento').AsString;
       DMServ.TAlx1.Open;
       If NOT DMServ.TAlx1.IsEmpty
       Then Begin
           If (DMServ.TAlx1.FieldByName('cod_cliente').AsString<>DMServ.TOrd.FieldByName('cod_cliente').AsString) and ((DMServ.TAlx1.FieldByName('cod_cliente').AsString<>'') or (DMServ.TAlx1.FieldByName('cod_cliente').AsString<>'0'))
           Then Begin
               Mensagem('   A T E N Ç Ã O   ','O Equipamento selecionado na ordem não corresponde com o cliente selecionado. Altere por favor!','',1,1,false,'I');
               FrmCliente.EDCodigo.SetFocus;
               Exit;
           End;
       End
       Else Begin
           Mensagem('   A T E N Ç Ã O   ','O Equipamento selecionado na ordem não foi encontrado','',1,1,false,'I');
           Exit;
       End;
   End;

   Try
      DMServ.IBT.CommitRetaining;
   Except
      DMServ.IBT.RollbackRetaining;
   End;

   //FILTRA VIEW DE ORDEM PARA PODER IMPRIMIR
   If FiltraTabela(XView, 'VWORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '') Then
   	PmRelatorio.Items[0].Click;

end;

procedure TFOrdemMec.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
	XCodTmpEstoque:=DBGrid1.Columns[0].Field.Text;
end;

procedure TFOrdemMec.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
	//Caso este codigo seja alterado, o mesmo codigo em edcodfabkeyup no bloco de tratamento de para ENTER (RETURN) tbm deve ser alterado
   //Refiltra a tabela vwsimilar de acordo com registro escolhido
   DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
   DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where vwsimilar.cod_estoque=:Codigo');
   DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString:=XCodTmpEstoque;
   DMESTOQUE.WSimilar.Open;
   If Not DMESTOQUE.WSimilar.IsEmpty
   Then Begin
       EscreveLabelsPROD;
       PListaProdutos.Visible:=False;
       EDCodFab.Text := '';
       EDQuantidade.Text := '1,00';
       EDQuantidade.SetFocus;
   End
   Else Begin
       MessageDlg('ATENÇÃO!'+#13+#10+'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);
   End;
end;

procedure TFOrdemMec.Valida1Click(Sender: TObject);
var
   XAuxA,XAuxB,XCount: Integer;
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
   EDataFinal.Text := (IntToStr(UltDiaMes(Month,Year)) + '/' + IntToStr(Month) + '/' + IntToStr(Year));
   XFinalSql := (IntToStr(UltDiaMes(Month,Year)) + '/' + IntToStr(Month) + '/' + IntToStr(Year));

   XAuxA := EncontraValores('DOCFISORD', 'COD_DOCFISCORD', '', '', ' desc');
   XAuxB := EncontraValores('DOCFISSAIDA', 'COD_DOCFISC', '', '', ' desc');
   if(XAuxA > XAuxB)then
   	XMax := IntToStr(XAuxA)
   else
   	XMax := IntToStr(XAuxB);

   EDUltNota.Text := XMax;

end;

procedure TFOrdemMec.Button2Click(Sender: TObject);
begin
  inherited;
  	if(MessageDlg('Deseja mesmo alterar o número da proxima nota fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
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
   XAuxC,XAuxD,XCount: Integer;
begin
  inherited;

  	XInicialSQL := EDataInicial.Text;
   XFinalSQL := EDataFinal.Text;

   //Djonathan 23/11/2009: ENCONTRANDO MAXIMO E MINIMO
   XAuxC := EncontraValores('DOCFISORD', 'COD_DOCFISCORD', XInicialSQL, XFinalSQL, '');
   XAuxD := EncontraValores('DOCFISSAIDA', 'COD_DOCFISC', XInicialSQL, XFinalSQL, '');
   if((XAuxD <= 0) or (XAuxC < XAuxD))then
      		XMin := IntToStr(XAuxC)
   else begin
     		XMin := IntToStr(XAuxD);
   end;

   XAuxC := EncontraValores('DOCFISORD', 'COD_DOCFISCORD', XInicialSql, XFinalSql, ' desc');
   XAuxD := EncontraValores('DOCFISSAIDA', 'COD_DOCFISC', XInicialSQL, XFinalSQL, ' desc');
   if((XAuxC > XAuxD))then
   	XMax := IntToStr(XAuxC)
   else
   	XMax := IntToStr(XAuxD);

	 //Djonathan 23/11/2009: VARRE AS TABELAS CODFISORD E DOCFISSAIDA ATRAVES DE NUMEROS QUE NAO ESTEJAM SENDO USADOS EM NOTAS
   for XCount := StrToInt(XMax) downto StrToInt(XMin) do
   begin
   	if ((ComparaValores('DOCFISORD','COD_DOCFISCORD',XCount)) And (ComparaValores('DOCFISSAIDA','COD_DOCFISC',XCount)))then
       	MBrechas.Lines.Add(intToStr(XCount));
       if ((not(ComparaValores('DOCFISORD','COD_DOCFISCORD',XCount))) And ((not(ComparaValores('DOCFISSAIDA','COD_DOCFISC',XCount)))))then
       	MDuplicados.Lines.Add(intToStr(XCount));
       if (ComparaValoresInternos('DOCFISORD','VWORDEM','COD_ORDEM','COD_ORDEM',XCount)=true)then
       	MDuplicados.Lines.Add(intToStr(XCount));
       if ((ComparaValoresInternos('DOCFISSAIDA','VWPEDV','COD_PEDVENDA','COD_PEDIDO',XCount)=true))then
       	MDuplicados.Lines.Add(intToStr(XCount));

   end;
end;

procedure TFOrdemMec.btnConfirmarClick(Sender: TObject);
var
	XCOD_PESSOAF, XCOD_PESSOAJ, XFlag: Integer;
begin
  inherited;
	//DJ 27/11/2009: VERIFICA SE USUARIO INFORMOU A PLACA
  	If Length(Trim(edNome.Text)) <=0
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Informe um nome para o cliente!','',1,1,false,'I');
       edNome.SetFocus;
       Exit;
   End;

   If (Length(Trim(edPlaca.Text)) <=0) and (CheckBox1.Checked=false)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Informe a placa!','',1,1,false,'I');
       edPlaca.SetFocus;
       Exit;
   End;

//   Try
   If XcontroleCtrlN=False
   Then Begin
   	//SE O CLIENTE AINDA NÃO FOI CADASTRADO O SISTEMA DEVE CADASTRA-LO
       If not verificaPessoa(false)
       Then Begin
           //ATUALIZA OS CÓDIGOS TEMPORÁRIOS
           DMMACS.TCodigo.Close;
           DMMACS.TCodigo.SQL.Clear;
           DMMACS.TCodigo.SQL.Add('SELECT * FROM CODIGO');
           DMMACS.TCodigo.Open;
           XCOD_PESSOAF:=DMMACS.TCodigo.FieldByName('cod_pessoaf').AsInteger;
           XCOD_PESSOAJ:=DMMACS.TCodigo.FieldByName('cod_pessoaJ').AsInteger;
           XCOD_PESSOA:=DMMACS.TCodigo.FieldByName('cod_pessoa').AsInteger;
           XCOD_CLIENTE:=DMMACS.TCodigo.FieldByName('COD_CLIENTE').AsInteger;
           XCOD_CIDADE:=DMMACS.TCodigo.FieldByName('COD_CIDADE').AsInteger;
           XCOD_EQUIPAMENTO:=DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger;

           //INICIA VALIDAÇÃO DOS CODIGOS
           //VALIDA CODIGO PESSOA
           XFlag:=0;
           while XFlag=0 do
           Begin
               DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOA WHERE PESSOA.COD_PESSOA=:CODIGO');
               DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_Pessoa;
               DMPESSOA.TALX.Open;

               If Not DMPESSOA.TALX.IsEmpty Then
                   XCod_Pessoa:=XCod_Pessoa+1
               Else
                   XFlag:=1;
           End;
           //VALIDA CODIGO PESSOA FISICA
           XFlag:=0;
           while XFlag=0 do
           Begin
               DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAF WHERE PESSOAF.COD_PESSOAF=:CODIGO');
               DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_PessoaF;
               DMPESSOA.TALX.Open;

               If Not DMPESSOA.TALX.IsEmpty Then
                   XCod_PessoaF:=XCod_PessoaF+1
               Else
                   XFlag:=1;
           End;
           //VALIDA CODIGO PESSOA JURIDICA
           XFlag:=0;
           while XFlag=0 do
           Begin
               DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAJ WHERE PESSOAJ.COD_PESSOAJ=:CODIGO');
               DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_PessoaJ;
               DMPESSOA.TALX.Open;

               If Not DMPESSOA.TALX.IsEmpty Then
                   XCod_PessoaJ:=XCod_PessoaJ+1
               Else
                   XFlag:=1;
           End;
           //VALIDA CODIGO CLIENTE
           XFlag:=0;
           while XFlag=0 do
           Begin
               DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE=:CODIGO');
               DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_cliente;
               DMPESSOA.TALX.Open;

               If Not DMPESSOA.TALX.IsEmpty Then
                   XCod_cliente:=XCod_cliente+1
               Else
                   XFlag:=1;
           End;

           //VALIDA CODIGO CIDADE
           XFlag:=0;
           while XFlag=0 do
           Begin
               DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add('SELECT * FROM CIDADE WHERE CIDADE.COD_CIDADE=:CODIGO');
               DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_CIDADE;
               DMPESSOA.TALX.Open;

               If Not DMPESSOA.TALX.IsEmpty Then
                   XCod_cidade:=XCod_cidade+1
               Else
                   XFlag:=1;
           End;

           //VALIDA CODIGO equipamento
           XFlag:=0;
           while XFlag=0 do
           Begin
               DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add(' SELECT * FROM equipamento WHERE equipamento.cod_equipamento=:CODIGO ');
               DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_EQUIPAMENTO;
               DMPESSOA.TALX.Open;

               If Not DMPESSOA.TALX.IsEmpty Then
                   XCOD_EQUIPAMENTO:=XCOD_EQUIPAMENTO+1
               Else
                   XFlag:=1;
           End;
           //FIM DE VALIDAÇÃO DOS CODIGOS

           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' update CODIGO SET codigo.cod_pessoaf=:PESSOAF, codigo.cod_pessoa=:PESSOA, ');
           DMMACS.TALX.SQL.Add(' codigo.cod_pessoaj=:PESSOAJ, codigo.cod_cliente=:CLIENTE, ');
           DMMACS.TALX.SQL.Add(' codigo.cod_cidade=:CIDADE, codigo.cod_equipamento=:EQUIPAMENTO ');
           DMMACS.TALX.ParamByName('PESSOAF').AsInteger:=XCOD_PESSOAF+1;
           DMMACS.TALX.ParamByName('PESSOAJ').AsInteger:=XCOD_PESSOAJ+1;
           DMMACS.TALX.ParamByName('PESSOA').AsInteger:=XCOD_PESSOA+1;
           DMMACS.TALX.ParamByName('CLIENTE').AsInteger:=XCOD_CLIENTE+1;
           DMMACS.TALX.ParamByName('CIDADE').AsInteger:=XCOD_CIDADE+1;
           DMMACS.TALX.ParamByName('EQUIPAMENTO').AsInteger:=XCOD_EQUIPAMENTO+1;
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
            if XCOD_CIDADE > 0 Then
                DMPESSOA.TPessoa.ParamByName('COD_CIDADE').AsInteger := XCOD_CIDADE;
            if edCNPJCPF.Text <> '' Then
                DMPESSOA.TPessoa.ParamByName('CPFCNPJ').AsString := edCNPJCPF.Text;
            if edFone.Text <> '' Then
                DMPESSOA.TPessoa.ParamByName('TELREL').AsString := edFone.Text;

            DMPESSOA.TPessoa.ExecSQL;
            DMPESSOA.TransacPessoa.CommitRetaining;
            // inserir nova pessoa
            DMPESSOA.TPessoa.Close;
            DMPESSOA.TPessoa.SQL.Clear;
            DMPESSOA.TPessoa.SQL.Add('select * from pessoa');
            DMPESSOA.TPessoa.Open;

             // add proximo codigo
             Try
               DMMACS.TCodigo.Edit;
               DMMACS.TCodigo.FieldByname('COD_PESSOA').AsInteger := XCOD_PESSOA+1;
               DMMACS.TCodigo.Post;
               DMMACS.IBTCodigo.CommitRetaining;
             Except
               MessageDlg('ERRO: 278'+#13+#10+'Conflito ao atualizar o código de pessoa', mtWarning, [mbOK], 0);
             End;

            XCOD_CLIENTE:=DMMACS.TCodigo.FieldByName('COD_cliente').AsInteger;

            //verifica se este codigo de cliente já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
            XFlag:=0;
            while XFlag=0 do
            Begin
               DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE=:CODIGO');
               DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCOD_CLIENTE;
               DMPESSOA.TALX.Open;

               If Not DMPESSOA.TALX.IsEmpty Then
                   XCOD_CLIENTE:=XCOD_CLIENTE+1
               Else
                   XFlag:=1;
            End;

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

             If cbConsumidor.Checked
             Then Begin
                 DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '0';
             End
             Else Begin
                 DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '1';
             End;

             DMPESSOA.TCliente.ExecSQL;
             DMPESSOA.TransacPessoa.CommitRetaining;
             // inserir novo cliente
             DMPESSOA.TCliente.Close;
             DMPESSOA.TCliente.SQL.Clear;
             DMPESSOA.TCliente.SQL.Add('select * from cliente');
             DMPESSOA.TCliente.Open;


             // add proximo codigo
             Try
               DMMACS.TCodigo.Edit;
               DMMACS.TCodigo.FieldByname('COD_CLIENTE').AsInteger := XCOD_CLIENTE+1;
               DMMACS.TCodigo.Post;
               DMMACS.IBTCodigo.CommitRetaining;
             Except
               MessageDlg('ERRO: 356'+#13+#10+'Conflito ao atualizar o código de cliente', mtWarning, [mbOK], 0);
             End;


             If RGTIPO.ItemIndex = 0
             Then Begin

                 XCOD_PESSOAF:=DMMACS.TCodigo.FieldByName('COD_PESSOAF').AsInteger;

                  //verifica se este codigo de PESSOAF já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
                  XFlag:=0;
                  while XFlag=0 do
                  Begin
                     DMPESSOA.TALX.Close;
                     DMPESSOA.TALX.SQL.Clear;
                     DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAF WHERE PESSOAF.COD_PESSOAF=:CODIGO');
                     DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCOD_PESSOAF;
                     DMPESSOA.TALX.Open;

                     If Not DMPESSOA.TALX.IsEmpty Then
                         XCOD_PESSOAF:=XCOD_PESSOAF+1
                     Else
                         XFlag:=1;
                  End;

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
                 Try
                   DMMACS.TCodigo.Edit;
                   DMMACS.TCodigo.FieldByName('COD_PESSOAF').AsInteger := XCOD_PESSOAF + 1;
                   DMMACS.TCodigo.Post;
                   DMMACS.IBTCodigo.CommitRetaining;
                 Except
                   MessageDlg('ERRO: 421'+#13+#10+'Conflito ao atualizar o código de pessoa fisica', mtWarning, [mbOK], 0);
                 End;
             End
             Else Begin

                 XCOD_PESSOAJ:=DMMACS.TCodigo.FieldByName('COD_PESSOAJ').AsInteger;

                  //verifica se este codigo de PESSOAF já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
                  XFlag:=0;
                  while XFlag=0 do
                  Begin
                     DMPESSOA.TALX.Close;
                     DMPESSOA.TALX.SQL.Clear;
                     DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAJ WHERE PESSOAJ.COD_PESSOAJ=:CODIGO');
                     DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCOD_PESSOAJ;
                     DMPESSOA.TALX.Open;

                     If Not DMPESSOA.TALX.IsEmpty Then
                         XCOD_PESSOAJ:=XCOD_PESSOAJ+1
                     Else
                         XFlag:=1;
                  End;

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
                   Try
                     DMMACS.TCodigo.Edit;
                     DMMACS.TCodigo.FieldByName('COD_PESSOAJ').AsInteger := XCOD_PESSOAJ + 1;
                     DMMACS.TCodigo.Post;
                     DMMACS.IBTCodigo.CommitRetaining;
                   Except
                     MessageDlg('ERRO: 483'+#13+#10+'Conflito ao atualizar o código de pessoa juridica', mtWarning, [mbOK], 0);
                   End;

             End;
       End
       Else Begin
           //Altera Pessoa Encontrada
           DMPESSOA.TPessoa.Close;
           DMPESSOA.TPessoa.SQL.Clear;
           DMPESSOA.TPessoa.SQL.Add('Update Pessoa Set pessoa.NOME = :Nome, Pessoa.Cod_Cidade = :CodigoCidade, Pessoa.TELREL=:TelRel  ')  ;
           DMPESSOA.TPessoa.SQL.Add(' Where Pessoa.COD_PESSOA=:CodigoPessao ');
           DMPESSOA.TPessoa.ParamByName('CodigoPessao').AsInteger := XCod_Pessoa;
           DMPESSOA.TPessoa.ParamByName('NOME').AsString := edNome.Text;
           DMPESSOA.TPessoa.ParamByName('CodigoCidade').AsInteger := XCOD_CIDADE;
           DMPESSOA.TPessoa.ParamByName('TelRel').AsString := edFone.Text;
           DMPESSOA.TPessoa.ExecSQL;
           DMPESSOA.TransacPessoa.CommitRetaining;
           //Insere os dados de equipamento informado
           If (edPlaca.Text<>'') or (edModelo.Text<>'')
           Then Begin
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
           End;
       End;
	End
   Else Begin
   	//se o cliente é cadastrado, alera suas informações
       If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', IntToStr(XCOD_CLIENTE), '')=True
       Then Begin
       	If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString, '')=True
           Then Begin
           	DMPESSOA.TPessoa.Edit;
               DMPESSOA.TPessoa.FieldByName('NOME').AsString:=edNome.Text;
               DMPESSOA.TPessoa.FieldByName('TELREL').AsString:=edFone.Text;
               DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsInteger:=XCOD_CLIENTE;
				DMPESSOA.TPessoa.Post;
               DMPESSOA.TransacPessoa.CommitRetaining;
           End;
       End;
   End;
   If XControleCadPlaca=False
   Then Begin
       XCOD_EQUIPAMENTO:=DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger;

       //verifica se este codigo de PESSOAF já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
       XFlag:=0;
       while XFlag=0 do
       Begin
           DMPESSOA.TALX.Close;
           DMPESSOA.TALX.SQL.Clear;
           DMPESSOA.TALX.SQL.Add('SELECT * FROM EQUIPAMENTO WHERE EQUIPAMENTO.COD_EQUIPAMENTO=:CODIGO');
           DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCOD_EQUIPAMENTO;
           DMPESSOA.TALX.Open;

           If Not DMPESSOA.TALX.IsEmpty Then
               XCOD_EQUIPAMENTO:=XCOD_EQUIPAMENTO+1
           Else
               XFlag:=1;
       End;

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
       Try
         DMMACS.TCodigo.Edit;
         DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO + 1;
         DMMACS.TCodigo.Post;
         DMMACS.IBTCodigo.CommitRetaining;
       Except
         MessageDlg('ERRO: 548'+#13+#10+'Conflito ao atualizar o código de equipamento', mtWarning, [mbOK], 0);
       End;
   End;

   //seleciona informações para a tela principal
   If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCOD_CLIENTE), '')
   Then Begin
       FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmCliente.EDCodigo.Hint := DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;

       SelecionaFormaPagamento;

       FBEquipPlaca.EDCodigo.SetFocus;

   End
   Else Begin
       XCOD_CLIENTE := -1;
       FrmCliente.EDCodigo.Text:='';
       FrmCliente.EDCodigo.Hint := '';
       FrmCliente.EdDescricao.Text:='';
   End;


   If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(XCOD_EQUIPAMENTO), '')
   Then Begin
       FBEquipPlaca.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
       FBEquipPlaca.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
       If DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> ''
       Then Begin
            lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
       End
       Else Begin
            lbNumFrota.Caption := '';
       End;
       FrmFormPag1.EDCodigo.SetFocus;

   End
   Else Begin
       XCOD_EQUIPAMENTO:=-1;
       FBEquipPlaca.EDCodigo.Text:='';
       FBEquipPlaca.EdDescricao.Text:='';
       lbNumFrota.Caption := '';
   End;

   FrmCliente.Repaint;
   FBEquipPlaca.Repaint;

   PCadastroRapido.SendToBack;
   PCadastroRapido.Visible := False;


   If CheckBox1.Checked=True
   Then Begin
       CBVENDABALCAO.Visible:=True;
       CBVENDABALCAO.Checked:=true;
   End
   Else Begin
       CBVENDABALCAO.Checked:=False;
   End;
end;

procedure TFOrdemMec.edPlacaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
     if (EDPlaca.SelLength > 0) And NOT (KEY = 8) and not (KEY = 13) and not (KEY = 27) then
   begin
       EDPlaca.Text := '';
   end;

   if (Length(EDPlaca.Text)= 3) AND NOT (KEY = 8) then BEGIN
       EDPlaca.Text := EDPlaca.Text+'-';
       EDPlaca.SelStart := 4;
   END;
end;

procedure TFOrdemMec.edPlacaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     if not (key in ['a'..'z','A'..'Z', '0'..'9', #8, #13,#27])
   then
       Key := #0
   else begin    // ['A'..'Z','a'..'z'
       if  Length(EDPlaca.Text) < 4 then
           if not (key in ['a'..'z','A'..'Z', #8, #13,#27]) then
               Key := #0;

       if ( Length(EDPlaca.Text) > 3 ) then
           if not (key in ['0'..'9', #8, #13,#27]) then
               Key := #0
   end;
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
  inherited;
	if(DMServ.WOrdem.FieldByName('numfiscal').AsString <> '')Then Begin
   	XCODDOC := StrToInt(DMServ.WOrdem.FieldByName('cod_ordem').AsString);
      	GeraRelEspelhoNf('ORDEM',XCODDOC);
   End;

   //Testa se existe documento fiscal para o pedido
   if(DMServ.WOrdem.FieldByName('numfiscal').AsString = '')Then
   	MessageBox(0, 'Não foi localizado documento fiscal referente a esta ordem!', 'Atenção', MB_ICONWARNING or MB_OK)
   Else Begin
   	FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfEspelhoNf.frf');
       FsRel.ShowReport;
   End;
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
	FMenu.TIPOREL := 'SINTETICO';
	AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TFOrdemMec.AnalticodeOrdens1Click(Sender: TObject);
begin
  inherited;
	FMenu.TIPOREL := 'ANALITICO';
	AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TFOrdemMec.ServiosPorEquipe1Click(Sender: TObject);
begin
  inherited;
	FMenu.TIPOREL:='EQUIPE';
   AbrirForm(TFRelMecanica, FRelMecanica, 0);
	FMenu.TIPOREL:='';
end;

procedure TFOrdemMec.DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridConsulta.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\Ordemmec.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
   If (shift=[ssCtrl]) and (key = 67)
   Then Begin
   	Try
           If FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'COD_ORDEM', XView.FieldByName('cod_ordem').AsString, '')=True
           Then Begin
				Clipboard.AsText := DMServ.TFiscOrd.FieldByName('nfechave').AsString;
               MessageDlg('A Chave da Nfe foi Copiada ('+Clipboard.AsText+')'+#13+#10+'para colar pressione Ctrl+v', mtWarning, [mbOK], 0);
           End;
     	Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de copiar a chave de Nfe!', '', 1, 1, false, 'i');
     	End;
   End;
  	If (shift=[ssCtrl]) and (key = 65)
  	Then Begin
   	 MessageDlg('ESTA FUNÇÃO REABRE A O.S. POSSIBILITANDO ALTERAR INFORMAÇÕES IMPORTANTES. CONTINUE APENAS EM CASO DE CERTEZA', mtWarning, [mbOK], 0);
        If Mensagem('Confirmação do usuário', 'Deseja Reabrir a O.S para correção', '', 2, 3, False, 'c')=2
        Then Begin
    		AbrirForm(TFSENHA, FSENHA, 0);
    		//repassa resultado da tela de autenticação de senha para as variáveis de controle
    		If XAlxResult=True
    		Then Begin
           	If DMServ.WOrdem.FieldByname('cod_ordem').AsInteger>0
                 Then Begin
   				If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
   				Then Begin
       				Mensagem('    A T E N Ç Ã O   ','A ORDEM ESTÁ SENDO USADA NO MOMENTO.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       				AtualizaGridConsulta('ORIGEM');
       				Exit;
   				End
   				Else Begin
                         FMenu.XTIPOBOLTO:='OSABERTA';
                         BtnConsultar.OnClick(SENDER);
                     End;
                 End;
           End;
        End;
  	End;
end;

procedure TFOrdemMec.ServiosporEquipecomFrota1Click(Sender: TObject);
begin
  inherited;
   // abri formulario do relatorio de equipes
   AbrirForm(TFRelEquipe,FRelEquipe,0);
end;

procedure TFOrdemMec.EfetuarDevoluodeNotaFiscal1Click(Sender: TObject);
begin
  inherited;
  	//Somente continua processo de devolução se for encontrado documento fiscal correspondente
  	If FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', XView.FieldByName('cod_ordem').AsString, '')=True
   Then Begin
		//A Nota fiscal precisa estar fechada
   	If XView.FieldByName('STATUS').AsString<>'FECHADO'
       Then Begin
			MessageDlg('A Ordem ('+XView.FieldByName('NUMERO').AsString+') selecionado para devolução deve estar Fechado para ser devolvido', mtWarning, [mbOK], 0);
			Exit;
       End;
       //Tratamento Especificos para NFe
   	{If (DMServ.TFiscOrd.FieldByName('TIPOIMPFISC').AsString='NFE') and ((DMServ.TFiscOrd.FieldByName('NFESTATUS').AsString<>'1'))
       Then Begin
			MessageDlg('O pedido ('+XView.FieldByName('NUMPED').AsString+') selecionado para devolução, é um NFe que esta cancelado ou não foi transmitido corretamente para o Sefaz', mtWarning, [mbOK], 0);
			Exit;
       End; }
       //Confirma devolução da Nota com o usuario
        If Mensagem('Confirmação do usuário', 'Deseja realmente efetuar devolução da Nota Fiscal Número: '+XView.FieldByName('NUMFISCAL').AsString+'?', '', 2, 3, False, 'c')=2
        Then Begin
           If DevNotaFiscal(XView.FieldByName('cod_ordem').AsInteger)=False
           Then Begin
           	If MessageDlg('Erro ao tentar efetuar devolução'+#13+#10+'Deseja visualizar o erro ocorrido?', mtConfirmation, [mbYes, mbNo], 0)=mryes Then
					MessageDlg(FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
           End;
        End;
   End
   Else Begin
		MessageDlg('O pedido ('+XView.FieldByName('NUMERO').AsString+') selecionado para devolução não apresenta documento fiscal', mtWarning, [mbOK], 0);
   End;

end;

procedure TFOrdemMec.VisualizarDanfe1Click(Sender: TObject);
begin
  inherited;
   //Filtra se o pedido tem serviço cadastrado
   IF(FiltraTabela(DMSAIDA.TAlx,'DESPADIC','COD_GERADOR',IntToStr(XView.FieldByName('cod_ordem').AsInteger),''))=True
   then begin
      If DMMACS.TLoja.FieldByName('SERVNFE').AsString<>'1' then
          XServicoOp:=True;

   end;
	FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
   FMzrNfe.SetInFiscal('', XView.FieldByName('COD_ORDEM').AsInteger, 0, 'ORDEM', '', 1, '', '', '', 0,0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
   FMzrNfe.DanfeVisualizar;
   FMzrNfe := NIL;
end;

procedure TFOrdemMec.VisualizarnoSefaz1Click(Sender: TObject);
begin
  inherited;
	 FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', XView.FieldByName('cod_ordem').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'SEFAZ', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.ShowModal;
end;

procedure TFOrdemMec.ConsultarStatusNFe1Click(Sender: TObject);
begin
  inherited;
	 FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', XView.FieldByName('cod_ordem').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'CONSULTAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.ShowModal;
end;

procedure TFOrdemMec.RecuperarDados1Click(Sender: TObject);
Var
	XChaveNfe: String;
begin
  inherited;
	If FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', XView.FieldByName('cod_ordem').AsString, '')=True
   Then Begin
   	If DMServ.TFiscOrd.FieldByName('nfestatus').AsInteger=2
       Then Begin
       	If Mensagem('Confirmação do usuário', 'Deseja realmente Retornar os dados para a Ordem de Número '+XView.FieldByName('numero').AsString+'?', '', 2, 3, False, 'c')=2
       	Then Begin
           	If InputQuery('Chave de Acesso','Informe a Chave de Acesso da NFe para recuperar os Dados', XChaveNfe)=True
               Then Begin
				    FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
					//Function TFMzrNfe.SetInFiscal(NomePeriodo: String; CodigoPedido: Integer; CodigoDestinatario: Integer; tipopedido: String; tipoacao: String; tipoemissao: Integer; Cfop: String; NatOperacao: String; FormPagamento: String; NumFiscal: Integer; DtEmissao: TDate; CodigoIbge: String; Municipio: String; Uf: String; BaseIcms, VlrIcm, VlrIpi, BaseIcmsSt, VlrIcmsSt, VlrProduto, VlrFrete, VlrSeguro, Desconto, VlrOutros, VlrNotaFiscal: Real): Boolean;
					FMzrNfe.SetInFiscal(XChaveNfe, XView.FieldByName('cod_ordem').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'RETORNADADOS', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    				FMzrNfe.ShowModal;
               End;
           End;

       End
       Else Begin
       	MessageDlg('Os dados não podem ser recuperados devido ao fato que a OS esta marcada como NFe enviada e homologada'+#13+#10+'NFeStatus = 1 ou 3', mtWarning, [mbOK], 0);
       End;
   End;
end;

procedure TFOrdemMec.VerificarServidorSefaz1Click(Sender: TObject);
begin
  inherited;
		FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal('', 0, 0, 'ORDEM', 'STATUSSERV', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
       FMzrNfe.ShowModal;
end;

procedure TFOrdemMec.CancelarNFe1Click(Sender: TObject);
begin
  inherited;
		If XView.FieldByName('STATUS').AsString='CANCELADO'
   	Then Begin
			MessageDlg('NFe já cancelada', mtWarning, [mbOK], 0);
   	End
   	Else Begin
       	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar a Nota Fiscal Eletrônica Nº '+XView.FieldByName('numfiscal').AsString+'?'  , '', 2, 3, False, 'c')= 2
       	Then Begin
           	FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
           	FMzrNfe.SetInFiscal('', XView.FieldByName('cod_ordem').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'CANCELAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
           	FMzrNfe.ShowModal;
       	End;
   	End;
end;

procedure TFOrdemMec.RelatriodeDanfes1Click(Sender: TObject);
begin
  inherited;
	 //Paulo 11/11/2010: Abre o rel periodo fiscal
    XRelDanfe:='ORDEM';
    AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
end;

procedure TFOrdemMec.ListaNfe1Click(Sender: TObject);
begin
  inherited;
	AbrirForm(TFListaNfe, FListaNfe, 0);
end;

procedure TFOrdemMec.InutilizarNumerao1Click(Sender: TObject);
begin
  inherited;
    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente Inutilizar Numeração de Nota Fiscal Eletrônica ?'  , '', 2, 3, False, 'c')= 2
    Then Begin
       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal('', XView.FieldByName('cod_ordem').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'INUTILIZAR', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
       FMzrNfe.ShowModal;
    End;
end;

procedure TFOrdemMec.EDCodFabKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '1'
  Then Begin
   If Key=Vk_Down
   Then Begin
       DMESTOQUE.WSimilar.Next;
       XCodTmpEstoque:=DBGrid1.Columns[0].Field.Text;
       exit;
   End;
   If Key=Vk_UP
   Then Begin
       DMESTOQUE.WSimilar.Prior;
       XCodTmpEstoque:=DBGrid1.Columns[0].Field.Text;
       Exit;
   End;


  	If (PListaProdutos.Visible=True)
   Then Begin
   	If LPesquisa.Caption='Controle Interno:'
       Then Begin
       	if DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString ='CI'
           Then Begin
               DMESTOQUE.WSimilar.Close;
               DMESTOQUE.WSimilar.SQL.Clear;
               DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR  where (vwsimilar.contrint like upper('+#39+EDCodFab.Text+'%'+#39+')) AND (VWSIMILAR.ATIVO='+#39+'S'+#39+')');
               DMESTOQUE.WSimilar.Open;
               XOrdem:='CI';
           End;
       End;
   	If LPesquisa.Caption='Cód. Fabricante:'
       Then Begin
           if DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString ='CF'
           Then Begin
               DMESTOQUE.WSimilar.Close;
               DMESTOQUE.WSimilar.SQL.Clear;
               DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR where (vwsimilar.codfabricante like upper('+#39+EDCodFab.Text+'%'+#39+'))  AND (VWSIMILAR.ATIVO='+#39+'S'+#39+')');
               DMESTOQUE.WSimilar.Open;
               XOrdem:='CF';
           End;
       End;
   	If LPesquisa.Caption='Pesquisa Descrição:'
       Then Begin
       	If XOrdem<>'DS'
           Then Begin
               DMESTOQUE.WSimilar.Close;
               DMESTOQUE.WSimilar.SQL.Clear;
               DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR where (vwsimilar.descricao like upper('+#39+EDCodFab.Text+'%'+#39+'))  AND (VWSIMILAR.ATIVO='+#39+'S'+#39+')');
               DMESTOQUE.WSimilar.Open;
               XOrdem:='DS';
           End;
       End;
      If Key<>Vk_Return
       Then Begin
             if DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString ='CF' then
             begin
                 if DMESTOQUE.WSimilar.Locate('codfabricante', EDCodFab.Text,[loPartialKey])=True then
                 begin
                    XCodTmpEstoque:=DBGrid1.Columns[0].Field.Text;   
                    DMESTOQUE.WSimilar.Close;
                    DMESTOQUE.WSimilar.SQL.Clear;
                    DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE  (VWSIMILAR.ATIVO='+#39+'S'+#39+') ORDER BY codfabricante');
                    DMESTOQUE.WSimilar.Open;

                 end;
             end;
             if DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString ='CI' then
             begin
                 if DMESTOQUE.WSimilar.Locate('contrint', EDCodFab.Text,[loPartialKey])=True then
                 begin
                    XCodTmpEstoque:=DBGrid1.Columns[0].Field.Text;
                    DMESTOQUE.WSimilar.Close;
                    DMESTOQUE.WSimilar.SQL.Clear;
                    DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR  WHERE (VWSIMILAR.ATIVO='+#39+'S'+#39+')  ORDER BY contrint');
                    DMESTOQUE.WSimilar.Open;

                 end;
             end;

           If DMESTOQUE.WSimilar.Locate('codfabricante', EDCodFab.Text,[loPartialKey])=false
           Then Begin
               DMESTOQUE.WSimilar.Close;
               DMESTOQUE.WSimilar.SQL.Clear;
               DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO='+#39+'S'+#39+') ORDER BY DESCRICAO');
               DMESTOQUE.WSimilar.Open;
               If DMESTOQUE.WSimilar.Locate('descricao', EDCodFab.Text,[loPartialKey])=false
               Then Begin
                   If DMESTOQUE.WSimilar.Locate('contrint', EDCodFab.Text,[loPartialKey])=false
                   Then Begin
                       LPesquisa.Caption:='Fora de Pesquisa';
                   End
                   Else Begin
                       LPesquisa.Caption:='Controle Interno';
                       XCodTmpEstoque:=DBGrid1.Columns[0].Field.Text;
                   End;
               End
               Else Begin
                   LPesquisa.Caption:='Descrição';
                   XCodTmpEstoque:=DBGrid1.Columns[0].Field.Text;
               End;
           End ;
           {Else Begin
               LPesquisa.Caption:='Cód. Fabricante';
               XCodTmpEstoque:=DBGrid1.Columns[0].Field.Text;
           End; }
       End;
   End
   Else Begin
       DMESTOQUE.WSimilar.Close;
       DMESTOQUE.WSimilar.SQL.Clear;
       DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM  VWSIMILAR WHERE  (VWSIMILAR.ATIVO='+#39+'S'+#39+') ');
       DMESTOQUE.WSimilar.Open;

       XOrdem:='';
       PListaProdutos.Visible:=True;
       PListaProdutos.BringToFront;
       If DMESTOQUE.WSimilar.Locate('codfabricante', EDCodFab.Text,[loCaseInsensitive, loPartialKey])=false Then
       begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR  WHERE (VWSIMILAR.ATIVO='+#39+'S'+#39+')  ORDER BY DESCRICAO');
           DMESTOQUE.WSimilar.Open;
       	DMESTOQUE.WSimilar.Locate('descricao', EDCodFab.Text,[loCaseInsensitive, loPartialKey]);

       end;
       XCodTmpEstoque:=DBGrid1.Columns[0].Field.Text;
   End;
   If Key=VK_ESCAPE
   Then Begin
       DMESTOQUE.WSimilar.Close;
       DMESTOQUE.WSimilar.SQL.Clear;
       DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE  (VWSIMILAR.ATIVO='+#39+'S'+#39+') ');
       DMESTOQUE.WSimilar.Open;

       PListaProdutos.Visible:=False;
       XOrdem:='';
       EDCodFab.Text:='';
   End;
   If EDCodFab.Text=''
   Then Begin
       PListaProdutos.Visible:=False;
       XOrdem:='';
   End;

   If Key=Vk_Return
   Then Begin
		// caso este codigo seja alterado o codigo em TFOrdemMec.DBGrid1DblClick tbm deve assim ser alterado
		//Refiltra a tabela vwsimilar de acordo com registro escolhido
       DMESTOQUE.WSimilar.Close;
       DMESTOQUE.WSimilar.SQL.Clear; 
       DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO='+#39+'S'+#39+')');
       DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString:=XCodTmpEstoque;
       DMESTOQUE.WSimilar.Open;
       If Not DMESTOQUE.WSimilar.IsEmpty
       Then Begin
           EscreveLabelsPROD;
           PListaProdutos.Visible:=False;
           EDCodFab.Text := '';
           EDQuantidade.Text := '1,00';
           //EDQuantidade.SetFocus;
       End
       Else Begin
			MessageDlg('ATENÇÃO!'+#13+#10+'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);
       End;
	End;
  End;
end;

procedure TFOrdemMec.SalvarXMLDistribuio1Click(Sender: TObject);
var
   Xcfop:String;
begin
  inherited;
       XSafeXmlDist:=True;
       //Paulo 13/01/2011: Gera Nfe distribuição base no pedido selecionado
       //Seta os dados para chamar a função
       FiltraTabela(DMMACS.TPeriodoFiscal,'PERIODOFISCAL','FECHADO','N','');
       FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XView.FieldByName('COD_ORDEM').AsInteger),'');
       FiltraTabela(DMServ.Alx,'DOCFISORD','COD_ORDEM',IntToStr(XView.FieldByName('COD_ORDEM').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx,'CFOP','COD_CFOP',IntToStr(DMServ.Alx.FieldByName('COD_CFOP').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx1,'CFOP','COD_CFOP',IntToStr(DMServ.Alx.FieldByName('COD_CFOP1').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx2,'CFOP','COD_CFOP',IntToStr(DMServ.Alx.FieldByName('COD_CFOP2').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx3,'VWCLIENTE','COD_CLIENTE',IntToStr(DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx4,'CIDADE','COD_CIDADE',IntToStr(DMESTOQUE.Alx3.FieldByName('COD_CIDADE').AsInteger),'');
       FiltraTabela(DMESTOQUE.Alx5,'ESTADO','COD_ESTADO',IntToStr(DMESTOQUE.Alx4.FieldByName('COD_ESTADO').AsInteger),'');

       Xcfop:= DMESTOQUE.Alx.FieldByName('CFOP').AsString +'/'+ DMESTOQUE.Alx1.FieldByName('CFOP').AsString +'/'+ DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
       XXmlNfe:= DMServ.Alx.FieldByName('NFEXML').AsString;
       XNfeRecibo:= DMServ.Alx.FieldByName('NFERECIBO').AsString;
       XNfeTipoAmbiente:= DMServ.Alx.FieldByName('NFEAMBIENTE').AsInteger;
       XUfLocal:= 'PR';
       XNfeChave:= DMServ.Alx.FieldByName('NFECHAVE').AsString;
       XSetInPeriodoFiscal:=DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;

       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
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

procedure TFOrdemMec.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
       if (DMESTOQUE.Alx3.FieldByName('qtd').AsCurrency=0)or(DMESTOQUE.Alx3.FieldByName('VLRTOTFIN').AsCurrency=0) then
       begin
           DBGrid4.Canvas.Font.Color := clRed;
           DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       end;
end;

procedure TFOrdemMec.RelatriodeOrdenseProdutos1Click(Sender: TObject);
begin
  inherited;
       //Paulo 06/10/2011: Abre a tela de rel para relatório de ordens e produtos
       FMenu.TIPOREL := 'ORDPROD';
       AbrirForm(TFRelMecanica,FRelMecanica,0);;
end;

procedure TFOrdemMec.cbTerceirosClick(Sender: TObject);
begin
  inherited;
       //Paulo 01/11/2011: Ativa o campo de custo
       If (cbTerceiros.Checked=true) Then
       begin
           edCustoTerceiros.Enabled:=true;
           edCustoTerceiros.SetFocus;
       end else
       begin
           edCustoTerceiros.Enabled:=false;
           EValorServ.SetFocus;
       end;
end;

procedure TFOrdemMec.RelatriodeOrdenseServios1Click(Sender: TObject);
begin
  inherited;
       
       FMenu.TIPOREL:='RELORDEMTERCEIRO';
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
           lbComissaoServ.Caption:=FormatFloat('0.00', DMMACS.TALX.FieldByName('COMISSAO_VVSER').AsFloat)
       else
           lbComissaoServ.Caption:=FormatFloat('0.00', DMMACS.TALX.FieldByName('COMISSAO_VPSER').AsFloat);

end;

procedure TFOrdemMec.RvSystem1PrintHeader(Sender: TObject);
begin
  inherited;
		If DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 THEN
       	ImpCompModelo10;
		If DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 17 THEN
       	ImpCompModelo17;
end;
//Comprovante de OS numero 10
Procedure TFOrdemMec.ImpCompModelo10;
var
	Bitmap: TBitmap;
   //Xcop,XNovaPag,xcont: Integer;
   XLinha:Double;
   XtotalProd:Real;
Begin
	Try
  		//XNovaPag:=2;

       //Xcop:=1;
       XLinha:=0.3;


           //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
           If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
           Exit;

           //Paulo 15/03/2011: busca mecanico responsavel
           FiltraTabela(DMESTOQUE.TDesp, 'DESPADIC', 'COD_GERADOR', DMServ.TOrd.FieldByName('COD_ORDEM').AsString, 'AND(GERADOR='+#39+'ORDEM'+#39+')');
           FiltraTabela(DMPESSOA.TEquipe, 'EQUIPE', 'COD_EQUIPE', DMESTOQUE.TDesp.FieldByName('COD_EQUIPE').AsString, '');

           //Paulo 19/01/2011: Cabeçalho do relatório
           with RvSystem1.BaseReport do
           begin
               XtotalProd:=0;
           	while XNovaPag = 2 do
       		begin
               	XtotalProd:=0;
                   //PrintBitmap(0.5,0.3,1.5,1.5,Bitmap); //Adiciono a logo do lado esquerdo
                   //Paulo 19/01/2012:Carrega a imagem para ser usado no relatório
                   try
                       Bitmap := TBitmap.Create;
                       Bitmap.LoadFromFile('logoEmpresa.bmp');
                      // PrintBitmapRect(0.5,XLinha,1.7,1.0,Bitmap); //Adiciono a logo do lado esquerdo
                       //PrintBitmap(0.5,XLinha,1.5,1.5,Bitmap); //Adiciono a logo do lado esquerdo
                       Bitmap := TBitmap.Create;
       				Bitmap.LoadFromFile('logoEmpresa.bmp');
						PrintImage(RVSystem1,XLinha,0.5,1.5,0.7,Bitmap);
                   finally
                     //  FreeAndNil(Bitmap);
                   end;

                   //Titulo centralizado
                   SetFont('Arial',12);
                   Bold:= True;
                   PrintXY((PageWidth/2)-1.3, XLinha+0.2,DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString );
                   //PrintCenter(DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString,PageWidth/2);

                   //data e hora
                   SetFont('Arial',7);
                   Bold := True;
                   PrintXY(PageWidth-1.5,XLinha+0.2,DateToStr(Date())+' - '+TimeToStr(Time()));
                   //PrintRight(DateToStr(Date())+' - '+TimeToStr(Time()),PageWidth-0.5);

                   NewLine;

                   //cnpj e endereço centralizado
                   SetFont('Arial',8);
                   Bold := False;
                   PrintCenter('CNPJ: '+DMMACS.TEmpresa.FieldByName('CNPJ').AsString,PageWidth/2);
                   //Imprime modelo do relatorio
                   PrintRight('Mod. Imp: 10',PageWidth-0.5);
                   NewLine;
                   PrintCenter('Endereço: '+DMMACS.TEmpresa.FieldByName('ENDERECO').AsString+' Bairro: '+
                               DMMACS.TEmpresa.FieldByName('BAIRRO').AsString,PageWidth/2);
                   NewLine;

                   PrintCenter('Fone: '+DMMACS.TEmpresa.FieldByName('FONE').AsString,PageWidth/2);
                   NewLine;

                   XLinha:=XLinha+0.8;

                   MoveTo(0.3,XLinha); //Xlinha = 1.0
                   LineTo(PageWidth-0.5,XLinha);

                   NewLine;

                   //Paulo 20/01/2012: Busca dados da OS
                   //CompdeAbertura1Click(Sender);

                   //Paulo 20/01/2012: Cabeçalho da OS:
                   SetFont('Arial',8);
                   Bold := True;
                   PrintLeft('O.S nº.'+DMServ.TOrd.FieldByName('NUMERO').AsString,0.3);
                   PrintLeft('Emissão: '+DMServ.TOrd.FieldByName('DTABERT').AsString,1.1);
                   PrintLeft('Cliente: '+DMServ.Alx.FieldByName('NOME').AsString,2.5);
                   PrintRight('CPF/CNPJ: '+DMServ.Alx.FieldByName('CPFCNPJ').AsString,PageWidth-1.3);
                   NewLine;
                   PrintLeft('Tel.:'+DMServ.Alx.FieldByName('TELREL').AsString,0.3);
                   PrintLeft('Endereço:'+DMServ.Alx.FieldByName('ENDERECO').AsString+', '+DMServ.Alx.FieldByName('ENDNUMERO').AsString,2.5);
                   PrintRight('Bairro: '+DMServ.Alx.FieldByName('BAIRRO').AsString,PageWidth-1.3);
                   NewLine;
                   PrintLeft('Cidade:'+DMServ.Alx.FieldByName('CIDADE').AsString+' - '+DMServ.Alx.FieldByName('UF_ESTADO').AsString,0.3);
                   PrintLeft('Veiculo:'+DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString,3.0);
                   PrintRight('Placa: '+DMPESSOA.TEquip.FieldByName('PLACA').AsString,PageWidth-1.3);
                   NewLine;
                   PrintLeft('Mecânico Responsável: '+DMPESSOA.TEquipe.FieldByName('DESCRICAO').AsString,0.3);
                   NewLine;

                   XLinha:=XLinha+0.8;
                   MoveTo(0.3,XLinha);//Xlinha = 1.5
                   LineTo(PageWidth-0.5,XLinha);

                   NewLine;
                   xcont:=1;
                   //Paulo 20/01/2012: dados de PRODUTOS
                   if not DMESTOQUE.TSlave.IsEmpty then
                   begin
                       SetFont('Arial',7);
                       Bold := True;
                       PrintLeft('Produtos:',0.3);
                       SetFont('Verdana',7);
                       Bold := True;
                       PrintLeft('Código:',1.0);
                       PrintLeft('Quantidade:',1.6);
                       PrintLeft('Descrição:',2.5);
                       PrintRight('Vlr. Unitário:',PageWidth-1.2);
                       PrintRight('Vlr. Total:',PageWidth-0.5);
                       NewLine;
                       xcont:=xcont+1;
                       DMESTOQUE.TSlave.First;
                       while not DMESTOQUE.TSlave.Eof do
                       begin
                           SetFont('Arial',5);
                           Bold := False;
                           PrintLeft(DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString,0.8);
                           SetFont('Arial',7);
                           PrintLeft(DMESTOQUE.TSlave.FieldByName('PRIMCOD').AsString,1.0);
                           PrintLeft(DMESTOQUE.TSlave.FieldByName('QTD').AsString,1.8);
                           PrintLeft(DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString,2.5);
                           PrintRight(FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency),PageWidth-1.2);
                           PrintRight(FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency),PageWidth-0.5);
                           XtotalProd:=XtotalProd+DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
                           NewLine;
                           xcont:=xcont+1;
                           DMESTOQUE.TSlave.Next;
                       end;
                       PrintLeft('-----------------------------------------------------------------------------------------------------------------------------',0.3);
                       PrintRight('-----------------------------------------------------------------------------------------------------------------------------',PageWidth-0.5);
                       NewLine;
                   end;

                   //Paulo 20/01/2012: dados de SERVIÇOS
                   if not DMESTOQUE.TDesp.IsEmpty then
                   begin
                       SetFont('Arial',7);
                       Bold := True;
                       PrintLeft('Serviços:',0.3);
                       SetFont('Verdana',7);
                       Bold := True;
                       PrintLeft('Quantidade:',1.6);
                       PrintLeft('Descrição:',2.5);
                       PrintRight('Vlr. Unitário:',PageWidth-1.2);
                       PrintRight('Vlr. Total:',PageWidth-0.5);
                       NewLine;
                       xcont:=xcont+1;
                       DMESTOQUE.TDesp.First;
                       while not DMESTOQUE.TDesp.Eof do
                       begin
                           Bold := False;
                           SetFont('Arial',7);
                           PrintLeft(DMESTOQUE.TDesp.FieldByName('QTD').AsString,1.8);
                           PrintLeft(DMESTOQUE.TDesp.FieldByName('DESPESA').AsString,2.5);
                           PrintRight(FormatFloat('#,###0.00',DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency),PageWidth-1.2);
                           PrintRight(FormatFloat('#,###0.00',DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency),PageWidth-0.5);
                           NewLine;
                           xcont:=xcont+1;
                           DMESTOQUE.TDesp.Next;
                       end;

                   end;

                   //Paulo 20/01/2011: Dados Financeiro
                   PrintLeft('_____________________________________________________________________________________________________________________________',0.3);
                   PrintRight('_____________________________________________________________________________________________________________________________',PageWidth-0.5);
                   NewLine;
                   xcont:=xcont+1;
                   SetFont('Verdana',7);
                   Bold := True;
                   PrintLeft('Forma de Pagamento:',0.3);
                   PrintLeft('Pagamento:',3.0);
                   PrintRight('Valor:',PageWidth-2.0);
                   PrintRight('vencimento:',PageWidth-0.8);
                   NewLine;
                   xcont:=xcont+1;
                   Bold := False;
                   PrintLeft(DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString,0.3);

                   if not DMMACS.TMP.IsEmpty then
                   begin
                       DMMACS.TMP.First;
                       while not DMMACS.TMP.Eof do
                       begin
                           PrintLeft(DMMACS.TMP.FieldByName('DESC2').AsString,3.0);
                           PrintRight(FormatFloat('#,###0.00',DMMACS.TMP.FieldByName('VLR1').AsCurrency),PageWidth-2.0);
                           PrintRight(DMMACS.TMP.FieldByName('DESC1').AsString,PageWidth-0.8);
                           NewLine;
                   		xcont:=xcont+1;
                           DMMACS.TMP.Next;
                       end;
                   end else
                   begin
                       NewLine;
                   	NewLine;
                       xcont:=xcont+2;
                   end;

                   SetFont('Arial',7);

                   PrintLeft('-----------------------------------------------------------------------------------------------------------------------------',0.3);
                   PrintRight('-----------------------------------------------------------------------------------------------------------------------------',PageWidth-0.5);

                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Verdana',8);
                   Bold := True;
                   PrintLeft('Sub-Total Serviços R$:',0.3);
                   Bold := False;
                   PrintLeft(FormatFloat('#,###0.00',DMESTOQUE.ALX2.FieldByName('VLRTOTFIN').AsCurrency),2.0);
                   Bold := True;
                   PrintRight('Sub-Total Peças R$:',PageWidth-1.2);
                   Bold := False;
                   PrintRight(FormatFloat('#,###0.00',XtotalProd),PageWidth-0.5);
                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Verdana',8);
                   Bold := True;
                   PrintLeft('Desconto Serviços R$:',0.3);
                   Bold := False;
                   PrintLeft(FormatFloat('#,###0.00',(DMServ.TOrd.FieldByName('TOTSERV').AsCurrency - DMESTOQUE.ALX2.FieldByName('VLRTOTFIN').AsCurrency)),2.0);
                   Bold := True;
                   PrintRight('Desconto Peças R$:',PageWidth-1.2);
                   Bold := False;
                   PrintRight(FormatFloat('#,###0.00',(XtotalProd - DMServ.TOrd.FieldByName('TOTPROD').AsCurrency)),PageWidth-0.5);
                   xcont:=xcont+1;
                   NewLine;
                   Bold := True;
                   SetFont('Arial',7);
                   Bold := True;
                   PrintLeft('-----------------------------------------------------------------------------------------------------------------------------',0.3);
                   PrintRight('-----------------------------------------------------------------------------------------------------------------------------',PageWidth-0.5);
                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Verdana',8);
                   Bold := True;
                   PrintLeft('Total Serviços R$:',0.3);
                   PrintLeft(FormatFloat('#,###0.00',DMServ.TOrd.FieldByName('TOTSERV').AsCurrency),2.0);
                   PrintRight('Total Peças R$:',PageWidth-1.2);
                   PrintRight(FormatFloat('#,###0.00',DMServ.TOrd.FieldByName('TOTPROD').AsCurrency),PageWidth-0.5);
                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Arial',7);
                   Bold := True;
                   PrintLeft('-----------------------------------------------------------------------------------------------------------------------------',0.3);
                   PrintRight('-----------------------------------------------------------------------------------------------------------------------------',PageWidth-0.5);
                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Verdana',7);
                   Bold := True;
                   PrintLeft('Observação:',0.3);
                   NewLine;
                   Bold := False;
                   PrintLeft(DMServ.TOrd.FieldByName('OBSERVACAO').AsString,0.3);
                   Bold := True;
                   SetFont('Verdana',9);
                   Bold := True;
                   NewLine;
                   PrintRight('Total Ordem R$:',PageWidth-1.2);
                   PrintRight(FormatFloat('#,###0.00',DMServ.TOrd.FieldByName('TOTORD').AsCurrency),PageWidth-0.5);
                   xcont:=xcont+2;
                   NewLine;
                   NewLine;
                   PrintRight('____________________________',PageWidth-0.5);
                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Verdana',8);
                   Bold := True;
                   PrintRight(DMServ.Alx.FieldByName('NOME').AsString,PageWidth-1.3);
                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Arial',7);
                   PrintLeft('-----------------------------------------------------------------------------------------------------------------------------',0.3);
                   PrintRight('-----------------------------------------------------------------------------------------------------------------------------',PageWidth-0.5);
                   NewLine;
                   xcont:=xcont+1;
                   SetFont('Verdana',6);
                   Bold := False;
                   PrintCenter(DMMACS.TLoja.FieldByName('TMP3').AsString,PageWidth/2);
                   NewLine;


                   if (xcont > 22) and (Xcop = 1) then
                   begin
                   	XNovaPag:=2;
                       Xcop:=2;
                       NewPage;
                   end
                   else begin
                   	if Xcop = 2 then
                          XNovaPag:=1
                       else begin
                          xcont:=1;
                          XLinha := (PageHeight/2)+0.3;
                          MoveTo(0,PageHeight/2);
                   	   LineTo(PageWidth,PageHeight/2);
                          MoveTo(0,PageHeight/2);
                   	   LineTo(PageWidth,PageHeight/2);
                          MoveTo(0,PageHeight/2);
                   	   LineTo(PageWidth,PageHeight/2);
                          Xcop := 2;

                       end;
                   end;


               end;

           end;


   Except

   End;
End;

//Comprovante de OS numero 17
Procedure TFOrdemMec.ImpCompModelo17;
var
	Bitmap: TBitmap;
   //Xcop,XNovaPag,xcont: Integer;
   XLinha:Double;
   XtotalProd:Real;
Begin
	Try
  		//XNovaPag:=2;

       //Xcop:=1;
       XLinha:=0.3;


           //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
           If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
           Exit;

           //Paulo 15/03/2011: busca mecanico responsavel
           FiltraTabela(DMESTOQUE.TDesp, 'DESPADIC', 'COD_GERADOR', DMServ.TOrd.FieldByName('COD_ORDEM').AsString, 'AND(GERADOR='+#39+'ORDEM'+#39+')');
           FiltraTabela(DMPESSOA.TEquipe, 'EQUIPE', 'COD_EQUIPE', DMESTOQUE.TDesp.FieldByName('COD_EQUIPE').AsString, '');

           //Paulo 19/01/2011: Cabeçalho do relatório
           with RvSystem1.BaseReport do
           begin
               XtotalProd:=0;
           	while XNovaPag = 2 do
       		begin
               	XtotalProd:=0;
                   //PrintBitmap(0.5,0.3,1.5,1.5,Bitmap); //Adiciono a logo do lado esquerdo
                   //Paulo 19/01/2012:Carrega a imagem para ser usado no relatório
                   try
                       Bitmap := TBitmap.Create;
                       Bitmap.LoadFromFile('logoEmpresa.bmp');
                      // PrintBitmapRect(0.5,XLinha,1.7,1.0,Bitmap); //Adiciono a logo do lado esquerdo
                       //PrintBitmap(0.5,XLinha,1.5,1.5,Bitmap); //Adiciono a logo do lado esquerdo
                       Bitmap := TBitmap.Create;
       				Bitmap.LoadFromFile('logoEmpresa.bmp');
						PrintImage(RVSystem1,XLinha,0.5,1.5,0.7,Bitmap);
                   finally
                     //  FreeAndNil(Bitmap);
                   end;

                   //Titulo centralizado
                   SetFont('Arial',12);
                   Bold:= True;
                   PrintXY((PageWidth/2)-1.3, XLinha+0.2,DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString );
                   //PrintCenter(DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString,PageWidth/2);

                   //data e hora
                   SetFont('Arial',7);
                   Bold := True;
                   PrintXY(PageWidth-1.5,XLinha+0.2,DateToStr(Date())+' - '+TimeToStr(Time()));
                   //PrintRight(DateToStr(Date())+' - '+TimeToStr(Time()),PageWidth-0.5);

                   NewLine;

                   //cnpj e endereço centralizado
                   SetFont('Arial',8);
                   Bold := False;
                   PrintCenter('CNPJ: '+DMMACS.TEmpresa.FieldByName('CNPJ').AsString,PageWidth/2);
                   //Imprime modelo do relatorio
                   PrintRight('Mod. Imp: 17',PageWidth-0.5);
                   NewLine;
                   PrintCenter('Endereço: '+DMMACS.TEmpresa.FieldByName('ENDERECO').AsString+' Bairro: '+
                               DMMACS.TEmpresa.FieldByName('BAIRRO').AsString,PageWidth/2);
                   NewLine;

                   PrintCenter('Fone: '+DMMACS.TEmpresa.FieldByName('FONE').AsString,PageWidth/2);
                   NewLine;

                   XLinha:=XLinha+0.8;

                   MoveTo(0.3,XLinha); //Xlinha = 1.0
                   LineTo(PageWidth-0.5,XLinha);

                   NewLine;

                   //Paulo 20/01/2012: Busca dados da OS
                   //CompdeAbertura1Click(Sender);

                   //Paulo 20/01/2012: Cabeçalho da OS:
                   SetFont('Arial',8);
                   Bold := True;
                   PrintLeft('O.S nº.'+DMServ.TOrd.FieldByName('NUMERO').AsString,0.3);
                   PrintLeft('Emissão: '+DMServ.TOrd.FieldByName('DTABERT').AsString,1.1);
                   PrintLeft('Cliente: '+DMServ.Alx.FieldByName('NOME').AsString,2.5);
                   PrintRight('CPF/CNPJ: '+DMServ.Alx.FieldByName('CPFCNPJ').AsString,PageWidth-1.3);
                   NewLine;
                   PrintLeft('Tel.:'+DMServ.Alx.FieldByName('TELREL').AsString,0.3);
                   PrintLeft('Endereço:'+DMServ.Alx.FieldByName('ENDERECO').AsString+', '+DMServ.Alx.FieldByName('ENDNUMERO').AsString,2.5);
                   PrintRight('Bairro: '+DMServ.Alx.FieldByName('BAIRRO').AsString,PageWidth-1.3);
                   NewLine;
                   PrintLeft('Cidade:'+DMServ.Alx.FieldByName('CIDADE').AsString+' - '+DMServ.Alx.FieldByName('UF_ESTADO').AsString,0.3);
                   PrintLeft('Veiculo:'+DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString,3.0);
                   PrintRight('Placa: '+DMPESSOA.TEquip.FieldByName('PLACA').AsString,PageWidth-1.3);
                   //NewLine;

                   XLinha:=XLinha+0.8;
                   MoveTo(0.3,XLinha);//Xlinha = 1.5
                   LineTo(PageWidth-0.5,XLinha);
                   NewLine;
                   
                   xcont:=1;
                   //Paulo 20/01/2012: dados de PRODUTOS
                   if not DMESTOQUE.TSlave.IsEmpty then
                   begin
                       SetFont('Arial',7);
                       Bold := True;
                       PrintLeft('Produtos:',0.3);
                       SetFont('Verdana',7);
                       Bold := True;
                       PrintLeft('Código:',1.0);
                       PrintLeft('Quantidade:',1.6);
                       PrintLeft('Descrição:',2.5);
                       PrintRight('Vlr. Unitário:',PageWidth-1.2);
                       PrintRight('Vlr. Total:',PageWidth-0.5);
                       NewLine;
                       xcont:=xcont+1;
                       DMESTOQUE.TSlave.First;
                       while not DMESTOQUE.TSlave.Eof do
                       begin
                           SetFont('Arial',5);
                           Bold := False;
                           PrintLeft(DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString,0.8);
                           SetFont('Arial',7);
                           PrintLeft(DMESTOQUE.TSlave.FieldByName('PRIMCOD').AsString,1.0);
                           PrintLeft(DMESTOQUE.TSlave.FieldByName('QTD').AsString,1.8);
                           PrintLeft(DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString,2.5);
                           PrintRight(FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency),PageWidth-1.2);
                           PrintRight(FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency),PageWidth-0.5);
                           XtotalProd:=XtotalProd+DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
                           NewLine;
                           xcont:=xcont+1;
                           DMESTOQUE.TSlave.Next;
                       end;
                       PrintLeft('-----------------------------------------------------------------------------------------------------------------------------',0.3);
                       PrintRight('-----------------------------------------------------------------------------------------------------------------------------',PageWidth-0.5);
                       NewLine;
                   end;

                   //Paulo 20/01/2012: dados de SERVIÇOS
                   if not DMESTOQUE.TDesp.IsEmpty then
                   begin
                       SetFont('Arial',7);
                       Bold := True;
                       PrintLeft('Serviços:',0.3);
                       SetFont('Verdana',7);
                       Bold := True;
                       PrintLeft('Quantidade:',1.6);
                       PrintLeft('Descrição:',2.5);
                       PrintRight('Vlr. Unitário:',PageWidth-1.2);
                       PrintRight('Vlr. Total:',PageWidth-0.5);
                       NewLine;
                       xcont:=xcont+1;
                       DMESTOQUE.TDesp.First;
                       while not DMESTOQUE.TDesp.Eof do
                       begin
                           Bold := False;
                           SetFont('Arial',7);
                           PrintLeft(DMESTOQUE.TDesp.FieldByName('QTD').AsString,1.8);
                           PrintLeft(DMESTOQUE.TDesp.FieldByName('DESPESA').AsString,2.5);
                           PrintRight(FormatFloat('#,###0.00',DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency),PageWidth-1.2);
                           PrintRight(FormatFloat('#,###0.00',DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency),PageWidth-0.5);
                           NewLine;
                           xcont:=xcont+1;
                           DMESTOQUE.TDesp.Next;
                       end;

                   end;

                   //Paulo 20/01/2011: Dados Financeiro
                   PrintLeft('_____________________________________________________________________________________________________________________________',0.3);
                   PrintRight('_____________________________________________________________________________________________________________________________',PageWidth-0.5);
                   NewLine;
                   xcont:=xcont+1;
                   SetFont('Verdana',7);
                   Bold := True;
                   PrintLeft('Forma de Pagamento:',0.3);
                   PrintLeft('Pagamento:',3.0);
                   PrintRight('Valor:',PageWidth-2.0);
                   PrintRight('vencimento:',PageWidth-0.8);
                   NewLine;
                   xcont:=xcont+1;
                   Bold := False;
                   PrintLeft(DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString,0.3);
                   if not DMMACS.TMP.IsEmpty then
                   begin
                       DMMACS.TMP.First;
                       while not DMMACS.TMP.Eof do
                       begin
                           PrintLeft(DMMACS.TMP.FieldByName('DESC2').AsString,3.0);
                           PrintRight(FormatFloat('#,###0.00',DMMACS.TMP.FieldByName('VLR1').AsCurrency),PageWidth-2.0);
                           PrintRight(DMMACS.TMP.FieldByName('DESC1').AsString,PageWidth-0.8);
                           NewLine;
                   		xcont:=xcont+1;
                           DMMACS.TMP.Next;
                       end;
                   end else
                   begin
                       NewLine;
                       xcont:=xcont+2;
                   end;

                   SetFont('Arial',7);

                   PrintLeft('-----------------------------------------------------------------------------------------------------------------------------',0.3);
                   PrintRight('-----------------------------------------------------------------------------------------------------------------------------',PageWidth-0.5);

                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Verdana',8);
                   Bold := True;
                   PrintLeft('Total Serviços R$:',0.3);
                   PrintLeft(FormatFloat('#,###0.00',DMServ.TOrd.FieldByName('TOTSERV').AsCurrency),2.0);
                   PrintRight('Total Ordem R$:',PageWidth-1.2);
                   PrintRight(FormatFloat('#,###0.00',DMServ.TOrd.FieldByName('TOTORD').AsCurrency),PageWidth-0.5);
                   NewLine;
                   PrintLeft('Total Peças R$:',0.3);
                   PrintLeft(FormatFloat('#,###0.00',DMServ.TOrd.FieldByName('TOTPROD').AsCurrency),2.0);
                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Arial',7);
                   Bold := True;
                   PrintLeft('-----------------------------------------------------------------------------------------------------------------------------',0.3);
                   PrintRight('-----------------------------------------------------------------------------------------------------------------------------',PageWidth-0.5);
                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Verdana',7);
                   Bold := True;
                   PrintLeft('Observação:',0.3);
                   NewLine;
                   Bold := False;
                   PrintLeft(DMServ.TOrd.FieldByName('OBSERVACAO').AsString,0.3);
                   Bold := True;
                   SetFont('Verdana',9);
                   Bold := True;
                   NewLine;
                   xcont:=xcont+2;
                   NewLine;
                   NewLine;
                   PrintRight('_______________________________________',PageWidth-0.5);
                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Verdana',8);
                   Bold := True;
                   PrintRight(DMServ.Alx.FieldByName('NOME').AsString,PageWidth-1.3);
                   xcont:=xcont+1;
                   NewLine;
                   SetFont('Arial',7);
                   PrintLeft('-----------------------------------------------------------------------------------------------------------------------------',0.3);
                   PrintRight('-----------------------------------------------------------------------------------------------------------------------------',PageWidth-0.5);
                   NewLine;
                   xcont:=xcont+1;
                   SetFont('Verdana',6);
                   Bold := False;
                   PrintCenter(DMMACS.TLoja.FieldByName('TMP3').AsString,PageWidth/2);
                   NewLine;


                   if (xcont > 22) and (Xcop = 1) then
                   begin
                   	XNovaPag:=2;
                       Xcop:=2;
                       NewPage;
                   end
                   else begin
                   	if Xcop = 2 then
                          XNovaPag:=1
                       else begin
                          xcont:=1;
                          XLinha := (PageHeight/2)+0.3;
                          MoveTo(0,PageHeight/2);
                   	   LineTo(PageWidth,PageHeight/2);
                          MoveTo(0,PageHeight/2);
                   	   LineTo(PageWidth,PageHeight/2);
                          MoveTo(0,PageHeight/2);
                   	   LineTo(PageWidth,PageHeight/2);
                          Xcop := 2;

                       end;
                   end;


               end;

           end;


   Except

   End;
End;

//Paulo 20/01/2012: Insere uma imagem no relatório
procedure TFOrdemMec.PrintImage(RVSystem:TRvSystem; Row,Col,ImageWidth,ImageHeight: Double; Bitmap: TBitmap; FileName:String='');
var
	Calc, L1,C1,L2,C2 : Double;
	InternalBitmap : TBitmap;
begin
	InternalBitmap := TBitmap.Create;
	Try
		If not Assigned(Bitmap) Then Begin
			InternalBitmap.LoadFromFile(FileName);
		End Else Begin
			InternalBitmap.Assign(Bitmap);
		End;
		With RVSystem.BaseReport do Begin
			If ImageWidth <= 0.0 then begin
				Calc := ImageHeight*(InternalBitmap.Width/XDPI)/(InternalBitmap.Height/YDPI);
				C1 := Col; L1:=Row; C2 := Col+Calc; L2 := Row+ImageHeight;
			end else if ImageHeight <= 0.0 then begin
				Calc := ImageWidth * (InternalBitmap.Height / YDPI) / (InternalBitmap.Width / XDPI);
				C1 := Col; L1 := Row; C2 := Col+ImageWidth; L2 := Row+Calc;
			end else begin
				C1 := Col; L1 := Row; C2 := Col+ImageWidth; L2 := Row+ImageHeight;
			end;
			PrintBitmapRect(C1,L1,C2,L2,InternalBitmap);
		end;
	Finally
		InternalBitmap.Free;
	End;
end;

procedure TFOrdemMec.CompAbertura2vias1Click(Sender: TObject);
begin
  inherited;
  		//XComp2Vias:=True;
       XNovaPag:=2;

       Xcop:=1;
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
    		SetPaperSize(DMPAPER_A4,0,0);
           
      END;
end;



procedure TFOrdemMec.RvSystem1Print(Sender: TObject);
var
  Bitmap:TBitmap;
begin
  inherited;

end;

procedure TFOrdemMec.GerarXMLporPerodo1Click(Sender: TObject);
begin
  inherited;
       //Paulo 13/02/2012: Abre o rel periodo fiscal
       FMenu.TIPOREL:='XMLDISTRIBUICAO';
       FMenu.XTipoEmissaoNFe:='ORDEM';
       AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
end;

procedure TFOrdemMec.ICMSIndevido1Click(Sender: TObject);
begin
  inherited;
		//Paulo 08/03/2012: Gera cartas de correção para notas fiscais
       XCARTACORRECAO:=True;
       AbrirForm(TFListaNfe, FListaNfe, 0);
end;

procedure TFOrdemMec.BandFinalBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    xTotalFinalOrdem:=DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
    QRLTotalFinalOrdem.Caption:=FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.QrAbertOrdem13BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
    qrmObservacao.Lines.Clear;
    qrmObservacao.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
    xTotalProd:=0;
    xTotalServ:=0;
    xTotalDescProd:=0;
    xTotalDescServ:=0;
end;

procedure TFOrdemMec.BandProdBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
     xTotalFinalProd:=DMServ.TOrd.fieldByName('TOTPROD').AsCurrency;
end;

procedure TFOrdemMec.ProdutoseServios1Click(Sender: TObject);
begin
  inherited;
	FMenu.TIPOREL := 'RELSINSERV';
   AbrirForm(TFRelData,FRelData,0);
end;

procedure TFOrdemMec.QrAbertOrdem14MeiaPaginaBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
    xTotalProd:=0;
    xTotalServ:=0;
    xTotalDescProd:=0;
    xTotalDescServ:=0;
end;

procedure TFOrdemMec.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    xTotalProd:=xTotalProd+DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
end;

procedure TFOrdemMec.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	 If ((xTotalProd+xTotalServ)-DMServ.TOrd.fieldByName('TOTORD').AsCurrency)<=0 Then
    	QrlDescontoOrdem14MeiaPagina.Caption:='0,00'
    Else
  	 	QrlDescontoOrdem14MeiaPagina.Caption:=FormatFloat('####,##0.00', (xTotalProd+xTotalServ)-DMServ.TOrd.fieldByName('TOTORD').AsCurrency);
    xTotalFinalOrdem:=DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
    QRLTotalFinalOrdem14MeiaPagina.Caption:=FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	QrObs14MeiaPagina.Lines.Clear;
   QrObs14MeiaPagina.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
end;

procedure TFOrdemMec.QrAbertOrdem14CompletoBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
    xTotalProd:=0;
    xTotalServ:=0;
    xTotalDescProd:=0;
    xTotalDescServ:=0;
end;

procedure TFOrdemMec.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QrObs14PaginaCompleta.Lines.Clear;
   QrObs14PaginaCompleta.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
end;

procedure TFOrdemMec.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    xTotalProd:=xTotalProd+DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
//     xTotalFinalProd:=DMServ.TOrd.fieldByName('TOTPROD').AsCurrency;
end;

procedure TFOrdemMec.QRBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	 If ((xTotalProd+xTotalServ)-DMServ.TOrd.fieldByName('TOTORD').AsCurrency)<=0 Then
    	QrlDescontoOrdem14PaginaToda.Caption:='0,00'
    Else
  	 	QrlDescontoOrdem14PaginaToda.Caption:=FormatFloat('####,##0.00', (xTotalProd+xTotalServ)-DMServ.TOrd.fieldByName('TOTORD').AsCurrency);
    xTotalFinalOrdem:=DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
    QRLTotalFinalOrdem14PaginaCompleta.Caption:=FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.RecuperareEnviarXMLdeCancelamento1Click(
  Sender: TObject);
begin
  inherited;
       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal('', XView.FieldByName('COD_ORDEM').AsInteger, XView.FieldByName('COD_CLIENTE').AsInteger, 'ORDEM', 'XMLCANCELAMENTO', 0, '', '', '', 0, Date(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
       FMzrNfe.ShowModal;
end;

procedure TFOrdemMec.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    xTotalServ:=xTotalServ+DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
end;

procedure TFOrdemMec.QRSubDetail4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    xTotalServ:=xTotalServ+DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
end;

procedure TFOrdemMec.QrAbertOrdem15MeiaPaginaBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
    xTotalProd:=0;
    xTotalServ:=0;
    xTotalDescProd:=0;
    xTotalDescServ:=0;
end;

procedure TFOrdemMec.QRBand14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	QrObs15MeiaPagina.Lines.Clear;
   QrObs15MeiaPagina.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
end;

procedure TFOrdemMec.QRSubDetail5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    xTotalProd:=xTotalProd+DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
end;

procedure TFOrdemMec.QRSubDetail6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    xTotalServ:=xTotalServ+DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
end;

procedure TFOrdemMec.QRBand17BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	 If ((xTotalProd+xTotalServ)-DMServ.TOrd.fieldByName('TOTORD').AsCurrency)<=0 Then
    	QrlDescontoOrdem15MeiaPagina.Caption:='0,00'
    Else
  	 	QrlDescontoOrdem15MeiaPagina.Caption:=FormatFloat('####,##0.00', (xTotalProd+xTotalServ)-DMServ.TOrd.fieldByName('TOTORD').AsCurrency);
    xTotalFinalOrdem:=DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
    QRLTotalFinalOrdem15MeiaPagina.Caption:=FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.QRBand19BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QrObs15PaginaCompleta.Lines.Clear;
   QrObs15PaginaCompleta.Lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
end;

procedure TFOrdemMec.QRSubDetail7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    xTotalProd:=xTotalProd+DMESTOQUE.TSlave.fieldByName('TOTAL').AsCurrency;
end;

procedure TFOrdemMec.QRSubDetail8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    xTotalServ:=xTotalServ+DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency;
end;

procedure TFOrdemMec.QRBand22BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	 If ((xTotalProd+xTotalServ)-DMServ.TOrd.fieldByName('TOTORD').AsCurrency)<=0 Then
    	QrlDescontoOrdem15PaginaToda.Caption:='0,00'
    Else
  	 	QrlDescontoOrdem15PaginaToda.Caption:=FormatFloat('####,##0.00', (xTotalProd+xTotalServ)-DMServ.TOrd.fieldByName('TOTORD').AsCurrency);
    xTotalFinalOrdem:=DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
    QRLTotalFinalOrdem15PaginaCompleta.Caption:=FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

procedure TFOrdemMec.BandServBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	Try
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' select vwfuncionario.cod_interno from equipe ');
   	DMESTOQUE.Alx.SQL.Add(' Left join vwfuncionario on equipe.cod_responsavel = vwfuncionario.cod_func ');
   	DMESTOQUE.Alx.SQL.Add(' where equipe.cod_equipe=:codigo ');
   	DMESTOQUE.Alx.ParamByName('codigo').AsInteger:=DMESTOQUE.TDesp.FieldByName('cod_equipe').AsInteger;
   	DMESTOQUE.Alx.Open;
       If not DMESTOQUE.Alx.IsEmpty Then
           QRLEquipe.Caption:=DMESTOQUE.Alx.FieldByName('cod_interno').AsString
		Else
           QRLEquipe.Caption:='';
   Except
       QRLEquipe.Caption:='';
   End;
end;

procedure TFOrdemMec.QRSubDetail11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
     xTotalFinalProd:=DMServ.TOrd.fieldByName('TOTPROD').AsCurrency;
end;

procedure TFOrdemMec.QRBand32BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    xTotalFinalOrdem:=DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
    QRLTotalFinalOrdem16.Caption:=FormatFloat('####,##0.00', xTotalFinalOrdem);
end;

//Jônatas 26/06/2013 - Coloca máscara no formato do texto do edit pelo keydown
procedure TFOrdemMec.EdPlaca2KeyDown(Sender: TObject;
var Key: Word;  Shift: TShiftState);

begin
  inherited;
   if (EdPlaca2.SelLength > 0) And NOT (KEY = 8) and not (KEY = 13) then
   begin
       EdPlaca2.Text := '';
   end;

   if (Length(EdPlaca2.Text)= 3) AND NOT (KEY = 8) then BEGIN
       EdPlaca2.Text := EdPlaca2.Text+'-';
       EdPlaca2.SelStart := 4;
   END;
end;
//Jônatas 26/06/2013 - faz a máscara no texto do edit pelo keypress
procedure TFOrdemMec.EdPlaca2KeyPress(Sender: TObject;
var Key: Char);

begin
  inherited;
   //checa se o que foi digitado se encontra nos intervalos
   if not (key in ['a'..'z','A'..'Z', '0'..'9', #8, #13])
   then
       Key := #0
   else begin
       if  Length(EdPlaca2.Text) < 4 then
           if not (key in ['a'..'z','A'..'Z', #8, #13]) then
               Key := #0;
       if ( Length(EdPlaca2.Text) > 3 ) then
           if not (key in ['0'..'9', #8, #13]) then
               Key := #0
   end;
   //atualiza o edit
   EdPlaca2.Repaint;
end;

//Jônatas 26/06/2013 - faz a máscara no texto do edit pelo keypress
procedure TFOrdemMec.EdPlaca3KeyDown(Sender: TObject;
var Key: Word;  Shift: TShiftState);

begin
     inherited;
     if (EdPlaca3.SelLength > 0) And NOT (KEY = 8) and not (KEY = 13) then
   begin
       EdPlaca3.Text := '';
   end;

   if (Length(EdPlaca3.Text)= 3) AND NOT (KEY = 8) then BEGIN
       EdPlaca3.Text := EdPlaca3.Text+'-';
       EdPlaca3.SelStart := 4;
   END;
end;

//Jônatas 26/06/2013 - Coloca máscara no formato do texto do edit pelo keydown
procedure TFOrdemMec.EdPlaca3KeyPress(Sender: TObject;
var Key: Char);

begin
  inherited;
  //checa se o que foi digitado se encontra nos intervalos
   if not (key in ['a'..'z','A'..'Z', '0'..'9', #8, #13])
   then
       Key := #0
   else begin
       if  Length(EdPlaca3.Text) < 4 then
           if not (key in ['a'..'z','A'..'Z', #8, #13]) then
               Key := #0;
       if ( Length(EdPlaca3.Text) > 3 ) then
           if not (key in ['0'..'9', #8, #13]) then
               Key := #0
   end;
   //atualiza o edit
   EdPlaca3.Repaint;
end;

end.
