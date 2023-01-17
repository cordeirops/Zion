unit UPedidoPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  Buttons, TFlatEditUnit, jpeg, ExtCtrls, EditFloat, ColorEditFloat, Mask,
  DBCtrls, DBColorEdit, FashionPanel, IBQuery, ColorMaskEdit, QuickRpt,
  Qrctrls, UFrmBusca, FR_DSet, FR_DBSet, FR_Class, Menus, DB,
  TFlatCheckBoxUnit, DrLabel, ShellAPI, cxLookAndFeelPainters, cxButtons,
  XP_Button, cxTextEdit, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxRadioGroup, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, DateUtils;

type                             
  TFPedidoPadrao = class(TFCadPadrao)
    Label10: TLabel;
    EDCODFORMPAG: TColorEditFloat;
    EDFORMPAG: TColorEditFloat;
    BtnProcFormPag: TBitBtn;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    FPLista: TFashionPanel;
    GroupBox5: TGroupBox;
    DBGrid1: TDBGrid;
    BtnFechaPed: TBitBtn;
    Shape3: TShape;
    Shape5: TShape;
    Shape6: TShape;
    PSelectCliente: TPanel;
    Label4: TLabel;
    EdCodCli: TEdit;
    Label5: TLabel;
    EdCPF: TEdit;
    Label6: TLabel;
    EdNomeCli: TEdit;
    BtnProcPess: TBitBtn;
    Label24: TLabel;
    EdCodVend: TColorEditFloat;
    EDNOMEVENDEDOR: TColorEditFloat;
    BtnProcVend: TBitBtn;
    PCadVendedor: TPanel;
    dbvendedor: TEdit;
    Panel2: TPanel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    PCodFab: TPanel;
    Label1: TLabel;
    EDCodFab: TColorMaskEdit;
    PCodInterno: TPanel;
    Label17: TLabel;
    EDCodInterno: TColorEditFloat;
    BtnProcProd: TBitBtn;
    EDCodBarra: TEdit;
    BtnInsertProd: TBitBtn;
    BtnDeleteList: TBitBtn;
    Panel3: TPanel;
    Bevel1: TBevel;
    Label7: TLabel;
    LSimilar: TLabel;
    LMarca: TLabel;
    EDQuantidade: TColorEditFloat;
    EDValUnit: TColorEditFloat;
    EDDesc: TColorEditFloat;
    EDTotal: TColorEditFloat;
    LEstoque: TLabel;
    FSRel: TfrReport;
    FSDSRel: TfrDBDataSet;
    BtnAbrePAliq: TBitBtn;
    PAliqCusto: TPanel;
    FashionPanel1: TFashionPanel;
    Label8: TLabel;
    Label11: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    EDIPI: TColorEditFloat;
    EDICMS: TColorEditFloat;
    EDFRETE: TColorEditFloat;
    EDEMB: TColorEditFloat;
    EDOUTROS: TColorEditFloat;
    EDLUC: TColorEditFloat;
    Panel6: TPanel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    EDVVISTA: TColorEditFloat;
    EDVPRAZO: TColorEditFloat;
    EDAVISTA: TColorEditFloat;
    EDAPRAZO: TColorEditFloat;
    BtnFechaPAliq: TBitBtn;
    BitBtn3: TBitBtn;
    PPesCad: TPanel;
    LLocal: TLabel;
    EdLocal: TFlatEdit;
    BtnEscolheProc: TBitBtn;
    MEscolheProc: TPopupMenu;
    ControleInterno1: TMenuItem;
    CdFab1: TMenuItem;
    C1: TMenuItem;
    PMRel: TPopupMenu;
    Label40: TLabel;
    LQTDPROD: TLabel;
    Comprovante1: TMenuItem;
    Label34: TLabel;
    Label35: TLabel;
    EDAVVISTA: TColorEditFloat;
    Label37: TLabel;
    EDAAVISTA: TColorEditFloat;
    EDAAPRAZO: TColorEditFloat;
    Label38: TLabel;
    EDAVPRAZO: TColorEditFloat;
    Label36: TLabel;
    LUZOPEN: TShape;
    luzvendedor: TShape;
    luzformpag: TShape;
    BTNDEVOLVER: TBitBtn;
    PVendItem: TPanel;
    GroupBox6: TGroupBox;
    BitBtn7: TBitBtn;
    DbVendedorItem: TColorMaskEdit;
    DbCodVendedorItem: TColorMaskEdit;
    BitBtn4: TBitBtn;
    LVlrComissao: TLabel;
    PComiss: TPanel;
    Label41: TLabel;
    EdComiss: TColorEditFloat;
    PGarantia: TPanel;
    CBGarantia: TCheckBox;
    BtnDadosAdic: TBitBtn;
    PFisco: TPanel;
    GroupBox2: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    EdFisVlrFrete: TColorEditFloat;
    DBColorEdit1: TDBColorEdit;
    BitBtn6: TBitBtn;
    CBFreteComp: TCheckBox;
    FrmTransp: TFrmBusca;
    BitBtn10: TBitBtn;
    EdNumPed: TFlatEdit;
    Label47: TLabel;
    PLote: TPanel;
    Label70: TLabel;
    Label71: TLabel;
    EdLote: TColorMaskEdit;
    EdVenc: TColorMaskEdit;
    PSelectLote: TPanel;
    GDBLote: TDBGrid;
    LBonif: TLabel;
    LObsLote: TLabel;
    EdObs: TColorMaskEdit;
    ltxexp: TLabel;
    EDTXEXP: TColorEditFloat;
    lmod: TLabel;
    EDMOD: TColorEditFloat;
    lirend: TLabel;
    EDIREND: TColorEditFloat;
    lcs: TLabel;
    EDCS: TColorEditFloat;
    lpis: TLabel;
    EDPIS: TColorEditFloat;
    lcofins: TLabel;
    EDCOFINS: TColorEditFloat;
    lpms: TLabel;
    EDPMS: TColorEditFloat;
    lms: TLabel;
    EDMS: TColorEditFloat;
    LDescCusto: TLabel;
    EdVlrCompra: TColorEditFloat;
    PFinanceiro: TPanel;
    FPFinanceiro: TFashionPanel;
    Label25: TLabel;
    PBanco: TPanel;
    DBGCTA: TDBGrid;
    PMostraCta: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label39: TLabel;
    DBText3: TDBText;
    CBPagamento: TComboBox;
    FrmConta: TFrmBusca;
    GBFRETE: TGroupBox;
    Label45: TLabel;
    PBanco1: TPanel;
    DBGCTA1: TDBGrid;
    FrmFormPagFrete: TFrmBusca;
    CBPagamento1: TComboBox;
    PMostraCta1: TPanel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label46: TLabel;
    DBText6: TDBText;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    Panel7: TPanel;
    LTextoBusca: TLabel;
    EdDtFech: TColorMaskEdit;
    FrmCFOP: TFrmBusca;
    FSDSDesp: TfrDBDataSet;
    PChqTerceiro: TPanel;
    Shape1: TShape;
    LUZMINUS: TShape;
    LTotalChq: TDRLabel;
    DBText7: TDBText;
    BTNOPEN: TBitBtn;
    BTNMINUS: TBitBtn;
    DBGrid2: TDBGrid;
    BtnFechaChqTerc: TBitBtn;
    DBCBCHEQUE: TDBLookupComboBox;
    LTotMostraCheque: TLabel;
    PQtdConvert: TPanel;
    Label62: TLabel;
    EdQtdConvert: TColorEditFloat;
    PLabelConvertion: TPanel;
    LQtdConvert: TLabel;
    LVUC: TLabel;
    EdVlrUnitComp: TColorEditFloat;
    LDescPer: TLabel;
    LDescMoe: TLabel;
    EdDescMoeda: TFloatEdit;
    DBPRAZOENT: TDBColorEdit;
    LCustoTot: TLabel;
    PPrecos: TPanel;
    FashionPanel3: TFashionPanel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    EdVlrVarejoVista: TColorEditFloat;
    EdVlrVarejoPrazo: TColorEditFloat;
    EdVlrAtacadoVista: TColorEditFloat;
    EdVlrAtacadoPrazo: TColorEditFloat;
    CBGeraFinanceiro: TCheckBox;
    PInfoExp: TPanel;
    PFashionInfoExport: TFashionPanel;
    LQuantInfoExport: TLabel;
    LInfoExport: TLabel;
    EdQuantExp: TColorEditFloat;
    BtnInfoExport: TBitBtn;
    LAtacadista: TLabel;
    PConvertEmb: TPanel;
    FashionPanel4: TFashionPanel;
    lbQntEmb: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    edQntEmb: TColorEditFloat;
    edQntUnitEmb: TColorEditFloat;
    cxButton1: TcxButton;
    CBUnidEmb: TDBLookupComboBox;
    PConversaoUnitaria: TPanel;
    FPConversaoUnitaria: TFashionPanel;
    lbConversaoUnitVenda: TLabel;
    lbConverUnitariaVenda: TLabel;
    edQntConvertVenda: TColorEditFloat;
    edQntConvert: TColorEditFloat;
    btnOkConversaoUnitaria: TcxButton;
    cbConvUnitVendaConv: TDBLookupComboBox;
    lbConversaoUnitariaPara: TLabel;
    cbUnidConvVenda: TDBLookupComboBox;
    cbUnidVendaFixo: TDBLookupComboBox;
    lbUnidadeVendaEmbalagem: TLabel;
    btnAbrirUnidades: TcxButton;
    btnVisualizarConvUnit: TcxButton;
    PFiltrarParcelas: TPanel;
    LbDataInicio: TLabel;
    LbDataFim: TLabel;
    LBCodPessoa: TLabel;
    RBDataFiltro: TcxRadioGroup;
    EDDataInicio: TcxTextEdit;
    EDDataFim: TcxTextEdit;
    BtnFecharPainelFiltro: TtfXPButton;
    BtnVisualizarRel: TBitBtn;
    lbRelDanfe: TLabel;
    rbOrdenarNfe: TcxRadioGroup;
    cbMiniDanfe: TcxCheckBox;
    cbNFeClientes: TcxCheckBox;
    edNumeroCartao: TEdit;
    lbNumeroCartao: TLabel;
    DBMemo: TMemo;
    PImpostos: TPanel;
    LImpCST: TLabel;
    EdImpCST: TColorEditFloat;
    LImpICMS: TLabel;
    EdimpIcms: TColorEditFloat;
    LImpIPI: TLabel;
    EdImpIpi: TColorEditFloat;
    LImpVlrICMS: TLabel;
    EdImpVlrIcms: TColorEditFloat;
    EdImpVlrIpi: TColorEditFloat;
    LImpVlrIpi: TLabel;
    Label16: TLabel;
    EdBCIcms: TColorEditFloat;
    EspelhoNotaFiscal1: TMenuItem;
    frDBDataSet1: TfrDBDataSet;
    FSDSDataSet2: TfrDBDataSet;
    FSDSTmp: TfrDBDataSet;
    LDescCst: TLabel;
    FSDSBanco: TfrDBDataSet;
    PQuantDescarte: TPanel;
    Label60: TLabel;
    LInformaReducaoBase: TLabel;
    DBDATA: TColorMaskEdit;
    PItensVendaAg: TPanel;
    GBFiltragem: TGroupBox;
    CbFiltroPedidosFechados: TCheckBox;
    DbCpf: TEdit;
    DbNomeCli: TEdit;
    BtLote: TButton;
    EdNumeroPedido: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdValorPed: TColorEditFloat;
    LSelectPessoa: TLabel;
    LabelValorFrete: TLabel;
    LabelValorOutros: TLabel;
    EdValorOutros: TColorEditFloat;
    LabelValorIcmsSubstituicao: TLabel;
    EdValoIcmsSubstituicao: TColorEditFloat;
    EdValorIpi: TColorEditFloat;
    LabelValorIpi: TLabel;
    EDDescPed: TFloatEdit;
    EdValorFrete: TColorEditFloat;
    FSDSVeiculoEnt: TfrDBDataSet;
    FashionPanel7: TFashionPanel;
    BtConfirmar: TBitBtn;
    BtCancela: TBitBtn;
    GridItenAg: TDBGrid;
    FSDSParc: TfrDBDataSet;
    PComissaoBanca: TPanel;
    FashionPanel8: TFashionPanel;
    Label91: TLabel;
    btComBanca: TBitBtn;
    EdVlrComissaoBanca: TColorEditFloat;
    cxGroupBox1: TcxGroupBox;
    btnApagarFiltroData: TSpeedButton;
    EdDtFiltro01: TMaskEdit;
    edDtFiltro02: TMaskEdit;
    PTroco: TPanel;
    FashionPanel9: TFashionPanel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    EdValorPedido: TColorEditFloat;
    EdValorPago: TColorEditFloat;
    EdValorTroco: TColorEditFloat;
    GerarXMLporPerodo1: TMenuItem;
    RelatrioporRegies1: TMenuItem;
    LCstCadastrado: TLabel;
    procedure BtnNovoClick(Sender: TObject);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcPessClick(Sender: TObject);
    procedure EdCodVendKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcVendClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EDCODFORMPAGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcFormPagClick(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure EDQuantidadeExit(Sender: TObject);
    procedure EDCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnDeleteListClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure CBPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure PConsultaExit(Sender: TObject);
    procedure PCadastroExit(Sender: TObject);
    procedure PFinanceiroExit(Sender: TObject);
    procedure EDCodMoedaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QrPageHeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRRodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FPListaEnter(Sender: TObject);
    procedure FPListaExit(Sender: TObject);
    procedure FrmBusca2BTNMINUSClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDDescKeyPress(Sender: TObject; var Key: Char);
    procedure FashionPanel1Exit(Sender: TObject);
    procedure BtnAbrePAliqClick(Sender: TObject);
    procedure BtnFechaPAliqClick(Sender: TObject);
    procedure EDIPIExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure DBNomeCliKeyPress(Sender: TObject; var Key: Char);
    procedure PSelectClienteExit(Sender: TObject);
    procedure CBPagamentoExit(Sender: TObject);
    procedure DBGCTAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PBancoExit(Sender: TObject);
    procedure BtnEscolheProcClick(Sender: TObject);
    procedure ControleInterno1Click(Sender: TObject);
    procedure CdFab1Click(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure Comprovante1Click(Sender: TObject);
    procedure EDAVVISTAExit(Sender: TObject);
    procedure BtnProcPessEnter(Sender: TObject);
    procedure BtnProcVendEnter(Sender: TObject);
    procedure BtnProcVendExit(Sender: TObject);
    procedure BtnProcFormPagEnter(Sender: TObject);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BTNDEVOLVERClick(Sender: TObject);
    procedure DbCodVendedorItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure PVendItemExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure EdValorPedExit(Sender: TObject);
    procedure EDDescPedExit(Sender: TObject);
    procedure EdValorPedKeyPress(Sender: TObject; var Key: Char);
    procedure EDTotalExit(Sender: TObject);
    procedure EDTotalKeyPress(Sender: TObject; var Key: Char);
    procedure EDDescPedKeyPress(Sender: TObject; var Key: Char);
    procedure EDCodInternoExit(Sender: TObject);
    procedure EDCodFabExit(Sender: TObject);
    procedure BtnDadosAdicClick(Sender: TObject);
    procedure PFiscoExit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CBPagamento1Exit(Sender: TObject);
    procedure DBGCTA1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmFormPagFreteEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmTranspBTNOPENClick(Sender: TObject);
    procedure FrmTranspEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn10Click(Sender: TObject);
    procedure EdNumPedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCancelarClick(Sender: TObject);
    procedure GDBLoteKeyPress(Sender: TObject; var Key: Char);
    procedure EdLoteKeyPress(Sender: TObject; var Key: Char);
    procedure FrmCFOPBTNOPENClick(Sender: TObject);
    procedure FrmFormPagFreteBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure BTNOPENClick(Sender: TObject);
    procedure BtnFechaChqTercClick(Sender: TObject);
    procedure PChqTerceiroExit(Sender: TObject);
    procedure PQtdConvertExit(Sender: TObject);
    procedure EdQtdConvertKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel2Enter(Sender: TObject);
    procedure EdAcreccustoExit(Sender: TObject);
    procedure EdDescMoedaExit(Sender: TObject);
    procedure EDDescPedEnter(Sender: TObject);
    procedure EdDescMoedaEnter(Sender: TObject);
    procedure EdVlrVarejoVistaKeyPress(Sender: TObject; var Key: Char);
    procedure PInfoExpExit(Sender: TObject);
    procedure EdQuantExpKeyPress(Sender: TObject; var Key: Char);
    procedure EdVlrVndExpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInfoExportClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnAbrirUnidadesClick(Sender: TObject);
    procedure btnVisualizarConvUnitClick(Sender: TObject);
    procedure EDDataInicioKeyPress(Sender: TObject; var Key: Char);
    procedure EDDataInicioExit(Sender: TObject);
    procedure EDDataFimExit(Sender: TObject);
    procedure EDDataFimKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFecharPainelFiltroClick(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyPress(Sender: TObject; var Key: Char);
    procedure DBDATAKeyPress(Sender: TObject; var Key: Char);
    procedure CBPagamentoClick(Sender: TObject);
    procedure edNumeroCartaoKeyPress(Sender: TObject; var Key: Char);
    procedure DBDATAExit(Sender: TObject);
    procedure EdImpCSTExit(Sender: TObject);
    procedure EdImpCSTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdimpIcmsExit(Sender: TObject);
    procedure EdImpIpiExit(Sender: TObject);
    procedure EspelhoNotaFiscal1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBColorEdit4Exit(Sender: TObject);
    procedure EdBCIcmsExit(Sender: TObject);
    procedure EDDescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtConfirmarClick(Sender: TObject);
   // procedure GridItenAgDblClick(Sender: TObject);
    //procedure EdQuantExit(Sender: TObject);
    procedure GridItenAgDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnApagarFiltroDataClick(Sender: TObject);
    procedure EdDtFiltro01KeyPress(Sender: TObject; var Key: Char);
    procedure edDtFiltro02KeyPress(Sender: TObject; var Key: Char);
    procedure CbFiltroPedidosFechadosClick(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure EdValorOutrosExit(Sender: TObject);
    procedure EdValorIpiExit(Sender: TObject);
    procedure EdValoIcmsSubstituicaoExit(Sender: TObject);
    procedure PCadVendedorExit(Sender: TObject);
    procedure FloatEdit1Enter(Sender: TObject);
    procedure FloatEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure EdValorFreteExit(Sender: TObject);
    procedure lancaComissao();
    procedure btComBancaClick(Sender: TObject);
    procedure GerarXMLporPerodo1Click(Sender: TObject);
    procedure RelatrioporRegies1Click(Sender: TObject);
    


  private
    { Private declarations }
    //Procedure Utilizada para verificar se o pedido se tornará caderneta para o cliente
    Procedure SelectCader;
    //Procedure utilizada para distribuir o valor pago de Substituição tributária entre os produtos
   // Procedure RecalcSTProd;
  public
    { Public declarations }
    XControle :Boolean;

    XConvUnitEmb:Boolean; // - 26/01/2009: se estiver true é pq em loja esta configurado como conversao unitaria de embalangem
    XConvUnitVenda:Boolean; // - 27/01/2009: se estiver true é pq em loja esta configurado como conversao unitaria p/ venda
    XVlrConv:Double; // - 28/01/2009: armazena o valor de conversão das unidades
    XConvVlr:Boolean; // - 28/01/2009: true valor de compra é o valor de entrada da conversão senão false
    XConvAtivo:Boolean; // - 05/02/2009: true ativar conversão nos campos
    XCFOPOUTROS: String;
    XFreteAlx: String;
    XCodAux, XEdQuant, XImpI: Integer;// Paulo 08/10/2010:Para controle da importação de itens agrupados
    //Paulo 24/11/2010: Variaveis para lote
    XQuantLote,XQtdBruta, XQtdDescarte, XQtdEnt: Real;
    XMotivoDesc : String;
	 //MAURO 23/01/2013 - Controle da numeração do pedido de compra pelo usuário
    XCtrlDvl: String;
    XLote : Integer;
  	 XESTOQUELOTE: Integer;

    procedure enviarNFe(tipoEmissao:Integer; codPedido:Integer; tipoPedido:String);
    //seleciona forma de pagamento e vendedor de acordo com o cliente
    Procedure SelectFormPag_Vendedor;
    //Limpa as labels de seleção de produto
    Procedure LimpaLabels;
    //Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
    Procedure EscreveLabels;
    //Filtra Tabela Slave e calcula total
    Procedure FiltraSlave;
    //Fecha pedido (Atualiza estoque e joga no financeiro
    Function FechaPedido(CODPEDIDO: String; DTFECH: String) : Boolean;
    //Imprime pedido
    Procedure ImpPed(COD_PEDIDO: Integer);
    //Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada venda
    Function CancelLanPed(CodPedido: String):Boolean;
    //Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada compra
    Function CancelLanPedC(CodPedido: String):Boolean;
    //FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
    Function CalcComisTotVend: Boolean;
	 //Função utilizada para baixar contas do pedido p/ poder haver devolução total
	 Function CancelaFinac(CodPedido: String):Boolean;
	 //Filtra cheques de acordo com tmp
	 Function FiltraCheques: Boolean;
	 //Função utilizada para baixar contas do pedido p/ poder haver devolução total
	 Function CancelaFinacParc(CodPedido: String; ValorCancelado: Real):Boolean;
  // - 20/02/2009:  calcula media ponderada ST em PC
  function CalMedPondPC(CodPedido:String):Boolean;
  // 17/06/2009: verificar fornecedor para devolução // passar código cliente // retorno código fornecedor
  function VerificaFornecedorDevolucao(CodCliente: Integer):Integer;
  // 17/06/2009: verificar CFOP para devolução // passar código fornecedor // retorno código CFOP
  function VerificaCFOPDevolucao(CodFornec: Integer):Integer;
  //Função Utilizada para calcular as medias de base e valor de icmssubstituição tributária, tendo como base operações de entrada
  Function CalcMediaSubstituicaoTributaria(CodigoEstoque:Integer): Boolean;

  procedure verificaDescontoFormpag;
  //Função para calculo de base de icms substituição tributária e valor, aramazenando em variavei temporarias
  Procedure ReturnDadosIcmsSubsituicao;
	//Função utilizada para Calcular e dividir o desconto proporcialmente da NF entre todos os produtos
	Procedure CalcDescProdutosNf;

  // 22/06/2009: VERIFICA SE LOTE ESTÁ VENCENDO CONFORME CONFIGURADO EM LOJA
  procedure verificaVencimentoLote(dateVencimento :TDateTime);

  //Função para chamar a tela do fiscal de dentro da tela de consulta do pedido
  Function GeraFiscalPed: Boolean;
	//Função Utilizada para gerar a tela do fiscal a partir da tela de consulta
	Function AbreFiscal: Boolean;
	//Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
   Function RetornaNumPed: Integer;
    //Função utilizada para montar os filtros de pedidos e executar o mesmo
    Procedure ExecutaLiberaDados;
  //Paulo 08/10/2010: importa itens da venda agrupada
   //procedure importaItensAgrupados;
   //Função utilizada para desabilitar painel de cadastro retornando para painel de consulta
   Procedure desabilitaPCadastro;
   //Paulo 24/11/2010: Função que retorna a quantidade do preduto no lote
	Function RetornaQuantidadeLote(XCodLote, XCodEstoque: Integer):Real;
   //Paulo 01/02/2012: Retorna a porcentagem de comissao do vendedor 
   Procedure retornaComissao(XcodVend: Integer);
  	//PAulo 19/01/2012: Gera um pedido de compra para os veiculos de entrada
  	Procedure GeraPedCompra(CodPedVenda:Integer);
   //Paulo 08/12/2011: Filtra Tabela veiculo entrada e soma total
   Procedure FiltraVeiculoEntrada(XCod_PedidoVeic: Integer);
   //PAulo 26/01/2012: Gera um cadastro de fornecedor com base do registro de cliente
   function GeraCadFornecedor(XcodCli:Integer):Integer;
  end;

var
  FPedidoPadrao: TFPedidoPadrao;
  XTabSlave: TIbQuery; //Tabela escrava normalmente de produto
  XSQLTabSlave: String; //Armazena o nome da tabela na base de dados
  XpkTabSlave: String; //Armazena o noma da Pk da Tabela Slave
  Estado: String;//Define se no momento a tabela esta em inserção ou edição INSERT/EDIT
  XEstPed, XEstReserv, XEstFisico: Real; //Variaveis utilizadas para auxiliar o cálculo de saldo de estoque

  XCodPedido: String;//Armazena o codigo de pedido para que ele possa ser fechado automaticamente
  XCodPedidoP: String;
  XCodSlave: Integer;//Armazena o codigo pk da tabela escarva
  XCOD_DOCFIS: Integer;//Armazena temporáriamente o código da tabela fiscal para o pedido
  XCodFormPag: Integer; //Armazena o codigo da forma de pagamento utilizado para evitar sua perda durante o feito
  XCODFORMPAGFRETE: Integer; //Armazena o codigo da forma de pagamento de frete utilizado para evitar sua perda durante o feito
  XCodVendedor: Integer; //Armazena o codigo do vendedor para evitar sua perda durante o feito
  XCodVendItem: Integer; //Armazena o codigo do vendedor do item de produto para evitar sua perda durante o feito
  XCodPessoa: Integer;// Armazena o codigo da pessoa cliente ou fornecedor
  XCODTRANSP: Integer;// Armazena o codigo da Transportadora
  XCodMoeda: Integer;// Armazenará o código da moeda para lan''camento
  XCodConta: Integer;// Armazenará o código da conta do plano para lan''camento
  XCOD_CONTABANCO: Integer;//Armazenará o código da conta corrente caso o pedido seja fechado com cheque
  XCOD_CONTABANCOFRETE: Integer;//Armazenará o código da conta corrente PARA FRETE
  XCODPKCOMIS: Integer;//Chave primaria para lançamento automático de comissão ao fechar o pedido
  XIPI, XTOTST, XICMS, XFRETE, XEMB, XTOTIPI: Real;//Variaveis para armazenar as atualizações do custo do produto
  XLIBDESCPROD: Boolean;//Variável que controla se foi liberado um desconto superior ao cadastrado para o produto
  XLIBMARGEMSEG: Boolean;//Variável que controla se foi liberado uma venda com Margem de Segurança  menor que a cadastrada
  XLIBCRED: Boolean;//Váriavel que controla se foi libera credito a cliente bloqueado
  XCOD_LOTE: Integer;//CHAVE PRIMÁRIA PARA CONTROLE DE LOTE
  XQTDLOTE: Real;// quantidade da venda no lote
  XVLRTOTALDESP, XVLRTOTALPROD, XVLRTOTALFRETE, XVLRTOTALOUTROS, XVLRTOTALIPI, XVLRTOTALICMSSUBSTITUICAO: Real;
  XTmpBaseSubstituicao, XTmpBaseValorSubstituicao: Real;//Variáveis temporárias para cálculos de icms substituição no momento da venda do item
  XVLRTOTAL: REAL;// ARMARZENA VALOR TOTAL DO PEDIDO
  XVLRPRODBD: Real;// Armazena temporariamente o Vlr original do produto para após ser inserido na tabela
  XVLRCOMIS, XEDCOMISSAOPED: REAL;// Armazena o Vlr da Comissão que o vendedor receberá no pedido
  XALIQCOMISS: REAL;// Armazena o percentual Total de comissão utilizado para caso haja mais de um comissionado
  XVLRFRETE: REAL;//Armazena o vlr do frete para calc temp
  XVLRUNIT: REAL;//ESTA VARIAVEL E USADA PARA ARMAZENAR O VLR UNITARIO DO PRODUTO P/ QUE O MESMO NAO SEJA PASSADO DIRETO A EDIT
  XVLRFISCAL: REAL;// Armazena temporariamente o valor do pedido para passar para o fiscal
  XAtacadista: Boolean; //Armazena temporariamente se o cliente é tipo atacadista ou nao
  XVlrCheque: Real; // Armazena o valor total p[ago em cheques a fornecedores
  XCod_Tmp: Integer; // Armazena o codigo temporario
  XValorCancelado: Real; //Armazena Temporariamente o valor cancelado do pedido
  XFocu: String;//Variavelutilizada para controlar o focu em componentes
  XControlDesc: Real;// Variavel utilizada para verifik c o desconto aplikado foi em moeda ou em percentual
  XVlrUnitComp : Real; // valor unitario de compra
  XLinha: string; // aramzena os dados incorretos da nota fiscal
  XCodUnidItenProd:Integer; //armazena o codigo da unidade do produto
  XNumPedido: Integer;//Variavel resposavel por fzr o controle da numeração de pedidos
  //Variaveis temporaria pra codigo de ST e Cfop para cada registro de item
  XCodCst, XCodCfop:Integer;
  //Variaveis para controle do destinatário
  XCod_Destinatario: Integer;
  xnomedestinatario: String;
  XTABELA: String;
  XFat: Boolean;//Paulo 14/03/2011: Para controle de fatura
  XnumDocBanca, XHistBanca:String;
  XUfOrigem, XUfDestino:String;
  XUsoConsumo:String;


  implementation

uses Alxor32, UDMMacs, UMenu, UDMEstoque, UCliente, UDMPessoa, UFORNECEDOR,
  AlxMessage, UFuncionario, UDMFinanc, UFormPag, UProduto, UPedVenda,
  UConsPlncta, UDMEntrada, UDMSaida, UDMConta, UCadMoeda, UDMCaixa,
  UDmBanco, UPedCompra, USenha, UComissionados, Alxorprn, UCadCFOP,
  UFiscal, UPadrao, UDmServ, UnitDeclaracoes, UDMGEOGRAFIA, Math,
  UCadUnidade, UConvertUnid, UFiscalEntradas, UFiscalSaidas, UMzrNfe,
  UPadraoFiscal, Variants, UMDO, URelPeriodoFiscal, URelPadraoped;

{$R *.DFM}

//PAulo 26/01/2012: Gera um cadastro de fornecedor com base do registro de cliente
function TFPedidoPadrao.GeraCadFornecedor(XcodCli:Integer):Integer;
var
	XcodFornec:Integer;
begin
  inherited;
  		Result:=-1;
		FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', IntToStr(XcodCli),'');

       //Paulo 26/01/2012: verifica se já não existe um fornecedor para o cliente
       if FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_PESSOA', IntToStr(DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsInteger),'') = true
       then begin
       	 //Paulo 26/01/2012: retorna o código do fornecedor encontrado
            Result:=DMPESSOA.TFornecedor.FieldByName('COD_FORNEC').AsInteger;
       end else
       begin
       	 TRY
                //Paulo 26/01/2012: cria um novo cadastro de fornecedor
                XcodFornec:=InserReg(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC');
                DMPESSOA.TFornecedor.FieldByName('COD_FORNEC').AsInteger:=XcodFornec;
                DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsInteger:=DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsInteger;
                DMPESSOA.TFornecedor.FieldByName('COD_INTERNO').AsInteger:=XcodFornec;
                DMPESSOA.TFornecedor.FieldByName('MARKREL').AsString:='0';
                DMPESSOA.TFornecedor.FieldByName('ATUALIZAR').AsString:='1';
                DMPESSOA.TFornecedor.Post;
                DMPESSOA.TransacPessoa.CommitRetaining;
                Result:= XcodFornec;
            EXCEPT
                DMPESSOA.TransacPessoa.RollbackRetaining;
                Result:=-1;
            END;

       end;
end;

//Paulo 08/12/2011: Filtra Tabela veiculo entrada esoma total
Procedure TFPedidoPadrao.FiltraVeiculoEntrada(XCod_PedidoVeic: Integer);
Begin

	DMESTOQUE.Alx5.Close;
   DMESTOQUE.Alx5.SQL.Clear;
   DMESTOQUE.Alx5.SQL.Add('select subproduto.descricao,veiculoentrada.cod_estoque, veiculoentrada.valor, veiculoentrada.cod_veic_ent,');
   DMESTOQUE.Alx5.SQL.Add('veiculoentrada.COD_CST, veiculoentrada.ALIQ_ICMS, veiculoentrada.BC_ICMS,');
   DMESTOQUE.Alx5.SQL.Add('veiculoentrada.VLR_ICMS FROM veiculoentrada');
   DMESTOQUE.Alx5.SQL.Add('left join estoque on veiculoentrada.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx5.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.Alx5.SQL.Add('where VEICULOENTRADA.COD_PEDIDO = :PEDIDO');
   DMESTOQUE.Alx5.ParamByName('PEDIDO').AsInteger:=XCod_PedidoVeic;
   DMESTOQUE.Alx5.Open;

   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('select sum(valor)as total from VEICULOENTRADA');
   DMSAIDA.TAlx.SQL.Add('where VEICULOENTRADA.COD_PEDIDO = :PEDIDO');
   DMSAIDA.TAlx.ParamByName('PEDIDO').AsInteger:=XCod_PedidoVeic;
   DMSAIDA.TAlx.Open;

End;

  	//PAulo 19/01/2012: Gera um pedido de compra para os veiculos de entrada
  	procedure TFPedidoPadrao.GeraPedCompra(CodPedVenda:Integer);
  	var
     XNumPedido,XCodLancEntrada, XcodItem: Integer;
  	begin
    inherited;
       DMENTRADA.TAlx.Close;
       DMENTRADA.TAlx.SQL.Clear;
       DMENTRADA.TAlx.SQL.Add('        select estoque.cod_estoque FROM veiculoentrada ');
       DMENTRADA.TAlx.SQL.Add('        left join estoque on veiculoentrada.cod_estoque = estoque.cod_estoque ');
       DMENTRADA.TAlx.SQL.Add('        left join lancent on estoque.cod_estoque = lancent.cod_estoque ');
       DMENTRADA.TAlx.SQL.Add('        where (VEICULOENTRADA.COD_PEDIDO = :PEDIDO) and (lancent.cod_lote=357) ');
       DMENTRADA.TALX.ParamByName('PEDIDO').asinteger:=CodPedVenda;
       DMENTRADA.TAlx.Open;
       If DMENTRADA.TAlx.IsEmpty
       Then Begin
           FiltraVeiculoEntrada(CodPedVenda);
           //Alex: Caso tenhamos itens de veiculo de entrada, devemos lançar na tabela de lancemento de entradas para correção
           DMESTOQUE.Alx5.First;
           While Not DMESTOQUE.Alx5.Eof Do
           Begin
               TRY
               	//Alex 02/08/2012: Verifica se este veiculo já esta lançado em entradas para correção
                   //Paulo 25/01/2012: Filtra o pedido de venda
                   FiltraTabela(DMESTOQUE.Alx2, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(CodPedVenda),'');

                   //Alex 02/08/2012: Lancamos um registro do produto/veiculo em entradas para correção
                   XCodLancEntrada:=InserReg(DMENTRADA.TLancEnt, 'lancent', 'cod_lanent');
                   DMENTRADA.TLancEnt.FieldByName('cod_lanent').Asinteger:=XCodLancEntrada;
                   DMENTRADA.TLancEnt.FieldByName('COD_ESTOQUE').Asinteger:=DMESTOQUE.Alx5.FieldByName('COD_ESTOQUE').AsInteger;
                   DMENTRADA.TLancEnt.FieldByName('COD_LOTE').Asinteger:=357;//Esta marcação indica que foi troca referente a pedido de venda
                   DMENTRADA.TLancEnt.FieldByName('COD_LOJA').Asinteger:= StrToInt(FMenu.LCODLOJA.Caption);
                   DMENTRADA.TLancEnt.FieldByName('COD_USUARIO').Asinteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
                   DMENTRADA.TLancEnt.FieldByName('NUMNOTA').AsString:=XView.FieldByName('NUMPED').AsString;
                   DMENTRADA.TLancEnt.FieldByName('MOTIVO').AsString:='Veiculo(s) de entrada referente ao pedido de venda nº.: '+XView.FieldByName('NUMPED').AsString+' no Valor de R$ '+FormatFloat('0.00', DMSAIDA.TAlx.FieldByName('TOTAL').Value);
                   DMENTRADA.TLancEnt.FieldByName('DT_LANCAMENTO').AsDateTime:=Date();
                   DMENTRADA.TLancEnt.FieldByName('DT_ESTOQUE').AsString:=XView.FieldByName('dtpedven').AsString;
                   DMENTRADA.TLancEnt.FieldByName('QUANTIDADE').Asinteger:=1;
                   DMENTRADA.TLancEnt.Post;
                   FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(DMESTOQUE.Alx5.FieldByName('COD_ESTOQUE').AsInteger),'');
					//Alex 02/08/2012: Atualiza Estoque
                   DMESTOQUE.TEstoque.Edit;
                   DMEstoque.TEstoque.FieldByName('ULTCOMPRA').AsString:=DateToStr(Date());
                   If (DMMACS.TLoja.FieldByName('NAOATUALIZAESTOQUEPC').AsString<>'1') or (DMMACS.TLoja.FieldByName('NAOATUALIZAESTOQUEPC').AsString = Null)
                   Then Begin
                       DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+1;
                       DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                       DMESTOQUE.TEstoque.Post;
                   End;
                  	//Alex 02/08/2012: linka o veiculo de entrada com o lancamento de entrada
                   FiltraTabela(DMSAIDA.TVeiculoEnt, 'VEICULOENTRADA', 'COD_VEIC_ENT', IntToStr(DMESTOQUE.Alx5.FieldByName('COD_VEIC_ENT').AsInteger),'');
                   DMSAIDA.TVeiculoEnt.Edit;
                   DMSAIDA.TVeiculoEnt.FieldByName('COD_PEDCOMP').AsInteger:= XCodLancEntrada;
                   DMSAIDA.TVeiculoEnt.Post;

                   DMSAIDA.IBT.CommitRetaining;
                   DMENTRADA.IBT.CommitRetaining;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
               Except
               	MessageDlg('O Estoque dos Veículos de entrada não foram atualizados', mtWarning, [mbOK], 0);
                   DMENTRADA.IBT.RollbackRetaining;
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
                   DMSAIDA.IBT.RollbackRetaining;
               End;
               DMESTOQUE.Alx5.Next;
           end;
       End;
    end;

    //Função Utilizada para calcular as medias de base e valor de icmssubstituição tributária, tendo como base operações de entrada
    Function TFPedidoPadrao.CalcMediaSubstituicaoTributaria(CodigoEstoque:Integer): Boolean;
    Begin
     Try
         Result:=True;
         If CodigoEstoque<>0
         Then Begin
             DMESTOQUE.Alx.Close;
             DMESTOQUE.Alx.SQL.Clear;
             DMESTOQUE.Alx.SQL.Add(' select  Sum(itenspedc.qtdeprod) as Quantidade, Sum(itenspedc.vlricmssubs) as VlrSubstituicao, Sum(itenspedc.baseicmssubs) As BaseSubstituicao from itenspedc where (itenspedc.cod_estoque=:Codigo) ');
             DMESTOQUE.Alx.ParamByName('Codigo').AsInteger:=CodigoEstoque;
             DMESTOQUE.Alx.Open;
             If Not DMESTOQUE.Alx.IsEmpty
             Then Begin
                 If DMESTOQUE.Alx.FieldByName('Quantidade').AsCurrency>0
                 Then Begin
                     XMediaBaseST:=DMESTOQUE.Alx.FieldByName('BaseSubstituicao').AsCurrency/DMESTOQUE.Alx.FieldByName('Quantidade').AsCurrency;
                     XMediaValorST:=DMESTOQUE.Alx.FieldByName('VlrSubstituicao').AsCurrency/DMESTOQUE.Alx.FieldByName('Quantidade').AsCurrency;
                 End
                 Else Begin
                     XMediaBaseST:=DMESTOQUE.Alx.FieldByName('BaseSubstituicao').AsCurrency;
                     XMediaValorST:=DMESTOQUE.Alx.FieldByName('VlrSubstituicao').AsCurrency;
                 End;
             End
             Else Begin
                 XMediaBaseST:=0;
                 XMediaValorST:=0;
             End;
         End
         Else Begin
             XMediaBaseST:=0;
             XMediaValorST:=0;
         End;
     Except
         Result:=False;
     End;
    End;
	 //Função para calculo de base de icms substituição tributária e valor, aramazenando em variavei temporarias
    Procedure TFPedidoPadrao.ReturnDadosIcmsSubsituicao;
    Var
       XAuxBaseIcmsSubstituicao, XAuxVlrIcmsSubstituicao, XAuxIcmsOp: Real;
       XTxtProtocolo: String;
       XCSTInterestadual: Integer;
		XAliqIcms, XAliqExtDestinatario, XAlqIntDestinatario, XMvaEstado, XDescontos: real;
    Begin
      	//VERIFICA SE A EMPRESA CADASTRADA É OPTANDE DO SIMPLES
      	If DMMACS.TEmpresa.FieldByName('TIPOEMPRESANF').AsString='SIMPLES' Then
         Fmenu.XTributaEmpresa:='SIMPLES'
      	Else
          Fmenu.XTributaEmpresa:='NORMAL';

       Fmenu.XTributaCliente:='SIMPLES';

       //UNIDADES DE FEDERAÇÃO
       //ORIGEM
		//Selecao para UF de Origem, cliente usuario
   	DMMACS.TALX.Close;
   	DMMACS.TALX.SQL.Clear;
   	DMMACS.TALX.SQL.Add(' select vwcidade.uf, estado.aliqinterna from empresa ');
   	DMMACS.TALX.SQL.Add(' Left Join vwcidade on empresa.cod_cidade = vwcidade.cod_cidade ');
   	DMMACS.TALX.SQL.Add('  left join estado on vwcidade.cod_estado = estado.cod_estado ');
   	DMMACS.TALX.Open;
   	If not DMMACS.TALX.IsEmpty
   	Then Begin
       	If DMMACS.TALX.FieldByName('UF').AsString<>''
       	Then Begin
           	XUfOrigem:=DMMACS.TALX.FieldByName('UF').AsString;
           	XAliqIcms:=DMMACS.TALX.FieldByName('aliqinterna').AsCurrency;//Atribui como aliquota de icms o estado de origem
       	End;
   	End;

       //DESTINO
   	DMMACS.TALX.Close;
   	DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' Select vwcidade.uf, estado.mva, estado.COD_CSTINTERESTADUAL as CST, estado.CST_INTERNA, ESTADO.CST_EXTERNA, ESTADO.TXT_SUBSTITUICAO, ESTADO.ALIQINTERNA, ESTADO.aliqinterestaual,ESTADO.isentost from vwcliente ');
       DMMACS.TALX.SQL.Add(' Left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
       DMMACS.TALX.SQL.Add('    Left join estado on vwcidade.cod_estado = estado.cod_estado  ');
       DMMACS.TALX.SQL.Add(' where vwcliente.cod_CLIENTE=:codigo ');
   	DMMACS.TALX.ParamByName('codigo').AsInteger:=XCodPessoa;
       DMMACS.TALX.SQL.Text;
   	DMMACS.TALX.Open;
       //Pauulo 26/10/2010: Verifica se o estado é isento st
       if DMMACS.TALX.FieldByName('isentost').AsString = '1' then
          XEstadoIsentoST:= true
       else
          XEstadoIsentoST:= false;

       XUfDestino:=DMMACS.TALX.FieldByName('UF').AsString;
		If XUfDestino='' Then
       	XUfDestino:=XUfOrigem;

       //passa variaveis para Impostos
       XTxtProtocolo:=DMMACS.TALX.FieldByName('TXT_SUBSTITUICAO').AsString;
       XMvaEstado:=DMMACS.TALX.FieldByName('MVA').AsCurrency;
       XAlqIntDestinatario:= DMMACS.TALX.FieldByName('ALIQINTERNA').AsCurrency;
       XAliqExtDestinatario:= DMMACS.TALX.FieldByName('aliqinterestaual').AsCurrency;
       If XUfOrigem<>XUfDestino
       Then Begin
           XAliqIcms:=DMMACS.TALX.FieldByName('aliqinterestaual').AsCurrency; // Se a venda estiver sendo feita para fora, assume como aliquota a aliquota do estado de destino
           XCSTInterestadual:=DMMACS.TALX.FieldByName('CST').AsInteger;
           If XCSTInterestadual<=0 Then
               XCSTInterestadual:=XCodCst;
       End;

       //Se for devolução ou remessa para garantia o sistema deve pular o calculo de impostos
       If (FMenu.XSimplesRemessa=True) or (FMenu.XRemessaGarantia=True) or (FMenu.XDevolucao=True)or (FMenu.XOutrosFisc=True) or (FMenu.TIPOAUX = 'ECF')or (FMenu.XComplementacao = True) Then
           Exit;
       Try
           DMSAIDA.TItemPV.Close;
           DMSAIDA.TItemPV.SQL.Clear;
           DMSAIDA.TItemPV.SQL.Add(' select * from itenspedven ');
           DMSAIDA.TItemPV.SQL.Add('  left join cst ON itenspedven.cod_cst = cst.cod_cst WHERE itenspedven.cod_pedven=:codigo ');
           DMSAIDA.TItemPV.ParamByName('codigo').AsString:=XCodPedido;
           DMSAIDA.TItemPV.Open;
           //Seleciona total de itens com substituição tributária
           DMESTOQUE.Alx1.Close;
           DMESTOQUE.Alx1.SQL.Clear;
           DMESTOQUE.Alx1.SQL.Add(' select sum(itenspedven.valortotal) as TOTAL, SUM(itenspedven.descnf) as DESNF from  itenspedven ');
           DMESTOQUE.Alx1.SQL.Add('  left join cst on itenspedven.cod_cst = cst.cod_cst ');
           DMESTOQUE.Alx1.SQL.Add('  where (itenspedven.cod_pedven=:Codigo)  and (cst.substituicao=''1'')');
           DMESTOQUE.Alx1.ParamByName('CODIGO').AsString:=XCodPedido;
           DMESTOQUE.Alx1.Open;

           If Not DMESTOQUE.Alx1.IsEmpty
           Then Begin
               XVlrBaseIcmsSt:=DMESTOQUE.Alx1.FieldByName('TOTAL').AsCurrency-DMESTOQUE.Alx1.FieldByName('DESNF').AsCurrency;
           End;
           //INICIA CONTROL PARA PEDIDO DE VENDA
           DMSAIDA.TItemPV.First;
           while not DMSAIDA.TItemPV.Eof do
           Begin
               DMESTOQUE.Alx1.Close;
               DMESTOQUE.Alx1.SQL.Clear;
               DMESTOQUE.Alx1.SQL.Add('  Select cst.substituicao, estoque.mediabaseicmst, estoque.mediavlricmst, estoque.ipi_vnd, estoque.pmc, estoque.mva, estoque.REDUCBASE, subproduto.CLASSIFICACAO ');
               DMESTOQUE.Alx1.SQL.Add('   from itenspedven ');
               DMESTOQUE.Alx1.SQL.Add('   left join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
               DMESTOQUE.Alx1.SQL.Add('   left join Subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
               DMESTOQUE.Alx1.SQL.Add('   left join cst on itenspedven.cod_cst = cst.cod_cst ');
               DMESTOQUE.Alx1.SQL.Add('   where itenspedven.cod_itenspedven = :Codigo ');
               DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := DMSAIDA.TItemPV.FieldByName('cod_itenspedven').AsInteger;
               DMESTOQUE.Alx1.SQL.Text;
               DMESTOQUE.Alx1.Open;
               If Not DMESTOQUE.Alx1.IsEmpty
               Then Begin
               	If EDDescPed.Text='' Then
                       XDescontos:=0
                   Else
                   	XDescontos:=DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency-(DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency*StrToFloat(EDDescPed.Text))/100;

                   DMSAIDA.TItemPV.Edit;
                   DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := 0;
                   DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := 0;
                   //RECALCULA IPI
                   If DMSAIDA.TItemPV.FieldByName('aliqipi').AsCurrency>0 Then
						DMSAIDA.TItemPV.FieldByName('vlripi').AsCurrency := ((DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency-DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency)*DMSAIDA.TItemPV.FieldByName('aliqipi').AsCurrency)/100;
                   DMSAIDA.TItemPV.Post;
                   If DMESTOQUE.Alx1.FieldByName('SUBSTITUICAO').AsString='1'
                   Then Begin
                       //SIMPLES P NORMAL
                       If (Fmenu.XTributaEmpresa='SIMPLES') And (Fmenu.XTributaCliente='NORMAL')
                       Then Begin
                           //Calcula somente fora do estado
                           If XUfOrigem<>XUfDestino
                           Then Begin
                               DMSAIDA.TItemPV.Edit;
                               DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency-XDescontos)+(((DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency-XDescontos) * XMvaEstado)/100);
                               DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := (DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency * XAlqIntDestinatario)/100;
                               DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
                               If XCSTInterestadual>0 Then
                                   DMSAIDA.TItemPV.FieldByName('COD_CST').AsInteger:=XCSTInterestadual;
                               DMSAIDA.TItemPV.FieldByName('APLICARST').AsString:='1';
                               DMSAIDA.TItemPV.Post;
                           End;
                       End;
                       //NORMAL P NORMAL
                       // - 14/04/2009: alterado para a mercescan
                       If (Fmenu.XTributaEmpresa='NORMAL')
                       Then Begin
                           //Calcula somente fora do estado
                           If XUfOrigem<>XUfDestino
                           Then Begin
                               //////////////////////////////////
                               // FORMULA PARA CALCULO COM MVA //
                               //////////////////////////////////
                               //Base de Cálculo = valor da mercadoria +frete + seguro + impostos e outros encargos transferíveis;
                               //Base de Calculo Substituição = Base de Cálculo + (Base de Cálculo * MVA%)
                               //Valor do Icms OP = Base de Cálculo * Aliquota Interestadua do Estado de Destino
                               //Valor do Icms ST = (Base de Calculo Substituição * Aliquota Interna do estado de Destino) - Valor do Icms OP

                               //Efetua Calculos em variáveis
                                   //BASE//
                                   XAuxBaseIcmsSubstituicao:=0;
                                   //removo o desconto
                                   XAuxBaseIcmsSubstituicao:=(DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency-XDescontos);
                                   //Aplica Mva
                                   XAuxBaseIcmsSubstituicao:=XAuxBaseIcmsSubstituicao+((XAuxBaseIcmsSubstituicao * XMvaEstado)/100);

                                   //VALOR ICMS SUBSTITUIÇÃO
                                   XAuxVlrIcmsSubstituicao := 0;
                                   XAuxIcmsOp := 0;
                                   //Calcula Valor do icms operação propria para descontar do Substituido
                                   XAuxIcmsOp := (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency-xdescontos);
                                   XAuxIcmsOp := (XAuxIcmsOp * XAliqExtDestinatario)/100;
                                   XAuxVlrIcmsSubstituicao := ((XAuxBaseIcmsSubstituicao*XAlqIntDestinatario))/100;
                                   //Desconta do valor de icms substituição o que já foi pago como icms operação propria   EdTotalProdutos.ValueNumeric*XAliqExtDestinatario)/100);
                                   XAuxVlrIcmsSubstituicao := XAuxVlrIcmsSubstituicao-XAuxIcmsOp;
                               //Fim de calculo em variaveis
                               DMSAIDA.TItemPV.Edit;                                															// TOTAL PRODUTOS - DESCONTO + (((TOTAL PRODUTOS - DESCONTO) * XMvaEstado)/100);
                               DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := XAuxBaseIcmsSubstituicao;
                               DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := XAuxVlrIcmsSubstituicao;
                               DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
                               DMSAIDA.TItemPV.FieldByName('COD_CST').AsInteger:=XCSTInterestadual;
                               DMSAIDA.TItemPV.FieldByName('APLICARST').AsString:='1';
                               DMSAIDA.TItemPV.Post;
                           End;
                       End;
                       If XUfOrigem = XUfDestino
                       Then Begin
                           If CalcMediaSubstituicaoTributaria(DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsInteger)=True
                           Then Begin
                               DMSAIDA.TItemPV.Edit;
                               DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := XMediaBaseST * DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency;
                               DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := XMediaValorST * DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency;
                               DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := 0;
                               DMSAIDA.TItemPV.FieldByName('APLICARST').AsString:='0';
                               DMSAIDA.TItemPV.Post;
                           End;
                       End;

                       //Paulo 26/10/2010 - 158: Se o estado for isento ele zera os valores substituidos
                       if XEstadoIsentoST = true then
                       begin
                           DMSAIDA.TItemPV.Edit;
                           DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := 0;
                           DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := 0;
                           DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
                           DMSAIDA.TItemPV.FieldByName('APLICARST').AsString:='0';
                           DMSAIDA.TItemPV.Post;
                       end;
                   End
                   Else Begin
                       //Se item não for de substituição
                       //SIMPLES P SIMPLES ITEM DE SUBSTITUIÇÃO
                       If (Fmenu.XTributaEmpresa='NORMAL') AND (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'ECF')  and (DMMACS.TEmpresa.FieldByName('CONTICMS').AsString<>'1') and(DMESTOQUE.TCST.FieldByName('ISENTA').AsString<>'1')
                       Then Begin
                           DMSAIDA.TItemPV.Edit;
                           DMSAIDA.TItemPV.FieldByName('ALIQICMS').AsCurrency := XAliqIcms;
                           If DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency>0 Then
                               //calculo com redução na base de cálculo
                               DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency := DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency - (((DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency-xdescontos)*DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency)/100)
                           Else
                               DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency := DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency-xdescontos;

                           DMSAIDA.TItemPV.FieldByName('VLRICMS').AsCurrency := (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency * XAliqIcms)/100;
                           DMSAIDA.TItemPV.Post;
                       End;
                   End;
               End;
               DMSAIDA.TItemPV.Next;
           End;
           DMSAIDA.IBT.CommitRetaining;

           //INICIA CONTROL PARA PEDIDO DE VENDA
           If XTipo='ORDEM'
           Then Begin
               DMServ.TPOrd.First;
               While not DMServ.TPOrd.Eof do
               Begin
                   DMESTOQUE.Alx1.Close;
                   DMESTOQUE.Alx1.SQL.Clear;
                   DMESTOQUE.Alx1.SQL.Add('   Select cst.substituicao, estoque.mediabaseicmst, estoque.mediavlricmst, estoque.ipi_vnd, estoque.pmc, estoque.mva, estoque.REDUCBASE, subproduto.CLASSIFICACAO ');
                   DMESTOQUE.Alx1.SQL.Add('   from itprodord ');
                   DMESTOQUE.Alx1.SQL.Add('   left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
                   DMESTOQUE.Alx1.SQL.Add('   left join Subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
                   DMESTOQUE.Alx1.SQL.Add('   left join cst on itprodord.cod_cst = cst.cod_cst ');
                   DMESTOQUE.Alx1.SQL.Add('   where itprodord.cod_itprodord = :Codigo ');
                   DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := XTabItemProd.FieldByName('cod_itprodord').AsInteger;
                   DMESTOQUE.Alx1.SQL.Text;
                   DMESTOQUE.Alx1.Open;

                   If Not DMESTOQUE.Alx1.IsEmpty
                   Then Begin
                       DMServ.TPOrd.Edit;
                       DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := 0;
                       DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := 0;
                       DMServ.TPOrd.Post;
                       If DMESTOQUE.Alx1.FieldByName('SUBSTITUICAO').AsString='1'
                       Then Begin
                           //SIMPLES P NORMAL
                           If (Fmenu.XTributaEmpresa='SIMPLES') And (Fmenu.XTributaCliente='NORMAL')
                           Then Begin
                               //Calcula somente fora do estado
                               If XUfOrigem<>XUfDestino
                               Then Begin
                                   DMServ.TPOrd.Edit;
                                   DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := (DMServ.TPOrd.FieldByName('TOTAL').AsCurrency-DMServ.TPOrd.FieldByName('descnf').AsCurrency)+(((DMServ.TPOrd.FieldByName('TOTAL').AsCurrency-DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XMvaEstado)/100);
                                   DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := (DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency * XAliqInternaEstDest)/100;
                                   DMServ.TPOrd.FieldByName('APLICARST').AsString:='1';
                                   DMServ.TPOrd.Post;
                                End;
                           End;

                           //NORMAL P NORMAL
                           // - 14/04/2009: alterado para a mercescan
                           If (Fmenu.XTributaEmpresa='NORMAL') And (Fmenu.XTributaCliente='NORMAL')
                           Then Begin
                               //Calcula somente fora do estado
                               If XUfOrigem<>XUfDestino
                               Then Begin
                                   DMServ.TPOrd.Edit;
                                   DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := (DMServ.TPOrd.FieldByName('TOTAL').AsCurrency-DMServ.TPOrd.FieldByName('descnf').AsCurrency)+(((DMServ.TPOrd.FieldByName('TOTAL').AsCurrency-DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XMvaEstado)/100);
                                   DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := ((DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency * XAlqIntDestinatario)/100)-DMServ.TPOrd.FieldByName('vlricms').AsCurrency;
                                   DMServ.TPOrd.FieldByName('APLICARST').AsString:='1';
                                   DMServ.TPOrd.Post;
                                End;
                           End;
                           If XUfOrigem = XUfDestino
                           Then Begin
                               If CalcMediaSubstituicaoTributaria(DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsInteger)=True
                               Then Begin
                                   DMServ.TPOrd.Edit;
                                   DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := XMediaBaseST * DMServ.TPOrd.FieldByName('qtd').AsCurrency;
                                   DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := XMediaValorST * DMServ.TPOrd.FieldByName('qtd').AsCurrency;
                                   DMServ.TPOrd.FieldByName('APLICARST').AsString:='0';
                                   DMServ.TPOrd.Post;
                               End
                               Else Begin
                                   DMServ.TPOrd.Edit;
                                   DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := 0;
                                   DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := 0;
                                   DMServ.TPOrd.FieldByName('APLICARST').AsString:='0';
                                   DMServ.TPOrd.Post;
                               End;
                           End;
                           //Quando p produto for de substituição tributária sua base de icms e seu valor de icms devem ser zerados
                           DMServ.TPOrd.Edit;
                           DMServ.TPOrd.FieldByName('ALIQICMS').AsCurrency := 0;
                           DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency := 0;
                           DMServ.TPOrd.FieldByName('VLRICMS').AsCurrency := 0;
                           DMServ.TPOrd.Post;
                       End
                       Else Begin
                           //Se item não for de substituição
                           //SIMPLES P SIMPLES ITEM DE SUBSTITUIÇÃO
                           If (Fmenu.XTributaEmpresa='NORMAL')
                           Then Begin
                               DMServ.TPOrd.Edit;
                               DMServ.TPOrd.FieldByName('ALIQICMS').AsCurrency := XAliqIcms;
                               DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency := DMServ.TPOrd.FieldByName('TOTAL').AsCurrency-DMServ.TPOrd.FieldByName('descnf').AsCurrency;
                               DMServ.TPOrd.FieldByName('VLRICMS').AsCurrency := ((DMServ.TPOrd.FieldByName('TOTAL').AsCurrency-DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XAliqIcms)/100;
                               DMServ.TPOrd.Post;
                           End;
                       End;
                   End;
                   DMServ.TPOrd.Next;
               End;
               DMServ.IBT.CommitRetaining;
           End;
       Except

       End;
    End;
    //Função utilizada para montar os filtros de pedidos e executar o mesmo
    Procedure TFPedidoPadrao.ExecutaLiberaDados;
    Begin
       Try
           XView.Close;
           XView.SQL.Clear;
         	XView.SQL.Add(' Select * from '+XSQLVIEW);
           If XSQLTABELA='PEDVENDA'
           Then Begin
               //ATENÇÃO Toda
               If (FMenu.XRemessaGarantia=True) Then
                   XView.SQL.Add('  WHERE ((COD_LOJA = '+FMenu.LCODLOJA.Caption+') and (TIPO=''GAR'')) ');

               If (FMenu.XSimplesRemessa=True) Then
                   XView.SQL.Add('  WHERE ((COD_LOJA = '+FMenu.LCODLOJA.Caption+') and (TIPO=''REM'')) ');

               If (FMenu.XDevolucao=True)Then
                   XView.SQL.Add('  WHERE ((COD_LOJA = '+FMenu.LCODLOJA.Caption+') and (TIPO=''DEV'')) ');

               //Paulo 19/07/2010: retorna a consulta para trazer os dados de 'outros'
               If (FMenu.XOutrosFisc=True) Then
                   XView.SQL.Add('  WHERE ((COD_LOJA = '+FMenu.LCODLOJA.Caption+') and (TIPO=''OUT'')) ');

           	If (FMenu.XDevolucao=False) and (fmenu.XRemessaGarantia=False) and (fmenu.XSimplesRemessa=False)and(FMenu.XOutrosFisc=False)AND(FMenu.XComplementacao=False) Then
               	XView.SQL.Add('  WHERE ((COD_LOJA = '+FMenu.LCODLOJA.Caption+') and (TIPO=''VND'')) ');//, SITUACAO, NUMPED

               //Paulo 30/11/2010: retorna a consulta para trazer os dados de 'complementares'
               If (FMenu.XComplementacao=True) Then
                   XView.SQL.Add('  WHERE ((COD_LOJA = '+FMenu.LCODLOJA.Caption+') and (TIPO=''COMP'')) ');
           End
           Else Begin
                If (FMenu.XOutrosEnt=False) Then
                   XView.SQL.Add('  WHERE( COD_LOJA = '+FMenu.LCODLOJA.Caption+')and ((NUMDEV<> ''OUT'') or (NUMDEV is NULL)) ');

                LDescTitulo.Caption:='Pedido de compra';
                //Paulo 20/07/2010:para tipo de operação outros
                If (FMenu.XOutrosEnt=True) Then
                begin
                   XView.SQL.Add('  WHERE (COD_LOJA = '+FMenu.LCODLOJA.Caption+') and (NUMDEV=''OUT'') ');
                   LDescTitulo.Caption:='Outras Entradas';
                end;
           End;

           //Verifica demais filtros
           If CbFiltroPedidosFechados.Checked=False Then
               XView.SQL.Add('  and (SITUACAO = ''ABERTO'') ');

           If (EdDtFiltro01.Text<>'  /  /    ') and (EdDtFiltro01.Text<>'  /  /    ')
           Then Begin
               If XSQLTABELA='PEDVENDA' Then
                   XView.SQL.Add(' AND (vwpedv.dtpedven between :dt01 and :dt02) ')
               Else
                   XView.SQL.Add('  and  (vwpedc.DTPEDCOMP between :DT01 and :DT02) ');
               XView.ParamByName('DT01').AsDateTime:=StrToDate(EdDtFiltro01.Text);
               XView.ParamByName('DT02').AsDateTime:=StrToDate(EdDtFiltro02.Text);
           End;
           //Incrementa ordenação
			If XSQLTABELA='PEDVENDA' Then
           	XView.SQL.Add('   order by vwpedv.cod_pedvenda desc, vwpedv.DTPEDVEN DESC, vwpedv.NUMPED ')
           Else
           	XView.SQL.Add('   Order by vwpedc.cod_pedcomp desc, vwpedc.dtpedcomp DESC, vwpedc.numped ');

           XView.SQL.Text;
           XView.Open;
       Except

       End;
    End;

   //Função utilizada para desabilitar painel de cadastro retornando para painel de consulta
   Procedure TFPedidoPadrao.desabilitaPCadastro;
   Begin
       PCadastro.Visible:=False;
       PConsulta.Visible:=True;
       PConsulta.BringToFront;
       BtnFecha.Visible:=True;
   End;
	//Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
   Function TFPedidoPadrao.RetornaNumPed: Integer;
   Begin
       Result:=-1;
       XNumPedido:=-1;
       Try
          //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
          FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
          If XSQLTABELA='PEDVENDA'
          Then Begin
             //Recebe o Código de vendas
             If DMMacs.TEmpresa.FieldByName('proxpedvend').AsString='' Then
                 XNumPedido:=1
             Else
                 XNumPedido:=DMMacs.TEmpresa.FieldByName('proxpedvend').AsInteger;
             //Incrementa o codigo de vendas em Empresa
             DMMACS.TEmpresa.Edit;
             DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString)+1);
             DMMACS.TEmpresa.Post;
          End
          Else Begin
             If DMMacs.TEmpresa.FieldByName('proxpedcomp').AsString='' Then
                 XNumPedido:=1
             Else
                 XNumPedido:=DMMacs.TEmpresa.FieldByName('proxpedcomp').AsInteger;
             DMMACS.TEmpresa.Edit;
             DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString)+1);
             DMMACS.TEmpresa.Post;
          End;
          //Atualiza e confirma os Dados de empresa
          try
          		DMMacs.Transaction.CommitRetaining;
          except
               DMMacs.Transaction.RollbackRetaining;
          end;
          Result:=XNumPedido;
       Except
          Result:=XNumPedido;
       End;
   End;
  //Função Utilizada para gerar a tela do fiscal a partir da tela de consulta
  Function TFPedidoPadrao.AbreFiscal: Boolean;
  Begin
       Result:=True;
       Try
			If XSQLTABELA='PEDCOMPRA' Then
           	AbrirForm(TFFiscalEntradas, FFiscalEntradas, 0)
           Else
           	AbrirForm(TFFiscalSaidas, FFiscalSaidas, 0)
       Except
          Result:=False;
       End
  End;

  //seleciona forma de pagamento e vendedor de acordo com o cliente
  Procedure TFPedidoPadrao.SelectFormPag_Vendedor;
  Begin
           //Insere forma de pagamento para o cliente
           If DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsInteger<>-1
           Then Begin
               If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsString, '')=True
               Then Begin
                   XCodFormPag:=DMFINANC.TFormPag.FieldByname('COD_FORMPAG').AsInteger;
                   EDCODFORMPAG.Text:=DMFINANC.TFormPag.FieldByname('COD_FORMPAG').AsString;
                   EDFORMPAG.Text:=DMFINANC.TFormPag.FieldByname('DESCRICAO').AsString;
             	End;
           End;
           //Insere VENDEDOR para o cliente
           If DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsInteger<>-1
           Then Begin
               If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsString, '')=True
               Then Begin
                   XCodVendedor:=DMPESSOA.VWFuncionario.FieldByname('COD_FUNC').AsInteger;
                   EdCodVend.Text:=DMPESSOA.VWFuncionario.FieldByname('COD_FUNC').AsString;
                   EDNOMEVENDEDOR.Text:=DMPESSOA.VWFuncionario.FieldByname('NOME').AsString;
               end;
           End;
  End;
//Filtra cheques de acordo com tmp
Function TFPedidoPadrao.FiltraCheques: Boolean;
Begin
	//Seleciona os cheques ainda nao movimentados
   DMBANCO.WChequeRec.Close;
   DMBANCO.WChequeRec.SQL.Clear;
   DMBANCO.WChequeRec.SQL.Add(' select * from vwchequerec ');
   DMBANCO.WChequeRec.SQL.Add(' Where (vwchequerec.fech<>'+#39+'S'+#39+') Or (vwchequerec.fech Is Null)');
	DMBANCO.WChequeRec.Open;

   DMBANCO.TAlx.Close;
   DMBANCO.TAlx.SQL.Clear;
   DMBANCO.TAlx.SQL.Add(' select SUM(vwchequerec.valor) AS TOTAL from tmp ');
   DMBANCO.TAlx.SQL.Add(' Left join vwchequerec on tmp.int1 = vwchequerec.cod_chequerec ');
   DMBANCO.TAlx.Open;
   Try
       LTotalChq.Caption:=FormatFloat('0.00', DMBANCO.TAlx.FieldByName('TOTAL').AsCurrency);
   Except
       LTotalChq.Caption:='0,00';
   End;
   LTotMostraCheque.Caption:=LTotalChq.Caption;
   DMBANCO.TAlx.Close;
   DMBANCO.TAlx.SQL.Clear;
   DMBANCO.TAlx.SQL.Add(' select TMP.COD_TMP, vwchequerec.banco, vwchequerec.cod_movbanco, vwchequerec.numcheque, vwchequerec.valor from tmp ');
   DMBANCO.TAlx.SQL.Add(' Left join vwchequerec on tmp.int1 = vwchequerec.cod_chequerec ');
   DMBANCO.TAlx.Open;
End;

procedure TFPedidoPadrao.enviarNFe(tipoEmissao:Integer; codPedido:Integer; tipoPedido:String);
var
   status :Integer;
Begin
  If XView.FieldByName('SITUACAO').AsString<>'FECHADO'
  then begin
        Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O Pedido não está fechado!', '', 1, 1, False, 'a');
        Exit;
  end;

  If tipoPedido = 'PV'
  Then Begin
    If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', XView.FieldByName('COD_PEDVENDA').AsString, '')
    Then Begin
        status := DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger;
    End;
  End
  Else If tipoPedido = 'PC'
  Then Begin
    If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '')=True
    Then Begin
       status := DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger;
    End;
  End;

  if status = 1
  Then Begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Nota Fiscal do pedido já enviada para a Receita!', '', 1, 1, False, 'a');
      Exit;
  end
  Else If status = 3
  Then Begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Nota Fiscal do pedido foi Cancelada!', '', 1, 1, False, 'a');
      Exit;
  end
  Else If status = 4
  Then Begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Nota Fiscal em processo faça uma consulta!', '', 1, 1, False, 'a');
      Exit;
  end;

  If ((status = 5) and (tipoEmissao in [2,4,5]))
  Then Begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Nota Fiscal já emitida em contingência!', '', 1, 1, False, 'a');
      Exit;
  End;

  If tipoEmissao <> 1
  Then Begin
       MessageDlg('Envio de NF-e em contingência segundo Manual de Emissão de NF-e em Contingência:'
       + #13 + '- lavratura de termo circustanciado no livro de Registro de Documentos Fiscais e Termos de Ocorrência - RUDFTO, modelo 6, para registro da contingência;'
       + #13 + 'I - o motivo da entrada em contingência;'
       + #13 + 'II - a data, hora com minutos e segundos do seu início e seu término;'
       + #13 + 'III - a numeração e série da primeira e da última NF-e geradas neste período;'
       + #13 + 'IV - identificar a modalidade de contingência utilizada.', mtInformation, [mbOk], 0);
  End;

  If Mensagem('   A T E N Ç Ã O   ','Deseja enviar Nota Fiscal do pedido '+XView.FieldByName('NUMPED').AsString+'?','',2,3,false,'A')=3
  Then Begin
      Exit;
  end;

  FMenu.XNFe:=1;
  try
      FMzrNfe := tFMzrNfe.Create(FMzrNfe);
//      FMzrNfe.SetInFiscal(XCod_Pedido, XCod_Pessoa, XTipo, 'EMITIR', 1, LCfop.Caption, LNatOp.Caption, XImpNfeFormPagamento, EdNumeroFiscal.ValueInteger, StrToDate(EdDtEmissao.Text), LCodIbge.caption, LMunicipio.Caption, LUF.Caption, EdBaseICMS.ValueNumeric, EdVlrIcms.ValueNumeric, EdBaseICMSST.ValueNumeric, EdVlrIcmsST.ValueNumeric, EdTotalProdutos.ValueNumeric, EdVlrFrete.ValueNumeric, EdVlrSeguro.ValueNumeric, 0, EdOutrasDespesas.ValueNumeric, EdTotalNotaFiscal.ValueNumeric);
      FMzrNfe.ShowModal;
  Finally
      FMzrNfe := nil;
  end;

	ExecutaLiberaDados;
End;

//FUNÇÃO QUE EFETUA CALCULO DE COMISSÃO BASEADO NO VALOR TOTAL DO PEDIDO E NÃO NA SOMA DO TOTAL DE PRODUTOS
Function TFPedidoPadrao.CalcComisTotVend: Boolean;
Begin
   If XSQLTABELA='PEDCOMPRA' Then
   	Exit;
   //VERIFICA SE EXISTE ALGUM COMISSIONADO PARA O PEDIDO
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add(' Select * from comissao ');
   DMFINANC.TAlx.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
	DMFINANC.TAlx.ParamByName('GERADOR').AsString:='PEDVENDA';
	DMFINANC.TAlx.ParamByName('CODGERADOR').AsString:=XCodPedido;
   DMFINANC.TAlx.Open;

   DMFINANC.TSlctComis.Close;
   DMFINANC.TSlctComis.SQL.Clear;
   DMFINANC.TSlctComis.SQL.Add(' Select SUM(comissao.perprod) as PERPROD, SUM(comissao.vlrcomisprod) AS COMISPROD, ');
   DMFINANC.TSlctComis.SQL.Add('        SUM(comissao.perserv) as PERSERV, SUM(comissao.vlrcomisserv) AS COMISSERV ');
   DMFINANC.TSlctComis.SQL.Add(' from comissao ');
   DMFINANC.TSlctComis.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
	DMFINANC.TSlctComis.ParamByName('GERADOR').AsString:='PEDVENDA';
	DMFINANC.TSlctComis.ParamByName('CODGERADOR').AsString:=XCodPedido;
   DMFINANC.TSlctComis.Open;

   // qdo estah inserindo produtos, o pedido de venda não foi fechado ainda para gerar registro n tabela comissão. Por isso eh feito essa verificação pq se tiver valendo zero eh pq o pedido não foi fechado
   If DMFINANC.TSlctComis.FieldByName('COMISPROD').AsCurrency <> 0 Then
       XVLRCOMIS:=DMFINANC.TSlctComis.FieldByName('COMISPROD').AsCurrency;

   If (DMFINANC.TAlx.IsEmpty)
   Then Begin
   	//se a tabela estiver vazia significa que não existe comissionado
		If XVLRTOTAL<>0
   	Then Begin
           // buscar dadoos da tabela pedvenda
           FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XCodPedido,'');

           //FILTRA FORMA DE PAGAMENTO DE ACORDO COM ORÇAMENTO
           FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMSAIDA.TPedV.FieldByNAme('COD_FORMPAG').AsString, '');

           // ou seja, soh passa por esses processos se no orcamento foi informado um vendedor
           If XCodVendedor > 0
           Then Begin
               If (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='0') and (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
               Then begin
  		            If FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(XCodVendedor), '')=True
   	            Then Begin
   		            Try
       		            DMPESSOA.TFunCargo.Last;
       		            //efetua cargo em cima da forma de pagamentio
       		            If EDFORMPAG.Text='À VISTA' Then
                               //XVLRCOMIS:=(EdValorPed.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100
                               XVLRCOMIS:=(EdValorPed.ValueNumeric*XEDCOMISS)/100
                           Else
       			            //XVLRCOMIS:=(EdValorPed.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                               XVLRCOMIS:=(EdValorPed.ValueNumeric*XEDCOMISS)/100;

       	            Except
				            Mensagem('A T E N Ç Ã O', 'OCORREU UM PROBLEMA AO GERAR COMISSÃO. GUARDE O NUMERO DO PEDIDO E INFORME O OCORRIDO À ASSESSORIA TÉCNICA!', 'O vendedor informado no pedido não foi encontrado em banco de dados, desta forma não pode-se saber sua comissão. Esta será gravada com valor nulo, este ocorrido deve ser informado ao suporte técnico, para ser prontamente corrigido.', 1, 1, True, 'a');
      			            XVLRCOMIS:=0;
       	            End;
   	            End
   	            Else Begin
       	            If Fmenu.LCODUSUARIO.Caption<>'111522'
                       Then Begin
				            Mensagem('A T E N Ç Ã O', 'OCORREU UM PROBLEMA AO GERAR COMISSÃO. GUARDE O NUMERO DO PEDIDO E INFORME O OCORRIDO À ASSESSORIA TÉCNICA!', 'O vendedor informado no pedido não foi encontrado em banco de dados, desta forma não pode-se saber sua comissão. Esta será gravada com valor nulo, este ocorrido deve ser informado ao suporte técnico, para ser prontamente corrigido.', 1, 1, True, 'a');
                           XVLRCOMIS:=0;
                       End;
   	            End;
               End
               Else Begin
                   DMSAIDA.TAlx.Close;
                   DMSAIDA.TAlx.SQL.Clear;
                   DMSAIDA.TAlx.SQL.Add('select sum(itenspedven.comissao) as TOTAL_COMISSAO from itenspedven');
                   DMSAIDA.TAlx.SQL.Add('where itenspedven.cod_pedven = :codigo');
                   DMSAIDA.TAlx.ParamByName('codigo').AsString := XCodPedido;
                   DMSAIDA.TAlx.Open;

                   LVlrComissao.Caption:='Vlr. Comissão..: ' +FormatFloat('###,##0.00',DMSAIDA.TAlx.FieldByName('TOTAL_COMISSAO').AsCurrency);
                   XVLRCOMIS := DMSAIDA.TAlx.FieldByName('TOTAL_COMISSAO').AsCurrency;
                   Exit;
               End;
           End;
       End
       Else Begin
           XVLRCOMIS:=0;
       End;
   End;
   If XEDCOMISSAOPED>0
   Then Begin
    	LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', (EdValorPed.ValueNumeric*XEDCOMISSAOPED)/100);
		XVLRCOMIS:=(EdValorPed.ValueNumeric*XEDCOMISSAOPED)/100;
   End;
	LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', XVLRCOMIS);
End;

//Procedure Utilizada para verificar se o pedido se tornará caderneta para o cliente
Procedure TFPedidoPadrao.SelectCader;
Begin
	//libera compenentes p/ procurar forma de pagamento
   EDCODFORMPAG.Enabled:=True;
   BtnProcFormPag.Enabled:=True;
 	If EDFORMPAG.Text='CADERNETA'
   Then Begin
		//PASSA SQL PARA VERIFICAR SE ESTE CLIENTE JÁ POSSUI CADERNETA
   	DMSAIDA.WPedV.Close;
   	DMSAIDA.WPedV.SQL.Clear;
   	DMSAIDA.WPedV.SQL.Add('SELECT * from vwpedv where vwpedv.formpag='+#39+'CADERNETA'+#39+' AND vwpedv.cod_cliente=:CODCLIENTE');
   	DMSAIDA.WPedV.ParamByName('CODCLIENTE').AsInteger:=XCodPessoa;
       DMSAIDA.WPedV.Open;
       If Not DMSAIDA.WPedV.IsEmpty
       Then Begin// Se o cliente já possuí caderneta aberta, cancela este pedido e reabre no caderneta
			BtnCancelar.Click;// cancela

			//PASSA SQL PARA SELECIONAR NOVAMENTE A VENDA QUE CONTEM CADERNETA
   		DMSAIDA.WPedV.Close;
   		DMSAIDA.WPedV.SQL.Clear;
   		DMSAIDA.WPedV.SQL.Add('SELECT * from vwpedv where vwpedv.formpag='+#39+'CADERNETA'+#39+' AND vwpedv.cod_cliente=:CODCLIENTE');
   		DMSAIDA.WPedV.ParamByName('CODCLIENTE').AsInteger:=XCodPessoa;
       	DMSAIDA.WPedV.Open;

           BtnConsultar.Click;
			//bloquea compenentes p/ procurar forma de pagamento
           EDCODFORMPAG.Enabled:=False;
           BtnProcFormPag.Enabled:=False;
       End;
   End;
End;

//Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada COMPRA
Function TFPedidoPadrao.CancelLanPedc(CodPedido: String):Boolean;
Begin
   Try
       //filtra loja para capturar as configurações
       FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       //filtra DADOS DA VIEW
       DMENTRADA.WPedc.Close;
       DMENTRADA.WPedc.SQL.Clear;
       DMENTRADA.WPedc.SQL.Add('SELECT * FROM VWPEDC WHERE COD_PEDCOMP=:CODPEDIDO');
       DMENTRADA.WPedc.ParamByName('CODPEDIDO').AsString:=CodPedido;
       DMENTRADA.WPedc.Open;
       //filtra loja para capturar as configurações
       FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', CodPedido, '');
       //filtra o forncedor do pedido em vwfonecedor
       FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', CodPedido, '');

       //ANTES DE CONTINUAR O SISTEMA VERIFICA SE EXISTEM PARCELAMENTOS DESTE PEDIDO JÁ BAIXADO
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' select count(parcelacp.cod_parcelacp) AS CONTAGEM from ctapagar ');
       DMMACS.TALX.SQL.Add(' left join parcelacp on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar ');
       DMMACS.TALX.SQL.Add(' Where  ((TIPOGERADOR = '+#39+'PEDCOMPRA'+#39+') AND (COD_GERADOR='+CodPedido+')) and (parcelacp.fech=''S'')');
       DMMACS.TALX.Open;
       If DMMACS.TALX.FieldByName('CONTAGEM').AsInteger>0
       Then Begin
       	//O Sistema encontrou parcelas fechadas no pedido
           If Mensagem('Confirmação', 'O Sistema encontrou uma parcela deste pedido já baixada. Você deseja realmente cancelar o fechamento deste pedido?','',2,3,false,'C')=3
           Then Begin
               Result:=False;
               Exit;
           End;
       End;

       //VERIRIFA SE A COMPRA FOI À VISTA
       If DMENTRADA.WPedc.FieldByName('FORMPAG').AsString='À VISTA'
       Then Begin
           //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
           DMCAIXA.TLanCaixa.Close;
           DMCAIXA.TLanCaixa.SQL.Clear;
           DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR='+#39+'PEDCOMPRA'+#39+') AND (COD_GERADOR=:CODPEDIDO)');
           DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsString:=CodPedido;
           DMCAIXA.TLanCaixa.Open;
           If Not DMCAIXA.TLanCaixa.IsEmpty
           Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
               If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+' For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDC', StrToInt(CodPedido), 'Carteira', 'E', 'EST'+DMENTRADA.TPedC.FieldByName('NUMPED').AsString, Date(), '1')= True Then
                    MDO.Transac.CommitRetaining
                   //DMCAIXA.IBT.CommitRetaining
               Else
                   Result:=False;
           End;
           //filtra se tem alguma movimentação bancaria
           If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'PEDCOMPRA'+#39+') AND (COD_GERADOR='+DMENTRADA.WPedC.FieldByName('COD_PEDCOMP').AsString+')')=True
           Then Begin//se foi encontrado alguma movimentação, esta é apagada
               //LanBanco(DMBANCO.TMovBanco.FieldByName('COD_CTACOR').AsInteger, DMMACS.TLoja.FieldByName('PLNCTA_ENTCXCORR').AsInteger, 'Cancel. fech. Ped. '+DMENTRADA.TPedC.FieldByName('NUMPED').AsString+'Parc. '+ DMCONTA.TParcCP.FieldByName('NUMPARC').AsString+' For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMBANCO.TMovBanco.FieldByName('valor').AsCurrency, 'TPEDC', StrToInt(CodPedido), 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'E', DateToStr(Date), '', DMBANCO.TMovBanco.FieldByName('DTLANC').AsString, '1', DMBANCO.TMovBanco.FieldByName('DTREF').AsString)
               DMBANCO.TMovBanco.Delete;
               DMBANCO.TMovBanco.ApplyUpdates;
           end
           Else
               Result:=False;

       End
       Else Begin
            //SE A VENDA NÃO FOI À VISTA
            //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
            If FiltraTabela(DMCONTA.TCtaP, 'CTAPAGAR', 'COD_CTAPAGAR', '', ' (TIPOGERADOR = '+#39+'PEDCOMPRA'+#39+') AND (COD_GERADOR='+CodPedido+')')=True
            Then Begin//se foi encontrado alguma conta
               //FILTRA PARCELAS
               If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_CTAPAGAR', DMCONTA.TCtaP.FieldByName('COD_CTAPAGAR').AsString, '')=True
               Then Begin//se foi encontrado alguma conta
                   //PARA CADA PARCELA VERIFICA SE ESTA FECHADA
                   DMCONTA.TParcCP.First;
                   While not DMCONTA.TParcCP.Eof do
                   Begin
                       If DMCONTA.TParcCP.FieldByName('FECH').AsString='S'
                       Then Begin
                           //SE ESTIVER FECHADA VERIFICA SE FOI REALIZADA MOVIMENTAÇÃO EM BANCO
                           If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTPCARTAO'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsString+')')=True
                           Then //se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
                                LanBanco(DMBANCO.TMovBanco.FieldByName('COD_CTACOR').AsInteger, DMMACS.TLoja.FieldByName('PLNCTA_ENTCXCORR').AsInteger, 'Cancel. fech. Ped. '+DMENTRADA.TPedC.FieldByName('NUMPED').AsString+'Parc. '+ DMCONTA.TParcCP.FieldByName('NUMPARC').AsString+' For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMBANCO.TMovBanco.FieldByName('valor').AsCurrency, 'TPEDC', StrToInt(CodPedido), 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'E', DateToStr(Date), '', DMBANCO.TMovBanco.FieldByName('DTLANC').AsString, '1', DMBANCO.TMovBanco.FieldByName('DTREF').AsString)
                           Else
                               Result:=False;
                           //SE ESTIVER FECHADA VERIFICA SE FOI REALIZADA MOVIMENTAÇÃO EM CX
                           If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', ' (TIPOGERADOR='+#39+'CTAP'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsString+')')=True
                           Then Begin//se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
                               If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_ENTCXCORR').AsInteger, 'Cancel. fech. Ped. '+DMENTRADA.TPedC.FieldByName('NUMPED').AsString+'Parc. '+ DMCONTA.TParcCP.FieldByName('NUMPARC').AsString+' For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDC', StrToInt(CodPedido), 'Carteira', 'E', 'EST'+DMENTRADA.TPedC.FieldByName('NUMPED').AsString, Date(), '1')=True Then
                                    MDO.Transac.CommitRetaining
                                   //DMCAIXA.IBT.CommitRetaining
                               Else
                                   Result:=False;
                           End;
                       End;

                       // apagando a movimentação bancaria de cartão por cancelar o pedido de compra
                       If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_GERADOR','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTPCARTAO' + #39 + ')')= TRUE
                       Then Begin
                           DMBANCO.TMovBanco.Delete;
                           DMBANCO.TMovBanco.ApplyUpdates;
                       End;

                       // apagando a movimentação bancaria de cheque por cancelar o pedido de compra
                       If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_GERADOR','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTAPCH' + #39 + ')')= TRUE
                       Then Begin
                           DMBANCO.TMovBanco.Delete;
                           DMBANCO.TMovBanco.ApplyUpdates;
                       End;

                       DMCONTA.TParcCP.Delete;

                   End;
                   DMCONTA.TParcCP.ApplyUpdates;
               End;
               DMCONTA.TCtaP.Delete;
               DMCONTA.TCtaP.ApplyUpdates;
               DMCONTA.IBT.CommitRetaining;
            End;
       End;
       Result := true;
   Except
       Result := false;
   End;
End;

//Função utilizada para baixar contas do pedido p/ poder haver devolução total
Function TFPedidoPadrao.CancelaFinac(CodPedido: String):Boolean;
Begin
	//Inicia resultado como falso
   Result:=True;

	//filtra loja para capturar as configurações
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//filtra DADOS DA VIEW
	DMSAIDA.WPedV.Close;
   DMSAIDA.WPedV.SQL.Clear;
   DMSAIDA.WPedV.SQL.Add('SELECT * FROM VWPEDV WHERE COD_PEDVENDA=:CODPEDIDO');
   DMSAIDA.WPedV.ParamByName('CODPEDIDO').AsString:=CodPedido;
   DMSAIDA.WPedV.Open;
	//filtra loja para capturar as configurações
   FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', CodPedido, '');

   //Apaga Lancamentos de Comissão
   Try
   	DMFINANC.TComis.Close;
   	DMFINANC.TComis.sql.Clear;
   	DMFINANC.TComis.SQL.Add('Delete from comissao where  (comissao.cod_gerador=:CODGERADOR) And (comissao.gerador='+#39+'PEDVENDA'+#39+')');
		DMFINANC.TComis.ParamByName('CODGERADOR').AsString:=CodPedido;
   	DMFINANC.TComis.ExecSQL;
       DMFINANC.Transaction.CommitRetaining;
   Except
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Ocorreu um problema ao tentar apagar as comissões referentes ao pedido! As informação serão mantidas', '', 1, 1, False, 'a');
       Result:=False;
       Exit;
   End;
   //VERIRIFA SE A VENDA N FOI À VISTA
   If DMSAIDA.WPedV.FieldByName('FORMPAG').AsString<>'À VISTA'
   Then Begin
        //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
		 If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'PEDVENDA'+#39+') AND (COD_GERADOR='+CodPedido+')')=True
        Then Begin//se foi encontrado alguma conta
        	//FILTRA PARCELAS
		 	If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
        	Then Begin//se foi encontrado alguma conta
				//PARA CADA PARCELA VERIFICA SE ESTA FECHADA
               DMCONTA.TParcCR.First;
               While not DMCONTA.TParcCR.Eof do
               Begin
               	If DMCONTA.TParcCR.FieldByName('FECH').AsString<>'S'
                   Then Begin
                   	//SE DEVE SER MOVIMENTADO EM BANCO
                   	If DMCONTA.TParcCR.FieldByName('COBRANCA').AsString='Cheque'
        				Then Begin//se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
                           If LanBanco(DMCONTA.TCtaR.FieldByName('COD_PLNCTA').AsInteger, DMMACS.TLoja.FieldByName('PLNCTA_SAICXCORR').AsInteger, 'Devol. Venda: '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+'Parc. '+ DMCONTA.TParcCR.FieldByName('NUMPARC').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCONTA.TParcCR.FieldByName('valor').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S', DateToStr(Date), '', DMBANCO.TMovBanco.FieldByName('valor').AsString, '1', DMBANCO.TMovBanco.FieldByName('DTREF').AsString)=True
                           Then Begin
                           	Result:=True;
                				DMCONTA.TParcCP.edit;
                				DMCONTA.TParcCP.FieldByName('DTDEBITO').AsDateTime:=Date();
                				DMCONTA.TParcCP.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCP.FieldByName('VALOR').AsCurrency;
                				DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                				DMCONTA.TParcCP.Post;
                           End
           				Else Begin
           					Result:=False;
                           End;
                       End;
                   	//SE DEVE SER MOVIMENTADO EM CAIXA
                   	If DMCONTA.TParcCR.FieldByName('COBRANCA').AsString='Carteira'
        				Then Begin//se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
           				If LanCaixa(-1, DateToStr(Date()), DMCONTA.TCtaR.FieldByName('COD_PLNCTA').AsInteger, 'Devol. Venda: '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+'Parc. '+ DMCONTA.TParcCR.FieldByName('NUMPARC').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'E', 'DEV'+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1')=True
                           Then Begin
                           	Result:=True;
                               MDO.Transac.CommitRetaining;
                				DMCONTA.TParcCR.edit;
                				DMCONTA.TParcCR.FieldByName('DTDEBITO').AsDateTime:=Date();
                				DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
                				DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                				DMCONTA.TParcCR.Post;
                           End
           				Else Begin
           					Result:=False;
                               MDO.Transac.RollbackRetaining;
                           End;
                       End;
                   End;
                   DMCONTA.TParcCR.Next;
               End;
           End;
           DMCONTA.IBT.CommitRetaining;
        End;
   End;
End;

//Função utilizada para baixar contas do pedido p/ poder haver devolução total
Function TFPedidoPadrao.CancelaFinacParc(CodPedido: String; ValorCancelado: Real):Boolean;
Begin
	//Inicia resultado como falso
   Result:=True;

	//filtra loja para capturar as configurações
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//filtra DADOS DA VIEW
	DMSAIDA.WPedV.Close;
   DMSAIDA.WPedV.SQL.Clear;
   DMSAIDA.WPedV.SQL.Add('SELECT * FROM VWPEDV WHERE COD_PEDVENDA=:CODPEDIDO');
   DMSAIDA.WPedV.ParamByName('CODPEDIDO').AsString:=CodPedido;
   DMSAIDA.WPedV.Open;
	//filtra loja para capturar as configurações
   FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', CodPedido, '');
   //VERIRIFA SE A VENDA N FOI À VISTA
   If DMSAIDA.WPedV.FieldByName('FORMPAG').AsString<>'À VISTA'
   Then Begin
        //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
		 If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'PEDVENDA'+#39+') AND (COD_GERADOR='+CodPedido+')')=True
        Then Begin//se foi encontrado alguma conta
        	//Verifica a qtd de parcelas ainda em aberto

//			 select count(parcelacr.cod_parcelacr) from parcelacr  Where parcelacr.cod_ctareceber=:COD_CTA
        	//FILTRA PARCELAS
		 	If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
        	Then Begin//se foi encontrado alguma conta
				//PARA CADA PARCELA VERIFICA SE ESTA FECHADA
               DMCONTA.TParcCR.First;
               While not DMCONTA.TParcCR.Eof do
               Begin
               	If DMCONTA.TParcCR.FieldByName('FECH').AsString<>'S'
                   Then Begin
                   	//SE DEVE SER MOVIMENTADO EM BANCO
                   	If DMCONTA.TParcCR.FieldByName('COBRANCA').AsString='Cheque'
        				Then Begin//se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
                           If LanBanco(DMCONTA.TCtaR.FieldByName('COD_PLNCTA').AsInteger, DMMACS.TLoja.FieldByName('PLNCTA_SAICXCORR').AsInteger, 'Devol. Venda: '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+'Parc. '+ DMCONTA.TParcCR.FieldByName('NUMPARC').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCONTA.TParcCR.FieldByName('valor').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S', DateToStr(Date), '', DMBANCO.TMovBanco.FieldByName('valor').AsString, '1', DMBANCO.TMovBanco.FieldByName('DTREF').AsString)=True
                           Then Begin
                           	Result:=True;
                				DMCONTA.TParcCP.edit;
                				DMCONTA.TParcCP.FieldByName('DTDEBITO').AsDateTime:=Date();
                				DMCONTA.TParcCP.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCP.FieldByName('VALOR').AsCurrency;
                				DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                				DMCONTA.TParcCP.Post;
                           End
           				Else Begin
           					Result:=False;
                           End;
                       End;
                   	//SE DEVE SER MOVIMENTADO EM CAIXA
                   	If DMCONTA.TParcCR.FieldByName('COBRANCA').AsString='Carteira'
        				Then Begin//se foi encontrado alguma MOVIMENTAÇÃO REALIZA UM ESTORNO
           				If LanCaixa(-1, DateToStr(Date()), DMCONTA.TCtaR.FieldByName('COD_PLNCTA').AsInteger, 'Devol. Venda: '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+'Parc. '+ DMCONTA.TParcCR.FieldByName('NUMPARC').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'E', 'DEV'+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1')=True
                           Then Begin
                           	Result:=True;
                               MDO.Transac.CommitRetaining;
                				DMCONTA.TParcCR.edit;
                				DMCONTA.TParcCR.FieldByName('DTDEBITO').AsDateTime:=Date();
                				DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
                				DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                				DMCONTA.TParcCR.Post;
                           End
           				Else Begin
           					Result:=False;
                               MDO.Transac.RollbackRetaining
                           End;
                       End;
                   End;
                   DMCONTA.TParcCR.Next;
               End;
           End;
           DMCONTA.IBT.CommitRetaining;
        End;
   End;
End;

//Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada venda
Function TFPedidoPadrao.CancelLanPed(CodPedido: String):Boolean;
Begin
	//Inicia resultado como falso
   Result:=True;

	 //filtra loja para capturar as configurações
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	 //filtra DADOS DA VIEW
	 DMSAIDA.WPedV.Close;
   DMSAIDA.WPedV.SQL.Clear;
   DMSAIDA.WPedV.SQL.Add('SELECT * FROM VWPEDV WHERE COD_PEDVENDA=:CODPEDIDO');
   DMSAIDA.WPedV.ParamByName('CODPEDIDO').AsString:=CodPedido;
   DMSAIDA.WPedV.Open;
	 //filtra loja para capturar as configurações
   FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', CodPedido, '');

   //ANTES DE CONTINUAR O SISTEMA VERIFICA SE EXISTEM PARCELAMENTOS DESTE PEDIDO JÁ BAIXADO
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select count(parcelacr.cod_parcelacr) AS CONTAGEM from ctareceber ');
   DMMACS.TALX.SQL.Add(' left join parcelacr on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
   DMMACS.TALX.SQL.Add(' Where  ((TIPOGERADOR = '+#39+'PEDVENDA'+#39+') AND (COD_GERADOR='+CodPedido+')) and (parcelacr.fech=''S'')');
   DMMACS.TALX.Open;
   If DMMACS.TALX.FieldByName('CONTAGEM').AsInteger>0
   Then Begin
       //O Sistema encontrou parcelas fechadas no pedido
       If Mensagem('Confirmação', 'O Sistema encontrou uma parcela deste pedido já baixada. Você deseja realmente cancelar o fechamento deste pedido?','',2,3,false,'C')=3
       Then Begin
           Result:=False;
           Exit;
       End;
   End;
   //Apaga Lancamentos de Comissão
   Try
   	DMFINANC.TComis.Close;
   	DMFINANC.TComis.sql.Clear;
   	DMFINANC.TComis.SQL.Add('Delete from comissao where  (comissao.cod_gerador=:CODGERADOR) And (comissao.gerador='+#39+'PEDVENDA'+#39+')');
		DMFINANC.TComis.ParamByName('CODGERADOR').AsString:=CodPedido;
   	DMFINANC.TComis.ExecSQL;
    DMFINANC.Transaction.CommitRetaining;
   Except
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Ocorreu um problema ao tentar apagar as comissões referentes ao pedido! As informação serão mantidas', '', 1, 1, False, 'a');
    Result:=False;
    Exit;
   End;

   //VERIRIFA SE A VENDA FOI À VISTA
   If DMSAIDA.WPedV.FieldByName('FORMPAG').AsString='À VISTA'
   Then Begin
   	   //APAGA LANÇAMENTO DE CREDITO
       DMCAIXA.TAlx.Close;
       DMCAIXA.TAlx.SQL.Clear;
       DMCAIXA.TAlx.SQL.Add(' delete from credito Where (credito.tipogerador=' +#39 + 'PEDVENDA' + #39 + ') And (credito.cod_gerador=:CODGERADOR) ');
       DMCAIXA.TAlx.ParamByName('CODGERADOR').AsString:=DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString;
   	   DMCAIXA.TAlx.ExecSQL;

       //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
       DMCAIXA.TLanCaixa.Close;
       DMCAIXA.TLanCaixa.SQL.Clear;
       DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR='+#39+'PEDVENDA'+#39+') AND (COD_GERADOR=:CODPEDIDO)');
       DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsString:=CodPedido;
       DMCAIXA.TLanCaixa.Open;

       If Not (DMCAIXA.TLanCaixa.IsEmpty) and (DMSAIDA.WPedV.FieldByName('COBRANCA').AsString = 'Carteira' )
       Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
           If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1')= True
           Then Begin
               //DMCAIXA.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;
               Result := true;
           End
           Else Begin
               Result:=False;
               Exit;
           End;
       END;

       //Paulo 12/09/2011: Cancela lancaixa para cartão
       If Not (DMCAIXA.TLanCaixa.IsEmpty) and (DMSAIDA.WPedV.FieldByName('COBRANCA').AsString = 'Cartão' )
       Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
           If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Cartão', 'S', 'EST'+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1')= True
           Then Begin
               //DMCAIXA.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;
               Result := true;
           End
           Else Begin
               Result:=False;
               Exit;
           End;
       END;

      //CONTROLE QUE DELETA TODA A MOVIMENTAÇÃO QUANDO UM PEDIDO É FECHADO COM CHEQUE E É À VISTA.

       FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMSAIDA.WPedV.FieldByname('COD_PEDVENDA').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'PEDVENDA' + #39 + ')');

       //seleciona cheques para serem apagados
       DMCAIXA.TAlx.close;
       DMCAIXA.TAlx.SQL.Clear;
       DMCAIXA.TAlx.SQL.Add('select * from chequerec');
       DMCAIXA.TAlx.SQL.Add('where chequerec.cod_movbanco = :CODMOV');
       DMCAIXA.TAlx.ParamByName('CODMOV').AsString:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
       DMCAIXA.TAlx.Open;

       if not DMCAIXA.TAlx.IsEmpty
       then begin
          //seleciona lançamentos de caixa para serem deletados
          DMCAIXA.TLanCaixa.Close;
          DMCAIXA.TLanCaixa.SQL.Clear;
          DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
          DMCAIXA.TLanCaixa.SQL.Add('where ((lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =:CODLANCA))');
          DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
          DMCAIXA.TLanCaixa.Open;
          DMCAIXA.TLanCaixa.First;

          //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
          IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMSAIDA.WPedV.FieldByname('COD_PEDVENDA').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
          THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
              LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1');
          end;
          MDO.Transac.CommitRetaining;
          //DMCAIXA.IBT.CommitRetaining;


          //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
          If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
          then begin
              while not DMCAIXA.TLanCaixa.Eof do
              begin
                DMCAIXA.TLanCaixa.Delete;
                DMCAIXA.TLanCaixa.ApplyUpdates;
              end;
          end;
          DMCAIXA.IBT.CommitRetaining;


          //apaga cheques ligados ao pedido de venda // - 06/05/2009: estava abaixo do codigo para deletar movimentações bancarias.. como deletava chegava nesse laço sem o codigo movbanco
          if not DMCAIXA.TAlx.IsEmpty
          then begin
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
            DMBANCO.TChequeRec.ParamByName('CODIGO').AsString:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
            DMBANCO.TChequeRec.ExecSQL;
            DMBANCO.IBT.CommitRetaining;

            DMBANCO.TChequeRec.Open;
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('select * from chequerec');
            DMBANCO.TChequeRec.Open;
          end;


          //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
          If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCAIXA.TAlx.FieldByname('COD_CHEQUEREC').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
          Then Begin
            DMBANCO.TMovBanco.Delete;
            DMBANCO.TMovBanco.ApplyUpdates;
          End;
          DMBANCO.IBT.CommitRetaining;


          //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
          If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMSAIDA.WPedV.FieldByname('COD_PEDVENDA').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'PEDVENDA' + #39 + ')')= true
          Then Begin
             DMBANCO.TMovBanco.Delete;
             DMBANCO.TMovBanco.ApplyUpdates;
          End;
          DMBANCO.IBT.CommitRetaining;


       end;

       // se o pagamento for a vista e a cartão, o registro do movbanco eh deletado
       If ((DMSAIDA.WPedV.FieldByName('COBRANCA').AsString = 'Cartão') or (DMSAIDA.WPedV.FieldByName('COBRANCA').AsString = 'Banco')) and (DMSAIDA.WPedV.FieldByName('FORMPAG').AsString = 'À VISTA')
       Then Begin
           If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMSAIDA.WPedV.FieldByname('COD_PEDVENDA').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'PEDVENDA' + #39 + ')')= true
           Then Begin
               DMBANCO.TMovBanco.Delete;
               DMBANCO.TMovBanco.ApplyUpdates;
           End;
           DMBANCO.IBT.CommitRetaining;
          
       End;

   End
   Else Begin
        //SE A VENDA NÃO FOI À VISTA

        //FILTRA PARA VERIFICAR SE EXISTEM LANÇAMENTOS BANCARIOS COM FORMA DE COBRANÇA: CARTÃO
       if ((DMSAIDA.WPedV.FieldByName('COBRANCA').AsString = 'Cartão') or (DMSAIDA.WPedV.FieldByName('COBRANCA').AsString = 'Banco')) and (DMSAIDA.WPedV.FieldByName('FORMPAG').AsString <> 'À VISTA')
       then begin  
               DMBANCO.TAlx.Close;
               DMBANCO.TAlx.SQL.Clear;
               DMBANCO.TAlx.SQL.Add('select parcelacr.cod_parcelacr from parcelacr');
               DMBANCO.TAlx.SQL.Add('left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
               DMBANCO.TAlx.SQL.Add('where ctareceber.cod_gerador = :CODIGO');
               DMBANCO.TAlx.ParamByName('CODIGO').AsString:=DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString;
               DMBANCO.TAlx.Open;
               DMBANCO.TAlx.First;
              If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', 'COD_GERADOR = '+CodPedido)=True
              Then Begin//se foi encontrado alguma conta
                If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
                Then Begin
                  While not DMBANCO.TAlx.Eof do
                  Begin
                     Try
                      DMBANCO.TMovBanco.Close;      // deleta movimentação bancária correspondente
                      DMBANCO.TMovBanco.SQL.Clear;
                      DMBANCO.TMovBanco.SQL.Add('delete from movbanco where movbanco.cod_gerador = :CODIGO AND (TIPOGERADOR IN ( ' + #39 + 'CTRCARTAO' + #39 + ', ' + #39 + 'CTRBANCO' + #39 + ', ' + #39 + 'CARTÃO' + #39 + '))' );
                      DMBANCO.TMovBanco.ParamByName('CODIGO').AsString := DMBANCO.TAlx.FieldByname('COD_PARCELACR').AsString;
                      DMBANCO.TMovBanco.ExecSQL;
                     Except
                     End;

                     Try
                      DMBANCO.TMovBanco.Close;    // deleta parcela a receber correspondente
                      DMBANCO.TMovBanco.SQL.Clear;
                      DMBANCO.TMovBanco.SQL.Add('delete from parcelacr where parcelacr.cod_parcelacr = :CODIGO');
                      DMBANCO.TMovBanco.ParamByName('CODIGO').AsInteger := DMBANCO.TAlx.FieldByname('COD_PARCELACR').AsInteger;
                      DMBANCO.TMovBanco.ExecSQL;
                     Except

                     End;
                     DMBANCO.TAlx.Next;
                  End;

                  Try
                    DMBANCO.TMovBanco.Close;   // deleta conta a receber correspondente
                    DMBANCO.TMovBanco.SQL.Clear;
                    DMBANCO.TMovBanco.SQL.Add('delete from ctareceber where ctareceber.COD_CTARECEBER = :CODIGO ');
                    DMBANCO.TMovBanco.ParamByName('CODIGO').AsInteger := DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsInteger;
                    DMBANCO.TMovBanco.ExecSQL;
                  Except
                  End;

                  Try
                       DMCONTA.IBT.CommitRetaining;
                       DMBANCO.IBT.CommitRetaining;
                       DMCAIXA.IBT.CommitRetaining;
                  Except
                      DMCONTA.IBT.RollbackRetaining;
                       DMBANCO.IBT.RollbackRetaining;
                       DMCAIXA.IBT.RollbackRetaining;
                  End;
                End;
              End;
       End;

       if DMSAIDA.WPedV.FieldByName('COBRANCA').AsString = 'Carteira'
       then begin
          //filtra cta receber para cancelamento de lançamentos em caixa
          FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'PEDVENDA'+#39+') AND (COD_GERADOR='+CodPedido+')');
          //filtra parcela para cancelamento de lançamentos em caixa e carteira
          FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '');

          IF FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador = '+#39+'CTAR'+#39+') AND (lancaixa.cod_gerador =' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39')')= true
          THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
               LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1');
          end;
        end;
        //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS E APAGAR TODA A MOVIMENTAÇÃO DE CHEQUE E BANCO LIGADA A ELA

		 If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'PEDVENDA'+#39+') AND (COD_GERADOR='+CodPedido+')')=True
        Then Begin//se foi encontrado alguma conta
        	//FILTRA PARCELAS
		 	If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
        	Then Begin//se foi encontrado alguma conta
				//PARA CADA PARCELA VERIFICA SE ESTA FECHADA
               DMCONTA.TParcCR.First;
               While not DMCONTA.TParcCR.Eof do
               Begin
                           //quando é em carteira e naum em cheque gera erro.
                          //filtra movimentação bancaria da parcela em questão
                          if FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39' )') = true then
                          		begin
                                      //filtra cheque da parcela
                                      FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', '', '(COD_MOVBANCO = ' + #39 + DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString + #39 +')');

                                      //variável utilizada para apos apagar a movimentação bancaria sejam apagados os cheques ligados as parcelas
                                      XCampo:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

                                      //filtra os lançamentos de caixa ligados a parcela
                                      FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =' + #39 + DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsString + #39')');

                                   If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTARCH'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString+')')=True
                                   Then Begin
                                      //se o codigo de abertura do caixa atual for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
                                      IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
                                      THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
                                          LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+' Cli. '+DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1');
                                      end;
                                      MDO.Transac.CommitRetaining;
                                      //DMCAIXA.IBT.CommitRetaining;

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
                                      MDO.Transac.CommitRetaining;
                                   End;

                                      //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
                                      If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
                                         Then Begin
                                             DMBANCO.TMovBanco.Delete;
                                             DMBANCO.TMovBanco.ApplyUpdates;
                                         End;
                                      DMBANCO.IBT.CommitRetaining;


                                      //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
                                      If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')')= true
                                      Then Begin
                                         DMBANCO.TMovBanco.Delete;
                                         DMBANCO.TMovBanco.ApplyUpdates;
                                      End;
                                      DMBANCO.IBT.CommitRetaining;


                                      If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CARTÃO' + #39 + ')')= true
                                      Then Begin
                                         DMBANCO.TMovBanco.Delete;
                                         DMBANCO.TMovBanco.ApplyUpdates;
                                      End;
                                      DMBANCO.IBT.CommitRetaining;


                                 //apaga cheques ligados ao pedido de venda
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


                               // - 06/05/2009:   remove todas as movimentações bancarias do codigo gerador de CTAR e CTARJ
                              DMBANCO.TAlx.Close;
                              DMBANCO.TAlx.SQL.Clear;
                              DMBANCO.TAlx.SQL.Add('delete from movbanco where movbanco.cod_gerador = :CODIGO and movbanco.TIPOGERADOR =' + #39 + 'CTAR' + #39 );
                              DMBANCO.TAlx.ParamByName('CODIGO').AsString := DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString;
                              DMBANCO.TAlx.ExecSQL;
                              DMBANCO.TAlx.Close;
                              DMBANCO.TAlx.SQL.Clear;
                              DMBANCO.TAlx.SQL.Add('delete from movbanco where movbanco.cod_gerador = :CODIGO and movbanco.TIPOGERADOR = ' + #39 + 'CTARJ' + #39 );
                              DMBANCO.TAlx.ParamByName('CODIGO').AsString := DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString;
                              DMBANCO.TAlx.ExecSQL;
                              DMBANCO.IBT.CommitRetaining;


                               DMCONTA.TParcCR.Delete;
                               DMCONTA.TParcCR.ApplyUpdates;



             End;
           End;
           DMCONTA.TCtaR.Delete;
           DMCONTA.TCtaR.ApplyUpdates;
           DMCONTA.IBT.CommitRetaining;
           DMFINANC.Transaction.CommitRetaining;
           DMCAIXA.IBT.CommitRetaining;
           MDO.Transac.CommitRetaining;
           Result := true;
        End;
   End;
   //PAulo 26/10/2010 - 147: faz uma nova consultar para evitar erros posterioermente
    DMBANCO.TMovBanco.Close;
    DMBANCO.TMovBanco.SQL.Clear;
    DMBANCO.TMovBanco.SQL.Add('SELECT first 1 * FROM MOVBANCO ');
    DMBANCO.TMovBanco.Open;

End;

//Imprime pedido
Procedure TFPedidoPadrao.ImpPed(COD_PEDIDO: Integer);
Var
	I,XCONT,XCOD_TMP: Integer;
   XdtPagamentoComprovante: String;
Begin
	//Filtra a loja para garantir que todos as informações estejam corretas
   If FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')=True
   Then Begin//Se encontrou a loja
       DMMACS.TLOJA.Edit;
       DMMACS.TLoja.FieldByName('TMP2').AsString:='';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	//filtra itens utilizando-se da tabela tslave de dmestoque
       If XSQLTABELA='PEDVENDA'
       Then Begin//se pedido de venda
			//insere sql necessária para filtrar pedido de venda e valores necessários
           DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
           DMEstoque.Alx.SQL.Add('SELECT pessoa.cod_pessoa, pedvenda.numped, pedvenda.cobranca, PEDVENDA.VLRFRETE, pedvenda.nomecli, cliente.endentraga, Cliente.Atacadista as atacadista, pessoa.telrel,  pessoa.BAIRRO, PESSOA.CEP, pedvenda.cpfcnpj,  ');
           DMEstoque.Alx.SQL.Add('cidade.nome, estado.uf_estado, pedvenda.dtpedven, pedvenda.descmoe, funcionario.cod_interno, funcionario.cod_func, FormPag.Descricao, PedVenda.Desconto AS DESCONTO, PedVenda.Descmoe, PedVenda.Valor,PedVenda.vlripi,  ');
           DMEstoque.Alx.SQL.Add('pedvenda.obs, pessoa.endereco, pessoa.endnumero,PESSOAJ.INSC_EST, cliente.cod_interno as CODCLI');
           DMEstoque.Alx.SQL.Add('FROM pedvenda Left join cliente ON pedvenda.cod_cliente = cliente.cod_cliente ');
           DMEstoque.Alx.SQL.Add('Left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
           DMEstoque.Alx.SQL.Add('Left join funcionario ON pedvenda.cod_vendedor = funcionario.cod_func ');
           DMEstoque.Alx.SQL.Add('join FormPag ON FormPag.cod_FormPag = PedVenda.Cod_FormPag ');
           DMEstoque.Alx.SQL.Add('left join cidade ON pessoa.cod_cidade = cidade.cod_cidade ');
           DMEstoque.Alx.SQL.Add('left join estado ON cidade.cod_estado = estado.cod_estado ');
           DMEstoque.Alx.SQL.Add('left join telefone ON telefone.cod_pessoa = pessoa.cod_pessoa ');
           DMEstoque.Alx.SQL.Add('left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa');
           DMEstoque.Alx.SQL.Add('Where pedvenda.cod_pedvenda=:CODPED');
           DMEstoque.Alx.ParamByName('CODPED').AsInteger:=COD_PEDIDO;
           DMEstoque.Alx.Open;

           //Seleciona dados de pessoa juridica
           DMPESSOA.TPessoaJ.Close;
           DMPESSOA.TPessoaJ.SQL.Clear;
           DMPESSOA.TPessoaJ.SQL.Add(' Select * from pessoaj ');
           DMPESSOA.TPessoaJ.SQL.Add(' Where pessoaj.cod_pessoa=:CODFUNC ');
           DMPESSOA.TPessoaJ.ParamByName('CODFUNC').AsInteger:=DMEstoque.Alx.FieldByName('cod_pessoa').AsInteger;
           DMPESSOA.TPessoaJ.Open;

           DMEstoque.Alx1.Close;
           DMEstoque.Alx1.SQL.Clear;
           DMEstoque.Alx1.SQL.Add(' Select * from vwfuncionario ');
           DMEstoque.Alx1.SQL.Add(' Where vwfuncionario.cod_func=:CODFUNC ');
           DMEstoque.Alx1.ParamByName('CODFUNC').AsInteger:=DMEstoque.Alx.FieldByName('cod_func').AsInteger;
           DMEstoque.Alx1.Open;

            // - 28/01/2009:  se for setado em loja com conversao unitaria // incluir sql's
           if (XConvUnitVenda) or (XConvUnitEmb)
           then begin

                 DMESTOQUE.TSlave.close;
                 DMESTOQUE.TSlave.sql.clear;
                 DMESTOQUE.TSlave.sql.Add('SELECT itenspedven.qtdeprod, itenspedven.COD_ITENSPEDVEN, unidade.sigla_unid, unidade.DESC_UNID,');
                 DMESTOQUE.TSlave.sql.Add('itenspedven.valunit, itenspedven.descpro, itenspedven.valortotal, itenspedven.DATA, itenspedven.qtdemb, itenspedven.unidemb, itenspedven.qtdnaemb');
                 DMESTOQUE.TSlave.sql.Add('FROM itenspedven');
                 DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on itenspedven.unidemb = unidade.cod_unidade ');
                 DMESTOQUE.TSlave.sql.Add('Where (itenspedven.cod_pedven = :CODPED)');
                 DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:=COD_PEDIDO;
                 DMESTOQUE.TSlave.Open;

                 DMMACS.TMP.Close;
                 DMMACS.TMP.SQL.Clear;
                 DMMACS.TMP.SQL.Add('delete from tmp');
                 DMMACS.TMP.ExecSQL;
                 DMMACS.Transaction.CommitRetaining;

                 DMMACS.TMP.Close;
                 DMMACS.TMP.SQL.Clear;
                 DMMACS.TMP.SQL.Add('Select * from tmp');
                 DMMACS.TMP.Open;

                 XCONT := 0;
                 XCOD_TMP := 0;
                 DMESTOQUE.TSlave.First;
                 While Not DMESTOQUE.TSlave.Eof do
                 Begin
                    XCONT:=XCONT+1;
                    XCOD_TMP:=XCOD_TMP+1;

                    DMMACS.TMP.Insert;
                    DMMACS.TMP.FieldByName('COD_TMP').AsCurrency:=XCOD_TMP;
                    DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsInteger;
                    IF XConvUnitVenda THEN
                       DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.TSlave.FieldByName('DESC_UNID').AsString
                    ELSE
                        DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.TSlave.FieldByName('sigla_unid').AsString;
                    //DMMACS.TMP.FieldByName('VLR1').AsString:=DMESTOQUE.TSlave.FieldByName('qtdemb').AsString;
                    //DMMACS.TMP.FieldByName('VLR2').AsString:=DMESTOQUE.TSlave.FieldByName('qtdnaemb').AsString;
                    DMMACS.TMP.Post;

                    DMMACS.Transaction.CommitRetaining;

                    DMESTOQUE.TSlave.Next;
                 end;
           end;

           //insere sql necessária para filtrar inetns do pedido de venda
           DMESTOQUE.TSlave.close;
           DMESTOQUE.TSlave.sql.clear;
           DMESTOQUE.TSlave.sql.Add('SELECT itenspedven.operacao AS OPER, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
           DMESTOQUE.TSlave.sql.Add('itenspedven.qtdeprod, itenspedven.ALIQICMS, itenspedven.VLRICMS, LOTE.numero as lote, unidade.sigla_unid, ');
           DMESTOQUE.TSlave.sql.Add('subproduto.descricao, subproduto.marca, subproduto.CONTRINT, subproduto.pesoliq, subproduto.pesobruto, itenspedven.valunit, itenspedven.descpro, itenspedven.valortotal, itenspedven.DATA,');
           DMESTOQUE.TSlave.sql.Add('itenspedven.qtdemb, itenspedven.cod_lote, itenspedven.unidemb, itenspedven.qtdnaemb');
           if (XConvUnitVenda) or (XConvUnitEmb)
           then begin
                DMESTOQUE.TSlave.sql.Add(', tmp.desc1');
           end;

           DMESTOQUE.TSlave.sql.Add('FROM itenspedven join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
           DMESTOQUE.TSlave.sql.Add('join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           DMESTOQUE.TSlave.sql.Add('LEFT Join LOTE on itenspedven.cod_lote = LOTE.COD_LOTE ');
           DMESTOQUE.TSlave.sql.Add('join produto on subproduto.cod_produto = produto.cod_produto ');

           if (XConvUnitVenda) or (XConvUnitEmb) THEN
                DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on SubProduto.cod_unidVenda = unidade.cod_unidade ')

           ELSE If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1' then begin
                DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on itenspedven.cod_unidade = unidade.cod_unidade ');

           end
           else begin
                DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on SubProduto.cod_unidVenda = unidade.cod_unidade ');
           end;

           if (XConvUnitVenda) or (XConvUnitEmb)
           then begin
                DMESTOQUE.TSlave.sql.Add('LEFT Join tmp on itenspedven.COD_ITENSPEDVEN = tmp.int1');
           end;

           DMESTOQUE.TSlave.sql.Add('Where (itenspedven.cod_pedven = :CODPED) '+{and (Itenspedven.OPERACAO<>'+#39+'DVL'+#39+')}' ORDER BY Subproduto.Descricao, itenspedven.DATA');
			DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:=COD_PEDIDO;
           DMESTOQUE.TSlave.Open;

           //Paulo 09/03/2011: Seleciona dados do veiculo de entrada
           if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
           begin
               DMESTOQUE.Alx5.Close;
               DMESTOQUE.Alx5.SQL.Clear;
               DMESTOQUE.Alx5.SQL.Add('select subproduto.contrint, subproduto.descricao,veiculoentrada.valor FROM veiculoentrada');
               DMESTOQUE.Alx5.SQL.Add('left join estoque on veiculoentrada.cod_estoque = estoque.cod_estoque');
               DMESTOQUE.Alx5.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
               DMESTOQUE.Alx5.SQL.Add('where VEICULOENTRADA.COD_PEDIDO = :PEDIDO');
               DMESTOQUE.Alx5.ParamByName('PEDIDO').AsInteger:= COD_PEDIDO;
               DMESTOQUE.Alx5.Open;
           end;

           //Paulo 14/04/2011: Se a loja Personaliza despesas adicionais
           if DMMACS.TLoja.FieldByName('PERSODESPADIC').AsString = '1' then
           begin
                //FILTRA DESPESAS
               DMESTOQUE.TDesp.Close;
               DMESTOQUE.TDesp.SQL.Clear;
               DMESTOQUE.TDesp.SQL.Add('select despadic.despesa, despadic.vlrtotfin, despadic.desconto,pedvenda.dtpedven from despadic');
               DMESTOQUE.TDesp.SQL.Add('left join pedvenda on pedvenda.cod_pedvenda = despadic.cod_gerador');
               DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador='+#39+'PEDVENDA'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
               DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=COD_PEDIDO;
               DMESTOQUE.TDesp.Open;
           end
           else begin
                //FILTRA DESPESAS
               DMESTOQUE.TDesp.Close;
               DMESTOQUE.TDesp.SQL.Clear;
               DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'PEDVENDA'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
               DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=COD_PEDIDO;
               DMESTOQUE.TDesp.Open;
           end;

   		//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   		FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+IntToStr(COD_PEDIDO)+#39+')');

           //insere sql necessária para filtrar parcelas da conta
           DMMacs.TALX.Close;
           DMMacs.TALX.sql.Clear;
           DMMacs.TALX.SQL.Add('SELECT parcelacr.dtdebito, parcelacr.dtvenc,parcelacr.valorpg, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
           DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
           DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:=COD_PEDIDO;
           DMMacs.TALX.Open;

           //Assume parcelas em campo blob de loja para após ser passado em relatório
           DMMACS.TLoja.Edit;
           DMMACS.TLoja.FieldByName('TMP1').AsString:='';
           DMMACS.TLoja.Post;
           DMMACS.TALX.First;
           while not DMMACS.TALX.Eof do
           Begin
               DMMACS.TLoja.Edit;
               //Paulo 06/04/2011: relatório personalizado da empresa
               //If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '9' Then
               if DMMACS.TLoja.FieldByName('PERSODESPADIC').AsString = '1' then
               begin
                   if DMMacs.TALX.FieldByName('dtdebito').AsString <> '' then
                       DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+DMMacs.TALX.FieldByName('dtvenc').AsString+'           '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+'        '+DateToStr(DMMacs.TALX.FieldByName('dtdebito').AsDateTime)+'             '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valorpg').AsCurrency)+#13
                   else
                       DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+DMMacs.TALX.FieldByName('dtvenc').AsString+'           '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+'        '+'                                  '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valorpg').AsCurrency)+#13;

               end
               else begin
                   DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+DMMacs.TALX.FieldByName('dtvenc').AsString+'     /    '+DMMacs.TALX.FieldByName('cobranca').AsString+'     -    '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+#13;
               end;
               DMMACS.TLoja.Post;
               DMMACS.TALX.Next;
           End;
           DMMACS.Transaction.CommitRetaining;
           if not(DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF')then
           begin
	       		//verifica se a tabela para pedido não esta vazia
	       		If DMEstoque.Alx.IsEmpty
	       		Then Begin
					Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O pedido que tentou imprimir encontra-se com falta de informações. Altere o pedido e preencha com as informações pendentes!', '', 1, 1, False, 'a');
	            	Exit;
	       		End;
           end;
           if not(DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF')then
           begin
	        	//verifica se a tabela para items não esta vazia
	        	If (DMESTOQUE.TSlave.IsEmpty=True) And (DMESTOQUE.Tdesp.IsEmpty=True)
           	Then Begin
					Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O pedido que tentou imprimir encontra-se sem items!'+#13+'É provável que o produto deste pedido tenha sido devolvido ou trocado.', '', 1, 1, False, 'a');
  	            	Exit;
          		End;
           end;
	       If DMMacs.TLoja.FieldByName('IMPPED').AsString='1'
	       Then Begin // o pedido deve ser impresso sem pré visualização
          	  If DMMacs.TLoja.FieldByName('IMPMATRICIAL').AsString<>'1'
             Then Begin
             	//IMPRIME ATRAVEZ DO RELATORIOS
				//imprime o N. de cópias informado no bd
	            If DMMacs.TLoja.FieldByName('QTDCOPYPED').AsString=''
   		    Then Begin
			    	Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Na Configuração da loja, não foi informado o Número de cópias a ser impresso. Desta forma o sistema irá imprimir apenas 1!', '', 1, 1, False, 'a');
					If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                   Then Begin
  			        	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVendLote.frf')
                   End
                   Else Begin
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '1' Then
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '2' Then
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 01.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '3' Then
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend02.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '4' Then
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 05.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '5' Then
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 06.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '6' Then
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 07.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '7' Then //16/04/2009: comprovante em forma de cupom
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCupom.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '8' Then //16/04/2009: comprovante com dados de icms
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend8.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '9' Then //Paulo 05/10/2010: relatório personalizado da empresa
                           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVendPersonalizado.frf');
                   End;
					FSRel.ShowReport;
					//QRPEDIDO.Print;
	            End
	            Else Begin
					If DMMacs.TLoja.FieldByName('QTDCOPYPED').AsInteger>6
		            Then Begin
						If Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Segundo configurações da loja o sistema deve imprimir mais de 6 cópias do pedido.'+#13+'Deseja realmente imprimir?', '', 2, 2, False, 'c')=2
	                    Then Begin
	                    	For I:=0 To DMMacs.TLoja.FieldByName('QTDCOPYPED').AsInteger do
	                        Begin
					            If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                               Then Begin
  			        	            FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVendLote.frf')
                               End
                               Else Begin
                                   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '1' Then
  			        	                FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend.frf');
                                   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '2' Then
  			        	                FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 01.frf');
                                   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '3' Then
                                       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend02.frf');
                                   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '4' Then
                                       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 05.frf');
                                   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '5' Then
                                      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 06.frf');
                                   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '6' Then
  			        	                FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 07.frf');
                                   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '7' Then //16/04/2009: comprovante em forma de cupom
  			        	                FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCupom.frf');
                                   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '8' Then //16/04/2009: comprovante com dados de icms
                                       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend8.frf');
                                   If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '9' Then //Paulo 05/10/2010: relatório personalizado da empresa
                           			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVendPersonalizado.frf');
                               End;
								FSRel.ShowReport;
	                        End;
	                    End;
	                End
	                Else Begin
	                  	For I:=1 To DMMacs.TLoja.FieldByName('QTDCOPYPED').AsInteger do
	                    Begin
					        If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                           Then Begin
  			        	        FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVendLote.frf')
                           End
                           Else Begin
                               If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '1' Then
  			        	            FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend.frf');
                               If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '2' Then
  			        	            FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 01.frf');
                               If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '3' Then
                                   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend02.frf');
                               If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '4' Then
                                   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 05.frf');
                               If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '5' Then
                                   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 06.frf');
                               If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '6' Then
  			        	            FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 07.frf');
                               If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '7' Then //16/04/2009: comprovante em forma de cupom
  			        	            FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCupom.frf');
                               If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '8' Then //16/04/2009: comprovante com dados de icms
                                   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend8.frf');
                               If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '9' Then //Paulo 05/10/2010: relatório personalizado da empresa
                           		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVendPersonalizado.frf');

                           End;
							FSRel.ShowReport;
	                    End;
	                End;
	            End;
             End
             Else Begin
             	//IMPRIME ATRAVEZ DE CANVAS
				If Mensagem('CONFIRMAÇÃO', 'Imprimir pedido Nº '+DMEstoque.Alx.FieldByName('NUMPED').AsString, '', 2, 2, False, 'c')=2
	            Then Begin
 					ImpPedCanvas;
               End;
             End;
	       End
	       Else Begin
          	  If DMMacs.TLoja.FieldByName('IMPMATRICIAL').AsString<>'1'
             Then Begin
             	//IMPRIME ATRAVEZ DE RELATORIOS
               If FMenu.TIPOREL='NORMAL'
               Then Begin
					If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                   Then Begin
  			        	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVendLote.frf')
                   End
                   Else Begin
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '1' Then
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '2' Then
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 01.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '3' Then
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend02.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '4' Then
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 05.frf');
                        If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '5' Then
                                  FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 06.frf');
                        If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '6' Then
  			        	            FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 07.frf'); //16/04/2009: comprovante em forma de cupom
                        If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '7' Then
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCupom.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '8' Then //16/04/2009: comprovante com dados de icms
  			        	    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend8.frf');
                       If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '9' Then //Paulo 05/10/2010: relatório personalizado da empresa
                           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVendPersonalizado.frf');
                       
                   End;
					FSRel.ShowReport;
               End
               Else Begin

           		//SETA IMPRESSORA PADRAO PARA THERMAL
           		If PadraoImp(DMMACS.TLoja.FieldByName('IMPTHERMAL').AsString)=True
           		Then Begin
      					PadraoImp(DMMACS.TLoja.FieldByName('IMPTHERMAL').AsString);
                       //QuickRep1.Preview
   		        	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVendTermal.frf');
						FSRel.ShowReport;
                       RetPadraoImp;
                   End
                   Else Begin
			    		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não foi possível setar impressora padrão', '', 1, 1, False, 'a');
                   End;
               End;
             End
             Else Begin
             	//IMPRIME PELO CANVAS
				If Mensagem('CONFIRMAÇÃO', 'Imprimir pedido Nº '+DMEstoque.Alx.FieldByName('NUMPED').AsString, '', 2, 2, False, 'c')=2
	            Then Begin
               	ImpPedCanvas;
               End;
             End;
	       End;
          DMMACS.Transaction.RollbackRetaining;
          DMMACS.Transaction.CommitRetaining;
       End
       Else Begin
			//insere sql necessária para filtrar pedido de venda e valores necessários
           DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
           DMEstoque.Alx.SQL.Add('SELECT pedcompra.numped, pedcompra.cobranca, pessoa.nome, pessoa.cpfcnpj, pessoa.endereco, pessoa.endnumero, ');
           DMEstoque.Alx.SQL.Add('cidade.nome, pedcompra.dtpedcomp, pedcompra.OBS, FormPag.Descricao, pedcompra.Desconto AS DESCONTO, pedcompra.Descmoe, pedcompra.valor ');
           DMEstoque.Alx.SQL.Add('FROM pedcompra Left join fornecedor ON pedcompra.cod_fornec = fornecedor.cod_fornec ');
           DMEstoque.Alx.SQL.Add('Left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
           DMEstoque.Alx.SQL.Add('join FormPag ON FormPag.cod_FormPag = pedcompra.Cod_FormPag ');
           DMEstoque.Alx.SQL.Add('left join cidade ON pessoa.cod_cidade = cidade.cod_cidade ');
           DMEstoque.Alx.SQL.Add('Where pedcompra.cod_pedcomp=:CODPED');
           DMEstoque.Alx.ParamByName('CODPED').AsInteger:=COD_PEDIDO;
           DMEstoque.Alx.Open;

           //insere sql necessária para filtrar inetns do pedido de venda
           DMESTOQUE.TSlave.close;
           DMESTOQUE.TSlave.sql.clear;
           DMESTOQUE.TSlave.sql.Add('SELECT subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
           DMESTOQUE.TSlave.sql.Add(' itenspedc.qtdeprod, itenspedc.QTDEEXP, itenspedc.obs, itenspedc.motivodescarte, unidade.sigla_unid, unidade.cod_unidade, subproduto.cod_unidvenda, ');
           DMESTOQUE.TSlave.sql.Add('subproduto.descricao, subproduto.marca, itenspedc.valunit, itenspedc.descpro, itenspedc.valortotal, itenspedc.AGRUP, itenspedc.QTDBRUTA, itenspedc.QTDDESCARTE ');
           DMESTOQUE.TSlave.sql.Add('FROM itenspedc join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
           DMESTOQUE.TSlave.sql.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString<>'1'
           then begin
                DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
           end
           else begin
                DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on itenspedc.cod_unidade = unidade.cod_unidade ');
           end;
            // - 17/02/2009:    retirado por fazer duas vezes left join com unidade (estava dando problemas na mercescan)
           //DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on itenspedc.cod_unidade = unidade.cod_unidade ');
           DMESTOQUE.TSlave.sql.Add('Where itenspedC.cod_pedcompra = :CODPED');
			DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:=COD_PEDIDO;
           DMESTOQUE.TSlave.Open;

           //insere sql necessária para filtrar parcelas da conta
           DMMacs.TALX.Close;
           DMMacs.TALX.sql.Clear;
           DMMacs.TALX.SQL.Add('SELECT parcelacp.dtvenc, parcelacp.cobranca, parcelacp.valor, parcelacp.dtdebito, parcelacp.valorpg FROM parcelacp left join ctapagar on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar ');
			DMMacs.TALX.SQL.Add(' Where (ctapagar.tipogerador='+#39+'PEDCOMPRA'+#39+') And (ctapagar.cod_gerador=:CODGERADOR) ');
           DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:=COD_PEDIDO;
           DMMacs.TALX.Open;

           //Assume parcelas em campo blob de loja para após ser passado em relatório
           DMMACS.TLoja.Edit;
           DMMACS.TLoja.FieldByName('TMP1').AsString:='';
           DMMACS.TLoja.Post;
           DMMACS.TALX.First;
           while not DMMACS.TALX.Eof do
           Begin
           	If DMMacs.TALX.FieldByName('dtdebito').AsString='' Then
               	XdtPagamentoComprovante:=''
               Else
               	XdtPagamentoComprovante:=DMMacs.TALX.FieldByName('dtdebito').AsString+'             '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valorpg').AsCurrency);

               DMMACS.TLoja.Edit;
               DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+DMMacs.TALX.FieldByName('dtvenc').AsString+'           '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+'        '+XdtPagamentoComprovante+#13;
               DMMACS.TLoja.Post;
               DMMACS.TALX.Next;
           End;

	        //verifica se a tabela para pedido não esta vazia
	        If DMEstoque.Alx.IsEmpty
	        Then Begin
				Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O pedido que tentou imprimir encontra-se com falta de informações. Altere o pedido e preencha com as informações pendentes!', '', 1, 1, False, 'a');
	            Exit;
	        End;
	        //verifica se a tabela para items não esta vazia
	        If DMESTOQUE.TSlave.IsEmpty
	        Then Begin
				Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O pedido que tentou imprimir encontra-se sem items!', '', 1, 1, False, 'a');
  	            Exit;
           End;

           if(DMMACS.TLoja.FieldByName('MODELOCOMPPEDC').AsInteger = 1)Then
		        FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompComp.frf')
           Else
		        FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompComp02.frf');
			FSRel.ShowReport;
       End;
	End; //fim de filtra loja

    DMMACS.TMP.Close;
     DMMACS.TMP.SQL.Clear;
     DMMACS.TMP.SQL.Add('delete from tmp');
     DMMACS.TMP.ExecSQL;
     DMMACS.Transaction.CommitRetaining;
End;

//Fecha pedido (Atualiza estoque e joga no financeiro
Function TFPedidoPadrao.FechaPedido(CODPEDIDO: String; DTFECH: String) : Boolean;
Var
	AtualizaEst, ATUFINANC: Boolean; //Controla se atualização de estoque e controle financeiro foram efetivados
   XPKSlaveCampo, XSQLSlave: String;//guardará a pk e a SQL do tabela slave
   XVLRFRETE1: Real;
   XNUMDOC: String; //ira conter o numero do documento se emitido documento fiscal será o numero do cupom se nao o numero de pedido
	XHistorico: String;// Armazena o historico de operação
   XVLRCREDITO: Real;//Armazena temporariamento o valor q deve ser retirado do credito
   XConta: integer;
   XNumeroCupom: string;
   XCod_Vendedor: Integer;//Armazena temporariamoente o codigo do vendeodr para gerar comissao
Begin
	FMenu.TIPOREL:='PEDNORMAL';
	If XSQLTABELA='PEDVENDA'
   Then Begin
       XPKSlaveCampo:='COD_ITENSPEDVEN';
       XSQLSlave:='ITENSPEDVEN';
   End
   Else Begin
       XSQLSlave:='ITENSPEDC';
       XPKSlaveCampo:='COD_ITENSPEDC';
       fmenu.xfiscalcompra:=XTabela.FieldByName('numfiscal').AsString;
   End;

   XCod_Vendedor:=-1;
	//inicializa as variaveis como true, caso encontre erro na passagem da função eslas passaram a false
   FechaPedido:=False;
	AtualizaEst:=True;
   ATUFINANC:=False;
	// Tenta filtrar o pedido
   If FiltraTabela(XTabela, XSQLTABELA, XPkTabela, CODPEDIDO, '') = True
	Then Begin
      	XNUMDOC:=XTabela.FieldByName('NUMPED').AsString;
       XnumDocBanca:=XNUMDOC;

       //Filtra loja
		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '' );
		If XSQLTABELA='PEDVENDA'
   	Then Begin
			XCod_Vendedor:=DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsInteger;
       	//VERIFICA O NUMERO DO DOCUMENTO
       	If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
       	Then Begin
            If (MODELO_IMPRESSORA = 'BEMATECH')
            THEN BEGIN
            	if(XImpLig = true)then
               begin
                	For XConta := 1 To 6 Do
                	XNumeroCupom := XNumeroCupom + ' ';
                	// busca o numero do cupom atual
                	Bematech_FI_NumeroCupom( XNumeroCupom );
                	XNUMDOC:= XNumeroCupom;
               end;
            END;
        End;
       	If  DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF'
       	Then Begin
   			//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   			If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+CODPEDIDO+#39+')')=True
   			Then Begin
                   XNUMDOC:=XNUMDOC+':'+DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString
           	End
           End;
       End;
       //***********************************************
       // INICIA PROCESSO PARA ATUALIZAÇÃO DE ESTOQUE **
       //***********************************************

   	// Filtra registros de pedido
       FiltraSlave;

       //percorre todos os registros
       DMESTOQUE.TSlave.First;
       While Not DMESTOQUE.TSlave.Eof do
       Begin
           //este bloco de exeção irá controlar a atualização do estoque, caso falhar a variavel ATUALIZAEST será false
           Try
           	//utiliza-se da tabela auxiliar TSlave p/ localizar o registro real em XTABSlave
			    If FiltraTabela(XTabSlave, XSQLSlave, XPKSlaveCampo, DMESTOQUE.TSlave.FieldByName(XPKSlaveCampo).AsString, '') = True
               Then Begin
			       	//Filtra estoque de acordo com o registro selecionado
				    If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', XTabSlave.FieldByName('COD_ESTOQUE').AsString, '') = True
					Then Begin
                   	If XSQLTABELA='PEDVENDA'
                       Then Begin
                       	//se o produto ainda não atualizou estoque, verifica se a quantidade para isso
							If XTabSlave.FieldByName('ATUEST').AsString<>'1'
                           Then Begin
				           		//Verifica se pode ser atualizado caso não haja estoque suficiente
						  		If (DMMacs.TLoja.FieldByName('VENDESTNEG').AsString='0') And (XTabSlave.FieldByName('QTDEPROD').AsCurrency>DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency)
						    	Then Begin
									Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação. Um ou mais produtos não possuem estoque suficiente!', '', 1, 1, False, 'a');
									AtualizaEst:=False;
									Exit;
		  	                	End;
                           End;
                       End;
		               //Verifica se já foi atualizado estoquie
		               If XTabSlave.FieldByName('ATUEST').AsString<>'1'
		               Then Begin //O Estoque ainda não foi atualizado e deve ser
                      		If XSQLTABELA='PEDVENDA'
                           Then Begin
								//ATUALIZA CUSTO DE ESTOQUE
								DMESTOQUE.CalcCustMed(DMESTOQUE.TEstoque.FieldByNAme('COD_ESTOQUE').AsInteger, 'S', XTabSlave.FieldByName('QTDEPROD').AsCurrency, XTabSlave.FieldByName('QTDEPROD').AsCurrency*XTabSlave.FieldByName('VALUNIT').AsCurrency);

               				//Atualiza data da ultima venda
              		    	    DMEstoque.TEstoque.Edit;
								DMEstoque.TEstoque.FieldByName('ULTVENDA').AsString:=DateToStr(Date());
			               		DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-XTabSlave.FieldByName('QTDEPROD').AsCurrency;
								DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency-XTabSlave.FieldByName('QTDEPROD').AsCurrency;
                               DMESTOQUE.TEstoque.Post;
   							DMESTOQUE.TransacEstoque.CommitRetaining;
                           End
                      		Else Begin
                       		//EM CASO DE PEDIDO DE COMPRA ATUALIZA CUSTO DO ESTOQUE
								DMESTOQUE.CalcCustMed(DMESTOQUE.TEstoque.FieldByNAme('COD_ESTOQUE').AsInteger, 'E', XTabSlave.FieldByName('QTDEPROD').AsCurrency, XTabSlave.FieldByName('QTDEPROD').AsCurrency*XTabSlave.FieldByName('VALUNIT').AsCurrency);
               					//Atualiza data da ultima compra
                             	DMESTOQUE.TEstoque.Edit;
								DMEstoque.TEstoque.FieldByName('ULTCOMPRA').AsString:=DateToStr(Date());
                               DMESTOQUE.TEstoque.Post;
                               DMESTOQUE.TransacEstoque.CommitRetaining;
       						//VERIFICA QUANTO A CONVERSÃO UNITARIA DE COMPRA PARA VENDA
           					FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
                           End;

	                        //indica ao registro escravo que seu estoque já foi atualizado
	                        XTabSlave.Edit;
			                XTabSlave.FieldByName('ATUEST').AsString:='1';
                           XTabSlave.Post;
			       		  //Atualiza saldo de estoque
				    	  //calcula saldo de estoque
			                Try
								DMEstoque.TEstoque.Edit;
			  				 	DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency:=(DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency-DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency)+DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency;
								DMEstoque.TEstoque.Post;
                               DMESTOQUE.TransacEstoque.CommitRetaining;
                           Except
		                    End;
		               End;
	               End
	               Else Begin//else de filtragem de estoque
						AtualizaEst:=False;
	               End;
               End
               Else Begin//else de filtragem de estoque
					AtualizaEst:=False;
               End;
	        Except
               AtualizaEst:=False;
           End;
           //Avança um registro
           DMESTOQUE.TSlave.Next;
       End;
       //***********************************************
       // FIM DE PROCESSO PARA ATUALIZAÇÃO DE ESTOQUE **
       //***********************************************


       //***********************************************
       // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **
       //***********************************************
	   		If XSQLTABELA='PEDVENDA'
           Then Begin//efetua lançamento em caixa para frete à vista
           	//*********************
               // ATUALIZA COMISSÃO **
               //*********************
               //VERIFICA SE EXISTE ALGUM COMISSIONADO PARA O PEDIDO
               TRY
               	DMFINANC.TAlx.Close;
               	DMFINANC.TAlx.SQL.Clear;
               	DMFINANC.TAlx.SQL.Add(' Select *  from comissao ');
               	DMFINANC.TAlx.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
               	DMFINANC.TAlx.ParamByName('GERADOR').AsString:='PEDVENDA';
               	DMFINANC.TAlx.ParamByName('CODGERADOR').AsString:=XCodPedido;
               	DMFINANC.TAlx.Open;
                   If DMFINANC.TAlx.IsEmpty
                   Then Begin
                   	//Não foi encontrada nenhuma comissão gerada para este pedido esta deve ser feita automaticamente para o vendedor selecinado em pedido
						//INSERE O COMISSIONADO
                       DMFINANC.TComis.Close;
                       DMFINANC.TComis.SQL.Clear;
                       DMFINANC.TComis.SQL.Add('Select * from comissao');
                       DMFINANC.TComis.Open;
						XCODPKCOMIS:=InserReg(DMFINANC.TComis, 'COMISSAO', 'COD_COMISSAO');
   					DMFINANC.TComis.FieldByName('COD_COMISSAO').AsInteger:=XCODPKCOMIS;
   					DMFINANC.TComis.FieldByName('COD_GERADOR').AsString:=CODPEDIDO;
   					DMFINANC.TComis.FieldByName('GERADOR').AsString:='PEDVENDA';
   					DMFINANC.TComis.FieldByName('COD_FUNCIONARIO').AsInteger:=XCod_Vendedor;
    					If (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1')
                       Then Begin
    						//A base de cálculo utilizada para comissão deve ser a mesma trazido da informada no momento da inserção do produto
							//Calcula Total
                           //INSERE COMANDOS PARA FILTRAR
							DMESTOQUE.Alx.Close;
							DMESTOQUE.Alx.SQL.Clear;
							DMESTOQUE.Alx.SQL.Add('Select SUM(itenspedven.comissao) AS COMISSAO From itenspedven');
							DMESTOQUE.Alx.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA)');
                           	DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString:=DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString;
							DMESTOQUE.Alx.Open;
		   					DMFINANC.TComis.FieldByName('VLRPROD').AsCurrency:=DMESTOQUE.Alx.FieldByName('COMISSAO').AsCurrency;
  							DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=100;
  							DMFINANC.TComis.FieldByName('VLRCOMISPROD').AsCurrency:=DMESTOQUE.Alx.FieldByName('COMISSAO').AsCurrency;
                       End
                       Else Begin
                       	DMFINANC.TComis.FieldByName('VLRPROD').AsCurrency:=XTabela.FieldByName('VALOR').AsCurrency;
                           DMFINANC.TComis.FieldByName('VLRCOMISPROD').AsCurrency:=XTabela.FieldByName('VLRCOMIS').AsCurrency;
                           //Filtra Forma de Pagamento
                           FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString, '');
                           FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(XCodVendedor), '');
                           DMPESSOA.TFunCargo.Last;
                           If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA' Then // caso o frete tenha sido feito à vista deve-se lançar o valor direto no caixa
                           	//DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency
                               DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=XEDCOMISS
                           Else
                           	//DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency;
                               DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=XEDCOMISS;
                       End;
   					DMFINANC.TComis.Post;
                   End;

               Except
					Mensagem('INFORMAÇÃO AO USUÁRIO', 'Problemas ao gerar comissão', '', 1, 1, false, 'a');
                   ATUFINANC:=False;
                   DMCAIXA.IBT.RollbackRetaining;
					XTransaction.RollbackRetaining;
                   DMFINANC.Transaction.RollbackRetaining;
					exit;
               End;
           End;

       If XTabela.FieldByName('VALOR').AsCurrency<=0
       Then Begin
       	ATUFINANC:=True;
       End
       Else Begin
          // - 20/02/2009: chama função para calcular média ponderada se for pedido de compra
          if (XSQLTABELA<>'PEDVENDA')then
            CalMedPondPC(XCodPedido);

       	//LANÇA FRETE
          //VERIFICA SE O PEDIDO JÁ POSSUE DOC FIS E FRETE PARA LANCAR FRETE
          If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True
          Then Begin
      	      If XSQLTABELA='PEDVENDA'
             Then Begin
                 //LANCA PARA VENDA
          		   If (DMSAIDA.TFiscPV.FieldByName('FRETECOMP').AsString='0') AND (DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency>0)
                  Then Begin
                   	XVLRFRETE1:=DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency;
               	   //Filtra Forma de Pagamento
         			     If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCODFORMPAGFRETE) , '') = True
   	  		         Then Begin // Encontrou forma de pagamento, continua processo
                        	If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                       	Then Begin // caso o frete tenha sido feito à vista deve-se lançar o valor direto no caixa
                           	//Filtra fornecedor para lançar em historico
                               FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');

                               //Filtra fornecedor para lançar em historico
                           	If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFISSAIDA', '', '(docfisSAIDA.cod_pedido='+#39+XCodPedido+#39+')')=True Then
                           		FiltraTabela(DMPESSOA.TALX, 'VWFORNEC', 'COD_FORNEC', DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsString, '');

                           	If (CBPagamento.Text='Carteira')
                           	Then Begin//LANÇAMENTO EM CAIXA PARA CARTEIRA
                           		If LanCaixa(0 {DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, DateToStr(Date()), DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, 'FRETE '+DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento1.Text, 'S', DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString, Date(), '1')=False Then
                           			ATUFINANC:=False;
                               End;
                               If CBPagamento1.Text='Cheque'
           		            Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
                             		If LancChSai(DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, 'FRETE '+DMSAIDA.TFiscPV.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, Date(), XTabela.FieldByName('VALOR').AsCurrency, XCOD_CONTABANCO, 'PEDCOMPRA', XCodPedido,XTabela.FieldByName('numfisc').AsString)=False Then  //Se lançou
                           			ATUFINANC:=FALSE;
                       		end;
               	       	End
                          	Else Begin
               				  //Filtra fornecedor para lançar em historico
                   			  FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');

               				  //Filtra fornecedor para lançar em historico
                                 If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(docfissaida.cod_pedido='+#39+XCodPedido+#39+')')=True Then
                                 	FiltraTabela(DMPESSOA.TALX, 'VWFORNEC', 'COD_FORNEC', DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsString, '');
                                 If LancConta(XSQLTABELA, StrToInt(XCodPedido), DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsInteger, CBPagamento1.Text, DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency, 0, DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, -1, 0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, 'FRETE '+DMSAIDA.TFiscPV.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, XCODFORMPAGFRETE, 'FRT: '+DMSAIDA.TFiscPV.FieldByName('NUMCONHEC').AsString, 'P',  XTabela.FieldByName('DTPEDCOMP').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDCOMP').AsString, XTabela.FieldByName('numfiscal').AsString)=False
                                 Then Begin
									             ATUFINANC:=False;
                                 End;
                       	End;
          				End;
               	End;
			  End
             Else Begin
             	//LANCA PARA COMPRA
          		If (DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString='0') AND (DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency>0)
               Then Begin
                   XVLRFRETE1:=DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency;
               	//Filtra Forma de Pagamento
         			If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCODFORMPAGFRETE) , '') = True
   	  			Then Begin // Encontrou forma de pagamento, continua processo
       				If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
           			Then Begin // caso o frete tenha sido feito à vista deve-se lançar o valor direto no caixa
               				//Filtra fornecedor para lançar em historico
                   			FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');

               				//Filtra fornecedor para lançar em historico
   							If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True Then
	                  				FiltraTabela(DMPESSOA.TALX, 'VWFORNEC', 'COD_FORNEC', DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsString, '');

                               If (CBPagamento.Text='Carteira') or (CBPagamento.Text='Cartão')
                       		Then Begin//LANÇAMENTO EM CAIXA PARA CARTEIRA
									            If LanCaixa(0 {DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, DateToStr(Date()), DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, 'FRETE '+DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento1.Text, 'S', DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString, Date(), '1')=False Then
                               	ATUFINANC:=False;
                       		End;

			                   	If CBPagamento1.Text='Cheque'
           		            Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
									If LancChSai(DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, 'FRETE '+DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, Date(), XTabela.FieldByName('VALOR').AsCurrency, XCOD_CONTABANCO, 'PEDCOMPRA', XCodPedido,  XTabela.FieldByName('numfiscal').AsString)=False
          							Then  //Se lançou
                           			ATUFINANC:=FALSE;
                       		end;
               		End
                       Else Begin
                           //Filtra fornecedor para lançar em historico
                           FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');

                           //Filtra fornecedor para lançar em historico
                           If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True Then
                               FiltraTabela(DMPESSOA.TALX, 'VWFORNEC', 'COD_FORNEC', DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsString, '');
                           If LancConta(XSQLTABELA, StrToInt(XCodPedido), DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsInteger, CBPagamento1.Text, DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency, 0, DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, -1, 0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, 'FRETE '+DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, XCODFORMPAGFRETE, 'FRT: '+DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString, 'P',  XTabela.FieldByName('DTPEDCOMP').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDCOMP').AsString, XTabela.FieldByName('numfiscal').AsString)=False
                           Then Begin
                               ATUFINANC:=False;
                           End;
                       End;
          			End;
               End;
             End;
          End;

         //Filtra Forma de Pagamento
         If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString, '') = True
   	  Then Begin // Encontrou forma de pagamento, continua processo

               If CBPagamento.Text='Multiplo'
               Then Begin
               	If XSQLTABELA<>'PEDVENDA'
               	Then Begin
                       //tenta fechar as contas
                       If FecConta('C', StrToInt(XCodPedido), XTabela.FieldByName('VALOR').AsCurrency, XTabela.FieldByName('VALOR').AsCurrency, 0, XCodConta, -1, Date())=True
                       Then Begin
                           ATUFINANC:=True;
                       End
                       Else
                           ATUFINANC:=False;
                   End;

               End
               Else Begin
                   If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                   Then Begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
                       If XSQLTABELA='PEDVENDA'
                       Then Begin//efetua lançamento em caixa para venda à vista
                           If CBGeraFinanceiro.Checked=False
                           Then Begin
                               //Paulo 11/05/2011: adicionando a placa do veiculo no histórico
                               if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
                               begin
                                   //Paulo 11/05/2011: Filtra produto
                                   FiltraTabela(DMSAIDA.TItemPV,'ITENSPEDVEN','COD_PEDVEN',IntToStr(XTabela.FieldByName('COD_PEDVENDA').AsInteger),'');
                                   FiltraTabela(DMESTOQUE.WSimilar,'VWSIMILAR','COD_ESTOQUE',IntToStr(DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger),'');
                                   XHistorico:='Venda '+XNUMDOC+' - Placa '+DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString+'  Cli. '+XTabela.FieldByName('NOMECLI').AsString;
                               end
                               else begin
                                   //Somente gera o financeiro se o combobox acima estiver desmarcado
                                   XHistorico:='Fech. Venda '+XNUMDOC+' - Cli. '+XTabela.FieldByName('NOMECLI').AsString;
                               end;

                               If (CBPagamento.Text='Carteira')
                               Then Begin//LANÇAMENTO EM CAIXA PARA CARTEIRA
                                   If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XTabela.FieldByName('VALOR').AsCurrency, 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'E', XNUMDOC, Date(), '1')=True
                                   Then Begin//informa que a atualização do financeiro foi efetivada
                                       ATUFINANC:=True;
                                   End
                                   Else Begin//informa que a finalização do financeiro falhou
                                       ATUFINANC:=False;
                                   End;
                               End;
                               If CBPagamento.Text='Cheque'
                               Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
                                   If LancChEnt(XCodConta, 0, XHistorico, Date(), '', XTabela.FieldByName('VALOR').AsCurrency, 0, '', '', 0, '', '', 'PEDVENDA',  XCodPedido)=True
                                   Then  ////informa que a atualização do financeiro foi efetivada
                                       ATUFINANC:=True
                                   Else//informa que a finalização do financeiro falhou
                                       ATUFINANC:=False;
                               End;
                               If CBPagamento.Text = 'Cartão'
                               Then Begin
                                   //Paulo 09/09/2011: Se estiver configurado para o cartão ir direto no caixa
                                   if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                                   begin
                                       If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XTabela.FieldByName('VALOR').AsCurrency, 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'E', XNUMDOC, Date(), '1')=True
                                       Then  ////informa que a atualização do financeiro foi efetivada
                                           ATUFINANC:=True
                                       Else//informa que a finalização do financeiro falhou
                                           ATUFINANC:=False;

                                   end else
                                   begin
                                       If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCodConta,'Fech. Venda por cartão:' + XNUMDOC + ' - Nº Cartão: ' + edNumeroCartao.Text + ' - Cli. '+XTabela.FieldByName('NOMECLI').AsString, XTabela.FieldByName('VALOR').AsCurrency, 'CARTÃO',StrToInt(CodPedido), 'ENTRADA',StrToInt(FMenu.LCODUSUARIO.Caption), 'CARTÃO', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                                       Then  ////informa que a atualização do financeiro foi efetivada
                                           ATUFINANC:=True
                                       Else//informa que a finalização do financeiro falhou
                                           ATUFINANC:=False;
                                   end;        
                               End;
                               If CBPagamento.Text = 'Banco'
                               Then Begin
                                   //Paulo 11/05/2011: adicionando a placa do veiculo no histórico
                                   if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
                                   begin
                                       If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCodConta,'Venda em Banco:' + XNUMDOC +' - Placa '+DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString+' - Cli. '+XTabela.FieldByName('NOMECLI').AsString, XTabela.FieldByName('VALOR').AsCurrency, 'PEDVENDA',StrToInt(CodPedido), 'ENTRADA',StrToInt(FMenu.LCODUSUARIO.Caption), 'BANCO', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                                       Then  ////informa que a atualização do financeiro foi efetivada
                                           ATUFINANC:=True
                                       Else//informa que a finalização do financeiro falhou
                                           ATUFINANC:=False;
                                   end
                                   else begin
                                       If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCodConta,'Fech. Venda em Banco:' + XNUMDOC + ' - Cli. '+XTabela.FieldByName('NOMECLI').AsString, XTabela.FieldByName('VALOR').AsCurrency, 'PEDVENDA',StrToInt(CodPedido), 'ENTRADA',StrToInt(FMenu.LCODUSUARIO.Caption), 'BANCO', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                                       Then  ////informa que a atualização do financeiro foi efetivada
                                           ATUFINANC:=True
                                       Else//informa que a finalização do financeiro falhou
                                           ATUFINANC:=False;
                                   end;
                               End;
                               //Paulo 30/10/2011: desconta do crédito do cliente
                               if CBPagamento.Text = 'Crédito'
                               then begin
                                   //Somente gera o financeiro se o combobox acima estiver desmarcado
                                   XHistorico:='Reg. de Operação de Crédito PDV '+XNUMDOC+' - Cli. '+XTabela.FieldByName('NOMECLI').AsString;
                                   //LANÇA CREDITO PARA CLIENTE
                                   If FiltraTabela(DMPESSOA.WCliente, 'vwcliente', 'COD_CLIENTE', XTabela.FieldByName('COD_CLIENTE').AsString, '')=False
                                   Then Begin
                                       ATUFINANC:=False;
                                       Exit;
                                   End;
                                   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '')=False
                                   Then Begin
                                       ATUFINANC:=False;
                                       Exit;
                                   End;
                                   //determina o valor a ser lançado como credito
                                   If XTabela.FieldByName('VALOR').AsCurrency<=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency
                                   Then Begin
                                       XVLRCREDITO:=XTabela.FieldByName('VALOR').AsCurrency;
                                   End
                                   Else Begin
                                       XVLRCREDITO:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency;
                                   End;
                                   //SE EXISTE
                                   DMPESSOA.TPessoa.Edit;
                                   DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency-XVLRCREDITO;
                                   DMPESSOA.TPessoa.Post;
                                   //Lança na tabela de credito
                                   LanCredito(XTabela.FieldByName('COD_PESSOA').AsInteger, XTabela.FieldByName('COD_PEDVENDA').AsInteger, 'PEDVENDA', 'CLI', 'S', XTabela.FieldByName('NUMPED').AsString, DateToStr(Date()), XTabela.FieldByName('VALOR').AsCurrency);
                                   //REGISTRO DE CREDITO SAIDA
                                   If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XVLRCREDITO, 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'S', XNUMDOC, Date(), '1')=True
                                   Then Begin//informa que a atualização do financeiro foi efetivada
                                       ATUFINANC:=True;
                                       //REGISTRO DE CREDITO ENTRADA
                                       If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XVLRCREDITO, 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'E', XNUMDOC, Date(), '1')=True
                                       Then Begin//informa que a atualização do financeiro foi efetivada
                                           ATUFINANC:=True;
                                           DMPESSOA.TransacPessoa.CommitRetaining;
                                       End
                                       Else Begin//informa que a finalização do financeiro falhou
                                           ATUFINANC:=False;
                                           DMPESSOA.TransacPessoa.RollbackRetaining;
                                       End;
                                       DMPESSOA.TransacPessoa.CommitRetaining;
                                   End
                                   Else Begin//informa que a finalização do financeiro falhou
                                       ATUFINANC:=False;
                                       DMPESSOA.TransacPessoa.RollbackRetaining;
                                   End;
                                   If XTabela.FieldByName('VALOR').AsCurrency>XVLRCREDITO
                                   Then Begin
                                       //CASO O CREDITO NAO TENHA SIDO SUFICIENTE TRABALHA NO CAIXA
                                       //REGISTRO DE CREDITO ENTRADA
                                       If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XTabela.FieldByName('VALOR').AsCurrency-XVLRCREDITO, 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'E', XNUMDOC, Date(), '1')=True
                                       Then Begin//informa que a atualização do financeiro foi efetivada
                                           ATUFINANC:=True;
                                           DMPESSOA.TransacPessoa.CommitRetaining;
                                       End
                                       Else Begin//informa que a finalização do financeiro falhou
                                           ATUFINANC:=False;
                                           DMPESSOA.TransacPessoa.RollbackRetaining;
                                       End;
                                   End;
                               end;

                           End
                           Else Begin
                               ATUFINANC:=True;
                           End;
                       End
                       Else Begin //efetua lançamento para compras
                         If CBGeraFinanceiro.Checked=False //compra
                         Then Begin

                           If XTabela.FieldByName('NUMDEV').AsString='' Then
                               XHistorico:='Fech. Compra '+XNUMDOC+' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString
                           Else
                               if NOT(XTabela.FieldByName('NUMDEV').AsString = 'OUT')THEN
                               	XHistorico:='Fch. Dev: '+XNUMDOC+'Venda: '+XTabela.FieldByName('NUMDEV').AsString+' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                         //	If (CBPagamento.Text='Carteira') or (CBPagamento.Text='Cartão')
                           If (CBPagamento.Text='Carteira')
                           Then Begin//LANÇAMENTO EM CAIXA PARA CARTEIRA
                               //Filtra pessoa para incluir no histórico
                               FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');
                               If lanCaixa(0, DateToStr(Date()), XCodConta, XHistorico,  XTabela.FieldByName('VALOR').AsCurrency, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento.Text, 'S', XNUMDOC, Date(), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           end;
                           //caso seja pagamento a cartão
                           if CBPagamento.Text='Cartão'
                           Then Begin  //faz lançamento apenas em banco por ser pagamento a cartão.
                                   If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCodConta,'Fech. compra por cartão:' + XNUMDOC + ' - Fornec. '+XTabela.FieldByName('COD_FORNEC').AsString, XTabela.FieldByName('VALOR').AsCurrency, 'CARTÃO',StrToInt(CodPedido), 'SAIDA',StrToInt(FMenu.LCODUSUARIO.Caption), 'CARTÃO', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                                   Then  ////informa que a atualização do financeiro foi efetivada
                                       ATUFINANC:=True
                                   Else//informa que a finalização do financeiro falhou
                                       ATUFINANC:=False;
                           end;
                           If CBPagamento.Text='Cheque'
                           Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
                               //Filtra pessoa para incluir no histórico
                               FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');
                               If LancChSai(XCodConta, XHistorico, Date(), XTabela.FieldByName('VALOR').AsCurrency, XCOD_CONTABANCO, 'PEDCOMPRA', XCodPedido, XTabela.FieldByName('numfiscal').AsString)=True
                               Then  //Se lançou
                                   ATUFINANC:=True
                               Else
                                   ATUFINANC:=FALSE;
                           end;
                           If (CBPagamento.Text='Chq. Terc.')
                           Then Begin//controla os lançamentos que devem ser feitos em caixa
                               //PERCORRE TODOS OS CHEQUES EFETUANDO RETIRADO DO MESMO DO CX
                               DMBANCO.TAlx.First;
                               While Not DMBANCO.TAlx.Eof do
                               Begin
                                   If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.TAlx.FieldByName('COD_MOVBANCO').AsString, '')=True
                                   Then Begin
                                       FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
                                       DMBANCO.TMovBanco.EDIT;
                                       DMBANCO.TMovBanco.FieldByName('FECH').AsString:='S';
                                       DMBANCO.TMovBanco.FieldByName('DTMOV').AsString:=DateToStr(Date());
                                       //LANÇAR VALOR DE ESTORNO PARA RETIRADA DA FOLHA DO CAIXA
                                       LanCaixa (-1, DateToStr(Date()),  DMBANCO.TMovBanco.FieldByName('cod_plncta').AsInteger, 'Pgto For: '+DMCONTA.WParP.FIELDBYNAME('NOME').AsString+' Chq.: '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'-'+ DateToStr(Date())+' De: '+DMBANCO.TChequeRec.FIELDBYNAME('EMITENTE').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'DCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'CHEQUE', 'S', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString, DMBANCO.TMovBanco.FieldByName('DTLANC').AsDateTime, '1');
                                   End;
                                   DMBANCO.TAlx.Next;
                               End;
                               //Se faltou dinheiro deve-se retirar do cx
                               If XTabela.FieldByName('VALOR').AsCurrency<XVlrCheque
                               Then Begin
                                   XHistorico:='Dif. '+XHistorico;
                                   LanCaixa (-1, DateToStr(Date()),  XCodConta, XHistorico+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVlrCheque-XTabela.FieldByName('VALOR').AsCurrency, 'CTAP', XCodConta, CBPagamento.Text, 'E', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTLANC').AsDateTime, '1');
                               End;
                               //Se Sobrou dinheiro deve-se retirar do cx
                               If XTabela.FieldByName('VALOR').AsCurrency>XVlrCheque
                               Then Begin
                                   XHistorico:='Dif. '+XHistorico;
                                   LanCaixa (-1, DateToStr(Date()),  XCodConta, XHistorico+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XTabela.FieldByName('VALOR').AsCurrency-XVlrCheque, 'CTAP', XCodConta, CBPagamento.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTLANC').AsDateTime, '1');
                               End;
                           End;
                           //Paulo 30/10/2011: desconta do crédito do cliente
                           if CBPagamento.Text = 'Crédito'
                           then begin
                               //LANÇA CREDITO PARA FORNECEDOR
                               If FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '')=False
                               Then Begin
                                   ATUFINANC:=False;
                                   Exit;
                               End;
                               If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsString, '')=False
                               Then Begin
                                   ATUFINANC:=False;
                                   Exit;
                               End;
                               //determina o valor a ser lançado como credito
                               If XTabela.FieldByName('VALOR').AsCurrency<=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency
                               Then Begin
                                   XVLRCREDITO:=XTabela.FieldByName('VALOR').AsCurrency;
                               End
                               Else Begin
                                   XVLRCREDITO:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency;
                               End;
                               XHistorico:='Reg. de Operação de Crédito PDC '+XNUMDOC+' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                               DMPESSOA.TPessoa.Edit;
                               DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency-XVLRCREDITO;
                               DMPESSOA.TPessoa.Post;
                               //Lança na tabela de credito
                               LanCredito(XTabela.FieldByName('COD_PESSOA').AsInteger, XTabela.FieldByName('COD_PEDCOMP').AsInteger, 'PEDCOMPRA', 'FOR', 'S', XTabela.FieldByName('NUMPED').AsString, DateToStr(Date()), XTabela.FieldByName('VALOR').AsCurrency);
                               //REGISTRO DE CREDITO ENTRADA
                               If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XVLRCREDITO, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento.Text, 'E', XNUMDOC, Date(), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                                   // REGISTRO DE CREDITO SAIDA
                                   If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XVLRCREDITO, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento.Text, 'S', XNUMDOC, Date(), '1')=True
                                   Then Begin//informa que a atualização do financeiro foi efetivada
                                       ATUFINANC:=True;
                                       DMPESSOA.TransacPessoa.CommitRetaining;
                                   End
                                   Else Begin//informa que a finalização do financeiro falhou
                                       ATUFINANC:=False;
                                       DMPESSOA.TransacPessoa.RollbackRetaining;
                                   End;
                                   DMPESSOA.TransacPessoa.CommitRetaining;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                                   DMPESSOA.TransacPessoa.RollbackRetaining;
                               End;
                               If XTabela.FieldByName('VALOR').AsCurrency>XVLRCREDITO
                               Then Begin
                                   //CASO O CREDITO NAO TENHA SIDO SUFICIENTE RETIRA DO CAIXA
                                   XHistorico:='Operação de Crédito PDC '+XNUMDOC+' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                                   // REGISTRO DE CREDITO SAIDA
                                   If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XTabela.FieldByName('VALOR').AsCurrency-XVLRCREDITO, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento.Text, 'S', XNUMDOC, Date(), '1')=True
                                   Then Begin//informa que a atualização do financeiro foi efetivada
                                       ATUFINANC:=True;
                                       DMPESSOA.TransacPessoa.CommitRetaining;
                                   End
                                   Else Begin//informa que a finalização do financeiro falhou
                                       ATUFINANC:=False;
                                       DMPESSOA.TransacPessoa.RollbackRetaining;
                                   End;
                               End;
                           end;
                         end
                         else begin
                             ATUFINANC:=True;
                         end;
                       End;
                   End
                   Else Begin//Não é à vista   Comentado esse trecho por Paulo 30/11/2011
                   	// **********
                   	// CADERNETA
                       // **********
                       If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='CADERNETA'
                       Then Begin // caso o pedido tenha sido feito CADERNETA deve-se lançar o valor Em Cta receber Caderneta
                           XHistorico:='Fech. Ped. Venda '+ XNUMDOC+' - Cli. '+XTabela.FieldByName('NOMECLI').AsString;
                           //SQL para verificar se o pedido já possui uma caderneta
                           DMCONTA.TCtaR.Close;
                           DMCONTA.TCtaR.SQL.Clear;
                           DMCONTA.TCtaR.SQL.Add('SELECT * FROM CTARECEBER WHERE ctareceber.tipogerador='+#39+'PEDVCAD'+#39+' AND ctareceber.cod_gerador=:CODGERADOR ');
                           DMCONTA.TCtaR.ParamByName('CODGERADOR').AsString:=XCodPedido;
                           DMCONTA.TCtaR.Open;
                           If DMCONTA.TCtaR.IsEmpty
                           Then Begin//Não foi encontrado caderneta, gerar nova
                               //If LancConta(XSQLTABELA, StrToInt(XCodPedido), XTabela.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, XTabela.FieldByName('VALOR').AsCurrency, 0, XCodConta, 0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, -1, XHistorico, XTabela.FieldByName('COD_FORMPAG').AsInteger, 'PCAD'+XTabela.FieldByName('NUMPED').AsString, 'PC', XTabela.FieldByName('DTPEDVEN').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDVEN').AsString, XTabela.FieldByName('numfiscal').AsString)=True
                               If LancConta(XSQLTABELA, StrToInt(XCodPedido), XTabela.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, XTabela.FieldByName('VALOR').AsCurrency, 0, XCodConta, 0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, -1, XHistorico, XTabela.FieldByName('COD_FORMPAG').AsInteger, 'PCAD'+XTabela.FieldByName('NUMPED').AsString, 'PC', XTabela.FieldByName('DTPEDVEN').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDCOMP').AsString, XTabela.FieldByName('numfiscal').AsString)=True
                               Then Begin
                                   ATUFINANC:=True;
                               End
                               Else Begin
                                   ATUFINANC:=False;
                               End;
                           End
                           Else Begin//foi encontrada caderneta, editar
                               DMCONTA.TParcCR.Close;
                               DMCONTA.TParcCR.SQL.Clear;
                               DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_CTARECEBER=:CODCTA');
                               DMCONTA.TParcCR.ParamByName('CODCTA').AsString:=DMCONTA.TCtaR.FIELDBYNAME('COD_CTARECEBER').AsString;
                               DMCONTA.TParcCR.Open;
                               DMCONTA.TCtaR.Edit;
                               DMCONTA.TCtaR.FieldByName('VALOR').AsCurrency:=XTabela.FieldByName('VALOR').AsCurrency;
                               DMCONTA.TCtaR.Post;
                               DMCONTA.TParcCR.Edit;
                               DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency:=XTabela.FieldByName('VALOR').AsCurrency;
                               DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency+DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency;
                               //armazena valor por extenso
                               Try
                                   FMenu.Extenso.Numero:=FormatFloat('###,##0.00', DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency);
                                   DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
                               Except
                               End;
                               DMCONTA.TCtaR.ApplyUpdates;
                               DMCONTA.TParcCR.ApplyUpdates;
                               DMCONTA.IBT.CommitRetaining;
                               ATUFINANC:=TRUE;
                           End;
                       End;
                       If (DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString<>'CADERNETA') AND (DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString<>'CREDITO')
                       Then Begin
                           If XSQLTABELA='PEDVENDA'
                           Then Begin//pedido de venda. Lançamento em contas a receber
                               If CBGeraFinanceiro.Checked=False
                               Then Begin
                                   //Paulo 08/06/2011: adicionando a placa do veiculo no histórico
                                   if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
                                   begin
                                       //Paulo 11/05/2011: Filtra produto
                                       FiltraTabela(DMSAIDA.TItemPV,'ITENSPEDVEN','COD_PEDVEN',IntToStr(XTabela.FieldByName('COD_PEDVENDA').AsInteger),'');
                                       FiltraTabela(DMESTOQUE.WSimilar,'VWSIMILAR','COD_ESTOQUE',IntToStr(DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger),'');
                                       XHistorico:='Fech. Ped. Venda '+XNUMDOC+' - Placa '+DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString+' - Cli. '+XTabela.FieldByName('NOMECLI').AsString;
                                   end
                                   else
                                       XHistorico:='Fech. Ped. Venda: '+XNUMDOC+' - Cli. '+XTabela.FieldByName('NOMECLI').AsString;
                                   //Somente gera o financeiro se o combobox acima estiver desmarcado

                                   // *******
                                   // CARTÃO
                                   // *******
                                   If CBPagamento.Text = 'Cartão'
                                   Then Begin
                                       // se o pagamento for á vista lanca apenas uma movimentação no banco jah fexada
                                       If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA'
                                       Then Begin
                                           If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCodConta,'Fech. Venda por cartão:' + XNUMDOC + 'Nº Cartão: ' + edNumeroCartao.Text + ' - Cli. '+XTabela.FieldByName('NOMECLI').AsString, XTabela.FieldByName('VALOR').AsCurrency, 'CARTÃO',StrToInt(CodPedido), 'ENTRADA',StrToInt(FMenu.LCODUSUARIO.Caption), 'CARTÃO', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                                           Then Begin  ////informa que a atualização do financeiro foi efetivada
                                               ATUFINANC:=True
                                           End
                                           Else Begin//informa que a finalização do financeiro falhou
                                               ATUFINANC:=False;
                                           End;
                                       End
                                       Else Begin
                                           If LancConta(XSQLTABELA, StrToInt(XCodPedido), XTabela.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, XTabela.FieldByName('VALOR').AsCurrency, 0, XCodConta, 0, -1, XHistorico, XTabela.FieldByName('COD_FORMPAG').AsInteger, XNUMDOC, 'R',  XTabela.FieldByName('DTPEDVEN').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDVEN').AsString, XTabela.FieldByName('numfiscal').AsString)=True
                                           Then Begin
                                               ATUFINANC:=True;
                                           End
                                           Else Begin
                                               ATUFINANC:=False;
                                           End;
                                       End;
                                   End
                                   Else Begin
                                       If LancConta(XSQLTABELA, StrToInt(XCodPedido), XTabela.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, XTabela.FieldByName('VALOR').AsCurrency, 0, XCodConta, 0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, -1, XHistorico, XTabela.FieldByName('COD_FORMPAG').AsInteger, XNUMDOC, 'P',  XTabela.FieldByName('DTPEDVEN').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDVEN').AsString, XTabela.FieldByName('numfiscal').AsString)=True
                                       Then Begin
                                           ATUFINANC:=True;
                                       End
                                       Else Begin
                                           ATUFINANC:=False;
                                       End;
                                   End;
                               End
                               Else Begin
                                   ATUFINANC := true;
                               End;
                           End//Pedido de compra, lançamento em contas a pagar
                           Else Begin
                             If CBGeraFinanceiro.Checked=False //compra
                             Then Begin
                               If XTabela.FieldByName('NUMDEV').AsString='' Then
                                   XHistorico:='Fech. Ped. Compra: '+XTabela.FieldByName('NUMPED').AsString
                               Else
                               	if NOT(XTabela.FieldByName('NUMDEV').AsString = 'OUT')THEN
                                   XHistorico:='Fch. Dev: '+XNUMDOC+'Venda: '+XTabela.FieldByName('NUMDEV').AsString+' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                               If LancConta(XSQLTABELA, StrToInt(XCodPedido),XTabela.FieldByName('COD_FORNEC').AsInteger, CBPagamento.Text, XTabela.FieldByName('VALOR').AsCurrency, 0, XCodConta, -1, 0, XHistorico, XTabela.FieldByName('COD_FORMPAG').AsInteger, 'PED'+XTabela.FieldByName('NUMPED').AsString, 'P',  XTabela.FieldByName('DTPEDCOMP').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDCOMP').AsString, XTabela.FieldByName('numfiscal').AsString)=True
                               Then Begin
                                   ATUFINANC:=True;
                               End
                               Else Begin
                                   ATUFINANC:=False;
                               End;
                              end
                              else begin
                                   ATUFINANC:=True;
                              end;
                           End;
                       End;
                   End;
               End;
         End
         Else Begin //não esncontrou forma de pagamento, processo inválido retornar informações
           ATUFINANC:=False;
         End;
       End;

       //Verifica se todas as atualizações foram possíveis
       If (AtualizaEst=True) And (ATUFINANC=True)
       Then Begin //então tenta-se confirmar operação
       	Try
           	//FECHA PEDIDO
               XTabela.Edit;
               XTabela.FieldByName('SITUACAO').AsString:='FECHADO';
               XTabela.FieldByName('COBRANCA').AsString:=CBPagamento.Text;
               XTabela.FieldByName('DTFECH').AsString:=DTFECH;
               XTabela.Post;
               If CBGeraFinanceiro.Checked=False
               Then Begin
                   XTabela.Edit;
                   XTabela.FieldByName('FATURADO').AsString:='1';
                   XTabela.Post;
               End
               Else Begin
                   XTabela.Edit;
                   XTabela.FieldByName('FATURADO').AsString:='0';
                   XTabela.Post;
               End;

               //EFETUA TRANSAÇÕES
               XTransaction.CommitRetaining;
               DMCAIXA.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;
               DMFINANC.Transaction.CommitRetaining;
               DMBANCO.IBT.CommitRetaining;
               DMSAIDA.IBT.CommitRetaining;

               Mensagem('   NOTIFICAÇÃO   ','PEDIDO FECHADO COM SUCESSO!','',1,1,FALSE,'I');
               FechaPedido:=True;

               // LOCALIZANDO A DESCRIÇÃO DA FORMA DE PAGAMENTO DO PEDIDO DE VENDA
               FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',XTabela.FieldByName('COD_FORMPAG').AsString,'');

               // a gaveta soh abre numa venda se o pagamento for À VISTA ou o pagamento for do tipo ENTRADA/30/60....
               If (DMFINANC.TFormPag.FieldByName('descricao').AsString = 'À VISTA')
               Then Begin
                   //Abre gaveta
                   ecfOpenGaveta;
               End;

               //Atualiza pedidos na tela de consulta
			   //Seleciona apenas pedidos pertencentes a loja
              ExecutaLiberaDados;
           Except
				Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar o pedido, os dados serão mantidos e o pedido aberto. Reinicie o sistema e tente novamente!', 'Ocorreram problemas ao atualizar estoque ou a gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
				DMCAIXA.IBT.RollbackRetaining;
				XTransaction.RollbackRetaining;
               DMBANCO.IBT.RollbackRetaining;
               DMSAIDA.IBT.RollbackRetaining;
               MDO.Transac.RollbackRetaining;
           End;
       End
       Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar o pedido, os dados serão mantidos e o pedido aberto.', 'Ocorreram problemas ao atualizar estoque ou a gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
           DMCAIXA.IBT.RollbackRetaining;
			XTransaction.RollbackRetaining;
           DMBANCO.IBT.RollbackRetaining;
           DMSAIDA.IBT.RollbackRetaining;
           MDO.Transac.RollbackRetaining
       End;
   End
   Else Begin //else de filtragem de pedido
       FechaPedido:=false;
   End;
End;

//Função utilizada para Calcular e dividir o desconto proporcialmente da NF entre todos os produtos
Procedure TFPedidoPadrao.CalcDescProdutosNf;
Var
	XTotalDescont, XPercDesconto: Real;
Begin
    XTotalDescont:=0;
    //Soma Total de Produtos Para NF sem os descontos
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    If XSQLTABELA='PEDVENDA'
    Then Begin
        DMESTOQUE.Alx.SQL.Add(' Select sum(itenspedven.valortotal) as TOTAL from itenspedven where itenspedven.cod_pedven=:codigo ');
    End;
    If XSQLTABELA='PEDCOMPRA'
    Then Begin
        DMESTOQUE.Alx.SQL.Add(' Select sum(itenspedc.valortotal) as TOTAL from itenspedc where itenspedc.cod_pedcompra=:codigo ');
        //Verifica o Total de produto para a nota com desconto;
        XTotalProdComDesc:=DMENTRADA.TPedC.FieldByName('valor').AsCurrency;
    End;

    DMESTOQUE.Alx.ParamByName('codigo').AsString := XCodPedido;
    DMESTOQUE.Alx.Open;
    If not DMESTOQUE.Alx.IsEmpty
    Then Begin
    	If XSQLTABELA='PEDVENDA' Then
       	XTotalProdComDesc:=DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency-EdDescMoeda.ValueNumeric;        //Verifica o Total de produto para a nota com desconto;
    	If XSQLTABELA='PEDCOMPRA' Then
       	XTotalProdComDesc:=DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency-EdDescMoeda.ValueNumeric;        //Verifica o Total de produto para a nota com desconto;

       XTotalProdSemDesc:=DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency;
    End;

    //Verifica diferença entre o total de produtos sem descontos para o com descontos para ratear diferença entre os produtos
    If XTotalProdSemDesc<>XTotalProdComDesc
    Then Begin
		CalcPercent(0, XTotalProdSemDesc-XTotalProdComDesc, XTotalProdSemDesc , 'D');
		XPercDesconto:=AlxPercento;
       XTotalDescont:=XTotalProdSemDesc-XTotalProdComDesc;
    	If XSQLTABELA='PEDVENDA'
       Then Begin
           DMSAIDA.TItemPV.Close;
       	DMSAIDA.TItemPV.sql.Clear;
           DMSAIDA.TItemPV.SQL.Add(' Select * from itenspedven where itenspedven.cod_pedven=:codigo order by itenspedven.valortotal ');
           DMSAIDA.TItemPV.ParamByName('codigo').AsString := XCodPedido;
           DMSAIDA.TItemPV.Open;
           DMSAIDA.TItemPV.Last;
           DMSAIDA.TItemPV.First;
           While Not DMSAIDA.TItemPV.Eof do
           Begin
               If DMSAIDA.TItemPV.RecNo=DMSAIDA.TItemPV.RecordCount
               Then Begin
               	DMSAIDA.TItemPV.Edit;
               	DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency:=XTotalDescont;
                   DMSAIDA.TItemPV.Post;
               End
               Else Begin
               	DMSAIDA.TItemPV.Edit;
               	DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency:=(DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency*XPercDesconto)/100;
                   DMSAIDA.TItemPV.Post;
               End;
               XTotalDescont:=XTotalDescont-DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency;
               DMSAIDA.TItemPV.Next;
           End;
           Try
               DMSAIDA.IBT.CommitRetaining;
           Except
               DMSAIDA.IBT.RollbackRetaining;
           End;
       End;

    	If XSQLTABELA='PEDCOMPRA'
       Then Begin
           DMENTRADA.TItemPC.Close;
           DMENTRADA.TItemPC.sql.Clear;
           DMENTRADA.TItemPC.SQL.Add('  Select * from  itenspedc where itenspedc.cod_pedcompra=:codigo order by itenspedc.valortotal ');
           DMENTRADA.TItemPC.ParamByName('codigo').AsString := XCodPedido;
           DMENTRADA.TItemPC.Open;
           DMENTRADA.TItemPC.Last;
           DMENTRADA.TItemPC.First;
           While Not DMENTRADA.TItemPC.Eof do
           Begin
               If DMENTRADA.TItemPC.RecNo=DMENTRADA.TItemPC.RecordCount
               Then Begin
               	DMENTRADA.TItemPC.Edit;
               	DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency:=XTotalDescont;
                   DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency:=DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency-((DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency*XPercDesconto)/100);
                   DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency:=DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency-XTotalDescont;
               	DMENTRADA.TItemPC.Post;
               End
               Else Begin
               	DMENTRADA.TItemPC.Edit;
               	DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency:=(DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency*XPercDesconto)/100;
                   DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency:=DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency-((DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency*XPercDesconto)/100);
                   DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency:=DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency-((DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency*XPercDesconto)/100);
               	DMENTRADA.TItemPC.Post;
               End;
               XTotalDescont:=XTotalDescont-DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency;
               DMENTRADA.TItemPC.Next;
           End;
           Try
               DMENTRADA.IBT.CommitRetaining;
           Except
               DMENTRADA.IBT.RollbackRetaining;
           End;
       End;
    End
    Else Begin
		 //ZERA OS DESCONTOS
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        If XSQLTABELA='PEDVENDA'
        Then Begin
            DMESTOQUE.Alx.SQL.Add(' UPDATE itenspedven SET itenspedven.DESCNF=0 where itenspedven.cod_pedven=:codigo ');
        End;
        If XSQLTABELA='PEDCOMPRA'
        Then Begin
            DMESTOQUE.Alx.SQL.Add(' UPDATE itenspedc SET itenspedc.DESCNF=0 where itenspedc.cod_pedcompra=:codigo ');
        End;
        DMESTOQUE.Alx.ParamByName('codigo').AsString := XCodPedido;
        DMESTOQUE.Alx.ExecSQL;
        DMESTOQUE.TransacEstoque.CommitRetaining;
    End;
End;

//Filtra Tabela Slave e calcula total
Procedure TFPedidoPadrao.FiltraSlave;
Begin
   XTOTST:=0;
   //Zeramos as variáveis
   XVLRTOTALDESP := 0;
   XVLRTOTALPROD:=0;
   XVLRTOTALFRETE:=0;
   XVLRTOTALOUTROS:=0;
   XVLRTOTALIPI:=0;
   XVLRTOTALICMSSUBSTITUICAO:=0;

   If XSQLTABELA='PEDVENDA'
   Then Begin
   	//RECALCULA DESCONTOS DO TOTAL DO PEDIDO REPASSANDO COMO DESCONTOSNF A TODOS OS PRODUTOS
       CalcDescProdutosNf;
   	//RECALCULA ICMS SUBSTITUIÇÃO TRIBUTÁRIA CONFORME CONFIGURAÇÕES
       ReturnDadosIcmsSubsituicao;

   	/////////////////////////////////
   	//01 - TOTAIS DE ITENS DE PRODUTO
       /////////////////////////////////
		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add(' Select Sum(itenspedven.valortotal) as VALORTOTAL, ');
		DMESTOQUE.TSlave.SQL.Add(' SUM(itenspedven.vlripi) as VALORIPI, sum(itenspedven.vlricmssubs) as VALORICMSST,  ');
       DMESTOQUE.TSlave.SQL.Add(' SUM(itenspedven.qtdeprod) AS QTD, count(itenspedven.qtdeprod) AS QTDITEM, SUM(itenspedven.comissao) AS COMISSAO From itenspedven');
		DMESTOQUE.TSlave.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA)');
		DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsString := XCodPedido;
		DMESTOQUE.TSlave.Open;
       //TOTAL DE PRODUTO
       XVLRTOTALPROD := DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
       //TOTAL DE IPI
       XVLRTOTALIPI := DMESTOQUE.TSlave.FieldByName('VALORIPI').AsCurrency;
       EdValorIpi.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORIPI').AsCurrency;
       //TOTAL ICMS SUBSTITUICAO
       //Paulo 05/09/2011: Para venda não usa vlr substituido
       If (fmenu.XSimplesRemessa=False) and (fmenu.XRemessaGarantia=False) and (FMenu.XDevolucao=False)  and (FMenu.XOutrosFisc=False)and (FMenu.XComplementacao = False)then
       Begin
           If XUfOrigem<>XUfDestino
           Then Begin
               XVLRTOTALICMSSUBSTITUICAO := DMESTOQUE.TSlave.FieldByName('VALORICMSST').AsCurrency;
               EdValoIcmsSubstituicao.ValueNumeric:= DMESTOQUE.TSlave.FieldByName('VALORICMSST').AsCurrency;
           End
           Else Begin
               XVLRTOTALICMSSUBSTITUICAO := 0;
               EdValoIcmsSubstituicao.ValueNumeric:=0;
           End;
       End;


       /////////////////////////////////////////////
       //02 - TOTAIS DE ITENS DE DESPESAS ADICIONAIS
       ////////////////////////////////////////////
   	DMESTOQUE.Alx2.Close;
   	DMESTOQUE.Alx2.SQL.Clear;
   	DMESTOQUE.Alx2.SQL.Add('select Sum(despadic.vlrtotfin) AS TOT From despadic Where (despadic.gerador='+#39+'PEDVENDA'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
		DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsString:=XCodPedido;
		DMESTOQUE.Alx2.Open;
   	XVLRTOTALDESP:=DMESTOQUE.Alx2.FieldByName('TOT').AsCurrency;

       ////////////////////////////////
       //03 - VERIFICA VALORES DE FRETE
       ////////////////////////////////
       XVLRTOTALFRETE:=EdValorFrete.ValueNumeric;

       ///////////////////////
       //04 - VALOR DE OUTROS
       ///////////////////////
       XVLRTOTALOUTROS:=EdValorOutros.ValueNumeric;


   End
   Else Begin
   	/////////////////////////////////
   	//01 - TOTAIS DE ITENS DE PRODUTO
       /////////////////////////////////
		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add(' Select Sum(itenspedc.valortotal) as VALORTOTAL, SUM(itenspedC.qtdeprod) AS QTD, ');
       DMESTOQUE.TSlave.SQL.Add(' sum(itenspedc.vlricmssubs) as VALORICMSST , SUM(itenspedc.vlripi) as VALORIPI, count(itenspedC.qtdeprod) AS QTDITEM  From itenspedc');
		DMESTOQUE.TSlave.SQL.Add(' Where (itenspedc.cod_pedcompra = :CODPEDC) ');
		DMESTOQUE.TSlave.ParamByName('CODPEDC').AsString:=XCodPedido;
		DMESTOQUE.TSlave.Open;
       //TOTAL DE PRODUTO
       XVLRTOTALPROD := DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
       //TOTAL DE IPI
       XVLRTOTALIPI := DMESTOQUE.TSlave.FieldByName('VALORIPI').AsCurrency;
       EdValorIpi.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORIPI').AsCurrency;
       //TOTAL ICMS SUBSTITUICAO
       XVLRTOTALICMSSUBSTITUICAO := EdValoIcmsSubstituicao.ValueNumeric;

       ////////////////////////////////
       //03 - VERIFICA VALORES DE FRETE
       ////////////////////////////////
       XVLRTOTALFRETE:=EdValorFrete.ValueNumeric;

       ///////////////////////
       //04 - VALOR DE OUTROS
       ///////////////////////
       XVLRTOTALOUTROS:=EdValorOutros.ValueNumeric;
   End;
   // - 16/02/2009:   INFORMA QTD DE ITEMS
   If DMESTOQUE.TSlave.FieldByName('QTD').AsString='' Then
		LQTDPROD.Caption:='Qtd L: 0    Qtd T: 0    SubTotal: R$ 0,00'
   Else
   	LQTDPROD.Caption:='Qtd L: '+DMESTOQUE.TSlave.FieldByName('QTDITEM').AsString+'    Qtd T: '+DMESTOQUE.TSlave.FieldByName('QTD').AsString+'    SubTotal: '+FormatFloat('0.00', DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency);

   LQTDPROD.Repaint;

 	//ATRIBUI TOTAL VENDIDO SEM DESCONTO À VARIAVEL
   XVLRTOTAL:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency+XVLRTOTALDESP+XVLRTOTALFRETE+XVLRTOTALOUTROS+XVLRTOTALIPI+XVLRTOTALICMSSUBSTITUICAO;
	EdValorPed.ValueNumeric:=XVLRTOTAL-EdDescMoeda.ValueNumeric;
   CalcComisTotVend;//Calcula Comissão sobre o total da venda e sobre a aliquota correta
   //Aplica os descontos
   EdDescMoeda.ValueNumeric:=XVLRTOTAL-EdValorPed.ValueNumeric;

	If XSQLTABELA='PEDVENDA'
   Then Begin//Se trabalhando com pedidos de venda
   	//INSERE COMANDOS PARA FILTRAR
 		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add(' Select itenspedven.cod_itenspedven, lote.numero, itenspedven.cod_lote, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, itenspedven.vlricmssubs, ItensPedVen.COMISSAO, ');
		DMESTOQUE.TSlave.SQL.Add(' itenspedven.aliqicms, itenspedven.vlricms, cst.cod_sit_trib as CST, itenspedven.cfop, itenspedven.vlripi, ');
		DMESTOQUE.TSlave.SQL.Add(' itenspedven.descpro, itenspedven.DESCNF as DESCONTONF, itenspedven.qtddev AS QTDDEV, itenspedven.cod_funcionario, itenspedven.qtdemb, itenspedven.unidemb, itenspedven.qtdnaemb, pessoa.nome, ');
       DMESTOQUE.TSlave.SQL.Add('  itenspedven.valunit, subproduto.descricao, subproduto.marca, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS CONTRINT, itenspedven.data, itenspedven.operacao ');
		DMESTOQUE.TSlave.SQL.Add(' From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add('  left join cst on itenspedven.cod_cst = cst.cod_cst ');
		DMESTOQUE.TSlave.SQL.Add(' left join lote on itenspedven.cod_lote = lote.cod_lote ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
		DMESTOQUE.TSlave.SQL.Add(' Where (itenspedven.cod_pedven = :CODPEDVENDA)');
		DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsString:=XCodPedido;
       DMESTOQUE.TSlave.SQL.Add('order by itenspedven.cod_itenspedven desc');
		DMESTOQUE.TSlave.Open;

       //FILTRA DESPESAS
   	DMESTOQUE.TDesp.Close;
   	DMESTOQUE.TDesp.SQL.Clear;
       DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'PEDVENDA'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
   	DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=StrToInt(XCodPedido);
       DMESTOQUE.TDesp.SQL.Add('order by despadic.cod_despadic desc');
		DMESTOQUE.TDesp.Open;

      
   End
   Else Begin
   	//INSERE COMANDOS PARA FILTRAR
		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add(' Select itenspedc.cod_itenspedc, itenspedc.cfop, itenspedc.cod_lote, itenspedc.vlripi, itenspedc.cod_pedcompra, itenspedc.vlricmssubs, itenspedc.cod_estoque, itenspedc.COD_UNIDADE,');
		DMESTOQUE.TSlave.SQL.Add(' itenspedc.qtdeprod, itenspedc.QTDEEXP, itenspedc.qtdest, ItensPedc.valortotal, itenspedc.descpro, itenspedc.valunit, itenspedc.descnf as DESCONTONF, ');
		DMESTOQUE.TSlave.SQL.Add(' itenspedc.aliqicms, itenspedc.vlricms, itenspedc.aliqipi, itenspedc.vlripi, itenspedc.obs, itenspedc.AGRUP,cst.cod_sit_trib as CST, ');
		DMESTOQUE.TSlave.SQL.Add(' subproduto.descricao, subproduto.marca, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS CODPRODFABR ');
		DMESTOQUE.TSlave.SQL.Add(' From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add(' left join lote on itenspedc.cod_lote = lote.cod_lote ');
		DMESTOQUE.TSlave.SQL.Add(' left join cst on itenspedc.cod_cst = cst.cod_cst ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add(' Where (itenspedc.cod_pedcompra = :CODPEDCOMPRA) and ((itenspedc.consumo <> ''1'') or (itenspedc.consumo is null))');
		DMESTOQUE.TSlave.ParamByName('CODPEDCOMPRA').AsString:=XCodPedido;
       DMESTOQUE.TSlave.SQL.Add(' order by itenspedc.cod_itenspedc desc');
		DMESTOQUE.TSlave.Open;

       //Paulo 23/09/2011: FILTRA CONSUMO
   	DMESTOQUE.TDesp.Close;
   	DMESTOQUE.TDesp.SQL.Clear;
       DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'CONSUMOPC'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
		DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=StrToInt(XCodPedido);
       DMESTOQUE.TDesp.SQL.Add('order by despadic.cod_despadic desc');
		DMESTOQUE.TDesp.Open;
   End;
End;


//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFPedidoPadrao.EscreveLabels;
Begin
  // if XImpI<>1 then
  // begin
	     if XUsoConsumo <> 'Consumo' then
        begin
           //Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
           If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
               Exit;

           //Filtra tabela de produto de acordo com o produto selecionada em fproduto
           //If FiltraTabela(DMEstoque.TProduto, 'PRODUTO', 'COD_PRODUTO', DMEstoque.WSimilar.FieldByName('COD_PRODUTO').AsString, '')=False Then
           //	Exit;

           //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
           If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
               Exit;

           // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
           XCOD_ESTOQUE := DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       end
       else begin
           If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_SUBPROD', DMEstoque.TSubProd.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
               Exit;

           XCOD_ESTOQUE := DMEstoque.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
       end;

       XESTOQUELOTE := XCOD_ESTOQUE;
 //  end ;


   // seleciona os dados da loja
   FiltraTabela(DMMACS.TLoja, 'LOJA','COD_LOJA', FMenu.LCODLOJA.Caption,'');

   LInformaReducaoBase.Caption:='';

   //Se selecionado um produto diferente daquele que estava selecionado deve-se informar novo valor unitario
   XVLRUNIT:=0;
   If XSQLTABELA='PEDVENDA' //As regras abaixo somente devem ser executadas em caso de venda
   Then Begin
       // se o campo TIPOVENDA for igual a 1, a venda esta configurada para valores a vista
       If DMMACS.TLoja.FieldByName('tipovenda').AsString = '0'
       Then Begin
           //caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
           If (EDQuantidade.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
           Then Begin
               If EDFORMPAG.Text='À VISTA'
               Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
                   //Se for para utilizar uma comissão diferente para cada produto
                   If DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1' Then
                       EdComiss.ValueNumeric:=DMEstoque.TEstoque.FieldByName('CVVPROAT').AsCurrency;
                   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                   Then Begin
                       If DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency>0 Then
                           XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency-(DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency*DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100
                       Else
                           XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency;
                   End
                   Else Begin
                       XVLRUNIT:=(DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency);
                   End
               End
               Else Begin //A venda esta sendo a prazo então o preço de venda deve ser no atacado a prazo
                   //Se for para utilizar uma comissão diferente para cada produto
                   If DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1' Then
                       EdComiss.ValueNumeric:=DMEstoque.TEstoque.FieldByName('CVPPROAT').AsCurrency;
                   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                   Then Begin
                       If DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency>0 Then
                           XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency-(DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency*DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100
                       Else
                           XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency;
                   End
                   Else Begin
                       XVLRUNIT:=(DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
                   End;
               End;
           End
           Else Begin//caso ocorra esta condição significa que o produto esta com quantidade igual varejo e deve ser vendido em preço de varejo
               If EDFORMPAG.Text='À VISTA'
               Then Begin //A venda esta sendo a vista então o preço de venda deve ser no Varejo a vista
                   //Se for para utilizar uma comissão diferente para cada produto
                   If DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1' Then
                       EdComiss.ValueNumeric:=DMEstoque.TEstoque.FieldByName('CVVPROVAR').AsCurrency;

                   If  DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES' Then
                       XVLRUNIT:=(DMEstoque.WSimilar.FieldByName('VLRBONIFIC').AsCurrency)
                   Else
                       XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARV').AsCurrency;
               End
               Else Begin //A venda esta sendo a prazo então o preço de venda deve ser no Varejo a prazo
                   //Se for para utilizar uma comissão diferente para cada produto
                   If DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1' Then
                       EdComiss.ValueNumeric:=DMEstoque.TEstoque.FieldByName('CVPPROVAR').AsCurrency;

                   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                   Then Begin
                       If DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency>0 Then
                           XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency-(DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency*DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100
                       Else
                           XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency;
                   End
                   Else Begin
                       XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency;
                   End;
               End;
           End;
           //Se cliente for atacadista
           If XAtacadista=True
           Then Begin
               If EDFORMPAG.Text='À VISTA'
               Then Begin
                   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                   Then Begin
                       If DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency>0 Then
                           XVLRUNIT:=(DMEstoque.TEstoque.FieldByName('VENDATAV').AsCurrency*DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100
                       Else
                           XVLRUNIT:=DMEstoque.TEstoque.FieldByName('VENDATAV').AsCurrency;
                   End
                   Else Begin
                       XVLRUNIT:=DMEstoque.TEstoque.FieldByName('VENDATAV').AsCurrency;
                   End;
               End
               Else Begin
                   XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendvarv').AsCurrency;
                   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                   Then Begin
                       If DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency>0 Then
                           XVLRUNIT:=(DMEstoque.TEstoque.FieldByName('VENDATAP').AsCurrency*DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100
                       Else
                           XVLRUNIT:=DMEstoque.TEstoque.FieldByName('VENDATAP').AsCurrency;
                   End
                   Else Begin
                       XVLRUNIT:=DMEstoque.TEstoque.FieldByName('VENDATAP').AsCurrency;
                   End;
               End;
           end;
       End
       // SE O CAMPO "TIPOVENDA" ESTIVER VALENDO "0", A VENDA ESTÁ CONFIGURADA PARA VALOR A PRAZO
       Else Begin
           If (EDQuantidade.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
           Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
               //Se for para utilizar uma comissão diferente para cada produto
               If DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1' Then
                   EdComiss.ValueNumeric:=DMEstoque.TEstoque.FieldByName('CVPPROAT').AsCurrency;
               If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
               Then Begin
                   If DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency>0 Then
                       XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency-(DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency*DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100
                   Else
                       XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency;
               End
               Else Begin
                   XVLRUNIT:=(DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
               End;
           End
           Else Begin
               //Se for para utilizar uma comissão diferente para cada produto
               If DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1' Then
                   EdComiss.ValueNumeric:=DMEstoque.TEstoque.FieldByName('CVPPROVAR').AsCurrency;

               If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
               Then Begin
                   If DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency>0 Then
                       XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency-(DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency*DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100
                   Else
                       XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency;
               End
               Else Begin
                   XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency;
               End;
           End;

           //Se cliente for atacadista
           If XAtacadista=True
           Then Begin
               XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendvarv').AsCurrency;
               If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
               Then Begin
                   If DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency>0 Then
                       XVLRUNIT:=(DMEstoque.TEstoque.FieldByName('VENDATAP').AsCurrency*DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100
                   Else
                       XVLRUNIT:=DMEstoque.TEstoque.FieldByName('VENDATAP').AsCurrency;
               End
               Else Begin
                   XVLRUNIT:=DMEstoque.TEstoque.FieldByName('VENDATAP').AsCurrency;
               End;
           End;
       End;
       //Passa valores de impostos
       //Informa Cst
	    If FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST', DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString, '')
       Then Begin
       	EdImpCST.Text:=DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;
           XCodCst:=DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;
       End
       Else Begin
           EdImpCST.Text:='';
           XCodCst:=-1;
       End;
       //Informa aliquota de Icms
       EdimpIcms.Text:=DMESTOQUE.TEstoque.FieldByName('icms').Text;
       //Informa valores de IPI
		If DMMACS.TEmpresa.FieldByName('INDUSTRIA').AsString = '1'
       Then Begin //se empresa configurada para industria determina que calcula ipi
           EdImpIpi.ValueNumeric:=DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency;
           EdImpVlrIpi.ValueNumeric:=(EDTotal.ValueNumeric*EdImpIpi.ValueNumeric)/100;
       End;
       If DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency>0 Then
           LInformaReducaoBase.Caption:='R.B. '+FormatFloat('0.00', DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency)+'%';
   End
   Else Begin
   	If (FMenu.XOutrosEnt=true) and (FMenu.XNotaEntrada=True)
       Then Begin
           //Informa Cst
           If FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST', DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString, '')
           Then Begin
               EdImpCST.Text:=DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;
               XCodCst:=DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;
           End
           Else Begin
               EdImpCST.Text:='';
               XCodCst:=-1;
           End;
           //Informa aliquota de Icms
           EdimpIcms.Text:=DMESTOQUE.TEstoque.FieldByName('icms').Text;

       End;
       //Informa Cst
	    If FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST', DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString, '') Then
           LCstCadastrado.Caption:=DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString
       Else
           LCstCadastrado.Caption:='';

   	If DMESTOQUE.TSubProd.FieldByName('USOCONSUMO').AsString='1' Then
       	MessageDlg('Material de Uso ou consumo próprio da empresa.', mtWarning, [mbOK], 0);
   	If DMESTOQUE.TSubProd.FieldByName('USOCONSUMO').AsString='2' Then
       	MessageDlg('Lançando produto de frete (Aquisição de transporte).', mtWarning, [mbOK], 0);

       XVLRUNIT:=DMEstoque.TEstoque.FieldByName('VALUNIT').AsCurrency;//INSERE VALOR UNITARIO DE COMPRA DO PRODUTO
   End;
   XVLRPRODBD:=XVLRUNIT;//INSERE VALOR UNITARIO DE VENDA DO PRODUTO PARA POSTERIOR COMPROVAÇÃO
   EDValUnit.ValueNumeric:=XVLRUNIT;
	//Passa os valores do produto selecionado para as labels
	EDCodInterno.Text:=DMEstoque.TSubProd.FieldByName('CONTRINT').AsString;
	EDCodFab.Text:=DMEstoque.TSubProd.FieldByName('CODPRODFABR').AsString;
	EDCodBarra.Text:=DMEstoque.TSubProd.FieldByName('CODBARRA').AsString;

   LSimilar.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
	EdLocal.Text:=DMEstoque.TSubProd.FieldByName('LOCALESTANTE').AsString;
   LMarca.Caption:=DMEstoque.TSubProd.FieldByName('Marca').asstring;
   LLocal.Caption:=DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring;
   LEstoque.Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency);

   // se utiliar conversão unitária de venda
   if (XConvUnitVenda) or (DMMacs.Tloja.FieldByName('CONVERTUNIDFERRO').AsString = '1')
   then begin

       // - 27/01/2009: FILTRA UNIDADE DE CONVERSÃO DO PRODUTO
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.SQL.Clear;
       DMESTOQUE.Alx2.SQL.Add('select * from CONVUNID');
       DMESTOQUE.Alx2.SQL.Add('where (CONVUNID.COD_UNIDSAI = '+DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsString+' and CONVUNID.COD_UNIDENT = '+DMEstoque.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString+
                                ') or (CONVUNID.COD_UNIDSAI = '+DMEstoque.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString+' and CONVUNID.COD_UNIDENT = '+DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsString+')');
       DMESTOQUE.Alx2.Open;

       // - 27/01/2009: FILTRA TABELA UNIDADE PELO CODIGO DE UNIDADE DE VENDA DO PRODUTO
       FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsString, '');

       // - 27/01/2009: FILTRA TABELA UNIDADE PELOS CODIGO DE UNIDADE DE VENDA E COMPRA DO PRODUTO
       DMESTOQUE.Alx3.Close;
       DMESTOQUE.Alx3.SQL.Clear;
       DMESTOQUE.Alx3.SQL.Add('select * from unidade');
       DMESTOQUE.Alx3.SQL.Add('where unidade.cod_unidade = '+DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsString);

        // - 27/01/2009:   SE FOI ENCONTRADA UNIDADE DE CONVERSÃO PRAS UNIDADES DO PRODUTO FILTRAR UNIDADE DE COMPRA
       if not DMESTOQUE.Alx2.IsEmpty
       then begin
            DMESTOQUE.Alx3.SQL.Add(' or unidade.cod_unidade = '+DMEstoque.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString);
            try
                XVlrConv := StrToFloat(DMESTOQUE.Alx2.FieldByName('QTDCONVERT').AsString);
                if DMESTOQUE.Alx2.FieldByName('COD_UNIDENT').AsInteger = DMEstoque.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger then
                    XConvVlr := True
                else
                    XConvVlr := False;

            Except
                XVlrConv := 1;
            end;
       end
       else begin
           XVlrConv := 1; // - 28/01/2009: setar valor de conversão como 1 p/ nao dar problemas nas conversões casso ocorrer um erro
       end;
       DMESTOQUE.Alx3.Open;

       // - 27/01/2009: DEIXA OS DOIS COMBOBOX COM UNIDADE DE VENDA

        // - 05/02/2009:  deixar conversao ativa
       XConvAtivo := True;
       FPConversaoUnitaria.Color := $00FFECEC;
       FPConversaoUnitaria.Title := 'Conversão Unitária';
       FPConversaoUnitaria.Refresh;
   end;

   if (XConvUnitEmb)or (DMMacs.Tloja.FieldByName('CONVERTUNIDVEND').AsString = '1')
   then begin
       DMESTOQUE.TUnidade.Close;
       DMESTOQUE.TUnidade.SQL.Clear;
       DMESTOQUE.TUnidade.SQL.Add('select * from unidade');
       DMESTOQUE.TUnidade.Open;

       CBUnidEmb.KeyValue := DMEstoque.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger;

       if EDQuantidade.ValueNumeric = 0
       then begin
           edQntEmb.ValueNumeric := 1;
           edQntUnitEmb.ValueNumeric := 1;
       end;


       // - 27/01/2009: FILTRA PELA TABELA UNIDADE

       DMESTOQUE.Alx3.Close;
       DMESTOQUE.Alx3.SQL.Clear;
       DMESTOQUE.Alx3.SQL.Add('select * from unidade');
       DMESTOQUE.Alx3.Open;

       cbUnidVendaFixo.KeyValue := DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger;
   end;

   //PASSA ALGUNS VALORES P/ GARANTIR QUE ELES SERAO INSERIDOS MESMO SEM PASSAR PELA TELA DE ATU
   XIPI:=DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency;
   XICMS:=DMEstoque.TEstoque.FieldByName('ICMS').AsCurrency;
   XFRETE:=DMEstoque.TEstoque.FieldByName('FRETE').AsCurrency;
   XEMB:=DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsCurrency;
   LBonif.Caption:=DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsString;

   // Djonathan 13/11/2009 : COLOCADO CONDICAO PARA CONFERIR SE DEVE OU NAO MOSTRAR CUSTO EM PEDIDO DE VENDA
   if (DMMACS.TLoja.FieldByName('MOSTRACUSTOPEDV').AsString = '1') THEN
   	If (DMEstoque.TEstoque.FieldByName('VALREP').AsString<>'') and (DMEstoque.TEstoque.FieldByName('COEFDIV').AsString<>'') Then
   		LCustoTot.Caption:=FormatFloat('0.00', DMEstoque.TEstoque.FieldByName('VALREP').AsCurrency/DMEstoque.TEstoque.FieldByName('COEFDIV').AsCurrency)
   	Else
       	LCustoTot.Caption:='Nulo'
   Else
   	LCustoTot.Caption := ' ';

   //VERIFICA SE A COMISSAO PARA ITENS PEDVENDA DEVE CONTINUAR SENDO DO CADASTRO DE PRODUTOS OU DEVE SER PEGO DA TABELA FUNCIONARIOS
   if (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='0') and (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
   Then Begin
   	//FILTRA VENDEDOR PARA CALCULAR A COMISSAO DO VENDEDOR
   	If FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', '', ' COD_FUNCIONARIO = '+#39+INTTOSTR(XCodVendedor)+#39+' ORDER BY COD_FUNCARGO')=True
   	Then Begin
   		DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO
       	If EDFORMPAG.Text='À VISTA'
       	Then Begin         //1300*4.5/100
       		//FORMA DE PAGAMENTO À VISTA É CALCULA COMISSÃO REFERENTE A VISTA
           	EdComiss.ValueNumeric:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency;
       	End
       	Else Begin
       		//FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
           	EdComiss.ValueNumeric:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency;
       	End;
   	End
   	Else Begin
   		EdComiss.ValueNumeric:=0;
   	End;
   End;
   //PASSA VALORES PARA O PAINEL DE CONSULTA DE PREÇOS
   EdVlrAtacadoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
   EdVlrAtacadoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
   EdVlrVarejoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
   EdVlrVarejoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;

   if XUsoConsumo <> 'Consumo' then
	    FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')
   else
       FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_SUBPROD', DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsString, '');


   If BtnInsertProd.Tag=1 Then
       EDQuantidade.ValueNumeric:=1;
   BtnInsertProd.Tag:=0;
   FMenu.XTIPOBOLTO := IntToStr(XCodPessoa);

   
End;

//Limpa as labels de seleção de produto
Procedure TFPedidoPadrao.LimpaLabels;
Begin
   EDCodBarra.Text:='';
   EDCodInterno.Text:='';
   EDQuantidade.Text:='';
   EDValUnit.Text:='';

   LCstCadastrado.Caption:='';
   EDDesc.Text:='';
   EDTotal.Text:='';
   LEstoque.Caption:='';
   LSimilar.Caption:='';
   LMarca.Caption:='';
	LBonif.Caption:='';
   LCustoTot.Caption:='';
   LLocal.Caption:='';
   EdLocal.Text:='';
   EdLote.Text:='';
   EdObs.Text:='';
   EdVenc.Clear;
   //LIMPA VALORES PARA O PAINEL DE CONSULTA DE PREÇOS
   EdVlrAtacadoPrazo.ValueNumeric:=0;
   EdVlrAtacadoVista.ValueNumeric:=0;
   EdVlrVarejoPrazo.ValueNumeric:=0;
   EdVlrVarejoVista.ValueNumeric:=0;
   EdImpCST.Text:='';
   EdimpIcms.Text:='';
   EdBCIcms.Text:='';
   EdImpIpi.Text:='';
   EdImpVlrIcms.Text:='';
   EdImpVlrIpi.Text:='';

   LDescCst.Caption:='';
   
   EdQuantExp.ValueNumeric:=0;

   // - 26/01/2009: limpa valores de conversão unitaria de embalagens
   edQntEmb.ValueNumeric := 0;
   edQntUnitEmb.ValueNumeric := 0;
   if XConvUnitEmb
   then begin
       DMESTOQUE.TUnidade.Close;
       DMESTOQUE.TUnidade.SQL.Clear;
       DMESTOQUE.TUnidade.SQL.Add('select * from unidade');
       DMESTOQUE.TUnidade.Open;
   end;

   XCodUnidItenProd := 0;
End;

//seleciona os registros da tabela escrava
procedure TFPedidoPadrao.BtnNovoClick(Sender: TObject);
Var
   CODPEDIDO:Integer;
   XTipoOperacao: String;
begin
  inherited;
   //ZERA VALOR DE DESCONTO
	XEDCOMISSAOPED:=0;
   XVLRDESC:='0';
	//Limpa edits
   EdCodCli.Text:='';
   EdValorPed.Text:='0,00';
   EdNomeCli.Text:='';
   EdCPF.Text:='';
   EDCODFORMPAG.Text:='';
   EDFORMPAG.Text:='';
   EdCodVend.Text:='';
   EDNOMEVENDEDOR.Text:='';
   EDDescPed.Text:='';
   EDDesc.Text:='';
   EdValorFrete.ValueNumeric:=0;
   EdValorOutros.ValueNumeric:=0;
   EdValoIcmsSubstituicao.ValueNumeric:=0;
   EdValorIpi.ValueNumeric:=0;
   EdVlrCompra.Text:='';
   EdDescMoeda.Text:='';
   XVLRTOTAL := 0;
   XTOTIPI := 0;

   DBMemo.Text:='';
  	XCod_Destinatario:=-1;
  	xnomedestinatario:='';

   //inicia campos de PK
   XCODPKMESTRE:=-1;
   XCodConta:=-1;
   XCodFormPag:=-1;
   XCodVendedor:=-1;
   XCodPessoa:=-1;
   XCodMoeda:=-1;
   XCodConta:=-1;
   XCodSlave:=-1;
   XCodVendItem:=-1;
	//*******************************************************************************************************
   //Passo 01 - Pegar proximo numero de pedido para variáve e incrementar na tabela empresa o proximo numero
   //*******************************************************************************************************

	If XSQLTABELA<>'PEDVENDA'
   Then Begin //se trabalhando com pedido de venda
       // MAURO 23/01/2013 - Controle de Numeração do pedido de compra(=0 controle automatico, =1 controle do usuário)
       If DMMACS.TLoja.fieldByName('ctrldvl').AsString = '0'
       Then Begin
           XCtrlDvl := '0';
           XNumPedido:=RetornaNumPed;
       End
       Else Begin
           XCtrlDvl := '1';
           EdNumeroPedido.Text := '0';
           EdNumeroPedido.SetFocus;
       End;
   End
   Else Begin
       XCtrlDvl := '0';
       XNumPedido:=RetornaNumPed;
	End;      

	//*******************************************************************************************************
   //PASSO 02 - Incluir novo Pedido com dados principais e gravar para não perder o pedido caso ocorra alguma falha no momento de gravar
   //*******************************************************************************************************
   //Djonathan 21/11/2009: CONDICAO FEITA PARA EVITAR ERROS POIS A TABELA NAO ESTAVA ABRINDO
   XTabela.Close;
   XTabela.SQL.Clear;
   XTabela.SQL.Add('select first 1 * from ' + XSQLTABELA);
   XTabela.Open;
   LimpaLabels;
	If XSQLTABELA='PEDVENDA'
   Then Begin //se trabalhando com pedido de venda
   	//Remove botão para aliquotas que deve pertencer somente a pedido de compra
       BtnAbrePAliq.Visible:=False;

		//Verifica o Tipo de Operação
       If (FMenu.XRemessaGarantia=True) Then
       	XTipoOperacao := 'GAR';
       If (FMenu.XComplementacao=True) Then
       	XTipoOperacao := 'COMP';
       If (FMenu.XDevolucao=True) Then
           XTipoOperacao := 'DEV';
       If (FMenu.XSimplesRemessa=True) Then
           XTipoOperacao := 'REM';
       If (FMenu.XOutrosFisc=True) Then
           XTipoOperacao := 'OUT';
       If (FMenu.XRemessaGarantia=False) and (FMenu.XDevolucao=False) and (FMenu.XSimplesRemessa=False)and (FMenu.XOutrosFisc=False)AND(FMenu.XComplementacao=False) Then
           XTipoOperacao := 'VND';

		//Verifica Cliente a inserir na tabela
		If DMMACS.TLoja.fieldByName('COD_CONSUMIDOR').AsInteger<1 Then
       	XCodPessoa := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger
       Else
       	XCodPessoa := DMMACS.TLoja.fieldByName('COD_CONSUMIDOR').AsInteger;
	    PPesCad.Visible := True;
       PPesCad.BringToFront;
 		DbNomeCli.Text := 'CONSUMIDOR';

       //INSERE REGISTRO
       DMSAIDA.TPedV.Insert;
       CODPEDIDO:=DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger;
       XCodPedido:=IntToStr(CODPEDIDO);
       XCodPedidoP:=XCodPedido;
       FMenu.XCodPesqPresSel:=XCodPedido;//Armazena temporariamente o codigo do pedido para ser usado fora do pedido padrão
		XTabela.FieldByName('NUMPED').AsInteger:=XNumPedido;
       XTabela.FieldByName('dtpedven').AsDateTime:=Date();
       XTabela.FieldByName('dtfech').AsDateTime:=Date();
		XTabela.FieldByName('COMSOBVENDA').AsString := '1';
       XTabela.FieldByName('COD_CLIENTE').AsInteger := XCodPessoa;
       XTabela.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
       XTabela.FieldByName('COD_FORMPAG').AsInteger := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       XTabela.FieldByName('COD_VENDEDOR').AsInteger := DMPESSOA.TFuncionario.FieldByName('COD_FUNC').AsInteger;
       XTabela.FieldByName('SITUACAO').AsString := 'ABERTO';
       XTabela.FieldByName('NOMECLI').AsString := '01 - CONSUMIDOR';
       XTabela.FieldByName('EDIT').AsString := '1';
       XTabela.FieldByName('TIPO').AsString := 'VND';//Define como venda, caso não seja nenhum outro tipo

       //Caso seja outro tipo       
       If (FMenu.XComplementacao=True) Then
	       XTabela.FieldByName('TIPO').AsString := 'COMP';
       If FMenu.XDevolucao=True Then
           DMSAIDA.TPedV.FieldByName('TIPO').AsString:='DEV';
       If FMenu.XRemessaGarantia=True Then
           DMSAIDA.TPedV.FieldByName('TIPO').AsString:='GAR';
       If FMenu.XSimplesRemessa=True Then
           DMSAIDA.TPedV.FieldByName('TIPO').AsString:='REM';
       If FMenu.XOutrosFisc=True Then
           DMSAIDA.TPedV.FieldByName('TIPO').AsString:='OUT';

       //Repassa Valores para os componentes
       EdNumeroPedido.Text:=XTabela.FieldByName('NUMPED').AsString;
       DBDATA.Text:=DateToStr(Date());

       //Grava pedido e confirma gravação em banco
       try
           DMSAIDA.TPedV.Post;
           DMSAIDA.IBT.CommitRetaining;
       except
       	MessageDlg('O sistema de prevenção a perca de dados detectou uma falha na comunicação com o banco de dados. Solicitamos que o sistema seja reiniciado.'+#13+#10+'Caso o problema continue consulte o suporte técnico para solução.', mtWarning, [mbOK], 0);
           DMSAIDA.IBT.RollbackRetaining;
           //Cancela Operação de Inserção e retorna a tela de consulta
           desabilitaPCadastro;
           Exit;
       end;
   End
   Else Begin
   	//Abilita controle de aliquotas para pedido de compra
       BtnAbrePAliq.Visible:=True;

       //Desabilita painel para descrever o nome do cliente no momento do pedido
       PPesCad.Visible := False;

       //caso pedcompra possibilita o cadastro na hora do vendedor externo (do fornecedor)
       PCadVendedor.Visible:=True;
       PCadVendedor.Enabled:=true;
       PCadVendedor.BringToFront;

		//Verifica Tipo de Operação
       If (FMenu.XOutrosEnt=True) Then
       	XTipoOperacao := 'OUT'
       Else
       	XTipoOperacao := '';

       //INSERE REGISTRO
       CODPEDIDO:=InserReg(XTabela, XSQLTABELA, XPkTabela);
       XCodPedido:=IntToStr(CODPEDIDO);
       FMenu.XCodPesqPresSel:=XCodPedido;//Armazena temporariamente o codigo do pedido para ser usado fora do pedido padrão
       XTabela.FieldByName(XPkTabela).AsInteger:=CODPEDIDO;
       XTabela.FieldByName('NUMPED').AsInteger:=XNumPedido;
       XTabela.FieldByName('DTPEDCOMP').AsDateTime:=Date();
       XTabela.FieldByName('DTFECH').AsDateTime:=Date();
       XTabela.FieldByName('COD_FORNEC').AsInteger := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
       XTabela.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
       XTabela.FieldByName('COD_FORMPAG').AsInteger := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       XTabela.FieldByName('SITUACAO').AsString := 'ABERTO';
       

       //Repassa Valores para os componentes
       EdNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
     	DBDATA.Text:=DateToStr(Date());
       if XCtrlDvl = '0' then
       EdNumeroPedido.Text:=XTabela.FieldByName('NUMPED').AsString;
       DBDATA.Text:=DateToStr(Date());

       //Grava pedido e confirma gravação em banco
       try
           XTabela.Post;
           XTransaction.CommitRetaining;
       except
       	MessageDlg('O sistema de prevenção a perca de dados detectou uma falha na comunicação com o banco de dados. Solicitamos que o sistema seja reiniciado.'+#13+#10+'Caso o problema continue consulte o suporte técnico para solução.', mtWarning, [mbOK], 0);
           XTransaction.RollbackRetaining;

           //Cancela Operação de Inserção e retorna a tela de consulta
			desabilitaPCadastro;
	        Exit;
       end;
   End;

   //controla o numero da nota para casos de devolução
  	If FMenu.XDevolucao=True Then
   	FMenu.XCOD_LANCAIXA:=CodPedido;

   //cancela o botão "X" de fechar para que o usuário possa apenas gravar ou cancelar
   BtnFecha.Visible:=False;

   //Marca Status de inserção de pedido para o sistema saber diferenciar entre novo pedido e pedido consultado
   Estado:='INSERT';

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
	//************************************************
   //PASSO 03 - Filtra os dados referentes a inclusão
   //************************************************
	If FiltraTabela(XTabela, XSQLTABELA, XPkTabela, XCodPedido, '')=False
   Then Begin
   	MessageDlg('A inclusão de um novo Pedido falhou. Procure pelo pedido Nº '+IntToStr(XNumPedido)+' e efetue as alterações necessárias.', mtWarning, [mbOK], 0);
       //Cancela Operação de Inserção e retorna a tela de consulta
		desabilitaPCadastro;
   End
   Else Begin
   	//Seleciona somente os registros corretos
   	FiltraSlave;
   	BtnInsertProd.Tag:=1;
	End;

   If XSQLTABELA='PEDVENDA'
   Then Begin
       //Paulo 14/06/2011: Seleciona o vendedor
       DMPESSOA.TALX.Close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add('select vwfuncionario.cod_func, vwfuncionario.cod_interno, vwfuncionario.nome');
       DMPESSOA.TALX.SQL.Add('from vwfuncionario');
       DMPESSOA.TALX.SQL.Add('left join usuario on vwfuncionario.cod_func = usuario.cod_funcionario');
       DMPESSOA.TALX.SQL.Add('where usuario.codusuario = :CODIGO');
       DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:= StrToInt(FMenu.LCODUSUARIO.Caption);
       DMPESSOA.TALX.Open;

       XCodVendedor:=DMPESSOA.TALX.FieldByName('COD_FUNC').AsInteger;
       EdCodVend.Text:=DMPESSOA.TALX.FieldByName('COD_INTERNO').AsString;
       EDNOMEVENDEDOR.Text:=DMPESSOA.TALX.FieldByName('NOME').AsString;
       CalcComisTotVend;


       //Paulo 14/06/2011: Seleciona forma de pagamento a vista
       FiltraTabela(DMFinanc.TFormPag,'FORMPAG', 'DESCRICAO', 'À VISTA','');

       XCodFormPag:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       EDCODFORMPAG.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       EDFORMPAG.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
       verificaDescontoFormpag;
   end;


end;

procedure TFPedidoPadrao.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
	   If XSQLTABELA='PEDVENDA'
       Then Begin//trabalhando com vendas
       //If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+EdCodCli.Text+#39)=True
        If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', Trim(EdCodCli.Text),'')=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
	        	XCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
	            DbNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	            DbCpf.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
           	//Verifica se o cliente é do tipo consumidor marcado em loja, possibilitar alteração do nome
               If DMMACS.TLoja.FieldByName('cod_consumidor').AsInteger=XCodPessoa
               Then Begin
                   PPesCad.Visible:=True;
                   PPesCad.BringToFront;
                   If DbNomeCli.Text='' Then
                       DbNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
                   DbCpf.SetFocus;
               End;
               SelectFormPag_Vendedor;
       		//VEERIFICA SE DIAS DE INTERVALO MAIOR QUE ZERO, SE IGUAL OU MENOR A ZERO O SISTEMA NÃO DEVE FAZER CONTROLE
       		If DMMACS.TLoja.FieldByName('DIASBLOQCLI').AsInteger<>0
       		Then Begin
      	 			If VerificBloqCli(IntToStr(XCodPessoa))=True Then
        				Mensagem('C R É D I T O   B L O Q U E A D O', 'Cliente possui Crédito Bloqueado. Por atrasos de '+DIASATRASO+'/'+IntToStr(StrToInt(DIASATRASO)-DMMACS.TLoja.FieldByNAme('DIASBLOQCLI').AsInteger)+' dias em suas contas!', '', 1, 1, false, 'i');
               End;
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XCodPessoa:=-1;
               DbNomeCli.Text:='';
	            DbCpf.Text:='';
           End;
       End
       Else Begin
       	//If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' WHERE COD_INTERNO='+#39+EdCodCli.Text+#39)=True
        // - 12/02/2009:  nao estava procurando certo o fornecedor
        	If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_INTERNO', Trim(EdCodCli.Text), '')=True
           Then Begin
                XCodPessoa:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
                DbCpf.Text:=DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
                DbNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           End
           Else Begin
           	XCodPessoa:=-1;
               EdCodCli.Text:='';
               DbNomeCli.Text:='';
               DbCpf.Text:='';
           End;
       End;
   End;
end;

procedure TFPedidoPadrao.BtnProcPessClick(Sender: TObject);
begin
  inherited;
	//se realmente estiver trabalhando com vendas e não com compras
   If XSQLTABELA='PEDVENDA'
   Then Begin
        FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
        //FCliente.SetCodPreSelecionado(EdCodCli.Text);
        FMenu.XPreSel := True;
        FMenu.XFieldPesqPreSel := 'COD_INTERNO';
        FMenu.XCodPesqPresSel := EdCodCli.Text;
        If AbrirForm(TFCliente, FCliente, 1)='Selected'
        Then Begin
        	//Filtr Cliente para verificar se é atacadista
        	If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '' )=True
           Then Begin
				If DMPESSOA.TCliente.FieldByName('ATACADISTA').AsString='1'
               Then Begin
					XAtacadista:=True;
                   // apenas para exibir a label do cliente atacadista
                   LAtacadista.Visible := true;
                   LAtacadista.BringToFront;
                   PSelectCliente.Refresh;
               End
               Else Begin
                   XAtacadista:=False;
                   // nao exibe a label pq o cliente nao eh atacadista
                   LAtacadista.Visible := false;
                   LAtacadista.SendToBack;
                   PSelectCliente.Refresh;
               End;
           End
           Else Begin
               XAtacadista:=False;
           End;
	        XCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', IntToStr(XCODPESSOA), '')=True
           Then Begin
           	//Verifica se o cliente é do tipo consumidor marcado em loja, possibilitar alteração do nome
               If DMMACS.TLoja.FieldByName('cod_consumidor').AsInteger=XCodPessoa
               Then Begin
                   PPesCad.Visible:=True;
                   PPesCad.BringToFront;
                   DbCpf.SetFocus;
               End
               Else Begin
				   	PPesCad.Visible:=False;
               End;
               //VERIFICA QTO ATUALIZAÇÃO DE INFORMAÇÕES DO CLIENTE
           	If DMPESSOA.TCliente.FieldByName('ATUALIZAR').AsString='1' Then
					Mensagem('Mzr Sistemas - INFORMAÇÃO', 'As informações deste cliente devem ser atualizadas!', '', 1, 1, false, 'i');
               //VERFICA QTO A CREDITO DE CLIENTES
               If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString, '')=True
               Then Begin
           	    If (DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency>=XVLRTOTAL) And (DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency<>0) Then
					    Mensagem('INFORMAÇÃO', 'Este cliente possui créditos!'+#13+'Valor de crédito: '+ FormatFloat('0.00',  DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency), '', 1, 1, false, 'i');
               End;
               //VERFICA OBS DE CLIETE
          	    If (DMPESSOA.TCliente.FieldByName('OBS').AsString<>'') Then
					    Mensagem('Observação para cliente', DMPESSOA.TCliente.FieldByName('OBS').AsString, '', 1, 1, false, 'i');
				DbNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
				DbCpf.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
           End;
       	//VEERIFICA SE DIAS DE INTERVALO MAIOR QUE ZERO, SE IGUAL OU MENOR A ZERO O SISTEMA NÃO DEVE FAZER CONTROLE
       	If DMMACS.TLoja.FieldByName('DIASBLOQCLI').AsInteger<>0
       	Then Begin
      	 		If VerificBloqCli(IntToStr(DMPESSOA.TCliente.FieldByName('COD_CLIENTE').AsInteger))=True Then
        			Mensagem('C R É D I T O   B L O Q U E A D O', 'Cliente possui Crédito Bloqueado. Por atrasos de '+DIASATRASO+'/'+IntToStr(StrToInt(DIASATRASO)-DMMACS.TLoja.FieldByNAme('DIASBLOQCLI').AsInteger)+' dias em suas contas!', '', 1, 1, false, 'i');
           End;
	        EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
	        EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	        EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           SelectFormPag_Vendedor;
           Try
           	FMenu.TIPOAUX:=IntToStr(XCodPessoa);
           Except
               FMenu.TIPOAUX:='0';
           End;

        End;
   End
   Else Begin
        FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
        FMenu.XPreSel := True;
        FMenu.XFieldPesqPreSel := 'COD_INTERNO';
        FMenu.XCodPesqPresSel := EdCodCli.Text;
        If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
        Then Begin
            XCodPessoa:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
            EdCPF.Text:=DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
            EdNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
            EdCodCli.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
            If FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC', DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString, '')=True
            Then Begin
               //VERFICA QTO A CREDITO DE CLIENTES
               If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsString, '')=True
               Then Begin
           	    If (DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency>=XVLRTOTAL) And (DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency<>0) Then
					    Mensagem('INFORMAÇÃO', 'Este fornecedor possue créditos!', '', 1, 1, false, 'i');
               End;
           End;
        End;
   End;
   PSelectCliente.Repaint;
   
end;

procedure TFPedidoPadrao.EdCodVendKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin//se enter
   	If EdCodVend.Text<>''
       Then Begin//se codigo do vendedor não estiver em branco
       	//seleciona o vendedor de acordo com o valor da edit
	        If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', trim(EdCodVend.Text), '')=True
           Then Begin
               //atribuí o vendedor a venda
	            XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
	            EdCodVend.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
	            EDNOMEVENDEDOR.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
               CalcComisTotVend;
           End
           Else Begin
               XCodVendedor:=-1;
	            EdCodVend.Text:='';
	            EDNOMEVENDEDOR.Text:='';
           End;
       End;
   End;
end;

procedure TFPedidoPadrao.BtnProcVendClick(Sender: TObject);
begin
   inherited;
	If XSQLTABELA='PEDVENDA'
   Then Begin
        FMenu.XPreSel := True;
        FMenu.XFieldPesqPreSel := 'COD_INTERNO';
        FMenu.XCodPesqPresSel := EdCodVend.Text;
		If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
	    Then Begin
           XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
			EdCodVend.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
			EDNOMEVENDEDOR.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
           XvendCom:=XCodVendedor;
           retornaComissao(XvendCom);
           CalcComisTotVend;
   	End;
   End;
end;
procedure TFPedidoPadrao.FormActivate(Sender: TObject);
begin
  inherited;
   PComissaoBanca.Visible:=False;
   //Paulo 23/11/2010: Seleciona os lotes
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('select * from lote where lote.status = ''N''');
   DMESTOQUE.Alx.Open;
   XUsoConsumo:='';
   PPrecos.SendToBack;

   XExiste:=False;
   XImpI:=0; //Paulo 08/10/2010: para controle de importação agrupada
   PPrecos.Visible:=False;
   //ZERA VALOR DE DESCONTO
   XVLRDESC:='0';
   // SE O USUÁRIO POSSUI DIREITO À ALTERAR O VLR TOTAL DO PEDIDO OS CAMPO QUE DÃO ESTA POSSIBILIDADE SÃO LIBERADOS CASO CONTRARIO NÃO
   If ControlAccess('DESCPED', '')=False
   Then Begin
		EdValorPed.ReadOnly:=True;
       EDDescPed.ReadOnly:=True;
   End
   Else Begin
		EdValorPed.ReadOnly:=False;
       EDDescPed.ReadOnly:=False;
   end;
	//EFETUA CONTROLE DE ACESSO A ALTERAÇÃO DO VLR UNITARIO
   If ControlAccess('ALTVLRUNIPED', '')=False Then
  		EDValUnit.ReadOnly:=True
   Else
  		EDValUnit.ReadOnly:=False;   
   //Verifica controles para filtros de pedido que vem do xml de configuração
   If FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('filtrapedfechado') <> nil
   Then Begin
		If FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('filtrapedfechado').Text='TRUE' Then
           CbFiltroPedidosFechados.Checked:=True
       Else
           CbFiltroPedidosFechados.Checked:=False;

       //Se tiver algum filtro por data... devemos filtrar
       If FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('filtrapeddata01').Text<>''
       Then Begin
       	EdDtFiltro01.Text:=FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('filtrapeddata01').Text;
       	EdDtFiltro02.Text:=FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('filtrapeddata02').Text;
       End;
   End;
   //Paulo 23/08/2010: PAra verificar se a impressora está ligada ou conectada
   XImpLig:=False;
   If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')then
   begin
       XAlx:= Bematech_FI_VerificaImpressoraLigada();
   	if (XAlx = -6)then
   	begin
        	XImpLig:=False;
   	end
       else begin
       	XImpLig:=True;
       end;
   end;

   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   PQuantDescarte.Visible:=False;
  	//SETA DBEDITS
	If XSQLTABELA='PEDVENDA'
   Then Begin
   	//SETA EDITS PARA VENDA
       DBPRAZOENT.DataSource:=DMSAIDA.DPedv;
       DBPRAZOENT.DataField:='ENTREGA';
       XLIBDESCPROD:=False;//inicializa a variável de controle de desconto de produto como false
       XLIBMARGEMSEG:=False;//inicializa a variável de controle de margem de seguranca
       LVlrComissao.Visible:=True;//Em pedidos de venda o valor da comissão deve ser revelado
       If DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1'
       Then Begin
           PComiss.Visible:=True;
           PComiss.BringToFront;
       End
       Else Begin
           PComiss.Visible:=False;
       End;
       //Se o processo for operação de venda normal
       If (FMenu.XRemessaGarantia=false)  and (FMenu.XSimplesRemessa=False) and (fmenu.XDevolucao=False)and (fmenu.XOutrosFisc=False) and (fmenu.XComplementacao=False)
       Then Begin
       	EdImpCST.Enabled:=False;
       	EdBCIcms.Enabled:=False;
       	EdimpIcms.Enabled:=False;
       	EdImpIpi.Enabled:=False;
       	EdImpVlrIcms.Enabled:=False;
       	EdImpVlrIpi.Enabled:=False;
       End;
       If  (DMMACS.TEmpresa.FieldByName('CONTICMS').AsString='1') or (fmenu.XComplementacao=True)
       Then Begin
       	EdImpCST.Enabled:=True;
       	EdBCIcms.Enabled:=True;
       	EdimpIcms.Enabled:=True;
       	EdImpIpi.Enabled:=True;
       	EdImpVlrIcms.Enabled:=True;
       	EdImpVlrIpi.Enabled:=True;
       End;
       If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
       Then Begin
           PQuantDescarte.Visible:=True;
           PQuantDescarte.BringToFront;
       End;
       //Seta os edits de valores de impostos para não serem alterados em pedido de venda
       EdValorIpi.ReadOnly:=True;
       EdValoIcmsSubstituicao.ReadOnly:=True;
   End
   Else Begin
       If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
       Then Begin
           PQuantDescarte.Visible:=True;
           PQuantDescarte.BringToFront;
       End;        
       //SETA EDITS PARA COMPRA
       DBPRAZOENT.DataSource:=DMENTRADA.DPedC;
       DBPRAZOENT.DataField:='PRAZOENTR';
       LVlrComissao.Visible:=False;//Em pedidos de compra o valor da comissão deve ser escondido
       EdImpCST.Enabled:=True;
       EdBCIcms.Enabled:=True;       
       EdimpIcms.Enabled:=True;
       EdImpIpi.Enabled:=True;
       EdImpVlrIcms.Enabled:=True;
       EdImpVlrIpi.Enabled:=True;
       //Seta os edits de valores de impostos (icms substituição) ser alterado em pedido de compra
       EdValorIpi.ReadOnly:=True;
       EdValoIcmsSubstituicao.ReadOnly:=False;
   End;

   //Filtra tabela de loja para buscar apenas a loja em abertura do sistema
	FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   //VERIFICA QUAL O COMPONENTE DE BUSCA DE PRODUTO DEVE APARECER
	//PRIMEIRO DESABILITA TODOS
	PCodFab.Visible:=False;
  	PCodFab.Enabled:=False;
	PCodInterno.Visible:=False;
	PCodInterno.Enabled:=False;
   IF (DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI') or (DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'PL')
   THEN BEGIN
  		PCodInterno.Visible:=True;
  		PCodInterno.Enabled:=True;
       PCodInterno.BringToFront;
   END;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
   THEN BEGIN
  		PCodFab.Visible:=True;
  		PCodFab.Enabled:=True;
       PCodFab.BringToFront;
   End;
   
   // - 27/01/2009:  verifica se em loja esta setado como conversão unitaria p/ venda
   if (DMMacs.Tloja.FieldByName('CONVERTUNIDFERRO').AsString = '1') and (XSQLTABELA='PEDVENDA')
   then begin
       XConvUnitVenda := True;
   end else begin
        XConvUnitVenda := False;
   end;

   // - 26/01/2009:  verifica se em loja esta setado como conversão unitaria p/ embalagens
   if (DMMacs.Tloja.FieldByName('CONVERTUNIDVEND').AsString = '1') and (XSQLTABELA='PEDVENDA') and (not XConvUnitVenda)
   then begin
       XConvUnitEmb := True;
       DMESTOQUE.Alx3.Close;
       DMESTOQUE.Alx3.SQL.Clear;
       DMESTOQUE.Alx3.SQL.Add('select first 1 * from unidade');
       DMESTOQUE.Alx3.Open;       
       cbUnidVendaFixo.ListSource := DMESTOQUE.DSAlx3;
   end else begin
        XConvUnitEmb := False;
        cbUnidVendaFixo.ListSource := nil;
   end;

   EdQuantExp.Text:='';

   //Indica para mostrar qtd 1 a edit
   BtnInsertProd.Tag:=1;
   PPrecos.Visible:=False;
   //Limpa as Labels de Seleção de Produto
   LimpaLabels;
   ExecutaLiberaDados;

   //Paulo 25/07/2011: Esconde o painel de troco
   Ptroco.SendToBack;
   Ptroco.Visible:=False;
   EdValorPedido.ValueNumeric:=0;
   EdValorPago.ValueNumeric:=0;
   EdValorTroco.ValueNumeric:=0;
   
end;

procedure TFPedidoPadrao.EDCODFORMPAGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  Var
  	comp:String;
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       if EDCODFORMPAG.Text<>''
       Then Begin
   		comp:='';
           FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
           iF DMMACS.TLoja.FieldByName('UTILFORMPG').AsString='1'
           Then Begin
           	IF XSQLTABELA='PEDVENDA' Then
                   comp:=' AND TIPO=' +#39+'V'+#39
               Else
                   comp:=' AND TIPO=' +#39+'C'+#39
           End;
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', trim(EDCODFORMPAG.Text), comp)
           Then Begin
              XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
              EDCODFORMPAG.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
              EDFORMPAG.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;

              IF XSQLTABELA='PEDVENDA' Then
                verificaDescontoFormpag;

           End
           Else Begin
              XCodFormPag:=-1;
              EDCODFORMPAG.Text:='';
              EDFORMPAG.Text:='';
           End;
       End;
   End;
end;

procedure TFPedidoPadrao.BtnProcFormPagClick(Sender: TObject);
begin
  inherited;
	If XSQLTABELA='PEDVENDA' Then
       FMenu.TIPOAUX:='VENDA'
   Else
       FMenu.TIPOAUX:='COMPRA';
       
	FMenu.XPreSel := True;
  	FMenu.XFieldPesqPreSel := 'COD_INTERNO';
  	FMenu.XCodPesqPresSel := EDCODFORMPAG.Text;
	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
  	Then Begin
   	XCodFormPag:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
      	EDCODFORMPAG.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
      	EDFORMPAG.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
      	IF XSQLTABELA='PEDVENDA' Then
         verificaDescontoFormpag;
   End;
end;

procedure TFPedidoPadrao.BtnProcProdClick(Sender: TObject);
begin
  inherited;
   FMenu.TIPOAUX:='PEDVENDA';
   FMenu.XTIPOBOLTO:=IntToStr(XCodPessoa);
  	//abre formulario de produto para seleção
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
		EscreveLabels;
   End
   Else Begin
       LimpaLabels;
       LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
   End;
   XUsoConsumo:='';
end;

procedure TFPedidoPadrao.BtnInsertProdClick(Sender: TObject);
var
	XitensVenda: String;
begin
  inherited;
  	If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
   Then Begin
    	If XSQLTABELA='PEDVENDA'
       Then Begin
   		//Se a Quantidade do Lote nao suportar a venda
			If XCOD_LOTE<=0
       	Then Begin
       		Mensagem('A T E N Ç Ã O', 'O Lote não foi informado para esta venda!', '', 1, 1, False, 'i');
               EDQuantidade.SetFocus;
               exit ;
       	End;
           // verifica a validade do lote
           If DMESTOQUE.Alx.FieldByName('VENCIMENTO').AsDateTime<=Date()
           Then Begin
               Mensagem('A T E N Ç Ã O', 'L O T E   V E N C I D O !', '', 1, 1, False, 'a');
           End;
       End

   End;
	//Valida se foi encontrado algum produto
   If (LSimilar.Caption='') or (LSimilar.Caption='PRODUTO NÃO ENCONTRADO')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existe produto a ser adicionado a lista de items do pedido.', '', 1, 1, False, 'a');
		BtnProcProd.SetFocus;
	    Exit;
   End;
   //Valida cst informada
   If EdImpCST.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Informe CST Código de Substituição Tributária', '', 1, 1, False, 'a');
		EdImpCST.SetFocus;
	    Exit;
   End;
   // - 26/01/2009: valida se for conversao unitaria de embalagens
   if XConvUnitEmb
   then begin

       If (edQntEmb.ValueNumeric = 0) and (FMenu.XComplementacao=False)
       Then Begin
            Mensagem('OPÇÃO BLOQUEADA', 'Informe uma valor maior que zero!', '', 1, 1, False, 'a');
            PConvertEmb.Visible := True;
            PConvertEmb.BringToFront;
            edQntEmb.SetFocus;
            Exit;
       End;
       If (CBUnidEmb.Text = '')
       Then Begin
            Mensagem('OPÇÃO BLOQUEADA', 'Informe uma unidade para a embalagem!', '', 1, 1, False, 'a');
            PConvertEmb.Visible := True;
            PConvertEmb.BringToFront;
            edQntUnitEmb.SetFocus;
            Exit;
       End;
       If (edQntUnitEmb.ValueNumeric = 0) and (FMenu.XComplementacao=False)
       Then Begin
            Mensagem('OPÇÃO BLOQUEADA', 'Informe uma valor maior que zero!', '', 1, 1, False, 'a');
            PConvertEmb.Visible := True;
            PConvertEmb.BringToFront;
            edQntUnitEmb.SetFocus;
            Exit;
       End;
   end;
   //Paulo 16/09/2011: Valida CST do Produto (se for uso consumo ele não valida)
   if XUsoConsumo<>'Consumo' then
   begin
       If (DMESTOQUE.TSubProd.FieldByName('COD_CST').AsInteger <=0) or (DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString='')
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'O Produto não possui o C.S.T. cadastrado, este se fz necessário!', '', 1, 1, False, 'a');
           Exit;
       End;
   end;
   //Paulo 30/11/2010: Se for pedido complementar não é feita a validação de valores e quantidade do item
   if not(FMenu.XComplementacao=True)
   then begin
       //Valida quanto a quantidade
       If EDQuantidade.ValueNumeric<=0
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com quantidade inferior a 1.', '', 1, 1, False, 'a');
           EDQuantidade.SetFocus;
           Exit;
       End;
       //Valida quanto ao valor unitario do produto
       If EDValUnit.ValueNumeric<=0
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o valor unitario igual ou inferiro a 0.', '', 1, 1, False, 'a');
           EDValUnit.SetFocus;
           Exit;
       End;
       //Valida quanto ao valor total do produto
       If EDTotal.ValueNumeric<=0
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o valor total igual ou inferiro a 0.', '', 1, 1, False, 'a');
           EDTotal.SetFocus;
           Exit;
       End;
   end;
   If (DMMACS.TLoja.FieldByName('VENDITEMPROD').AsString='1') AND (XSQLTABELA='PEDVENDA')
   Then Begin //Verifica se o sistema trabalha com vendedores individuais por item de venda
   	If XCTrlPainelvend=False
       Then Begin//variavel de controle (Ver em declaração de variáveis)
       	PVendItem.Visible:=True;
           PVendItem.BringToFront;
       	PVendItem.Enabled:=True;
       	DbCodVendedorItem.SetFocus;
           Exit;
       End;
   End
   Else Begin
   	If (XCodVendedor=-1) AND (XSQLTABELA='PEDVENDA')
       Then Begin //mesmo sem controlar o vendedor de forma individual cada item receberá o codigo do vendedor, então neste ponto o vendedor principal deverá ter cido selecionado
			Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe o vendedor do pedido.', '', 1, 1, False, 'a');
			EdCodVend.SetFocus;
    		Exit;
       End
   	Else Begin
       	XCodVendItem:=XCodVendedor;
       End;
   End;
   //VERIFICA SE JÁ EXISTE ALGUM PRODUTO IGUAL AO CORRENTE INSERIDO A LISTA
   //SE ENCONTRAR PEDIR SE O USUÁRIO DESEJA ALTERAR O LANÇAMENTO.
   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
   IF XSQLTABELA='PEDVENDA'
   Then Begin
   	DMESTOQUE.TSlave.SQL.Add('Select itenspedven.cod_itenspedven, itenspedven.OPERACAO, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, ItensPedVen.COMISSAO, ');
		DMESTOQUE.TSlave.SQL.Add('itenspedven.descpro, itenspedven.cod_funcionario, pessoa.nome, itenspedven.valunit, subproduto.descricao, subproduto.marca, subproduto.contrint, itenspedven.data, itenspedven.operacao ');
		DMESTOQUE.TSlave.SQL.Add('From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
		DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
		DMESTOQUE.TSlave.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA) AND (itenspedven.cod_estoque=:CODESTOQUE) ');
       DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsString:=XCodPedido;
       DMESTOQUE.TSlave.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString;
   End
   Else Begin
		DMESTOQUE.TSlave.SQL.Add('Select itenspedc.cod_itenspedc, itenspedc.cod_pedcompra, itenspedc.cod_estoque, ');
		DMESTOQUE.TSlave.SQL.Add('itenspedc.qtdeprod, ItensPedc.valortotal, itenspedc.descpro, itenspedc.valunit, ');
		DMESTOQUE.TSlave.SQL.Add('itenspedc.AGRUP, subproduto.descricao, subproduto.marca, subproduto.codprodfabr ');
		DMESTOQUE.TSlave.SQL.Add('From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add('Where (itenspedc.cod_pedcompra = :CODPEDCOMPRA) AND (itenspedc.cod_estoque=:CODESTOQUE) ');
       DMESTOQUE.TSlave.ParamByName('CODPEDCOMPRA').AsString:=XCodPedido;
       DMESTOQUE.TSlave.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString;
   End;
	If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString<>'SEMENTES'
	Then Begin
   	DMESTOQUE.TSlave.Open;
   	If Not DMESTOQUE.TSlave.IsEmpty
   	Then Begin
			If Mensagem('A T E N Ç Ã O !', 'O sistema encontrou o mesmo produto já lançado a lista. com '+DMESTOQUE.TSlave.FieldByName('qtdeprod').AsString+' qtdes.'+#13+'Deseja alterar este produto já lançado?', '', 2, 3, False, 'c')= 2
       	Then Begin
       		//o usuario decidiu alterar o lançamento anterior este é cancelado e o outro é excluido da lista
           	BtnDeleteList.Click;
           	exit;
       	End;
   	End;
   End;
   //Valida quanto ao estoque físico (veirifca se ha estoque suficiente
   If XSQLTABELA='PEDVENDA'
   Then Begin
   	//Paulo 30/11/2010: NFe Complementação não gera financeiro
      	if not(FMenu.XComplementacao=True)
       then begin
           // verifica se a quantidade minima do produto jah foi alcancada
           If ((DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsFloat - EDQuantidade.ValueNumeric) <= DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsCurrency )
           Then Begin
               // SELECIONA DADOS DA TABELA SUBPRODUTO PARA EXIBIR NA MESNAGEM
               FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO',DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString,'');

               // SELECIONA DADOS DA TABELA ESTOQUE PARA EXIBIR NA MENSAGEM
               FiltraTabela(DMESTOQUE.TEstoque,'ESTOQUE','COD_SUBPROD',DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString,'');

           //só mostra a mensagem de estoque minimo se estiver configurado em loja
           If DMMACS.TLoja.FieldByName('MSGESTOQUEMIN').AsString = '1'
           then begin
               Mensagem('   A T E N Ç Ã O   ','Produto com limite mínimo.' + #13 + 'Ctrl. Int.: ' + DMESTOQUE.TSubProd.FieldByName('contrint').AsString + #13 + 'Desc.: ' +DMESTOQUE.TSubProd.FieldByName('descricao').AsString + #13 + 'Valor Unit.: ' + FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency),'',1,1,false,'A');
           end;
           End;

           //Verifica se o vlr unitário esta dentro da margem de segurança
           If ((EDTotal.ValueNumeric/EDQuantidade.ValueNumeric)<DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency)
           Then Begin
                   If Mensagem('A T E N Ç Ã O !', 'Você está vendendo o produto a um valor abaixo da margem de segurança. Deseja continuar?', '', 2, 3, False, 'c')= 2
                   Then Begin
                       // PASSANDO VALOR PARA VARIAVEL QUE SERA COMPARADA NO FORMULARIO DE SENHAS
                       FMenu.TIPOREL := 'VERIFICMARGEM';
                       If ControlAccess('MARGEMSEG', '')=False
                       Then Begin  //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                           If Mensagem('A T E N Ç Ã O !', 'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c')= 2
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
                       FMenu.TIPOREL := '';
                   End
                   Else Begin
                       //Filtra slaves e calcula total
                       FiltraSlave;
                       Exit;
                   End;
       	End
           Else Begin
                   XLIBMARGEMSEG:=True;
           End;
       end
       else begin
           XLIBMARGEMSEG:=True;
       end;
   	//Verifica se o desconto dado no produto é superior ao permitido
       If DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency=0
       Then Begin//Se não ha restrições de desconto do produto em empresa procura em produto
       	If (EDDesc.ValueNumeric>DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency)
       	Then Begin
				If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
               Then Begin
					If ControlAccess('DESCPMAIOR', '')=False
               	Then Begin  //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
						If Mensagem('A T E N Ç Ã O !', 'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c')= 2
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
               End
               Else Begin
                   //Filtra slaves e calcula total
                   FiltraSlave;
                   exit;
               End;
           End
           Else Begin
               XLIBDESCPROD:=True;
           End;
       End
       Else Begin
       	If (EDDesc.ValueNumeric>DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency)
       	Then Begin
				If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
               Then Begin
					If ControlAccess('DESCPMAIOR', '')=False
               	Then Begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
						If Mensagem('A T E N Ç Ã O !', 'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c')= 2
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
               End
               Else Begin
                   //Filtra slaves e calcula total
                   FiltraSlave;
                   Exit;
               End;
           End
           Else Begin
               XLIBDESCPROD:=True;
           End;
       End;
		//Verifica se o desconto do produto foi liberado
       If XLIBDESCPROD=False
       Then Begin
			If ControlAccess('DESCPMAIOR', '')=False Then
				Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para vender este produto com tal desconto!', '', 1, 1, False, 'a');
           EDDesc.SetFocus;
           EXIT;
       End;
		//Verifica se a Margem de Seguranca do produto foi obedecida
       If XLIBMARGEMSEG=False
       Then Begin
			If ControlAccess('MARGEMSEG', '')=False Then
				Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para vender este produto abaixo da margem de segurança!', '', 1, 1, False, 'a');
           EDValUnit.SetFocus;
           EXIT;
       End;

       //Paulo 30/11/2010: NFe Complementação não gera financeiro
      	if not(FMenu.XComplementacao=True)
       then begin
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
                           Exit;
                       End;
                   End
                   Else Begin
                       Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
                       EDQuantidade.SetFocus;
                       FiltraSlave;
                       Exit;
                   End;
               End;
           End;
       end;
   End;
   Try
   //Inserir Produto a lista do pedido
   //05/05/2009: apenas para compra usado
   //XCodSlave:=InserReg(XTabSlave, XSQLTabSlave, XpkTabSlave);
   //XTabSlave.FieldByName(XpkTabSlave).AsInteger:=XCodSlave;
   If XSQLTABELA='PEDVENDA'
   Then Begin //se trabalhando com vendas
		MDO.Query.Close;//05/05/2009:  sql na unha
		MDO.Query.SQL.Clear;
		MDO.Query.SQL.Add('insert into ITENSPEDVEN');
		MDO.Query.SQL.Add('(COD_PEDVEN, COD_ESTOQUE, QTDEPROD, DESCPRO, COD_FUNCIONARIO,');
		MDO.Query.SQL.Add('VALUNIT, VALCUSTO, VALORTOTAL,COD_LOTE, ATUEST, VALREP, COEFDIV, VALCOMP, COD_CST, LUCPER,');
		MDO.Query.SQL.Add('LUCMOE, DATA, COMISSAO, OPERACAO, LUCREL, VLRVENDBD, QTDDEV, NUMITEM,');
		MDO.Query.SQL.Add(' ALIQICMS, BASEICMS, VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI,');
		MDO.Query.SQL.Add('REDUCBASEICMS, VLRICMSSUBS, VLRUNITDEV, QTDENTREGUE, COD_UNIDADE, QTDEMB,');
		MDO.Query.SQL.Add('UNIDEMB, QTDNAEMB, CFOP, TIPOLISTA, IPNPMC, IPNMVA)');
		MDO.Query.SQL.Add('values');
		MDO.Query.SQL.Add('(:COD_PEDVEN, :COD_ESTOQUE, :QTDEPROD, :DESCPRO, :COD_FUNCIONARIO,');
		MDO.Query.SQL.Add(':VALUNIT, :VALCUSTO, :VALORTOTAL, :COD_LOTE, :ATUEST, :VALREP, :COEFDIV, :VALCOMP, :COD_CST, ');
		MDO.Query.SQL.Add(':LUCPER, :LUCMOE, :DATA, :COMISSAO, :OPERACAO, :LUCREL, :VLRVENDBD,');
		MDO.Query.SQL.Add(':QTDDEV, :NUMITEM, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS,');
		MDO.Query.SQL.Add(':VLRIPI, :ALIQIPI, :REDUCBASEICMS, :VLRICMSSUBS, :VLRUNITDEV, :QTDENTREGUE,');
		MDO.Query.SQL.Add(':COD_UNIDADE, :QTDEMB, :UNIDEMB, :QTDNAEMB, :CFOP, :TIPOLISTA, :IPNPMC,:IPNMVA)');

		MDO.Query.ParamByName('COD_PEDVEN').AsInteger := StrToInt(XCodPedido);
		MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := XCodVendItem;
		MDO.Query.ParamByName('DATA').AsDate := Date();
		MDO.Query.ParamByName('OPERACAO').AsString := 'VND';
		MDO.Query.ParamByName('VALCUSTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
		MDO.Query.ParamByName('VALREP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
		MDO.Query.ParamByName('COEFDIV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
		MDO.Query.ParamByName('VALCOMP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency*EDQuantidade.ValueNumeric;
		MDO.Query.ParamByName('COD_CST').AsInteger  := DMESTOQUE.TSubProd.FieldByName('COD_CST').AsInteger;
       CalcLuc(EDTotal.ValueNumeric, EDDesc.ValueNumeric, EDQuantidade.ValueNumeric);
       //21/04/2009: calculo lucro modificado..
       If DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency <> 0
       Then Begin
			MDO.Query.ParamByName('LUCMOE').AsCurrency := EDTotal.ValueNumeric-((DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency/DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)*EDQuantidade.ValueNumeric);
           If (MDO.Query.ParamByName('LUCMOE').AsCurrency <> 0) and (EDTotal.ValueNumeric <> 0)
           Then Begin
                //DMSAIDA.TAlx.ParamByName('LUCMOE').AsCurrency := EDTotal.ValueNumeric-(DMSAIDA.TAlx.ParamByName('LUCMOE').AsCurrency);
				 MDO.Query.ParamByName('LUCPER').AsCurrency := (MDO.Query.ParamByName('LUCMOE').AsCurrency*100)/EDTotal.ValueNumeric;
           End;
       End
       Else
			MDO.Query.ParamByName('LUCMOE').AsCurrency := 0;

		MDO.Query.ParamByName('LUCREL').AsCurrency := ALXLUCREAL;
		MDO.Query.ParamByName('VLRVENDBD').AsCurrency := XVLRPRODBD;
		MDO.Query.ParamByName('ALIQICMS').AsCurrency := EdimpIcms.ValueNumeric;
		MDO.Query.ParamByName('BASEICMS').AsCurrency := EdBCIcms.ValueNumeric;
		MDO.Query.ParamByName('VLRICMS').AsCurrency := EdImpVlrIcms.ValueNumeric;
		MDO.Query.ParamByName('REDUCBASEICMS').AsCurrency := 0;
		MDO.Query.ParamByName('BASEICMSSUBS').AsCurrency := 0;
		MDO.Query.ParamByName('VLRICMSSUBS').AsCurrency := 0;
		MDO.Query.ParamByName('ALIQIPI').AsCurrency := EdImpIpi.ValueNumeric;
		MDO.Query.ParamByName('VLRIPI').AsCurrency := EdImpVlrIpi.ValueNumeric;
       if XConvUnitEmb
       then begin
            // - 26/01/2009: se for conversao unitaria de embalagens
			 MDO.Query.ParamByName('QTDEMB').AsCurrency := edQntEmb.ValueNumeric;
			 MDO.Query.ParamByName('UNIDEMB').AsInteger := CBUnidEmb.KeyValue;
			 MDO.Query.ParamByName('QTDNAEMB').AsCurrency := edQntUnitEmb.ValueNumeric;
       end;
       if XConvUnitVenda
       then begin
            // - 26/01/2009: se for conversao unitaria p/ venda
			 MDO.Query.ParamByName('QTDEMB').AsCurrency := edQntConvertVenda.ValueNumeric;
		     MDO.Query.ParamByName('UNIDEMB').AsInteger := cbConvUnitVendaConv.KeyValue;
			 MDO.Query.ParamByName('QTDNAEMB').AsCurrency:= edQntConvert.ValueNumeric;
        end;

       If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString = '1'
       then begin
			 MDO.Query.ParamByName('COD_UNIDADE').AsInteger := XCodUnidItenProd;
		     MDO.Query.ParamByName('QTDENTREGUE').AsCurrency := xqtdconvert;
       end
       else begin
			MDO.Query.ParamByName('COD_UNIDADE').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger;
			MDO.Query.ParamByName('QTDENTREGUE').AsCurrency := EDQuantidade.ValueNumeric;
       end;

       // --- //05/05/2009: manteve -- inicio!
       DMESTOQUE.TSubProd.Edit;
       DMESTOQUE.TSubProd.FieldByName('MARK').AsString := '';
       DMESTOQUE.TSubProd.Post;
       // //05/05/2009:   fim !
       Try
       	If (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString = '0') and (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
       	Then Begin
	   			//FILTRA VENDEDOR PARA CALCULAR A COMISSAO DO VENDEDOR
       		If FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', '', ' COD_FUNCIONARIO = '+#39+INTTOSTR(XCodVendedor)+#39+' ORDER BY COD_FUNCARGO')=True
       		Then Begin
           		DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO
           		If EDFORMPAG.Text = 'À VISTA'
           		Then Begin         //1300*4.5/100
						//FORMA DE PAGAMENTO À VISTA É CALCULA COMISSÃO REFERENTE A VISTA
						//DMSAIDA.TAlx.ParamByName('COMISSAO').AsCurrency := (EDTotal.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100;
						MDO.Query.ParamByName('COMISSAO').AsCurrency := (EDTotal.ValueNumeric*XEDCOMISS)/100;
           		End
           		Else Begin
						//FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
						MDO.Query.ParamByName('COMISSAO').AsCurrency := (EDTotal.ValueNumeric*XEDCOMISS)/100;
           		End;
       		End;
			End
           Else Begin
               If DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '1'
               Then Begin
                   FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG', IntToStr(XCodFormPag),'');
                   // filtra estoque para buscar os valores das porcentagens das comissoes
                   FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString,'');

                   //24/04/2009: só gera comissão sobre produto se no cadastro de produto não estiver marcado a opção: não gerar financeiro (aba financeiro) campo GERACOMIS na tabela estoque
                   if DMESTOQUE.Alx4.FieldByName('GERACOMIS').AsString <> '1'
                   then begin
                       If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA'
                       Then Begin         //1300*4.5/100
                           //FORMA DE PAGAMENTO À VISTA É CALCULA COMISSÃO REFERENTE A VISTA
                           XVLRCOMIS := (EDTotal.ValueNumeric * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) /100;
							MDO.Query.ParamByName('COMISSAO').AsCurrency := XVLRCOMIS;
                       End
                       Else Begin
                           //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                           XVLRCOMIS:= (EDTotal.ValueNumeric * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
							MDO.Query.ParamByName('COMISSAO').AsCurrency := XVLRCOMIS;
                       End;
                   end;
               End
               Else Begin
					MDO.Query.ParamByName('COMISSAO').AsCurrency := (EDTotal.ValueNumeric*EdComiss.ValueNumeric)/100;
               End;
           End;
       Except
			MDO.Query.ParamByName('COMISSAO').AsCurrency := 0;
       End;
   End
   Else Begin
       MDO.Query.Close;//05/05/2009:  sql na unha
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' insert into itenspedc (itenspedc.obs, itenspedc.ALIQICMS, itenspedc.baseicms, itenspedc.VLRICMS, itenspedc.REDUCBASEICMS, ');
       MDO.Query.SQL.Add('                         itenspedc.BASEICMSSUBS, itenspedc.vlricmssubs, itenspedc.ALIQIPI, itenspedc.VLRIPI, ');
       MDO.Query.SQL.Add('                         itenspedc.FRETE, itenspedc.EMBPROD, itenspedc.COD_PEDCOMPRA, itenspedc.COD_CST, itenspedc.DATA, ');
       MDO.Query.SQL.Add('                         itenspedc.qtdest, itenspedc.cod_unidade, itenspedc.cod_estoque, ');
       MDO.Query.SQL.Add('                         itenspedc.qtdeprod, itenspedc.valunit, itenspedc.valortotal, itenspedc.descpro, ');
       MDO.Query.SQL.Add('                     itenspedc.cod_lote, itenspedc.qtdbruta, itenspedc.qtddescarte, itenspedc.motivodescarte) ');
       MDO.Query.SQL.Add('             Values (:obs, :ALIQICMS, :baseicms, :VLRICMS, :REDUCBASEICMS, ');
       MDO.Query.SQL.Add('                         :BASEICMSSUBS, :vlricmssubs, :ALIQIPI, :VLRIPI, ');
       MDO.Query.SQL.Add('                         :FRETE, :EMBPROD, :COD_PEDCOMPRA, :COD_CST, :DATA, ');
       MDO.Query.SQL.Add('                         :qtdest, :cod_unidade, :cod_estoque, ');
       MDO.Query.SQL.Add('                         :qtdeprod, :valunit, :valortotal, :descpro, ');
       MDO.Query.SQL.Add('                         :cod_lote, :qtdbruta, :qtddescarte, :motivodescarte) ');

       MDO.Query.ParamByName('OBS').AsString:=XObsItem;
       MDO.Query.ParamByName('ALIQICMS').AsCurrency:=EdimpIcms.ValueNumeric;
       MDO.Query.ParamByName('BASEICMS').AsCurrency:=EdBCIcms.ValueNumeric;
       MDO.Query.ParamByName('VLRICMS').AsCurrency:=EdImpVlrIcms.ValueNumeric;
       MDO.Query.ParamByName('REDUCBASEICMS').AsCurrency:=0;
       if XFlagNfe = 1 then
       begin
       	MDO.Query.ParamByName('BASEICMSSUBS').AsCurrency:=XBaseST;
       	MDO.Query.ParamByName('VLRICMSSUBS').AsCurrency:=XIcmsST;
       end;
       MDO.Query.ParamByName('BASEICMSSUBS').AsCurrency:=0;
       MDO.Query.ParamByName('VLRICMSSUBS').AsCurrency:=0;
       MDO.Query.ParamByName('ALIQIPI').AsCurrency:=EdImpIpi.ValueNumeric;
       MDO.Query.ParamByName('VLRIPI').AsCurrency:=EdImpVlrIpi.ValueNumeric;
       MDO.Query.ParamByName('FRETE').AsCurrency:=XFRETE;
       MDO.Query.ParamByName('EMBPROD').AsCurrency:=XEMB;
       MDO.Query.ParamByName('COD_PEDCOMPRA').AsInteger:=StrToInt(XCodPedido);
       MDO.Query.ParamByName('COD_CST').AsInteger:=XCodCst;
       MDO.Query.ParamByName('COD_ESTOQUE').AsInteger:= XCod_Estoque;
       MDO.Query.ParamByName('DATA').AsString:=DateToStr(Date());

      	If EdQuantExp.Text <> '' //19/02/2009: caso o campo de qtd exportada for preenchido só entra no estoque a diferença entre o comprado (edquantidade) e o valor exportado (edquantexp)
      	then begin
       	MDO.Query.ParamByName('QTDEST').AsCurrency:=(EDQuantidade.ValueNumeric-EdQuantExp.ValueNumeric);
      	end
      	else begin
       	MDO.Query.ParamByName('QTDEST').AsCurrency:=EDQuantidade.ValueNumeric;
      	end;
       If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
       then begin
       	//Se a empresa utilizar conversão unitária determinamos que a quantidade que entra em estoque eh a quantidade con
       	MDO.Query.ParamByName('COD_UNIDADE').AsInteger := XCodUnidItenProd;
       	MDO.Query.ParamByName('QTDEST').AsCurrency:=xqtdconv;
       end
       else begin
       	MDO.Query.ParamByName('COD_UNIDADE').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger;
       end;
       DMESTOQUE.TSubProd.Edit;
       DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString:=EdLocal.text;
       DMESTOQUE.TSubProd.FieldByName('MARK').AsString:='';
       DMESTOQUE.TSubProd.Post;
       LQtdConvert.Caption:='';
   End;

   //Tenta gravar as informações
   Try
      If XSQLTABELA = 'PEDVENDA'
      Then Begin
       	MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
         	If EdQuantExp.Text <> '' //19/02/2009: caso o campo de qtd exportada for preenchido só entra no estoque a diferença entre o comprado (edquantidade) e o valor exportado (edquantexp)
         	then begin
       		MDO.Query.ParamByName('QTDEPROD').AsCurrency := (EDQuantidade.ValueNumeric - EdQuantExp.ValueNumeric);
         	end
         	else begin
       		MDO.Query.ParamByName('QTDEPROD').AsCurrency := EDQuantidade.ValueNumeric;
         	End;
       	MDO.Query.ParamByName('DESCPRO').AsCurrency := EDDesc.ValueNumeric;
       	MDO.Query.ParamByName('VALUNIT').AsCurrency := EDValUnit.ValueNumeric;
       	MDO.Query.ParamByName('VALORTOTAL').AsCurrency := EDTotal.ValueNumeric;
      End
      Else Begin
         MDO.Query.ParamByName('COD_ESTOQUE').AsInteger:= XCOD_ESTOQUE;
         if EdQuantExp.Text <> '' //19/02/2009: caso o campo de qtd exportada for preenchido só entra no estoque a diferença entre o comprado (edquantidade) e o valor exportado (edquantexp)
         then begin
         		MDO.Query.ParamByName('QTDEPROD').AsCurrency:=(EDQuantidade.ValueNumeric-EdQuantExp.ValueNumeric);
         end
         else begin
       		MDO.Query.ParamByName('QTDEPROD').AsCurrency:=EDQuantidade.ValueNumeric;
         end;
         //Paulo 24/11/2010: para salvar os dados do lote
         If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
         then begin
       		MDO.Query.ParamByName('COD_LOTE').AsCurrency:=XLote;
       		MDO.Query.ParamByName('QTDBRUTA').AsCurrency:=XQtdBruta;
       		MDO.Query.ParamByName('QTDDESCARTE').AsCurrency:=XQtdDescarte;
       		MDO.Query.ParamByName('MOTIVODESCARTE').AsString:=XMotivoDesc;
         end
         Else Begin
       		MDO.Query.ParamByName('COD_LOTE').AsCurrency:=XLote;
       		MDO.Query.ParamByName('QTDBRUTA').AsCurrency:=XQtdBruta;
       		MDO.Query.ParamByName('QTDDESCARTE').AsCurrency:=XQtdDescarte;
       		MDO.Query.ParamByName('MOTIVODESCARTE').AsString:=XMotivoDesc;
         End;
    	  MDO.Query.ParamByName('DESCPRO').AsCurrency:=EDDesc.ValueNumeric;
    	  MDO.Query.ParamByName('VALUNIT').AsCurrency:=EDValUnit.ValueNumeric;
    	  MDO.Query.ParamByName('VALORTOTAL').AsCurrency:=EDTotal.ValueNumeric;
       End;
       //Atualiza lOTE
       If XSQLTABELA='PEDVENDA'
      	Then Begin
  			if DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
   		Then Begin
           	//Paulo 25/11/2010: VERIFICA SE O LOTE JA SE ENCONTRA CADASTRADO
           	DMESTOQUE.TEstoqueLote.Close;
           	DMESTOQUE.TEstoqueLote.SQL.Clear;
              	DMESTOQUE.TEstoqueLote.SQL.Add('SELECT * FROM ESTOQUELOTE EL WHERE (EL.COD_LOTE=:LOTE) AND (EL.COD_ESTOQUE=:CODESTOQUE)');
           	DMESTOQUE.TEstoqueLote.ParamByName('LOTE').AsInteger:=XLote;
           	DMESTOQUE.TEstoqueLote.ParamByName('CODESTOQUE').AsInteger:= XCOD_ESTOQUE;
           	DMESTOQUE.TEstoqueLote.Open;
           	If Not DMESTOQUE.TEstoqueLote.IsEmpty
           	Then Begin
           	    Mensagem('INFORMAÇÃO', 'A Qtd foi lançada em um lote já cadastrado!', '', 1, 1, False, 'i');
               	If Not DMESTOQUE.TEstoqueLote.IsEmpty
               	Then Begin
						DMESTOQUE.TEstoqueLote.Edit;
                   	DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency:=DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency - EDQuantidade.ValueNumeric;
                       DMESTOQUE.TEstoqueLote.Post;
               	End;
    	  			MDO.Query.ParamByName('COD_LOTE').AsCurrency:=XLote;
           	End
           	Else Begin
           		Mensagem('lOTE', 'Não foi encontrado Lote para esse produto', '', 1, 1, false, 'c');
           	End;
               //Paulo 24/11/2010: Limpa os campos e as variaveis de lote
       	    XLote:=0;
       		XQuantLote:=0;
           End;
           //Paulo 30/11/2010: NFe Complementação não gera financeiro
      		if not(FMenu.XComplementacao=True)
       	then begin
               If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
               Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
                   //atualiza estoque físico
                   DMESTOQUE.TEstoque.Edit;
                   If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
                   then begin
                        DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-xqtdconvert;
                   end
                   else begin
                        DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-EDQuantidade.ValueNumeric;
                   end;
                   DMEstoque.TEstoque.FieldByName('ULTVENDA').AsString:=DateToStr(Date());
                   DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                   DMESTOQUE.TEstoque.Post;

                   //informa que o registro atualizou estoque
    	  			MDO.Query.ParamByName('ATUEST').AsString:='1';
                   DMESTOQUE.CalcCustMed(DMESTOQUE.TEstoque.FieldByNAme('COD_ESTOQUE').AsInteger, 'S', MDO.Query.ParamByName('QTDEPROD').AsCurrency, MDO.Query.ParamByName('QTDEPROD').AsCurrency * DMEstoque.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency);
               End
               Else Begin
                   DMESTOQUE.TransacEstoque.CommitRetaining;
    	  			MDO.Query.ParamByName('ATUEST').AsString:='0';
               End;
           end;
       End
       Else Begin
       	//Paulo 30/11/2010: NFe Complementação não gera financeiro
      		if not(FMenu.XComplementacao=True)
       	then begin
               If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
               Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
                   //atualiza data da ultima compra
                   DMESTOQUE.TEstoque.Edit;
                   DMEstoque.TEstoque.FieldByName('ULTCOMPRA').AsString:=DateToStr(Date());
                   DMESTOQUE.TEstoque.Post;

                   If (DMMACS.TLoja.FieldByName('NAOATUALIZAESTOQUEPC').AsString<>'1') or (DMMACS.TLoja.FieldByName('NAOATUALIZAESTOQUEPC').AsString = Null)
                   Then Begin
                       DMESTOQUE.TEstoque.Edit;
                       If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
                       then begin
                            DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+xqtdconv; //28/02/2009: sempre entra a quantidade convertida porque sempre vai importar o estoque em barra
                       end else
                       if EdQuantExp.Text <> '' //19/02/2009: caso o campo de qtd exportada for preenchido só entra no estoque a diferença entre o comprado (edquantidade) e o valor exportado (edquantexp)
                       then begin
                            DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+(EDQuantidade.ValueNumeric-EdQuantExp.ValueNumeric);
                       end
                       else begin
                            DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+EDQuantidade.ValueNumeric;
                       end;
                       DMESTOQUE.TEstoque.Post;
                   End;
               End;
           end;
           if DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
   		Then Begin
           	//Paulo 25/11/2010: VERIFICA SE O LOTE JA SE ENCONTRA CADASTRADO
           	DMESTOQUE.TEstoqueLote.Close;
           	DMESTOQUE.TEstoqueLote.SQL.Clear;
           	DMESTOQUE.TEstoqueLote.SQL.Add('SELECT * FROM ESTOQUELOTE EL WHERE (EL.COD_LOTE=:LOTE) AND (EL.COD_ESTOQUE=:CODESTOQUE)');
           	DMESTOQUE.TEstoqueLote.ParamByName('LOTE').AsInteger:=XLote;
           	DMESTOQUE.TEstoqueLote.ParamByName('CODESTOQUE').AsInteger:= XCOD_ESTOQUE;
           	DMESTOQUE.TEstoqueLote.Open;
           	If Not DMESTOQUE.TEstoqueLote.IsEmpty
           	Then Begin
           	    Mensagem('INFORMAÇÃO', 'A Qtd foi lançada em um lote já cadastrado!', '', 1, 1, False, 'i');
               	If Not DMESTOQUE.TEstoqueLote.IsEmpty
               	Then Begin
						DMESTOQUE.TEstoqueLote.Edit;
                   	DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency:=DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency + EDQuantidade.ValueNumeric;
                       DMESTOQUE.TEstoqueLote.Post;
               	End;
           	End
           	Else Begin
           		//INSERE LOTE
   				XCOD_LOTE:=InserReg(DMESTOQUE.TEstoqueLote, 'ESTOQUELOTE', 'COD_ESTOQUELOTE');
   				DMESTOQUE.TEstoqueLote.FieldByName('COD_ESTOQUELOTE').AsInteger:=XCOD_LOTE;
   				DMESTOQUE.TEstoqueLote.FieldByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;
   				DMESTOQUE.TEstoqueLote.FieldByName('COD_LOTE').AsInteger:=XLote;
   				DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency:= EDQuantidade.ValueNumeric;
   				DMESTOQUE.TEstoqueLote.Post;

           	End;
               //Paulo 24/11/2010: Limpa os campos e as variaveis de lote
       	 	XQtdBruta:= 0.00;
       		XQtdDescarte:=0.00;
       		XQtdEnt:= 0.00;
       		XMotivoDesc:='';
       		XLote:=0;
       		XQuantLote:=0;
           End;
       End;
       DMESTOQUE.TEstoque.Edit;
       DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
       DMESTOQUE.TEstoque.Post;
		Try
			MDO.Query.ExecSQL;
			MDO.Transac.CommitRetaining;
       Except  on e : exception do
			Begin
       		MessageDlg('Falha: 5920 - Verifique o gerador de código'+#13+E.Message, mtWarning, [mbOK], 0);
				MDO.Transac.RollbackRetaining;

               If XSQLTABELA<>'PEDVENDA'
               Then Begin
                   //Vamos verificar se o generator esta correto
                   //verificamos o proximo generator
                   MDO.Transac.CommitRetaining;
                   MDO.QConsulta.Close;
                   MDO.QConsulta.SQL.Clear;
                   MDO.QConsulta.SQL.Add('  select gen_id(GEN_ITENSPEDC_ID, 0) as codigo from rdb$database ');
                   MDO.QConsulta.Open;
                   FMenu.XNFe:=MDO.QConsulta.FieldByName('codigo').AsInteger;
                   MDO.Transac.CommitRetaining;
                   //comparamos para ver se tem algum registro igual ao generator
                   MDO.QConsulta.Close;
                   MDO.QConsulta.SQL.Clear;
                   MDO.QConsulta.SQL.Add('  select itenspedc.cod_pedcompra from itenspedc where itenspedc.cod_itenspedc=:codigo ');
                   MDO.QConsulta.ParamByName('codigo').AsInteger:=FMenu.XNFe;
                   MDO.QConsulta.Open;
                   If Not MDO.QConsulta.IsEmpty
                   Then Begin
                       //se tivermos encontrado algum registro igual setamos o generator para nova posição
                       MDO.QConsulta.Close;
                       MDO.QConsulta.SQL.Clear;
                       MDO.QConsulta.SQL.Add('  select max(itenspedc.cod_itenspedc) as codigo from itenspedc ');
                       MDO.QConsulta.Open;

                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' SET GENERATOR GEN_ITENSPEDC_ID  TO '+IntToStr(MDO.QConsulta.FieldByName('codigo').AsInteger));
                       MDO.Query.ExecSQL;
                       MDO.Transac.CommitRetaining;
                       MessageDlg('Foi encontrado e corrigido uma falha de generator ao código. Você pode tentar inserir o item novamente.', mtInformation, [mbOK], 0);
                   End;
               End;
           End;           
       End;
       Try
       	DMENTRADA.IBT.CommitRetaining;
       Except
       	MessageDlg('Falha: 5925', mtWarning, [mbOK], 0);
       	DMENTRADA.IBT.RollbackRetaining;
       End;
       Try
       	DMMACS.IBTCodigo.CommitRetaining;
       Except
       	MessageDlg('Falha: 5930', mtWarning, [mbOK], 0);
       	DMMACS.IBTCodigo.RollbackRetaining;
       End;
       Try
       	DMMACS.Transaction.CommitRetaining;
       Except
       	MessageDlg('Falha: 5935', mtWarning, [mbOK], 0);
       	DMMACS.Transaction.RollbackRetaining;
       End;
       Try
       	DMESTOQUE.TransacEstoque.CommitRetaining;
       except
       	MessageDlg('Falha: 5940', mtWarning, [mbOK], 0);
       	DMESTOQUE.TransacEstoque.RollbackRetaining;
       End;
       XLIBDESCPROD:=False;//reatribui à variável de controle de desconto de produto como false

	    //VERIFICA QUAL COMPONENETE DEVE RECEBER O FOCUS
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'BP' THEN
       	BtnProcProd.SetFocus;
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CB' THEN
	  		EDCodBarra.SetFocus;
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CA'
	    THEN BEGIN//Caso o focus deve cair sobre um código auxiliar. verificar qual o código em Questão
	  		IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
	        THEN Begin
	        	Try
                   EDCodInterno.Text:='';
		           	EDCodInterno.SetFocus;
	            Except
	            End;
	        End;
			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
	        THEN Begin
		       	Try
                   EDCodFab.Text:='';
		           	EDCodFab.SetFocus;
	            Except
		        End;
			End;
	    END;
		BtnInsertProd.Tag:=1;
   Except
	    XTransaction.RollbackRetaining;
       DMSAIDA.IBT.RollbackRetaining;
       DMENTRADA.IBT.RollbackRetaining;
       DMESTOQUE.TransacEstoque.RollbackRetaining;
       DMMACS.IBTCodigo.RollbackRetaining;
       DMMACS.Transaction.RollbackRetaining;

       If XSQLTABELA <> 'PEDVENDA' Then
   	   XTabSlave.CancelUpdates;

   End;
 Except
   XTransaction.RollbackRetaining;
   DMSAIDA.IBT.RollbackRetaining;
   DMENTRADA.IBT.RollbackRetaining;
   DMMACS.IBTCodigo.RollbackRetaining;
   DMMACS.Transaction.RollbackRetaining;
   DMESTOQUE.TransacEstoque.RollbackRetaining;
 End;
 //Filtra slaves e calcula total
 FiltraSlave;
 //limpa labels de seleção
 LimpaLabels;

 XMotivoDesc:='';

 If DMMACS.TLoja.FieldByName('BUSCANPRODS').AsString='1'
 Then Begin
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' Select * from vwsimilar Where vwsimilar.mark='+#39+'X'+#39);
   DMESTOQUE.Alx.Open;
   If not DMESTOQUE.Alx.IsEmpty
   Then Begin
   	If MessageDlg('Existe mais um produto a ser inserido:'+#13+#10+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString+#13+#10+'Deseja inserí-lo?', mtConfirmation, [mbYes, MbNo], 0)=MrYes
       Then Begin
			If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsString , '')=True
       	Then Begin
				EscreveLabels;
               EDQuantidade.SetFocus;
      	 	End;
       End;
   End;
 End;
 PSelectCliente.Repaint;

 EdQuantExp.Text:='';
 xqtdconvert:=0;
 xqtdconv:=0;

  If XSQLTABELA = 'PEDVENDA'
  Then Begin
      If XImpI = 0 then
      	 // importaItensAgrupados;
  End;

  XUsoConsumo:='';

end;

procedure TFPedidoPadrao.EDQuantidadeExit(Sender: TObject);
begin
  inherited;
//   EscreveLabels;

	If (EDQuantidade.ValueNumeric<>0) And (XVLRUNIT<>0)
   Then Begin
	    CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
	    EDTotal.ValueNumeric:=AlxCalculo;
       If DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency>0 Then
           EdBCIcms.ValueNumeric:=EDTotal.ValueNumeric-((EDTotal.ValueNumeric*DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency)/100)
       Else
           EdBCIcms.ValueNumeric:=EDTotal.ValueNumeric;
       If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString<>''
       Then Begin
           If (DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString='1') or (DMESTOQUE.TCST.FieldByName('ISENTA').AsString='1') and (DMESTOQUE.TCST.FieldByName('ICMSOP').AsString='0')
           Then begin
               EdBCIcms.ValueNumeric:=0;
               EdimpIcms.ValueNumeric:=0;
           end;
       End;

       If  (EdimpIcms.ValueNumeric<>0) and (EdBCIcms.ValueNumeric<>0) Then
       	EdImpVlrIcms.ValueNumeric:=(EdimpIcms.ValueNumeric*EdBCIcms.ValueNumeric)/100
       Else
           EdImpVlrIcms.ValueNumeric:=0;
   End;
end;

procedure TFPedidoPadrao.EDCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', EDCodBarra.Text, '')=True
       Then Begin
			EscreveLabels;
       End
       Else Begin
           LimpaLabels;
           LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;

end;

procedure TFPedidoPadrao.EDCodInternoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
       if DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'PL' then
       begin
           if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT','' ,'(upper(CONTRINT) like upper('+#39+EDCodInterno.Text+'%'+#39+')) ORDER BY CONTRINT')=True
           Then Begin
               EscreveLabels;
    //           EDCodInterno.Text:=''
           End
           Else Begin
               LimpaLabels;
               LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
           End;
       end
       else begin
           if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'Upper(CONTRINT)', UpperCase(EDCodInterno.Text), '')=True
           Then Begin
               EscreveLabels;
    //           EDCodInterno.Text:=''
           End
           Else Begin
               LimpaLabels;
               LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
           End;
       end;    
   End;
end;

//Função para chamar a tela do fiscal de dentro da tela de consulta do pedido
Function TFPedidoPadrao.GeraFiscalPed: Boolean;
Begin
   If XSQLTABELA = 'PEDVENDA'
   Then Begin
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('update pedvenda set COD_USUARIO =:COD_USUARIO, DTPEDVEN=:DATA, COD_FORMPAG =:COD_FORMPAG, COD_VENDEDOR =:COD_VENDEDOR, OBS =:OBS');
       DMSAIDA.TAlx.SQL.Add('where pedvenda.COD_PEDVENDA = :COD_PEDVENDA');

       DMSAIDA.TAlx.ParamByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
       DMSAIDA.TAlx.ParamByName('COD_FORMPAG').AsInteger := XCodFormPag;
       DMSAIDA.TAlx.ParamByName('DATA').AsString := DBDATA.Text;
       DMSAIDA.TAlx.ParamByName('COD_VENDEDOR').AsInteger := XCodVendedor;
       DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(XCodPedido);
       DMSAIDA.TAlx.ParamByName('OBS').AsString := DBMemo.Text;   

        Try
           DMSAIDA.TAlx.ExecSQL;
           DMSAIDA.IBT.CommitRetaining;
        Except
           DMSAIDA.IBT.RollbackRetaining;
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Erro P1015: Problemas durante a tentativa de gravação, verifique os dados. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
        End;

   End
   Else Begin
       DMENTRADA.TAlx.Close;
       DMENTRADA.TAlx.SQL.Clear;
       DMENTRADA.TAlx.SQL.Add('update pedcompra set COD_USUARIO=:COD_USUARIO, DTPEDCOMP=:DATA, COD_FORMPAG=:COD_FORMPAG, VENDEDOR=:VENDEDOR, OBS=:OBS ');
       DMENTRADA.TAlx.SQL.Add('where pedcompra.cod_pedcomp = :COD_PEDCOMP');
       DMENTRADA.TAlx.ParamByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
       DMENTRADA.TAlx.ParamByName('COD_FORMPAG').AsInteger := XCodFormPag;
       DMENTRADA.TAlx.ParamByName('DATA').AsString := DBDATA.Text;
       DMENTRADA.TAlx.ParamByName('VENDEDOR').AsString := dbvendedor.Text;
       DMENTRADA.TAlx.ParamByName('COD_PEDCOMP').AsInteger := StrToInt(XCodPedido);
       DMENTRADA.TAlx.ParamByName('OBS').AsString := DBMemo.Text;
       //DMENTRADA.TAlx.ParamByName('DTPEDCOMP').AsDateTime := StrToDate(DBDATA.Text);
        Try
           DMENTRADA.TAlx.ExecSQL;
           DMENTRADA.IBT.CommitRetaining;
        Except
           DMENTRADA.IBT.RollbackRetaining;
           DMESTOQUE.TransacEstoque.RollbackRetaining;
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Erro P1016: Problemas durante a tentativa de gravação, verifique os dados. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
        End;
   End;
   If XSQLTABELA = 'PEDVENDA'
   Then Begin
        FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XCodPedido, '')
   End
   Else Begin
        FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', XCodPedido, '')
   End;

   //Valida se foi informado corretamente o cliente ou fornecedor do pedido
   If PPesCad.Visible=True
   Then Begin
   	If DBNomeCli.Text=''
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe o Nome do cliente no pedido', '', 1, 1, False, 'i');
           EdCodCli.SetFocus;
           Exit;
       End;
	End
   Else Begin
		If EdNomeCli.Text=''
	    Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe o cliente/fornecedor do pedido', '', 1, 1, False, 'i');
			BtnProcPess.SetFocus;
           Exit;
       End;
   End;
	//Valida caso cliente não seja cadastrado a venda somente pode ser à vista
   If XSQLTABELA='PEDVENDA'
   Then Begin
   	If PPesCad.Visible=FALSE
   	Then Begin
           // 04/05/2009:  update na unha!
           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add('update pedvenda set NOMECLI =:NOMECLI, CPFCNPJ =:CPFCNPJ');
           DMSAIDA.TAlx.SQL.Add('where pedvenda.COD_PEDVENDA = :COD_PEDVENDA');

           DMSAIDA.TAlx.ParamByName('NOMECLI').AsString := EdNomeCli.Text;
           DMSAIDA.TAlx.ParamByName('CPFCNPJ').AsString := EdCPF.Text;
           DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(XCodPedido);

            Try
               DMSAIDA.TAlx.ExecSQL;
               DMSAIDA.IBT.CommitRetaining;
            Except
               DMSAIDA.IBT.RollbackRetaining;
               Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Erro P1010: Problemas durante a tentativa de gravação, verifique os dados. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
            End;

       End;

       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('update pedvenda set GARANTIA =:GARANTIA, VLRCOMIS =:VLRCOMIS, COD_CLIENTE=:COD_CLIENTE');
       DMSAIDA.TAlx.SQL.Add('where pedvenda.COD_PEDVENDA = :COD_PEDVENDA');

       IF CBGarantia.Checked Then
	    	DMSAIDA.TAlx.ParamByName('GARANTIA').AsString := '1'
       Else
	    	DMSAIDA.TAlx.ParamByName('GARANTIA').AsString := '';

       DMSAIDA.TAlx.ParamByName('VLRCOMIS').AsCurrency := XVLRCOMIS;
       DMSAIDA.TAlx.ParamByName('COD_CLIENTE').AsInteger := XCodPessoa;
       DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(XCodPedido);

        Try
           DMSAIDA.TAlx.ExecSQL;
           DMSAIDA.IBT.CommitRetaining;
        Except
           DMSAIDA.IBT.RollbackRetaining;
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Erro P1011: Problemas durante a tentativa de gravação, verifique os dados. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
        End;

       //XCodPedido:=IntToStr(CodPedido);
   	//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI PARA EDITAR O VALOR
   	If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+XCodPedido+#39+')')=True
   	Then Begin
       	If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMSAIDA.TFiscPV.FieldByName('cod_cfop').AsString, '')=True
           Then Begin
           	If DMESTOQUE.TCFOP.FieldByName('NCI').AsString<>'1'
               Then Begin
                   //EDITAL FISCAL EXISTENTE
                   DMSAIDA.TFiscPV.First;
                   DMSAIDA.TFiscPV.Edit;
                   DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency := XVLRTOTALPROD;//XTabela.FieldByName('VALOR').AsCurrency;
                   DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency := EdValorPed.ValueNumeric;//XTabela.FieldByName('VALOR').AsCurrency;
                   DMSAIDA.TFiscPV.Post;
               End;
           End;
       End;

   	If XCodPessoa = DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
       Then Begin
       	If EDFORMPAG.Text<>'À VISTA'
           Then Begin
				Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
				BtnProcFormPag.SetFocus;
	            Exit;
           End;
       End;
   End;
   //valida vendedor caso somente em venda
   If PCadVendedor.Visible=False
   Then Begin
   	If EDNOMEVENDEDOR.Text=''
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe o vendedor para o pedido', '', 1, 1, False, 'i');
			BtnProcVend.SetFocus;
           Exit;
		End;
   End;

   //Valida forma de pagamento
   If (EDCODFORMPAG.Text='-1') or (EDCODFORMPAG.Text='') or (EDFORMPAG.Text='')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe a forma de pagamento do pedido', '', 1, 1, False, 'i');
	  	BtnProcFormPag.SetFocus;
       Exit;
	End;
   /// aki !!
   If XSQLTABELA = 'PEDVENDA'
   Then Begin

       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('update pedvenda set VALOR =:VALOR, DESCMOE =:DESCMOE, FATURADO =:FATURADO, SITUACAO =:SITUACAO, DTPEDVEN =:DTPEDVEN');
       DMSAIDA.TAlx.SQL.Add('where pedvenda.COD_PEDVENDA = :COD_PEDVENDA');

       DMSAIDA.TAlx.ParamByName('VALOR').AsCurrency := EdValorPed.ValueNumeric;
       DMSAIDA.TAlx.ParamByName('DESCMOE').AsCurrency := EdDescMoeda.ValueNumeric;
       DMSAIDA.TAlx.ParamByName('FATURADO').AsInteger := 0;
       DMSAIDA.TAlx.ParamByName('DTPEDVEN').AsString := DBDATA.Text;
       If DMMacs.tloja.FieldByName('FECHAPED').AsString='1' Then
          DMSAIDA.TAlx.ParamByName('SITUACAO').AsString := 'FECHADO'
       Else
           DMSAIDA.TAlx.ParamByName('SITUACAO').AsString := 'ABERTO';
       DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(XCodPedido);

        Try
           DMSAIDA.TAlx.ExecSQL;
           DMSAIDA.IBT.CommitRetaining;
        Except
           DMSAIDA.IBT.RollbackRetaining;
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Erro P1114: Problemas durante a tentativa de gravação, verifique os dados. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
        End;

   End
   Else Begin
       DMENTRADA.TAlx.Close;
       DMENTRADA.TAlx.SQL.Clear;
       DMENTRADA.TAlx.SQL.Add('update pedcompra set VALOR=:VALOR, DESCMOE=:DESCMOE, SITUACAO=:SITUACAO, COD_FORNEC=:COD_FORNEC');
       DMENTRADA.TAlx.SQL.Add('where pedcompra.cod_pedcomp = :COD_PEDCOMP');

       DMENTRADA.TAlx.ParamByName('VALOR').AsCurrency := EdValorPed.ValueNumeric;
       DMENTRADA.TAlx.ParamByName('DESCMOE').AsCurrency := EdDescMoeda.ValueNumeric;
       If DMMacs.tloja.FieldByName('FECHAPED').AsString='1' Then
          DMENTRADA.TAlx.ParamByName('SITUACAO').AsString := 'FECHADO'
       Else
           DMENTRADA.TAlx.ParamByName('SITUACAO').AsString := 'ABERTO';
       DMENTRADA.TAlx.ParamByName('COD_FORNEC').AsInteger := XCodPessoa;
       DMENTRADA.TAlx.ParamByName('COD_PEDCOMP').AsInteger := StrToInt(XCodPedido);

        Try
           DMENTRADA.TAlx.ExecSQL;
           DMENTRADA.IBT.CommitRetaining;
        Except
           DMENTRADA.IBT.RollbackRetaining;
           DMESTOQUE.TransacEstoque.RollbackRetaining;
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Erro P1115: Problemas durante a tentativa de gravação, verifique os dados. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
        End;
   End;
   // fim!

   If XSQLTABELA = 'PEDVENDA'
   Then Begin
        FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XCodPedido, '')
   End
   Else Begin
        FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', XCodPedido, '')
   End;

   //Passa outras informações
   Try
      //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
      FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

      If (DMMacs.TLoja.FieldByName('IMPPEDFECH').AsString='1') And (XSQLTABELA='PEDVENDA') And (DMMacs.tloja.FieldByName('FECHAPED').AsString<>'1') Then //a impressão do pedido deve ser feita automatiacamente
		   ImpPed(XTabela.FieldByName(XPkTabela).AsInteger);

   Except
      Mensagem('OPÇÃO BLOQUEADA', 'Erro P1113: Houve um problema ao gravar o cabeçalho do pedido!', 'Por um motivo desconhecico o sistema não conseguiu gravar as últimas alterações do pedido. Os dados serão retornados até a última vez em que o pedido foi salvo.', 1, 1, True, 'a');
	   XTransaction.RollbackRetaining;
	End;

   If XSQLTABELA='PEDVENDA'
   Then Begin
       // FILTRA TABELA BUSCANDO REGISTRO
       FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XCodPedido,'');

       // LIBERANDO REGISTRO PARA CONSULTAS
       {DMSAIDA.TPedV.Edit;
       DMSAIDA.TPedV.FieldByName('EDIT').AsString := '0';
       DMSAIDA.TPedV.Post;
       DMSAIDA.IBT.CommitRetaining;}

       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('update pedvenda set EDIT =:EDIT');
       DMSAIDA.TAlx.SQL.Add('where pedvenda.COD_PEDVENDA = :COD_PEDVENDA');

       DMSAIDA.TAlx.ParamByName('EDIT').AsString := '0';
       DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(XCodPedido);

        Try
           DMSAIDA.TAlx.ExecSQL;
           DMSAIDA.IBT.CommitRetaining;
        Except
           DMSAIDA.IBT.RollbackRetaining;
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Erro P1116: Problemas durante a tentativa de gravação, verifique os dados. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
        End;
   End;

   If XSQLTABELA = 'PEDVENDA'
   Then Begin
        FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XCodPedido, '')
   End
   Else Begin
        FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', XCodPedido, '')
   End;

   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('select * from lojacesso');
   DMMACS.TALX.SQL.Add('where (lojacesso.cod_usuario=:COD)');
   DMMACS.TALX.ParamByName('COD').AsString:=FMenu.LCODUSUARIO.Caption;
   DMMACS.TALX.Open;

   //VERIFICA SE O PRODUTO DEVE SER FECHADO AUTOMATICAMENTE APÓS A VENDA
   If (DMMacs.tloja.FieldByName('FECHAPED').AsString='1') or (DMMACS.Talx.FieldByName('FECHAAUTOPED').AsString='1')
   Then Begin//Fechar pedido automaticamente ao gravar
		//Chama Função para fechar o pedido
       If XSQLTABELA='PEDVENDA'
       Then Begin
           If EDFORMPAG.Text='À VISTA'
           Then Begin//como é uma venda a vista o sistema vai pegar a conta padrão para vendas a vista
				If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
               Then Begin//se existir uma conta padrao configurada
					XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
		   			FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
               		FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               		FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
			        FrmConta.EDCodigo.Text:='';
			        FrmConta.EdDescricao.Text:='';
               End;
			End
           Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
				If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
               Then Begin//se existir uma conta padrao configurada
					XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
		   			FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
               	FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
			        FrmConta.EDCodigo.Text:='';
			        FrmConta.EdDescricao.Text:='';
               End;
			End;
           EdDtFech.Text := DateToStr(Date);
       End;
   End;
	AbrirForm(TFFiscalEntradas, FFiscalEntradas, 0);
   XFecha:=0;
   XFlagNfe:=0;
   FiltraSlave;
End;
procedure TFPedidoPadrao.BtnGravarClick(Sender: TObject);
VAR
	XTEST : Boolean;
   XPATHEXE:String;
   XFlagControlNumero: Integer;
begin
	Try
       XControlDesc := 0;
       FMenu.TIPOREL:='NORMAL';

       //*************************************************
       //PASSO 01 - Efetua controles e possíveis bloqueios
       //*************************************************

       //MAURO 23/01/2013 - valida numeração do pedido de compra
       If (XCtrlDvl = '1') And ((EdNumeroPedido.Text = '0') or (EdNumeroPedido.Text = ''))
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe a numero do pedido', '', 1, 1, False, 'i');
           EdNumeroPedido.SetFocus;
           Exit;
       End;

       Try
             StrToInt(EdNumeroPedido.Text);
       Except
             MessageDlg('Apenas valores numéricos serão aceitos no campo Número do Pedido', mtWarning, [mbOK], 0);
             EdNumeroPedido.SetFocus;
             Exit;
       End;
       //Valida forma de pagamento
       If (EDCODFORMPAG.Text='-1') or (EDCODFORMPAG.Text='') or (EDFORMPAG.Text='')
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe a forma de pagamento do pedido', '', 1, 1, False, 'i');
           BtnProcFormPag.SetFocus;
           Exit;
       End;

       //CONTROLA CRÉDITO DO CLIENTE
       If XSQLTABELA='PEDVENDA'
       Then Begin
           //valida vendedor caso somente em venda
           If PCadVendedor.Visible=False
           Then Begin
               If EDNOMEVENDEDOR.Text=''
               Then Begin
                   Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe o vendedor para o pedido', '', 1, 1, False, 'i');
                   BtnProcVend.SetFocus;
                   Exit;
               End;
           End;

           If XCodPessoa = DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
           Then Begin
               If EDFORMPAG.Text<>'À VISTA'
               Then Begin
                   Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
                   BtnProcFormPag.SetFocus;
                   Exit;
               End;
           End;
          //Valida se foi informado corretamente o cliente ou fornecedor do pedido
          If PPesCad.Visible=True
          Then Begin
               If DBNomeCli.Text=''
               Then Begin
                   Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe o Nome do cliente no pedido', '', 1, 1, False, 'i');
                   EdCodCli.SetFocus;
                   Exit;
               End;
           End
           Else Begin
               If EdNomeCli.Text=''
               Then Begin
                   Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe o cliente/fornecedor do pedido', '', 1, 1, False, 'i');
                   BtnProcPess.SetFocus;
                   Exit;
               End;
          End;
          //VEERIFICA SE DIAS DE INTERVALO MAIOR QUE ZERO, SE IGUAL OU MENOR A ZERO O SISTEMA NÃO DEVE FAZER CONTROLE
          If DMMACS.TLoja.FieldByName('DIASBLOQCLI').AsInteger<>0
          Then Begin
           If EDFORMPAG.Text<>'À VISTA'
           Then Begin
               //SE O USUARIO POSSUI LIBERAÇÃO DE CRÉDITO NÃO FAZ CONTROLE PARA O CLIENTE
               If ControlAccess('LIBERACRED', '')=False
               Then Begin
                 XLIBCRED:=True;
                 If VerificBloqCli(IntToStr(XCodPessoa))=True
                 Then Begin
                   If Mensagem('C R É D I T O   B L O Q U E A D O', 'O Cliente informado possui Crédito Bloqueado. Deseja solicitar senha para liberar venda?', '', 2, 3, False, 'c')= 2
                   Then Begin
                       AbrirForm(TFSENHA, FSENHA, 0);
                       //repassa resultado da tela de autenticação de senha para as variáveis de controle
                       If XAlxResult=True Then
                           XLIBCRED:=True
                       Else
                           XLIBCRED:=False;
                       End
                   Else Begin
                       XLIBCRED:=False;
                   end;
                 End;
                 If XLIBCRED=False
                 Then Begin
                   Mensagem('C R É D I T O   B L O Q U E A D O', 'O Cliente informado possui Crédito Bloqueado. O Pedido não pode ser gravado com o cliente tendo crédito bloqueado!', '', 1, 1, false, 'i');
                   Exit;
                 End;
               End;
           End;
          End;
          //CONTROLA LIMITE DE CREDITO
          If EDFORMPAG.Text<>'À VISTA'
          Then Begin
               DMPESSOA.TCliente.Close;
               DMPESSOA.TCliente.SQL.Clear;
               DMPESSOA.TCliente.SQL.Add('select * from cliente where cliente.cod_cliente = :codigo');
               DMPESSOA.TCliente.ParamByName('codigo').AsInteger := XCodPessoa;
               DMPESSOA.TCliente.Open;

               If (DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency<EdValorPed.ValueNumeric) And (DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency<>0)
               Then Begin
                   //SE O USUARIO POSSUI LIBERAÇÃO DE CRÉDITO NÃO FAZ CONTROLE PARA O CLIENTE
                   If ControlAccess('LIBERACRED', '')=True
                   Then Begin
                       XControlDesc := 1;
                       If DMMACS.TLoja.FieldByName('MSGLIMITCRED').AsString = '1'
                       then begin
                           Mensagem('LIMITE DE CRÉDITO', 'O valor do pedido excedeu o limite de crédito do cliente!'+#13+'Limite: R$ '+FormatFloat('###,##0.00', DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency) , '', 1, 1, false, 'A');
                       END;
                   End
                   Else Begin
                       XControlDesc := 1;
                       If DMMACS.TLoja.FieldByName('MSGLIMITCRED').AsString = '1'
                       then begin
                           Mensagem('LIMITE DE CRÉDITO', 'O valor do pedido excedeu o limite de crédito do cliente!'+#13+'Limite: R$ '+FormatFloat('###,##0.00', DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency) , '', 1, 1, false, 'A');
                           Mensagem('LIMITE DE CRÉDITO', 'A VENDA FOI BLOQUEADA!' , '', 1, 1, false, 'A');
                           Exit;
                       end;
                   End;
               End;

               // soma o total da conta que o cliente jah tah devendo
               DMCONTA.TAlx.Close;
               DMCONTA.TAlx.SQL.Clear;
               DMCONTA.TAlx.SQL.Add(' select sum(ctareceber.valor) as TOTAL from ctareceber ');
               DMCONTA.TAlx.SQL.Add(' where ctareceber.cod_cliente = :codigo ');
               DMCONTA.TAlx.ParamByName('codigo').AsInteger := XCodPessoa;
               DMCONTA.TAlx.Open;

               // se a divida do cliente mais o total da compra atual for maior que seu limite de compra, o pedido nao eh finalizado
               If (DMCONTA.TAlx.FieldByName('TOTAL').AsCurrency + EdValorPed.ValueNumeric) > DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency
               Then Begin
                   // a variavel faz verificação para saber se a mensagem jah foi exibida
                   If XControlDesc = 0
                   Then Begin
                       //SE O USUARIO POSSUI LIBERAÇÃO DE CRÉDITO NÃO FAZ CONTROLE PARA O CLIENTE
                       If ControlAccess('LIBERACRED', '')=True
                       Then Begin
                          If DMMACS.TLoja.FieldByName('MSGLIMITCRED').AsString = '1'
                          then begin
                            Mensagem('LIMITE DE CRÉDITO', 'A conta que o cliente já possui mais o pedido atual ultrapassam seu limite.'+#13+'Limite: R$ '+FormatFloat('###,##0.00', DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency) , '', 1, 1, false, 'A');
                          end;
                       End
                       Else Begin
                       If DMMACS.TLoja.FieldByName('MSGLIMITCRED').AsString = '1'
                       then begin
                           Mensagem('LIMITE DE CRÉDITO', 'A conta que o cliente já possui mais o pedido atual ultrapassam seu limite.'+#13+'Limite: R$ '+FormatFloat('###,##0.00', DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency) , '', 1, 1, false, 'A');
                           Mensagem('LIMITE DE CRÉDITO', 'A VENDA FOI BLOQUEADA!' , '', 1, 1, false, 'A');
                           Exit;
                       end;
                       End;
                   End;
               End;
          End;
       End;
       If XSQLTABELA='PEDCOMPRA'
       Then Begin
           //Verifica a existencia de outro pedido com o mesmo numero  fiscal
           If DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString<>''
           Then Begin
               If FiltraTabela(DMENTRADA.WPedC, 'VWPEDC', 'NUMFISCAL', '', '  (NUMFISCAL='+DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString+') and (COD_FORNEC='+IntToStr(XCodPessoa)+') AND (COD_PEDCOMP<>'+XCodPedido+') ')=True
               Then Begin
                   Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, altere o Número Fiscal, já existe um pedido cadastrado com este Número e fornecedor', '', 1, 1, False, 'i');
                   EdNumeroPedido.SetFocus;
                   Exit;
               End;
           End;
       End;

       //************************************************************************************************************************************************************
       //PASSO 02 - Efetua controles da numeração do pedido, caso o pedido informado já exista cadastrado o sistema procura o proximo pedido válido na tabela empresa
       //************************************************************************************************************************************************************
       If XSQLTABELA='PEDVENDA'
       Then Begin
           //Paulo 23/03/2011 verifica se precisa controlar o numero do pedido ou não
           if (DMMACS.TLoja.FieldByName('CTRLNUM').AsString = '0') or (DMMACS.TLoja.FieldByName('CTRLNUM').AsString = ' ')then
           begin
               XFlagControlNumero:=1;
               While XFlagControlNumero=1 do
               Begin
                   If FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'NUMPED', '', ' (NUMPED='+#39+EdNumeroPedido.Text+#39+') AND (COD_PEDVENDA<>'+XCodPedido+') ')=True
                   Then Begin
                       //caso já exista o mesmo numero em outro pedido incrementamos mais um numero de acordo com a tabela empresa e continuamos loop para teste
                       EdNumeroPedido.Text:=IntToStr(RetornaNumPed);
                       MessageDlg('O Número anteriormente informado para o Pedido já existia em banco.'+#13+#10+'O Sistemas alterou automaticamente para: '+EdNumeroPedido.Text, mtWarning, [mbOK], 0)
                   End
                   Else Begin
                       Try
                           //Testamos o numero do edit para garantir que é um numero
                           StrToInt(EdNumeroPedido.Text);
                           If XNumPedido<>StrToInt(EdNumeroPedido.Text) Then
                               MessageDlg('O Número anteriormente informado para o Pedido já existia em banco.'+#13+#10+'O Sistemas alterou automaticamente para: '+EdNumeroPedido.Text, mtWarning, [mbOK], 0)
                       Except
                       End;
                       XFlagControlNumero:=0;
                   End;
               End;
          end;

       End
       Else Begin
           If FiltraTabela(DMENTRADA.WPedC, 'VWPEDC', 'NUMPED', '', ' (NUMPED='+EdNumeroPedido.Text+') AND (COD_PEDCOMP<>'+XCodPedido+') and (COD_FORNEC='+IntToStr(XCodPessoa)+')')=True
           Then Begin
               Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, altere o Número do pedido, já existe um pedido cadastrado com este Número e fornecedor', '', 1, 1, False, 'i');
               EdNumeroPedido.SetFocus;
               Exit;
           End;
       End;

       //**************************************************
       //PASSO 03 - Atualiza valores nas tabelas de pedidos
       //**************************************************
       If XSQLTABELA = 'PEDVENDA'
       Then Begin
           Try
               XTabela.Edit;
               XTabela.FieldByName('VLRFRETE').AsCurrency:=XVLRFRETE;
               XTabela.FieldByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
               XTabela.FieldByName('COD_FORMPAG').AsInteger := XCodFormPag;
               XTabela.FieldByName('dtpedven').AsString := DBDATA.Text;
               XTabela.FieldByName('COD_VENDEDOR').AsInteger := XCodVendedor;
               XTabela.FieldByName('COD_PEDVENDA').AsInteger := StrToInt(XCodPedido);
               XTabela.FieldByName('OBS').AsString := DBMemo.Text;
               XTabela.FieldByName('NOMECLI').AsString :=  DbNomeCli.Text;
               XTabela.FieldByName('CPFCNPJ').AsString := DbCpf.Text;
               IF CBGarantia.Checked Then
                   XTabela.FieldByName('GARANTIA').AsString := '1'
               Else
                   XTabela.FieldByName('GARANTIA').AsString := '';
               XTabela.FieldByName('VLRCOMIS').AsCurrency := XVLRCOMIS;
               XTabela.FieldByName('COD_CLIENTE').AsInteger := XCodPessoa;
               XTabela.FieldByName('COD_PEDVENDA').AsInteger := StrToInt(XCodPedido);
               XTabela.FieldByName('NUMPED').AsString := EdNumeroPedido.Text;
               XTabela.FieldByName('VALOR').AsCurrency := EdValorPed.ValueNumeric;
               XTabela.FieldByName('VLRDESP').AsCurrency := XVLRTOTALDESP;
               XTabela.FieldByName('VLRFRETE').AsCurrency := EdValorFrete.ValueNumeric;
               XTabela.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency := EdValoIcmsSubstituicao.ValueNumeric;
               XTabela.FieldByName('VLRIPI').AsCurrency := EdValorIpi.ValueNumeric;
               XTabela.FieldByName('VLROUTROS').AsCurrency := EdValorOutros.ValueNumeric;
               XTabela.FieldByName('DESCMOE').AsCurrency := EdDescMoeda.ValueNumeric;
               XTabela.FieldByName('DESCONTO').AsCurrency := EDDescPed.ValueNumeric;
               XTabela.FieldByName('FATURADO').AsInteger := 0;
               XTabela.FieldByName('DTPEDVEN').AsString := DBDATA.Text;
               XTabela.FieldByName('SITUACAO').AsString := 'ABERTO';
               XTabela.FieldByName('EDIT').AsString := '0';
               XTabela.FieldByName('ATU').AsString := '1';
               
               XTabela.Post;
               DMSAIDA.IBT.CommitRetaining;
           Except
               MessageDlg('Ocorreu uma falha ao atualizar os dados do pedido. Este procedimento será cancelado e você poderá procurar pelo pedido Número: '+IntToStr(XNumPedido), mtWarning, [mbOK], 0);
				desabilitaPCadastro;
           End;
       End
       Else Begin
           Try
           	if XFlagNfe = 1 then
               begin
           		XCodFormPag:=StrToInt(EDCODFORMPAG.Text);
                   XCodPessoa:=StrToInt(EdCodCli.Text);
               end;
               XTabela.Edit;
               XTabela.FieldByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
               XTabela.FieldByName('COD_FORMPAG').AsInteger := XCodFormPag;
               XTabela.FieldByName('dtpedcomp').AsString := DBDATA.Text;
               XTabela.FieldByName('VENDEDOR').AsString := dbvendedor.Text;
               XTabela.FieldByName('COD_PEDCOMP').AsInteger := StrToInt(XCodPedido);
               XTabela.FieldByName('OBS').AsString := DBMemo.Text;
               XTabela.FieldByName('NUMPED').AsString := EdNumeroPedido.Text;
               XTabela.FieldByName('VALOR').AsCurrency := EdValorPed.ValueNumeric;
               XTabela.FieldByName('VLRFRETE').AsCurrency := EdValorFrete.ValueNumeric;
               XTabela.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency := EdValoIcmsSubstituicao.ValueNumeric;
               XTabela.FieldByName('VLRIPI').AsCurrency := EdValorIpi.ValueNumeric;
               XTabela.FieldByName('VLROUTROS').AsCurrency := EdValorOutros.ValueNumeric;
               XTabela.FieldByName('DESCMOE').AsCurrency := EdDescMoeda.ValueNumeric;
               XTabela.FieldByName('DESCONTO').AsCurrency := EDDescPed.ValueNumeric;
               XTabela.FieldByName('COD_DESTINATARIO').AsInteger:=XCod_Destinatario;
               XTabela.FieldByName('DESTINATARIO').AsString:=xnomedestinatario;
               XTabela.FieldByName('SITUACAO').AsString := 'ABERTO';
               XTabela.FieldByName('COD_FORNEC').AsInteger := XCodPessoa;

               IF(FMenu.XOutrosEnt = TRUE)THEN
                   XTabela.FieldByName('NUMDEV').AsString := 'OUT';
               If FMenu.XNotaEntrada=True Then
                   XTabela.FieldByName('FISCO').AsString:='NF';   	//Quando uma nota for do tipo de emissão propra devemos marca-la como NF para possibilitar a impressão de nota fiscal
               XTabela.Post;

           Except
               MessageDlg('Ocorreu uma falha ao atualizar os dados do pedido. Este procedimento será cancelado e você poderá procurar pelo pedido Número: '+IntToStr(XNumPedido), mtWarning, [mbOK], 0);
				desabilitaPCadastro;
           End;
       End;

       //*********************************************
       //PASSO 04 - Confirma Atualizações de transação
       //*********************************************
       try
           if not XTransaction.InTransaction then
               XTransaction.CommitRetaining;
       except
           MessageDlg('O sistema de prevenção a perca de dados detectou uma falha na comunicação com o banco de dados. Solicitamos que o sistema seja reiniciado.'+#13+#10+'Caso o problema continue consulte o suporte técnico para solução.'+#13+'Seu pedido foi parcialmente salvo com o Número: '+IntToStr(XNumPedido), mtWarning, [mbOK], 0);
           if XTransaction.InTransaction then
               XTransaction.Rollback;

           //Cancela Operação de Inserção e retorna a tela de consulta
			desabilitaPCadastro;
           Exit;
       end;

       //********************************************
       //PASSO 05 - Refiltra Pedidos para demais usos
       //********************************************
       If XSQLTABELA = 'PEDVENDA' Then
           FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XCodPedido, '')
       Else
            FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', XCodPedido, '');

       //*************************
       //PASSO 06 - Imprime Pedido
       //*************************
       If  (XExiste=False) AND (DMMacs.TLoja.FieldByName('IMPPEDFECH').AsString='1') And (XSQLTABELA='PEDVENDA') And (DMMacs.tloja.FieldByName('FECHAPED').AsString<>'1') Then //a impressão do pedido deve ser feita automatiacamente
           ImpPed(XTabela.FieldByName(XPkTabela).AsInteger);

       //***************************************************************************
       //PASSO 07 - Fecha o Pedido conforme configurações em loja
       //***************************************************************************
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('select * from lojacesso');
       DMMACS.TALX.SQL.Add('where (lojacesso.cod_usuario=:COD)');
       DMMACS.TALX.ParamByName('COD').AsString:=FMenu.LCODUSUARIO.Caption;
       DMMACS.TALX.Open;

       //VERIFICA SE O PRODUTO DEVE SER FECHADO AUTOMATICAMENTE APÓS A VENDA
       If (DMMacs.tloja.FieldByName('FECHAPED').AsString='1') or (DMMACS.Talx.FieldByName('FECHAAUTOPED').AsString='1')
       Then Begin//Fechar pedido automaticamente ao gravar
           //Chama Função para fechar o pedido
           If XSQLTABELA='PEDVENDA'
           Then Begin
           	//Paulo 30/11/2010: NFe Complementação não gera financeiro 
           	if not(FMenu.XComplementacao=True)
               then begin
                   If EDFORMPAG.Text='À VISTA'
                   Then Begin//como é uma venda a vista o sistema vai pegar a conta padrão para vendas a vista
                       If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
                       Then Begin//se existir uma conta padrao configurada
                           XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
                           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                               FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                               FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                       End
                       Else Begin
                           FrmConta.EDCodigo.Text:='';
                           FrmConta.EdDescricao.Text:='';
                       End;
                   End
                   Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
                       If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
                       Then Begin//se existir uma conta padrao configurada
                           XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
                           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                           FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                           FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                       End
                       Else Begin
                           FrmConta.EDCodigo.Text:='';
                           FrmConta.EdDescricao.Text:='';
                       End;
                   End;
               end;    
               EdDtFech.Text := DateToStr(Date);
           End
           ELSE BEGIN
               If EDFORMPAG.Text='À VISTA'
               Then Begin//como é uma venda a vista o sistema vai pegar a conta padrão para vendas a vista
                   If DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsString<>''
                   Then Begin//se existir uma conta padrao configurada
                       XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger;
                       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                       FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                       FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                   End
                   Else Begin
                       FrmConta.EDCodigo.Text:='';
                       FrmConta.EdDescricao.Text:='';
                   End;
               End
               Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
                   If DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsString<>''
                   Then Begin//se existir uma conta padrao configurada
                       XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger;
                       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                       FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                       FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                   End
                   Else Begin
                       FrmConta.EDCodigo.Text:='';
                       FrmConta.EdDescricao.Text:='';
                   End;
               End;
           CBGeraFinanceiro.Visible := false;
           CBGeraFinanceiro.SendToBack;
           End;
           //Paulo 30/11/2010: NFe Complementação não gera financeiro 
           if not(FMenu.XComplementacao=True)
           then begin
           	EdDtFech.Text := DateToStr(Date);
           	PFinanceiro.Visible:=True;
           	PFinanceiro.BringToFront;
           	CBPagamento.SetFocus;
           end;    
        End
        Else Begin
          //Atualiza View da tela de Consulta
          //Seleciona apenas pedidos pertencentes a loja
		   ExecutaLiberaDados;
          desabilitaPCadastro;
          EdNome.SetFocus;
       End;
       // "apagando" label de atacadista
       LAtacadista.Visible := false;
       EDDescPed.Text:='';
       EDDesc.Text:='';
       EdDescMoeda.Text:='';
       //habilita o botão "X" de fechar para que o usuário possa fechar a tela
       BtnFecha.Visible:=True;
       Estado := 'CONSULTA';
       //18/03/2009: deixar  como false.. para proxima nota não pegar o vlr do transporte
       FMenu.XFRETETRANSPCOMPOEM := False;
       
       if XFlagNfe = 1 then
           BtnConsultarClick(Sender);
   Except

   End;
end;

procedure TFPedidoPadrao.BtnDeleteListClick(Sender: TObject);
begin
  inherited;

   If DMESTOQUE.TSlave.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
   	If XSQLTABELA='PEDVENDA'
       Then Begin
   		If (DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString='TRC')
       	Then Begin
			      Mensagem('OPÇÃO BLOQUEADA', 'Produtos que foram devolvidos ou trocados não podem ser excluídos da lista.', '', 1, 1, false, 'i');
           	exit;
       	end;
       End;
	  	//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
		  FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
		  FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
  	    If XSQLTABELA='PEDVENDA'
	    Then Begin
			FiltraTabela(XTabSlave, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsString, '');
	    End
	    Else Begin
			FiltraTabela(XTabSlave, 'ITENSPEDC', 'COD_ITENSPEDC', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDC').AsString, '');
	    End;
	    //Atualiza Estoque
	    If XSQLTABELA='PEDVENDA'
	    Then Begin
	 	  	If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
	        Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
		   	   	//atualiza estoque físico
       		If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
       		then begin
                   DMEstoque.TEstoque.edit;
                   DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+XTabSlave.FieldByName('QTDENTREGUE').AsCurrency;
                   DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                   DMEstoque.TEstoque.Post;
               End
               Else Begin
                   DMEstoque.TEstoque.edit;
                   DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+XTabSlave.FieldByName('QTDEPROD').AsCurrency;
                   DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                   DMEstoque.TEstoque.Post;
               End;
	        End
    	    Else Begin
		       	//atualiza estoque reservado e saldo
               DMEstoque.TEstoque.edit;
		       	DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency-XTabSlave.FieldByName('QTDEPROD').AsCurrency;
               DMEstoque.TEstoque.Post;
	      	End;
  		If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
   		Then Begin
           	//Atualiza o Estoque do Lote
           	DMESTOQUE.TEstoqueLote.Close;
           	DMESTOQUE.TEstoqueLote.SQL.Clear;
           	DMESTOQUE.TEstoqueLote.SQL.Add('SELECT * FROM ESTOQUELOTE WHERE (ESTOQUELOTE.COD_LOTE=:CODLOTE) and (ESTOQUELOTE.COD_ESTOQUE=:CODESTOQUE)');
           	DMESTOQUE.TEstoqueLote.ParamByName('CODLOTE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_LOTE').AsInteger;
           	DMESTOQUE.TEstoqueLote.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
           	DMESTOQUE.TEstoqueLote.Open;
           	If Not DMESTOQUE.TEstoqueLote.IsEmpty
           	Then Begin
               	DMESTOQUE.TEstoqueLote.Edit;
               	DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency:=DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency+XTabSlave.FieldByName('QTDEPROD').AsCurrency;
               	DMESTOQUE.TEstoqueLote.Post;
           	End;
       	End;
	    End
	    Else Begin

        If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
        Then Begin
           	////21/05/2009: verifica se o lote já foi vendido em um pedido de venda
           	DMESTOQUE.Alx.Close;
           	DMESTOQUE.Alx.SQL.Clear;
           	DMESTOQUE.Alx.SQL.Add('select * from itenspedven where (itenspedven.cod_lote = :CODLOTE) and (itenspedven.COD_ESTOQUE=:CODESTOQUE)');
           	DMESTOQUE.Alx.ParamByName('CODLOTE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_LOTE').AsInteger;
           	DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
           	DMESTOQUE.Alx.Open;
           	If Not DMESTOQUE.Alx.IsEmpty
           	Then Begin
                Mensagem('OPÇÃO BLOQUEADA', 'Não é possível excluir este item. Já há um pedido de venda usando o lote do item.', '', 1, 1, false, 'i');
           	    exit;
           	End;
       	End;

         // PEDIDO DE COMPRA
	      	If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
	        Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
           	DMEstoque.TEstoque.edit;
		      	DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-XTabSlave.FieldByName('QTDEST').AsCurrency;
               DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
               DMEstoque.TEstoque.Post;
	        End
	        Else Begin
	         	   //atualiza estoque pedido e saldo
               DMEstoque.TEstoque.edit;
		       	DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency-XTabSlave.FieldByName('QTDEST').AsCurrency;
               DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
				DMEstoque.TEstoque.Post;
	        End;
  		 If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
        Then Begin
           	//Paulo 25/11/2010: Atualiza o Estoque do Lote
           	DMESTOQUE.TEstoqueLote.Close;
           	DMESTOQUE.TEstoqueLote.SQL.Clear;
           	DMESTOQUE.TEstoqueLote.SQL.Add('SELECT * FROM ESTOQUELOTE WHERE (ESTOQUELOTE.COD_LOTE=:CODLOTE) and (ESTOQUELOTE.COD_ESTOQUE=:CODESTOQUE)');
           	DMESTOQUE.TEstoqueLote.ParamByName('CODLOTE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_LOTE').AsInteger;
           	DMESTOQUE.TEstoqueLote.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
           	DMESTOQUE.TEstoqueLote.Open;
           	If Not DMESTOQUE.TEstoqueLote.IsEmpty
           	Then Begin
               	DMESTOQUE.TEstoqueLote.Edit;
               	DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency:=DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency-XTabSlave.FieldByName('QTDEST').AsCurrency;
               	DMESTOQUE.TEstoqueLote.Post;
           	End;
       	End;
	    End;
       //Atualiza saldo de estoque

       //prepara estoque em pedido de compra
       If DMEstoque.TEstoque.FieldByName('ESTPED').AsString='' Then
           XEstPed:=0
       Else
           XEstPed:=DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency;

       //prepara estoque em pedido de venda
       If DMEstoque.TEstoque.FieldByName('ESTRESERV').AsString='' Then
           XEstReserv:=0
       Else
           XEstReserv:=DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency;

       //prepara estoque fisico
       If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString='' Then
           XEstFisico:=0
       Else
           XEstFisico:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency;

       DMESTOQUE.TEstoque.Edit;
       DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
       DMESTOQUE.TEstoque.Post;

       DMESTOQUE.TransacEstoque.CommitRetaining;

	    //APAGA ITEM
	 	XTabSlave.Delete;

 	    //CONFIRMA TRANZAÇÃO
	    Try
		   XTransaction.CommitRetaining;
	    Except
	 	   XTransaction.RollbackRetaining;
	    End;

	 	//VOLTA VALORES AS LABELS
	    EscreveLabels;
	 	EDQuantidade.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsCurrency;

        if XConvUnitEmb
        then begin
            // - 26/01/2009: se for conversao unitaria de embalagens
            edQntEmb.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTDEMB').AsCurrency;
            CBUnidEmb.KeyValue := DMESTOQUE.TSlave.FieldByName('UNIDEMB').AsInteger;
            edQntUnitEmb.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTDNAEMB').AsCurrency;
        end;

        if XConvUnitVenda
        then begin
            // - 26/01/2009: se for conversao unitaria p/ venda
            edQntConvertVenda.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTDeprod').AsCurrency;

            if DMESTOQUE.TSlave.FieldByName('UNIDEMB').AsInteger = cbUnidConvVenda.KeyValue then
                XConvVlr := True
            else
                XConvVlr := False;
                
            edQntConvert.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTDNAEMB').AsCurrency;

            XConvAtivo := True;
        end;
        
	 	EDValUnit.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALUNIT').AsCurrency;
		EDDesc.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('DESCPRO').AsCurrency;
		EDTotal.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
	    //Filtra registros escrsavos
	    FiltraSlave;
       FPLista.OnEnter(Sender);
   End;
end;

procedure TFPedidoPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  	If PFinanceiro.Visible=True Then//se o painel financeiro estiver atrivo as possibilidades abaixo devem ser disconcideradas p/ que não haja erro
	  	Exit;


	inherited;

   If XSQLTABELA='PEDVENDA'
   Then Begin
       // CTRL + D -> eh o comando para desbloquear o pedido de venda caso tenha ocorrido algum problema
       // qdo estava sendo consultado e caiu energia, ou foi pressionado F4 (por exemplo) e nao passou pelo
       // botão GRAVAR ou CANCELAR que liberar o pedido de venda
       If (shift=[ssCtrl]) and (key = 68)
       Then Begin
           // BUSCANDO DADOS DO PEDIDO
           FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XView.FieldByName('COD_PEDVENDA').AsString,'');

           // caso estiver bloqueado entra na condição
           If DMSAIDA.TPedV.FieldByName('EDIT').AsString = '1'
           Then Begin
               If Mensagem('   A T E N Ç Ã O   ','Deseja desbloquear o pedido nº ' + DMSAIDA.TPedV.FieldByName('NUMPED').AsString + ' ?','',2,3,false,'A')=2
               Then Begin

                   // abre formulario de senha
                   AbrirForm(TFSenha,FSenha,0);

                   // caso tenha informado os dados do administrador correto, o pedido eh liberado
                   If XAlxResult = true
                   Then Begin
                       // liberando o pedido para consulta
                       DMSAIDA.TPedV.Edit;
                       DMSAIDA.TPedV.FieldByName('EDIT').AsString := '0';
                       DMSAIDA.TPedV.Post;
                       DMSAIDA.IBT.CommitRetaining;
                   End;
               End;


           End;

       End;
   End;

   //CONTROLE PARA PAINEL DE PRECOS
	If Key=Vk_F1
   Then Begin
       PPrecos.Visible:=True;
       PPrecos.BringToFront;
       EdVlrVarejoVista.SetFocus;
   End;
   If Key=Vk_Escape
   Then Begin
   	If PPrecos.Visible=True
       Then Begin
	       PPrecos.Visible:=False;
//          EDQuantidade.SetFocus;
       End;
   End;
   //Paulo 25/07/2011: Para sair do painel de troco
   If Key=Vk_Escape
   Then Begin
   	If PTroco.Visible=True
       Then Begin
	       PTroco.Visible:=False;
          PTroco.SendToBack;
          EdValorPedido.ValueNumeric:=0;
          EdValorPago.ValueNumeric:=0;
          EdValorTroco.ValueNumeric:=0;
       End;
   End;

   If PCadastro.Visible=True
   Then Begin //controle de pressionamento de teclas na area de cadastro
   	If Key=VK_Down Then
           //DMESTOQUE.TSlave.Next;
   	If Key=VK_Up Then
           //DMESTOQUE.TSlave.Prior;

       If key=VK_Insert Then//Insere produto a lista
           BtnInsertProd.Click;
{       If key=VK_ESCAPE Then//Retira produto da lista
       Begin
       	If FPLista.tag=1 Then//se o focu estiver sobre o painel de lista de inserção
	         	BtnDeleteList.Click;
       End;}
   End;
end;

procedure TFPedidoPadrao.BtnApagarClick(Sender: TObject);
begin
  inherited;
   If XSQLTABELA='PEDVENDA'
   Then Begin
      // BUSCANDO DADOS DO PEDIDO
       FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XView.FieldByName('COD_PEDVENDA').AsString,'');

       // caso o campo tiver valendo 1 eh pq o pedido de venda jah esta sendo usado
       If DMSAIDA.TPedV.FieldByName('EDIT').AsString = '1'
       Then Begin
           Mensagem('    A T E N Ç Ã O   ','O pedido de venda está sendo usado no momento.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
           Exit;
       End
       Else Begin
           DMSAIDA.TPedV.Edit;
           DMSAIDA.TPedV.FieldByName('EDIT').AsString := '1';
           DMSAIDA.TPedV.Post;
           DMSAIDA.IBT.CommitRetaining;
       End;
   End;

	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
 		If (XView.FieldByName('SITUACAO').AsString='FECHADO') OR (XView.FieldByName('SITUACAO').AsString='CANCELADO')
   	Then Begin
			Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível apagar este pedido, por já se encontrar fechado!', '', 1, 1, False, 'a');
       	Exit;
   	End
   	Else Begin
   		//Filtra pedido
       	If XSQLTABELA='PEDVENDA'
       	Then Begin
				FiltraTabela(XTabela, XSqlTabela, 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');
				XCodPedido:=XView.FieldByName('COD_PEDVENDA').AsString;
			    FMenu.XCodPesqPresSel:=XCodPedido;//Armazena temporariamente o codigo do pedido para ser usado fora do pedido padrão
               XTabela.Edit;
               XTabela.FieldByName('EDIT').AsString := '0';
               XTabela.Post;
               DMSAIDA.IBT.CommitRetaining;
       	End
       	Else Begin
				FiltraTabela(XTabela, XSqlTabela, 'COD_PEDCOMP', XView.FieldByName('COD_PEDCOMP').AsString, '');
				XCodPedido:=XView.FieldByName('COD_PEDCOMP').AsString;
		        FMenu.XCodPesqPresSel:=XCodPedido;//Armazena temporariamente o codigo do pedido para ser usado fora do pedido padrão
       	End;

	    	//Filtra tabela de Estoque de acordo com o produto selecionada em fproduto
	    	DMEstoque.TEstoque.Close;
	    	DMEstoque.TEstoque.SQL.Clear;
	    	DMEstoque.TEstoque.SQL.Add('Select * from Estoque Where (COD_LOJA=:CODIGOLOJA) AND (COD_SUBPROD=:CODIGOSUBPROD)');
   		DMEstoque.TEstoque.ParamByName('CODIGOLOJA').AsString:=FMenu.LCODLOJA.Caption;
			DMEstoque.TEstoque.ParamByName('CODIGOSUBPROD').AsString:=DMEstoque.TSubProd.FieldByName('COD_SUBPRODUTO').AsString;
	    	DMEstoque.TEstoque.Open;

       	//Filtra registros do pedido
       	FiltraSlave;

			If Not (DMESTOQUE.TSlave.IsEmpty) and not(DMESTOQUE.TDesp.IsEmpty)
           Then Begin
				Mensagem('INFORMAÇÃO', 'O pedido somente poderá ser apagado após seus itens serem removidos!'+#13+'Para isso clique em consultar.', '', 1, 1, False, 'a');
				Exit;
           End;
           If Not(DMESTOQUE.TDesp.IsEmpty)
           Then Begin
				Mensagem('INFORMAÇÃO', 'O pedido somente poderá ser apagado após suas despesas serem removidas!'+#13+'Para isso clique em consultar.', '', 1, 1, False, 'a');
				Exit;
           End;
   		Try
               ExecutaLiberaDados;
	       		//Apaga Pedido
	       		DMEstoque.Alx.Close;
	       		DMEstoque.Alx.SQL.Clear;
	       		If XSQLTABELA='PEDVENDA'
	       		Then  Begin
		       		DMEstoque.Alx.SQL.Add('DELETE FROM PEDVENDA WHERE COD_PEDVENDA=:CODPEDIDO');
		       		DMEstoque.Alx.ParamByName('CODPEDIDO').AsString:=XView.FieldByName('COD_PEDVENDA').AsString;
	       		End
          		Else Begin
		       	   	DMEstoque.Alx.SQL.Add('DELETE FROM PEDCOMPRA WHERE COD_PEDCOMP=:CODPEDIDO');
		       	   	DMEstoque.Alx.ParamByName('CODPEDIDO').AsString:=XView.FieldByName('COD_PEDCOMP').AsString;

	       		End;
               DMESTOQUE.Alx.ExecSQL;
	       		If XSQLTABELA='PEDVENDA'
	       		Then  Begin
                   //Apaga Comissão referente
                   DMEstoque.Alx.Close;
                   DMEstoque.Alx.SQL.Clear;
		       		DMEstoque.Alx.SQL.Add('DELETE FROM comissao Where (comissao.cod_gerador=:CODGERADOR) AND (comissao.gerador='+#39+'PEDVENDA'+#39+')');
		       		DMEstoque.Alx.ParamByName('CODGERADOR').AsString:=XView.FieldByName('COD_PEDVENDA').AsString;
                   DMESTOQUE.Alx.ExecSQL;
	       		End;    
	       		If XSQLTABELA='PEDVENDA'
	       		Then  Begin
              		//REGISTRA COMANDO DO USUARIO
              		Registra('PEDIDO VENDA', 'APAGAR', XView.FieldByName('DTPEDVEN').AsString, 'Nº '+XView.FieldByName('NUMPED').AsString, 'Valor: '+XView.FieldByName('VALOR').AsString);
	       		End
          		Else Begin
              		//REGISTRA COMANDO DO USUARIO
              		Registra('PEDIDO COMPRA', 'APAGAR', XView.FieldByName('DTPEDCOMP').AsString, 'Nº '+XView.FieldByName('NUMPED').AsString, 'Valor: '+XView.FieldByName('VALOR').AsString);
				End;
          		//Confirma Tranzaçào
          		DMEstoque.TransacEstoque.CommitRetaining;
          		DMEstoque.TransacEstoque.CommitRetaining;
          		//atualiza view
				ExecutaLiberaDados;
			Except
          		//caso não conseguiu executar as tranzações acima retorna as informações anteriores
          		DMEstoque.TransacEstoque.RollbackRetaining
       	End;
   	End;
   End
   Else Begin
       DMSAIDA.TPedV.Edit;
       DMSAIDA.TPedV.FieldByName('EDIT').AsString := '0';
       DMSAIDA.TPedV.Post;
       DMSAIDA.IBT.CommitRetaining;
   End;


end;

procedure TFPedidoPadrao.BtnConsultarClick(Sender: TObject);
begin
   // variaveis que armazenam o valor do pedido de venda e compra
   XVLRTOTAL := 0;
   XTOTIPI := 0;
   XVLRTOTALDESP := 0;
   XEDCOMISSAOPED:=0;
   
   LimpaLabels;

   If ((XView.FieldByName('SITUACAO').AsString<>'FECHADO') AND (XView.FieldByName('SITUACAO').AsString<>'CANCELADO')) OR (XView.FieldByName('FORMPAG').AsString='CADERNETA')
   Then Begin

      If XView.FieldByName('FORMPAG').AsString='CADERNETA'
      Then Begin
			//bloquea compenentes p/ procurar forma de pagamento
           EDCODFORMPAG.Enabled:=False;
           BtnProcFormPag.Enabled:=False;
      End
      Else Begin
			//libera compenentes p/ procurar forma de pagamento
           EDCODFORMPAG.Enabled:=True;
           BtnProcFormPag.Enabled:=True;
      End;

      // eh feito essa comparação antees do "inherited" pq como eh por herança, o painel de cadastro estará visivel de qualquer maneira,
      // e assim, caso o pedido de venda jah esteja sendo usado, a operação sera finalizada e o painel de cadastro nao sera exibido
      If XSQLTABELA='PEDVENDA'
      Then Begin
          // BUSCANDO DADOS DO PEDIDO
           FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XView.FieldByName('COD_PEDVENDA').AsString,'');
           If DMMacs.Tloja.FieldByName('REDE').AsInteger=1
           Then Begin
               //Se sistema configurado para trabalhar em rede o sistema deve realizar o controle para que o mesmo pedido não seja alterado por dois usuarios ao mesmo tempo
               // caso o campo tiver valendo 1 eh pq o pedido de venda jah esta sendo usado
               If DMSAIDA.TPedV.FieldByName('EDIT').AsString = '1'
               Then Begin
                   Mensagem('    A T E N Ç Ã O   ','O pedido de venda está sendo usado no momento.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
                   Exit;
               End
               Else Begin
                   DMSAIDA.TPedV.Edit;
                   DMSAIDA.TPedV.FieldByName('EDIT').AsString := '1';
                   DMSAIDA.TPedV.Post;
                   DMSAIDA.IBT.CommitRetaining;
               End;
           End;
       End;

	   inherited;

	   If XSQLTABELA='PEDVENDA'
      Then  Begin//Procedimentos para vvendas
		   If FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '')=False
          Then Begin
          		Exit;//Caso não encontrar cancelar
          End
          Else Begin
               XCodPedido := XView.FieldByName('COD_PEDVENDA').AsString;
			    FMenu.XCodPesqPresSel:=XCodPedido;//Armazena temporariamente o codigo do pedido para ser usado fora do pedido padrão
               XCodPedidoP:=XCodPedido;
          End;
      End
      Else Begin
          If FiltraTabela(XTabela, 'PEDCOMPRA', 'COD_PEDCOMP', XView.FieldByName('COD_PEDCOMP').AsString, '')=False Then
          		Exit;//Caso não encontrar cancelar
          //caso pedcompra possibilita o cadastro na hora do vendedor externo (do fornecedor)
          PCadVendedor.Visible:=True;
          PCadVendedor.Enabled:=true;
          PCadVendedor.BringToFront;
      End;
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

	   XTabela.Edit;
	   Estado:='EDIT';

	   //cancela o botão "X" de fechar para que o usuário possa apenas gravar ou cancelar
	   BtnFecha.Visible:=False;

	   //Filtra tabela de pedido de acordo com o registro selecionado na view
	   If XSQLTABELA='PEDVENDA'
      Then Begin //Procedimentos para vvendas
			BtnAbrePAliq.Visible:=FALSE;
			//Atribui codigo do pedido para que não haja percas
           XCodPedido:=XTabela.FieldByName('COD_PEDVENDA').AsString;
	        FMenu.XCodPesqPresSel:=XCodPedido;//Armazena temporariamente o codigo do pedido para ser usado fora do pedido padrão
           XCodPedidoP:=XCodPedido;
           
           //cliente
           If XTabela.FieldByName('COD_CLIENTE').AsString<>''
           Then Begin//Se foi informado um cliente cadastrado vai buscar na tabela
				SelectRegistro('VWCLIENTE', 'COD_CLIENTE', XTabela.FieldByName('COD_CLIENTE').AsString);

               // BUSCA DADOS CLIENTE
               FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',DMMACS.TSelect.FieldByName('COD_CLIENTE').AsString,'');
               // se o cliente for atacadista, exibe a label
               If DMPESSOA.TCliente.FieldByName('ATACADISTA').AsString = '1'
               Then Begin
                   LAtacadista.Visible := true;
                   LAtacadista.BringToFront;
                   PSelectCliente.Refresh;
                   XAtacadista := true;
               End
               Else begin
                   LAtacadista.Visible := false;
                   LAtacadista.SendToBack;
                   PSelectCliente.Refresh;
                   XAtacadista := false;
               End;

				XCodPessoa:=DMMACS.TSelect.FieldByName('COD_CLIENTE').AsInteger;
  		        EdCodCli.Text:=DMMACS.TSELECT.FieldByName('COD_INTERNO').AsString;
       	    DbNomeCli.Text:=XTabela.FieldByName('NOMECLI').AsString;
	            DbCpf.Text:=XTabela.FieldByName('CPFCNPJ').AsString;
				DBDATA.Text:=XTabela.FieldByName('DTPEDVEN').AsString;
               //Se cliente consumidor
               If XCodPessoa=DMMACS.TLoja.FieldByName('cod_consumidor').AsInteger
               Then Begin
                   PPesCad.Visible:=True;
                   PPesCad.BringToFront;
               End
               Else Begin
                   PPesCad.Visible:=False;
					EdNomeCli.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;
					EdCPF.Text:=DMMACS.TSelect.FieldByName('CPFCNPJ').AsString;
               End;

               If XTabela.FieldByName('GARANTIA').AsString='1' Then
                   CBGarantia.Checked:=True
               Else
                   CBGarantia.Checked:=False;
               //PPesCad.Visible:=False;
           End
           Else Begin //se o cliente foi cadastrado na hora
       	    DbNomeCli.Text:=XTabela.FieldByName('NOMECLI').AsString;
	            DbCpf.Text:=XTabela.FieldByName('CPFCNPJ').AsString;
				PPesCad.Visible:=True;
               PPesCad.BringToFront;
			End;

           //vendedor
			SelectRegistro('VWFUNCIONARIO', 'COD_FUNC', XTABELA.FieldByName('COD_VENDEDOR').AsString);
			XCodVendedor:=DMMACS.TSelect.FieldByName('COD_FUNC').AsInteger;
			EdCodVend.Text:=DMMACS.TSelect.FieldByName('COD_INTERNO').AsString;
			EDNOMEVENDEDOR.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;
           DBMemo.Lines.Text:=XTabela.FieldByName('OBS').AsString;

            //Paulo 01/02/2012: Retorna a porcentagem de comissão
          if XTabela.FieldByName('VALOR').AsCurrency <> 0 then
          begin
              XEDCOMISS:=(XTabela.FieldByName('VLRCOMIS').AsCurrency / XTabela.FieldByName('VALOR').AsCurrency)*100;
              LVlrComissao.Caption:='Vlr. Comissão..: ' +FormatFloat('###,##0.00',XTabela.FieldByName('VLRCOMIS').AsCurrency);
          end
          else
              retornaComissao(DMMACS.TSelect.FieldByName('COD_INTERNO').AsInteger);


      End
	   Else Begin //procedimentos para compras
			//Atribui codigo do pedido para que não haja percas
           if(XFlagNfe <> 1)then
              XCodPedido:=XTabela.FieldByName('COD_PEDCOMP').AsString;

	        FMenu.XCodPesqPresSel:=XCodPedido;//Armazena temporariamente o codigo do pedido para ser usado fora do pedido padrão
           DBDATA.Text:=XTabela.FieldByName('DTPEDCOMP').AsString;
           PPesCad.Visible:=False;
           FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTABELA.FieldByName('COD_FORNEC').AsString, '');
			//informa fornecedores
			XCodPessoa:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
           EdCPF.Text:=DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
           EdNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           EdCodCli.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;

           DBMemo.Lines.Text:=XTabela.FieldByName('OBS').AsString;
	   End;
      //FORMA DE PAGAMENTO
      SelectRegistro('FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString);
	   XCodFormPag:=DMMACS.TSelect.FieldByName('COD_FORMPAG').AsInteger;
      EDCODFORMPAG.Text:=DMMACS.TSelect.FieldByName('COD_INTERNO').AsString;
      EDFORMPAG.Text:=DMMACS.TSelect.FieldByName('DESCRICAO').AsString;

      //Informa outros valores
      EdValorPed.Text:=XTabela.FieldByName('VALOR').AsString;
      EdValorFrete.Text:=XTabela.FieldByName('VLRFRETE').AsString;
      EdValoIcmsSubstituicao.Text:=XTabela.FieldByName('VLRICMSSUBSTITUICAO').AsString;
      EdValorIpi.Text:=XTabela.FieldByName('VLRIPI').AsString;
      EdValorOutros.Text:=XTabela.FieldByName('VLROUTROS').AsString;
      Try
           StrToInt(XTabela.FieldByName('NUMPED').AsString);
           XNumPedido:=XTabela.FieldByName('NUMPED').AsInteger;
      Except
      		MessageDlg('Apenas valores numéricos serão aceitos no campo Número do Pedido', mtWarning, [mbOK], 0);
           XNumPedido:=0;
      End;
      EdNumeroPedido.Text:=XTabela.FieldByName('NUMPED').AsString;
      EdDescMoeda.Text := FormatFloat('#,##0.00',XTabela.FieldByName('DESCMOE').AsCurrency);
      EDDescPed.ValueNumeric:= XTabela.FieldByName('DESCONTO').AsCurrency;      
      DBMemo.Text:=XTabela.FieldByName('OBS').AsString;
	   //VERIFICA QUAL O COMPONENTE DE BUSCA DE PRODUTO DEVE APARECER
	   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
	   THEN BEGIN
	   		PCodInterno.Visible:=True;
		    PCodInterno.BringToFront;
	   END;
      IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
      THEN BEGIN
  	   		PCodFab.Visible:=True;
       	PCodFab.BringToFront;
      End;
	   //seleciona items do pedido
      FiltraSlave;



      EdNumeroPedido.SetFocus;
   End
   Else Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível Consultar/Alterar este pedido, por já se encontrar fechado!', '', 1, 1, False, 'a');
   End;
end;

procedure TFPedidoPadrao.BtnFechaPedClick(Sender: TObject);
begin
  inherited;
  	If XView.FieldByName('SITUACAO').AsString='ABERTO'
   Then Begin

       If XSQLTABELA='PEDVENDA'
       Then Begin
          // BUSCANDO DADOS DO PEDIDO
           FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XView.FieldByName('COD_PEDVENDA').AsString,'');

           // caso o campo tiver valendo 1 eh pq o pedido de venda jah esta sendo usado
           If DMSAIDA.TPedV.FieldByName('EDIT').AsString = '1'
           Then Begin
               Mensagem('    A T E N Ç Ã O   ','O pedido de venda está sendo usado no momento.'+#13+'Use Ctrl+D para destravar' ,'',1,1,false,'I');
               Exit;
           End
           Else Begin
               DMSAIDA.TPedV.Edit;
               DMSAIDA.TPedV.FieldByName('EDIT').AsString := '0';
               DMSAIDA.TPedV.Post;
               DMSAIDA.IBT.CommitRetaining;
           End;

       End;

		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente fechar o pedido '+XView.FieldByName('NUMPED').AsString, '', 2, 3, False, 'C')=2
       Then Begin
      		//FILTRA LOJA PARA VERIFICAR CONFIGURAÇÕES
      		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

           // configuração em loja que jah deixa desativado a opção para gerar financeiro
           If DMMACS.TLoja.FieldByName('gerafinanceiro').AsString = '1' Then
               CBGeraFinanceiro.Checked := true
           Else
               CBGeraFinanceiro.Checked := false;


           FrmConta.EDCodigo.Text:='';
           FrmConta.EdDescricao.Text:='';
           If XSQLTABELA='PEDVENDA'
           Then Begin
               If ControlAccess('GERAFINANC', '')=True Then
                   CBGeraFinanceiro.Visible:=true;

               XCodPedido:=XView.FieldByName('COD_PEDVENDA').ASSTRING;
		        FMenu.XCodPesqPresSel:=XCodPedido;//Armazena temporariamente o codigo do pedido para ser usado fora do pedido padrão
               If DMSAIDA.WPedV.FieldByName('FORMPAG').AsString='À VISTA'
               Then Begin//como é uma venda a vista o sistema vai pegar a conta padrão para vendas a vista
                   If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
                   Then Begin//se existir uma conta padrao configurada
                       XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
                       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                       FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                       FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                   End
                   Else Begin
                       FrmConta.EDCodigo.Text:='';
                       FrmConta.EdDescricao.Text:='';
                   End;
               End
               Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
                   If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
                   Then Begin//se existir uma conta padrao configurada
                       XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
                       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                       FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                       FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                   End
                   Else Begin
                       FrmConta.EDCodigo.Text:='';
                       FrmConta.EdDescricao.Text:='';
                   End;
               End;
               PFinanceiro.Visible:=True;
               PFinanceiro.BringToFront;
               EdDtFech.Text:=DateToStr(Date());
               XCOD_CONTABANCO:=-1;
               //VERIFICA SE O PEDIDO JÁ POSSUE DOC FIS E FRETE PARA ABRIR DADOS DE FRETE
               If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True
               Then Begin
                   If (DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString='0') AND (DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency>0)
                   Then Begin
                       GBFRETE.Visible:=True;
                       GBFRETE.BringToFront;
                       BtnMoedaOK.Top:=294;
                       BtnMoedaCancelar.Top:=294;
                       FPFinanceiro.Height:=326;
                       PFinanceiro.Height:=337;
                   End
                   Else Begin
                       GBFRETE.Visible:=False;
                       BtnMoedaOK.Top:=198;
                       BtnMoedaCancelar.Top:=198;
                       FPFinanceiro.Height:=230;
                       PFinanceiro.Height:=242;
                   End;
               End
               Else Begin
                   GBFRETE.Visible:=False;
                   BtnMoedaOK.Top:=198;
                   BtnMoedaCancelar.Top:=198;
                   FPFinanceiro.Height:=230;
                   PFinanceiro.Height:=242;
               End;

               CBPagamento.SetFocus;
           End
           Else Begin
               XCodPedido:=XView.FieldByName('COD_PEDCOMP').ASSTRING;
		        FMenu.XCodPesqPresSel:=XCodPedido;//Armazena temporariamente o codigo do pedido para ser usado fora do pedido padrão               
               If DMENTRADA.WPedC.FieldByName('FORMPAG').AsString='À VISTA'
               Then Begin//como é uma COMPRA a vista o sistema vai pegar a conta padrão para COMPRAS a vista
                   //No caso de usar tabela tmp inicia os valores
                   XCod_Tmp:=0;
                   //APAGA REGISTROS DA TABERLA TMP
                   DMCONTA.TAlx.Close;
                   DMCONTA.TAlx.SQL.Clear;
                   DMCONTA.TAlx.SQL.Add('DELETE FROM TMP ');
                   DMCONTA.TAlx.ExecSQL;
                   DMCONTA.IBT.CommitRetaining;

                   If DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsString<>''
                   Then Begin//se existir uma conta padrao configurada
                       XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger;
                       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                       FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                       FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                   End
                   Else Begin
                       FrmConta.EDCodigo.Text:='';
                       FrmConta.EdDescricao.Text:='';
                   End;
                   if NOT(XView.FieldByName('NUMDEV').AsString = 'OUT')THEN
                   If XView.FieldByName('NUMDEV').AsString<>''
                   Then Begin
                       XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_DEVOLUCAO').AsInteger;
                       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                       FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                       FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                   End;
               End
               Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
                   If DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsString<>''
                   Then Begin//se existir uma conta padrao configurada
                       XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger;
                       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                       FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                       FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                   End
                   Else Begin
                       FrmConta.EDCodigo.Text:='';
                       FrmConta.EdDescricao.Text:='';
                   End;
                   if NOT(XView.FieldByName('NUMDEV').AsString = 'OUT')THEN
                   If XView.FieldByName('NUMDEV').AsString<>''
                   Then Begin
                       XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_DEVOLUCAO').AsInteger;
                       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
                       FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                       FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                   End;
               End;
               PFinanceiro.Visible:=True;
               PFinanceiro.BringToFront;

               If XSQLTABELA='PEDCOMPRA'
               Then Begin
                   CBGeraFinanceiro.Visible := true; //24/04/2009: implementado para a construmaq a opção de não gerar financeiro no pedido de compra
               End;

               EdDtFech.Text:=DateToStr(Date());
               //VERIFICA SE O PEDIDO JÁ POSSUE DOC FIS E FRETE PARA ABRIR DADOS DE FRETE
               If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True
               Then Begin
                   If (DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString='0') AND (DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency>0)
                   Then Begin
                       GBFRETE.Visible:=True;
                       GBFRETE.BringToFront;
                       BtnMoedaOK.Top:=294;
                       BtnMoedaCancelar.Top:=294;
                       FPFinanceiro.Height:=326;
                       PFinanceiro.Height:=337;
                   End
                   Else Begin
                       GBFRETE.Visible:=False;
                       BtnMoedaOK.Top:=198;
                       BtnMoedaCancelar.Top:=198;
                       FPFinanceiro.Height:=230;
                       PFinanceiro.Height:=242;
                   End;
               End
               Else Begin
                   GBFRETE.Visible:=False;
                   BtnMoedaOK.Top:=198;
                   BtnMoedaCancelar.Top:=198;
                   FPFinanceiro.Height:=230;
                   PFinanceiro.Height:=242;
               End;
               CBPagamento.SetFocus;
           End;
          //Seleciona apenas pedidos pertencentes a loja
          //ExecutaLiberaDados;
       End;

   End
   Else Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Este pedido já se encontra fechado!', '', 1, 1, False, 'i');
   End;

end;

procedure TFPedidoPadrao.CBPagamentoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key<>#13 Then
   	Key:=#0;
end;

procedure TFPedidoPadrao.BtnMoedaOKClick(Sender: TObject);
begin
  inherited;
  	//Bloqueia opção a vista para determinadas formas de pagamento
	If ((CBPagamento.Text<>'Carteira') and (CBPagamento.Text<>'Banco') and (CBPagamento.Text<>'Chq. Terc.') and (CBPagamento.Text<>'Crédito')) and (DMSAIDA.WPedV.FieldByName('FORMPAG').AsString='À VISTA')
	Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'A forma de pagamento '+CBPagamento.Text+' não permite fecharo pedido como À Vista!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
   End;

   //valida quanto a forema de pagamento
	If CBPagamento.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe se o pagamento será feito em carteira, cheque ou cartão!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
   End;

   //valida quanto a Conta
	If FrmConta.EdDescricao.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmConta.EdDescricao.SetFocus;
       Exit;
   End;

   //Valida Quanto a conta
   If Not FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', '', '', 'Where (COD_FILIAL='+FMenu.LCODEMPRESA.Caption+') And (CLASSIFICACAO='+FrmConta.EDCodigo.Text+')')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta válida para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmConta.EDCodigo.SetFocus;
       Exit;
   End;

   if CBGeraFinanceiro.Checked = True
   then begin
       if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'O pedido não gerará financeiro, deseja continuar?', '', 2, 3, False, 'C')<>2
       then begin
           Exit;
       end
       else begin
           XFat:=True;
       end;
   end
   else begin
       XFat:=False;
   end;

   //Caso seja um pedido de remessa simples ou para garantia fecha sem gerar financeiro
   //If (fmenu.XSimplesRemessa=True) OR (fmenu.XRemessaGarantia=True) or (FMenu.XOutrosEnt=true) or (FMenu.XComplementacao=true)Then
   If (fmenu.XSimplesRemessa=True) OR (fmenu.XRemessaGarantia=True) or (FMenu.XComplementacao=true)Then
       CBGeraFinanceiro.Checked:=True;

   PFinanceiro.Visible:=False;
   If FechaPedido(XCodPedido, EdDtFech.Text)=True
   Then Begin
   	//VERIFICA A NECESSIDADE DE IMPRIMIR E IMPRIME CUPOM FISCAL
		If XSQLTABELA='PEDVENDA'
       Then Begin
           FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
           If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
           Then Begin
           	FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', XCodPedido, '');
               AbreFiscal;
   			//Imprime Cupom Fiscal
   			//ECF(StrToInt(XCodPedido), 'PEDVENDA');
           End;
           If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF') or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NFe')
           Then Begin
               //Imprime Nota Fiscal
               If MessageDlg('Impressora Pronta?', mtConfirmation, [mbYes, mbNo], 0)=mryes
               Then Begin
                   FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', XCodPedido, '');
                   AbreFiscal;
               End;
           End;
           //Paulo 26/01/2012: Lança o pedido de compra para os veiculos de entrada
           if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
           begin
               try
                   GeraPedCompra(XView.FieldByName('COD_PEDVENDA').AsInteger);
               except

               end;
           end;
       end
   	Else Begin
       	//Vamos verificar se a compra deve emitir uma nfe de emissão propria de entrada
           If (FMenu.XNotaEntrada=True) and ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF') or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NFe')or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'))
           Then Begin
               //Imprime Nota Fiscal
               If MessageDlg('Impressora Pronta?', mtConfirmation, [mbYes, mbNo], 0)=mryes
               Then Begin
                   FiltraTabela(DMENTRADA.WPedc, 'VWPEDC', 'cod_pedcomp', XCodPedido, '');
                   FMenu.TIPOREL:='RNF';
                   FMenu.TIPOAUX:='ENTNFPROP';
                   FMenu.XNotaEntrada:=True;
                   AbreFiscal;
               End;
           End
           else begin
                 //Paulo 12/05/2011: Para imprimir o fiscal para impressora ecf
                 If(DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF')and(XSQLTABELA<>'PEDVENDA') then
                 begin
                   If MessageDlg('Impressora Pronta?', mtConfirmation, [mbYes, mbNo], 0)=mryes
                   Then Begin
                       FiltraTabela(DMENTRADA.WPedc, 'VWPEDC', 'cod_pedcomp', XCodPedido, '');
                       FMenu.TIPOREL:='RNF';
                       FMenu.TIPOAUX:='ENTNFPROP';
                       FMenu.XNotaEntrada:=True;
                       AbreFiscal;
                   End;
                end;   
           end;
       End;
       mdo.Transac.CommitRetaining;
   End;

	If (DMMacs.TLoja.FieldByName('IMPPEDFECH').AsString='1') And (XSQLTABELA='PEDVENDA') //a impressão do pedido deve ser feita automatiacamente
   then begin
        FMenu.TIPOREL:='NORMAL';
        ImpPed(XTabela.FieldByName(XPkTabela).AsInteger);
   end;

   //Atualiza View da tela de Consulta
   //Seleciona apenas pedidos pertencentes a loja
	ExecutaLiberaDados;
	desabilitaPCadastro;
   EdNome.SetFocus;


   //Paulo 25/07/2011: Abre o painel de troco com o valor do pedido preenchido
   If XSQLTABELA='PEDVENDA'
   Then Begin
       If DMSAIDA.WPedV.FieldByName('FORMPAG').AsString='À VISTA' then
       begin
          EdValorPedido.ValueNumeric:=DMSAIDA.TPedV.FieldByName('valor').asCurrency;
          PTroco.BringToFront;
          PTroco.Visible:=True;
       end;
   end;

   if(DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'JORNAL')then
      lancaComissao;

end;

procedure TFPedidoPadrao.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
   PFinanceiro.Visible:=False;
	desabilitaPCadastro;
   EdNome.SetFocus;
end;

procedure TFPedidoPadrao.PConsultaExit(Sender: TObject);
begin
	If (PFinanceiro.Visible=False) and (PComissaoBanca.Visible=False)and(PTroco.Visible=false) Then
		inherited;
end;

procedure TFPedidoPadrao.PCadastroExit(Sender: TObject);
begin
	If (PFinanceiro.Visible=False)and(PItensVendaAg.Visible=false) Then
		inherited;
end;

procedure TFPedidoPadrao.PFinanceiroExit(Sender: TObject);
begin
  inherited;
  	Try
		If PFinanceiro.Visible=True Then
       	CBPagamento.SetFocus;
   Except
   End;
end;

procedure TFPedidoPadrao.EDCodMoedaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin//se enter
{	  	//seleciona moeda de acordo com o valor da edit
	    If SelectRegistro('VWMOEDACOTA', 'COD_MOEDA', EDCodMoeda.Text)=True
       Then Begin
       	//atribuí valores de moeda às edits
           EdMoeda.Text:=DMMACS.TSelect.FieldByName('MOEDA').AsString;
       End
       Else Begin
       	EDCodMoeda.Text:='';
           EdMoeda.Text:='';
           EDCodMoeda.SetFocus;
       End;}
   End;
end;

procedure TFPedidoPadrao.QrPageHeaderBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
{   DBTituloPrim.Font.Size:=DMMacs.TLoja.FieldByName('FONTTITPRIM').AsInteger;
   DBTituloSec.Font.Size:=DMMacs.TLoja.FieldByName('FONTTITSEC').AsInteger;
	DBTituloSec.Top:=(DBTituloPrim.Top+DBTituloPrim.Height+2);
   QrPageHeader.Height:=DBTituloSec.Top+DBTituloSec.Height+2;}
end;

procedure TFPedidoPadrao.QRRodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var
	I:Integer;
begin
  inherited;
{  	I:=0;
   QRMFormPag.Lines.Clear;
   DMMacs.TALX.First;
   While not DMMacs.TALX.Eof do
   Begin
   	I:=I+1;
       QRMFormPag.Lines.Add(IntToStr(I)+'º Parcela:  '+DMMacs.TALX.FieldByName('DTVENC').AsString+'    '+DMMacs.TALX.FieldByName('COBRANCA').AsString+'    '+DMMacs.TALX.FieldByName('DTVENC').AsString+'    '+DMMacs.TALX.FieldByName('VALOR').AsString);
       DMMacs.TALX.Next;
   End;

   DbRodape.Font.size:=DMMacs.TLoja.FieldByName('FONTRODAPE').AsInteger;
   QRRodape.Height:=DbRodape.Top+DbRodape.Height+2;}
end;

procedure TFPedidoPadrao.FPListaEnter(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO A ALTERAÇÃO DO VLR UNITARIO
   If ControlAccess('ALTVLRUNIPED', '')=False Then
  		EDValUnit.ReadOnly:=True
   Else
  		EDValUnit.ReadOnly:=False;

   FPLista.TAG:=1;
   If (PAliqCusto.Tag=0)
   Then Begin //se o focu não saiu do painel de atualização de custo do produto
   	//VERIFICA QUAL COMPONENETE DEVE RECEBER O FOCUS
	  	IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'BP' THEN
       BtnProcProd.SetFocus;
  		IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CB' THEN
  			EDCodBarra.SetFocus;
  		IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CA'
  		THEN BEGIN//Caso o focus deve cair sobre um código auxiliar. verificar qual o código em Questão
  			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
       	THEN Begin
       		Try
                   PCodInterno.Visible:=True;
                   PCodInterno.BringToFront;
           		EDCodInterno.SetFocus;
           	Except
           	End;
       	End;
			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
       	THEN Begin
       		Try
                   PCodFab.Visible:=True;
                   PCodFab.BringToFront;
           		EDCodFab.SetFocus;
           	Except
           	End;
			End;
       End;
  END
  Else Begin
       PAliqCusto.Tag:=0;
  end;
end;

procedure TFPedidoPadrao.FPListaExit(Sender: TObject);
begin
  inherited;
   FPLista.Tag:=0;
end;

procedure TFPedidoPadrao.FrmBusca2BTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCodConta:=-1;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
end;

procedure TFPedidoPadrao.FrmContaBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   //verifica o tipo do operador para selecionar contas
   If UpperCase(XSQLTabela)='PEDVENDA' Then
       Oper:='C';
   If UpperCase(XSQLTabela)='PEDCOMPRA' Then
       Oper:='D';
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCodConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
end;

procedure TFPedidoPadrao.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
	Oper:Char;
begin
  inherited;
	If Key = #13
   Then Begin
   	//verifica o tipo do operador para selecionar contas
   	If XSQLTabela='PEDVENDA'
       Then Begin
       	Oper:='C';
           // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
//           XTIPO_CONTA := 'C';
       End;
   	If XSQLTabela='PEDCOMPRA'
       Then Begin
       	Oper:='D';
           // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
//           XTIPO_CONTA := 'D';
       End;
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCodConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCodConta:=-1;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCodConta:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
end;

procedure TFPedidoPadrao.EDCodFabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', EDCodFab.Text, '')=True
       Then Begin
			EscreveLabels;
//           EDCodFab.Text:='';
       End
       Else Begin
           //Paulo 08/07/2011: caso o código acima não for encontrado, verifica se tem
           //outros códigos cadastrados na tabela codigoBarra.
           If FiltraTabela(DMEstoque.TCodBarra, 'CODIGOBARRA', 'CODBARRA', EDCodFab.Text, '')=True
           Then Begin
               FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', IntToStr(DMEstoque.TCodBarra.FieldByName('COD_ESTOQUE').AsInteger), '');
			    EscreveLabels;
               EDCodFab.Text:= DMEstoque.TCodBarra.FieldByName('CODBARRA').AsString;
           End
           else begin
               LimpaLabels;
               LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
           end;    
       End;
   End;
end;

procedure TFPedidoPadrao.EDDescKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPROD', '')=False Then
  		Key:=#0;
end;

procedure TFPedidoPadrao.FashionPanel1Exit(Sender: TObject);
begin
  inherited;
	If PAliqCusto.Visible=True Then
       BtnFechaPAliq.SetFocus;
end;

procedure TFPedidoPadrao.BtnAbrePAliqClick(Sender: TObject);
begin
  inherited;
	PAliqCusto.Visible:=True;
   PAliqCusto.BringToFront;
   //PASSA VALORES ATUAIS
   Edipi.ValueNumeric:=DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency;
   EDICMS.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
   EDFRETE.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency;
   EDEMB.ValueNumeric:=DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsCurrency;
   EDOUTROS.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency;
   EDLUC.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsCurrency;

   EDTXEXP.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('IMPEXP').AsCurrency;
   EDMOD.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('MOD').AsCurrency;
   EDIREND.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('IMPREND').AsCurrency;
   EDCS.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('CONTSOC').AsCurrency;
   EDPIS.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('COFINS').AsCurrency;
   EDCOFINS.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('PIS').AsCurrency;
   EDPMS.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('PERCMARGSEG').AsCurrency;
   EDMS.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency;
   EdVlrUnitComp.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;

   // armazena valor unitario de compra, pis se for clicado em OK sera atualizado o banco, senao volta o valor de antes
   XVlrUnitComp := DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;

   EDVVISTA.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
   EDVPRAZO.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
   EDAVISTA.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
   EDAPRAZO.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
   EdVlrCompra.SetFocus;

   // valor de venda a vista no varejo
   XVALOR_VISTAVAREJO := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;

   // valor de venda a prazo no varejo
   XVALOR_PRAZOVAREJO := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;

   // valor de venda a vista no atacado
   XVALOR_VISTAATAC := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;

   // valor de venda a prazo no atacado
   XVALOR_PRAZOATAC := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;

   // passa pelo OnExit da edit de acrescimo que atualiza todos os valores
   EdAcreccustoExit(Self);
end;

procedure TFPedidoPadrao.BtnFechaPAliqClick(Sender: TObject);
begin
  inherited;
   PAliqCusto.Visible:=False;
   DMESTOQUE.TEstoque.Edit;
   DMESTOQUE.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
   DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency-(DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency*DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100;
   DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency:=EDMS.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency := EdVlrUnitComp.ValueNumeric;
   if DMMacs.Tloja.FieldByName('CONVERTUNID').AsInteger<>1 then
       DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency := EdVlrUnitComp.ValueNumeric;

   //19/06/2009: calcula PMC se foi informado um valor para a MVA
     If DMESTOQUE.TEstoque.Fieldbyname('MVA').AsCurrency > 0
     Then Begin
      Try
        DMESTOQUE.TEstoque.Fieldbyname('PMC').AsCurrency := Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency + ((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency * DMESTOQUE.TEstoque.Fieldbyname('MVA').AsCurrency)/100);
      Except
      End;
     End;
   DMESTOQUE.TEstoque.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   PAliqCusto.Tag:=1;
   //LIMPA EDITS DE ATUALIZAÇÃO DOS VALORES DO PRODUTO
   XIPI:=EDIPI.ValueNumeric;
   XICMS:=EDICMS.ValueNumeric;
   XFRETE:=EDFRETE.ValueNumeric;
   XEMB:=EDEMB.ValueNumeric;
   EDIPI.ValueNumeric:=0;
   EDICMS.ValueNumeric:=0;
   EDFRETE.ValueNumeric:=0;
   EDEMB.ValueNumeric:=0;
   EDOUTROS.ValueNumeric:=0;
   EDLUC.ValueNumeric:=0;
   EDTXEXP.ValueNumeric:=0;
   EDMOD.ValueNumeric:=0;
   EDIREND.ValueNumeric:=0;
   EDCS.ValueNumeric:=0;
   EDPIS.ValueNumeric:=0;
   EDCOFINS.ValueNumeric:=0;
   EDPMS.ValueNumeric:=0;
   EDVVISTA.ValueNumeric:=0;
   EDVPRAZO.ValueNumeric:=0;
   EDAVISTA.ValueNumeric:=0;
   EDAPRAZO.ValueNumeric:=0;
   EDAVVISTA.ValueNumeric:=0;
   EDAVPRAZO.ValueNumeric:=0;
   EDAAVISTA.ValueNumeric:=0;
   EDAAPRAZO.ValueNumeric:=0;
end;

procedure TFPedidoPadrao.EDIPIExit(Sender: TObject);
Var
    DescVistaVar, DescVistaAtac, AcrecPrazoVar, AcrecPrazoAtac, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;
	 XVLRUNITCOMP: Real;
begin
  inherited;
	DMESTOQUE.TEstoque.Edit;
   DMESTOQUE.TSubProd.Edit;
   DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency:=Edipi.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency:=EDICMS.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency:=EDFRETE.ValueNumeric;
   DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsCurrency:=EDEMB.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency:=EDOUTROS.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsCurrency:=EDLUC.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency:=EDValUnit.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('IMPEXP').AsCurrency:=EDTXEXP.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('MOD').AsCurrency:=EDMOD.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('IMPREND').AsCurrency:=EDIREND.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('CONTSOC').AsCurrency:=EDCS.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('PIS').AsCurrency:=EDPIS.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('COFINS').AsCurrency:=EDCOFINS.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('PERCMARGSEG').AsCurrency:=EDPMS.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency:=EdVlrCompra.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency+((DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency*DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsCurrency)/100);
	DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency-((DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency*DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency)/100);
	DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=EdVlrUnitComp.ValueNumeric;
   DMESTOQUE.TEstoque.Post;
   DMESTOQUE.TSubProd.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsString='' Then
        DescVistaVar:=DMMacs.TEmpresa.FieldByName('AVVPROVAR').AsCurrency
    Else
        DescVistaVar:=DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsString='' Then
        AcrecPrazoVar:=DMMacs.TEmpresa.FieldByName('AVPPROVAR').AsCurrency
    Else
        AcrecPrazoVar:=DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsString='' Then
        DescVistaAtac:=DMMacs.TEmpresa.FieldByName('AVVPROAT').AsCurrency
    Else
        DescVistaAtac:=DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsString='' Then
        AcrecPrazoAtac:=DMMacs.TEmpresa.FieldByName('AVPPROAT').AsCurrency
    Else
        AcrecPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsString='' Then
        ComVistaVar:=DMMacs.TEmpresa.FieldByName('CVVPROVAR').AsCurrency
    Else
        ComVistaVar:=DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsString='' Then
        ComPrazoVar:=DMMacs.TEmpresa.FieldByName('CVPPROVAR').AsCurrency
    Else
        ComPrazoVar:=DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsString='' Then
        ComVistaAtac:=DMMacs.TEmpresa.FieldByName('CVVPROAT').AsCurrency
    Else
        ComPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsString='' Then
        ComPrazoAtac:=DMMacs.TEmpresa.FieldByName('CVPPROAT').AsCurrency
    Else
        ComPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency;

 	FProduto.CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 0, 0);
   EDAVVISTA.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
   EDAVPRAZO.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
   EDAAVISTA.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
   EDAAPRAZO.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
   EDMS.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency;
end;

procedure TFPedidoPadrao.BitBtn3Click(Sender: TObject);
begin
  inherited;
   PAliqCusto.Visible:=False;
   DMESTOQUE.TEstoque.Cancel;
   DMESTOQUE.TSubProd.Cancel;
   DMESTOQUE.TEstoque.CancelUpdates;
   DMESTOQUE.TSubProd.CancelUpdates;
   DMESTOQUE.TransacEstoque.RollbackRetaining;
   PAliqCusto.Tag:=0;
   //LIMPA EDITS DE ATUALIZAÇÃO DOS VALORES DO PRODUTO
   EDIPI.ValueNumeric:=0;
   EDICMS.ValueNumeric:=0;
   EDFRETE.ValueNumeric:=0;
   EDEMB.ValueNumeric:=0;
   EDOUTROS.ValueNumeric:=0;
   EDLUC.ValueNumeric:=0;
   EDVVISTA.ValueNumeric:=0;
   EDVPRAZO.ValueNumeric:=0;
   EDAVISTA.ValueNumeric:=0;
   EDAPRAZO.ValueNumeric:=0;
   EDAVVISTA.ValueNumeric:=0;
   EDAVPRAZO.ValueNumeric:=0;
   EDAAVISTA.ValueNumeric:=0;
   EDAAPRAZO.ValueNumeric:=0;
   BtnProcProd.SetFocus;
end;

procedure TFPedidoPadrao.EdCodCliExit(Sender: TObject);
begin
  inherited;
   LUZOPEN.Visible:=False;
end;

procedure TFPedidoPadrao.DBNomeCliKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
		If XSQLTABELA='PEDVENDA'
       Then Begin//trabalhando com vendas
       	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'NOME', '', ' (upper(NOME) like upper('+#39+DBNomeCli.Text+'%'+#39+'))')=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
	        	XCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
	            EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	            EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
	            EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
               PPesCad.Visible:=FALSE;
	            SelectFormPag_Vendedor;
               EdCodCli.SetFocus;
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
				Mensagem('A T E N Ç Ã O', 'Cliente não encontrado!', '', 1, 1, False, 'i');
               XCodPessoa:=-1;
	            EdCPF.Text:='';
           End;
       End
       Else Begin
       	If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'NOME', '', ' (upper(NOME) like upper('+#39+DBNomeCli.Text+'%'+#39+'))')=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
	        	XCodPessoa:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
	            EdNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
	            EdCPF.Text:=DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
	            EdCodCli.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;               
               PPesCad.Visible:=FALSE;
               EdCodCli.SetFocus;
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
				Mensagem('A T E N Ç Ã O', 'Fornecedor não encontrado!', '', 1, 1, False, 'i');
               XCodPessoa:=-1;
	            EdCPF.Text:='';
           End;
       End;
   End;
end;

procedure TFPedidoPadrao.PSelectClienteExit(Sender: TObject);
begin
  inherited;
   luzformpag.Visible:=False;
	If XSQLTABELA='PEDVENDA'
   Then Begin
       //Filtr Cliente para verificar se é atacadista
       If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.TCliente.FieldByName('COD_CLIENTE').AsString, '' )=True
       Then Begin
           If DMPESSOA.TCliente.FieldByName('ATACADISTA').AsString='1' Then
               XAtacadista:=True
           Else
               XAtacadista:=False;
       End
       Else Begin
           XAtacadista:=False;
       End;
       SelectCader;//verifica a existencia de uma caderneta aberta para este client
   End;
   PSelectCliente.Repaint;
   //REFILTRA VALORES
   FiltraSlave;

   If PCadVendedor.Visible=True Then
       dbvendedor.SetFocus
   Else
       EdCodVend.SetFocus;
end;

procedure TFPedidoPadrao.CBPagamentoExit(Sender: TObject);
begin
  inherited;
   XVlrCheque:=-50;
   LTotMostraCheque.Visible:=False;  
   //controla visualização de componentes referentes a escolha e visualização da cta corrente
	If (CBPagamento.Text='Banco') or ((CBPagamento.Text='Cheque') And (XSQLTABELA='PEDCOMPRA')) or (CBPagamento.Text='Cartão')
   Then Begin
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
      	PMostraCta.Visible:=True;
  		PMostraCta.BringToFront;
      	PBanco.Enabled:=True;
      	PBanco.Visible:=TRUE;
      	PBanco.BringToFront;
      	DBGCTA.SetFocus;
   End
   Else Begin
       PBanco.Enabled:=False;
       PMostraCta.Visible:=False;
   End;
   If (CBPagamento.Text='Chq. Terc.') And (XSQLTABELA='PEDCOMPRA')
   Then Begin
       PChqTerceiro.Visible:=True;
       PChqTerceiro.Enabled:=True;
       PChqTerceiro.BringToFront;
       LTotMostraCheque.Visible:=True;
       FiltraCheques;
       DBCBCHEQUE.SetFocus;
   End;
  	If ((CBPagamento.Text='Cheque') or (CBPagamento.Text='Banco')) and (XView.FieldByName('FORMPAG').AsString='À VISTA') And (XSQLTABELA='PEDCOMPRA')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Opções de Pagamento em Banco ou Cheque, devem passar pelo Contas a Receber. Este tipo de pagamento não pode ser como À VISTA!', '', 1, 1, true, 'a');
       CBPagamento.SetFocus;
       PBanco.SendToBack;
       PBanco.Visible:=false;
       Exit;
   End;

   
end;

procedure TFPedidoPadrao.DBGCTAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCO:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           XCOD_CONTABANCO:=-1;

       CBPagamento.Enabled:=False;
       PBanco.Visible:=False;
       PBanco.Enabled:=False;
       CBPagamento.Enabled:=True;
       FrmConta.EDCodigo.SetFocus;
   End;
end;

procedure TFPedidoPadrao.PBancoExit(Sender: TObject);
begin
  inherited;
	If PBanco.Visible=True Then
       DBGCTA.SetFocus;
end;

procedure TFPedidoPadrao.BtnEscolheProcClick(Sender: TObject);
begin
  inherited;
  	MEscolheProc.Popup(BtnEscolheProc.Width+BtnEscolheProc.Left+20, 315);
end;

procedure TFPedidoPadrao.ControleInterno1Click(Sender: TObject);
begin
  inherited;
   PCodInterno.Visible:=True;
   PCodInterno.BringToFront;
   PCodInterno.Enabled:=True;
   EDCodInterno.SetFocus;
end;

procedure TFPedidoPadrao.CdFab1Click(Sender: TObject);
begin
  inherited;
   PCodFab.Visible:=True;
   PCodFab.BringToFront;
   PCodFab.Enabled:=True;
   EDCodFab.SetFocus;
end;

procedure TFPedidoPadrao.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
	PMRel.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFPedidoPadrao.Comprovante1Click(Sender: TObject);
begin
  inherited;
  	If XSQLTABELA='PEDVENDA'
   Then Begin
      FMenu.TIPOREL:='NORMAL';
	   ImpPed(XView.FieldByName('COD_PEDVENDA').AsInteger)
   End
   Else Begin
      FMenu.TIPOREL:='NORMAL';
	   ImpPed(XView.FieldByName('COD_PEDCOMP').AsInteger);
   End;
end;

procedure TFPedidoPadrao.EDAVVISTAExit(Sender: TObject);
Var
    DescVistaVar, DescVistaAtac, AcrecPrazoVar, AcrecPrazoAtac, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;
begin
  inherited;
	DMESTOQUE.TEstoque.Edit;
   DMESTOQUE.TSubProd.Edit;

   DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency:=Edipi.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency:=EDICMS.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency:=EDFRETE.ValueNumeric;
   DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsCurrency:=EDEMB.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency:=EDOUTROS.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency:=EDAVVISTA.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=EDValUnit.ValueNumeric;
	DMESTOQUE.TEstoque.Post;
   DMESTOQUE.TSubProd.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsString='' Then
        DescVistaVar:=DMMacs.TEmpresa.FieldByName('AVVPROVAR').AsCurrency
    Else
        DescVistaVar:=DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsString='' Then
        AcrecPrazoVar:=DMMacs.TEmpresa.FieldByName('AVPPROVAR').AsCurrency
    Else
        AcrecPrazoVar:=DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsString='' Then
        DescVistaAtac:=DMMacs.TEmpresa.FieldByName('AVVPROAT').AsCurrency
    Else
        DescVistaAtac:=DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsString='' Then
        AcrecPrazoAtac:=DMMacs.TEmpresa.FieldByName('AVPPROAT').AsCurrency
    Else
        AcrecPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsString='' Then
        ComVistaVar:=DMMacs.TEmpresa.FieldByName('CVVPROVAR').AsCurrency
    Else
        ComVistaVar:=DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsString='' Then
        ComPrazoVar:=DMMacs.TEmpresa.FieldByName('CVPPROVAR').AsCurrency
    Else
        ComPrazoVar:=DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsString='' Then
        ComVistaAtac:=DMMacs.TEmpresa.FieldByName('CVVPROAT').AsCurrency
    Else
        ComPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsString='' Then
        ComPrazoAtac:=DMMacs.TEmpresa.FieldByName('CVPPROAT').AsCurrency
    Else
        ComPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency;


 	FProduto.CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 0, 1);
   EDLUC.Text:=FMenu.TIPOAUX;
	DMESTOQUE.TEstoque.Edit;
   DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsSTRING:=FMenu.TIPOAUX;
   DMESTOQUE.TEstoque.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;

   EDAVVISTA.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
   EDAVPRAZO.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
   EDAAVISTA.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
   EDAAPRAZO.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
end;

procedure TFPedidoPadrao.BtnProcPessEnter(Sender: TObject);
begin
  inherited;
   LUZOPEN.Visible:=True;
end;

procedure TFPedidoPadrao.BtnProcVendEnter(Sender: TObject);
begin
  inherited;
  	If PCadVendedor.Visible=False Then
   	luzvendedor.Visible:=True;
end;

procedure TFPedidoPadrao.BtnProcVendExit(Sender: TObject);
begin
  inherited;
   luzvendedor.Visible:=False;
end;

procedure TFPedidoPadrao.BtnProcFormPagEnter(Sender: TObject);
begin
  inherited;
   luzformpag.Visible:=True;
end;

procedure TFPedidoPadrao.DBGridCadastroPadraoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	if XView.FieldByName('SITUACAO').AsString='ABERTO' then
   begin
  		DBGridCadastroPadrao.Canvas.Font.Color := clRed;
		DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   	If XSQLTABELA='PEDVENDA'
       Then Begin
           if XView.FieldByName('GARANT').AsString='1'
           then begin
  				DBGridCadastroPadrao.Canvas.Font.Color := clBlue;
				DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
           End;
       End;
   end;
   if XView.FieldByName('FISCO').AsString='NFE2'
   then begin
       DBGridCadastroPadrao.Canvas.Font.Color := clRed;
       DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFPedidoPadrao.BTNDEVOLVERClick(Sender: TObject);
//	XCODLANEST:INTEGER;
begin
  inherited;   {
   If DMESTOQUE.TSlave.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
	  	//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
	  	//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
		FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
  	    If XSQLTABELA='PEDVENDA'
	    Then Begin
  			FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsString, '');
           DMSAIDA.TItemPV.Edit;
           DMSAIDA.TItemPV.FieldByName('OPERACAO').AsString:='TRC';
           DMSAIDA.TItemPV.FieldByName('LUCPER').AsCurrency:=0;
           DMSAIDA.TItemPV.FieldByName('VALCOMP').AsCurrency:=0;
           DMSAIDA.TItemPV.FieldByName('COEFDIV').AsCurrency:=0;
           DMSAIDA.TItemPV.FieldByName('VALREP').AsCurrency:=0;
           DMSAIDA.TItemPV.FieldByName('DESCPRO').AsCurrency:=0;
           DMSAIDA.TItemPV.FieldByName('LUCMOE').AsCurrency:=0;
           DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=0;
           DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency:=0;
           DMSAIDA.TItemPV.FieldByName('VALCUSTO').AsCurrency:=0;
           DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency:=0;
           DMSAIDA.TItemPV.Post;
		    XCODLANEST:=InserReg(DMENTRADA.TLancENT, 'LANCENT', 'COD_LANENT');
			DMENTRADA.TLancENT.FieldByName('COD_LANENT').AsInteger:=XCODLANEST;
			DMENTRADA.TLancENT.FieldByName('COD_ESTOQUE').AsString:=DMESTOQUE.Testoque.FieldByName('COD_ESTOQUE').AsString;
			DMENTRADA.TLancENT.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
			DMENTRADA.TLancENT.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
			DMENTRADA.TLancENT.FieldByName('NUMNOTA').AsString:='TRC-'+DBNumPed.Text;
			DMENTRADA.TLancENT.FieldByName('MOTIVO').AsString:='Troca ref. Pedido: '+DBNumPed.Text+'/Cliente: '+DMSAIDA.TPedV.FieldByName('NOMECLI').AsString;
			DMENTRADA.TLancENT.FieldByName('DT_LANCAMENTO').AsString:=DateToStr(Date());
			DMENTRADA.TLancENT.FieldByName('DT_ESTOQUE').AsString:=DateToStr(Date());
			DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsString:=DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsString;
			DMENTRADA.TLancENT.FieldByName('QTDANT').AsString:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
           DMENTRADA.TLancEnt.POST;
           DMESTOQUE.TEstoque.Edit;
  	        DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency;
           DMESTOQUE.TEstoque.POST;
           DMENTRADA.IBT.CommitRetaining;
           DMESTOQUE.TransacEstoque.CommitRetaining;
           DMSAIDA.IBT.CommitRetaining;
           FiltraSlave;
	    End
	    Else Begin

	    End;
   End;         }
end;

procedure TFPedidoPadrao.DbCodVendedorItemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin//se enter
   	If DbCodVendedorItem.Text<>''
       Then Begin//se codigo do vendedor não estiver em branco
       	//seleciona o vendedor de acordo com o valor da edit
	        If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO = '+#39+DbCodVendedorItem.Text+#39)=True
           Then Begin
               //atribuí o vendedor a venda
	            XCodVendItem:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
            	DbCodVendedorItem.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
            	DbVendedorItem.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
               If XCodVendedor=-1
               Then Begin
		            XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
	            	edcodvend.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
	            	EDNOMEVENDEDOR.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
               End;
           End
           Else Begin
               XCodVendItem:=-1;
	            DbCodVendedorItem.Text:='';
	            DbVendedorItem.Text:='';
	        End;
       End;
   End;
end;

procedure TFPedidoPadrao.BitBtn7Click(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');//LIBERA TODOS OS REGISTROS PARA CONSULTA
	If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
	Then Begin
       XCodVendItem:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
		DbCodVendedorItem.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
		DbVendedorItem.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
       //se o master vendedor estiver em branco é assumido o mesmo vendedor do item
       If XCodVendedor=-1
       Then Begin
           XCodVendedor:=XCodVendItem;
			EdCodVend.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
			EDNOMEVENDEDOR.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
       End;
   End;
end;

procedure TFPedidoPadrao.PVendItemExit(Sender: TObject);
begin
  inherited;
	If PVendItem.Visible=True Then
       DbCodVendedorItem.SetFocus;
end;

procedure TFPedidoPadrao.BitBtn4Click(Sender: TObject);
begin
  inherited;
		//Valida se foi informado o funcionário da venda
  		If XCodVendItem=-1
  		Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe o vendedor do item.', '', 1, 1, False, 'a');
      		PVendItem.Visible:=True;
      		PVendItem.Enabled:=True;
			DbCodVendedorItem.SetFocus;
    		Exit;
  		End;

       PVendItem.Visible:=False;
       PVendItem.Enabled:=False;
       XCTrlPainelvend:=TRUE;//varivael de controle do painel de vendedor item (ver em declaração de variáveis)
       BtnInsertProd.SetFocus;

end;

procedure TFPedidoPadrao.EdValorPedExit(Sender: TObject);
VAR
   XVLRFRETE1: REAL;
begin
  inherited;
   If XVLRTOTAL<>(EdValorPed.ValueNumeric-EdValorFrete.ValueNumeric-EdValorOutros.ValueNumeric-EdValoIcmsSubstituicao.ValueNumeric)
   Then Begin
   	CalcPercent(0, XVLRTOTAL-(EdValorPed.ValueNumeric-EdValorFrete.ValueNumeric-EdValorOutros.ValueNumeric-EdValoIcmsSubstituicao.ValueNumeric), XVLRTOTAL , 'D');
       EDDescPed.ValueNumeric:=AlxPercento;
   End
   Else Begin
       FiltraSlave;
       EDDescPed.ValueNumeric:=0;
       EdValorPed.ValueNumeric:=XVLRTOTAL+EdValorFrete.ValueNumeric+EdValorOutros.ValueNumeric+EdValorIpi.ValueNumeric+EdValoIcmsSubstituicao.ValueNumeric;
   End;
	CalcComisTotVend;
   EdDescMoeda.ValueNumeric:=(XVLRTOTAL+EdValorFrete.ValueNumeric+EdValorOutros.ValueNumeric+EdValoIcmsSubstituicao.ValueNumeric)-EdValorPed.ValueNumeric;
   XVLRFISCAL:=EdValorPed.ValueNumeric;
   //Recalculamos
   FiltraSlave;
   EdValorPed.ValueNumeric:=XVLRFISCAL;
   //EdCodCli.SetFocus;
end;

procedure TFPedidoPadrao.EDDescPedExit(Sender: TObject);
begin
  inherited;
    XTabela.Edit;
    XTabela.Post;
  	If FloatToStr(XControlDesc)=EDDescPed.Text Then
       Exit;

  	If EDDescPed.text<>''
    Then Begin

       // a edit tah perdendo valor quando entra na função calcomisprod, intaum uma variavel apenas copia o valor da edit p repassar depois
       XVLRDESC := EDDescPed.Text;

       If StrToFloat(EDDescPed.Text) = 0
       Then Begin
           EdValorPed.Text := FormatFloat('#,##0.00',XVLRTOTAL);
           EDDescPed.Text := '0,00';
           EdDescMoeda.Text := '0,00';
           Exit;
       End;

		  CalcPercent(StrToFloat(EDDescPed.text), XVLRTOTAL, XVLRTOTAL, 'D');

   	  If AlxValor<>0
      Then Begin
			    EdValorPed.Text:=FormatFloat('#,##0.00', AlxCalculo)
      End
		  Else Begin
			    EdValorPed.Text:='0,00';
      End;
      EDDescPed.ValueNumeric:=AlxPercento;
   End
   Else Begin
       XVLRDESC := '0,00';
       EdDescMoeda.Text := '0,00';
       EdValorPed.ValueNumeric := XVLRTOTAL;
   End;

	 CalcComisTotVend;
   EdDescMoeda.ValueNumeric := XVLRTOTAL-EdValorPed.ValueNumeric;
   XVLRFISCAL := EdValorPed.ValueNumeric;
   EDDescPed.Text := FormatFloat('0.00', StrToFloat(XVLRDESC));

end;

procedure TFPedidoPadrao.EdValorPedKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPED', '')=False
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Sua conta de usuário não lhe da permissão para alterar o valor total do pedido.', '', 1, 1, False, 'a');
       Key:=#0;
  		Exit;
   End;
end;

procedure TFPedidoPadrao.EDTotalExit(Sender: TObject);
begin
  inherited;
   CalcPercent(0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric)- EDTotal.ValueNumeric, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
  	EDDesc.ValueNumeric:=AlxPercento;
   If DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency>0 Then
   	EdBCIcms.ValueNumeric:=((EDTotal.ValueNumeric*DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency)/100)
   Else
   	EdBCIcms.ValueNumeric:=EDTotal.ValueNumeric;

   If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString<>''
   Then Begin
   	If (DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsInteger=1)OR (DMESTOQUE.TCST.FieldByName('ISENTA').AsString='1') Then
       begin
       	EdBCIcms.ValueNumeric:=0;
           EdimpIcms.ValueNumeric:=0;
           EdImpVlrIcms.ValueNumeric:=0;
       end;
   End;

   EdImpVlrIcms.ValueNumeric:=(EdBCIcms.ValueNumeric*EdimpIcms.ValueNumeric)/100;
   EdImpVlrIpi.ValueNumeric:=(EDTotal.ValueNumeric*EdImpIpi.ValueNumeric)/100;
end;

procedure TFPedidoPadrao.EDTotalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPROD', '')=False Then
  		Key:=#0;
end;

procedure TFPedidoPadrao.EDDescPedKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPED', '')=False
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Sua conta de usuário não lhe da permissão para alterar o o valor total do pedido.', '', 1, 1, False, 'a');
       Key:=#0;
  		Exit;
   End;
end;

procedure TFPedidoPadrao.EDCodInternoExit(Sender: TObject);
begin
  inherited;
       if DMMacs.TLoja.FieldByName('CAMPOPESQITEMPED').AsString ='PL' then
       begin
           if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT','' ,'(upper(CONTRINT) like upper('+#39+EDCodInterno.Text+'%'+#39+')) ORDER BY CONTRINT')=True
           Then Begin
               EscreveLabels;
    //           EDCodInterno.Text:=''
           End
           Else Begin
               LimpaLabels;
               LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
           End;
       end
       else begin
           If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', EDCodInterno.Text, '')=True
           Then Begin
               EscreveLabels;
    //           EDCodInterno.Text:=''
           End
           Else Begin
               LimpaLabels;
               LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
           End;
       end;    
end;

procedure TFPedidoPadrao.EDCodFabExit(Sender: TObject);
begin
  inherited;
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', EDCodFab.Text, '')=True
       Then Begin
			EscreveLabels;
//           EDCodFab.Text:='';
       End
       Else Begin
           //Paulo 08/07/2011: caso o código acima não for encontrado, verifica se tem
           //outros códigos cadastrados na tabela codigoBarra.
           If FiltraTabela(DMEstoque.TCodBarra, 'CODIGOBARRA', 'CODBARRA', EDCodFab.Text, '')=True
           Then Begin
               FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', IntToStr(DMEstoque.TCodBarra.FieldByName('COD_ESTOQUE').AsInteger), '');
			    EscreveLabels;
               EDCodFab.Text:= DMEstoque.TCodBarra.FieldByName('CODBARRA').AsString;
           End
           else begin
               LimpaLabels;
               LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
           end;    
       End;
end;


procedure TFPedidoPadrao.BtnDadosAdicClick(Sender: TObject);
begin
  inherited;

  	//VERFICA SE DEVE LANÇAR DOCUMENTO FISCAL PARA COMPRA OU PARA VENDA
   If XSQLTABELA='PEDVENDA'
   Then Begin
       // dados do pedido de venda
       FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XCodPedido,'');
       DMSAIDA.TPedV.Edit;
       DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger := XCodPessoa;
       DMSAIDA.TPedV.Post;
       DMSAIDA.IBT.CommitRetaining;
   End;

  	//CRIA O FORMULARIO FISCAL
   Application.CreateForm(TFFiscal, FFiscal);

   //LIMPA TODAS AS INFORMACOES DA TELA
   FFiscal.FrmCfop.EDCodigo.Text:='';
   FFiscal.FrmCfop.EdDescricao.Text:='';
   FFiscal.FrmTransp.EDCodigo.Text:='';
   FFiscal.FrmTransp.EdDescricao.Text:='';
   FFiscal.XCOD_CFOP:=-1;
   FFiscal.EdBaseICMS.ValueNumeric:=0;
   FFiscal.EdVlrICMS.ValueNumeric:=0;
   FFiscal.EdBaseICMSSubs.ValueNumeric:=0;
   FFiscal.EdVlrICMSSubs.ValueNumeric:=0;
   FFiscal.EdVlrSeguro.ValueNumeric:=0;
   FFiscal.EdVlrIPI.ValueNumeric:=0;
   FFiscal.EdOutrasDesp.ValueNumeric:=0;
   FFiscal.EdVlrProd.ValueNumeric:=0;
   FFiscal.EdVlrNota.ValueNumeric:=0;
   FFiscal.CBFreteComp.Checked:=False;
   FFiscal.EdVlrFrete.ValueNumeric:=0;
   FFiscal.XCOD_TRANSP:=-1;
   FFiscal.EdQuantidade.ValueNumeric:=0;
   FFiscal.EdEspecie.Text:='';
   FFiscal.EdMarca.Text:='';
   FFiscal.EdNumero.Text:='';
   FFiscal.EDPlacaVeiculo.Text:='';
   FFiscal.EdUf.Text:='';
   FFiscal.EdPesoBruto.ValueNumeric:=0;
   FFiscal.EdPesoLiquido.ValueNumeric:=0;
   FFiscal.RBEmitente.Checked:=False;
   FFiscal.RBDestinatario.Checked:=False;
   FFiscal.EdVlrNota.ValueNumeric:=0;
   FFiscal.EDVLRICMSISENTO.ValueNumeric:=0;
//   FFiscal.MAdicionais.Lines.Clear;
   FFiscal.EDANTT.Text := '';
   FFiscal.MDadosAd01.Lines.Text:='';
   FFiscal.MDadosAd02.Lines.Text:='';
   FFiscal.MDadosAd03.Lines.Text:='';
   FFiscal.MDadosAd04.Lines.Text:='';   
   FFiscal.MReservFisco01.Lines.Text:='';
   FFiscal.MReservFisco02.Lines.Text:='';
   FFiscal.MReservFisco03.Lines.Text:='';
   FFiscal.EdDtEmissao.Date:=Date();
   FFiscal.EdDtEntSai.Date:=Date();



   //08/04/2009: busca CFOP em loja
   //Verifica estado de origem Estado da empresa
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select * from empresa ');
   DMMACS.TALX.SQL.Add(' left join cidade on empresa.cod_cidade = cidade.cod_cidade ');
   DMMACS.TALX.SQL.Add(' left join estado on cidade.cod_estado = estado.cod_estado ');
   DMMACS.TALX.SQL.Add(' where empresa.cod_empresa = :COD_EMPRESA ');
   DMMACS.TALX.ParamByName('COD_EMPRESA').AsString:=FMenu.LCODEMPRESA.Caption;
   DMMACS.TALX.Open;
  ///04/04/2009: verificar uf do cliente
   DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add('select ');
   DMPESSOA.TALX.SQL.Add('vwcliente.cod_cliente, estado.uf_Estado as UF');
   DMPESSOA.TALX.SQL.Add('from vwcliente ');
   DMPESSOA.TALX.SQL.Add('left join cidade on vwcliente.cod_cidade = cidade.cod_cidade ');
   DMPESSOA.TALX.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado ');
   DMPESSOA.TALX.SQL.Add('where vwcliente.cod_pessoa = :codigo ');
   DMPESSOA.TALX.ParamByName('codigo').AsInteger := XCodPessoa;
   DMPESSOA.TALX.Open;
   //08/04/2009: verifica se estado é diferente
   If DMMACS.TALX.FieldByName('UF_ESTADO').AsString<>DMPESSOA.TALX.FieldByName('UF').AsString
   Then Begin
        FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.fieldByName('CFOPEXTERNO').AsString, '');
   End
   Else Begin
        FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.fieldByName('CFOPINTERNO').AsString, '');
   End;

   //VERFICA SE DEVE LANÇAR DOCUMENTO FISCAL PARA COMPRA OU PARA VENDA
   If XSQLTABELA='PEDVENDA'
   Then Begin
       FFiscal.XTipo:='VENDA';
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('Select Sum(itenspedven.valortotal) as VALORTOTAL From itenspedven');
       DMESTOQUE.TSlave.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA)');
       DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsString:=XCodPedido;
       DMESTOQUE.TSlave.Open;

       //VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
       If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+XCodPedido+#39+')')=True
       Then Begin
           //EDITAL FISCAL EXISTENTE
           DMSAIDA.TFiscPV.Edit;
           If DMSAIDA.TFiscPV.FieldByName('COD_CFOP').AsInteger > 0 Then
              FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMSAIDA.TFiscPV.FieldByName('COD_CFOP').AsString, '');
           FFiscal.XSTATE:='EDIT';
           FFiscal.XCOD_FISCAL:=DMSAIDA.TFiscPV.FieldByName('COD_DOCFISC').AsInteger;
           FFiscal.FrmCfop.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           FFiscal.FrmCfop.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FFiscal.XCOD_CFOP:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
           FFiscal.EdDtEmissao.Date:=DMSAIDA.TFiscPV.FieldByName('DTEMISSAO').AsDateTime;
           FFiscal.EdDtEntSai.Date:=DMSAIDA.TFiscPV.FieldByName('DTENTSAID').AsDateTime;
           FFiscal.EdHora.Time:=DMSAIDA.TFiscPV.FieldByName('HORASAID').AsDateTime;
           FFiscal.EdBaseICMS.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsCurrency;
           FFiscal.EdVlrICMS.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRICMS').AsCurrency;
           FFiscal.EdBaseICMSSubs.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('BASCALSUBS').AsCurrency;
           FFiscal.EdVlrICMSSubs.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRICMSUBS').AsCurrency;
           FFiscal.EdVlrSeguro.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRSEG').AsCurrency;
           FFiscal.EdVlrIPI.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency;
           FFiscal.EdOutrasDesp.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLROUTRASDESP').AsCurrency;
           FFiscal.EdVlrProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
           FFiscal.EdVlrNota.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency;
           FFiscal.EDVLRICMSISENTO.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRISENTOICMS').AsCurrency;
           DMSAIDA.TFiscPV.Edit;
           DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency:=XVLRTOTALPROD;
           DMSAIDA.TFiscPV.Post;
           If DMSAIDA.TFiscPV.FieldByName('FRETECOMP').AsString='1' Then
               FFiscal.CBFreteComp.Checked:=True
           Else
               FFiscal.CBFreteComp.Checked:=False;
           FFiscal.EdVlrFrete.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency;
           FFiscal.XCOD_TRANSP:=DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsInteger;
           FFiscal.EdQuantidade.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('QUANTFRETE').AsCurrency;
           FFiscal.EdEspecie.Text:=DMSAIDA.TFiscPV.FieldByName('ESPECIEFRETE').AsString;
           FFiscal.EdMarca.Text:=DMSAIDA.TFiscPV.FieldByName('MARCAFRETE').AsString;
           FFiscal.EdNumero.Text:=DMSAIDA.TFiscPV.FieldByName('NUMCONHEC').AsString;
           FFiscal.EDPlacaVeiculo.Text:=DMSAIDA.TFiscPV.FieldByName('PLACA').AsString;
           FFiscal.EdUf.Text:=DMSAIDA.TFiscPV.FieldByName('UFPLACA').AsString;
           FFiscal.EdPesoBruto.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('PESOBRUTO').AsCurrency;
           FFiscal.EdPesoLiquido.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('PESOLIQ').AsCurrency;
           FFiscal.EDANTT.Text := DMSAIDA.TFiscPV.FieldByName('ANTT').AsString;
           FFiscal.cbCFOPProdutos.Visible := True;
           If DMSAIDA.TFiscPV.FieldByName('CFOPPEDIDO').AsString = '1'
           Then
               FFiscal.cbCFOPProdutos.Checked := True
           Else
               FFiscal.cbCFOPProdutos.Checked := False;
           If DMSAIDA.TFiscPV.FieldByName('FRETECONTA').AsString = '2' Then
               FFiscal.RBDestinatario.Checked := True
           Else
               FFiscal.RBEmitente.Checked := True;

               //13/04/2009: seta transportadora
           If DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsInteger > 0
           Then Begin
                FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsString, ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
                FFiscal.XCOD_TRANSP:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
                FFiscal.FrmTransp.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                FFiscal.FrmTransp.EDCodigo.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
           End;
       End
       Else Begin
           //INSERE NOVO DOCUMENTO FISCAL   
           FFiscal.FrmCfop.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           FFiscal.FrmCfop.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FFiscal.XCOD_CFOP:=DMSAIDA.TFiscPV.FieldByName('COD_CFOP').AsInteger;
           FFiscal.XCOD_FISCAL:=InserReg(DMSAIDA.TFiscPV, 'DOCFIS', 'COD_DOCFISC');

           DMSAIDA.TFiscPV.Edit;
           DMSAIDA.TFiscPV.FieldByName('COD_DOCFISC').AsInteger:=FFiscal.XCOD_FISCAL;
           DMSAIDA.TFiscPV.FieldByName('COD_PEDIDO').AsString := XCodPedido;
           DMSAIDA.TFiscPV.FieldByName('CFOPPEDIDO').AsString :='0';// - 14/04/2009: deixar como default para não pegar cfop da nota.. pegar em loja
           DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency:=XVLRTOTALPROD;
           DMSAIDA.TFiscPV.FieldByName('DTEMISSAO').AsDateTime:=Date();
           DMSAIDA.TFiscPV.FieldByName('DTENTSAID').AsDateTime:=Date();

           FFiscal.cbCFOPProdutos.Visible := True;
           FFiscal.cbCFOPProdutos.Checked := False;
           DMSAIDA.TFiscPV.FieldByName('FRETECONTA').AsString := '2'; // - 14/04/2009: default frete por conta do destinatário
                   FFiscal.RBDestinatario.Checked := True;
           DMSAIDA.TFiscPV.Post;
           DMSAIDA.IBT.CommitRetaining;
           FFiscal.EdVlrProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
           FFiscal.EdVlrNota.ValueNumeric:=XVLRFISCAL;
//           FFiscal.MAdicionais.Lines.Text:='Ped: '+XTabela.FieldByName('NUMPED').AsString;
           FFiscal.XSTATE:='INSERT';
       End;

       // função para recalcular nota fiscal
       If RecalcFiscal('PV',StrToInt(XCodPedido))=false
       Then begin
           Mensagem('   A T E N Ç Ã O   ','Erro de cálculo fiscal. Tente novamente, mas se o problema persistir, entre em contato com suporte.','',1,1,false,'I');
           Exit;
       End;
       FFiscal.EdBaseICMS.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsCurrency;
       FFiscal.EdVlrICMS.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRICMS').AsCurrency;
       FFiscal.EdBaseICMSSubs.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('BASCALSUBS').AsCurrency;
       FFiscal.EdVlrICMSSubs.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRICMSUBS').AsCurrency;
       FFiscal.EdVlrIPI.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency;
       FFiscal.EdVlrProd.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency;
       FFiscal.EdVlrNota.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency;
       FFiscal.EDVLRICMSISENTO.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRISENTOICMS').AsCurrency;
       FFiscal.MDadosAd01.Lines.Text := DMSAIDA.TFiscPV.FieldByName('OBS').AsString;

       FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XCodPedido,'');

       //Localiza o caixa em questão para verificar se suas configurações são de Nota Fiscal e se possui certificação para emissão de NFe
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='NF') and (DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString <> '')
       Then
           FFiscal.btnPreVisDANFE.Visible := True
       Else
           FFiscal.btnPreVisDANFE.Visible := False;

   End
   Else Begin
       FFiscal.XTipo:='COMPRA';
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('Select Sum(itenspedc.valortotal) as VALORTOTAL From itenspedc');
       DMESTOQUE.TSlave.SQL.Add('Where itenspedc.cod_pedcompra = :CODPEDC ');
       DMESTOQUE.TSlave.ParamByName('CODPEDC').AsString:=XCodPedido;
       DMESTOQUE.TSlave.Open;
       FFiscal.EdVlrProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;

       //VERIFICA SE O PEDIDO JÁ POSSUE DOC FIS
       If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True
       Then Begin
           FFiscal.XCOD_FISCAL:=DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger;
           //EDITA DOCUMENTO FISCAL EXISTENTE
           DMENTRADA.TFiscPC.Edit;
           FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsString, '');
           FFiscal.XSTATE:='EDIT';
           FFiscal.FrmCfop.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
           FFiscal.FrmCfop.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           FFiscal.XCOD_CFOP:=DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsInteger;
           Try
           	FFiscal.EdDtEmissao.Date:=StrToDate(DMENTRADA.TFiscPC.FieldByName('DTEMISSAO').AsString);
           	FFiscal.EdDtEntSai.Date:=StrToDate(DMENTRADA.TFiscPC.FieldByName('DTENTSAID').AsString);
           Except
           	FFiscal.EdDtEmissao.Date:=Date();
           	FFiscal.EdDtEntSai.Date:=Date();
           End;
           FFiscal.EdHora.Time:=DMENTRADA.TFiscPC.FieldByName('HORASAID').AsDateTime;
           FFiscal.EdBaseICMS.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('BASEICMS').AsCurrency;
           FFiscal.EdVlrICMS.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('VLRICMS').AsCurrency;
           FFiscal.EdBaseICMSSubs.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency;
           FFiscal.EdVlrICMSSubs.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency;
           FFiscal.EdVlrSeguro.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('VLRSEG').AsCurrency;
           FFiscal.EdVlrIPI.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('VLRTOTIPI').AsCurrency;
           FFiscal.EdOutrasDesp.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('VLROUTRASDESP').AsCurrency;
           FFiscal.EdVlrProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
           FFiscal.EdVlrNota.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('VLRTOTDOCNF').AsCurrency;
           FFiscal.EDVLRICMSISENTO.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('VLRISENTOICMS').AsCurrency;
//           FFiscal.MAdicionais.Lines.Text:=DMENTRADA.TFiscPC.FieldByName('OBS').AsString;
           If DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString='1' Then
               FFiscal.CBFreteComp.Checked:=True
           Else
               FFiscal.CBFreteComp.Checked:=False;
           FFiscal.EdVlrFrete.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency;
           FFiscal.XCOD_TRANSP:=DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsInteger;
           FFiscal.EdQuantidade.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('QUANTFRETE').AsCurrency;
           FFiscal.EdEspecie.Text:=DMENTRADA.TFiscPC.FieldByName('ESPECIEFRETE').AsString;
           FFiscal.EdMarca.Text:=DMENTRADA.TFiscPC.FieldByName('MARCAFRETE').AsString;
           FFiscal.EdNumero.Text:=DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString;
           FFiscal.EDPlacaVeiculo.Text:=DMENTRADA.TFiscPC.FieldByName('PLACA').AsString;
           FFiscal.EdUf.Text:=DMENTRADA.TFiscPC.FieldByName('UFPLACA').AsString;
           FFiscal.EdPesoBruto.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('PESOBRUTO').AsCurrency;
           FFiscal.EdPesoLiquido.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('PESOLIQ').AsCurrency;
           If DMENTRADA.TFiscPC.FieldByName('FRETECONTA').AsString='1' Then
               FFiscal.RBEmitente.Checked:=True
           Else
               FFiscal.RBEmitente.Checked:=False;

           If DMENTRADA.TFiscPC.FieldByName('FRETECONTA').AsString='2' Then
               FFiscal.RBDestinatario.Checked:=True
           Else
               FFiscal.RBDestinatario.Checked:=False;
       End
       Else Begin
           //INSERE NOVO DOCUMENTO FISCAL
           FFiscal.XCOD_FISCAL:=InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC');
           DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger:=XCOD_DOCFIS;
           DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsString:=XCodPedido;
          	DMENTRADA.TPedC.FieldByName('dtpedcomp').AsDateTime:=Date();
       	DBDATA.Text:=DateToStr(Date());
        	DMENTRADA.TPedC.FieldByName('dtpedcomp').AsDateTime:=Date();
       	DBDATA.Text:=DateToStr(Date());
           FFiscal.XSTATE:='INSERT';
           //TENTA BUSCAR UMA TRANSPORTADORA CADASTRADA PAR O FORNECEDOR
           FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC', IntToStr(XCodPessoa), '');
           IF FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', DMPESSOA.TFornecedor.FieldByName('COD_TRANSPORT').AsString, '')=True
           Then Begin
               //informa fornecedores
               FFiscal.XCOD_TRANSP:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
               FFiscal.FrmTransp.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
               FFiscal.FrmTransp.EDCodigo.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
           End
           Else Begin
               FFiscal.XCOD_TRANSP:=-1;
               FFiscal.FrmTransp.EdDescricao.Text:='';
               FFiscal.FrmTransp.EDCodigo.Text:='';
           End;
       End;

   End;

   FFiscal.ShowModal;
   FiltraSlave;
end;

procedure TFPedidoPadrao.PFiscoExit(Sender: TObject);
begin
  inherited;
   If PFisco.Visible=True Then
       PFisco.SetFocus;
end;

procedure TFPedidoPadrao.BitBtn6Click(Sender: TObject);
begin
  inherited;
   DMENTRADA.TFiscPC.Cancel;
   DMENTRADA.IBT.RollbackRetaining;
   PFisco.Visible:=False;
end;

procedure TFPedidoPadrao.CBPagamento1Exit(Sender: TObject);
begin
  inherited;
   //controla visualização de componentes referentes a escolha e visualização da cta corrente
	If (CBPagamento1.Text='Banco') or ((CBPagamento1.Text='Cheque') And (XSQLTABELA='PEDCOMPRA'))
   Then Begin
      	PMostraCta1.Visible:=True;
  		PMostraCta1.BringToFront;
      	PBanco1.Enabled:=True;
      	PBanco1.Visible:=TRUE;
      	PBanco1.BringToFront;
      	DBGCTA1.SetFocus;
   End
   Else Begin
       PBanco1.Enabled:=False;
       PMostraCta1.Visible:=False;
   End;

end;

procedure TFPedidoPadrao.DBGCTA1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCOFRETE:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           XCOD_CONTABANCOFRETE:=-1;

       CBPagamento1.Enabled:=False;
       PBanco1.Visible:=False;
       PBanco1.Enabled:=False;
       CBPagamento1.Enabled:=True;
   End;
end;

procedure TFPedidoPadrao.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
   If XSQLTABELA='PEDVENDA' Then
       FMenu.TIPOAUX:='VENDA'
   Else
       FMenu.TIPOAUX:='COMPRA';

	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCODFORMPAGFRETE:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

       FrmFormPagFrete.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
       FrmFormPagFrete.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   End;
end;

procedure TFPedidoPadrao.FrmFormPagFreteEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
	Comp: String;
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       if FrmFormPagFrete.EDCodigo.Text<>''
       Then Begin
   		comp:='';
           FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
           iF DMMACS.TLoja.FieldByName('UTILFORMPG').AsString='1'
           Then Begin
           	IF XSQLTABELA='PEDVENDA' Then
                   comp:=' AND TIPO=' +#39+'V'+#39
               Else
                   comp:=' AND TIPO=' +#39+'C'+#39
           End;
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', FrmFormPagFrete.EDCodigo.Text, comp)
           Then Begin
              XCODFORMPAGFRETE:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
              FrmFormPagFrete.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
              FrmFormPagFrete.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
              XCODFORMPAGFRETE:=-1;
              FrmFormPagFrete.EDCodigo.Text:='';
              FrmFormPagFrete.EdDescricao.Text:='';
           End;
       End;
   End;
end;

procedure TFPedidoPadrao.FrmTranspBTNOPENClick(Sender: TObject);
begin
  inherited;
  	FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
   Then Begin
   	XCODTRANSP:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
       FrmTransp.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       FrmTransp.EDCodigo.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
   End;
end;

procedure TFPedidoPadrao.FrmTranspEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', '', ' COD_INTERNO='+#39+FrmTransp.EDCodigo.Text+#39)=True
   Then Begin
   	XCODTRANSP:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
       FrmTransp.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
   End
   Else Begin
   	XCODTRANSP:=-1;
       FrmTransp.EdDescricao.Text:='';
   End;
end;

procedure TFPedidoPadrao.BitBtn10Click(Sender: TObject);
begin
  inherited;
  	If CBFreteComp.Checked=True Then
		DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString:='1'
  	Else
		DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString:='0';

	If CBFreteComp.Checked=True
   Then Begin
       EdValorPed.ValueNumeric:=EdValorPed.ValueNumeric-XVLRFRETE;
       EdValorPed.ValueNumeric:=EdValorPed.ValueNumeric+EdFisVlrFrete.ValueNumeric;
   End
   Else Begin
       EdValorPed.ValueNumeric:=EdValorPed.ValueNumeric-XVLRFRETE;
   End;
   DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency:=EdFisVlrFrete.ValueNumeric;
	DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsInteger:=XCODTRANSP;
   DMENTRADA.TFiscPC.Post;
   DMENTRADA.IBT.CommitRetaining;
   PFisco.Visible:=False;
end;

procedure TFPedidoPadrao.EdNumPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
  			If XTab=True Then
  				FiltraTabela(XTabela, XSQLTABELA, XCampo, '', '(upper(NUMPED) like upper('+#39+EdNumPed.Text+'%'+#39+')) ORDER BY NUMPED')
    		Else
 				FiltraTabela(XView, XSQLVIEW, XCampo, '',   '(upper(NUMPED) like upper('+#39+EdNumPed.Text+'%'+#39+')) ORDER BY NUMPED');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
			ExecutaLiberaDados;
       End;
   Except
   End;
end;

procedure TFPedidoPadrao.BtnCancelarClick(Sender: TObject);
begin
   FiltraSlave;
   DMESTOQUE.TSlave.RecordCount;
	If (DMESTOQUE.TSlave.IsEmpty=True) And (DMESTOQUE.TDesp.IsEmpty=True)
   Then Begin//Se o pedido encontra-se sem itens ele pode ser apagado automaticamente pelo sistema
   	//Apaga Pedido
       If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o pedido?'  , '', 2, 3, False, 'c')= 2
       Then Begin
           If XSQLTABELA='PEDVENDA'
           Then  Begin
               //REGISTRA COMANDO DO USUARIO
               //Djonathan 17/11/2009: MUDADO PARAMETROS PARA PASSAGEM DE TEXTO E FIELD PARA A TABELA NO BANCO DE DADOS PEDV E PEDC
               Registra('PEDIDO VENDA', 'APAGAR/CANCELA', Xtabela.FieldByName('DTPEDVEN').AsString, 'Nº ' + DMSAIDA.WPedV.FieldByName('NUMPED').AsString, 'Valor: ' + DMSAIDA.WPedV.FieldByName('VALOR').AsString);
           End
           Else Begin
               //REGISTRA COMANDO DO USUARIO
               Registra('PEDIDO COMPRA', 'APAGAR/CANCELA', Xtabela.FieldByName('DTPEDCOMP').AsString, 'Nº ' + DMENTRADA.WPedc.FieldByName('NUMPED').AsString, 'Valor: ' + DMENTRADA.WPedc.FieldByName('VALOR').AsString);
           End;
           //Confirma Tranzaçào
           XTabela.Delete;           
           XTransaction.CommitRetaining;
           //atualiza view
           ExecutaLiberaDados;
       End;
   End
   Else Begin
   	XTabela.edit;
       //VERIFICA USUARIO PARA GRAVAR
       XTabela.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
       XTabela.Post;
       //INFORMA CODIGO DA FORMA DE PAGAMENTO
       If XCodFormPag>0
       Then Begin
           XTabela.Edit;
       	XTabela.FieldByName('COD_FORMPAG').AsInteger:=XCodFormPag;
           XTabela.Post;
       End;
       //INFORMA CODIGO DO VENDEDOR
       If XCodVendedor>0
       Then Begin
       	If XSQLTABELA='PEDVENDA'
           Then Begin
               XTabela.Edit;
           	XTabela.FieldByName('COD_VENDEDOR').AsInteger:=XCodVendedor;
               XTabela.Post;
           End
           Else Begin
               XTabela.Edit;
           	XTabela.FieldByName('VENDEDOR').AsString:=dbvendedor.Text;
               XTabela.Post;
           End;
       End;

       If XSQLTABELA='PEDVENDA'
       Then Begin
           If ControlAccess('LIBERACRED', '')=False
           Then Begin
             XLIBCRED:=True;
       	  If VerificBloqCli(IntToStr(XCodPessoa))=True
             Then Begin
   			If Mensagem('C R É D I T O   B L O Q U E A D O', 'O Cliente informado possui Crédito Bloqueado. Para cancelar a venda é necessário excluir os itens!', '', 2, 3, False, 'c')= 2
   			Then Begin
   				AbrirForm(TFSENHA, FSENHA, 0);
   				//repassa resultado da tela de autenticação de senha para as variáveis de controle
   				If XAlxResult=True Then
   					XLIBCRED:=True
   				Else
   		   			XLIBCRED:=False;
               End
   			Else Begin
   				XLIBCRED:=False;
   			end;
             End;
             If XLIBCRED=False
             Then Begin
				Mensagem('C R É D I T O   B L O Q U E A D O', 'O Cliente informado possui Crédito Bloqueado. O Pedido não pode ser gravado com o cliente tendo crédito bloqueado!', '', 1, 1, false, 'i');
               Exit;
             End;
           end;

       	If PPesCad.Visible=FALSE
           Then Begin
               XTabela.Edit;
	    			XTabela.FieldByName('NOMECLI').AsString:=EdNomeCli.Text;
	    			XTabela.FieldByName('CPFCNPJ').AsString:=EdCPF.Text;
	    			//XTabela.FieldByName('VLRCOMIS').AsCurrency:=XVLRCOMIS;
               XTabela.Post;
           End;

           IF CBGarantia.Checked
           Then Begin
               XTabela.Edit;
	    			XTabela.FieldByName('GARANTIA').AsString:='1';
               XTabela.Post;
           End
           Else Begin
               XTabela.Edit;
	    			XTabela.FieldByName('GARANTIA').AsString:='';
               XTabela.Post;
           End;
           If XcodPessoa>0
           Then Begin
               XTabela.Edit;
					XTabela.FieldByName('COD_CLIENTE').AsInteger:=XCodPessoa;
               XTabela.Post;
           End;
       End;
       //INICIA PROCESSO PARA GRAVAR TABELAS
       XTabela.Edit;
       XTabela.FieldByName('VALOR').AsCurrency:=EdValorPed.ValueNumeric;
       XTabela.Post;
       XTransaction.CommitRetaining;

       // SE FOR PEDIDO DE VENDA, EH FEITO A ATUALIZAÇÃO DO REGISTRO PARA LIBERAR CONSULTAS
       If XSQLTABELA='PEDVENDA'
       Then Begin
           // FILTRA TABELA BUSCANDO REGISTRO
           FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XCodPedido,'');

           // LIBERANDO REGISTRO PARA CONSULTAS
           {DMSAIDA.TPedV.Edit;
           DMSAIDA.TPedV.FieldByName('EDIT').AsString := '0';
           DMSAIDA.TPedV.Post;
           DMSAIDA.IBT.CommitRetaining;}

           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add('update pedvenda set EDIT =:EDIT');
           DMSAIDA.TAlx.SQL.Add('where pedvenda.COD_PEDVENDA = :COD_PEDVENDA');

           DMSAIDA.TAlx.ParamByName('EDIT').AsString := '0';
           DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(XCodPedido);

            Try
               DMSAIDA.TAlx.ExecSQL;
               DMSAIDA.IBT.CommitRetaining;
            Except
               DMSAIDA.IBT.RollbackRetaining;
               Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Erro P1116: Problemas durante a tentativa de gravação, verifique os dados. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
            End;
       End;
   End;

   Estado := 'CONSULTA';
   ExecutaLiberaDados;
  inherited;

end;

procedure TFPedidoPadrao.GDBLoteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	{//Se a Quantidade do Lote nao suportar a venda
		If DMESTOQUE.Alx.FieldByName('VENCIMENTO').AsDateTime<=Date()
       Then Begin
       	Mensagem('A T E N Ç Ã O', 'L O T E   V E N C I D O !', '', 1, 1, False, 'a');
       End;    }
   	//Se a Quantidade do Lote nao suportar a venda
		If DMESTOQUE.Alx.FieldByName('QTD').AsCurrency < EDQuantidade.ValueNumeric
       Then Begin
       	   Mensagem('A T E N Ç Ã O', 'Este lote não suporta a venda da quantidade informada!', '', 1, 1, False, 'i');
           XCOD_LOTE:=-1;
           EDQuantidade.SetFocus;
       End
       Else Begin
       	  XCOD_LOTE:=DMESTOQUE.Alx.FieldByName('COD_LOTE').AsInteger;
			    PSelectLote.Visible:=False;
			    PAliqCusto.Tag:=1;
   		    XQTDLOTE:=DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
          		verificaVencimentoLote(DMESTOQUE.Alx.FieldByName('VENCIMENTO').AsDateTime);
   		    BtnInsertProd.SetFocus;
       End;
   End;
   If Key=#27
   Then Begin
      	PSelectLote.Visible:=False;
      	PAliqCusto.Tag:=1;
     	EDQuantidade.SetFocus;
   end;
end;

procedure TFPedidoPadrao.EdLoteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	If EdLote.Text=''
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Informe o Nº Lote.', '', 1, 1, False, 'I');
           EdLote.SetFocus;
           exit;
       End;
       Try
           StrToDate(EdVenc.Text);
       Except
			Mensagem('OPÇÃO BLOQUEADA', 'Data de Vencimento Inválida.', '', 1, 1, False, 'I');
           EdVenc.SetFocus;
           exit;
       End;

       PAliqCusto.Tag:=1;
       BtnInsertProd.SetFocus;
   End;
   If Key=#27
   Then Begin

       PAliqCusto.Tag:=1;
       EDQuantidade.SetFocus;
   End;
end;







procedure TFPedidoPadrao.FrmCFOPBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCadCFOP, FCadCFOP, 1)='Selected'
   Then Begin
		XCODCFOP:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;

       FrmCFOP.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCFOP.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
   End;
end;

procedure TFPedidoPadrao.FrmFormPagFreteBTNOPENClick(Sender: TObject);
begin
  inherited;
   If XSQLTABELA='PEDVENDA' Then
       FMenu.TIPOAUX:='VENDA'
   Else
       FMenu.TIPOAUX:='COMPRA';

	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCODFORMPAGFRETE:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

       FrmFormPagFrete.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
       FrmFormPagFrete.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   End;
end;

procedure TFPedidoPadrao.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
   If FiltraTabela(DMMACS.TMP, 'TMP', 'COD_TMP', DMBANCO.TAlx.FieldByName('COD_TMP').AsString, '')=True
   Then Begin
       DMMACS.TMP.Delete;
       DMMACS.Transaction.CommitRetaining;
       FiltraCheques;
   End;
end;

procedure TFPedidoPadrao.BTNOPENClick(Sender: TObject);
begin
  inherited;
  	//VERIFICA SE JAH NAUM EXISTE O MESMO CHEQUE LANCADO
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('  select * from tmp ');
   DMMACS.TALX.SQL.Add('   Where tmp.int1=:COD_CHEQUE ');
   DMMACS.TALX.ParamByName('COD_CHEQUE').AsInteger:=DMBANCO.WChequeRec.FieldByName('cod_chequerec').AsInteger;
	DMMACS.TALX.Open;
   If Not DMMACS.TALX.IsEmpty
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Este cheque já foi selecionado.', '', 1, 1, False, 'a');
       Exit;
   End;
  
	DMMACS.TMP.Insert;
   DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
   DMMACS.TMP.FieldByName('INT1').AsInteger:=DMBANCO.WChequeRec.FieldByName('cod_chequerec').AsInteger;
   DMMACS.TMP.Post;
   XCod_Tmp:=XCod_Tmp+1;
   DMMACS.Transaction.CommitRetaining;
   FiltraCheques;
   DBCBCHEQUE.SetFocus;
end;

procedure TFPedidoPadrao.BtnFechaChqTercClick(Sender: TObject);
begin
  inherited;
	PChqTerceiro.Visible:=False;
	PChqTerceiro.Enabled:=False;
   XVlrCheque:=StrToFloat(LTotalChq.Caption);
   FrmConta.EDCodigo.SetFocus;
end;

procedure TFPedidoPadrao.PChqTerceiroExit(Sender: TObject);
begin
  inherited;
	If PChqTerceiro.Visible=True Then
       BTNOPEN.SetFocus;
end;

procedure TFPedidoPadrao.PQtdConvertExit(Sender: TObject);
begin
  inherited;
   If PQtdConvert.Visible=True Then
       EdQtdConvert.SetFocus;
end;

procedure TFPedidoPadrao.EdQtdConvertKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
       If EdQtdConvert.ValueNumeric>0
       Then Begin
           PQtdConvert.Visible:=False;
           LQtdConvert.Caption:=EdQtdConvert.Text;
           EDValUnit.SetFocus;
       End;
   End;
end;

procedure TFPedidoPadrao.Panel2Enter(Sender: TObject);
begin
  inherited;
   LQtdConvert.Caption:='';
    Try
       FMenu.TIPOAUX:=IntToStr(XCodPessoa);
    Except
       FMenu.TIPOAUX:='0';
    End;
   
end;

procedure TFPedidoPadrao.EdAcreccustoExit(Sender: TObject);
Var
    DescVistaVar, DescVistaAtac, AcrecPrazoVar, AcrecPrazoAtac, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;
	 XVLRUNITCOMP: Real;
begin
  inherited;
	DMESTOQUE.TEstoque.Edit;
   DMESTOQUE.TSubProd.Edit;
   DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency:=Edipi.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency:=EDICMS.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency:=EDFRETE.ValueNumeric;
   DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsCurrency:=EDEMB.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency:=EDOUTROS.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsCurrency:=EDLUC.ValueNumeric;
   DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency:=EDValUnit.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('IMPEXP').AsCurrency:=EDTXEXP.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('MOD').AsCurrency:=EDMOD.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('IMPREND').AsCurrency:=EDIREND.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('CONTSOC').AsCurrency:=EDCS.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('PIS').AsCurrency:=EDPIS.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('COFINS').AsCurrency:=EDCOFINS.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('PERCMARGSEG').AsCurrency:=EDPMS.ValueNumeric;
	DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency+((DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency*DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsCurrency)/100);
	DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency-((DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency*DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency)/100);
	DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=EdVlrUnitComp.ValueNumeric;
	DMESTOQUE.TEstoque.Post;
   DMESTOQUE.TSubProd.Post;

   //VERIFICA QUANTO A CONVERSÃO UNITARIA DE COMPRA PARA VENDA
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
   Then Begin
       //Verifica se existe algum tipo de conversão unitária para este produto
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select * From convunid Where (convunid.cod_unident=:UNIDENT) AND (convunid.cod_unidsai=:UNIDSAI)');
       DMESTOQUE.Alx.ParamByName('UNIDENT').AsString:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString;
       DMESTOQUE.Alx.ParamByName('UNIDSAI').AsString:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString;
       DMESTOQUE.Alx.Open;
       If DMESTOQUE.Alx.IsEmpty
       Then Begin
           DMESTOQUE.TEstoque.Edit;
			DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=EDValUnit.ValueNumeric;
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
       	FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMESTOQUE.Alx.FieldByName('cod_unidsai').AsString, '');
           If DMESTOQUE.TUnidade.FieldByName('ARREDONDAR').AsString='1'
           Then Begin
            	//CASO DEVA ARREDONDAR O ESTOQUE EM ENTRADA
               DMESTOQUE.TEstoque.edit;
               Try
					DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=EDValUnit.ValueNumeric/Round(EDQuantidade.ValueNumeric*DMESTOQUE.Alx.FieldByName('QTDCONVERT').AsCurrency);
               Except
					DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=0;
               End;
               DMESTOQUE.TEstoque.Post;
           End
           Else Begin
             	//CASO NÃO DEVA ARREDONDAR O ESTOQUE EM ENTRADA
               DMESTOQUE.TEstoque.Edit;
               Try
					DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=EDValUnit.ValueNumeric/(EDQuantidade.ValueNumeric*DMESTOQUE.Alx.FieldByName('QTDCONVERT').AsCurrency);
               Except
					DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=0;              
               End;
               DMESTOQUE.TEstoque.Post;
           End;
       End;
    End
    Else Begin
    	DMESTOQUE.TEstoque.Edit;
	 	DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=EDValUnit.ValueNumeric;
       DMESTOQUE.TEstoque.Post;
    End;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsString='' Then
        DescVistaVar:=DMMacs.TEmpresa.FieldByName('AVVPROVAR').AsCurrency
    Else
        DescVistaVar:=DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsString='' Then
        AcrecPrazoVar:=DMMacs.TEmpresa.FieldByName('AVPPROVAR').AsCurrency
    Else
        AcrecPrazoVar:=DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsString='' Then
        DescVistaAtac:=DMMacs.TEmpresa.FieldByName('AVVPROAT').AsCurrency
    Else
        DescVistaAtac:=DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsString='' Then
        AcrecPrazoAtac:=DMMacs.TEmpresa.FieldByName('AVPPROAT').AsCurrency
    Else
        AcrecPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsString='' Then
        ComVistaVar:=DMMacs.TEmpresa.FieldByName('CVVPROVAR').AsCurrency
    Else
        ComVistaVar:=DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsString='' Then
        ComPrazoVar:=DMMacs.TEmpresa.FieldByName('CVPPROVAR').AsCurrency
    Else
        ComPrazoVar:=DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsString='' Then
        ComVistaAtac:=DMMacs.TEmpresa.FieldByName('CVVPROAT').AsCurrency
    Else
        ComPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsString='' Then
        ComPrazoAtac:=DMMacs.TEmpresa.FieldByName('CVPPROAT').AsCurrency
    Else
        ComPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency;

   DMESTOQUE.TransacEstoque.CommitRetaining;
 	FProduto.CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 0, 0);
   EDAVVISTA.ValueNumeric := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
   EDAVPRAZO.ValueNumeric := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
   EDAAVISTA.ValueNumeric := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
   EDAAPRAZO.ValueNumeric := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;

   DMESTOQUE.TEstoque.Edit;

   // verifica valor de venda a vista no varejo
   If XVALOR_VISTAVAREJO <> DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency
   Then Begin
       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVVAR').AsCurrency := XVALOR_VISTAVAREJO;
   End;

   // verifica valor de venda a prazo no varejo
   If XVALOR_PRAZOVAREJO <> DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency
   Then Begin
       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDPVAR').AsCurrency := XVALOR_PRAZOVAREJO;
   End;

   // verifica valor de venda a vista no atacado
   If XVALOR_VISTAATAC <> DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency
   Then Begin
       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVATAC').AsCurrency := XVALOR_VISTAATAC;
   End;

   // verifica valor de venda a prazo no atacado
   If XVALOR_PRAZOATAC <> DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency
   Then Begin
       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VPATAC').AsCurrency := XVALOR_PRAZOATAC;
   End;

   DMESTOQUE.TEstoque.Post;

   EDMS.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency;
end;

procedure TFPedidoPadrao.EdDescMoedaExit(Sender: TObject);
begin
  inherited;
  XTabela.Edit;
  XTabela.Post;
  	If XControlDesc=EdDescMoeda.ValueNumeric Then
       Exit;
  	If EdDescMoeda.text<>''
   Then Begin
		EdValorPed.ValueNumeric:=XVLRTOTAL-EdDescMoeda.ValueNumeric;
       XVLRDESC := EdDescMoeda.text;
   End;
   If XVLRTOTAL<>(EdValorPed.ValueNumeric)
   Then Begin
		CalcPercent(0, XVLRTOTAL-(EdValorPed.ValueNumeric), XVLRTOTAL , 'D');
       EDDescPed.ValueNumeric:=AlxPercento;
   End
   Else Begin
       FiltraSlave;
       EDDescPed.ValueNumeric:=0;
       EdValorPed.ValueNumeric:=XVLRTOTAL;
   End;
	CalcComisTotVend;
   XVLRFISCAL:=EdValorPed.ValueNumeric;
   EdDescMoeda.text := XVLRDESC;   
end;

procedure TFPedidoPadrao.EDDescPedEnter(Sender: TObject);
begin
  inherited;
  	If EDDescPed.Text<>'' Then
   	XControlDesc:=StrToFloat(EDDescPed.Text)
   Else
   	XControlDesc:=0;
end;

procedure TFPedidoPadrao.EdDescMoedaEnter(Sender: TObject);
begin
  inherited;
   XControlDesc:=EdDescMoeda.ValueNumeric;
end;

procedure TFPedidoPadrao.EdVlrVarejoVistaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If key=#27	Then
       PPrecos.Visible:=False;
end;

procedure TFPedidoPadrao.PInfoExpExit(Sender: TObject);
begin
  inherited;
	If PInfoExp.Visible=True Then
       EdQuantExp.SetFocus;
end;

procedure TFPedidoPadrao.EdQuantExpKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
       PInfoExp.Visible:=False;
       EDValUnit.SetFocus;
   End;
end;

procedure TFPedidoPadrao.EdVlrVndExpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=vk_return
   Then Begin
       PInfoExp.Visible:=False;
       EDValUnit.SetFocus;
   End;
end;

procedure TFPedidoPadrao.BtnInfoExportClick(Sender: TObject);
begin
  inherited;
       PInfoExp.Visible:=False;
       EDValUnit.SetFocus;
end;

procedure TFPedidoPadrao.cxButton1Click(Sender: TObject);
begin
  inherited;
    If (edQntEmb.ValueNumeric = 0) and (FMenu.XComplementacao=False)
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Informe uma valor maior que zero!', '', 1, 1, False, 'a');
		edQntEmb.SetFocus;
	    Exit;
   End;


   If (CBUnidEmb.Text = '')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Informe uma unidade para a embalagem!', '', 1, 1, False, 'a');
		edQntUnitEmb.SetFocus;
	    Exit;
   End;

   If (edQntUnitEmb.ValueNumeric = 0) and (FMenu.XComplementacao=False)
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Informe uma valor maior que zero!', '', 1, 1, False, 'a');
		edQntUnitEmb.SetFocus;
	    Exit;
   End;

   // - 26/01/2009: fazer os cálculos de conversão embalagem
   EDQuantidade.ValueNumeric := edQntEmb.ValueNumeric * edQntUnitEmb.ValueNumeric;
   LQtdConvert.Visible := True;
   LQtdConvert.BringToFront;
   LQtdConvert.Caption := FormatFloat('0.00', edQntEmb.ValueNumeric)+' '+CBUnidEmb.Text+'/'+FormatFloat('0.00', edQntUnitEmb.ValueNumeric);
   //LQtde.Repaint;

   PConvertEmb.SendToBack;
   PConvertEmb.Visible := False;

   EDValUnit.SetFocus;
end;

procedure TFPedidoPadrao.btnAbrirUnidadesClick(Sender: TObject);
begin
  inherited;
    AbrirForm(TFCadUnidade, FCadUnidade, 0);
end;

procedure TFPedidoPadrao.btnVisualizarConvUnitClick(Sender: TObject);
begin
  inherited;
    AbrirForm(TFConvertUnid, FConvertUnid, 0);
end;

procedure TFPedidoPadrao.EDDataInicioKeyPress(Sender: TObject;
  var Key: Char);
begin

    //if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0;

   if not (Key in[Chr(8)]) then
   begin
       if Length(EDDataInicio.Text)=2 then
       begin
           EDDataInicio.Text:=EDDataInicio.Text+'/';
           EDDataInicio.SelStart:=3;
       end else if Length(EDDataInicio.Text)=5 then begin
           EDDataInicio.Text:=EDDataInicio.Text+'/';
           EDDataInicio.SelStart:=6;
       end;
   end;

   if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0
    else if key in[Chr(8),#13,#27] then
    begin
       // eh nois !!
    end
    else if Length(EDDataInicio.Text) = 0
    then begin
        if key in['4'..'9']
        then begin
            EDDataInicio.Text := '0';
            EDDataInicio.SelStart := 2;
        end;

    end
    else if Length(EDDataInicio.Text) = 1
    then begin
        if EDDataInicio.Text = '3'
        then begin
            if not (key in['0'..'1']) then key := #0;
        end;
        if EDDataInicio.Text = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end
    else if (Length(EDDataInicio.Text) = 2) or (Length(EDDataInicio.Text) = 3)
    then begin
        if key in['2'..'9']
        then begin
            EDDataInicio.Text := EDDataInicio.Text+'0';
            EDDataInicio.SelStart := 4;
        end;
    end
    else if (Length(EDDataInicio.Text) = 4)
    then begin
        if Copy(EDDataInicio.Text, 4,4) = '1'
        then begin
            if not (key in['0'..'2']) then key := #0;
        end;
        if Copy(EDDataInicio.Text, 4,4) = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end
    else if (Length(EDDataInicio.Text) = 5) or (Length(EDDataInicio.Text) = 6)
    then begin
        if not (key in ['1'..'2']) then key := #0;
    end;





   if(key = #13)
   then begin
       if Length(Trim(EDDataInicio.Text))=0 then
       begin
           EDDataInicio.Text:=DatetoStr(Date());
       end else if Length(Trim(EDDataInicio.Text))=1 then
       begin
           EDDataInicio.Text:='0'+EDDataInicio.Text+Copy(DatetoStr(Date()), 3, 10);
       end else if Length(EDDataInicio.Text)<=3 then begin
           EDDataInicio.Text:=EDDataInicio.Text+Copy(DatetoStr(Date()), 4, 10);
       end else if Length(EDDataInicio.Text)=4 then begin
           EDDataInicio.Text:=Copy(EDDataInicio.Text,1,3)+'0'+Copy(EDDataInicio.Text,4,4)+Copy(DatetoStr(Date()), 6, 10);
       end else if Length(EDDataInicio.Text)<=6 then begin
           EDDataInicio.Text:=EDDataInicio.Text+Copy(DatetoStr(Date()), 7, 10);
       end else if (Length(EDDataInicio.Text)>6) and (Length(EDDataInicio.Text)<10) then begin
           EDDataInicio.Text:=Copy(EDDataInicio.Text, 1,6)+Copy(DatetoStr(Date()), 7, 10);
       end;
       EDDataFim.SetFocus;
   end;

    If Key=#27 Then
	    BtnFecharPainelFiltroClick(Self);
end;

procedure TFPedidoPadrao.EDDataInicioExit(Sender: TObject);
var Key: Char;
begin
   if Trim(EDDataInicio.Text) <> ''
   then begin
       Key := #13;
       EDDataInicioKeyPress(Self,Key);
   end;
end;

procedure TFPedidoPadrao.EDDataFimExit(Sender: TObject);
var Key: Char;
begin
  if Trim(EDDataFim.Text) <> ''
   then begin
       Key := #13;
       EDDataFimKeyPress(Self,Key);
   end;
end;

procedure TFPedidoPadrao.EDDataFimKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0;

   if not (Key in[Chr(8)]) then
   begin
       if Length(EDDataFim.Text)=2 then
       begin
           EDDataFim.Text:=EDDataFim.Text+'/';
           EDDataFim.SelStart:=3;
       end
       else if Length(EDDataFim.Text)=5 then begin
           EDDataFim.Text:=EDDataFim.Text+'/';
           EDDataFim.SelStart:=6;
       end;
   end;


   if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0
    else if key in[Chr(8),#13,#27] then
    begin
       // eh nois !!
    end
    else if Length(EDDataFim.Text) = 0
    then begin
        if key in['4'..'9']
        then begin
            EDDataFim.Text := '0';
            EDDataFim.SelStart := 2;
        end;

    end
    else if Length(EDDataFim.Text) = 1
    then begin
        if EDDataFim.Text = '3'
        then begin
            if not (key in['0'..'1']) then key := #0;
        end;
        if EDDataFim.Text = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end
    else if (Length(EDDataFim.Text) = 2) or (Length(EDDataFim.Text) = 3)
    then begin
        if key in['2'..'9']
        then begin
            EDDataFim.Text := EDDataFim.Text+'0';
            EDDataFim.SelStart := 4;
        end;
    end
    else if (Length(EDDataFim.Text) = 4)
    then begin
        if Copy(EDDataFim.Text, 4,4) = '1'
        then begin
            if not (key in['0'..'2']) then key := #0;
        end;
        if Copy(EDDataFim.Text, 4,4) = '0'
        then begin
            if not (key in['1'..'9']) then key := #0;
        end;
    end
    else if (Length(EDDataFim.Text) = 5) or (Length(EDDataFim.Text) = 6)
    then begin
        if not (key in ['1'..'2']) then key := #0;
    end;




   if(key = #13)
   then begin
       if Length(Trim(EDDataFim.Text))=0 then
       begin
           EDDataFim.Text:=DatetoStr(Date());
       end
       else if Length(Trim(EDDataFim.Text))=1 then
       begin
           EDDataFim.Text:='0'+EDDataFim.Text+Copy(DatetoStr(Date()), 3, 10);
       end
       else if Length(EDDataFim.Text)<=3 then begin
           EDDataFim.Text:=EDDataFim.Text+Copy(DatetoStr(Date()), 4, 10);
       end
       else if Length(EDDataFim.Text)=4 then begin
           EDDataFim.Text:=Copy(EDDataFim.Text,1,3)+'0'+Copy(EDDataFim.Text,4,4)+Copy(DatetoStr(Date()), 6, 10);
       end
       else if Length(EDDataFim.Text)<=6 then begin
           EDDataFim.Text:=EDDataFim.Text+Copy(DatetoStr(Date()), 7, 10);
       end
       else if (Length(EDDataFim.Text)>6) and (Length(EDDataFim.Text)<10)  then begin
           EDDataFim.Text:=Copy(EDDataFim.Text, 1,6)+Copy(DatetoStr(Date()), 7, 10);
       end;
       btnVisualizarRel.SetFocus;
   end;

    If Key=#27 Then
	    BtnFecharPainelFiltroClick(Self);
end;

procedure TFPedidoPadrao.BtnFecharPainelFiltroClick(Sender: TObject);
begin
  inherited;
    PFiltrarParcelas.SendToBack;
  PFiltrarParcelas.Visible := False;
  PConsulta.Enabled := True;
  PConsulta.BringToFront;
end;

procedure TFPedidoPadrao.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

// - 16/02/2009: controle de pesquisa add % na edit
  If (shift=[ssCtrl]) and (key = vk_space)
    then begin
        if (Copy(EdNome.Text, 1,1) = '%') and (Copy(EdNome.Text, Length(EdNome.Text),Length(EdNome.Text)) = '%')
        then begin
             EdNome.Text := Copy(edNome.Text, 2,Length(EdNome.Text)-2);
             EdNome.SelStart := Length(EdNome.Text);
        end
        else if (Copy(EdNome.Text, 0,1) = '%')
        then begin
            EdNome.Text := edNome.Text +'%';
            EdNome.SelStart := Length(EdNome.Text)-1;
        end
        else if (Copy(EdNome.Text, Length(EdNome.Text),Length(EdNome.Text)) = '%')
        then begin
            EdNome.Text := '%'+Trim(EdNome.Text);
            EdNome.SelStart := Length(EdNome.Text)-1;
        end
        else begin
            EdNome.Text := '%'+Trim(EdNome.Text)+'%';
            EdNome.SelStart := Length(EdNome.Text)-1;
        end;
        Xcontrole:=True;
        key := 0;
    end;
end;

procedure TFPedidoPadrao.EdNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if XControle
   then begin
       xcontrole := False;
       key := #0;
   end;
end;

// - 20/02/2009:  calcula media ponderada ST em PC
function TFPedidoPadrao.CalMedPondPC(CodPedido:String):Boolean;
var
  TotProd, XAuxB, XAuxV:Currency;
  BaseIcms, VlrIcms:Currency;
begin
 Try
   Result := False;

   // - 20/02/2009: filtra docfis do pedido
   If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True
   then begin
      // - 20/02/2009:    verifica se os valores de base de calculo e o valor do icms subst foram informados
      if (DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency > 0 ) and (DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency > 0 )
      then begin
          BaseIcms := DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency;
          VlrIcms := DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency;

           /// - 20/02/2009: filtra itens do pedido q possuem cst com substituição
          DMESTOQUE.Alx5.Close;
          DMESTOQUE.Alx5.SQL.Clear;
          DMESTOQUE.Alx5.SQL.Add('Select itenspedc.cod_itenspedc, itenspedc.cod_estoque, itenspedc.COD_UNIDADE,');
          DMESTOQUE.Alx5.SQL.Add('itenspedc.qtdeprod, itenspedc.qtdest, ItensPedc.valortotal, itenspedc.descpro, itenspedc.valunit, ');
          DMESTOQUE.Alx5.SQL.Add('subproduto.descricao, subproduto.marca, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS CODPRODFABR ');
          DMESTOQUE.Alx5.SQL.Add('From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
          DMESTOQUE.Alx5.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
          DMESTOQUE.Alx5.SQL.Add('left join cst on subproduto.cod_cst = cst.cod_cst ');
          DMESTOQUE.Alx5.SQL.Add('Where (itenspedc.cod_pedcompra = :CODPEDCOMPRA)');
          DMESTOQUE.Alx5.SQL.Add('and cst.SUBSTITUICAO = 1');
          DMESTOQUE.Alx5.ParamByName('CODPEDCOMPRA').AsString:=CodPedido;
          DMESTOQUE.Alx5.SQL.Add('order by itenspedc.cod_itenspedc desc');
          DMESTOQUE.Alx5.Open;

          // - 20/02/2009: verificar se encontrou algum pedido
          if not DMESTOQUE.Alx5.IsEmpty
          then begin
              // - 20/02/2009: varrer tabela em busca dos valores para fazer a media ponderada
              DMESTOQUE.Alx5.First;
              TotProd := 0;
              while not DMESTOQUE.Alx5.Eof
              do begin
                  TotProd := TotProd + DMESTOQUE.Alx5.FieldByName('VALORTOTAL').AsCurrency;
                  DMESTOQUE.Alx5.Next;
              end;
              // - 20/02/2009: verificar se total(R$) de produto é maior que zero para continuar
              if TotProd > 0
              then begin
                  try
                      DMESTOQUE.Alx5.First;
                      while not DMESTOQUE.Alx5.Eof
                      do begin
                          // - 20/02/2009:  filtra estoque
                          If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.Alx5.FieldByName('cod_estoque').AsString, '')=True
                          then begin
                              // - 20/02/2009:
                              XAuxB := (DMESTOQUE.Alx5.FieldByName('VALORTOTAL').AsCurrency*BaseIcms)/TotProd;
                              XAuxV := (DMESTOQUE.Alx5.FieldByName('VALORTOTAL').AsCurrency*VlrIcms)/TotProd;

                              DMESTOQUE.TEstoque.Edit;

                                // - 20/02/2009:  se nao tiver nenhuma base informada
                              if DMESTOQUE.TEstoque.FieldByName('MEDIABASEICMST').AsCurrency = 0
                              then begin
                                if DMESTOQUE.Alx5.FieldByName('qtdeprod').AsCurrency > 0
                                then begin
                                   DMESTOQUE.TEstoque.FieldByName('MEDIABASEICMST').AsCurrency := XAuxB/DMESTOQUE.Alx5.FieldByName('qtdeprod').AsCurrency;
                                end;
                              end
                              else begin   // - 20/02/2009: se tiver fazer media
                                if DMESTOQUE.Alx5.FieldByName('qtdeprod').AsCurrency > 0
                                then begin
                                   DMESTOQUE.TEstoque.FieldByName('MEDIABASEICMST').AsCurrency := ((XAuxB/DMESTOQUE.Alx5.FieldByName('qtdeprod').AsCurrency)+DMESTOQUE.TEstoque.FieldByName('MEDIABASEICMST').AsCurrency)/2;
                                end;
                              end;


                              // - 20/02/2009:  se nao tiver nenhum valor informado
                              if DMESTOQUE.TEstoque.FieldByName('MEDIAVLRICMST').AsCurrency = 0
                              then begin
                                if DMESTOQUE.Alx5.FieldByName('qtdeprod').AsCurrency > 0
                                then begin
                                   DMESTOQUE.TEstoque.FieldByName('MEDIAVLRICMST').AsCurrency := XAuxV/DMESTOQUE.Alx5.FieldByName('qtdeprod').AsCurrency;
                                end;
                              end
                              else begin   // - 20/02/2009: se tiver fazer media
                                if DMESTOQUE.Alx5.FieldByName('qtdeprod').AsCurrency > 0
                                then begin
                                   DMESTOQUE.TEstoque.FieldByName('MEDIAVLRICMST').AsCurrency := ((XAuxV/DMESTOQUE.Alx5.FieldByName('qtdeprod').AsCurrency)+DMESTOQUE.TEstoque.FieldByName('MEDIAVLRICMST').AsCurrency)/2;
                                end;
                              end;

                              DMESTOQUE.TEstoque.Post;
                              DMESTOQUE.TEstoque.ApplyUpdates;

                          end;
                          DMESTOQUE.Alx5.Next;
                      end;

                      DMESTOQUE.TransacEstoque.CommitRetaining;
                      Result := True;

                  Except
                      DMESTOQUE.TransacEstoque.RollbackRetaining;
                      Result := False;
                  end;
              end;
          end;
      end;
   end
   else begin
       Result := False;
   end;

 Except
     Result := False;
 end;

end;


procedure TFPedidoPadrao.DBDATAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   {if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0;

   if not (Key in[Chr(8)]) then
   begin
       if Length(DBDATA.Text)=2 then
       begin
           DBDATA.Text:=DBDATA.Text+'/';
           DBDATA.SelStart:=3;
       end else if Length(DBDATA.Text)=5 then begin
           DBDATA.Text:=DBDATA.Text+'/';
           DBDATA.SelStart:=6;
       end;
   end;


   if(key = #13)
   then begin
       if Length(Trim(DBDATA.Text))=0 then
       begin
           DBDATA.Text:=DatetoStr(Date());
       end else if Length(Trim(DBDATA.Text))=1 then
       begin
           DBDATA.Text:='0'+DBDATA.Text+Copy(DatetoStr(Date()), 3, 10);
       end else if Length(DBDATA.Text)<=3 then begin
           DBDATA.Text:=DBDATA.Text+Copy(DatetoStr(Date()), 4, 10);
       end else if Length(DBDATA.Text)=4 then begin
           DBDATA.Text:=Copy(DBDATA.Text,1,3)+'0'+Copy(DBDATA.Text,4,4)+Copy(DatetoStr(Date()), 6, 10);
       end else if Length(DBDATA.Text)<=6 then begin
           DBDATA.Text:=DBDATA.Text+Copy(DatetoStr(Date()), 7, 10);
       end else if (Length(DBDATA.Text)>6) and (Length(DBDATA.Text)<10) then begin
           DBDATA.Text:=Copy(DBDATA.Text, 1,6)+Copy(DatetoStr(Date()), 7, 10);
       end;
   end;
    }

end;

procedure TFPedidoPadrao.verificaDescontoFormpag;
Begin
     //
     If DMFinanc.TFormPag.FieldByName('ATIVADESC').AsString = '1'
     Then Begin
        If DMFinanc.TFormPag.FieldByName('DESCFORMPAG').AsCurrency>0
        Then Begin
        	If Mensagem('Confirmação do usuário', 'Esta forma de pagamento concede ao cliente '+FormatFloat('0.00', DMFinanc.TFormPag.FieldByName('DESCFORMPAG').AsCurrency)+' % de desconto. Aplicar este desconto ao pedido?', '', 2, 3, False, 'c')=2
        	Then Begin
               EDDescPed.ValueNumeric:=DMFinanc.TFormPag.FieldByName('DESCFORMPAG').AsCurrency;
        		EDDescPedExit(Self);
           End;
        End;
     End;
End;

procedure TFPedidoPadrao.CBPagamentoClick(Sender: TObject);
begin
  inherited;

  FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString, '');

  If (CBPagamento.Text='Cartão')And (XSQLTABELA='PEDVENDA') AND (DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA')
   Then Begin
      edNumeroCartao.Visible := True;
      lbNumeroCartao.Visible := True;
   End
   Else Begin
      edNumeroCartao.Visible := False;
      lbNumeroCartao.Visible := False;
      edNumeroCartao.Text := '';
   End;
end;

procedure TFPedidoPadrao.edNumeroCartaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #13,#27]) then
               Key := #0
end;

procedure TFPedidoPadrao.DBDATAExit(Sender: TObject);
  var Key: Char;
begin
   if (DBDATA.Text = '') or (dbdata.Text = '  /  /    ') then
       DBDATA.Text:=DateToStr(Date());
end;

//17/06/2009: verificar fornecedor para devolução // passar código cliente // retorno código fornecedor
function TFPedidoPadrao.VerificaFornecedorDevolucao(CodCliente: Integer):Integer;
var
  XCOD_PK: Integer;
Begin
  //17/06/2009: se em loja estiver setado o código do fornecedor
  If DMMACS.TLoja.FieldByName('COD_FORDEV').AsInteger > 0
  Then Begin
      Result := DMMACS.TLoja.FieldByName('COD_FORDEV').AsInteger;
  End
  Else Begin
      Result := 0;
      // verifica cliente
      If FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',IntToStr(CodCliente),'')=True
      Then Begin
          // verifica se ja existe fornecedor para a pessoa
          If FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_PESSOA', DMPESSOA.TCliente.FieldByname('COD_PESSOA').AsString, '') = True
          Then Begin
              Result := DMPESSOA.TFornecedor.FieldByname('COD_FORNEC').AsInteger;
          End
          Else Begin
            Try
              // insere novo fornecedor
              XCOD_PK := InserReg(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC');
              DMPESSOA.TFornecedor.Edit;
              DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsInteger := DMPESSOA.TCliente.FieldByname('COD_PESSOA').AsInteger;
              DMPESSOA.TFornecedor.FieldByName('COD_INTERNO').AsString := IntToStr(XCOD_PK);
              DMPESSOA.TFornecedor.FieldByName('DATA_CAD').AsDateTime := Date();
              DMPESSOA.TFornecedor.Post;
              DMPESSOA.TransacPessoa.CommitRetaining;
              Result := XCOD_PK;
            Except
              DMPESSOA.TransacPessoa.RollbackRetaining;
            End;
          End;
      End;
  End; 
End;

//17/06/2009: verificar CFOP para devolução // passar código fornecedor // retorno código CFOP
function TFPedidoPadrao.VerificaCFOPDevolucao(CodFornec: Integer):Integer;
var
  tmp :String;
Begin
  Result := 0;
  If FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC', IntToStr(CodFornec), '') = True
  Then Begin
      Result := DMPESSOA.TFornecedor.FieldByname('COD_FORNEC').AsInteger;
      If FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TFornecedor.FieldByname('COD_PESSOA').AsString,'') = True
      Then Begin
          // DADOS LOJA
          FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

          // DADOS DA EMPRESA
          FiltraTabela(DMMACS.TEmpresa,'EMPRESA','COD_EMPRESA',DMMACS.TLoja.FieldByName('COD_EMPRESA').AsString,'');

          //Verifica estado de origem Estado da empresa
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select * from empresa ');
           DMMACS.TALX.SQL.Add(' left join cidade on empresa.cod_cidade = cidade.cod_cidade ');
           DMMACS.TALX.SQL.Add(' left join estado on cidade.cod_estado = estado.cod_estado ');
           DMMACS.TALX.SQL.Add(' where empresa.cod_empresa = :COD_EMPRESA ');
           DMMACS.TALX.ParamByName('COD_EMPRESA').AsString:=FMenu.LCODEMPRESA.Caption;
           DMMACS.TALX.Open;
           If DMMACS.TALX.FieldByName('UF_ESTADO').AsString<>''
           Then Begin
                tmp := DMMACS.TALX.FieldByName('UF_ESTADO').AsString;
                If FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString, '')
                Then Begin
                    If DMGEOGRAFIA.WCidade.FieldByName('UF').AsString = tmp
                    Then Begin
                      If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_CFOPDEV').AsString, '')
                      Then
                        Result := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
                    End
                    Else Begin
                      If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_CFOPDEVFORA').AsString, '')
                      Then
                        Result := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
                    End;
                End;
           End;
      End;
  End;
End;

//22/06/2009: VERIFICA SE LOTE ESTÁ VENCENDO CONFORME CONFIGURADO EM LOJA
procedure TFPedidoPadrao.verificaVencimentoLote(dateVencimento :TDateTime);
var
  dias :Integer;
  msg :String;
Begin
  msg := '';
  dias := 0;
  If dateVencimento < Date()
  Then Begin
    dias := DaysBetween(dateVencimento, Date());
    If dias = 1 Then
      msg := 'Este lote já venceu a 1 dia.'
    Else
      msg := 'Este lote já venceu a ' + IntToStr(dias) + ' dias.';
    Mensagem('A T E N Ç Ã O', msg, '', 1, 1, False, 'i');
  End
  Else If dateVencimento = Date()
  Then
    Mensagem('A T E N Ç Ã O', 'Este lote vence hoje.', '', 1, 1, False, 'i')
  Else If dateVencimento <= IncDay(Date(), DMMACS.TLoja.FieldByName('INFDIASVENCLOTE').AsInteger)
  Then Begin
    dias := DaysBetween(Date(), dateVencimento);
    If dias = 1 Then
      msg := 'Este lote irá vencer em 1 dia.'
    Else
      msg := 'Este lote irá vencer em ' + IntToStr(dias) + ' dias.';
    Mensagem('A T E N Ç Ã O', msg, '', 1, 1, False, 'i');
  End;
End;


procedure TFPedidoPadrao.EdImpCSTExit(Sender: TObject);
begin
  inherited;
	//Tenta Buscar um cst de acordo com codigo digitado
   If FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_SIT_TRIB', EdImpCST.Text, '')=True
   Then Begin
       XCodCst:=DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;
       LDescCst.Caption:=DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString;
       If (DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString='1') and ((DMESTOQUE.TCST.FieldByName('icmsop').AsString='0') or (DMESTOQUE.TCST.FieldByName('icmsop').AsString='')) and (FMenu.XComplementacao = False) or (DMESTOQUE.TCST.FieldByName('ISENTA').AsString='1')
       Then Begin
           EdBCIcms.ValueNumeric:=0;
           EdBCIcms.ReadOnly:=True;
           EdimpIcms.ValueNumeric:=0;
           EdimpIcms.ReadOnly:=True;
           EdImpVlrIcms.ValueNumeric:=0;
           EdImpVlrIcms.ReadOnly:=True;
       End
   	Else Begin
           EdBCIcms.ReadOnly:=False;
           EdimpIcms.ReadOnly:=False;
           EdImpVlrIcms.ReadOnly:=False;

           EdBCIcms.ValueNumeric:=EDTotal.ValueNumeric;
       End;
   End
   Else Begin
       XCodCst:=-1;
       EdImpCST.Text:='';
       LDescCst.Caption:='';
   End;
end;

procedure TFPedidoPadrao.EdImpCSTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=Vk_return Then
       EdImpCST.OnExit(sender);

end;

procedure TFPedidoPadrao.EdimpIcmsExit(Sender: TObject);
begin
  inherited;
  	If (EDTotal.ValueNumeric<>0) and (EdimpIcms.ValueNumeric<>0) Then
   	EdImpVlrIcms.ValueNumeric:=(EDTotal.ValueNumeric*EdimpIcms.ValueNumeric)/100;
   If EdimpIcms.ValueNumeric=0
   Then Begin
       EdBCIcms.ValueNumeric:=0;
       EdImpVlrIcms.ValueNumeric:=0;
   End
   Else Begin
   	If DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency>0
   	Then Begin
   		EdBCIcms.ValueNumeric:=((EDTotal.ValueNumeric*DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency)/100);
       	EdImpVlrIcms.ValueNumeric:=(EdBCIcms.ValueNumeric*EdimpIcms.ValueNumeric)/100;
   	End
       Else Begin
       	EdBCIcms.ValueNumeric:=EDTotal.ValueNumeric;
       	EdImpVlrIcms.ValueNumeric:=(EdBCIcms.ValueNumeric*EdimpIcms.ValueNumeric)/100;
       End;
   End;
end;

procedure TFPedidoPadrao.EdImpIpiExit(Sender: TObject);
begin
  inherited;
  	If (EDTotal.ValueNumeric<>0) and (EdImpIpi.ValueNumeric<>0) Then
   	EdImpVlrIpi.ValueNumeric:=(EDTotal.ValueNumeric*EdImpIpi.ValueNumeric)/100;
end;

procedure TFPedidoPadrao.EspelhoNotaFiscal1Click(Sender: TObject);
var
	XCODDOC: Integer;
begin
  inherited;
  	if(XSQLTABELA = 'PEDCOMPRA')Then Begin
   	if(DMENTRADA.WPedC.FieldByName('numfiscal').AsString <> '')Then Begin
       	XCODDOC := StrToInt(DMENTRADA.WPedc.FieldByName('cod_pedcomp').AsString);
       	GeraRelEspelhoNf('PEDCOMPRA',XCODDOC);
   	End;
   End
   Else Begin
   	if(DMSAIDA.WPedV.FieldByName('numfiscal').AsString <> '')Then Begin
       	XCODDOC := StrToInt(DMSAIDA.WPedV.FieldByName('cod_pedvenda').AsString);
       	GeraRelEspelhoNf('PEDVENDA',XCODDOC);
       End;
   End;

   //Testa se existe documento fiscal para o pedido
   if((DMENTRADA.WPedC.FieldByName('numfiscal').AsString = '') And (DMSAIDA.WPedV.FieldByName('numfiscal').AsString = ''))Then
   	MessageBox(0, 'Não foi localizado documento fiscal referente a este pedido!', 'Atenção', MB_ICONWARNING or MB_OK)
   Else Begin
   	FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfEspelhoNf.frf');
       FsRel.ShowReport;
   End;
End;

procedure TFPedidoPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	//ATUALIZA CONFIG DE XML
	//Grava as informações no arquivo de config
   If CbFiltroPedidosFechados.Checked=True Then
   	FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('filtrapedfechado').NodeValue:='TRUE'
   Else
   	FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('filtrapedfechado').NodeValue:='FALSE';
   If (EdDtFiltro01.Text<>'  /  /    ') and (EdDtFiltro02.Text<>'  /  /    ')
   Then Begin
   	FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('filtrapeddata01').NodeValue:=EdDtFiltro01.Text;
   	FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('filtrapeddata02').NodeValue:=EdDtFiltro02.Text;
   end
   Else Begin
   	FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('filtrapeddata01').NodeValue:='';
   	FMenu.xmlConfig.ChildNodes['config'].ChildNodes.FindNode('filtrapeddata02').NodeValue:='';
   End;
	FMenu.XmlConfig.SaveToFile(ExtractFilePath(Application.EXEName)+'\config.xml');

  	//Desmarca as opções de remessa para garantia e devolução
   FMenu.XRemessaGarantia:=False;
   FMenu.XDevolucao:=False;
   FMenu.XSimplesRemessa:=False;
  	FMenu.XNotaEntrada:=False;
   FMenu.XComplementacao:=False;   
  inherited;

end;

procedure TFPedidoPadrao.DBColorEdit4Exit(Sender: TObject);
begin
  inherited;
   FiltraSlave;
end;



procedure TFPedidoPadrao.EdBCIcmsExit(Sender: TObject);
begin
  inherited;
	EdImpVlrIcms.ValueNumeric:=(EdBCIcms.ValueNumeric*EdimpIcms.ValueNumeric)/100;
end;

procedure TFPedidoPadrao.EDDescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EDTotal.SetFocus;
	If Key=VK_LEFT Then
       EDValUnit.SetFocus;
end;

procedure TFPedidoPadrao.BtConfirmarClick(Sender: TObject);
var XCODVND,XCODAUX: INTEGER;
begin
  inherited;
////Paulo 08/10/2010: adiciona os itens inportados na lista
    If XSQLTABELA='PEDVENDA'
    Then Begin
    	XImpI:=1;
       DMENTRADA.TAlx.Close;
    	DMENTRADA.TAlx.SQL.Clear;
    	DMENTRADA.TAlx.SQL.Add('select subproduto.*, estoque.*,itensvendaagrupada.* from subproduto inner join estoque ');
    	DMENTRADA.TAlx.SQL.Add('on estoque.cod_subprod = subproduto.cod_subproduto join itensvendaagrupada');
    	DMENTRADA.TAlx.SQL.Add('on estoque.cod_estoque = itensvendaagrupada.cod_estoque where itensvendaagrupada.cod_vendaagrupada = :CODVENDAAGRUPADA');
    	DMENTRADA.TAlx.ParamByName('CODVENDAAGRUPADA').AsInteger:= DMESTOQUE.TItemVenAg.FieldByName('COD_VENDAAGRUPADA').AsInteger;
    	DMENTRADA.TAlx.Open;

       
       BtnDeleteListClick(Sender);

    	DMENTRADA.TAlx.First;
    	while not DMENTRADA.TAlx.Eof do
    	begin

          FiltraTabela(DMEstoque.WSimilar,'VWSIMILAR','cod_subproduto',DMENTRADA.TAlx.FieldByName('COD_SUBPRODUTO').AsString,'');
          EscreveLabels;

          //Paulo 14/10/2010: Caso foi modificado a quantidade ele busca na tabela tmporária
          if XEdQuant=1 then
          begin
          	   DMMACS.TAlx.Close;
       	   DMMACS.TAlx.SQL.Clear;
       	   DMMACS.TAlx.SQL.Add('SELECT tmp.int3,tmp.int1 FROM TMP');
              DMMACS.TAlx.SQL.Add('WHERE tmp.int1 = :CODESTOQUE');
              DMMACS.TALX.ParamByName('CODESTOQUE').AsInteger:= DMENTRADA.TAlx.FieldByName('COD_ESTOQUE').AsInteger;
       	   DMMACS.TAlx.Open;

              EDQuantidade.ValueInteger:= DMMACS.TAlx.FieldByName('INT3').AsInteger;
          end
          else
             EDQuantidade.ValueInteger:= DMENTRADA.TAlx.FieldByName('QUANTIDADE').AsInteger;

             
          EDQuantidadeExit(Sender);


          BtnInsertProdClick(Sender);

          DMENTRADA.TAlx.Next;

    	end;

       PItensVendaAg.Visible:=False;
       PItensVendaAg.SendToBack;
       Mensagem('Informação ', 'Itens adicionados com sucesso!', '', 1,1, false, 'i');

     end;
     If XSQLTABELA='PEDCOMPRA'
     then begin
     	   //PAulo :abre um novo registro na tabela venda agrupada
          XCODAUX:=InserReg(DMESTOQUE.TVendaAgrupada, 'VENDAAGRUPADA', 'COD_VENDAAGRUPADA');
     	   DMESTOQUE.TVendaAgrupada.FieldByName('COD_VENDAAGRUPADA').AsInteger:=XCODAUX;
     	   DMESTOQUE.TVendaAgrupada.Post;
     	   DMESTOQUE.TransacEstoque.CommitRetaining;
     	   XCODVND:= XCODAUX;

          //PAulo :abre um novo registro na tabela itensvendaagrupada
          DMENTRADA.TAlx.First;
     	   while not DMENTRADA.TAlx.Eof do
     	   begin
          		XCODAUX:=InserReg(DMESTOQUE.TItemVenAg, 'ITENSVENDAAGRUPADA', 'COD_ITENVENDAAGRUP');
          		DMESTOQUE.TItemVenAg.FieldByName('COD_ITENVENDAAGRUP').AsInteger:=XCODAUX;
          		DMESTOQUE.TItemVenAg.FieldByName('COD_VENDAAGRUPADA').AsInteger:=XCODVND;
          		DMESTOQUE.TItemVenAg.FieldByName('COD_ESTOQUE').AsInteger:=DMENTRADA.TAlx.FieldByName('INT1').AsInteger;
          		DMESTOQUE.TItemVenAg.FieldByName('QUANTIDADE').AsInteger:=DMENTRADA.TAlx.FieldByName('INT3').AsInteger;;
          		DMESTOQUE.TItemVenAg.Post;
          		DMESTOQUE.TransacEstoque.CommitRetaining;

               DMENTRADA.TAlx.Next;
         end;

         PItensVendaAg.Visible:=False;
         PItensVendaAg.SendToBack;
         Mensagem('Informação ', 'Itens agrupados com sucesso!', '', 1,1, false, 'i');

     end;
     XImpI:= 0;

end;
{
//Paulo 08/10/2010: importa itens da venda agrupada
procedure TFPedidoPadrao.importaItensAgrupados;
begin
      XEdQuant:=0;
       //Paulo 07/10/2010: Verifica se o produto esta enguadrado em um grupo de venda
       If FiltraTabela(DMESTOQUE.TItemVenAg,'ITENSVENDAAGRUPADA','COD_ESTOQUE',DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString,'')= true then
       begin
          if Mensagem('A T E N Ç Ã O ', 'O item selecionado está vinculado a um grupo de venda, deseja importar os outros itens?', '', 2,2, false, 'i')=2 Then
          begin
             PItensVendaAg.Visible:=true;
             PItensVendaAg.BringToFront;
             EdQuant.Enabled:=false;
             EdQuant.Text:='000';
             DBVendAgr.Visible:=False;
     		  DBVendAgr.SendToBack;
     		  GridItenAg.Visible:=True;
     		  GridItenAg.BringToFront;
             Label85.Caption:='Deseja importar os itens agrupados?';

             DMENTRADA.TAlx.Close;
             DMENTRADA.TAlx.SQL.Clear;
             DMENTRADA.TAlx.SQL.Add('select subproduto.*, estoque.*, itensvendaagrupada.*  from subproduto inner join estoque ');
             DMENTRADA.TAlx.SQL.Add('on estoque.cod_subprod = subproduto.cod_subproduto join itensvendaagrupada');
             DMENTRADA.TAlx.SQL.Add('on estoque.cod_estoque = itensvendaagrupada.cod_estoque where itensvendaagrupada.cod_vendaagrupada = :CODVENDAAGRUPADA');
             DMENTRADA.TAlx.ParamByName('CODVENDAAGRUPADA').AsInteger:= DMESTOQUE.TItemVenAg.FieldByName('COD_VENDAAGRUPADA').AsInteger;
             DMENTRADA.TAlx.Open;

          end;

       end;

end;

procedure TFPedidoPadrao.GridItenAgDblClick(Sender: TObject);
begin
  inherited;
  		If XSQLTABELA='PEDVENDA'
  		Then Begin
           if (XEdQuant<>1) then
           begin
				EdQuant.Text:= IntToStr(DMENTRADA.TAlx.FieldByName('QUANTIDADE').AsInteger);
           	XCodAux:=DMENTRADA.TAlx.FieldByName('COD_ESTOQUE').AsInteger;
           end
           else begin
               EdQuant.Text:= IntToStr(DMENTRADA.TAlx.FieldByName('INT3').AsInteger);
           	XCodAux:=DMENTRADA.TAlx.FieldByName('INT1').AsInteger
           end;
          	EdQuant.Enabled:=true;
          	EdQuant.SetFocus;
       end;
       If XSQLTABELA='PEDCOMPRA'
  		then begin
       	EdQuant.Text:= IntToStr(DMENTRADA.TAlx.FieldByName('INT3').AsInteger);
           EdQuant.SetFocus;
       end;
end;

procedure TFPedidoPadrao.EdQuantExit(Sender: TObject);
begin
  inherited;
  //Paulo 13/10/2010: Para atualizar a quantidade do item selecionado
  If XSQLTABELA='PEDVENDA'
  Then Begin

  			//Paulo 14/10/2010: Insere os itens num atabela temporária
       	DMMACS.TMP.Close;
       	DMMACS.TMP.SQL.Clear;
       	DMMACS.TMP.SQL.Add('delete from tmp');
       	DMMACS.TMP.ExecSQL;
       	DMMACS.Transaction.CommitRetaining;


       	DMENTRADA.TAlx.First;
       	while not  DMENTRADA.TAlx.Eof do
       	begin
           	DMMACS.TMP.Close;
            	DMMACS.TMP.SQL.Clear;
            	DMMACS.TMP.SQL.Add('insert into tmp(DESC1,INT1,INT2,INT3)');
            	DMMACS.TMP.SQL.Add('values(:DESC, :CODESTOQUE, :CODSUBPROD, :QUANT)');
               if XEdQuant<>1 then
       		begin
            		DMMACS.TMP.ParamByName('DESC').AsString:=DMENTRADA.TAlx.FieldByName('DESCRICAO').AsString;
            		DMMACS.TMP.ParamByName('CODESTOQUE').AsInteger:=DMENTRADA.TAlx.FieldByName('COD_ESTOQUE').AsInteger;
            		DMMACS.TMP.ParamByName('CODSUBPROD').AsInteger:=DMENTRADA.TAlx.FieldByName('COD_SUBPRODUTO').AsInteger;
            		DMMACS.TMP.ParamByName('QUANT').AsInteger:= DMENTRADA.TAlx.FieldByName('QUANTIDADE').AsInteger;
               end
               else begin
                   DMMACS.TMP.ParamByName('DESC').AsString:=DMENTRADA.TAlx.FieldByName('DESC1').AsString;
            		DMMACS.TMP.ParamByName('CODESTOQUE').AsInteger:=DMENTRADA.TAlx.FieldByName('INT1').AsInteger;
            		DMMACS.TMP.ParamByName('CODSUBPROD').AsInteger:=DMENTRADA.TAlx.FieldByName('INT2').AsInteger;
            		DMMACS.TMP.ParamByName('QUANT').AsInteger:= DMENTRADA.TAlx.FieldByName('INT3').AsInteger;
               end;
            	DMMACS.TMP.ExecSQL;
            	DMMACS.Transaction.CommitRetaining;


     	     	DMENTRADA.TAlx.Next;


       	end;
           DMMACS.TMP.Close;
       	DMMACS.TMP.SQL.Clear;
       	DMMACS.TMP.SQL.Add('update tmp set int3 = :QUANTIDADE');
       	DMMACS.TMP.SQL.Add('where tmp.int1 = :CODESTOQUE');
       	DMMACS.TMP.ParamByName('QUANTIDADE').AsInteger:= StrToInt(EdQuant.Text);
       	DMMACS.TMP.ParamByName('CODESTOQUE').AsInteger:= XCodAux;
       	DMMACS.TMP.ExecSQL;
       	DMMACS.Transaction.CommitRetaining;
       

       
       DMENTRADA.TAlx.Close;
       DMENTRADA.TAlx.SQL.Clear;
       DMENTRADA.TAlx.SQL.Add('SELECT tmp.desc1,tmp.int2,tmp.int3,tmp.int1 FROM TMP');
       DMENTRADA.TAlx.Open;

       DBVendAgr.Visible:=True;
       DBVendAgr.BringToFront;
       GridItenAg.Visible:=False;
       GridItenAg.SendToBack;

       DBVendAgr.Refresh;

       XEdQuant:=1;
  end;


  If XSQLTABELA='PEDCOMPRA'
  then begin
  	   DMMACS.TMP.Close;
      DMMACS.TMP.SQL.Clear;
      DMMACS.TMP.SQL.Add('update tmp set int3 = :QUANTIDADE');
      DMMACS.TMP.SQL.Add('where tmp.int1 = :CODESTOQUE');
      DMMACS.TMP.ParamByName('QUANTIDADE').AsInteger:= EdQuant.ValueInteger;
      DMMACS.TMP.ParamByName('CODESTOQUE').AsInteger:= DMENTRADA.TAlx.FieldByName('INT1').AsInteger;
      DMMACS.TMP.ExecSQL;
      DMMACS.Transaction.CommitRetaining;

      //Paulo 14/10/2010: Para atualizar a tabela na tela
      DMENTRADA.TAlx.Close;
      DMENTRADA.TAlx.SQL.Clear;
      DMENTRADA.TAlx.SQL.Add('SELECT tmp.desc1,tmp.int2,tmp.int3,tmp.int1 FROM TMP');
      DMENTRADA.TAlx.Open;

      DBVendAgr.Refresh;

  end;

end;
}
procedure TFPedidoPadrao.GridItenAgDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
		 if (DMENTRADA.TAlx.FieldByName('COD_ESTOQUE').AsInteger = DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger)then
      		 GridItenAg.Canvas.Brush.Color:= $00FFCB97
        else
           GridItenAg.Canvas.Brush.Color:= clWhite;

       GridItenAg.Canvas.FillRect(Rect);
       GridItenAg.DefaultDrawDataCell(Rect, GridItenAg.Columns[datacol].Field, State);

end;

procedure TFPedidoPadrao.btnApagarFiltroDataClick(Sender: TObject);
begin
  inherited;
   EdDtFiltro01.Clear;
   edDtFiltro02.Clear;
   ExecutaLiberaDados;
end;

procedure TFPedidoPadrao.EdDtFiltro01KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13 Then
       ExecutaLiberaDados;
end;

procedure TFPedidoPadrao.edDtFiltro02KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13 Then
       ExecutaLiberaDados;
end;

procedure TFPedidoPadrao.CbFiltroPedidosFechadosClick(Sender: TObject);
begin
  inherited;
   ExecutaLiberaDados;
end;

procedure TFPedidoPadrao.BtCancelaClick(Sender: TObject);
begin
  inherited;
      DMMACS.Transaction.RollbackRetaining;
      PItensVendaAg.Visible:=False;
      PItensVendaAg.SendToBack;
end;

//Paulo 24/11/2010: Função que retorna a quantidade do preduto no lote
Function TFPedidoPadrao.RetornaQuantidadeLote(XCodLote, XCodEstoque: Integer):Real;
Begin
	 //Paulo 25/11/2010: soma a quantidade de entrada
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    dmestoque.Alx.SQL.Add('select * from estoquelote');
    dmestoque.Alx.SQL.Add('where (estoquelote.cod_lote = :CODLOTE) AND (estoquelote.cod_estoque = :CODESTOQUE) ');
    DMESTOQUE.Alx.ParamByName('CODLOTE').AsInteger:= XCodLote;
    DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsInteger:= XCOD_ESTOQUE;
    DMESTOQUE.Alx.Open;

    if DMESTOQUE.Alx.IsEmpty then
       RetornaQuantidadeLote:= 0.00
    else
       RetornaQuantidadeLote:= DMESTOQUE.Alx.FieldByName('QUANTIDADE').AsCurrency;


end;

procedure TFPedidoPadrao.EdValorOutrosExit(Sender: TObject);
begin
  inherited;
	FiltraSlave;
end;

procedure TFPedidoPadrao.EdValorIpiExit(Sender: TObject);
begin
  inherited;
	FiltraSlave;
end;

procedure TFPedidoPadrao.EdValoIcmsSubstituicaoExit(Sender: TObject);
begin
  inherited;
	FiltraSlave;
end;

procedure TFPedidoPadrao.PCadVendedorExit(Sender: TObject);
begin
  inherited;
	EDCODFORMPAG.SetFocus;
end;

procedure TFPedidoPadrao.FloatEdit1Enter(Sender: TObject);
begin
  inherited;
  	If EDDescPed.Text<>'' Then
   	XControlDesc:=StrToFloat(EDDescPed.Text)
   Else
   	XControlDesc:=0;
end;

procedure TFPedidoPadrao.FloatEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPED', '')=False
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Sua conta de usuário não lhe da permissão para alterar o o valor total do pedido.', '', 1, 1, False, 'a');
       Key:=#0;
  		Exit;
   End;
end;

procedure TFPedidoPadrao.EdValorFreteExit(Sender: TObject);
begin
  inherited;
   FiltraSlave;
end;

procedure TFPedidoPadrao.lancaComissao();
begin
       if Mensagem('INFORMAÇÃO AO USUÁRIO', 'Deseja pagar a comissão?', '', 2, 2, False, 'i')=2
       then begin
            PComissaoBanca.Visible:=true;
            XHistBanca:='Pgto Comissão da venda '+XnumDocBanca+' - Cli. '+XTabela.FieldByName('NOMECLI').AsString;
            PComissaoBanca.Visible:=True;
            PComissaoBanca.BringToFront;
       end;
end;

procedure TFPedidoPadrao.btComBancaClick(Sender: TObject);
begin
  inherited;
       If LanCaixa(0, DateToStr(Date()), XCodConta, XHistBanca, EdVlrComissaoBanca.ValueNumeric , 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'S', XnumDocBanca, Date(), '1')=True
       then begin
           MDO.Transac.CommitRetaining;
           FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XCodPedido,'');
           DMSAIDA.TPedV.Edit;
           DMSAIDA.TPedV.FieldByName('VLRCOMIS').AsCurrency:=EdVlrComissaoBanca.ValueNumeric;
           DMSAIDA.TPedV.Post;
           DMSAIDA.IBT.CommitRetaining;
           Mensagem('INFORMAÇÃO AO USUÁRIO', 'Comissão paga com sucesso!', '', 1, 1, False, 'i');
           PComissaoBanca.Visible:=false;
       end
       else begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'Ocorreu uma falha no pagamento de comissão!', '', 1, 1, False, 'i');
            exit;
       end;
end;

procedure TFPedidoPadrao.retornaComissao(XcodVend:Integer);
begin
		DMPESSOA.TALX.Close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add('select funcargo.comissao_vvpro, funcargo.comissao_vppro from funcargo');
       DMPESSOA.TALX.SQL.Add('where funcargo.cod_funcionario = :CODFUNC');
       DMPESSOA.TALX.ParamByName('CODFUNC').AsInteger:=XcodVend;
       DMPESSOA.TALX.Open;
       //Paulo 26/08/2011: mostra a porcentagem de comissão referente a forma de pagto
   	If EDFORMPAG.Text='À VISTA' Then
       	//EdComissao.Text:=FormatFloat('###,##0.00',DMPESSOA.TALX.FieldByName('comissao_vvpro').AsCurrency)
           XEDCOMISS:=DMPESSOA.TALX.FieldByName('comissao_vvpro').AsCurrency
   	Else
       	XEDCOMISS:=DMPESSOA.TALX.FieldByName('comissao_vppro').AsCurrency;
       
end;


procedure TFPedidoPadrao.GerarXMLporPerodo1Click(Sender: TObject);
begin
  inherited;
		//Paulo 13/02/2012: Abre o rel periodo fiscal
       FMenu.TIPOREL:='XMLDISTRIBUICAO';
       If XSQLTABELA='PEDVENDA' then
       	FMenu.XTipoEmissaoNFe:='PEDV'
       ELSE
           FMenu.XTipoEmissaoNFe:='PEDC';
       AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
end;

procedure TFPedidoPadrao.RelatrioporRegies1Click(Sender: TObject);
begin
  inherited;
		//Paulo 20/03/2012: Abre a tela de relatórios
       If XSQLTABELA='PEDVENDA' then
       	FMenu.TIPOREL:='RELREGIAOVENDA'
       else
           FMenu.TIPOREL:='RELREGIAOCOMPRA';
       AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
       
end;

End.





