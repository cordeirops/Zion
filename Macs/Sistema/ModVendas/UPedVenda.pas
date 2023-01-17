unit UPedVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPedidoPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  Buttons, TFlatEditUnit, jpeg, ExtCtrls, EditFloat, ColorEditFloat, Mask,
  DBCtrls, DBColorEdit, ColorMaskEdit, FashionPanel, Qrctrls, QuickRpt,
  UFrmBusca, FR_Class, FR_DSet, FR_DBSet, Menus, DB, DrLabel,ShellApi,ClipBrd,
  cxLookAndFeelPainters, cxButtons, AppEvnts, XP_Button, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxCheckBox,
  FR_Shape, FR_BarC,XMLDoc, XMLIntf, xmldom, IBCustomDataSet, IBQuery,
  frxClass, frxDBSet;

type
  TFPedVenda = class(TFPedidoPadrao)
    BtnTroca: TBitBtn;
    BtnComiss: TBitBtn;
    PTrocar: TPanel;
    FPTroca: TFashionPanel;
    GroupBox3: TGroupBox;
    EDQtdDev: TColorEditFloat;
    BtnDevolv: TBitBtn;
    BtnCancelD: TBitBtn;
    EdNumDoc: TFlatEdit;
    Panel8: TPanel;
    BtnProdutos: TBitBtn;
    BtnDespesas: TBitBtn;
    FPDespesa: TFashionPanel;
    EdDespesa: TColorEditFloat;
    Label65: TLabel;
    EdVlrCobradoDesp: TColorEditFloat;
    Label66: TLabel;
    EdVlrTotalDesp: TColorEditFloat;
    BitBtn9: TBitBtn;
    BitBtn11: TBitBtn;
    EdDesconto: TColorEditFloat;
    Label59: TLabel;
    PMBtnFiscal: TPopupMenu;
    ConsultaNDocFiscal1: TMenuItem;
    AlteraNDocFiscal1: TMenuItem;
    PMDevolucao: TPopupMenu;
    DevoluoTotal1: TMenuItem;
    DevoluoParcial1: TMenuItem;
    PDevParc: TPanel;
    FashionPanel2: TFashionPanel;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    Panel14: TPanel;
    DBGrid4: TDBGrid;
    DBGrid3: TDBGrid;
    DRLabel1: TDRLabel;
    BtnDevolveItem: TBitBtn;
    PDevolveItem: TPanel;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    Label61: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label72: TLabel;
    EdQtdProdDev: TColorEditFloat;
    EdvlrUnitProdDev: TColorEditFloat;
    DBTProddev: TDBText;
    DBTCodigoDev: TDBText;
    DBTQtdDev: TDBText;
    N1: TMenuItem;
    Gerarnovopedido1: TMenuItem;
    InserirNFiscal1: TMenuItem;
    ApagarNFiscal1: TMenuItem;
    ComprovanteTermal1: TMenuItem;
    ControledeEntrega1: TMenuItem;
    ReimprimirNF1: TMenuItem;
    LHistNumDocumento: TLabel;
    LHistValor: TLabel;
    LHistData: TLabel;
    Shape2: TShape;
    LHistProd: TLabel;
    LHistCliente: TLabel;
    LQuantidade: TLabel;
    LQtde: TLabel;
    CartaRedespacho: TMenuItem;
    BitBtn17: TBitBtn;
    BtnImpOrc: TBitBtn;
    BtnDevolucao: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn15: TBitBtn;
    PMNFe: TPopupMenu;
    ImprimirDANFE1: TMenuItem;
    AbrirXML1: TMenuItem;
    CopiarChaveNFe1: TMenuItem;
    ConsultaNFeNacinal1: TMenuItem;
    ConsultaNFePR1: TMenuItem;
    AbrirXMLResposta1: TMenuItem;
    Panel9: TPanel;
    Label81: TLabel;
    DBGridConvert: TDBGrid;
    ApplicationEvents1: TApplicationEvents;
    Label84: TLabel;
    RelatrioDanfe1: TMenuItem;
    FSRelNfe: TfrReport;
    FSDSRelNfe: TfrDBDataSet;
    frBarCodeObject1: TfrBarCodeObject;
    frShapeObject1: TfrShapeObject;
    PTransportadora: TPanel;
    BtnTransp: TButton;
    FrmTransportadora: TFrmBusca;
    ConsultarNFe1: TMenuItem;
    SalvarXMLDestinatrio1: TMenuItem;
    sdXmlDestinatario: TSaveDialog;
    PopupMenu1: TPopupMenu;
    EmissodaNFe1: TMenuItem;
    Normal1: TMenuItem;
    ContingnciaFS1: TMenuItem;
    ContingnciaSCAN1: TMenuItem;
    ContingnciaDPEC1: TMenuItem;
    ContingnciaFSDA1: TMenuItem;
    Consultas2: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    XML1: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    Inutilizao1: TMenuItem;
    InutilizarNumerao1: TMenuItem;
    InutilizarNumeraoSCAN1: TMenuItem;
    Relatrios1: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    VerificarStatus1: TMenuItem;
    WebService1: TMenuItem;
    WebServiceSCAN1: TMenuItem;
    NotaFiscalEletrnica1: TMenuItem;
    N6: TMenuItem;
    VisualizarDanfe1: TMenuItem;
    CancelarNfe1: TMenuItem;
    VisualizarnoSefazNacional1: TMenuItem;
    ConsultarStatusNfe1: TMenuItem;
    RecuperarDados1: TMenuItem;
    BtnTrocaProd: TBitBtn;
    BtCancelaECF: TBitBtn;
    ListarNfe1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    VerificarServidorSefaz1: TMenuItem;
    LEmissor: TLabel;
    LEcf: TLabel;
    RelatriodeDanfe1: TMenuItem;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    NOTAFISCALELETRNICA2: TMenuItem;
    ReimprimirNotaFiscal1: TMenuItem;
    N10: TMenuItem;
    Inutilizarnumeraodenotafisclaleletrnica1: TMenuItem;
    PLoteVenda: TPanel;
    Label80: TLabel;
    DBNumFisc: TDBColorEdit;
    GeraCarn1: TMenuItem;
    PVeiculo: TPanel;
    Lote1: TMenuItem;
    PRelLote: TPanel;
    FashionPanel5: TFashionPanel;
    FrmBuscaLote: TFrmBusca;
    Label57: TLabel;
    EdDtInicial: TColorMaskEdit;
    Label58: TLabel;
    EdDtFinal: TColorMaskEdit;
    BtnImpRelLote: TBitBtn;
    BitBtn2: TBitBtn;
    FashionPanel6: TFashionPanel;
    EdQuantVend: TColorEditFloat;
    Label55: TLabel;
    Label53: TLabel;
    CBSelecionaLote: TComboBox;
    Label54: TLabel;
    EdQuantLote: TColorEditFloat;
    BtnLoteVeOk: TBitBtn;
    BtnCancelaLotevend: TBitBtn;
    FSDSRelLote: TfrDBDataSet;
    FSRelLote: TfrReport;
    FSDSProdLote: TfrDBDataSet;
    QRRelLote: TQuickRep;
    QRBand1: TQRBand;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel75: TQRLabel;
    QRSysData13: TQRSysData;
    QRSysData14: TQRSysData;
    QRSysData15: TQRSysData;
    QRShape18: TQRShape;
    QRGroup1: TQRGroup;
    TLote: TIBQuery;
    DSLote: TDataSource;
    LbNomeCliente: TQRLabel;
    LbDtPed: TQRLabel;
    QRBand2: TQRBand;
    LbCodigo: TQRLabel;
    LbDescricao: TQRLabel;
    LbQuantidade: TQRLabel;
    LbValor: TQRLabel;
    BtnLimpaData: TBitBtn;
    LbNumPed: TQRLabel;
    BtnAbreVeiculos: TBitBtn;
    QRBand3: TQRBand;
    Contaapagarepagos1: TMenuItem;
    FDSContas: TfrDBDataSet;
    FDSPagas: TfrDBDataSet;
    PMDevolver: TPopupMenu;
    Devolver1: TMenuItem;
    RelatriodeVendaspBanca1: TMenuItem;
    PDespAdic: TPanel;
    Label63: TLabel;
    Label64: TLabel;
    EdQtdDesp: TColorEditFloat;
    EdVlrCustoDesp: TColorEditFloat;
    EdUnidade: TColorEditFloat;
    GerarXMLDistribuio1: TMenuItem;
    cxGroupBox2: TcxGroupBox;
    CBORDEM: TComboBox;
    EdComissao: TColorEditFloat;
    Label92: TLabel;
    PVeiculoEnt: TPanel;
    FashionPanel10: TFashionPanel;
    EdDescVeic: TEdit;
    Label48: TLabel;
    Label56: TLabel;
    BtnVeicEnt: TBitBtn;
    luzbt: TShape;
    BtnInsereVeic: TBitBtn;
    BtnExcluiVeiculo: TBitBtn;
    DBGrid6: TDBGrid;
    lbTotalEntrada: TLabel;
    Label93: TLabel;
    Label95: TLabel;
    Label94: TLabel;
    lbTotEnt: TLabel;
    pImpostoVeiculos: TPanel;
    Label96: TLabel;
    Label97: TLabel;
    Label99: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    EdCSTEnt: TColorEditFloat;
    EdICMSEnt: TColorEditFloat;
    EdVlrICMSEnt: TColorEditFloat;
    EdBCEnt: TColorEditFloat;
    EdVlrVeiculo: TColorEditFloat;
    PAlteraQuantidade: TPanel;
    FashionPanel11: TFashionPanel;
    EdNovaQtd: TColorEditFloat;
    BitBtn1: TBitBtn;
    RelatriodevendascomDespesas1: TMenuItem;
    RelatriodeVendasdeVeculos1: TMenuItem;
    RecuperareEnviarXMLdeCancelamento1: TMenuItem;
    CartadeCorreoEletrnica1: TMenuItem;
    VisualizarDanfecomComplementoFiscal1: TMenuItem;
    pPesquisaAgil: TPanel;
    edPesquisaAgil: TEdit;
    lPesquisa: TLabel;
    pPesquisa: TPanel;
    DBGrid7: TDBGrid;
    Label85: TLabel;
    pSt: TPanel;
    edBcSt: TColorEditFloat;
    Label42: TLabel;
    edVlrSt: TColorEditFloat;
    Label50: TLabel;
    CustosdeProdutosVendidos1: TMenuItem;
    MarcarComoProntoParaEntregar1: TMenuItem;
    MarcarComoEntregue1: TMenuItem;
    GerenciadordeEntregas1: TMenuItem;
    ResumodeEntrega2: TMenuItem;
    DevolverItensemissoprpria1: TMenuItem;
    pmCancelamentos: TPopupMenu;
    CancelarFechamento1: TMenuItem;
    CancelarDevoluo1: TMenuItem;
    MenuMesclarPedMarcados: TMenuItem;
    MenuDesmPedMarcados: TMenuItem;
    MenuLiberaPedExped: TMenuItem;
    mnuExpVenda: TMenuItem;
    mnuAbrirExp: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    ImprimirEtiquetas1: TMenuItem;
    frxDbEtiquetasExp: TfrxDBDataset;
    frxRelEtiquetas: TfrxReport;
    RelatriodeDANFENFCe1: TMenuItem;
    Label98: TLabel;
    Label103: TLabel;
    pClassServico: TPanel;
    Label86: TLabel;
    DbServicoClassificacao: TDBLookupComboBox;
    BitBtn16: TBitBtn;
    BitBtn18: TBitBtn;
    Label100: TLabel;
    EDMarca: TColorEditFloat;
    DBGrid8: TDBGrid;
    Vendas1: TMenuItem;
    DespesasporClassificao1: TMenuItem;
    DespesasporClassificaoComgrficos1: TMenuItem;
    Controlaritemparaposteriorretorno1: TMenuItem;
    Desmarcaritemparacontroledeposteriorretorno1: TMenuItem;
    ReimprimirNFCeemcontingncia1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnDeleteListClick(Sender: TObject);
    procedure FPListaEnter(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGridCadastroPadraoDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure BtnTrocaClick(Sender: TObject);
    procedure BtnTrocaProdClick(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnComissClick(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure MPFErro(Sender: TObject);
    procedure MPFMensagem(Sender: TObject);
    procedure BTNDEVOLVERClick(Sender: TObject);
    procedure BtnDevolvClick(Sender: TObject);
    procedure BtnCancelDClick(Sender: TObject);
    procedure EdNumDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnImpOrcClick(Sender: TObject);
    procedure BtnProdutosClick(Sender: TObject);
    procedure BtnDespesasClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure EdQtdDExit(Sender: TObject);
    procedure EdVlrTotDExit(Sender: TObject);
    procedure EdQtdDespExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ConsultaNDocFiscal1Click(Sender: TObject);
    procedure AlteraNDocFiscal1Click(Sender: TObject);
    procedure BtnDevolucaoClick(Sender: TObject);
    procedure DevoluoTotal1Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure DevoluoParcial1Click(Sender: TObject);
    procedure BtnDevolveItemClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure PDevolveItemExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Gerarnovopedido1Click(Sender: TObject);
    procedure InserirNFiscal1Click(Sender: TObject);
    procedure ApagarNFiscal1Click(Sender: TObject);
    procedure BtnProcVendClick(Sender: TObject);
    procedure ComprovanteTermal1Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure ReimprimirNF1Click(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure EDCodInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodCompostoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
    procedure BtnProcVendExit(Sender: TObject);
    procedure CartaRedespachoClick(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure Danfe1Click(Sender: TObject);
    procedure SalvarXML1Click(Sender: TObject);
    procedure CopiarChaveNFe1Click(Sender: TObject);
    procedure ConsultaNFeNacinal1Click(Sender: TObject);
    procedure ConsultaNFePR1Click(Sender: TObject);
    procedure BitBtn17MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AbrirXMLResposta1Click(Sender: TObject);
    procedure DBGridConvertCellClick(Column: TColumn);
    procedure DBGridConvertExit(Sender: TObject);
    procedure DBGridConvertKeyPress(Sender: TObject; var Key: Char);
    procedure EdQtdConvertKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDQuantidadeEnter(Sender: TObject);
    procedure EDQuantidadeExit(Sender: TObject);
    procedure EDQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnDadosAdicClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edQntEmbKeyPress(Sender: TObject; var Key: Char);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure cbConvUnitVendaConvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edQntConvertVendaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edQntConvertKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOkConversaoUnitariaClick(Sender: TObject);
    procedure edQntConvertVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edQntConvertKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOkConversaoUnitariaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDQuantidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbConvUnitVendaConvExit(Sender: TObject);
    procedure RelatrioDanfe1Click(Sender: TObject);
    procedure BtnVisualizarRelClick(Sender: TObject);
    procedure EdNumPedKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmBusca1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnTranspClick(Sender: TObject);
    procedure FrmTransportadoraBTNMINUSClick(Sender: TObject);
    procedure ConsultarNFe1Click(Sender: TObject);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SalvarXMLDestinatrio1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure ContingnciaFS1Click(Sender: TObject);
    procedure ContingnciaSCAN1Click(Sender: TObject);
    procedure VisualizarDanfe1Click(Sender: TObject);
    procedure CancelarNfe1Click(Sender: TObject);
    procedure VisualizarnoSefazNacional1Click(Sender: TObject);
    procedure ConsultarStatusNfe1Click(Sender: TObject);
    procedure RecuperarDados1Click(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtCancelaECFClick(Sender: TObject);
    procedure ListarNfe1Click(Sender: TObject);
    procedure VerificarServidorSefaz1Click(Sender: TObject);
    procedure DBGridCadastroPadraoCellClick(Column: TColumn);
    procedure DBGridCadastroPadraoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EfetuarDevoluodeNFe1Click(Sender: TObject);
    procedure RelatriodeDanfe1Click(Sender: TObject);
    procedure edDtFiltro02KeyPress(Sender: TObject; var Key: Char);
    procedure ReimprimirNotaFiscal1Click(Sender: TObject);
    procedure Inutilizarnumeraodenotafisclaleletrnica1Click(
      Sender: TObject);
    procedure EdQuantLoteExit(Sender: TObject);
    procedure CBSelecionaLoteExit(Sender: TObject);
    procedure BtLoteClick(Sender: TObject);
    procedure BtnLoteVeOkClick(Sender: TObject);
    procedure BtnCancelaLotevendClick(Sender: TObject);
    procedure PCadastroExit(Sender: TObject);
    procedure BtnProcFormPagEnter(Sender: TObject);
    procedure BtnVeicEntExit(Sender: TObject);
    procedure BtnVeicEntClick(Sender: TObject);
    procedure PVeiculoExit(Sender: TObject);
    procedure BtnLimpaVeicClick(Sender: TObject);
    procedure BtnLimpaVeicExit(Sender: TObject);
    procedure BtnLimpaVeicEnter(Sender: TObject);
    procedure Lote1Click(Sender: TObject);
    procedure PConsultaExit(Sender: TObject);
    procedure FrmBuscaLoteBTNOPENClick(Sender: TObject);
    procedure FrmBuscaLoteBTNMINUSClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnImpRelLoteClick(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BtnLimpaDataClick(Sender: TObject);
    procedure Contaapagarepagos1Click(Sender: TObject);
    procedure Devolver1Click(Sender: TObject);
    procedure RelatriodeVendaspBanca1Click(Sender: TObject);
    procedure GerarXMLDistribuio1Click(Sender: TObject);
    procedure CBORDEMExit(Sender: TObject);
    procedure CBORDEMChange(Sender: TObject);
    procedure EdValorPagoExit(Sender: TObject);
    procedure EdValorPagoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdComissaoExit(Sender: TObject);
    procedure BtnInsereVeicClick(Sender: TObject);
    procedure BtnExcluiVeiculoClick(Sender: TObject);

    procedure EdICMSEntExit(Sender: TObject);
    procedure EdBCEntExit(Sender: TObject);
    procedure EdVlrVeiculoExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure EdNovaQtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RelatriodevendascomDespesas1Click(Sender: TObject);
    procedure RelatriodeVendasdeVeculos1Click(Sender: TObject);
    procedure RecuperareEnviarXMLdeCancelamento1Click(Sender: TObject);
    procedure CartadeCorreoEletrnica1Click(Sender: TObject);
    procedure VisualizarDanfecomComplementoFiscal1Click(Sender: TObject);
    procedure edPesquisaAgilKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaAgilKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaAgilEnter(Sender: TObject);
    procedure DBGrid7KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid7DblClick(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure Comprovante1Click(Sender: TObject);
    procedure CustosdeProdutosVendidos1Click(Sender: TObject);
    procedure GerenciadordeEntregas1Click(Sender: TObject);
    procedure ResumodeEntrega2Click(Sender: TObject);
    procedure MarcarComoProntoParaEntregar1Click(Sender: TObject);
    procedure MarcarComoEntregue1Click(Sender: TObject);
    procedure EntregueClick(Sender: TObject);
    procedure DevolverItensemissoprpria1Click(Sender: TObject);
    procedure CancelarFechamento1Click(Sender: TObject);
    procedure CancelarDevoluo1Click(Sender: TObject);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure MenuDesmPedMarcadosClick(Sender: TObject);
    procedure MenuMesclarPedMarcadosClick(Sender: TObject);
    Function GeraCodigo(Gerador,Tabela,Campo:String):Integer;
    procedure MenuLiberaPedExpedClick(Sender: TObject);
    procedure mnuAbrirExpClick(Sender: TObject);
    procedure ImprimirEtiquetas1Click(Sender: TObject);
    procedure RelatriodeDANFENFCe1Click(Sender: TObject);
    procedure pPesquisaAgilExit(Sender: TObject);
    procedure pPesqBarraInternoExit(Sender: TObject);
    procedure PCodFabExit(Sender: TObject);
    procedure PCodInternoExit(Sender: TObject);
    procedure btnConfPedCompraNfeClick(Sender: TObject);
    procedure BTNOPENClick(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure DbServicoClassificacaoDropDown(Sender: TObject);
    procedure DespesasporClassificao1Click(Sender: TObject);
    procedure DespesasporClassificaoComgrficos1Click(Sender: TObject);
    procedure Controlaritemparaposteriorretorno1Click(Sender: TObject);
    procedure Desmarcaritemparacontroledeposteriorretorno1Click(
      Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure ReimprimirNFCeemcontingncia1Click(Sender: TObject);

  private
    { Private declarations }
	 //Limpa as labels de Despesas
	 Procedure LimpaLabelsDESP;

    // filtra tabela unidade pela unidade de venda do produto
    procedure AtualizaQntConvertida;

    // - 28/02/2009: procedure que busca dados de conversão unitária
    procedure convertunidade;
  public
    { Public declarations }
    //Função que efetua a devolução total do pedido de venda
    Function DevTotPed(XCod_PedDev: Integer): Boolean;
    //Função que efetua a devolução total de Nota Fiscal Normal e Nota Fiscal Eletronica, emitindo as Notas Fiscais de entrada Correspondente
    Function DevNotaFiscal(XCod_PedDev: Integer): Boolean;
    //Função Auxiliar para Devolução de Nota Fiscal - Verifica Configurações necessárias para devolução
    Function DevNotaFiscal_VerificaConfigs: Boolean;
    //Função Auxiliar para Devolução de Nota Fiscal - Efetua Estorno do Financeiro
    Function DevNotaFiscal_EstornoFinanceiro: Boolean;
    //Função Auxiliar para Devolução de Nota Fiscal - Tentar registrar o cliente da nota fiscal de saída como fornecedor da NF de entrada
    Function DevNotaFiscal_SetaClienteFornecedor: Boolean;
    //Função Auxiliar para Devolução de Nota Fiscal - Gera Pedido de compra e lançao itens
    Function DevNotaFiscal_EfetuaDevolucao: Boolean;
    //Função Auxiliar para Devolução de Nota Fiscal - Fecha o pedido e seta dados do fiscal
    Function DevNotaFiscal_SetaFiscal: Boolean;
    //Função Auxiliar para chamar tela do fiscal
    Function DevNotaFiscal_EmiteFiscal: Boolean;
	 //Função que efetua a devolução Parcial do pedido de venda
	 Function DevParcPed(XCod_PedDev: Integer): Boolean;
	 //Filtra Tabela Slave e calcula total
	 Procedure FiltraSlaveDev(XCod_PedSlave: Integer);
    //Função utilizada para procurar a ultima venda do produto selecionado para o cliente selecionao
    Function RetornaUltimaVendaProd(Comando: String): Boolean;
    // seleciona todos os itens do orcamento
    Procedure FiltraOrcamento;
    // função para verificar se todos os itens do orcamento possui estoque positivo
    Function VerificaEstoque: boolean;
    //Paulo 07/03/2011: REtorna os dados do veiculo de entrada
    Function RetornaVeiculoEntrada: boolean;
    // ATUALIZA O VALOR DA COMISSÃO APOS FAZER A DEVOLUÇÃO PARCIAL
    Procedure AtualizaComissao;
    // calcula comissão referente ao que foi inserido na tabela coissao e nao do produto
    Procedure CalculaComissaoVendedor;

    procedure CopiaChaveNFeAreaTransferencia;
    //Paulo 22/12/2011: Efetua o lançamento de entrada de correção
    Procedure LancaEntradaCorrecao(XCodEstoque: Integer);
    //Paulo 22/12/2011: Efetua o lançamento de saída de correção
    Procedure LancaSaidaCorrecao(XCodEstoque: Integer; XNumPedido:String);
    //Paulo 06/03/2012: Altera a quantidade do item ao clicar em enter 
    procedure AlteraQuantidade;
    //Paulo 08/12/2011: Filtra Tabela veiculo entrada esoma total
    Procedure FiltraVeiculoEntrada(XCod_PedidoVeic: Integer);

	 //Função verifica se o cliente esta cadastrado senão ele cadastra referente a NFe
	 Function ImportaCliente(XCNPJ, XRazao, XFAnt, XRua, XNro, XBairro, XCodIBGE, XMunic, XUF, XCep, XFone, XIE: String): WideString;

    //Função para efetuar cadastro do item no banco de dados
	 Function CadastraItemEstoque(CodigoProduto: String; CdEan: String; Descricao: String; Ncm: String; VlrUnitario: Real; Cst: String): Integer;
    //Função para efetuar cadastro/inserção do item no banco de dados itenspedv
	 Function InserirItemVenda(CodigoEstoque: Integer; CdEan: String; CodigoCst: Integer; AliqIcms: Real; BaseIcms: Real; VlrIcms: Real; BaseIcmsSt: Real; VlrIcmsSt: Real; AliqIpi: Real; VlrIpi: Real; Quantidade: Real; Desconto: Real; VlrUnitario: Real; VlrTotal: Real; Data: String; CodigoUnidade: Integer; Cfop: String): Integer;
    //Função para Inserir documento discal
	 Function InserirDocumentoFiscal(DataEntradaSaida: String; NumeroNota: String; NfeChave: String; NFeDtEmissao: String; BaseIcms: real; BaseCalculo: Real; VlrIcmsSubstituicao: real; VlrDesconto: Real; VlrTotalProduto: Real; VltTotalDocumento: Real; VlrIcms: Real; VlrFrete: Real; VlrTotalIpi: Real; VlrOutrasDespesas: Real; XCfop: String): Boolean;
    //Paulo 20/09/2010: Função que troca o ponto pela virgula
    Function tiraPontoNfe(XValor: String): Real;
	 Procedure NovoPedido;
    //Felipe - 11/02/2015 - atualiza tabela PEDVENDA (campo CONTROLEFRETE)
    procedure AtualizaControleFrete(ControleFrete: String);
    //Felipe - 03/03/2015 - Filtra Pedidos de Venda através do campo CONTROLEFRETE
    Procedure ControleFreteFiltro;
    Procedure MarcaDesmarcaPedido(xCodPedido : Integer);
  //ANGELO - 12/06/2015 - COPIA OS ITENS DO PEDIDO DE ORIGEM PARA O PEDIDO DE DESTINO
  Procedure CopiaITensPedVenda(xCodPedOrigem,xCodPedDestino :Integer);
  Procedure ApagaPedidosMarcados;
  Procedure CopiaDespPedVenda(xCodPedOrigem,xCodPedDestino : Integer);
  Procedure RemoverServico;
  end;

var
  FPedVenda: TFPedVenda;
  XCTrlPainelvend: Boolean;//esta variavel é utilizada para controlar o aperecimento do painel de vendedor de item no botão de inserçao e impedir o fluxo de código caso este painel ainda não tenha aparecido para aquele item de pedido
  XCod_PedCompra, XCod_PedVendaDev, XCodSlaveDev, XCod_FornecedorDev, XCOD_FISCAL: Integer;
  XEDCOMISS,XTotPedDev: Real;
  XQTDE_PROD, XCOD_TRANSP: INTEGER; // ARMAZENA A QUANTIDADE DE PRODUTO QUE NAO FORAM DEVOLVIDOS
  XSUBTOTAL : Currency; // ARMAZENA O TOTAL DOS ITENS QUE NÃO FORAM DEVOLVIDOS
  XVLRUNIT_COMIS: Currency; // VALOR UNITARIO DA COMISSAO, OU SEJA, TOTAL DA COMISSAO DIVIDIDO PELA QUANTIDADE DE PRODUTO
  xqtdconvert: Real; // - 03/03/2009: controla quantidade convertida na vergalhão
  XCfopDev: String;//Variavel de uso temporário para armazenar o cfop de devolução de mercadoria
  XRelDanfe: String;//Paulo 14/10/2010: controlaque tipo de relatório será emitido de venda ou compra
  XvendCom,XCodVeiculo:Integer;
  XperComiss, XvlrVeiculo:Real;
  XLINHAATUAL,XendEmail:String;
  XHeight, XLeft: Integer;//Paulo 10/05/2011: Para posicionamento do form de consulta
  XNumNFe, XDtEmissao, XDtSaiEnt: String;
  
implementation

uses UDMEstoque, UDMPessoa, UFuncionario, Alxor32, AlxMessage, UDMSaida,
  UDMEntrada, UMenu, UDMMacs, UTroca, UComissionados, Alxorprn, UDmServ,
  UOrcamento, UDMFinanc, UCadPadrao, UDMConta, UDmBanco, UDMCaixa,
  UCtrlEntrega, USenha, UnitDeclaracoes, UValidacaoNFe, UDMGEOGRAFIA,
  UPadrao, UFORNECEDOR, UDMExporta, UFiscalSaidas, UMzrNfe, UCadCFOP,
  UPadraoFiscal, Variants, UListaNfe, UFiscalEntradas, URelPeriodoFiscal,
  UProduto, ULote, URelLancContas, UConsPedVenda, UAtualizaValores,
  URelPadraoped, URelData, UCartaCorrecaoEletronica, UGeradorXML,
  UOrcamentoMac, UMDO, ULancTroco, ComObj, UOrcamento3, URelProdutos,
  UPedCompra, UDevolucao, UExpVenda, UDMFAST, UServico;

{$R *.DFM}

//Paulo 08/12/2011: Filtra Tabela veiculo entrada esoma total
Procedure TFPedVenda.FiltraVeiculoEntrada(XCod_PedidoVeic: Integer);
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

   lbTotalEntrada.Caption:=FormatFloat('0.00', DMSAIDA.TAlx.FieldByName('TOTAL').AsCurrency);
   lbTotEnt.Caption:=FormatFloat('0.00', DMSAIDA.TAlx.FieldByName('TOTAL').AsCurrency);


End;
//Função utilizada para procurar a ultima venda do produto selecionado para o cliente selecionao
Function TFPedVenda.RetornaUltimaVendaProd(Comando: String): Boolean;
Begin
	Try
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' select itenspedven.valunit, itenspedven.qtdeprod , itenspedven.data, pedvenda.numped, PEDVENDA.CONTROLEFRETE from itenspedven ');
   	DMESTOQUE.Alx.SQL.Add(' left join pedvenda on itenspedven.cod_pedven=pedvenda.cod_pedvenda ');
   	DMESTOQUE.Alx.SQL.Add(' where (itenspedven.cod_estoque=:CODIGOESTOQUE) ');
		DMESTOQUE.Alx.ParamByName('CODIGOESTOQUE').AsString:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString;
       LHistProd.Caption:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
   	If (FMenu.XTIPOBOLTO<>'0') AND (FMenu.XTIPOBOLTO <> '')
       Then Begin
   		DMESTOQUE.Alx.SQL.Add('  And (pedvenda.cod_cliente=:CODIGOCLIENTE) ');
       	DMESTOQUE.Alx.ParamByName('CODIGOCLIENTE').AsString:= FMenu.XTIPOBOLTO;
       	LHistCliente.Caption:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
   	End
   	Else Begin
       	LHistCliente.Caption:= 'Todos os Clientes';
   	End;
   	DMESTOQUE.Alx.SQL.Add(' Order by itenspedven.data desc ');
       DMESTOQUE.Alx.Open;
       DMESTOQUE.Alx.SQL.Text;
       If Not DMESTOQUE.Alx.IsEmpty
       Then Begin
           LHistNumDocumento.Caption:=DMESTOQUE.Alx.FieldByName('NUMPED').AsString;
           LHistValor.Caption:=FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VALUNIT').AsCurrency);
           LHistData.Caption:=DMESTOQUE.Alx.FieldByName('DATA').AsString;
           LQtde.Caption := DMESTOQUE.Alx.fieldbyname('qtdeprod').AsString;
           LQuantidade.Visible := true;           
       End
       Else Begin
           LHistNumDocumento.Caption:='';
           LHistValor.Caption:='0,00';
           LHistData.Caption:='00/00/0000';
           LHistProd.Caption:='';
           LHistCliente.Caption:='';
           LQtde.Caption := '';
           LQuantidade.Visible := false;
       End;
   Except
       LHistNumDocumento.Caption:='';
       LHistValor.Caption:='0,00';
       LHistData.Caption:='00/00/0000';
       LHistProd.Caption:='';
       LHistCliente.Caption;
       LQtde.Caption := '';
       LQuantidade.Visible := false;
   End;
   If Comando='LIMPAR'
   Then Begin
       LHistNumDocumento.Caption:='';
       LHistValor.Caption:='0,00';
       LHistData.Caption:='00/00/0000';
       LHistProd.Caption:='';
       LHistCliente.Caption;
       LQtde.Caption := '';
       LQuantidade.Visible := false;
   End;
End;

//Filtra Tabela Slave e calcula total
Procedure TFPedVenda.FiltraSlaveDev(XCod_PedSlave: Integer);
Begin
	If XSQLTABELA='PEDVENDA'
   Then Begin//Se trabalhando com pedidos de venda
   	//INSERE COMANDOS PARA FILTRAR
 		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add('Select * From itenspedven');
		DMESTOQUE.TSlave.SQL.Add('left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add('left join lote on itenspedven.cod_lote = lote.cod_lote ');
		DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
		DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
		DMESTOQUE.TSlave.SQL.Add('Where itenspedven.cod_pedven = :CODPEDVENDA ');
		DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsInteger:=XCod_PedVendaDev;
		DMESTOQUE.TSlave.Open;
   	//INSERE COMANDOS PARA FILTRAR ITENS DEVOLVIDOS
 		DMESTOQUE.Alx.Close;
		DMESTOQUE.Alx.SQL.Clear;
		DMESTOQUE.Alx.SQL.Add('Select * ');
		DMESTOQUE.Alx.SQL.Add('From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.Alx.SQL.Add('left join lote on itenspedc.cod_lote = lote.cod_lote ');
		DMESTOQUE.Alx.SQL.Add('Where itenspedc.cod_pedcompra = :CODPEDVENDA ');
		DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsInteger:=XCod_PedCompra;
		DMESTOQUE.Alx.Open;
   End;
End;

//Função que efetua a devolução Parcial do pedido de venda
Function TFPedVenda.DevParcPed(XCod_PedDev: Integer): Boolean;
Begin
	Try
		If FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(XCod_PedDev), '')=False Then
   		Exit;//Caso não encontrar cancelar
   	If Xtabela.FieldByName('TIPO').AsString<>'VND'
       Then Begin
			If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Este pedido já passou por um processo de devolução. Deseja continuar com a devolução para o pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')<> 2 Then
           	Exit;
       End;
       //ABRE NOVO PEDIDO DE COMPRA PARA SUPORTAR A DEVOLUÇÃO
       XCod_PedCompra:=InserReg(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP');
       DMSAIDA.TPedV.Edit;
       DMSAIDA.TPedV.FieldByName('TIPO').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString;
       DMSAIDA.TPedV.Post;
       DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger:=XCod_PedCompra;
       DMENTRADA.TPedC.FieldByName('NUMPED').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime:=DATE();
       DBDATA.Text:=DateToStr(Date());
       DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger :=  VerificaFornecedorDevolucao(DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger);
       DMENTRADA.TPedC.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
//       DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency:=DMSAIDA.WPedV.FieldByName('VALOR').AsCurrency;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime:=Date();
       DBDATA.Text:=DateToStr(Date());
       DMENTRADA.TPedC.FieldByName('COD_DEVOLUCAO').AsInteger:=DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
       if NOT(DMENTRADA.TPedC.FieldByName('NUMDEV').AsString = 'OUT')THEN
       	DMENTRADA.TPedC.FieldByName('NUMDEV').AsString:=DMSAIDA.WPedV.FieldByName('NUMPED').AsString;
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
   	   FiltraSlaveDev(XCod_PedDev);
       PDevParc.Visible:=True;
       PDevParc.BringToFront;
       BtnDevolveItem.SetFocus;
   Except
   End;
End;

//Função que efetua a devolução total do pedido de venda
Function TFPedVenda.DevTotPed(XCod_PedDev: Integer): Boolean;
Var
	XTotPedDev: Real;
Begin
	Try
    XTotPedDev:=0;
		If FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(XCod_PedDev), '')=False Then
   	  Exit;//Caso não encontrar cancelar
   	If Xtabela.FieldByName('TIPO').AsString<>'VND'
    Then Begin
			If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Este pedido já passou por um processo de devolução. Deseja continuar com a devolução para o pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')<> 2 Then
           	Exit;
       End;
       //ABRE NOVO PEDIDO DE COMPRA PARA SUPORTAR A DEVOLUÇÃO
       XCod_PedCompra:=InserReg(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP');
       DMSAIDA.TPedV.Edit;
       DMSAIDA.TPedV.FieldByName('TIPO').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString;
       DMSAIDA.TPedV.FieldByName('ATU').AsString := '0';
       DMSAIDA.TPedV.FieldByName('VLRCOMIS').AsCurrency := 0;
       DMSAIDA.TPedV.Post;
       DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger:=XCod_PedCompra;
       DMENTRADA.TPedC.FieldByName('NUMPED').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime:=DATE();
       DBDATA.Text:=DateToStr(Date());
       DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger := VerificaFornecedorDevolucao(DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger);
       DMENTRADA.TPedC.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
       DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency:=DMSAIDA.WPedV.FieldByName('VALOR').AsCurrency;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsDateTime:=Date();
       DBDATA.Text:=DateToStr(Date());
       DMENTRADA.TPedC.FieldByName('COD_DEVOLUCAO').AsInteger:=DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
       if NOT(DMENTRADA.TPedC.FieldByName('NUMDEV').AsString = 'OUT')THEN
       	DMENTRADA.TPedC.FieldByName('NUMDEV').AsString:=DMSAIDA.WPedV.FieldByName('NUMPED').AsString;

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
   	FiltraSlaveDev(XCod_PedVendaDev);
   	DMESTOQUE.TSlave.First;
   	While Not DMESTOQUE.TSlave.Eof Do
   	Begin
			If DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString<>'DVL'
       	Then Begin
	  			//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
				FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
				FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
       		FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsString, '');
       		DMSAIDA.TItemPV.Edit;
       		DMSAIDA.TItemPV.FieldByName('OPERACAO').AsString:='DVL';
       		DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=0;
       		DMSAIDA.TItemPV.FieldByName('QTDDEV').AsCurrency:=EdQtdProdDev.ValueNumeric;
				DMSAIDA.TItemPV.FieldByName('VALCOMP').AsCurrency:=0;
       		DMSAIDA.TItemPV.FieldByName('VLRUNITDEV').AsCurrency:=DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency;;
				DMSAIDA.TItemPV.FieldByName('LUCMOE').AsCurrency:=0;
       		DMSAIDA.TItemPV.Post;

				//INSERE PRODUTO EM ITENS DE PEDIDO DE COMPRA
   			XCodSlaveDev:=InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');
               DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger:=XCodSlaveDev;
       		DMENTRADA.TItemPC.FieldByName('COD_DEVOLUCAO').AsInteger:=DMSAIDA.TItemPV.FieldByName('COD_ITENSPEDVEN').AsInteger;
               DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency:=DMSAIDA.TItemPV.FieldByName('ALIQICMS').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency:=DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency:=DMSAIDA.TItemPV.FieldByName('VLRICMS').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('REDUCBASEICMS').AsCurrency:=DMSAIDA.TItemPV.FieldByName('REDUCBASEICMS').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency:=DMSAIDA.TItemPV.FieldByName('BASEICMSSUBS').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency:=DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency:=DMSAIDA.TItemPV.FieldByName('ALIQIPI').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('VLRIPI').AsCurrency:=DMSAIDA.TItemPV.FieldByName('VLRIPI').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('FRETE').AsCurrency:=0;
               DMENTRADA.TItemPC.FieldByName('EMBPROD').AsCurrency:=0;
               DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger:=XCod_PedCompra;
               DMENTRADA.TItemPC.FieldByName('DATA').AsString:=DateToStr(Date());
               DMENTRADA.TItemPC.FieldByName('QTDEST').AsCurrency:=DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger:=DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger;
               DMENTRADA.TItemPC.FieldByName('COD_LOTE').AsInteger:=DMSAIDA.TItemPV.FieldByName('COD_LOTE').AsInteger;
               DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency:=DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency:=DMSAIDA.TItemPV.FieldByName('DESCPRO').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency:=DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency:=DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency;
				XTotPedDev:=XTotPedDev+DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency;
				DMENTRADA.TItemPC.Post;
               //ATULIZA ESTOQUE
               DMESTOQUE.TEstoque.Edit;
	            DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency;
			    DMESTOQUE.TEstoque.Post;
               DMESTOQUE.TransacEstoque.CommitRetaining;
				//ATULIZA O ESTOQUE DO LOTE
  				if DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
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
       	End;
           DMESTOQUE.TSlave.Next;
		End;
       DMENTRADA.TPedC.Edit;
       DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency:=XTotPedDev;
       DMENTRADA.TPedC.Post;
      	//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   	If FiltraTabela(DMSAIDA.TAlx, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+IntToStr(XCod_PedDev)+#39+')')=True
   	Then Begin
       	//INSERE FISCAL EM PEDIDO DE COMPRA
	        XCOD_FISCAL:=InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC');
           //FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_CFOPDEV').AsString, '');
       	DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsInteger:=XCod_PedCompra;
       	DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger:=XCOD_FISCAL;
       	DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsInteger:= VerificaCFOPDevolucao(DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger);//  DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
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
       If CancelaFinac(IntToStr(XCod_PedDev))=True Then
       	Result:=True
       Else
       	Result:=False;
   Except
       Result:=False;
   End;
End;

//Função Auxiliar para Devolução de Nota Fiscal - Verifica Configurações necessárias para devolução
Function TFPedVenda.DevNotaFiscal_VerificaConfigs: Boolean;
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
//Função Auxiliar para Devolução de Nota Fiscal - Efetua Estorno do Financeiro
Function TFPedVenda.DevNotaFiscal_EstornoFinanceiro: Boolean;
Begin
	Result:=True;
   Try
   	//Chama Função já existente para cancelar financeiro
       If CancelaFinac(IntToStr(XCod_PedVendaDev))=False Then
       	Result:=False;
   Except
		Result:=False
   End;
End;
//Função Auxiliar para Devolução de Nota Fiscal - Tentar registrar o cliente da nota fiscal de saída como fornecedor da NF de entrada
Function TFPedVenda.DevNotaFiscal_SetaClienteFornecedor: Boolean;
Begin
	Result:=True;
   Try
   	//Procura fornecedor com o mesmo código pessoa que o código do cliente
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' select pessoa.cod_pessoa, vwcliente.cod_cliente, vwfornec.cod_fornec from pedvenda ');
       DMMACS.TALX.SQL.Add(' left join vwcliente on pedvenda.cod_cliente=vwcliente.cod_cliente ');
       DMMACS.TALX.SQL.Add(' left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
       DMMACS.TALX.SQL.Add(' left join vwfornec on pessoa.cod_pessoa = vwfornec.cod_pessoa ');
       DMMACS.TALX.SQL.Add(' Where pedvenda.cod_pedvenda=:codigo ');
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
//Função Auxiliar para Devolução de Nota Fiscal - Gera Pedido de compra e lançao itens
Function TFPedVenda.DevNotaFiscal_EfetuaDevolucao: Boolean;
Var
	XProxPed: Integer;
Begin
	Result:=True;
   Try
   	//PASSO 01 - Seta dados do pedido de venda como devolvido
       If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(XCod_PedVendaDev), '')=True
       Then Begin
           DMSAIDA.TPedV.Edit;
           DMSAIDA.TPedV.FieldByName('SITUACAO').AsString:='DEVOLVIDO';
           DMSAIDA.TPedV.FieldByName('ATU').AsString := '0';
           DMSAIDA.TPedV.FieldByName('VLRCOMIS').AsCurrency := 0;
           DMSAIDA.TPedV.Post;
       End
       Else Begin
           Result:=False;
           FMenu.MAux.Lines.Add('A o efetuar devolução o pedido de venda não foi encontrado para setar status como devolvido');
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
       DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency:=DMSAIDA.WPedV.FieldByName('VALOR').AsCurrency;
       DMENTRADA.TPedC.FieldByName('COD_DEVOLUCAO').AsInteger:=XCod_PedVendaDev;
      	DMENTRADA.TPedC.FieldByName('NUMDEV').AsString:=DMSAIDA.WPedV.FieldByName('NUMFISCAL').AsString;
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
           If FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsString, '')=False
           Then Begin
				Result:=False;
               FMenu.MAux.Lines.Add('Itens de pedido de venda: Verifique a ocorrencia de itens de venda com problemas de código de estoque');
               Exit;
           End;
           //Seta informações do item de venda como devolvido
           DMSAIDA.TItemPV.Edit;
           DMSAIDA.TItemPV.FieldByName('OPERACAO').AsString:='DVL';
           DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=0;
           DMSAIDA.TItemPV.FieldByName('QTDDEV').AsCurrency:=DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency;
           DMSAIDA.TItemPV.FieldByName('VALCOMP').AsCurrency:=0;
           DMSAIDA.TItemPV.FieldByName('VLRUNITDEV').AsCurrency:=DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency;;
           DMSAIDA.TItemPV.FieldByName('LUCMOE').AsCurrency:=0;
           DMSAIDA.TItemPV.Post;

           //INSERE PRODUTO EM ITENS DE PEDIDO DE COMPRA
           XCodSlaveDev:=InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');
           DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger:=XCodSlaveDev;
           DMENTRADA.TItemPC.FieldByName('COD_DEVOLUCAO').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsInteger;
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
           DMENTRADA.TItemPC.FieldByName('QTDEST').AsCurrency:=DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
           DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency:=DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency:=DMESTOQUE.TSlave.FieldByName('DESCPRO').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency:=DMESTOQUE.TSlave.FieldByName('DESCNF').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TSlave.FieldByName('VALUNIT').AsCurrency;
           DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
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
Function TFPedVenda.DevNotaFiscal_SetaFiscal: Boolean;
Begin
	Result:=True;
   Try
   	//Filtra documento fiscal de Saída
       If FiltraTabela(DMSAIDA.TAlx, 'DOCFISSAIDA', 'COD_PEDIDO', IntToStr(XCod_PedVendaDev), '')=True
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
Function TFPedVenda.DevNotaFiscal_EmiteFiscal: Boolean;
Begin
	Result:=True;
   Try
   	//Confirma alterações
       Try
           DMPESSOA.TransacPessoa.CommitRetaining;
           DMSAIDA.IBT.CommitRetaining;
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
           DMSAIDA.IBT.RollbackRetaining;
           DMENTRADA.IBT.RollbackRetaining;
       End;
   Except
		Result:=False;
       FMenu.MAux.Lines.Add('Fiscal: Erro ')
   End;
End;
//Função que efetua a devolução total de Nota Fiscal Normal e Nota Fiscal Eletronica, emitindo as Notas Fiscais de entrada Correspondente
Function TFPedVenda.DevNotaFiscal(XCod_PedDev: Integer): Boolean;
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

//Limpa as labels de Despesas
Procedure TFPedVenda.LimpaLabelsDESP;
Begin
   EdDespesa.CLEAR;
   EdQtdDesp.ValueNumeric:=0;
   EdVlrCustoDesp.ValueNumeric:=0;
   EdVlrCobradoDesp.ValueNumeric:=0;
   EdVlrTotalDesp.ValueNumeric:=0;
End;

procedure TFPedVenda.FormShow(Sender: TObject);
begin
  inherited;
  	//Controla a visibilidade do botão fiscal somente para a senha mestre
  	If FMenu.LCODUSUARIO.Caption ='111522' Then
       BtnDadosAdic.Visible:=True
   Else
       BtnDadosAdic.Visible:=False;
	//Xtabela e Xcampo os nome padrões devem ser atribuidos ao show do form,
	XTabela:= DMSAIDA.TPedV;
	XCampo:= 'NOMECLI';
   XPkTabela:= 'COD_PEDVENDA';
	XpkTabSlave:='COD_ITENSPEDVEN';

   XTransaction:=DMSAIDA.IBT;

   XView:=DMSAIDA.WPedV;
   XTab:=FALSE;
   XDescricao:= 'O Pedido de venda ';
   XSQLTABELA:= 'PEDVENDA';
   XSQLVIEW:='VWPEDV';
   XSQLTabSlave:='ITENSPEDVEN';
	XTabSlave:=DMSAIDA.TItemPV;
end;

procedure TFPedVenda.GroupBox3Exit(Sender: TObject);
begin
  inherited;
   DbCodVendedorItem.Text:=EdCodVend.Text;
   DbVendedorItem.Text:=EDNOMEVENDEDOR.Text;
end;

procedure TFPedVenda.BtnConsultarClick(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
  If ControlAccess('ALTPED', 'M')=False Then
  		Exit;
  //Filtra todos os subserviços
  FiltraTabela(DMServ.WSubServ, 'vwsubservico','','','');

  If DMMACS.TLoja.FieldByName('USAGARANTIA').AsString='1'
  Then Begin
  		PGarantia.Visible:=True;
       PGarantia.BringToFront;
  End
  Else Begin
       PGarantia.Visible:=False;
       CBGarantia.Checked:=False;
  End;
  	BtnProdutos.Enabled:=False;
   BtnDespesas.Enabled:=True;
   FPLista.Visible:=True;
   FPLista.BringToFront;
   EdDespesa.Text:='';
   EDMarca.Text:='';
   EdUnidade.Text:='UN';
  inherited;
  RetornaUltimaVendaProd('LIMPAR');
//  EdComissao.ValueNumeric:=XTabela.FieldByName('VLRCOMIS').AsCurrency;
  //Paulo 07/03/2011: Verifica se deve motrar ou não o painel de veiculo de entrada
  if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
       RetornaVeiculoEntrada;

  EdComissao.Text:=FormatFloat('###,##0.00',XEDCOMISS);

  if DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'PR' then//Pesquisa Rápida
     if pPesquisaAgil.Visible then
     	edPesquisaAgil.SetFocus;
end;

procedure TFPedVenda.BtnNovoClick(Sender: TObject);
begin
   //EFETUA CONTROLE DE ACESSO
  If ControlAccess('PEDVEN', 'M')=False Then
  		Exit;
  If DMMACS.TLoja.FieldByName('USAGARANTIA').AsString='1'
  Then Begin
  		PGarantia.Visible:=True;
       PGarantia.BringToFront;
  End
  Else Begin
       PGarantia.Visible:=False;
       CBGarantia.Checked:=False;
  End;

  //Filtra todos os subserviços
  FiltraTabela(DMServ.WSubServ, 'vwsubservico','','','');
    
  inherited;
	BtnProdutos.Enabled:=False;
   BtnDespesas.Enabled:=True;
   FPLista.Visible:=True;
   FPLista.BringToFront;
	XCTrlPainelvend:=False;//variavel de controle (Ver em declaração de variáveis)
   EdDespesa.Text:='';
   EDCodBarra.Text := '';
   EDCodInterno.Text := '';
   EDCodFab.Text := '';
   EDMarca.Text:='';
   EdUnidade.Text:='UN';
   //RetornaUltimaVendaProd('LIMPAR');
   EdComissao.Text:='0,00';
   XEDCOMISS:=0;

   //Paulo 07/03/2011: Verifica se deve motrar ou não o painel de veiculo de entrada
   if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
   begin
       PVeiculo.Visible:=True;
       EdDescVeic.Text:='';
       EdVlrVeiculo.Text:='0,00';
       LabelValorFrete.Visible:=False;
       LabelValorOutros.Visible:=False;
       FiltraVeiculoEntrada(DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger);
   end
   else begin
       PVeiculo.Visible:=False;
       LabelValorFrete.Visible:=True;
       LabelValorOutros.Visible:=True;
   end;

   if DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'PR' then//Pesquisa Rápida
		if pPesquisaAgil.Visible then
       	edPesquisaAgil.SetFocus
       else
       	EDCodBarra.SetFocus;
end;

procedure TFPedVenda.BtnDeleteListClick(Sender: TObject);
begin
  inherited;
  XCTrlPainelvend:=False;//varivael de controle do painel de vendedor item (ver em declaração de variáveis)
   //Edmar - 19/08/2014 - Retorna os valores para os campos
  	edBcSt.ValueNumeric := FMenu.xBaseIcmsSt;
	edVlrSt.ValueNumeric := FMenu.xVlrIcmsSt;
end;

procedure TFPedVenda.FPListaEnter(Sender: TObject);
begin
    //se estiver trabalhando com vendedor individual para itens não passará o focu p/ componentes de procura estabelecido pelo inherit e sim para o botão inserir produto
    // - 23/01/2009: tbm nao deixar passar foco se estiver configurado como conversao unitaria embalagens.. senao focus nao cai no lugar certo qnd sai do painel conversao unitaria de embalagens
	If  (XConvUnitVenda=False)and (XCTrlPainelvend=False) and (DMMacs.Tloja.FieldByName('CONVERTUNIDVEND').AsString <> '1')and (PAlteraQuantidade.Visible=true)  Then
   	inherited;

end;

procedure TFPedVenda.BtnApagarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CANCVEND', 'M')=False Then
  		Exit;

  inherited;
end;

procedure TFPedVenda.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Pedido de Venda';  
    ControleFrete.Visible := True;
    
   If (FMenu.XRemessaGarantia=True) and (FMenu.XSimplesRemessa=False) and (fmenu.XDevolucao=False)and (FMenu.XOutrosFisc=False)and(FMenu.XComplementacao=True) Then
       Caption:='Remessa para garantia';

   If (FMenu.XRemessaGarantia=False) and (FMenu.XSimplesRemessa=True) and (fmenu.XDevolucao=False)and (FMenu.XOutrosFisc=False)and(FMenu.XComplementacao=True) Then
       Caption:='Simples Remessa';

   If (FMenu.XDevolucao=True) and (fmenu.XRemessaGarantia=False) and (FMenu.XSimplesRemessa=False)and (FMenu.XOutrosFisc=False)and(FMenu.XComplementacao=True) Then
       Caption:='Devolução de Mercadoria';

   If (FMenu.XRemessaGarantia=false)  and (FMenu.XSimplesRemessa=False) and (fmenu.XDevolucao=False)and (FMenu.XOutrosFisc=False)and(FMenu.XComplementacao=True) Then
       Caption:='Pedido de Venda';

   //Paulo 19/07/2010: Abre o form para outros
   If (FMenu.XOutrosFisc=True)and(FMenu.XRemessaGarantia=False) and (FMenu.XSimplesRemessa=False) and (fmenu.XDevolucao=False)and(FMenu.XComplementacao=True)Then
       Caption:='Outras Saídas';

   //Paulo 30/11/2010: Abre o form para Complementos
   If (FMenu.XComplementacao=True)and(FMenu.XOutrosFisc=False)and(FMenu.XRemessaGarantia=False) and (FMenu.XSimplesRemessa=False) and (fmenu.XDevolucao=False) Then
       Caption:='Nota Fiscal Eletrônica Complementar';

   //Paulo 16/03/2011: Esconde o Painel do Relatório de Lote
   PRelLote.SendToBack;
   PRelLote.Visible:=False;

   //Paulo 09/12/2011:Enconde o painel de veiculos de entrada
   PVeiculoEnt.SendToBack;
   PVeiculoEnt.Visible:=False;

   //Paulo 06/03/2012: Esconde o painel de alteração de quantidade
   PAlteraQuantidade.Visible:=false;
   PAlteraQuantidade.SendToBack;

   //Paulo 25/07/2011: Esconde o painel de troco
   Ptroco.SendToBack;
   Ptroco.Visible:=False;
   EdValorPedido.ValueNumeric:=0;
   EdValorPago.ValueNumeric:=0;
   EdValorTroco.ValueNumeric:=0;
   EdComissao.Text:='0,00';
   XEDCOMISS:=0;

   FMenu.XNotaEntrada:=False;
   PPrecos.Visible:=false;
   RetornaUltimaVendaProd('LIMPAR');
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   //verifica se a empresa é do tipo ótica para liberar o botão de ficha
   If (DMMACS.TLoja.FieldByName('USAMULTCOMIS').AsString='1')
   Then Begin
       BtnComiss.Visible:=True;
       BtnComiss.BringToFront;
   End
   Else Begin
       BtnComiss.Visible:=False;
   End;


   If (DMMACS.TLoja.FieldByName('CTRLDVL').AsString='1')
   Then Begin
       BTNDEVOLVER.Visible:=True;
       BTNDEVOLVER.BringToFront;
   End
   Else Begin
       BTNDEVOLVER.Visible:=False;
   End;

   PTransportadora.Left:=312;
   DBGridCadastroPadrao.DataSource:=DMSAIDA.DWPedV;
   DBNumFisc.DataSource := DMSAIDA.DPedv;
   EdLocal.Visible:=False;
   PPrecos.SendToBack;

    //a opção de selecionar a classificação do serviço
    if DMMACS.TLoja.FieldByName('EXIBECLASSSERV').AsString = '1' then
    begin
    	pClassServico.Visible := True;
       pClassServico.BringToFront;
    end
    else begin
    	pClassServico.Visible := False;
      	pClassServico.SendToBack;
    end;

    //VERIFICA INFORMAÇÕES NECESSÁRIAS PARA CONTROLES DE CÁLCULOS FISCAIS
   If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '') = True
   Then Begin
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='NFe')
       Then Begin
           DBGridCadastroPadrao.Hint:='Pressione Ctrl+s para salvar o lay-out do grid e Ctrl+c para copiar a chave de acesso da NFe';
           DBGridCadastroPadrao.ShowHint:=True;
       End
       Else Begin
           DBGridCadastroPadrao.Hint:='Pressione Ctrl+s para salvar o lay-ou do grid';
           DBGridCadastroPadrao.ShowHint:=True;
       End;
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='NFe')
       	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
       		OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') Then
           LEmissor.Caption:='Emissão: Nota Fiscal Eletrônica';
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='NF') Then
           LEmissor.Caption:='Emissão: Nota Fiscal';
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='ECF') Then
           LEmissor.Caption:='Emissão: Cupom Fiscal';
   END;

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
       cbUnidVendaFixo.ListSource := DMESTOQUE.DSAlx3;
   end else begin
        XConvUnitEmb := False;
        //cbUnidVendaFixo.ListSource := nil;
   end;

   // se for do tipo nfe setar variavel pra nao dar problema no fiscal
   if (DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString <> '')then
      FMenu.XNFe := 1;

   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\pedvenda.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\pedvenda.lgm');
   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\pedvendaProdutos.lgm')
   Then
       DBGrid1.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\pedvendaProdutos.lgm');

    // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\pedvendaDespesas.lgm')
   Then
       DBGrid8.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\pedvendaDespesas.lgm');

   //If for uma devolução, é feito o lançamento automatico dos itens
   If (FMenu.XDevolucao=True) AND (FMenu.XLancAutoDev=True)
   Then Begin
       BtnNovo.Click;

       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add(' Select * from tmp ');
       DMMACS.TMP.Open;

       //Lança todos os itens selecionados para devolução na tabela Tmp
       DMMACS.TMP.First;
       While Not DMMACS.TMP.Eof do
       Begin
           //Localiza produto atraves do item de compra que esta inserido na tabela tmp
           //Filtra tabela de itens pedido de compra
           If FiltraTabela(DMENTRADA.TItemPC, 'itenspedc', 'cod_itenspedc', DMMACS.TMP.FieldByName('INT1').AsString, '')=False Then
               Exit;
           //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
           If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsString, '')=False Then
               Exit;
           if not FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TEstoque.FieldByName('COD_ESTOQUE').AsString, '') then
           	Exit;
           //Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
           If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.TEstoque.FieldByName('cod_subprod').AsString, '')=False Then
               Exit;
           //Filtra tabela de produto de acordo com o produto selecionada em fproduto
           FiltraTabela(DMEstoque.TProduto, 'PRODUTO', 'COD_PRODUTO', DMEstoque.WSimilar.FieldByName('COD_PRODUTO').AsString, '');
           // seleciona os dados da loja
           FiltraTabela(DMMACS.TLoja, 'LOJA','COD_LOJA', FMenu.LCODLOJA.Caption,'');

           Try
               If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
               then begin
                    XCodUnidItenProd :=  DMESTOQUE.Alx.FieldByName('COD_UNIDADE').AsInteger;
               end;
               //05/05/2009: verifica o codigo itens pedvenda maior
               DMSAIDA.TAlx.Close;
               DMSAIDA.TAlx.SQL.Clear;
               DMSAIDA.TAlx.SQL.Add('select max(itenspedven.cod_itenspedven) as maximo from itenspedven');
               DMSAIDA.TAlx.Open;

               FMenu.XCodSlave :=  DMSAIDA.TAlx.FieldByName('MAXIMO').AsInteger + 1;

               Try
                   DMMACS.TCodigo.Close;
                   DMMACS.TCodigo.Open;//é necessário fechar e abrir para atualizar a tabela em caso de transações da rede
                   //Atualiza a tabela código
                   DMMACS.TCodigo.Edit;
                   DMMACS.TCodigo.FieldByName('cod_itenspedven').AsInteger := FMenu.XCodSlave + 1;
                   DMMACS.TCodigo.Post;
                   DMMACS.IBTCodigo.CommitRetaining;
               Except
                   DMMACS.IBTCodigo.RollbackRetaining;
               End;

               DMSAIDA.TAlx.Close;//05/05/2009:  sql na unha
               DMSAIDA.TAlx.SQL.Clear;
               DMSAIDA.TAlx.SQL.Add('insert into ITENSPEDVEN');
               DMSAIDA.TAlx.SQL.Add('(COD_ITENSPEDVEN, COD_PEDVEN, COD_ESTOQUE, QTDEPROD, DESCPRO, COD_FUNCIONARIO,');
               DMSAIDA.TAlx.SQL.Add('VALUNIT, VALCUSTO, VALORTOTAL, ATUEST, VALREP, COEFDIV, VALCOMP, COD_CST, LUCPER,');
               DMSAIDA.TAlx.SQL.Add('LUCMOE, DATA, COMISSAO, OPERACAO, LUCREL, VLRVENDBD, QTDDEV, NUMITEM,');
               DMSAIDA.TAlx.SQL.Add('COD_LOTE, ALIQICMS, BASEICMS, VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI,');
               DMSAIDA.TAlx.SQL.Add('REDUCBASEICMS, VLRICMSSUBS, VLRUNITDEV, QTDENTREGUE, COD_UNIDADE, QTDEMB,');
               DMSAIDA.TAlx.SQL.Add('UNIDEMB, QTDNAEMB, CFOP, TIPOLISTA, IPNPMC, IPNMVA, ALIQ_DEVOLVIDO)');
               DMSAIDA.TAlx.SQL.Add('values');
               DMSAIDA.TAlx.SQL.Add('(:COD_ITENSPEDVEN, :COD_PEDVEN, :COD_ESTOQUE, :QTDEPROD, :DESCPRO, :COD_FUNCIONARIO,');
               DMSAIDA.TAlx.SQL.Add(':VALUNIT, :VALCUSTO, :VALORTOTAL, :ATUEST, :VALREP, :COEFDIV, :VALCOMP, :COD_CST, ');
               DMSAIDA.TAlx.SQL.Add(':LUCPER, :LUCMOE, :DATA, :COMISSAO, :OPERACAO, :LUCREL, :VLRVENDBD,');
               DMSAIDA.TAlx.SQL.Add(':QTDDEV, :NUMITEM, :COD_LOTE, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS,');
               DMSAIDA.TAlx.SQL.Add(':VLRIPI, :ALIQIPI, :REDUCBASEICMS, :VLRICMSSUBS, :VLRUNITDEV, :QTDENTREGUE,');
               DMSAIDA.TAlx.SQL.Add(':COD_UNIDADE, :QTDEMB, :UNIDEMB, :QTDNAEMB, :CFOP, :TIPOLISTA, :IPNPMC,:IPNMVA, :ALIQ_DEVOLVIDO)');

               DMSAIDA.TAlx.ParamByName('COD_ITENSPEDVEN').AsInteger := FMenu.XCodSlave;
               DMSAIDA.TAlx.ParamByName('COD_PEDVEN').AsInteger := FMenu.XCOD_LANCAIXA;
               DMSAIDA.TAlx.ParamByName('COD_ESTOQUE').AsInteger := DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger;
               DMSAIDA.TAlx.ParamByName('DESCPRO').AsCurrency:=0;
               DMSAIDA.TAlx.ParamByName('QTDEPROD').AsCurrency:=DMMACS.TMP.FieldByName('VLR1').AsCurrency;
               DMSAIDA.TAlx.ParamByName('COD_FUNCIONARIO').AsInteger := DMPESSOA.TFuncionario.FieldByName('cod_func').AsInteger;
               DMSAIDA.TAlx.ParamByName('DATA').AsDate := Date();
               DMSAIDA.TAlx.ParamByName('OPERACAO').AsString := 'DEV';
               DMSAIDA.TAlx.ParamByName('VALCUSTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VALREP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
               DMSAIDA.TAlx.ParamByName('COEFDIV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VALCOMP').AsCurrency := DMENTRADA.TItemPC.FieldByName('valunit').AsCurrency*DMMACS.TMP.FieldByName('VLR1').AsCurrency;
               DMSAIDA.TAlx.ParamByName('COD_CST').AsInteger  := DMMACS.TMP.FieldByName('DESC2').AsInteger;
               DMSAIDA.TAlx.ParamByName('LUCPER').AsCurrency := 0;
               DMSAIDA.TAlx.ParamByName('LUCMOE').AsCurrency := 0;
               DMSAIDA.TAlx.ParamByName('LUCREL').AsCurrency := 0;
               DMSAIDA.TAlx.ParamByName('VLRVENDBD').AsCurrency := 0;
               DMSAIDA.TAlx.ParamByName('ALIQICMS').AsCurrency := DMMACS.TMP.FieldByName('VLR9').AsCurrency;
               DMSAIDA.TAlx.ParamByName('BASEICMS').AsCurrency := DMMACS.TMP.FieldByName('VLR7').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VLRICMS').AsCurrency := DMMACS.TMP.FieldByName('VLR4').AsCurrency;
               DMSAIDA.TAlx.ParamByName('REDUCBASEICMS').AsCurrency := 0;
               DMSAIDA.TAlx.ParamByName('BASEICMSSUBS').AsCurrency := DMMACS.TMP.FieldByName('VLR8').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VLRICMSSUBS').AsCurrency := DMMACS.TMP.FieldByName('VLR5').AsCurrency;
               DMSAIDA.TAlx.ParamByName('ALIQIPI').AsCurrency := DMMACS.TMP.FieldByName('VLR10').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VLRIPI').AsCurrency := DMMACS.TMP.FieldByName('VLR6').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VLRIPI').AsCurrency := DMMACS.TMP.FieldByName('VLR6').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VALUNIT').AsCurrency := DMMACS.TMP.FieldByName('VLR2').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VALORTOTAL').AsCurrency := DMMACS.TMP.FieldByName('VLR3').AsCurrency;
				DMSAIDA.TAlx.ParamByName('ALIQ_DEVOLVIDO').AsCurrency := DMMACS.TMP.FieldByName('VLR11').AsCurrency;               
               DMSAIDA.TAlx.ParamByName('ATUEST').AsString := '1';
               DMSAIDA.TAlx.ExecSQL;

               If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
               Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
                   DMESTOQUE.TEstoque.Edit;
                   DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-DMMACS.TMP.FieldByName('VLR1').AsCurrency;
                   DMEstoque.TEstoque.FieldByName('ULTVENDA').AsString:=DateToStr(Date());
                   DMESTOQUE.TEstoque.Post;
               End;

               DMMACS.Transaction.CommitRetaining;
               DMESTOQUE.TransacEstoque.CommitRetaining;
               DMSAIDA.IBT.CommitRetaining;
           Except
				MessageDlg('Um item não foi inserido a lista', mtWarning, [mbOK], 0);
               DMMACS.Transaction.RollbackRetaining;
               DMMACS.Transaction.RollbackRetaining;
           End;
           DMMACS.TMP.Next;
       End;
       XCodPedido:=IntToStr(FMenu.XCOD_LANCAIXA);
       XCodPessoa := StrToInt(FMenu.XCOD_CLIENTE_DEVOLUCAO);

       try
			//Edmar - 12/03/2015 - Adiciona o fornecedor, o numero do documento fiscal da compra
           // e a PK do pedido de compra gerado no pedido de venda
       	MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE PEDVENDA SET PEDVENDA.COD_CLIENTE = :CLIENTE, PEDVENDA.NUMFISCAL_PC = :NUMFISCAL, ');
           MDO.Query.SQL.Add(' PEDVENDA.COD_PC_DEV = :PK_PC_DEV WHERE PEDVENDA.COD_PEDVENDA = :PEDIDO ');
           MDO.Query.ParamByName('CLIENTE').AsString := FMenu.XCOD_CLIENTE_DEVOLUCAO;
           MDO.Query.ParamByName('NUMFISCAL').AsString := FMenu.XNUM_FISCAL_DEVOLUCAO;
        	MDO.Query.ParamByName('PK_PC_DEV').AsString := FMenu.XCOD_PK_DEVOLVIDO;
           MDO.Query.ParamByName('PEDIDO').AsString := XCodPedido;

           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
       except
       	MessageDlg('Não foi possível atualizar o pedido de devolução.', mtWarning, [mbOK], 0);
           MDO.Transac.RollbackRetaining;
       end;

		FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', FMenu.XCOD_CLIENTE_DEVOLUCAO, '');
       FiltraClienteDevolucao;

       FiltraSlave;
   End;

   //Paulo 01/02/2012: Verifica se o usuário é adm para desabilitar o campo de comissão
   FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption,'');
   if (DMMACS.TUsuario.FieldByName('ADM').AsString = '1')or(FMenu.LCODUSUARIO.Caption = '111522')  then
   	EdComissao.Enabled:=True
   else
       EdComissao.Enabled:=False;

   If (DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '1') then
   begin
		pPesquisaAgil.Visible := True;
       pPesquisaAgil.BringToFront;
       pPesquisaAgil.Enabled := True;
       
       pPesqBarraInterno.Visible := False;
       pPesqBarraInterno.SendToBack;
   end else
   begin
		pPesquisaAgil.Visible := False;
       pPesquisaAgil.SendToBack;
       pPesquisaAgil.Enabled := False;
       
       pPesqBarraInterno.Visible := True;
       pPesqBarraInterno.BringToFront;
   end;

   if (FMenu.XSimplesRemessa = True) Or (FMenu.XRemessaGarantia = True) Or (FMenu.XDevolucao = True) Or (FMenu.XOutrosFisc = True) then
   begin
   	pSt.Visible := True;
     	pSt.BringToFront;
   end;

   //Edmar - 12/03/2015 - Se for devolução desativa o botão de novo
   if FMenu.XDevolucao then
	   BtnNovo.Enabled := False
   else
	   BtnNovo.Enabled := True;
end;

procedure TFPedVenda.DBGridCadastroPadraoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
	IF DMSAIDA.TPedV.FieldByName('SITUACAO').AsString='ABERTO'
   Then Begin
  		DBGridCadastroPadrao.Canvas.Font.Color := clRed;
  		DBGridCadastroPadrao.Canvas.Font.Style := [fsBold];
  		DBGridCadastroPadrao.DefaultDrawDataCell(Rect, Field, State);
   End;
end;

procedure TFPedVenda.BtnTrocaClick(Sender: TObject);
//begin
//	pmCancelamentos.Popup(Left + PConsulta.left + Painel.left + BtnTroca.Left, top + PConsulta.Top + Painel.top + BtnTroca.Top + BtnTroca.Height);
Var
	XCodPedidoTroca: String;
begin
  inherited;
	If XView.FieldByName('SITUACAO').AsString='CANCELADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido se encontra cancelado!', '', 1, 1, False, 'a');
       Exit;
   End;

   FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');
   If (DMSAIDA.TPedV.FieldByName('FISCO').AsString='ECF') OR (DMSAIDA.TPedV.FieldByName('FISCO').AsString='NF') OR (DMSAIDA.TPedV.FieldByName('FISCO').AsString='NFe')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Este pedido já passou por uma impressão fiscal!', '', 1, 1, False, 'a');
		Exit;
   End;

	If XView.FieldByName('SITUACAO').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido não se encontra fechado! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
       Exit;
   End;
    
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CANCPEDFECH', 'M')=False Then
  		Exit;
	If Mensagem('A T E N Ç Ã O', 'Deseja realmente Cancelar o fechamento do pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
       XCodPedidoTroca:=XView.FieldByName('COD_PEDVENDA').AsString;
       If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XCodPedidoTroca, '')=True
       Then Begin

           //REGISTRA COMANDO DO USUARIO
           Registra('PEDIDO VENDA', 'CANCELA FECHAMENTO', DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsString, 'Nº '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+'-'+DMSAIDA.TPedV.FieldByName('NOMECLI').AsString, 'Vlr:'+DMSAIDA.TPedV.FieldByName('VALOR').AsString+'-'+DMSAIDA.WPedV.FieldByName('FORMPAG').AsString);
			If CancelLanPed(XCodPedidoTroca)=True
           Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
				DMSAIDA.TPedV.EDIT;
           	DMSAIDA.TPedV.FieldByName('SITUACAO').AsString:='ABERTO';
				DMSAIDA.TPedV.Post;
				DMSAIDA.TPedV.ApplyUpdates;
				DMSAIDA.IBT.CommitRetaining;
               //Alex: Como estamos cancelando o fechamento, devemos apagar qualquer pedido de compra com relacionamento de veículo de entrada
               if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
               begin
                   try
                   	//Vamos localizar o item de entrada
                       DMESTOQUE.Alx.Close;
                       DMESTOQUE.Alx.SQL.Clear;
                       DMESTOQUE.Alx.SQL.Add(' select * from veiculoentrada ');
                       DMESTOQUE.Alx.SQL.Add(' where veiculoentrada.cod_pedido=:venda ');
                       DMESTOQUE.Alx.ParamByName('venda').AsInteger:=XView.FieldByName('COD_PEDVENDA').AsInteger;
                       DMESTOQUE.Alx.Open;
                       If not DMESTOQUE.Alx.IsEmpty
                       Then Begin
                       	//Alex 02/08/2012: Atualizamos estoque
                           FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsString, '');
                           //Alex 02/08/2012: Atualiza Estoque
                           DMESTOQUE.TEstoque.Edit;
                           DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=0;
                           DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                           DMESTOQUE.TEstoque.Post;
                           //Apaga registro
                           DMESTOQUE.Alx1.Close;
                           DMESTOQUE.Alx1.SQL.Clear;
                           DMESTOQUE.Alx1.SQL.Add('  Delete from lancent ');
                           DMESTOQUE.Alx1.SQL.Add('  where (lancent.cod_estoque=:estoque) and (lancent.cod_lote=357) ');
                           DMESTOQUE.Alx1.ParamByName('estoque').Asinteger:=DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsInteger;
                           DMESTOQUE.Alx1.ExecSQL;
                           DMESTOQUE.TransacEstoque.CommitRetaining;
                       End;
                   except
                   	MessageDlg('Não foi possível cancelar o pedido de compra gerado com o veículo de entrada', mtWarning, [mbOK], 0);
                   end;
               end;
       		If FiltraTabela(XView, XSQLVIEW, XPkTabela, XCodPedidoTroca, '')=True
       		Then Begin
               	BtnConsultar.Click;
           	End;
           End;

           //Paulo 23/12/2011: Verifica se existe veiculo de entrada
           if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
           begin
               FiltraTabela(DMESTOQUE.Alx2,'VEICULOENTRADA','COD_PEDIDO',IntToStr(DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger),'');
               if not(DMESTOQUE.Alx2.IsEmpty) then
               begin
                   //Paulo 26/01/2012: Veifica se tem pedido de compra atrelado e apaga o mesmo
                   If FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', IntToStr(DMESTOQUE.Alx2.FieldByName('COD_PEDCOMP').AsInteger), '')=True
                   then begin
                        try
                            DMENTRADA.TPedC.Delete;
                            DMENTRADA.TPedC.ApplyUpdates;

                            //Paulo 26/01/2012: Atualiza estoque
                            DMESTOQUE.Alx2.First;
                            While Not DMESTOQUE.Alx2.Eof Do
                            Begin
                               FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(DMESTOQUE.Alx2.FieldByName('COD_ESTOQUE').AsInteger),'');
                               DMEstoque.TEstoque.Edit;
                               DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-1;
                               DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                               DMESTOQUE.TEstoque.Post;

                               DMESTOQUE.Alx2.Next;
                            end;
                            DMENTRADA.IBT.CommitRetaining;
                            DMESTOQUE.TransacEstoque.CommitRetaining;
                        except
                           DMENTRADA.IBT.RollbackRetaining;
                           DMESTOQUE.TransacEstoque.RollbackRetaining;
                        end;
                   end;
                   //Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido contém veiculo de entrada, exclua-o para poder prosseguir', '', 1, 1, False, 'a');
                   //Exit;
               end;
           end;

       End
       Else Begin
			Exit;
       End;
   End;
end;

procedure TFPedVenda.BtnTrocaProdClick(Sender: TObject);
begin
  inherited;
	If XView.FieldByName('SITUACAO').AsString='CANCELADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido se encontra cancelado!', '', 1, 1, False, 'a');
       Exit;
   End;
   If (DMSAIDA.TPedV.FieldByName('FISCO').AsString='ECF') OR (DMSAIDA.TPedV.FieldByName('FISCO').AsString='NF') OR (DMSAIDA.TPedV.FieldByName('FISCO').AsString='NFe')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Este pedido já passou por uma impressão fiscal!', '', 1, 1, False, 'a');
		Exit;
   End;
	If XView.FieldByName('SITUACAO').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido não se encontra fechado! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
       Exit;
   End;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('TROCVEND', 'M')=False Then
  		Exit;
	If Mensagem('A T E N Ç Ã O', 'Deseja realmente efetuar troca do pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
       FMenu.TIPOAUX:=XView.FieldByName('COD_PEDVENDA').AsString;
       //REGISTRA COMANDO DO USUARIO
       Registra('PEDIDO VENDA', 'TROCA', XView.FieldByName('DTPEDVEN').AsString, 'Nº '+XView.FieldByName('NUMPED').AsString, 'Valor: '+XView.FieldByName('VALOR').AsString);
       AbrirForm(TFTROCA, FTROCA, 0);
	End;
end;

procedure TFPedVenda.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
VAR
  Year, Month, Day:word;
  DATA, DATA2: String;
begin
   inherited;
   If Key=VK_ESCAPE
   Then Begin //pressionado esc, liberar
       ExecutaLiberaDados;
   End;
	If Key=VK_RETURN
   Then Begin
		If XTab=True Then
       	FiltraTabela(XTabela, XSQLTABELA, XCampo, '', '(upper('+XCampo+') like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY '+XCAMPO + ' ascending , DTPEDVEN DESC, NUMPED descending')
       Else
       	FiltraTabela(XView, XSQLVIEW, XCampo, '',   '(upper('+XCampo+') like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY '+XCAMPO + ' ascending , DTPEDVEN DESC,NUMPED  descending');

       //COMENDO ESCONDIDO PARA CALCULAR VALOR DE VENDAS
   	If UpperCase(EdNome.Text)<>UpperCase(FMenu.EdUsuario.Text+'123') Then
       	Exit;//se a palavra digitada na edit for diferente do usuario logado não é realizado o calculo
    	DecodeDate(Date(), Year, Month, Day);
       Try
           StrToDate('31/'+IntToStr(Month)+'/'+IntToStr(Year));
           DATA:='31/'+IntToStr(Month)+'/'+IntToStr(Year);
		Except
       	Try
           	StrToDate('30/'+IntToStr(Month)+'/'+IntToStr(Year));
               DATA:='30/'+IntToStr(Month)+'/'+IntToStr(Year);
           Except
           	Try
           		StrToDate('29/'+IntToStr(Month)+'/'+IntToStr(Year));
                   DATA:='29/'+IntToStr(Month)+'/'+IntToStr(Year);
               except
               	Try
           			StrToDate('28/'+IntToStr(Month)+'/'+IntToStr(Year));
                       DATA:='28/'+IntToStr(Month)+'/'+IntToStr(Year);
                   Except
                       MessageDlg('Não foi possível calcular!', mtWarning, [mbOK], 0);
                       Exit;
                   End;
               End;
           End;
       End;
       If FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption, '')=True
       Then Begin
           DATA2:='01/'+IntToStr(Month)+'/'+IntToStr(Year);
       	DMESTOQUE.Alx.Close;
		    DMESTOQUE.Alx.SQL.Clear;
       	DMESTOQUE.Alx.SQL.Add('SELECT sum(pedvenda.valor) AS TOTAL, sum(pedvenda.vlrcomis) AS COMISSAO FROM pedvenda where ((pedvenda.dtpedven>=:DT1) AND (pedvenda.dtpedven<=:DT2)) AND (pedvenda.cod_vendedor=:CODVENDEDOR)');
       	DMESTOQUE.Alx.ParamByName('DT1').AsString:=DATA2;
       	DMESTOQUE.Alx.ParamByName('DT2').AsString:=DATA;
       	DMESTOQUE.Alx.ParamByName('CODVENDEDOR').AsString:=DMMACS.TUsuario.FieldByNAme('COD_FUNCIONARIO').AsString;
       	DMESTOQUE.alx.Open;
       	If Not DMESTOQUE.Alx.IsEmpty
       	Then Begin
       		MessageDlg('Valor: R$ '+FormatFloat('###,##0.00', DMESTOQUE.Alx.FieldByNAme('TOTAL').AsCurrency) , mtInformation, [mbOK], 0);
       	end;
       End;
   End;
end;

procedure TFPedVenda.BtnComissClick(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('TELACOMIS', 'M')=False Then
  		Exit;
    FMENU.TIPOAUX:='PEDVENDA';
    If (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1')
    Then Begin
    	//A base de cálculo utilizada para comissão deve ser a mesma trazido da informada no momento da inserção do produto
       FMenu.TITULOREL:='A B. de Cálc. para prod. se refere a soma das Comis. dos produtos inseridos em pedido.';
       LVlrComissao.Hint:='Comissão referente ao cálculo das comissões em produto.';
		//Calcula Total
		//INSERE COMANDOS PARA FILTRAR
		DMESTOQUE.Alx.Close;
		DMESTOQUE.Alx.SQL.Clear;
		DMESTOQUE.Alx.SQL.Add('Select SUM(itenspedven.comissao) AS COMISSAO From itenspedven');
		DMESTOQUE.Alx.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA)');
		DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString:=DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString;
		DMESTOQUE.Alx.Open;
       If Not DMESTOQUE.Alx.IsEmpty
       Then Begin
           FMenu.XBCPROD:=DMESTOQUE.Alx.FieldByName('COMISSAO').AsCurrency;
      		LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', XVLRCOMIS);
       End
       Else Begin
       	FMenu.XBCPROD:=0;
			LVlrComissao.Caption:='Vlr. Comissão..: 0,00';
       End;

	 End
    Else Begin
    	//A base de cálculo utilizada para comissão deve ser referente ao total informada na edit
       FMenu.TITULOREL:='A Base de Cálc. para produtos se refere ao total do pedido.';
    	FMenu.XBCPROD:=EdValorPed.ValueNumeric;
    End;
    FMenu.XCOUNRECORD:=XTabela.FieldByName(XPkTabela).AsInteger;
    FMenu.XBCSERV:=0;
    If edcomissao.ValueNumeric>0
    Then Begin
    	LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', (EdValorPed.ValueNumeric*edcomissao.ValueNumeric)/100);
		XVLRCOMIS:=(EdValorPed.ValueNumeric*edcomissao.ValueNumeric)/100;
    End;
    AbrirForm(TFComissao, FComissao, 0);
    FiltraSlave;
end;

procedure TFPedVenda.BtnFiltrarClick(Sender: TObject);
begin
  inherited;
  	If XView.FieldByName('SITUACAO').AsString='ABERTO'
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário que o pedido esteja fechado antes da impressão fiscal. Antes de fechar recomendamos que confira todas as informações do pedido.', '', 1, 1, False, 'a');
		Exit;
   End;


  	If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '')=True
   Then Begin
       If (DMSAIDA.TPedV.FieldByName('FISCO').AsString<>'ECF') AND (DMSAIDA.TPedV.FieldByName('FISCO').AsString<>'NF')
       Then Begin
			If Mensagem('A T E N Ç Ã O', 'Deseja realmente Imprimir Documento Fiscal para o pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   		Then Begin
           	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
	           	If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
               Then Begin
   				//Imprime Cupom Fiscal
   				If MessageDlg('Impressora ECF Pronta?', mtConfirmation, [mbYes, mbNo], 0)=mryes
                   Then Begin
                      // FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', XCodPedido, '');
                       AbreFiscal;
                   End;
               	//Then Begin
       				//REGISTRA COMANDO DO USUARIO
       			 //	Registra('PEDIDO VENDA', 'ECF', XView.FieldByName('DTPEDVEN').AsString, 'Nº '+XView.FieldByName('NUMPED').AsString, 'Valor: '+XView.FieldByName('VALOR').AsString);
                  //	End;
               End;
           	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
           	If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF'
               Then Begin
                   // faz as verificações da nota fiscal e arquivo de relatorio
                   If AnaliseDados('PV', DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger) = false Then
                       Exit;

               	//Atualiza o Valor da NF
                   FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
                   //VERIFICA SE JÁ EXISTE ALGUM DOCUMENTO IMPRESSO COM O MESMO NUMERO DE NOTA
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add(' select * from docfissaida ');
                   DMMACS.TALX.SQL.Add(' where docfissaida.numdocfis=:CODIGO ');
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
                   DMMACS.TALX.SQL.Add(' select * from docfis ');
                   DMMACS.TALX.SQL.Add(' where (docfis.numdocfis=:CODIGO)  AND (docfis.empemit='+#39'1'+#39+')  ');
                   DMMACS.TALX.ParamByName('CODIGO').AsString:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
                   DMMACS.TALX.Open;
                   If Not DMMACS.TALX.IsEmpty
                   Then Begin
                       MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                       Exit;
                   End;

                   //Imprime Nota Fiscal
                   If MessageDlg('Impressora de NF Pronta?', mtConfirmation, [mbYes, mbNo], 0)=mryes
                   Then Begin
                      // FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', XCodPedido, '');
                       AbreFiscal;
                   End;

               End;
				ExecutaLiberaDados;
           End;
       End
       Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Este pedido já passou por uma impressão fiscal!', '', 1, 1, False, 'a');
			Exit;
       End;
   End;
end;

procedure TFPedVenda.MPFErro(Sender: TObject);
begin
  inherited;
  ShowMessage('Erro');
end;

procedure TFPedVenda.MPFMensagem(Sender: TObject);
begin
  inherited;
//	ShowMessage(FMENU.MPF.Msg);
end;


procedure TFPedVenda.BTNDEVOLVERClick(Sender: TObject);
begin
  inherited;
   PTrocar.Visible:=True;
   PTrocar.BringToFront;
   EDQtdDev.SetFocus;
end;

procedure TFPedVenda.BtnDevolvClick(Sender: TObject);
begin
  inherited;
	If EDQtdDev.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'A quantidade devolvida tem que ser superior a "0" (zero)', '', 1, 1, False, 'i');
       BtnCancelD.SetFocus;
       Exit;
   End;

	If (DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsCurrency<=EDQtdDev.ValueNumeric)
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'A quantidade devolvida tem que ser menor que a quantidade retirada.'+#13+'Caso não tenha ocorrido à aplicação desse produto e toda a quantidade esteja sendo devolvida, apenas apague este item da ordem.', '', 1, 1, False, 'i');
       BtnCancelD.SetFocus;
       Exit;
   End;
   //Tenta gravar as informações
   Try
		If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '')=False Then
       	Exit;
		If FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsString, '')=False Then
			Exit;

       //Atualiza Estoque
       DMSAIDA.TItemPV.edit;
       //CALCULA A REAL QTD MOVIMENTADA E O TOTAL EM MOEDAS DA OPERAÇÃO
       DMSAIDA.TItemPV.FieldByName('QTDDEV').AsCurrency:=EDQtdDev.ValueNumeric;
		CalcPercent(DMSAIDA.TItemPV.FieldByName('DESCPRO').AsCurrency, 0, ((DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency-DMSAIDA.TItemPV.FieldByName('QTDDEV').AsCurrency)*DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency), 'D');
       DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency:=AlxCalculo;
       DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency := DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency - EDQtdDev.ValueNumeric;

       DMSAIDA.TItemPV.Post;
       DMSAIDA.IBT.CommitRetaining;
   Except
       DMSAIDA.IBT.RollbackRetaining;
   End;
	//limpa labels de seleção
   LimpaLabels;
   //Filtra slaves e calcula total
   FiltraSlave;
   PTrocar.Visible:=False;
   BtnInsertProd.SetFocus;
end;

procedure TFPedVenda.BtnCancelDClick(Sender: TObject);
begin
  inherited;
   PTrocar.Visible:=False;
   BtnInsertProd.SetFocus;
end;

procedure TFPedVenda.EdNumDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
  			If XTab=True Then
  				FiltraTabela(XTabela, XSQLTABELA, 'NUMFISCAL', '', '(upper(NUMFISCAL) like upper('+#39+EdNumDoc.Text+'%'+#39+')) ORDER BY NUMFISCAL')
    		Else
 				FiltraTabela(XView, XSQLVIEW, 'NUMFISCAL', '',   '(upper(NUMFISCAL) like upper('+#39+EdNumDoc.Text+'%'+#39+')) ORDER BY NUMFISCAL');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
			ExecutaLiberaDados;
       End;
   Except
   End;
end;

// seleciona todos os itens do orcamento
Procedure TFPedVenda.FiltraOrcamento;
begin
   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
   DMESTOQUE.TSlave.SQL.Add('Select itprodorC.cod_itprodorC, itprodorC.cod_orcamento, itprodorc.cod_estoque, estoque.cod_estoque, itprodorc.qtd, itprodorc.vlrtotal AS TOTAL, ');
   DMESTOQUE.TSlave.SQL.Add('itprodorc.desconto, itprodorc.vlrunit, subproduto.cod_subproduto, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, estoque.ESTFISICO,');
   // - 06/02/2009:  se usar conversão unitaria para vendas incluir campos
   if XConvUnitVenda then
        DMESTOQUE.TSlave.sql.Add('itprodorc.qtdemb, itprodorc.unidemb, itprodorc.qtdnaemb, itprodorc.cod_unidade, ');
   DMESTOQUE.TSlave.sql.Add('subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TSlave.SQL.Add(' subproduto.cod_cst ');
   DMESTOQUE.TSlave.SQL.Add('From itprodorc left Join estoque on itprodorc.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TSlave.SQL.Add('Where itprodorc.cod_orcamento = :CODORDEM ');
   DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString:=DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
   DMESTOQUE.TSlave.Open;
end;

// função para verificar se todos os itens do orcamento possui estoque positivo
Function TFPedVenda.VerificaEstoque: boolean;
begin
   FiltraOrcamento;
   DMESTOQUE.TSlave.First;

   // se o orcamento possuir itens entra na condição
   If Not DMESTOQUE.TSlave.IsEmpty
   Then Begin
       // enquanto nao for o final dos itens
       While not DMESTOQUE.TSlave.Eof do
       Begin
           If DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency>DMESTOQUE.TSlave.FieldByName('ESTFISICO').AsCurrency
           Then Begin//o estoque que esta sendo negociado é maior que o estoque físico e segundo configuraçãoes isto não é permitido
               Result := false;

               If Mensagem('   A T E N Ç Ã O   ', 'O orçamento possui itens com estoque negativo e por esse motivo nenhum de seus itens serão importados. Deseja gerar um relatório para análise de estoque?'  , '', 2, 3, False, 'c')= 2
               Then Begin
                   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
                   FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
                                        
                   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfEstoque_Orcamento.frf');
                   FSRel.ShowReport;
               End;
               Exit;
           End
           Else Begin
               Result := true;
           End;
       // proximo item do orcamento
       DMESTOQUE.TSlave.Next;
       End;
   End;

end;

procedure TFPedVenda.BtnImpOrcClick(Sender: TObject);
VAR
	XSUCCESS: Boolean;
	XCODNEWVENDA: Integer;
   XEncontrado: Boolean;
begin
  inherited;
    {If DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString='MECANICA'
    Then Begin
   	If AbrirForm(TFORCAMENTOMAC, FORCAMENTOMAC, 1)='Selected' Then
           XEncontrado:=True;
    End
    Else Begin
   	If AbrirForm(TFOrcamento, FOrcamento, 1)='Selected' Then
           XEncontrado:=True;
    End;}

    If DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString='MECANICA' Then
    begin
   	If AbrirForm(TFORCAMENTOMAC, FORCAMENTOMAC, 1)='Selected' Then
           XEncontrado:=True;
    end
    Else
		if DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString = 'INDUSTRIA' Then
       begin
       	if AbrirForm(TFOrcamento3, FOrcamento3, 1) = 'Selected'  then
           	XEncontrado := True;
       end
       else
    		if AbrirForm(TFORCAMENTO, FORCAMENTO, 1) = 'Selected' then
           	xEncontrado := true;    

   If XEncontrado=True
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

           	// se na loja esta configurado para nao liberar itens com estoque negativo, passa por uma função para verificar o saldo do estque
               If DMMacs.TLoja.FieldByName('VENDESTNEG').AsString='0'
               Then Begin
                   // função para verificar se todos os itens do orcamento possui estoque positivo
                   If VerificaEstoque = false
                   Then Begin
                       XSUCCESS:=False;
                       PCadastro.Visible := false;
                       PCadastro.SendToBack;
                       PConsulta.Visible := true;
                       PConsulta.BringToFront;
                       Exit;
                   End;
               End
               Else Begin
                   FiltraOrcamento;
               End;

				//INSERE NOVO PEDIDO
				BtnNovo.Click;

               //ATRIBUI VALOR DA PK PARA VARIAVEL PARA QUE DEPOIS OS DADOS POSSAM SER REENCONTRADOS
				XCODNEWVENDA:=DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger;
               //IMPORTA INFORMAÇÕES DE CABEÇALHO DO ORÇAMENTO
               DMSAIDA.TPedV.Edit;
               DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsString:=DMSAIDA.TOrc.FieldByName('COD_CLIENTE').AsString;
               DMSAIDA.TPedV.FieldByName('NUMORC').AsString:=DMSAIDA.TOrc.FieldByName('NUMORC').AsString;
               DMSAIDA.TPedV.FieldByName('COD_USUARIO').AsString:=DMSAIDA.TOrc.FieldByName('COD_USUARIO').AsString;
               DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsString:=DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsString;
               DMSAIDA.TPedV.FieldByName('COD_FORMPAG').AsString:=DMSAIDA.TOrc.FieldByName('COD_FORMPAG').AsString;
               DMSAIDA.TPedV.FieldByName('NOMECLI').AsString:=DMSAIDA.TOrc.FieldByName('NOMECLI').AsString;
               DMSAIDA.TPedV.FieldByName('CPFCNPJ').AsString:=DMSAIDA.TOrc.FieldByName('CPFCNPJ').AsString;
               DMSAIDA.TPedV.FieldByName('OBS').AsString:=DMSAIDA.TOrc.FieldByName('OBS').AsString;
               DMSAIDA.TPedV.FieldByName('DESCONTO').AsCurrency:=DMSAIDA.TOrc.FieldByName('DESCPROD').AsCurrency;
               DMSAIDA.TPedV.FieldByName('VALOR').AsCurrency:=DMSAIDA.TOrc.FieldByName('VLRPROD').AsCurrency;
               DMSAIDA.TPedV.FieldByName('EDIT').AsInteger:=0;
               DMSAIDA.TPedV.Post;

       		//FILTRA DESPESAS
   			DMESTOQUE.Alx.Close;
   			DMESTOQUE.Alx.SQL.Clear;
   			DMESTOQUE.Alx.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'ORCAMENTO'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
				DMESTOQUE.Alx.ParamByName('COD_GERADOR').AsInteger:=DMSAIDA.WOrc.FieldByName('COD_ORCAMENTO').AsInteger;
				DMESTOQUE.Alx.Open;
               //Percorre os itens de produto do orçamento importando para pedido
               DMESTOQUE.Alx.First;
               While not DMESTOQUE.Alx.Eof do
               Begin
                   //Inserir Despesa a lista do pedido
					XCOD_ITDESP:=InserReg(DMESTOQUE.TDesp, 'DESPADIC', 'COD_DESPADIC');
   				DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger:=XCOD_ITDESP;
   				DMESTOQUE.TDesp.FieldByName('COD_GERADOR').AsInteger:=XTabela.FieldByName('COD_PEDVENDA').AsInteger;
   				DMESTOQUE.TDesp.FieldByName('GERADOR').AsString:='PEDVENDA';
   				DMESTOQUE.TDesp.FieldByName('DESPESA').AsString:=DMESTOQUE.Alx.FieldByName('DESPESA').AsString;
   				DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency:=DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
   				DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLRREAL').AsCurrency;
   				DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLRFINAL').AsCurrency;
   				DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLRTOTFIN').AsCurrency;
   				DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLRTOTFIN').AsCurrency-(DMESTOQUE.Alx.FieldByName('VLRREAL').AsCurrency*DMESTOQUE.Alx.FieldByName('QTD').AsCurrency);
   				DMESTOQUE.TDesp.FieldByName('LUCPER').AsCurrency:=((DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency*100)/(DMESTOQUE.Alx.FieldByName('VLRREAL').AsCurrency*DMESTOQUE.Alx.FieldByName('QTD').AsCurrency));
   				DMESTOQUE.TDesp.Post;
   				DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMESTOQUE.Alx.Next;
               End;

               // seleciona todos os itens do orcamento
               FiltraOrcamento;

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

   				//Valida quanto ao estoque físico (verifca se ha estoque suficiente
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

                   //Inserir Produto a lista do pedido
   				XCodSlave:=InserReg(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN');
   				DMSAIDA.TItemPV.FieldByName('COD_ITENSPEDVEN').AsInteger:=XCodSlave;
					DMSAIDA.TItemPV.FieldByName('COD_PEDVEN').AsInteger:=XTabela.FieldByName('COD_PEDVENDA').AsInteger;
					DMSAIDA.TItemPV.FieldByName('COD_FUNCIONARIO').AsInteger:=-1;
					DMSAIDA.TItemPV.FieldByName('DATA').AsString:=DateToStr(Date());
					DMSAIDA.TItemPV.FieldByName('OPERACAO').AsString:='VND';
       			DMSAIDA.TItemPV.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALCUSTO').Value;
       			DMSAIDA.TItemPV.FieldByName('VALREP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALREP').Value;
       			DMSAIDA.TItemPV.FieldByName('COEFDIV').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('COEFDIV').Value;
					DMSAIDA.TItemPV.FieldByName('VALCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').Value*EDQuantidade.ValueNumeric;
					CalcLuc(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency, DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency, DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency);
					DMSAIDA.TItemPV.FieldByName('LUCMOE').AsCurrency:=AlxLUCMOE;
					DMSAIDA.TItemPV.FieldByName('VLRVENDBD').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;
					DMSAIDA.TItemPV.FieldByName('LUCPER').AsCurrency:=AlxLUCPER;
					DMSAIDA.TItemPV.FieldByName('LUCREL').AsCurrency:=ALXLUCREAL;
       			Try

                      	//FILTRA FORMA DE PAGAMENTO DE ACORDO COM ORÇAMENTO
                   	FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMSAIDA.WOrc.FieldByNAme('COD_FORMPAG').AsString, '');

                       // ou seja, soh passa por esses processos se no orcamento foi informado um vendedor
                       If DMSAIDA.TOrc.FieldByName('COD_VENDEDOR').AsInteger > 0
                       Then Begin
                           If (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='0') and (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
                           Then begin
                               //FILTRA VENDEDOR PARA CALCULAR A COMISSAO DO VENDEDOR
                               If FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', '', ' COD_FUNCIONARIO = '+#39+XTabela.FieldByName('COD_VENDEDOR').AsString+#39+' ORDER BY COD_FUNCARGO')=True
                               Then Begin
                                   DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO
                                   If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                                   Then Begin         //1300*4.5/100
                                       //FORMA DE PAGAMENTO À VISTA É CALCULA COMISSÃO REFERENTE A VISTA
                                       DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100;
                                   End
                                   Else Begin
                                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                                       DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                                   End;
                               End;
                           End
                           // o valor da comissao sera buscado no produto cadastrado
                           Else Begin
                               If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                               Then Begin         //1300*4.5/100
                                   //FORMA DE PAGAMENTO À VISTA É CALCULA COMISSÃO REFERENTE A VISTA
                                   DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency) /100;
                               End
                               Else Begin
                                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                                   DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency * DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency) /100;
                               End;
                           End;
                           If FiltraTabela(DMFINANC.TAlx,'FORMPAG','COD_FORMPAG',DMSAIDA.TOrc.FieldByName('COD_FORMPAG').AsString,'')=true
                           Then Begin
                               EDFORMPAG.Text := DMFINANC.TAlx.FieldByname('descricao').AsString;
                               EDCODFORMPAG.Text := DMFINANC.TAlx.FieldByname('cod_formpag').AsString;
                           End;   
                       End;
       			Except
						DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=0;
       			End;
					DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
                   DMSAIDA.TItemPV.FieldByName('COD_CST').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_CST').AsInteger;
					DMSAIDA.TItemPV.FieldByName('QTDEPROD').Value:=DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
					DMSAIDA.TItemPV.FieldByName('DESCPRO').Value:=DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency;
					DMSAIDA.TItemPV.FieldByName('VALUNIT').Value:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency;
                   DMSAIDA.TItemPV.FieldByName('VALORTOTAL').Value:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;

                   if XConvUnitVenda
                   then begin
                        DMSAIDA.TItemPV.FieldByName('QTDEMB').AsCurrency:=DMESTOQUE.TSlave.FieldByName('QTDEMB').AsCurrency;
                        DMSAIDA.TItemPV.FieldByName('UNIDEMB').AsInteger:=DMESTOQUE.TSlave.FieldByName('UNIDEMB').AsInteger;
                        DMSAIDA.TItemPV.FieldByName('QTDNAEMB').AsCurrency:=DMESTOQUE.TSlave.FieldByName('QTDNAEMB').AsCurrency;
                        DMSAIDA.TItemPV.FieldByName('COD_UNIDADE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_UNIDADE').AsInteger;
                   end;


   				//Tenta gravar as informações
   				Try
       				If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
           			Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
                         	DMESTOQUE.TEstoque.Edit;
           				//atualiza estoque físico
							DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value-DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
                           DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
               				//informa que o registro atualizou estoque
               				DMSAIDA.TItemPV.FieldByName('ATUEST').AsString:='1';

               				//Atualiza data da ultima venda
							DMEstoque.TEstoque.FieldByName('ULTVENDA').AsString:=DateToStr(Date());
                             DMESTOQUE.TEstoque.Post;
                             DMESTOQUE.TransacEstoque.CommitRetaining;

							//ATUALIZA CUSTO DE ESTOQUE
							DMESTOQUE.CalcCustMed(DMESTOQUE.TEstoque.FieldByNAme('COD_ESTOQUE').AsInteger, 'S', DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency, DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency*DMEstoque.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency);
           			End
           			Else Begin
                         	DMESTOQUE.TEstoque.Edit;
           				//atualiza estoque reservado e saldo
	           				DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency+DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
							//informa que o registro não atualizou estoque
               				DMSAIDA.TItemPV.FieldByName('ATUEST').AsString:='0';
                               DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                             DMESTOQUE.TEstoque.Post;
                             DMESTOQUE.TransacEstoque.CommitRetaining;
           			End;

                         DMESTOQUE.TEstoque.Edit;

       				//Atualiza saldo de estoque
                       	DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency:=(DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency)-DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency;

       				DMSAIDA.TItemPV.Post;
						DMEstoque.TEstoque.Post;
                         DMESTOQUE.TransacEstoque.CommitRetaining;
                   Except
                   	Mensagem('OPÇÃO BLOQUEADA', 'Problemas ao atualizar o estoque. Produto:'+#13+DMESTOQUE.TSlave.FieldByName('subproduto.descricao').AsString, '', 1, 1, False, 'a');
                       XSUCCESS:=False;
	 					Exit;
                   End;
                   DMESTOQUE.TSlave.Next;
               End;
               If XSUCCESS=True
               Then Begin
                   DMSAIDA.TPedV.Edit;
                   DMSAIDA.TPedV.Post;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMSAIDA.IBT.CommitRetaining;
                   FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', IntToStr(XCODNEWVENDA), '');
                   BtnConsultar.Click;

                   FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsString,'');

                   If FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TFuncionario.FieldByName('cod_pessoa').AsString,'')=true
                   Then Begin
                       EDNOMEVENDEDOR.Text := DMPESSOA.TPessoa.FieldByName('nome').AsString;
                       EdCodVend.Text :=DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsString;
                   End;

               End
               Else Begin
               	Mensagem('OPÇÃO BLOQUEADA', 'Devido a problemas de importação, o orçamento não será importado!', '', 1, 1, False, 'a');
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

procedure TFPedVenda.BtnProdutosClick(Sender: TObject);
begin
  inherited;
	BtnProdutos.Enabled:=False;
   BtnDespesas.Enabled:=True;
   FPLista.Visible:=True;
   FPLista.BringToFront;
end;

procedure TFPedVenda.BtnDespesasClick(Sender: TObject);
begin
  inherited;
	BtnProdutos.Enabled:=True;
   BtnDespesas.Enabled:=False;
	FPDespesa.Visible:=True;
   FPDespesa.BringToFront;
   //Paulo 14/04/2011: Verifica se a loja tem despesas personalizadas
   if DMMACS.TLoja.FieldByName('PERSODESPADIC').AsString = '1' then
       PDespAdic.Visible:=False
   else
       PDespAdic.Visible:=True;

    //a opção de selecionar a classificação do serviço
    if DMMACS.TLoja.FieldByName('EXIBECLASSSERV').AsString = '1' then
       DbServicoClassificacao.SetFocus
    Else
       EdDespesa.SetFocus;
end;

// remover serviço selecionado
Procedure TFPedVenda.RemoverServico;

Begin
    Inherited;
     //exclui serviço/despesa do banco
      DMESTOQUE.Alx.close;
      dmestoque.Alx.SQL.clear;
      DMESTOQUE.Alx.sql.Add(' delete from despadic where despadic.cod_despadic=:cod1 ');
      DMESTOQUE.Alx.ParamByName('cod1').AsString := DMESTOQUE.Alx3.FieldByName('COD_DESPADIC').AsString;
      DMESTOQUE.Alx.ExecSQL;
      DMESTOQUE.TransacEstoque.CommitRetaining;
      FiltraSlave;    
End;

procedure TFPedVenda.BitBtn4Click(Sender: TObject);
begin
  inherited;
     If Mensagem('   A T E N Ç Ã O   ', 'Deseja realmente excluir o serviço ' + #39 + Copy(DMESTOQUE.Alx3.FieldByname('DESPESA').AsString, 0, 20) + #39 + '. ?', '', 2, 3, false, 'I') = 3 Then
         Exit;
      RemoverServico;
end;

procedure TFPedVenda.EdQtdDExit(Sender: TObject);
begin
  inherited;
	CalcPercent(EdDesconto.ValueNumeric, 0, (EdQtdDesp.ValueNumeric*EdVlrCobradoDesp.ValueNumeric), 'D');
   If PDespAdic.Visible=True Then
   	EdVlrTotalDesp.ValueNumeric:=AlxCalculo
   Else
       EdVlrTotalDesp.ValueNumeric:=EdVlrCobradoDesp.ValueNumeric;
end;

procedure TFPedVenda.EdVlrTotDExit(Sender: TObject);
begin
  inherited;
  	CalcPercent(0, (EdQtdDesp.ValueNumeric*EdVlrCobradoDesp.ValueNumeric)- EdVlrTotalDesp.ValueNumeric, (EdQtdDesp.ValueNumeric*EdVlrCobradoDesp.ValueNumeric), 'D');
  	EdDesconto.ValueNumeric:=AlxPercento;
end;

procedure TFPedVenda.EdQtdDespExit(Sender: TObject);
begin
  inherited;
	CalcPercent(EdDesconto.ValueNumeric, 0, (EdQtdDesp.ValueNumeric*EdVlrCobradoDesp.ValueNumeric), 'D');
   EdVlrTotalDesp.ValueNumeric:=AlxCalculo;
end;

procedure TFPedVenda.BitBtn3Click(Sender: TObject);
begin
  inherited;
   //Paulo 14/04/2011: Se a loja Personaliza despesas adicionais ele usara quantidade  = 1
   if DMMACS.TLoja.FieldByName('PERSODESPADIC').AsString = '1' then
   begin
      EdQtdDesp.ValueNumeric:= 1;
      EdVlrCustoDesp.ValueNumeric:= 1;
   end;

   If EdDespesa.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, descreva a despesa.', '', 1, 1, False, 'i');
       EdDespesa.SetFocus;
       exit;
   End;

   If EdQtdDesp.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe uma quantidade maior que 0 (zero).', '', 1, 1, False, 'i');
       EdQtdDesp.SetFocus;
       exit;
   End;

   If EdVlrCustoDesp.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor de Custo maior que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoDesp.SetFocus;
       exit;
   End;

   If EdVlrCobradoDesp.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor Cobrado maior que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoDesp.SetFocus;
       exit;
   End;

   If EdVlrTotalDesp.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor Total que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoDesp.SetFocus;
       exit;
   End;

   // - 05/05/2009: verifica o codigo despesa pedvenda maior
   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('select max(DESPADIC.COD_DESPADIC) as maximo from DESPADIC');
   DMSAIDA.TAlx.Open;

   XCOD_ITDESP :=  DMSAIDA.TAlx.FieldByName('MAXIMO').AsInteger + 1;

   Try
       DMMACS.TCodigo.Close;
       DMMACS.TCodigo.Open;//é necessário fechar e abrir para atualizar a tabela em caso de transações da rede
       //Atualiza a tabela código
       DMMACS.TCodigo.Edit;
       DMMACS.TCodigo.FieldByName('COD_DESPADIC').AsInteger := XCOD_ITDESP + 1;
       DMMACS.TCodigo.Post;
       DMMACS.IBTCodigo.CommitRetaining;
   Except
       DMMACS.IBTCodigo.RollbackRetaining;
   End;

   DMSAIDA.TAlx.Close;// - 05/05/2009:  sql na unha
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('insert into DESPADIC');
  DMSAIDA.TAlx.SQL.Add('(COD_DESPADIC, COD_SERVICO, COD_GERADOR, GERADOR, DESPESA, QTD, VLRREAL, VLRFINAL,');
  DMSAIDA.TAlx.SQL.Add('LUCMOE, LUCPER, VLRTOTFIN, DESCONTO, MARCA, UNIDADE, COD_EQUIPE, COD_FUNCIONARIO)');
  DMSAIDA.TAlx.SQL.Add('values');
  DMSAIDA.TAlx.SQL.Add('(:COD_DESPADIC, :COD_SERVICO, :COD_GERADOR, :GERADOR, :DESPESA, :QTD, :VLRREAL, :VLRFINAL,');
  DMSAIDA.TAlx.SQL.Add(':LUCMOE, :LUCPER, :VLRTOTFIN, :DESCONTO, :MARCA, :UNIDADE, :COD_EQUIPE,');
  DMSAIDA.TAlx.SQL.Add(':COD_FUNCIONARIO)');

   DMSAIDA.TAlx.ParamByName('COD_DESPADIC').AsInteger := XCOD_ITDESP;
   DMSAIDA.TAlx.ParamByName('COD_SERVICO').AsInteger := DMServ.WSubServ.FieldByName('COD_SUBSERVICO').AsInteger;
   DMSAIDA.TAlx.ParamByName('COD_GERADOR').AsInteger := XTabela.FieldByName('COD_PEDVENDA').AsInteger;
   DMSAIDA.TAlx.ParamByName('GERADOR').AsString := 'PEDVENDA';
   DMSAIDA.TAlx.ParamByName('DESPESA').AsString := EdDespesa.Text;
   DMSAIDA.TAlx.ParamByName('DESCONTO').AsCurrency := ( (StrToFloat(EdQtdDesp.Text) * StrToFloat(TiraPonto(EdVlrCobradoDesp.Text))) - StrToFloat(TiraPonto(EdVlrTotalDesp.Text)) );
   DMSAIDA.TAlx.ParamByName('MARCA').AsString := EDMarca.Text;
   DMSAIDA.TAlx.ParamByName('UNIDADE').AsString := EdUnidade.Text;
   DMSAIDA.TAlx.ParamByName('QTD').AsCurrency := EdQtdDesp.ValueNumeric;
   DMSAIDA.TAlx.ParamByName('VLRREAL').AsCurrency := EdVlrCustoDesp.ValueNumeric;
   DMSAIDA.TAlx.ParamByName('VLRFINAL').AsCurrency := EdVlrCobradoDesp.ValueNumeric;
   DMSAIDA.TAlx.ParamByName('VLRTOTFIN').AsCurrency := EdVlrTotalDesp.ValueNumeric;
   DMSAIDA.TAlx.ParamByName('LUCMOE').AsCurrency := EdVlrTotalDesp.ValueNumeric-(EdVlrCustoDesp.ValueNumeric*EdQtdDesp.ValueNumeric);
   DMSAIDA.TAlx.ParamByName('LUCPER').AsCurrency := ((DMSAIDA.TAlx.ParamByName('LUCMOE').AsCurrency*100)/(EdVlrCustoDesp.ValueNumeric*EdQtdDesp.ValueNumeric));


   {
	XCOD_ITDESP:=InserReg(DMESTOQUE.TDesp, 'DESPADIC', 'COD_DESPADIC');
   DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger:=XCOD_ITDESP;
   DMESTOQUE.TDesp.FieldByName('COD_GERADOR').AsInteger:=XTabela.FieldByName('COD_PEDVENDA').AsInteger;
   DMESTOQUE.TDesp.FieldByName('GERADOR').AsString:='PEDVENDA';
   DMESTOQUE.TDesp.FieldByName('DESPESA').AsString:=EdDespesa.Text;
   DMESTOQUE.TDesp.FieldByName('DESCONTO').AsCurrency := ( (StrToFloat(EdQtdDesp.Text) * StrToFloat(EdVlrCobradoDesp.Text)) - StrToFloat(EdVlrTotalDesp.Text) );
   DMESTOQUE.TDesp.FieldByName('MARCA').AsString:=EDMarca.Text;
   DMESTOQUE.TDesp.FieldByName('UNIDADE').AsString:=EdUnidade.Text;
   DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency:=EdQtdDesp.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency:=EdVlrCustoDesp.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency:=EdVlrCobradoDesp.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency:=EdVlrTotalDesp.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency:=EdVlrTotalDesp.ValueNumeric-(EdVlrCustoDesp.ValueNumeric*EdQtdDesp.ValueNumeric);
   DMESTOQUE.TDesp.FieldByName('LUCPER').AsCurrency:=((DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency*100)/(EdVlrCustoDesp.ValueNumeric*EdQtdDesp.ValueNumeric));

   DMESTOQUE.TDesp.Post;

   }
   Try
      DMSAIDA.TAlx.ExecSQL;
      DMESTOQUE.TransacEstoque.CommitRetaining;
      DMSAIDA.IBT.CommitRetaining;
   Except
      DMESTOQUE.TransacEstoque.RollbackRetaining;
      DMSAIDA.IBT.RollbackRetaining;
      Mensagem('Mzr Sistemas - INFORMAÇÃO', 'A despesa inserida foi perdida. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
   End;
   LimpaLabelsDESP;
   FiltraSlave;
   //a opção de selecionar a classificação do serviço
   if DMMACS.TLoja.FieldByName('EXIBECLASSSERV').AsString = '1' then
       DbServicoClassificacao.SetFocus
   Else
       EdDespesa.SetFocus;
end;

procedure TFPedVenda.ConsultaNDocFiscal1Click(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
   If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF' Then
		MessageDlg('Nº Próx. NF: '+DMMACS.TEmpresa.FieldByName('PROX_NF').AsString, mtInformation, [mbOK], 0)
   Else
   	MessageDlg('Este recurso esta disponível apenas para Notas Fiscais.', mtWarning, [mbOK], 0);
end;

procedure TFPedVenda.AlteraNDocFiscal1Click(Sender: TObject);
Var
	NovoNum: String;
   Flag: Integer;
begin
  inherited;
  	Flag:=0;
   While Flag=0 do
   Begin
		If InputQuery('ALTERANDO O Nº DA NF','Informe o novo Nº para próxima Nota Fiscal', NovoNum)=True
   	Then Begin
       	Try
				StrToInt(NovoNum);
               DMMACS.TALX.Close;
               DMMACS.TALX.SQL.Clear;
               DMMACS.TALX.SQL.Add(' select * from docfissaida ');
               DMMACS.TALX.SQL.Add(' where docfissaida.numdocfis=:CODIGO ');
               DMMACS.TALX.ParamByName('CODIGO').AsString:=NovoNum;
               DMMACS.TALX.Open;
               If Not DMMACS.TALX.IsEmpty
               Then Begin
					MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                   Exit;
               End;
               //VERIFICA C JAH EXISTE DOCUMENTO IMPRESSO EM COMPRAS
               DMMACS.TALX.Close;
               DMMACS.TALX.SQL.Clear;
               DMMACS.TALX.SQL.Add(' select * from docfis ');
               DMMACS.TALX.SQL.Add(' where (docfis.numdocfis=:CODIGO)  AND (docfis.empemit='+#39'1'+#39+')  ');
               DMMACS.TALX.ParamByName('CODIGO').AsString:=NovoNum;
               DMMACS.TALX.Open;
               If Not DMMACS.TALX.IsEmpty
               Then Begin
					MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                   Exit;
               End;
               Flag:=1;
				FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
   			DMMACS.TEmpresa.Edit;
			   	DMMACS.TEmpresa.FieldByName('PROX_NF').AsString:=NovoNum;
   			DMMACS.TEmpresa.Post;
   			DMMACS.Transaction.CommitRetaining;
           Except
           	MessageDlg('O novo Nº não foi aprovado!'+#13+#10+'Entre com outro valor inteiro.', mtWarning, [mbOK], 0);
           End;
       End
       Else Begin
           Flag:=1;
       End;
	End;
end;

procedure TFPedVenda.BtnDevolucaoClick(Sender: TObject);
begin
  inherited;
   PMDevolucao.Popup(BtnDevolucao.Left+Left+160, BtnDevolucao.Top+Top+85);
end;

procedure TFPedVenda.DevoluoTotal1Click(Sender: TObject);
begin
  inherited;
   FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');

  If XView.FieldByName('SITUACAO').AsString = 'CANCELADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O Pedido já foi Cancelado!', '', 1, 1, False, 'a');
       Exit;
   End;
	If XView.FieldByName('SITUACAO').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido não se encontra fechado! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
       Exit;
   End;

	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente efetuar a devolução total do Pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
       XCod_PedVendaDev:=XView.FieldByName('COD_PEDVENDA').AsInteger;
       If DevTotPed(XView.FieldByName('COD_PEDVENDA').AsInteger)=True
       Then Begin
           // DEVOLUÇÃO TOTAL DO PEDIDO TEM OS REGISTROS DA TABELA COMISSAO APAGADOS
           DMFINANC.TComis.Close;
           DMFINANC.TComis.SQL.Clear;
           DMFINANC.TComis.SQL.Add('delete from comissao where (comissao.cod_gerador = :codigo) and (comissao.gerador = ' + #39 + 'PEDVENDA' + #39 + ')');
           DMFINANC.TComis.ParamByName('CODIGO').AsInteger := XCod_PedVendaDev;
           DMFINANC.TComis.ExecSQL;

           DMSAIDA.IBT.CommitRetaining;
           DMESTOQUE.TransacEstoque.CommitRetaining;
           DMESTOQUE.TransacEstoque.CommitRetaining;
           DMFINANC.Transaction.CommitRetaining;
           DMENTRADA.IBT.CommitRetaining;
           DMMACS.Transaction.CommitRetaining;
			     Mensagem('INFORMAÇÃO', 'Devolução total realizada com sucesso!', '', 1, 1, False, 'a');
			ExecutaLiberaDados;
       End;
   End;
end;

// calcula comissão referente ao que foi inserido na tabela coissao e nao do produto
Procedure TFPedVenda.CalculaComissaoVendedor;
begin
   XQTDE_PROD := 0;
   XSUBTOTAL := 0;   

   // busca os registros na tabela comissao referente ao pedido de venda
   FiltraTabela(DMFINANC.TComis,'COMISSAO','COD_GERADOR',DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString,'');

   // PRIMEIRO REGISTRO
   DMFINANC.TComis.First;

   // ou seja, nao foi selecionado comissionado e na loja esta configurado para buscar valor de porcentagem da edit
   If (DMSAIDA.TPedV.FieldByName('ATU').AsString <> '1') and (DMMacs.Tloja.FieldByName('COMISSPRODCADPROD').AsString <> '1')
   Then Begin
       // BUSCA TODOS OS ITENS DO PEDIDO DE VENDA ATUAL
       FiltraTabela(DMSAIDA.TItemPV,'ITENSPEDVEN','COD_PEDVEN',DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString,'');

       DMSAIDA.TItemPV.First;

       While not DMSAIDA.TItemPV.Eof do
       begin
           // VALOR UNITARIO DA COMISSAO, OU SEJA, TOTAL DA COMISSAO DIVIDIDO PELA QUANTIDADE DE PRODUTO
           XVLRUNIT_COMIS := DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency / DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency;

           XSUBTOTAL := XSUBTOTAL + (XVLRUNIT_COMIS * (DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency - DMSAIDA.TItemPV.FieldByName('QTDDEV').AsCurrency));

           DMSAIDA.TItemPV.Edit;
           DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency := (XVLRUNIT_COMIS * (DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency - DMSAIDA.TItemPV.FieldByName('QTDDEV').AsCurrency));
           DMSAIDA.TItemPV.Post;

       // PROXIMO ITEM DE VENDA
       DMSAIDA.TItemPV.Next;
       End;

       // passa por todos os registros de comissao
       while not DMFINANC.TComis.Eof do
       begin
           DMFINANC.TComis.Edit;
           DMFINANC.TComis.FieldByName('VLRCOMISPROD').AsCurrency := XSUBTOTAL;
           DMFINANC.TComis.Post;
       // PROXIMO REGISTRO DE COMISSAO
       DMFINANC.TComis.Next;
       end;

       // PASSANDO PARA VARIAVEL O CODIGO DA PEDIDO ATUAL
       XCod_PedVendaDev := DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger;

       // busca o pedido de venda atual para atualizar o valor de comissao
       FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',IntToStr(XCod_PedVendaDev),'');
       DMSAIDA.TPedV.Edit;
       DMSAIDA.TPedV.FieldByName('VLRCOMIS').AsCurrency := XSUBTOTAL;
       DMSAIDA.TPedV.Post;

       DMSAIDA.IBT.CommitRetaining;

       Exit;
   End;

   //*************************************************************************************************
   // FAZ CALCULO DOS ITENS DO PEDIDO E ATUALIZA TABELAS PARA OS COMISSIONADOS DO PEDIDO
   //*************************************************************************************************

   // passa por todos os itens para calcular o total
   While Not DMSAIDA.TItemPV.Eof do
   begin
       // VERIFICA SE EXISTE QTDE JAH DEVOLVIDA
       If DMSAIDA.TItemPV.FieldByName('QTDDEV').AsString <> ''
       Then Begin
           XQTDE_PROD := DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsInteger - DMSAIDA.TItemPV.FieldByName('QTDDEV').AsInteger;
       End
       Else Begin
           XQTDE_PROD := DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsInteger;
       End;

       // ACUMULANDO SUBTOTAL DOS PRODUTOS QUE NÃO FORAM DEVOLVIDOS
       XSUBTOTAL := XSUBTOTAL + (XQTDE_PROD * DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency);

   // proximo item
   DMSAIDA.TItemPV.Next;
   end;

   // ENQUANTO NAO FOR O FINAL DOS REGISTRO DE COMISSAO
   While Not DMFINANC.TComis.Eof do
   begin
       DMFINANC.TComis.Edit;
       DMFINANC.TComis.FieldByName('VLRCOMISPROD').AsCurrency := (DMFINANC.TComis.FieldByName('PERPROD').AsCurrency * XSUBTOTAL) / 100;
       DMFINANC.TComis.Post;
   // PROXIMO REGISTRO DE COMISSAO
   DMFINANC.TComis.Next;
   end;

   // PASSANDO PARA VARIAVEL O CODIGO DA PEDIDO ATUAL
   XCod_PedVendaDev := DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger;

   // busca o pedido de venda atual para atualizar o valor de comissao
   FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',IntToStr(XCod_PedVendaDev),'');
   DMSAIDA.TPedV.Edit;
   DMSAIDA.TPedV.FieldByName('VLRCOMIS').AsCurrency := (DMFINANC.TComis.FieldByName('PERPROD').AsCurrency * XSUBTOTAL) / 100;
   DMSAIDA.TPedV.Post;

   DMSAIDA.IBT.CommitRetaining;
end;


// ATUALIZA O VALOR DA COMISSÃO APOS FAZER A DEVOLUÇÃO PARCIAL
Procedure TFPedVenda.AtualizaComissao;
begin

   // BUSCA TODOS OS ITENS DO PEDIDO DE VENDA ATUAL
   FiltraTabela(DMSAIDA.TItemPV,'ITENSPEDVEN','COD_PEDVEN',DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString,'');

   // se estiver valendo 1 eh pq foi inserido comissionado no pedido e calculo de comissao sera do valor que foi informado na edit do comissionado e nao no valor de porcentagem do produto
   If DMSAIDA.TPedV.FieldByName('ATU').AsString = '1'
   Then Begin
      // calcula comissão referente ao que foi inserido na tabela comissao e nao do produto
      CalculaComissaoVendedor;
   End
   Else Begin
       // verifica se na loja estah configurado para buscar porcentagem do produto
       If DMMacs.Tloja.FieldByName('COMISSPRODCADPROD').AsString = '1'
       Then Begin
           // zerando variavel que armazena vlr comissao
           XVLRCOMIS := 0;

           // primeiro registro da tabela itenspedven
           DMSAIDA.TItemPV.First;

           // BUSCANDO A FORMA DE PAGAMENTO
           FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',DMSAIDA.TPedV.FieldByName('COD_FORMPAG').AsString,'');

           WHILE NOT DMSAIDA.TItemPV.Eof do
           Begin
               // filtra estoque para buscar os valores das porcentagens das comissoes
               FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMSAIDA.TItemPV.FieldByname('cod_estoque').AsString,'');

               // VERIFICA SE EXISTE QTDE DEVOLVIDA
               If DMSAIDA.TItemPV.FieldByName('QTDDEV').AsString <> ''
               Then Begin
                   XQTDE_PROD := DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsInteger - DMSAIDA.TItemPV.FieldByName('QTDDEV').AsInteger;
                   XSUBTOTAL := XQTDE_PROD * DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency;
               End
               Else Begin
                   // se não houve devolução a variavel apenas recebe o valor total do item
                   XSUBTOTAL := DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency * DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsInteger;
               End;

               // atualizando a comissao de cada produto
               DMSAIDA.TItemPV.Edit;

               If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA'
               Then Begin
                   //FORMA DE PAGAMENTO À VISTA É CALCULA COMISSÃO REFERENTE A VISTA
                   XVLRCOMIS:= XVLRCOMIS + (XSUBTOTAL * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) /100;

                   DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency := (XSUBTOTAL * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) /100;
               End
               Else Begin
                   //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                   XVLRCOMIS:= XVLRCOMIS + (XSUBTOTAL * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;

                   DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency := (XSUBTOTAL * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
               End;

               DMSAIDA.TItemPV.Post;

           // proximo item do pedido
           DMSAIDA.TItemPV.Next;
           End;

           // busca os registros na tabela comissao referente ao pedido de venda
           FiltraTabela(DMFINANC.TComis,'COMISSAO','COD_GERADOR',DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString,'');

           // PRIMEIRO REGISTRO
           DMFINANC.TComis.First;

           // ENQUANTO NAO FOR O FINAL DOS REGISTRO DE COMISSAO
           While Not DMFINANC.TComis.Eof do
           begin
               DMFINANC.TComis.Edit;
               DMFINANC.TComis.FieldByName('VLRCOMISPROD').AsCurrency := XVLRCOMIS;
               DMFINANC.TComis.Post;

           // PROXIMO REGISTRO DE COMISSAO
           DMFINANC.TComis.Next;
           end;

           // PASSANDO PARA VARIAVEL O CODIGO DA PARCELA ATUAL
           XCod_PedVendaDev := DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger;

           // busca o pedido de venda atual para atualizar o valor de comissao
           FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',IntToStr(XCod_PedVendaDev),'');
           DMSAIDA.TPedV.Edit;
           DMSAIDA.TPedV.FieldByName('VLRCOMIS').AsCurrency := XVLRCOMIS;
           DMSAIDA.TPedV.Post;

           DMSAIDA.IBT.CommitRetaining;
       End
       Else Begin
           // calcula comissão referente ao que foi inserido na tabela coissao e nao do produto
           CalculaComissaoVendedor;
       End;
   End;
end;

procedure TFPedVenda.BitBtn13Click(Sender: TObject);
Var
	XCodSlaveDev: Integer;
begin
  inherited;
   MessageDlg('A T E N Ç Ã O!!!'+#13+#10+'Após este produto ser devolvido, não haverá como cancelar esta operação!', mtWarning, [mbOK], 0);
   If MessageDlg('Deseja realmente devolver a quantidade indicada deste produto?', mtConfirmation, [mbYes, mbNo], 0)=mrno Then
       Exit;
	If DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString<>'DVL'
   Then Begin
       If DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsCurrency<EdQtdProdDev.ValueNumeric
       Then Begin
           MessageDlg('A quantidade vendida deste produto não suporta a quantidade pretendida para devolução"', mtWarning, [mbOK], 0);
           Exit;
       End;

   	//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
       FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
       FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
       FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsString, '');
       DMSAIDA.TItemPV.Edit;
       DMSAIDA.TItemPV.FieldByName('OPERACAO').AsString:='DVL';
//       DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=0;
       DMSAIDA.TItemPV.FieldByName('QTDDEV').AsCurrency:=EdQtdProdDev.ValueNumeric;
		DMSAIDA.TItemPV.FieldByName('VALCOMP').AsCurrency:=(DMSAIDA.TItemPV.FieldByName('VALCOMP').AsCurrency/DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency)*(DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency-DMSAIDA.TItemPV.FieldByName('QTDDEV').AsCurrency);
       DMSAIDA.TItemPV.FieldByName('VLRUNITDEV').AsCurrency:=EdvlrUnitProdDev.ValueNumeric;
		DMSAIDA.TItemPV.FieldByName('LUCMOE').AsCurrency:=(DMSAIDA.TItemPV.FieldByName('VALREP').AsCurrency/DMSAIDA.TItemPV.FieldByName('COEFDIV').AsCurrency)*(DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency-DMSAIDA.TItemPV.FieldByName('QTDDEV').AsCurrency);
       DMSAIDA.TItemPV.Post;

       //INSERE PRODUTO EM ITENS DE PEDIDO DE COMPRA
       XCodSlaveDev:=InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');
       DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger:=XCodSlaveDev;
       DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger:=XCod_PedCompra;
       DMENTRADA.TItemPC.FieldByName('COD_DEVOLUCAO').AsInteger:=DMSAIDA.TItemPV.FieldByName('COD_ITENSPEDVEN').AsInteger;
       DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency:=DMSAIDA.TItemPV.FieldByName('ALIQICMS').AsCurrency;
       DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency:=EdvlrUnitProdDev.ValueNumeric*EdQtdProdDev.ValueNumeric;
       DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency:=(XTabSlave.FieldByName('BASEICMS').AsCurrency*DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency)/100;
       DMENTRADA.TItemPC.FieldByName('REDUCBASEICMS').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency:=DMSAIDA.TItemPV.FieldByName('ALIQIPI').AsCurrency;
       DMENTRADA.TItemPC.FieldByName('VLRIPI').AsCurrency:=(DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency*DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency)/100;
       DMENTRADA.TItemPC.FieldByName('FRETE').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('EMBPROD').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger:=XCod_PedCompra;
       DMENTRADA.TItemPC.FieldByName('DATA').AsString:=DateToStr(Date());
       DMENTRADA.TItemPC.FieldByName('QTDEST').AsCurrency:=EdQtdProdDev.ValueNumeric;
       DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger:=DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger;
       DMENTRADA.TItemPC.FieldByName('COD_LOTE').AsInteger:=DMSAIDA.TItemPV.FieldByName('COD_LOTE').AsInteger;
       DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency:=EdQtdProdDev.ValueNumeric;
       DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency:=0;
       DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency:=EdvlrUnitProdDev.ValueNumeric;
       DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency:=EdvlrUnitProdDev.ValueNumeric*EdQtdProdDev.ValueNumeric;
		XTotPedDev:=XTotPedDev+(EdvlrUnitProdDev.ValueNumeric*EdQtdProdDev.ValueNumeric);
       DMENTRADA.TItemPC.Post;
       //ATULIZA ESTOQUE
       DMESTOQUE.TEstoque.Edit;
       DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+EdQtdProdDev.ValueNumeric;
       DMESTOQUE.TEstoque.Post;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       //ATULIZA O ESTOQUE DO LOTE
       if DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
       Then Begin
       	//Atualiza o Estoque do Lote
       	DMESTOQUE.TEstoqueLote.Close;
           DMESTOQUE.TEstoqueLote.SQL.Clear;
           DMESTOQUE.TEstoqueLote.SQL.Add('SELECT * FROM ESTOQUELOTE WHERE (ESTOQUELOTE.COD_LOTE=:CODLOTE) and (ESTOQUELOTE.COD_ESTOQUE=:CODESTOQUE)');
           DMESTOQUE.TEstoqueLote.ParamByName('CODLOTE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_LOTE1').AsInteger;
           DMESTOQUE.TEstoqueLote.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
           DMESTOQUE.TEstoqueLote.Open;
           If Not DMESTOQUE.TEstoqueLote.IsEmpty
           Then Begin
           	DMESTOQUE.TEstoqueLote.Edit;
               DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency:=DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency+EdQtdProdDev.ValueNumeric;
               DMESTOQUE.TEstoqueLote.Post;
           End;
       End;
   End;
   Try
       DMENTRADA.IBT.CommitRetaining;
       DMSAIDA.IBT.CommitRetaining;
       FiltraSlaveDev(DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger);
       // ATUALIZA O VALOR DA COMISSÃO APOS FAZER A DEVOLUÇÃO PARCIAL
       AtualizaComissao;
       DMFINANC.Transaction.CommitRetaining;
   Except
       DMENTRADA.IBT.RollbackRetaining;
       DMFINANC.Transaction.CommitRetaining;
       DMSAIDA.IBT.RollbackRetaining;
   End;
   PDevolveItem.Visible:=False;
   BtnDevolveItem.SetFocus;
end;

procedure TFPedVenda.DevoluoParcial1Click(Sender: TObject);
begin
  inherited;
   FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');
	If XView.FieldByName('SITUACAO').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido não se encontra fechado! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
       Exit;
   End;

	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente efetuar a devolução parcial do Pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
       XCod_PedVendaDev:=XView.FieldByName('COD_PEDVENDA').AsInteger;
       DevParcPed(XView.FieldByName('COD_PEDVENDA').AsInteger);
   End;

end;

procedure TFPedVenda.BtnDevolveItemClick(Sender: TObject);
begin
  inherited;

  IF DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsCurrency <= 0
  Then Begin
   MessageDlg('Quantidade de produto não suportada.', mtWarning, [mbOK], 0);
   Exit;
  End;
   DBTCodigoDev.DataField:='CONTRINT';
   DBTProddev.DataField:='DESCRICAO';
   DBTQtdDev.DataField:='QTDEPROD';
   PDevolveItem.Visible:=True;
   PDevolveItem.BringToFront;
   // - 21/05/2009: antes estava pegando o valor unitário não levando em conta o desconto que poderia ser dado no produto
   EdvlrUnitProdDev.ValueNumeric:=(DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency/DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsCurrency);
   EdQtdProdDev.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsCurrency;
   EdQtdProdDev.SetFocus;
end;

procedure TFPedVenda.BitBtn14Click(Sender: TObject);
begin
  inherited;
   PDevolveItem.Visible:=False;
   BtnDevolveItem.SetFocus;
end;

procedure TFPedVenda.PDevolveItemExit(Sender: TObject);
begin
  inherited;
	If PDevolveItem.Visible=True Then
       EdQtdProdDev.SetFocus;
end;

procedure TFPedVenda.BitBtn5Click(Sender: TObject);
begin
  inherited;
	Try
   	//VERIFICA TOTAL DE ITENS DEVOLVIDOS
 		DMESTOQUE.Alx.Close;
		DMESTOQUE.Alx.SQL.Clear;
		DMESTOQUE.Alx.SQL.Add('Select SUM(ITENSPEDC.valortotal) AS VALOR ');
		DMESTOQUE.Alx.SQL.Add('From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.Alx.SQL.Add('left join lote on itenspedc.cod_lote = lote.cod_lote ');
		DMESTOQUE.Alx.SQL.Add('Where itenspedc.cod_pedcompra = :CODPEDVENDA ');
		DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsInteger:=XCod_PedCompra;
		DMESTOQUE.Alx.Open;

      	//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   	If FiltraTabela(DMSAIDA.TAlx, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString+#39+')')=True
   	Then Begin

       	//INSERE FISCAL EM PEDIDO DE COMPRA
	        XCOD_FISCAL:=InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC');
           FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_CFOPDEV').AsString, '');
       	DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsInteger:=XCod_PedCompra;
       	DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger:=XCOD_FISCAL;
       	DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsInteger:= VerificaCFOPDevolucao(DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger); //  DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
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
       	DMENTRADA.TFiscPC.FieldByName('VLRTOTPROD').AsCurrency:=DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
       	DMENTRADA.TFiscPC.FieldByName('VLRTOTDOCNF').AsCurrency:=DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
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
//       CancelaFinacParc(DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString, xvlr)

       DMENTRADA.TPedC.Edit;
      	DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency:=DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
      	DMENTRADA.TPedC.Post;

  		DMSAIDA.IBT.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMENTRADA.IBT.CommitRetaining;
       DMMACS.Transaction.CommitRetaining;
		Mensagem('INFORMAÇÃO', 'Devolução parcial realizada com sucesso!', '', 1, 1, False, 'a');
       PDevParc.Visible:=False;
       EdNumPed.SetFocus;
		ExecutaLiberaDados;
       DBTCodigoDev.DataField:='';
       DBTProddev.DataField:='';
       DBTQtdDev.DataField:='';

   Except
   End;
end;

procedure TFPedVenda.BitBtn12Click(Sender: TObject);
begin
  inherited;
	IniciaPagamento('PEDVENDA', DMSAIDA.WPedV.FieldByName('cod_pedvenda').AsInteger);

	 If xResultadoPagamento = False Then
		Exit;

	If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
		Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
			OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
				OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
					AND (DMSAIDA.TPedV.FieldByName('EXPORTA').AsInteger<>55)
					Then Begin
                       If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '')=True then
                       begin
                           //Imprime Nota Fiscal
                           If MessageDlg('Impressora Pronta?', mtConfirmation, [mbYes, mbNo], 0) = mryes
                           Then Begin
                               FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', DMSAIDA.WPedV.FieldByName('cod_pedvenda').AsString, '');
                               AbreFiscal;
                           End;
                       end;
					End;
   				ExecutaLiberaDados;

	//ALEX 19/05/2017?=: TODO O TRECHO DE CÓDIGO ABA ESTA SENDIXOO DESATIVADO POR NÃO ESTAR MAIS EM USO
	{
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('TELACOMIS', 'M')=False Then
  		Exit;

	 FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');
    FMENU.TIPOAUX:='PEDVENDA';
    If (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1')
    Then Begin
    	//A base de cálculo utilizada para comissão deve ser a mesma trazido da informada no momento da inserção do produto
       FMenu.TITULOREL:='A B. de Cálc. para prod. se refere a soma das Comis. dos produtos inseridos em pedido.';
       LVlrComissao.Hint:='Comissão referente ao cálculo das comissões em produto.';
		//Calcula Total
		//INSERE COMANDOS PARA FILTRAR
		DMESTOQUE.Alx.Close;
		DMESTOQUE.Alx.SQL.Clear;
		DMESTOQUE.Alx.SQL.Add('Select SUM(itenspedven.comissao) AS COMISSAO From itenspedven');
		DMESTOQUE.Alx.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA)');
		DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString:=DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString;
		DMESTOQUE.Alx.Open;
       If Not DMESTOQUE.Alx.IsEmpty
       Then Begin
           FMenu.XBCPROD:=DMESTOQUE.Alx.FieldByName('COMISSAO').AsCurrency;
      		LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', XVLRCOMIS);
       End
       Else Begin
       	FMenu.XBCPROD:=0;
			LVlrComissao.Caption:='Vlr. Comissão..: 0,00';
       End;
	 End
    Else Begin
    	//A base de cálculo utilizada para comissão deve ser referente ao total informada na edit
       FMenu.TITULOREL:='A Base de Cálc. para produtos se refere ao total do pedido.';
    	FMenu.XBCPROD:=EdValorPed.ValueNumeric;
    End;
    FMenu.XCOUNRECORD:=XTabela.FieldByName(XPkTabela).AsInteger;
    FMenu.XBCSERV:=0;
    AbrirForm(TFComissao, FComissao, 0);
    FiltraSlave;}
end;

procedure TFPedVenda.Gerarnovopedido1Click(Sender: TObject);
Var
	XCod_Cabecalho: Integer; // Armazena temporariamente o codigo do pedido para depois recuperar
begin
  inherited;
	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente gerar novo pedido?'+#13+'Pedido base Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
   	//Seleciona Cabecalho do pedido
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('Select * from pedvenda Where Pedvenda.Cod_Pedvenda=:Codigo');
       DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger:=DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
       DMESTOQUE.Alx.Open;
       If Not DMESTOQUE.Alx.IsEmpty
       Then Begin
           XCod_Cabecalho:=DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
       End
       Else begin
			exit;
       End;

		//Aciona novo Pedido
       BtnNovo.Click;
       XCodPedido:=FMenu.XCodPesqPresSel;//recebe o codigo do novo pedido gerado
   	//Seleciona Cabecalho do pedido
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('Select * from pedvenda Where Pedvenda.Cod_Pedvenda=:Codigo');
       DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger:=XCod_Cabecalho;
       DMESTOQUE.Alx.Open;
       //Informa Cabeçalho do Pedido
       XTabela.Edit;
       XTabela.FieldByName('COD_CLIENTE').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_CLIENTE').AsInteger;
       XTabela.FieldByName('DTPEDVEN').AsDateTime:=Date();
		DBDATA.Text:=DateToStr(Date());
       XTabela.FieldByName('COD_PEDVENDA').AsInteger;
       XTabela.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
       XTabela.FieldByName('COD_FORMPAG').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_FORMPAG').AsInteger;
       XTabela.FieldByName('VALOR').AsCurrency:=DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
       XTabela.FieldByName('NOMECLI').AsString:=DMESTOQUE.Alx.FieldByName('NOMECLI').AsString;
       XTabela.FieldByName('OBS').AsString:=DMESTOQUE.Alx.FieldByName('OBS').AsString;
       XTabela.FieldByName('CPFCNPJ').AsString:=DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString;
       XTabela.FieldByName('COD_VENDEDOR').AsString:=DMESTOQUE.Alx.FieldByName('COD_VENDEDOR').AsString;
       If FMenu.XRemessaGarantia=True Then
			XTabela.FieldByName('TIPO').AsString:='GAR';
       If FMenu.XSimplesRemessa=True Then
			XTabela.FieldByName('TIPO').AsString:='REM';
       If (FMenu.XRemessaGarantia=false) and (FMenu.XSimplesRemessa=True) Then
			XTabela.FieldByName('TIPO').AsString:='VND';

       XTabela.Post;
		////////////////////
       //INSERE OS PRODUTOS
       ////////////////////
       If Not DMESTOQUE.Alx.IsEmpty
       Then Begin
       	//Seleciona Produtos do Pedido
       	DMESTOQUE.Alx1.Close;
       	DMESTOQUE.Alx1.SQL.Clear;
       	DMESTOQUE.Alx1.SQL.Add('Select * from itenspedven Where itenspedven.cod_pedven=:codigo');
       	DMESTOQUE.Alx1.ParamByName('CODIGO').AsInteger:=DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
       	DMESTOQUE.Alx1.Open;
       End;
       DMESTOQUE.Alx1.First;
       While Not DMESTOQUE.Alx1.Eof DO
       Begin

       	//Insere Item
           Try
               DMSAIDA.TAlx.Close;//05/05/2009:  sql na unha
               DMSAIDA.TAlx.SQL.Clear;
               DMSAIDA.TAlx.SQL.Add('insert into ITENSPEDVEN');
               DMSAIDA.TAlx.SQL.Add('(COD_PEDVEN, COD_ESTOQUE, QTDEPROD, DESCPRO, COD_FUNCIONARIO,');
               DMSAIDA.TAlx.SQL.Add('VALUNIT, VALCUSTO, VALORTOTAL,COD_LOTE, ATUEST, VALREP, COEFDIV, VALCOMP, COD_CST, LUCPER,');
               DMSAIDA.TAlx.SQL.Add('LUCMOE, DATA, COMISSAO, OPERACAO, LUCREL, VLRVENDBD, QTDDEV, NUMITEM,');
               DMSAIDA.TAlx.SQL.Add(' ALIQICMS, BASEICMS, VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI,');
               DMSAIDA.TAlx.SQL.Add('REDUCBASEICMS, VLRICMSSUBS, VLRUNITDEV, QTDENTREGUE, COD_UNIDADE, QTDEMB,');
               DMSAIDA.TAlx.SQL.Add('UNIDEMB, QTDNAEMB, CFOP, TIPOLISTA, IPNPMC, IPNMVA)');
               DMSAIDA.TAlx.SQL.Add('values');
               DMSAIDA.TAlx.SQL.Add('(:COD_PEDVEN, :COD_ESTOQUE, :QTDEPROD, :DESCPRO, :COD_FUNCIONARIO,');
               DMSAIDA.TAlx.SQL.Add(':VALUNIT, :VALCUSTO, :VALORTOTAL, :COD_LOTE, :ATUEST, :VALREP, :COEFDIV, :VALCOMP, :COD_CST, ');
               DMSAIDA.TAlx.SQL.Add(':LUCPER, :LUCMOE, :DATA, :COMISSAO, :OPERACAO, :LUCREL, :VLRVENDBD,');
               DMSAIDA.TAlx.SQL.Add(':QTDDEV, :NUMITEM, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS,');
               DMSAIDA.TAlx.SQL.Add(':VLRIPI, :ALIQIPI, :REDUCBASEICMS, :VLRICMSSUBS, :VLRUNITDEV, :QTDENTREGUE,');
               DMSAIDA.TAlx.SQL.Add(':COD_UNIDADE, :QTDEMB, :UNIDEMB, :QTDNAEMB, :CFOP, :TIPOLISTA, :IPNPMC,:IPNMVA)');
               DMSAIDA.TAlx.ParamByName('COD_PEDVEN').AsInteger := StrToInt(XCodPedido);
               DMSAIDA.TAlx.ParamByName('COD_ESTOQUE').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger;
               DMSAIDA.TAlx.ParamByName('QTDEPROD').AsCurrency:=DMESTOQUE.Alx1.FieldByName('QTDEPROD').AsCurrency;
               DMSAIDA.TAlx.ParamByName('DESCPRO').AsCurrency:=DMESTOQUE.Alx1.FieldByName('DESCPRO').AsCurrency;
               DMSAIDA.TAlx.ParamByName('COD_FUNCIONARIO').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_FUNCIONARIO').AsInteger;
               DMSAIDA.TAlx.ParamByName('VALUNIT').AsCurrency:=DMESTOQUE.Alx1.FieldByName('VALUNIT').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VALCUSTO').AsCurrency:=DMESTOQUE.Alx1.FieldByName('VALCUSTO').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VALORTOTAL').AsCurrency:=DMESTOQUE.Alx1.FieldByName('VALORTOTAL').AsCurrency;
               DMSAIDA.TAlx.ParamByName('COD_LOTE').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_LOTE').AsInteger;
               DMSAIDA.TAlx.ParamByName('ATUEST').AsString:=DMESTOQUE.Alx1.FieldByName('ATUEST').AsString;
               DMSAIDA.TAlx.ParamByName('VALREP').AsCurrency:=DMESTOQUE.Alx1.FieldByName('VALREP').AsCurrency;
               DMSAIDA.TAlx.ParamByName('COEFDIV').AsCurrency:=DMESTOQUE.Alx1.FieldByName('COEFDIV').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VALCOMP').AsCurrency:= DMESTOQUE.Alx1.FieldByName('VALCOMP').AsCurrency;
               DMSAIDA.TAlx.ParamByName('COD_CST').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_CST').AsInteger;
               DMSAIDA.TAlx.ParamByName('LUCPER').AsCurrency:= DMESTOQUE.Alx1.FieldByName('LUCPER').AsCurrency;
               DMSAIDA.TAlx.ParamByName('LUCMOE').AsCurrency:= DMESTOQUE.Alx1.FieldByName('LUCMOE').AsCurrency;
               DMSAIDA.TAlx.ParamByName('DATA').AsString:= DMESTOQUE.Alx1.FieldByName('DATA').AsString;
               DMSAIDA.TAlx.ParamByName('COMISSAO').AsCurrency:= DMESTOQUE.Alx1.FieldByName('COMISSAO').AsCurrency;
               DMSAIDA.TAlx.ParamByName('OPERACAO').AsString:=DMESTOQUE.Alx1.FieldByName('OPERACAO').AsString;
               DMSAIDA.TAlx.ParamByName('LUCREL').AsCurrency:=DMESTOQUE.Alx1.FieldByName('LUCREL').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VLRVENDBD').AsCurrency:= DMESTOQUE.Alx1.FieldByName('VLRVENDBD').AsCurrency;
               DMSAIDA.TAlx.ParamByName('QTDDEV').AsCurrency:= DMESTOQUE.Alx1.FieldByName('QTDDEV').AsCurrency;
               DMSAIDA.TAlx.ParamByName('NUMITEM').AsString:= DMESTOQUE.Alx1.FieldByName('NUMITEM').AsString;
               DMSAIDA.TAlx.ParamByName('ALIQICMS').AsCurrency:=DMESTOQUE.Alx1.FieldByName('ALIQICMS').AsCurrency;
               DMSAIDA.TAlx.ParamByName('BASEICMS').AsCurrency:= DMESTOQUE.Alx1.FieldByName('BASEICMS').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VLRICMS').AsCurrency:= DMESTOQUE.Alx1.FieldByName('VLRICMS').AsCurrency;
               DMSAIDA.TAlx.ParamByName('BASEICMSSUBS').AsCurrency:=DMESTOQUE.Alx1.FieldByName('BASEICMSSUBS').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VLRIPI').AsCurrency:= DMESTOQUE.Alx1.FieldByName('VLRIPI').AsCurrency;
               DMSAIDA.TAlx.ParamByName('ALIQIPI').AsCurrency:=DMESTOQUE.Alx1.FieldByName('ALIQIPI').AsCurrency;
               DMSAIDA.TAlx.ParamByName('REDUCBASEICMS').AsCurrency:=DMESTOQUE.Alx1.FieldByName('REDUCBASEICMS').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VLRICMSSUBS').AsCurrency:= DMESTOQUE.Alx1.FieldByName('VLRICMSSUBS').AsCurrency;
               DMSAIDA.TAlx.ParamByName('VLRUNITDEV').AsCurrency:=DMESTOQUE.Alx1.FieldByName('VLRUNITDEV').AsCurrency;
               DMSAIDA.TAlx.ParamByName('QTDENTREGUE').AsCurrency:=DMESTOQUE.Alx1.FieldByName('QTDENTREGUE').AsCurrency;
               DMSAIDA.TAlx.ParamByName('COD_UNIDADE').AsString:= DMESTOQUE.Alx1.FieldByName('COD_UNIDADE').AsString;
               DMSAIDA.TAlx.ParamByName('QTDEMB').AsCurrency:= DMESTOQUE.Alx1.FieldByName('QTDEMB').AsCurrency;
               DMSAIDA.TAlx.ParamByName('UNIDEMB').AsString:= DMESTOQUE.Alx1.FieldByName('UNIDEMB').AsString;
               DMSAIDA.TAlx.ParamByName('QTDNAEMB').AsCurrency:= DMESTOQUE.Alx1.FieldByName('QTDNAEMB').AsCurrency;
               DMSAIDA.TAlx.ParamByName('CFOP').AsString:= DMESTOQUE.Alx1.FieldByName('CFOP').AsString;
               DMSAIDA.TAlx.ParamByName('TIPOLISTA').AsString:= DMESTOQUE.Alx1.FieldByName('TIPOLISTA').AsString;
               DMSAIDA.TAlx.ParamByName('IPNPMC').AsCurrency:=  DMESTOQUE.Alx1.FieldByName('IPNPMC').AsCurrency;
               DMSAIDA.TAlx.ParamByName('IPNMVA').AsCurrency:= DMESTOQUE.Alx1.FieldByName('IPNMVA').AsCurrency;
               DMSAIDA.TAlx.ExecSQL;
               If FiltraTabela(DMESTOQUE.TEstoque, 'estoque', 'cod_estoque', DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsString, '' )
               Then Begin
               	Try
                   	DMESTOQUE.TEstoque.Edit;
                   	DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency-DMESTOQUE.Alx1.FieldByName('QTDEPROD').AsCurrency;
                   	DMESTOQUE.TEstoque.Post;
                   Except
                       DMMACS.TALX.Close;
                       DMMACS.TALX.SQL.Clear;
                       DMMACS.TALX.SQL.Add(' Select subproduto.contrint, subproduto.cod_subproduto from subproduto ');
                       DMMACS.TALX.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
                       DMMACS.TALX.SQL.Add(' where estoque.cod_estoque=:codigo ');
                       DMMACS.TALX.ParamByName('codigo').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger;
                       DMMACS.TALX.Open;
                       If Not DMMACS.TALX.IsEmpty Then
                   		MessageDlg('O Estoque do Item de código '+ DMMACS.TALX.FieldByName('contrint').AsString+' não foi atualizado, por favor, atualize manualmente', mtWarning, [mbOK], 0)
                       Else
                   		MessageDlg('Um Item do pedido não teve estoque atualizado, por favor, atualize manualmente', mtWarning, [mbOK], 0);
                   End;
               End;
           Except
               DMMACS.TALX.Close;
               DMMACS.TALX.SQL.Clear;
               DMMACS.TALX.SQL.Add(' Select subproduto.contrint, subproduto.cod_subproduto from subproduto ');
               DMMACS.TALX.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
               DMMACS.TALX.SQL.Add(' where estoque.cod_estoque=:codigo ');
               DMMACS.TALX.ParamByName('codigo').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger;
               DMMACS.TALX.Open;
               If Not DMMACS.TALX.IsEmpty Then
                   MessageDlg('O Item de Estoque de código '+ DMMACS.TALX.FieldByName('contrint').AsString+' não foi inserido na lista, por favor, insira manualmente', mtWarning, [mbOK], 0)
               Else
                   MessageDlg('Um Item da lista não foi devidamente inserido, por favor insira manualmente.', mtWarning, [mbOK], 0);
           End;
           DMESTOQUE.Alx1.Next;
       End;
       /////////////////////////////////
		//SELECIONA DESPESAS PARA INSERIR
       /////////////////////////////////
       If Not DMESTOQUE.Alx.IsEmpty
       Then Begin
       	DMESTOQUE.Alx2.Close;
       	DMESTOQUE.Alx2.SQL.Clear;
       	DMESTOQUE.Alx2.SQL.Add('Select * from despadic where (despadic.gerador='+#39+'PEDVENDA'+#39+') And (despadic.cod_gerador=:CODIGO)');
       	DMESTOQUE.Alx2.ParamByName('CODIGO').AsInteger:=DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
       	DMESTOQUE.Alx2.Open;
       End;

       //INSERE AS DESPESAS
       DMESTOQUE.Alx2.First;
       While Not DMESTOQUE.Alx2.Eof DO
       Begin
       	XCOD_ITDESP:=InserReg(DMESTOQUE.TDesp, 'DESPADIC', 'COD_DESPADIC');
   		DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger:=XCOD_ITDESP;
   		DMESTOQUE.TDesp.FieldByName('COD_GERADOR').AsInteger:=XTabela.FieldByName('COD_PEDVENDA').AsInteger;
   		DMESTOQUE.TDesp.FieldByName('GERADOR').AsString:='PEDVENDA';
   		DMESTOQUE.TDesp.FieldByName('DESPESA').AsString:=DMESTOQUE.Alx2.FieldByName('DESPESA').AsString;
   		DMESTOQUE.TDesp.FieldByName('MARCA').AsString:=DMESTOQUE.Alx2.FieldByName('MARCA').AsString;
   		DMESTOQUE.TDesp.FieldByName('UNIDADE').AsString:=DMESTOQUE.Alx2.FieldByName('UNIDADE').AsString;
   		DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency:=DMESTOQUE.Alx2.FieldByName('QTD').AsCurrency;
   		DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency:=DMESTOQUE.Alx2.FieldByName('VLRREAL').AsCurrency;
   		DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency:=DMESTOQUE.Alx2.FieldByName('VLRFINAL').AsCurrency;
   		DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency:=DMESTOQUE.Alx2.FieldByName('VLRTOTFIN').AsCurrency;
   		DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency:=DMESTOQUE.Alx2.FieldByName('LUCMOE').AsCurrency;
   		DMESTOQUE.TDesp.FieldByName('LUCPER').AsCurrency:=DMESTOQUE.Alx2.FieldByName('LUCPER').AsCurrency;
   		DMESTOQUE.TDesp.Post;
           DMESTOQUE.Alx2.Next;
       End;
       XTransaction.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;


       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('update pedvenda set EDIT =:EDIT');
       DMSAIDA.TAlx.SQL.Add('where pedvenda.COD_PEDVENDA = :COD_PEDVENDA');

       DMSAIDA.TAlx.ParamByName('EDIT').AsString := '0';
       DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(XTabela.FieldByName('COD_PEDVENDA').AsString);

        Try
           DMSAIDA.TAlx.ExecSQL;
           DMSAIDA.IBT.CommitRetaining;
        Except
           DMSAIDA.IBT.RollbackRetaining;
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Erro P1216: Problemas durante a tentativa de gravação, verifique os dados. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
        End;

		//SELECIONA PEDIDO CRIADO EM VIEW PARA SER ABERTO
       FiltraTabela(DMSAIDA.WPedV, 'vwpedv', 'cod_pedvenda', XTabela.FieldByName('COD_PEDVENDA').AsString, '');
		BtnConsultar.Click;
   End;
end;

procedure TFPedVenda.InserirNFiscal1Click(Sender: TObject);
Var
	XNumero: String;
   XCodFiscal, XFlag: Integer;
begin
  inherited;
  If InputQuery('Iserindo Nº Doc. Fiscal','Informe o novo Nº Fiscal:', XNumero)
  Then Begin
  	If XNumero<>''
   Then Begin
		If StrToInt(XNumero)<=0
       Then Begin
			//Numero tem q ser diferente de ''
			Mensagem('A T E N Ç Ã O', 'O Número informado tem que ser um valor numérico maior q zero!', '', 1, 1, False, 'i');
			Exit;
       End;
   End
  	Else Begin
		//Numero tem q ser diferente de ''
		Mensagem('A T E N Ç Ã O', 'O Número informado tem que ser um valor numérico maior q zero!', '', 1, 1, False, 'i');
		Exit;
   End;
   //Verifik c o numero do documento jah naum esta cadastradoinserir
   DMSAIDA.TFiscPV.Close;
   DMSAIDA.TFiscPV.SQL.Clear;
   DMSAIDA.TFiscPV.SQL.Add(' select * from docfissaida where docfissaida.numdocfis=:NUMDOC ');
	DMSAIDA.TFiscPV.ParamByName('NUMDOC').AsString:=XNumero;
	DMSAIDA.TFiscPV.Open;

   IF Not DMSAIDA.TFiscPV.IsEmpty
   Then Begin
		//Caso tenha encontrado um mesmo numero de documento fiscal cadastrado
		Mensagem('A T E N Ç Ã O', 'O Número informado já se encontra cadastrado!'+#13+'Informe um Nº ainda não cadastrado!', '', 1, 1, False, 'i');
		Exit;
   End;

	If XSQLTABELA='PEDVENDA'
	Then  Begin//Procedimentos para vvendas
		If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '')=True
       Then Begin
           If (DMSAIDA.TPedV.FieldByName('FISCO').AsString='NF') OR (DMSAIDA.TPedV.FieldByName('FISCO').AsString='ECF') OR (DMSAIDA.TPedV.FieldByName('FISCO').AsString='NFe')
           Then Begin
           	//Caso o pedido tenha passado por impressao fiscal... o mesmo naum deve ser alterado
       		Mensagem('A T E N Ç Ã O', 'Este pedido passou por uma impressão fiscal e não pode ser alterado!', '', 1, 1, False, 'i');
				Exit;
           End;
           //SELECIONA CFOP PARA INSERÇÃO
			If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_CFOPAUTO').AsString, '')=False
           Then Begin
           	//Caso o pedido tenha passado por impressao fiscal... o mesmo naum deve ser alterado
       		Mensagem('A T E N Ç Ã O', 'Informe na Configuração de loja o CFOP para Inserção de Nº Fiscal', '', 1, 1, False, 'i');
				Exit;
           End;
   		//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   		If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString+#39+')')=True
   		Then Begin
       		//EDITAL FISCAL EXISTENTE
       		DMSAIDA.TFiscPV.Edit;
				DMSAIDA.TFiscPV.FieldByName('cod_cfop').AsInteger:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
				DMSAIDA.TFiscPV.FieldByName('numdocfis').AsString:=XNumero;
				DMSAIDA.TFiscPV.FieldByName('dtentsaid').AsString:=DMSAIDA.TPedV.FieldByName('dtpedven').AsString;
				DMSAIDA.TFiscPV.FieldByName('dtemissao').AsString:=DMSAIDA.TPedV.FieldByName('dtfech').AsString;
				DMSAIDA.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency:=DMSAIDA.TPedV.FieldByName('VALOR').AsCurrency;
       		DMServ.TFiscOrd.FieldByName('vlrtotprod').AsCurrency:=DMSAIDA.TPedV.FieldByName('VALOR').AsCurrency;
				DMSAIDA.TFiscPV.FieldByName('SERIE').AsString:='55';
               DMSAIDA.TFiscPV.Post;
               DMSAIDA.TPedV.Edit;
				DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:=XNumero;
               DMSAIDA.TPedV.Post;
           End
           Else Begin
               //PROCURA UM CODIGO VALIDO PARA DOCUMENTO FISCAL
               XCodFiscal:=DMMACS.TCodigo.FieldByname('COD_DOCFISC').AsInteger;
               XFlag:=0;
               while XFlag=0 do
               Begin
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add('SELECT * FROM docfissaida WHERE docfissaida.cod_docfisc=:CODIGO');
                   DMMACS.TALX.ParamByName('CODIGO').AsInteger:=XCodFiscal;
                   DMMACS.TALX.Open;

                   If Not DMMACS.TALX.IsEmpty Then
                       XCodFiscal:=XCodFiscal+1
                   Else
                       XFlag:=1;
               End;

       		//INSERE NOVO DOCUMENTO FISCAL
               DMSAIDA.TFiscPV.Insert;
   			DMSAIDA.TFiscPV.FieldByName('COD_DOCFISC').AsInteger:=XCodFiscal;
   			DMSAIDA.TFiscPV.FieldByName('COD_PEDIDO').AsString:=DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsString;
				DMSAIDA.TFiscPV.FieldByName('cod_cfop').AsInteger:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
				DMSAIDA.TFiscPV.FieldByName('numdocfis').AsString:=XNumero;
				DMSAIDA.TFiscPV.FieldByName('dtentsaid').AsString:=DMSAIDA.TPedV.FieldByName('dtpedven').AsString;
				DMSAIDA.TFiscPV.FieldByName('SERIE').AsString:='55';
				DMSAIDA.TFiscPV.FieldByName('TIPODOCFIS').AsString:=DMMACS.TLoja.FieldByName('MODELONF').AsString;
				DMSAIDA.TFiscPV.FieldByName('dtemissao').AsString:=DMSAIDA.TPedV.FieldByName('dtfech').AsString;
				DMSAIDA.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency:=DMSAIDA.TPedV.FieldByName('VALOR').AsCurrency;
               DMSAIDA.TFiscPV.Post;
               DMSAIDA.TPedV.Edit;
				DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:=XNumero;
               DMSAIDA.TPedV.Post;
           End;
           DMSAIDA.IBT.CommitRetaining;
			ExecutaLiberaDados;
       end;
   end;
   //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
	If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'PEDVENDA'+#39+') AND (COD_GERADOR='+DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString+')')=True
   Then Begin//se foi encontrado alguma conta
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' update parcelacr set parcelacr.numfisc=:NUMERO ');
       DMMACS.TALX.SQL.Add(' where parcelacr.cod_ctareceber=:CODCTARECEBER');
       DMMACS.TALX.ParamByName('numero').AsString:=XNumero;
       DMMACS.TALX.ParamByName('CODCTARECEBER').AsInteger:=DMCONTA.TCtaR.FieldByName('cod_ctareceber').AsInteger;
       DMMACS.TALX.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
   End;
  End;
end;
procedure TFPedVenda.ApagarNFiscal1Click(Sender: TObject);
begin
  inherited;
	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente remover a marcação do Nº Fiscal?'+#13+'Pedido Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
		If XSQLTABELA='PEDVENDA'
		Then  Begin//Procedimentos para vvendas
			If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '')=True
       	Then Begin
           	If (DMSAIDA.TPedV.FieldByName('FISCO').AsString='NF') OR (DMSAIDA.TPedV.FieldByName('FISCO').AsString='ECF') OR (DMSAIDA.TPedV.FieldByName('FISCO').AsString='NFe')
           	Then Begin
           		//Caso o pedido tenha passado por impressao fiscal... o mesmo naum deve ser alterado
       			Mensagem('A T E N Ç Ã O', 'Este pedido passou por uma impressão fiscal e não pode ser alterado!', '', 1, 1, False, 'i');
					Exit;
           	End;
           End;
   		//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   		If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString+#39+')')=True
   		Then Begin
               DMSAIDA.TFiscPV.Delete;
               DMSAIDA.TPedV.Edit;
               DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:='';
               DMSAIDA.TPedV.Post;
           End
           Else Begin
               DMSAIDA.TPedV.Edit;
               DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:='';
               DMSAIDA.TPedV.Post;
           End;
   		//FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
			If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'PEDVENDA'+#39+') AND (COD_GERADOR='+DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString+')')=True
           Then Begin//se foi encontrado alguma conta
       		DMMACS.TALX.Close;
       		DMMACS.TALX.SQL.Clear;
       		DMMACS.TALX.SQL.Add(' update parcelacr set parcelacr.numfisc=:NUMERO ');
       		DMMACS.TALX.SQL.Add(' where parcelacr.cod_ctareceber=:CODCTARECEBER');
       		DMMACS.TALX.ParamByName('numero').AsString:='';
       		DMMACS.TALX.ParamByName('CODCTARECEBER').AsInteger:=DMCONTA.TCtaR.FieldByName('cod_ctareceber').AsInteger;
       		DMMACS.TALX.ExecSQL;
       		DMMACS.Transaction.CommitRetaining;
   		End;
           DMSAIDA.IBT.CommitRetaining;
			ExecutaLiberaDados;
       end;
   End;
end;

procedure TFPedVenda.BtnProcVendClick(Sender: TObject);
begin
  FMenu.TIPOAUX:='VENDEDOR';
  inherited;

  
  
end;

procedure TFPedVenda.ComprovanteTermal1Click(Sender: TObject);
begin
  inherited;
      FMenu.TIPOREL:='PEDTERMAL';
	   ImpPed(XView.FieldByName('COD_PEDVENDA').AsInteger)
end;

procedure TFPedVenda.BitBtn15Click(Sender: TObject);
begin
  inherited;
      AbrirForm(TFGeradorXML, FGeradorXML, 0);
      OnActivate(Self);
end;

procedure TFPedVenda.ReimprimirNF1Click(Sender: TObject);
begin
  inherited;
 	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
  	If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
       	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
           	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
	begin
   	DMSAIDA.TFiscPV.Close;
       DMSAIDA.TFiscPV.SQL.Clear;
       DMSAIDA.TFiscPV.SQL.Add('  Select * from docfissaida where docfissaida.cod_pedido=:Codigo ');
       DMSAIDA.TFiscPV.ParamByName('Codigo').AsInteger:=XView.FieldByName('COD_PEDVENDA').AsInteger;
       DMSAIDA.TFiscPV.Open;
       If not DMSAIDA.TFiscPV.IsEmpty
       Then Begin
       	If (DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger=1) or (DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger=3)  or (DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger=4)
           Then Begin
           	//Se Documento Fiscal Enviado ou Cancelado
               MessageDlg('Este pedido já gerou uma Nota Fiscal Eletrônica enviada e recebida pelo sefaz. Sendo assim não pode mais ser transmitida.', mtWarning, [mbOK], 0);
               Exit;
           End;
       End;
   End;

   AbrirForm(TFSENHA, FSENHA, 0);
   //repassa resultado da tela de autenticação de senha para as variáveis de controle
   If XAlxResult=True
   Then Begin
       If XView.FieldByName('SITUACAO').AsString='ABERTO'
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'É necessário que o pedido esteja fechado antes da impressão fiscal. Antes de fechar recomendamos que confira todas as informações do pedido.', '', 1, 1, False, 'a');
           Exit;
       End;
       If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '')=True
       Then Begin
           If Mensagem('A T E N Ç Ã O', 'Deseja realmente Imprimir Documento Fiscal para o pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
           Then Begin
               If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
               Then Begin
               	///////////
					// E C F //
                   ///////////
                   //Paulo 30/08/2010: Abre a tela de fiscal para imprimir o cupom fiscal
                   FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');
					FMenu.TIPOREL:='RNF';
                   AbreFiscal;
               End;
           	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
               If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF')
               	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NFe')
       				OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
           				OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
               Then Begin
                   FMenu.TIPOREL:='RNF';
                   //Imprime Nota Fiscal
                   If MessageDlg('Impressora NF Pronta?', mtConfirmation, [mbYes, mbNo], 0)=mryes
                   Then Begin
                       FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');
                       If (DMSAIDA.WPedV.FieldByName('FISCO').AsString='ECF') or (DMSAIDA.TPedV.FieldByName('NUMECF').AsString<>'') Then
                           FMenu.TIPOAUX:='ECF'
                       Else
                           FMenu.TIPOAUX:='';
                       AbreFiscal;
                   End;
               End;
				ExecutaLiberaDados;
           End;
       End;
   End;
end;

procedure TFPedVenda.BtnProcProdClick(Sender: TObject);
begin
  cbUnidVendaFixo.ListSource := nil;
  inherited;
   edBcSt.ValueNumeric := 0.00;
   edVlrSt.ValueNumeric := 0.00;
   RetornaUltimaVendaProd('');
   if (XConvUnitVenda)or (XConvUnitEmb) or (DMMacs.Tloja.FieldByName('CONVERTUNIDFERRO').AsString = '1') then
	cbUnidVendaFixo.ListSource := DMESTOQUE.DSAlx3;   
end;

procedure TFPedVenda.EDCodInternoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=Vk_Return Then
   	RetornaUltimaVendaProd('');
end;

procedure TFPedVenda.EDCodCompostoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=Vk_Return Then
   	RetornaUltimaVendaProd('');
end;

procedure TFPedVenda.EDCodFabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=Vk_Return Then
   	RetornaUltimaVendaProd('');
end;

procedure TFPedVenda.BitBtn8Click(Sender: TObject);
begin
  inherited;
   PDevParc.Visible := false;
   PDevParc.SendToBack;
end;

procedure TFPedVenda.BtnProcVendExit(Sender: TObject);
begin
  inherited;
    CalcComisTotVend;//Calcula Comissão sobre o total da venda e sobre a aliquota correta
    EdComissao.Text:=FormatFloat('###,##0.00',XEDCOMISS);

end;

procedure TFPedVenda.CartaRedespachoClick(Sender: TObject);
begin
  inherited;

   // DADOS DA LOJA
   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

   FiltraTabela(DMMACS.TEmpresa,'EMPRESA','COD_EMPRESA',DMMACS.TLoja.FieldByName('COD_EMPRESA').AsString,'');

   // CIDADE DA LOJA
   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('SELECT * FROM CIDADE WHERE CIDADE.COD_CIDADE = :CODIGO');
   DMSAIDA.TAlx.ParamByName('CODIGO').AsInteger := DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsInteger;
   DMSAIDA.TAlx.Open;

   // dados do pedido de venda e transportadora (fornecedor)
   DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add('select pedvenda.cod_pedvenda,');
   DMPESSOA.TALX.SQL.Add('pessoa.nome AS CLIENTE, vwfornec.endereco, pessoa.cod_pessoa, vwfornec.cod_cidade,');
   DMPESSOA.TALX.SQL.Add('estado.cod_estado, estado.descricao AS ORIGEM, estado.uf_estado AS SIGLAORIG,');
   DMPESSOA.TALX.SQL.Add('cidade.cod_cidade, cidade.nome AS CIDADE, cidade.cod_estado,');
   DMPESSOA.TALX.SQL.Add('vwfornec.nome as TRANSPORTADORA');
   DMPESSOA.TALX.SQL.Add('from pedvenda');
   DMPESSOA.TALX.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
   DMPESSOA.TALX.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMPESSOA.TALX.SQL.Add('left join vwfornec on pessoa.cod_transportadora =  vwfornec.cod_fornec');

  // DMPESSOA.TALX.SQL.Add('left join fornecedor on docfissaida.cod_transp = fornecedor.cod_fornec'); // - 26/03/2009: antes buscava a transportadora do docfissaida
  // DMPESSOA.TALX.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa'); // - 26/03/2009: e foi modificado para buscar do cadastro do cliente na tabela pessoa.
   DMPESSOA.TALX.SQL.Add('left join cidade on vwfornec.cod_cidade = cidade.cod_cidade');
   DMPESSOA.TALX.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');

   DMPESSOA.TALX.SQL.Add('where pedvenda.cod_pedvenda = :codigo');
   DMPESSOA.TALX.ParamByName('codigo').AsInteger := DMSAIDA.WPedV.FieldByName('cod_pedvenda').AsInteger;
   DMPESSOA.TALX.Open;

   DMPESSOA.TAux1.Close;
   DMPESSOA.TAux1.SQL.Clear;
   DMPESSOA.TAux1.SQL.Add('select pessoa.telrel');
   DMPESSOA.TAux1.SQL.Add('from pessoa');
   DMPESSOA.TAux1.SQL.Add('where pessoa.nome = :TRANSP');
   DMPESSOA.TAux1.ParamByName('TRANSP').AsString:=DMPESSOA.TALX.FieldByName('TRANSPORTADORA').AsString;
   DMPESSOA.TAux1.Open;


   // DADOS DO CLIENTE COM CIDADE, ESTADO
   DMPESSOA.TALX1.Close;
   DMPESSOA.TALX1.SQL.Clear;
   DMPESSOA.TALX1.SQL.Add('select pedvenda.cod_pedvenda, pedvenda.cod_cliente,');
   DMPESSOA.TALX1.SQL.Add('cliente.cod_cliente, cliente.cod_pessoa, pessoa.cod_pessoa, pessoa.nome AS CLIENTE, pessoa.cod_cidade,');
   DMPESSOA.TALX1.SQL.Add('cidade.cod_cidade, cidade.nome, cidade.cod_estado, estado.cod_estado, estado.descricao AS DESTINO, estado.uf_estado AS SIGLADEST');
   DMPESSOA.TALX1.SQL.Add('from pedvenda');
   DMPESSOA.TALX1.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
   DMPESSOA.TALX1.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMPESSOA.TALX1.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
   DMPESSOA.TALX1.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
   DMPESSOA.TALX1.SQL.Add('where pedvenda.cod_pedvenda = :codigo');
   DMPESSOA.TALX1.ParamByName('codigo').AsInteger := DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
   DMPESSOA.TALX1.Open;

   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCartaRedespacho.frf');
   FSRel.ShowReport;

end;

//Função para Inserir documento discal
Function TFPedVenda.InserirDocumentoFiscal(DataEntradaSaida: String; NumeroNota: String; NfeChave: String; NFeDtEmissao: String; BaseIcms: real; BaseCalculo: Real; VlrIcmsSubstituicao: real; VlrDesconto: Real; VlrTotalProduto: Real; VltTotalDocumento: Real; VlrIcms: Real; VlrFrete: Real; VlrTotalIpi: Real; VlrOutrasDespesas: Real; XCfop: String): Boolean;
Begin
	Try
       Result:=True;
       //Encontra Periodo Fiscal
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' Select * from periodofiscal where (periodofiscal.dtinicial<=:Dt) and (periodofiscal.dtfinal>=:Dt) ');
       DMMACS.TALX.ParamByName('Dt').AsString := Copy(DataEntradaSaida, 9,2)+'/'+Copy(DataEntradaSaida, 6,2)+'/'+Copy(DataEntradaSaida, 0,4);
       DMMACS.TALX.Open;
       //Encontra cfop
       DMESTOQUE.Alx5.Close;
       DMESTOQUE.Alx5.SQL.Clear;
       DMESTOQUE.Alx5.SQL.Add(' Select * from cfop where cfop.cfop=:cfop ');
       DMESTOQUE.Alx5.ParamByName('cfop').AsString := XCfop;
       DMESTOQUE.Alx5.Open;

       //Insere registro na tabela
       InserReg(DMSAIDA.TFiscPV, 'docfissaida', 'cod_docfisc'); //INSERE NOVO DOCUMENTO FISCAL
		DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString := NumeroNota;
		DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsString := '1';
		DMSAIDA.TFiscPV.FieldByName('nfeprotocolo').AsString := FMenu.XProtocolo;
		DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString := NfeChave;
		DMSAIDA.TFiscPV.FieldByName('TIPODOCFIS').AsString := '3';
		DMSAIDA.TFiscPV.FieldByName('cod_cfop1').AsString := DMESTOQUE.Alx5.FieldByName('cod_cfop').AsString;
		DMSAIDA.TFiscPV.FieldByName('SERIE').AsString := '1';
		DMSAIDA.TFiscPV.FieldByName('MODELONF').AsString := '55';
		DMSAIDA.TFiscPV.FieldByName('numdocfisint').AsString := NumeroNota;
		DMSAIDA.TFiscPV.FieldByName('COD_PEDIDO').AsString := FMenu.XCodPesqPresSel;
       DMSAIDA.TFiscPV.FieldByName('TIPOIMPFISC').AsString := 'NFE';
       DMSAIDA.TFiscPV.FieldByName('NFESERIE').AsString := '1';
       DMSAIDA.TFiscPV.FieldByName('COD_PERIODOFISCAL').AsInteger := DMMACS.TALX.FieldByName('cod_periodofiscal').AsInteger;
       DMSAIDA.TFiscPV.FieldByName('DTEMISSAO').AsString :=Copy(DataEntradaSaida, 9,2)+'/'+Copy(DataEntradaSaida, 6,2)+'/'+Copy(DataEntradaSaida, 0,4);
       DMSAIDA.TFiscPV.FieldByName('DTENTSAID').AsString := Copy(DataEntradaSaida, 9,2)+'/'+Copy(DataEntradaSaida, 6,2)+'/'+Copy(DataEntradaSaida, 0,4);
       DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsCurrency := BaseCalculo;
       DMSAIDA.TFiscPV.FieldByName('VLRICMS').AsCurrency := VlrIcms;
       DMSAIDA.TFiscPV.FieldByName('BASCALSUBS').AsCurrency := BaseCalculo;
       DMSAIDA.TFiscPV.FieldByName('VLRICMSUBS').AsCurrency := VlrIcmsSubstituicao;
       DMSAIDA.TFiscPV.FieldByName('VLRDESCONTO').AsCurrency := VlrDesconto;
       DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency := VlrTotalProduto;
       DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency := VltTotalDocumento;
       DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency := VlrFrete;
       DMSAIDA.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency := VlrTotalIpi;
       DMSAIDA.TFiscPV.FieldByName('VLROUTRASDESP').AsCurrency := VlrOutrasDespesas;
       DMSAIDA.TFiscPV.Post;
   Except
       Result:=False;
   End;
End;

//Função para efetuar cadastro/inserção do item no banco de dados itenspedv
Function TFPedVenda.InserirItemVenda(CodigoEstoque: Integer; CdEan: String; CodigoCst: Integer; AliqIcms: Real; BaseIcms: Real; VlrIcms: Real; BaseIcmsSt: Real; VlrIcmsSt: Real; AliqIpi: Real; VlrIpi: Real; Quantidade: Real; Desconto: Real; VlrUnitario: Real; VlrTotal: Real; Data: String; CodigoUnidade: Integer; Cfop: String): Integer;
Begin
	Try
      MDO.Query.Close; //05/05/2009:  sql na unha
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('insert into ITENSPEDVEN');
      MDO.Query.SQL.Add('(COD_PEDVEN, COD_ESTOQUE, QTDEPROD, COD_FUNCIONARIO,');
      MDO.Query.SQL.Add('VALUNIT, VALCUSTO, VALORTOTAL,COD_LOTE, VALREP, COEFDIV, VALCOMP, COD_CST,');
      MDO.Query.SQL.Add(' DATA, OPERACAO,');
      MDO.Query.SQL.Add(' ALIQICMS, BASEICMS, VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI,');
      MDO.Query.SQL.Add(' VLRICMSSUBS, COD_UNIDADE,');
      MDO.Query.SQL.Add('  CFOP, TIPOLISTA, IPNPMC, IPNMVA)');
      MDO.Query.SQL.Add('values');
      MDO.Query.SQL.Add('(:COD_PEDVEN, :COD_ESTOQUE, :QTDEPROD, :COD_FUNCIONARIO,');
      MDO.Query.SQL.Add(':VALUNIT, :VALCUSTO, :VALORTOTAL, :COD_LOTE, :VALREP, :COEFDIV, :VALCOMP, :COD_CST, ');
      MDO.Query.SQL.Add(' :DATA, :OPERACAO,');
      MDO.Query.SQL.Add(' :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS,');
      MDO.Query.SQL.Add(':VLRIPI, :ALIQIPI, :VLRICMSSUBS,');
      MDO.Query.SQL.Add(':COD_UNIDADE, :CFOP, :TIPOLISTA, :IPNPMC,:IPNMVA)');
      MDO.Query.ParamByName('COD_PEDVEN').AsInteger := StrToInt(FMenu.XCodPesqPresSel);
      MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := CodigoEstoque;
      MDO.Query.ParamByName('QTDEPROD').AsCurrency := Quantidade;

      MDO.Query.ParamByName('VALUNIT').AsCurrency := VlrUnitario;
      MDO.Query.ParamByName('VALORTOTAL').AsCurrency := VlrTotal;
      MDO.Query.ParamByName('COD_UNIDADE').AsInteger := CodigoUnidade;
      MDO.Query.ParamByName('CFOP').AsString := Cfop;
      MDO.Query.ParamByName('TIPOLISTA').AsString := '';
      MDO.Query.ParamByName('IPNPMC').AsString := '';
      MDO.Query.ParamByName('IPNMVA').AsString := '';
      MDO.Query.ParamByName('COD_LOTE').AsCurrency := 1;
      MDO.Query.ParamByName('VALREP').AsCurrency := 1;
      MDO.Query.ParamByName('COEFDIV').AsCurrency := 1;
      MDO.Query.ParamByName('VALCOMP').AsCurrency := 1;
      MDO.Query.ParamByName('COD_CST').AsInteger := CodigoCst;
      MDO.Query.ParamByName('DATA').AsString := Copy(Data, 9,2)+'/'+Copy(Data, 6,2)+'/'+Copy(Data, 0,4);
      MDO.Query.ParamByName('OPERACAO').AsString := 'VND';
	   MDO.Query.ParamByName('ALIQICMS').AsCurrency := AliqIcms;
      MDO.Query.ParamByName('BASEICMS').AsCurrency := BaseIcms;
      MDO.Query.ParamByName('VLRICMS').AsCurrency := VlrIcms;
      MDO.Query.ParamByName('BASEICMSSUBS').AsCurrency := BaseIcmsSt;
      MDO.Query.ParamByName('ALIQIPI').AsCurrency := AliqIpi;
      MDO.Query.ParamByName('VLRIPI').AsCurrency := VlrIpi;
      MDO.Query.ParamByName('VLRICMSSUBS').AsCurrency := VlrIcmsSt;
      MDO.Query.ExecSQL;
   Except
       Result:=-1;
   End;

End;
//Função para efetuar cadastro do item no banco de dados
Function TFPedVenda.CadastraItemEstoque(CodigoProduto: String; CdEan: String; Descricao: String; Ncm: String; VlrUnitario: Real; Cst: String): Integer;
Var
	XcodSub, XCodest: Integer;
Begin
	Try
        If FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', CodigoProduto, '') = True
        Then Begin
        	If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'cod_subprod', DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString, '') = True Then
           	Result:=DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
        End
        Else Begin
            Try
                FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', '', '', '');
                //Paulo 27/09/2010: Insere registro na tabela subporduto
                XcodSub := InserReg(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO');
                DMESTOQUE.TSubProd.FieldByName('NCM').AsString := Ncm;
                DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString := Descricao;
                DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString := CdEan;
                DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString := CodigoProduto;
                DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString := CodigoProduto;
                DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString := IntToStr(XcodSub);
                FiltraTabela(DMESTOQUE.Alx4, 'UNIDADE', 'SIGLA_UNID', 'UN', '');
                DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger := DMESTOQUE.Alx4.FieldByName('COD_UNIDADE').AsInteger;
                DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger := DMESTOQUE.Alx4.FieldByName('COD_UNIDADE').AsInteger;
                FiltraTabela(DMMACS.TALX, 'CST', 'cod_sit_trib', Cst, '');
                DMESTOQUE.TSubProd.FieldByName('COD_CST').AsInteger := DMMACS.TALX.FieldByName('cod_cst').AsInteger;
                DmEstoque.TSubProd.FieldByName('DTCAD').AsString := DateToStr(Date());
                DMESTOQUE.TSubProd.FieldByName('COD_PRODUTO').AsInteger := DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').Asinteger;
                DMESTOQUE.TSubProd.Post;

              	 //Paulo 27/09/2010: Insere Registro na tabela Estoque
                XCodest := InserReg(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE');
                DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger := XCodest;
                DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsInteger := DMMACS.TLoja.FieldByName('COD_LOJA').AsInteger;
                DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger;
                DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency := 1;
//                DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency := DMESTOQUE.Alx3.FieldByName('ALIQICMS').AsCurrency;
                DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency := VlrUnitario;
                DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency := VlrUnitario;
                DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency := VlrUnitario;
                DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency := 1;
                DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency := 1;
                DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency := 1;
                DMESTOQUE.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
                DMESTOQUE.TEstoque.Post;
                Result:=XCodest;
                DMESTOQUE.TransacEstoque.CommitRetaining;
            Except
                DMESTOQUE.TransacEstoque.RollbackRetaining;
                Result:=-1;
            End;
        End;
   Except
   	Result:=-1;

   End;
End;
//Função verifica se o cliente esta cadastrado senão ele cadastra referente a NFe
Function TFPedVenda.ImportaCliente(XCNPJ, XRazao, XFAnt, XRua, XNro, XBairro, XCodIBGE, XMunic, XUF, XCep, XFone, XIE: String): WideString;
Var
    XCodAux, XcodPessoa, XcodForn: Integer;
Begin
	 //---------------------TABELA PESSOA------------------------------//
    //Verifica se tem alguma coisa na tabela pessoa senão insere uma nova ou apenas atualiza
    If FiltraTabela(DMPESSOA.TALX, 'PESSOA', 'CPFCNPJ', XCNPJ, '') = false Then
    Begin
        XCodAux := InserReg(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA');
        DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger := XCodAux;
        DMPESSOA.TPessoa.Edit;
         //Paulo 22/09/2010: caso o nome fantasia esteja vazio insere a razão
        If XFAnt = '' Then
            DMPESSOA.TPessoa.FieldByName('NOME').AsString := XRazao
        Else
            DMPESSOA.TPessoa.FieldByName('NOME').AsString := XFAnt;

        DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString := XRua;
        DMPESSOA.TPessoa.FieldByName('BAIRRO').AsString := XBairro;
        FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'cod_ibge', XCodIBGE, '');
        DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsInteger := DMGEOGRAFIA.TCidade.FieldByName('COD_CIDADE').AsInteger;
        DMPESSOA.TPessoa.FieldByName('CEP').AsString := XCep;
        DMPESSOA.TPessoa.FieldByName('TELREL').AsString := XFone;
        DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString := XCNPJ;
        DMPESSOA.TPessoa.FieldByName('ENDNUMERO').AsString := XNro;
        DMPESSOA.TPessoa.Post;
        DMPESSOA.TransacPessoa.CommitRetaining;
    End;
    //---------------------TABELA PESSOA JURIDICA----------------------------//
    //Retorna o código de pessoa
    FiltraTabela(DMPESSOA.TALX, 'PESSOA', 'CPFCNPJ', XCNPJ, '');
    XcodPessoa := DMPESSOA.TALX.FieldByName('cod_pessoa').AsInteger;
    XcodForn := XcodPessoa;
     //Verifica na tabela PESSOAJ se tem alguma coisa se não ter nada insere um novo senão atualiza
    If FiltraTabela(DMPESSOA.TALX, 'PESSOAJ', 'COD_PESSOA', IntToStr(XcodPessoa), '') = false Then
    Begin
        XCodAux := InserReg(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOAJ');
        DMPESSOA.TPessoaJ.FieldByName('COD_PESSOAJ').AsInteger := XCodAux;
        DMPESSOA.TPessoaJ.Edit;
        DMPESSOA.TPessoaJ.FieldByName('COD_PESSOA').AsInteger := XcodPessoa;
        DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString := XIE;
        DMPESSOA.TPessoaJ.FieldByName('RAZAO_SOCIAL').AsString := XRazao;
        DMPESSOA.TPessoaJ.Post;
        DMPESSOA.TransacPessoa.CommitRetaining;
    End;
     //--------------FIM DA TABELA PESSOA JURIDICA--------------------//

     //-------------------TABELA FORNECEDOR---------------------------//
    If FiltraTabela(DMPESSOA.TALX, 'CLIENTE', 'COD_PESSOA', IntToStr(XcodPessoa), '') = false Then
    Begin
        XCodAux := InserReg(DMPESSOA.TCLIENTE, 'CLIENTE', 'cod_cliente');
        DMPESSOA.TCliente.FieldByName('cod_cliente').AsInteger := XCodAux;
        DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsInteger := XcodPessoa;
        DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString := UltCodInt('FORNECEDOR', 'PES');
        DMPESSOA.TCliente.FieldByName('DATA_CAD').AsString := DateToStr(Date);
        DMPESSOA.TCliente.Post;
        DMPESSOA.TransacPessoa.CommitRetaining;
    End
    Else Begin
		 XCodAux := DMPESSOA.TALX.FieldByName('cod_cliente').AsInteger;
    End;
    XcodPessoa:=XCodAux;
End;

//Paulo 20/09/2010: Função que troca o ponto pela virgula
Function TFPedVenda.tiraPontoNfe(XValor: String): Real;
Var
    XalxX, XalxV: String;
    cont, Xalg: integer;
Begin
	If Xvalor<>''
   then Begin
        XalxV := 'x';
        Xalg := 1;
        cont := 1;
        While (XalxV <> '') Do
        Begin
            XalxV := (Copy(XValor, Xalg, 1));
            If (XalxV <> '.') Then
            Begin
                If (cont > 1) Then
                Begin
                    XalxX := XAlxX + XalxV;
                End
                Else Begin
                    XalxX := XalxV;
                End;
            End
            Else Begin
                XalxX := XalxX + ',';

            End;
            cont := cont + 1;
            Xalg := Xalg + 1;
        End;
        Try
           tiraPontoNfe := StrToFloat(XalxX);
        Except
           Result:=0;
        End;
   End
   Else Begin
       Result:=0;
   End;
End;

Procedure TFpedVenda.NovoPedido;
Begin
	Try
        //INSERE REGISTRO
        DMSAIDA.TPedV.Insert;
        FMenu.XCodPesqPresSel := DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString;
        XTabela.FieldByName('NUMPED').AsString := XNumNFe;
        XTabela.FieldByName('dtpedven').AsString := Copy(XDtEmissao, 9,2)+'/'+Copy(XDtEmissao, 6,2)+'/'+Copy(XDtEmissao, 0,4);
        XTabela.FieldByName('dtfech').AsString := Copy(XDtEmissao, 9,2)+'/'+Copy(XDtEmissao, 6,2)+'/'+Copy(XDtEmissao, 0,4);
        XTabela.FieldByName('COMSOBVENDA').AsString := '1';
        XTabela.FieldByName('COD_CLIENTE').AsInteger := XCodPessoa;
        XTabela.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
        XTabela.FieldByName('COD_FORMPAG').AsInteger := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
        XTabela.FieldByName('COD_VENDEDOR').AsInteger := DMPESSOA.TFuncionario.FieldByName('COD_FUNC').AsInteger;
        XTabela.FieldByName('SITUACAO').AsString := 'ABERTO';
        XTabela.FieldByName('NOMECLI').AsString := DMPESSOA.WCliente.FieldByName('NOME').AsString;
        XTabela.FieldByName('EDIT').AsString := '1';
        XTabela.FieldByName('TIPO').AsString := 'VND'; //Define como venda, caso não seja nenhum outro tipo
   Except
   End;
End;
procedure TFPedVenda.BitBtn17Click(Sender: TObject);
Var
    XnodePrim, XnodePai, XnodeLer, XNodeAux: IXMLNode;
    XIdRetorno: WideString;
    XDocNfe: TXMLDocument;
    XOpenNfe: TOpenDialog;
    CODPEDIDO: Integer;
    Xpont, XauxIcms, XalxCodForm, XalxBarra, XAlxCst, xteste, XDescProd: String;
    XBaseC: Real;
    XIcmsFilho: String;
    XTotalNFe, XFreteNfe, XSeguroNfe, XDescNFe, XOutrosNFe, XTotalProd: Real;
    XCfop: String;
Begin
    Inherited;
    XDocNfe := TXMLDocument.Create(Self);
    XOpenNfe := TOpenDialog.Create(Self);

     //Paulo 14/08/2010: Importar NFe
    XOpenNfe.InitialDir := Application.GetNamePath;
    XOpenNfe.Filter := 'procNFE|*.XML';
    XOpenNfe.Title := 'Selecione o arquivo a importar';
    XOpenNfe.Execute;

	If (XOpenNfe.FileName = '') Then
    	exit;

   //Paulo: Carregando o arquivo XML
   XDocNfe.LoadFromFile(XOpenNfe.FileName);
   XDocNfe.Active := True;

   //Jônatas 23/07/2013 - Ler a chave da nota fiscal
   Try
        XNodePrim := XdocNfe.DocumentElement.ChildNodes.FindNode('protNFe');
        XNodePai := XNodePrim.ChildNodes.FindNode('infProt');
        XNodeLer := XNodePai.ChildNodes['chNFe'];
   Except
        exit;
   End;

   FMenu.XChaveNFe := XNodeLer.Text; //Armazenar o valor da chave da NFE
   FMenu.XProtocolo := XNodePai.ChildNodes['nProt'].Text;

   //Lendo os dados da Nfe
   Try
        XnodePrim := XDocNfe.DocumentElement.ChildNodes.FindNode('NFe');
        XnodePai := XnodePrim.ChildNodes.FindNode('infNFe');
        XnodeLer := XnodePai.ChildNodes['ide'];
   Except
        Mensagem('A T E N Ç Ã O ', 'Não poderá ser feita a importação da NFe, arquivo XML fora de padrão de importação', '', 1, 1, false, 'i');
        exit;
   End;

   //Verifica se nota é de entrada
   If XnodeLer.ChildNodes['finNFe'].Text='2'
   Then Begin
		MessageDlg('Notas de Entrada não podem ser importadas!', mtWarning, [mbOK], 0);
       Exit;
   End;
   //XIdRetorno:=(XnodeLer.ChildNodes['cNF'].Text);//Código Sequencial NFe
   XNumNFe := (XnodeLer.ChildNodes['nNF'].Text); //Número da NF
   XDtEmissao := (XnodeLer.ChildNodes['dEmi'].Text); //Data Emissão
   XDtSaiEnt := (XnodeLer.ChildNodes['dSaiEnt'].Text); //Jônatas 24/07/2013 - Data de saída/entrada

   //Lendo os dados do fornecedor
   XnodeLer := XnodePai.ChildNodes['dest'];
   //Endereço do Fornecedor
   XNodeAux := XnodeLer.ChildNodes['enderDest'];

   XCPFCNPJ:= XnodeLer.ChildNodes['CNPJ'].Text;
   If XCPFCNPJ='' Then
		XCPFCNPJ:=XnodeLer.ChildNodes['CPF'].Text;
   If XCPFCNPJ='' Then
		MessageDlg('Erro ao ler Cpf / Cnpj no xml', mtWarning, [mbOK], 0);

   //Verifica o se o cliente existe, se não existir cadastrar
   ImportaCliente(XCPFCNPJ, XnodeLer.ChildNodes['xNome'].Text, XnodeLer.ChildNodes['xFant'].Text,
   	XNodeAux.ChildNodes['xLgr'].Text, XNodeAux.ChildNodes['nro'].Text, XNodeAux.ChildNodes['xBairro'].Text,
       XNodeAux.ChildNodes['cMun'].Text, XNodeAux.ChildNodes['xMun'].Text, XNodeAux.ChildNodes['UF'].Text,
       XNodeAux.ChildNodes['CEP'].Text, XNodeAux.ChildNodes['fone'].Text, XnodeLer.ChildNodes['IE'].Text);
   FiltraTabela(DMPESSOA.WCliente, 'vwcliente', 'CPFCNPJ', XnodeLer.ChildNodes['CNPJ'].Text,'');
   xCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
   //Insere Pedido de Vendas
   NovoPedido;
   XTabela.FieldByName('FISCO').AsString := 'NF';
   XTabela.FieldByName('numfiscal').AsString := XNumNFe;
   XTabela.FieldByName('EDIT').AsString := '0';
   XTabela.FieldByName('COD_CLIENTE').AsInteger := xCodPessoa;
	//XTabela.FieldByName('CHAVENFEXML').AsString :=  FMenu.XChaveNFe;
   DMSAIDA.TPedV.Post;

   //Jônatas 11/09/2013 - Armazenar o CRT do emitente para verificação dos impostos
   FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', '', '', '');
   //Leitura dos itens
    XnodeLer := XnodePai.ChildNodes['det'];
    XNodeAux := XnodeLer.ChildNodes['prod'];
    While Not (XNodeAux.ChildNodes.First = Nil) Do
    Begin
        XnodeLer.ChildNodes.FindNode('det');
        XNodeAux := XnodeLer.ChildNodes['prod'];
        If Not (XNodeAux.ChildNodes.First = Nil) Then
        Begin
	        XCfop:=XNodeAux.ChildNodes['CFOP'].Text;        
        	If FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'CONTRINT', XNodeAux.ChildNodes['cProd'].Text, '')=False
           Then Begin
           	FiltraTabela(DMESTOQUE.TCST, 'cst', 'venda', '1', '');
           	//Cadastramos o item
			    xCodEstoque:=CadastraItemEstoque(XNodeAux.ChildNodes['cProd'].Text, XNodeAux.ChildNodes['cEAN'].Text, Copy(XNodeAux.ChildNodes['xProd'].Text, 1, 55),  XNodeAux.ChildNodes['NCM'].Text, tiraPontoNfe(XNodeAux.ChildNodes['vUnCom'].Text), DMESTOQUE.TCST.FieldByName('COD_CST').AsString);
				//Insere item de venda no pedido
               InserirItemVenda(xCodEstoque,  XNodeAux.ChildNodes['cEAN'].Text, DMESTOQUE.TCST.FieldByName('cod_cst').AsInteger,             0, tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text),             0,                0,              0 ,            0 ,            0, tiraPontoNfe(XNodeAux.ChildNodes['qCom'].Text),              0, tiraPontoNfe(XNodeAux.ChildNodes['vUnCom'].Text), tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text),    XDtSaiEnt, DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsInteger, XNodeAux.ChildNodes['CFOP'].Text);
           End
           Else Begin
           	If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'cod_subprod', DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString, '')
               Then Begin
               	//Insere item de venda no pedido
           	    FiltraTabela(DMESTOQUE.TCST, 'cst', 'cod_cst', DMESTOQUE.TSubProd.FieldByName('cod_cst').AsString, '');
               	InserirItemVenda(DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger,  XNodeAux.ChildNodes['cEAN'].Text, DMESTOQUE.TCST.FieldByName('cod_cst').AsInteger,             0, tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text),             0,                0,              0 ,            0 ,            0, tiraPontoNfe(XNodeAux.ChildNodes['qCom'].Text),              0, tiraPontoNfe(XNodeAux.ChildNodes['vUnCom'].Text), tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text),    XDtSaiEnt, DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsInteger, XNodeAux.ChildNodes['CFOP'].Text);
               End;
           End;
        End;
        XnodeLer := XnodeLer.NextSibling;
   End;
   //VAlores totais da nota
   XnodeLer := XnodePai.ChildNodes['total'];
   XNodeAux := XnodeLer.ChildNodes['ICMSTot'];
   XTotalNFe := tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text);
   XFreteNfe := tiraPontoNfe(XNodeAux.ChildNodes['vFrete'].Text);
   XSeguroNfe := tiraPontoNfe(XNodeAux.ChildNodes['vSeg'].Text);
   XDescNFe := tiraPontoNfe(XNodeAux.ChildNodes['vDesc'].Text);
   XOutrosNFe := tiraPontoNfe(XNodeAux.ChildNodes['vOutro'].Text);
   XTotalProd := tiraPontoNfe(XNodeAux.ChildNodes['vNF'].Text);

   XTabela.Edit;
   XTabela.FieldByName('valor').AsCurrency :=tiraPontoNfe(XNodeAux.ChildNodes['vNF'].Text);
   XTabela.FieldByName('COBRANCA').AsString :='Carteira';
   XTabela.FieldByName('EXPORTA').AsInteger:=55;
   XTabela.Post;

   //Insere o documento Fiscal
	InserirDocumentoFiscal(XDtSaiEnt, XNumNFe, FMenu.XChaveNFe, XDtEmissao, tiraPontoNfe(XNodeAux.ChildNodes['vBC'].Text), tiraPontoNfe(XNodeAux.ChildNodes['vBC'].Text), tiraPontoNfe(XNodeAux.ChildNodes['vST'].Text), tiraPontoNfe(XNodeAux.ChildNodes['vDesc'].Text), tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text), tiraPontoNfe(XNodeAux.ChildNodes['vNF'].Text), tiraPontoNfe(XNodeAux.ChildNodes['vICMS'].Text), tiraPontoNfe(XNodeAux.ChildNodes['vFrete'].Text), tiraPontoNfe(XNodeAux.ChildNodes['vIPI'].Text), tiraPontoNfe(XNodeAux.ChildNodes['vOutro'].Text), XCfop);
   //GRAVA O PEDIDO DE VENDA
	Try
       DMSAIDA.IBT.CommitRetaining;
       MDO.Transac.CommitRetaining;
   Except
   	MessageDlg('Erro ao importar o Xml', mtWarning, [mbOK], 0);
       DMSAIDA.IBT.RollbackRetaining;
       MDO.Transac.RollbackRetaining;
   End;
   FiltraTabela(XView, 'vwpedv', 'cod_pedvenda', FMenu.XCodPesqPresSel, '');
end;

//click imprimir danfe
procedure TFPedVenda.Danfe1Click(Sender: TObject);
var
    cont :Integer;
    caminho : String;
begin
  inherited;
      // verificar se a nota foi enviada

      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select docfissaida.cod_pedido from docfissaida');
      DMESTOQUE.Alx.SQL.Add('left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
      DMESTOQUE.Alx.SQL.Add('where pedvenda.numped = :COD and docfissaida.nfestatus = 1');
      DMESTOQUE.Alx.ParamByName('COD').AsString := XView.FieldByName('NUMPED').AsString;
      DMESTOQUE.Alx.Open;

      if DMESTOQUE.Alx.IsEmpty then begin
         Mensagem('   A T E N Ç Ã O   ','Não há nenhuma DANFE para o pedido selecionado.','',1,1,false,'I');
         Exit;
     end;

     //if XDir+'DANFE\' + DMESTOQUE.Alx1.FieldByName('NFECHAVE').AsString + '.frp');

   FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', XView.FieldByName('COD_PEDVENDA').AsString, '');

   {FNFe := TFNFe.Create(FNFe);
    caminho := FNFe.XDir+'DANFE\'+DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString+'.frp';
    if (fileExists(caminho)) then begin

       //FNFe.FSDanfe.LoadFromFile()

       FNFe.FSDanfe.Clear;

       FNFe.FSDanfe.FileName := caminho;
        //FNFe.FSDanfe.LoadFromFile(caminho);
       //FNFe.FSDanfe.LoadFromFile(caminho);
       //FNFe.FSDanfe.LoadPreparedReport(caminho);
       FNFe.FSDanfe.ShowReport;
        FNFe := nil;

       Exit;
    end; }     

     // - 15/01/2009: SETA NA TABELA TMP DESC1 COMO 1 DE SAIDA PARA APARECER NO RELATORIO DA DANFE

      PComunica.BringToFront;
      PComunica.Visible := True;
      PComunica.Refresh;

      DMMACS.TMP.Close;
      DMMACS.TMP.SQL.Clear;
      DMMACS.TMP.SQL.Add('INSERT INTO TMP (TMP.DESC1) VALUES (:DESC)');
      DMMACS.TMP.ParamByName('DESC').AsString := '1';
      DMMACS.TMP.ExecSQL;
      DMMACS.Transaction.CommitRetaining;

      DMMACS.TMP.Close;
      DMMACS.TMP.SQL.Clear;
      DMMACS.TMP.SQL.Add('SELECT * FROM TMP');
      DMMACS.TMP.Open;

      // FILTRA CIDADE
      FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');

      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select itenspedven.cod_estoque, itenspedven.valortotal, itenspedven.qtdeprod, itenspedven.valunit, itenspedven.cfop,');
      DMESTOQUE.Alx.SQL.Add('estoque.cod_subprod, subproduto.descricao,lote.numero,');
      DMESTOQUE.Alx.SQL.Add('subproduto.'+ DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +' as contrint, subproduto.cod_cst, subproduto.cod_unidvenda, subproduto.ncm, subproduto.marca, cst.cod_sit_trib,');
      DMESTOQUE.Alx.SQL.Add('unidade.sigla_unid, pedvenda.numped, itenspedven.tipolista, itenspedven.IPNPMC, itenspedven.DESCPRO, itenspedven.BASEICMS, itenspedven.VLRICMS , itenspedven.BASEICMSSUBS, itenspedven.VLRICMSSUBS , itenspedven.MVADESTINO');
      DMESTOQUE.Alx.SQL.Add('from itenspedven');
      DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
      DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
      DMESTOQUE.Alx.SQL.Add('left join cst on subproduto.cod_cst = cst.cod_cst');
      DMESTOQUE.Alx.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
      DMESTOQUE.Alx.SQL.Add('left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
      DMESTOQUE.Alx.SQL.Add('left join lote on itenspedven.cod_lote = lote.cod_lote');
      DMESTOQUE.Alx.SQL.Add('where pedvenda.numped = :COD');
      DMESTOQUE.Alx.ParamByName('COD').AsString := XView.FieldByName('NUMPED').AsString;
      DMESTOQUE.Alx.Open;


      DMESTOQUE.Alx1.Close;
      DMESTOQUE.Alx1.SQL.Clear;
      DMESTOQUE.Alx1.SQL.Add('SELECT pedvenda.cod_pedvenda, pedvenda.cod_cliente, pedvenda.dtpedven, pedvenda.numped, pedvenda.valor, pedvenda.dtfech,');
      DMESTOQUE.Alx1.SQL.Add('cliente.cod_pessoa, cliente.cod_interno as CODCLI, pessoa.nome as nomedes, pessoa.cpfcnpj, pessoa.bairro, pessoa.cep, pessoa.endereco, pessoa.endnumero,');
      DMESTOQUE.Alx1.SQL.Add('pessoa.telrel, pessoa.cod_cidade, cidade.nome as NOMECIDADE, cidade.cod_estado, estado.uf_estado,');
      DMESTOQUE.Alx1.SQL.Add('docfissaida.baseicms, docfissaida.vlricms, docfissaida.bascalsubs, docfissaida.vlricmsubs, docfissaida.vlrtotprod,');
      DMESTOQUE.Alx1.SQL.Add('docfissaida.vlrfrete, docfissaida.vlrseg, docfissaida.vlroutrasdesp, docfissaida.vlrtotipi, docfissaida.vlrtotdocnf,');
      DMESTOQUE.Alx1.SQL.Add('docfissaida.numdocfis, docfissaida.nfechave, docfissaida.nfeserie, cfop.descricao as descricaocfop, cfop.cfop, docfissaida.obs, docfissaida.obs2,');
      DMESTOQUE.Alx1.SQL.Add('docfissaida.freteconta, docfissaida.placa, docfissaida.ufplaca, docfissaida.quantfrete, docfissaida.especiefrete, docfissaida.marcafrete, docfissaida.pesobruto, docfissaida.pesoliq, docfissaida.cod_transp, docfissaida.NUMCONHEC, docfissaida.antt');
      DMESTOQUE.Alx1.SQL.Add('FROM PEDVENDA');
      DMESTOQUE.Alx1.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
      DMESTOQUE.Alx1.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
      DMESTOQUE.Alx1.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
      DMESTOQUE.Alx1.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
      DMESTOQUE.Alx1.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
      DMESTOQUE.Alx1.SQL.Add('left join cfop on docfissaida.cod_cfop = cfop.cod_cfop');
      DMESTOQUE.Alx1.SQL.Add('where pedvenda.cod_pedvenda = :COD');
      DMESTOQUE.Alx1.ParamByName('COD').AsInteger := XView.FieldByName('cod_pedvenda').AsInteger;
      DMESTOQUE.Alx1.Open;

     // - 13/04/2009: dados de transporte
     DMESTOQUE.Alx2.Close;
     DMESTOQUE.Alx2.sql.Clear;
     DMESTOQUE.Alx2.SQL.Add('select pessoa.nome, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, cidade.nome as nomecidade, estado.uf_estado as uf, pessoaj.insc_est');
     DMESTOQUE.Alx2.SQL.Add('from fornecedor');
     DMESTOQUE.Alx2.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
     DMESTOQUE.Alx2.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
     DMESTOQUE.Alx2.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
     DMESTOQUE.Alx2.SQL.Add('left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa');
     DMESTOQUE.Alx2.SQL.Add('left join docfissaida on fornecedor.cod_fornec = docfissaida.cod_transp');
     DMESTOQUE.Alx2.SQL.Add('where docfissaida.cod_pedido = :CODGERADOR');
     DMESTOQUE.Alx2.ParamByName('CODGERADOR').AsInteger := DMESTOQUE.Alx1.FieldByName('cod_pedvenda').AsInteger;
     DMESTOQUE.Alx2.Open;


      FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

     // - 22/01/2009:   insere sql necessária para filtrar parcelas da conta
     DMMacs.TALX.Close;
     DMMacs.TALX.sql.Clear;
     DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.NUMPARC, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
     DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
     DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:=DMESTOQUE.Alx1.FieldByName('cod_pedvenda').AsInteger;
     DMMacs.TALX.Open;
     cont := 0;
     // - 22/01/2009: Assume parcelas em campo blob de loja para após ser passado em relatório
     DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP1').AsString:='';
     DMMACS.TLoja.Post;
     DMMACS.TALX.First;
     while not DMMACS.TALX.Eof do
     Begin
         if (cont = 2) or (cont = 5) or (cont = 8)
         then Begin
         	DMMACS.TLoja.Edit;
            DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+DMMacs.TALX.FieldByName('NUMPARC').AsString+'    '+DMMacs.TALX.FieldByName('dtvenc').AsString+' / '+DMMacs.TALX.FieldByName('cobranca').AsString+'   -  '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+#13;
           DMMACS.TLoja.Post;
         End
         else Begin
			DMMACS.TLoja.Edit;
            DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+DMMacs.TALX.FieldByName('NUMPARC').AsString+'    '+DMMacs.TALX.FieldByName('dtvenc').AsString+' / '+DMMacs.TALX.FieldByName('cobranca').AsString+'   -  '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+'  //   ';
           DMMACS.TLoja.Post;
         End;
         DMMACS.TALX.Next;
         cont := cont+1;
     End;

     If DMMACS.TALX.IsEmpty
     Then Begin
          DMMACS.TLoja.Edit;
          DMMACS.TLoja.FieldByName('TMP1').AsString := DMESTOQUE.Alx1.FieldByName('DTFECH').AsString + ' / Á VISTA  - R$ ' + DMESTOQUE.Alx1.FieldByName('VLRTOTDOCNF').AsString;
          DMMACS.TLoja.Post;
     End;

     DMMACS.Transaction.CommitRetaining;


      FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMESTOQUE.Alx1.FieldByName('COD_PESSOA').AsString, '');

     FMzrNfe := FMzrNfe.Create(FMzrNfe);

     PComunica.SendToBack;
      PComunica.Visible := False;


     // - 21/05/2009: se a empresa não for sementes (Tolemed!)
     If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString<>'SEMENTES')
     Then Begin
           If Fmenu.XTIPOBOLTO='COMPLEMENTO' Then
               FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE_ComplementoFiscal.frf')
           Else
          		FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE.frf');
     End
     Else Begin
         FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE2.frf');
     End;


     FMzrNfe.FSDanfe.ShowReport;

     DMMACS.TMP.Close;
     DMMACS.TMP.SQL.Clear;
     DMMACS.TMP.SQL.Add('DELETE FROM TMP');
     DMMACS.TMP.ExecSQL;
     DMMACS.Transaction.CommitRetaining;

     FMzrNfe := nil;
end;

//Abrir XML da nota
procedure TFPedVenda.SalvarXML1Click(Sender: TObject);
var
   caminho :String;
begin
  inherited;
   FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', XView.FieldByName('COD_PEDVENDA').AsString, '');
   if DMSAIDA.TFiscPV.IsEmpty then begin
       Mensagem('   A T E N Ç Ã O   ','Não há nenhum XML para o pedido selecionado.','',1,1,false,'I');
       Exit;
   end;
   FMzrNfe := TFMzrNfe.Create(FMzrNfe);
    {caminho := FNFe.XDir+'enviNFe\'+DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString+'-enviNFe.xml';
    if (fileExists(caminho)) then begin
       ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL);
    end else begin
       Mensagem('   A T E N Ç Ã O   ','Arquivo XML não encontrado.','',1,1,false,'I');
    end;
    FNFe := nil;}
end;

//copia chave nfe para area de transferencia
procedure TFPedVenda.CopiaChaveNFeAreaTransferencia;
begin
   FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', XView.FieldByName('COD_PEDVENDA').AsString, '');
   if DMSAIDA.TFiscPV.IsEmpty then begin
       //Mensagem('   A T E N Ç Ã O   ','Não há nenhuma Chave para o pedido selecionado.','',1,1,false,'I');
       //Exit;
   end;
    Clipboard.AsText := DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString;
end;

//copiar chave nfe para area de transferencia
procedure TFPedVenda.CopiarChaveNFe1Click(Sender: TObject);
begin
  inherited;
  CopiaChaveNFeAreaTransferencia;
end;

//consulta nfe no site da SEFA Nacional
procedure TFPedVenda.ConsultaNFeNacinal1Click(Sender: TObject);
begin
  inherited;
  CopiaChaveNFeAreaTransferencia;
  shellexecute(handle, 'open', 'https://www.nfe.fazenda.gov.br/portal/FormularioDePesquisa.aspx?tipoconsulta=completa', NiL, NiL, SW_SHOWNORMAL);
end;

//consulta nfe no site da SEFA PR
procedure TFPedVenda.ConsultaNFePR1Click(Sender: TObject);
begin
  inherited;
    CopiaChaveNFeAreaTransferencia;
    shellexecute(handle, 'open', 'http://www.fazenda.pr.gov.br/modules/conteudo/conteudo.php?conteudo=296', NiL, NiL, SW_SHOWNORMAL);
end;

// se a nota selecinada for do tipo NFe setar o popup no botao
procedure TFPedVenda.BitBtn17MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   
  If (XView.FieldByName('SITUACAO').AsString = 'FECHADO')
     or ((XView.FieldByName('SITUACAO').AsString = 'CANCELADO'))
  Then Begin

      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select docfissaida.cod_pedido, docfissaida.nfestatus, docfissaida.nfechave, docfissaida.nferecibo from docfissaida');
      DMESTOQUE.Alx.SQL.Add('left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
      DMESTOQUE.Alx.SQL.Add('where pedvenda.numped = :COD');
      DMESTOQUE.Alx.ParamByName('COD').AsString := XView.FieldByName('NUMPED').AsString;
      DMESTOQUE.Alx.Open;


      // - 28/03/2009: falta fazer p/ consulta

     If DMESTOQUE.Alx.IsEmpty
     Then Begin
          BitBtn17.PopupMenu := nil;
     End
     Else If DMESTOQUE.Alx.FieldByName('NFESTATUS').AsString = '1'
     Then Begin
          // - 28/03/2009: nfe enviada
          ImprimirDANFE1.Enabled := True;
          AbrirXML1.Enabled := True;
          AbrirXMLResposta1.Enabled := True;
          CopiarChaveNFe1.Enabled := True;
          ConsultarNFe1.Enabled := True;
          BitBtn17.PopupMenu := PMNFe;
     End
     Else If DMESTOQUE.Alx.FieldByName('NFESTATUS').AsString = '2'
     Then Begin
          // - 28/03/2009: nfe com erro
          ImprimirDANFE1.Enabled := False;
          AbrirXML1.Enabled := False;
          AbrirXMLResposta1.Enabled := False;
          CopiarChaveNFe1.Enabled := False;
          
          If Trim(DMESTOQUE.Alx.FieldByName('NFERECIBO').AsString) <> ''
          Then
             ConsultarNFe1.Enabled := True
          Else
              ConsultarNFe1.Enabled := False;

          BitBtn17.PopupMenu := PMNFe;
     End
     Else If DMESTOQUE.Alx.FieldByName('NFESTATUS').AsString = '3'
     Then Begin
          // - 28/03/2009: nfe cancelada
          ImprimirDANFE1.Enabled := False;
          AbrirXML1.Enabled := False;
          AbrirXMLResposta1.Enabled := False;
          CopiarChaveNFe1.Enabled := False;
          ConsultarNFe1.Enabled := False;
          BitBtn17.PopupMenu := PMNFe;
     End
     Else If DMESTOQUE.Alx.FieldByName('NFESTATUS').AsString = '4'
     Then Begin
          // - 28/03/2009: nfe em espera
          ImprimirDANFE1.Enabled := False;
          AbrirXML1.Enabled := True;
          AbrirXMLResposta1.Enabled := True;
          CopiarChaveNFe1.Enabled := True;
          ConsultarNFe1.Enabled := True;
          BitBtn17.PopupMenu := PMNFe;
     End
     Else Begin
          BitBtn17.PopupMenu := nil;
     End;
  End
  Else Begin
      BitBtn17.PopupMenu := nil;
  End;
end;

//abrir xml de resposta
procedure TFPedVenda.AbrirXMLResposta1Click(Sender: TObject);
var
   caminho :String;
begin
  inherited;
   FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', XView.FieldByName('COD_PEDVENDA').AsString, '');
   FMzrNfe := TFMzrNfe.Create(self);
  {  caminho := FNFe.XDir+'retPedNFe\'+DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString+'-pro-rec.xml';
    if (fileExists(caminho)) then
       ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL);
   FNFe := nil;   }
end;

procedure TFPedVenda.DBGridConvertCellClick(Column: TColumn);
begin
  inherited;
   AtualizaQntConvertida;
end;

procedure TFPedVenda.DBGridConvertExit(Sender: TObject);
begin
  inherited;
   AtualizaQntConvertida;
   //XCodUnidItenProd:=DMESTOQUE.Alx.fieldByName('SIGLA_UNID').AsInteger;
end;

procedure TFPedVenda.DBGridConvertKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   AtualizaQntConvertida;
    If Key=#13
       Then Begin
          EdQtdConvert.SetFocus;
       end;
end;

procedure TFPedVenda.EdQtdConvertKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key=VK_RETURN
   Then Begin//pressionado enter, consultar
       If EdQtdConvert.ValueNumeric>0
       Then Begin
           PQtdConvert.Visible:=False;
           PAliqCusto.Tag:=1;
           EDValUnit.SetFocus;
           LQtdConvert.Visible:=True;
           LQtdConvert.BringToFront;
           LQtdConvert.Caption:=EdQtdConvert.Text;
           xqtdconvert:=EdQtdConvert.ValueNumeric;
       End;
   End;
  inherited;
end;

procedure TFPedVenda.AtualizaQntConvertida;
begin
  // filtra tabela unidade pela unidade de venda do produto
   FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMESTOQUE.Alx.FieldByName('cod_unidsai').AsString, '');
   If DMESTOQUE.TUnidade.FieldByName('ARREDONDAR').AsString='1'
   Then Begin
       EdQtdConvert.ValueNumeric:=Round(EDQuantidade.ValueNumeric*DMESTOQUE.Alx.FieldByName('QTDCONVERT').Value);
   End
   Else Begin
       EdQtdConvert.ValueNumeric:=EDQuantidade.ValueNumeric*DMESTOQUE.Alx.FieldByName('QTDCONVERT').Value;
   End;

  // XCodUnidItenProd :=  DMESTOQUE.Alx.FieldByName('cod_unidsai').AsInteger;
  XCodUnidItenProd :=  DMESTOQUE.Alx.FieldByName('COD_UNIDADE').AsInteger;

end;


procedure TFPedVenda.EDQuantidadeEnter(Sender: TObject);
begin
  inherited;

   if (XConvUnitVenda) or (XConvUnitEmb) then
        XFocu := ''
   else
        XFocu:='FQTDCONVERT';

   // - 23/01/2009: se em loja estiver configurado conversao unitario para embalagem abrir painel correspondente
   if (XConvUnitEmb) and ((LSimilar.Caption<>'') or (LSimilar.Caption<>'PRODUTO NÃO ENCONTRADO'))
   then begin
       {// - 23/01/2009: se nao estiver setado nenhuma unidade para embalagem pegar do produto
       if (CBUnidEmb.Text = '') or (CBUnidEmb.KeyValue = 0)
       then begin
            if DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger > 0 then
                CBUnidEmb.KeyValue := DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger;
       end;
       // - 27/01/2009: FILTRA TABELA UNIDADE PELOS CODIGO DE UNIDADE DE VENDA E COMPRA DO PRODUTO
       DMESTOQUE.Alx3.Close;
       DMESTOQUE.Alx3.SQL.Clear;
       DMESTOQUE.Alx3.SQL.Add('select * from unidade');
       DMESTOQUE.Alx3.Open;

       cbUnidVendaFixo.KeyValue := DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger; }

       PConvertEmb.Visible := True;
       PConvertEmb.BringToFront;
       edQntEmb.SetFocus;
   end;

   // - 23/01/2009: se em loja estiver configurado conversao unitaria venda abrir painel correspondente
   if (XConvUnitVenda) and ((LSimilar.Caption<>'') or (LSimilar.Caption<>'PRODUTO NÃO ENCONTRADO'))
   then begin
      //Seta informações para o componente de unidade de estoque
      cbUnidConvVenda.ListSource := DMESTOQUE.DSUnidade;
      cbUnidConvVenda.KeyField := 'COD_UNIDADE';
      cbUnidConvVenda.ListField := 'DESC_UNID';
      cbUnidConvVenda.KeyValue := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsInteger;

      //Seta informações para o componente de unidade vendida
      cbConvUnitVendaConv.ListSource := DMESTOQUE.DSAlx3;
      cbConvUnitVendaConv.KeyField := 'COD_UNIDADE';
      cbConvUnitVendaConv.ListField := 'DESC_UNID';
      cbConvUnitVendaConv.KeyValue := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsInteger;{ DMESTOQUE.Alx3.FieldByName('cod_unidade').AsInteger ;}

      edQntConvertVenda.ValueNumeric := EDQuantidade.ValueNumeric;

       // - 28/01/2009:  se unidade de conversão for igual ao de venda setar valor igual na outra edit
      if cbUnidConvVenda.KeyValue = cbConvUnitVendaConv.KeyValue
      then begin
            edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric;
            EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
        end
        else begin
            // - 28/01/2009:  fazer calculo se nao for igual
            if XConvVlr then
                edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric/XVlrConv
            else
                edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric*XVlrConv;

            EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
        end;

        // - 28/01/2009: se nao tiver produto selecionado nao abrir painel
       if not ((LSimilar.Caption='') or (LSimilar.Caption='PRODUTO NÃO ENCONTRADO')) and not (DMESTOQUE.Alx2.IsEmpty)
       then begin
           PConversaoUnitaria.Visible := True;
           PConversaoUnitaria.BringToFront;
      		cbConvUnitVendaConv.SetFocus;           
       end;
   end;

end;

// - 27/02/2009: procedure que busca dados de conversão unitária
procedure TFPedVenda.convertunidade;
var
    x: Integer; // - 28/02/2009: controle pk tmp por causa da conversão unitaria
begin
      // - 28/02/2009: limpa TMP
      DMGEOGRAFIA.TAlx.Close;
      DMGEOGRAFIA.TAlx.SQL.Clear;
      DMGEOGRAFIA.TAlx.SQL.Add('delete from TMP');
      DMGEOGRAFIA.TAlx.ExecSQL;
      DMGEOGRAFIA.IBT.CommitRetaining;
      FiltraTabela(DMMACS.TMP, 'TMP', '', '', '');

       FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '');

       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select * from convunid');
       DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unident = unidade.cod_unidade');
       DMESTOQUE.Alx.SQL.Add('Where (convunid.cod_unident=:UNIDENT or convunid.cod_unident=:UNIDSAI)');
       DMESTOQUE.Alx.ParamByName('UNIDENT').AsString:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString;
       DMESTOQUE.Alx.ParamByName('UNIDSAI').AsString:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString;
       DMESTOQUE.Alx.Open;
       DMESTOQUE.Alx.First;

       x:=1;
       while not DMESTOQUE.Alx.Eof do
       begin
            DMMACS.TMP.Insert;
            DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.Alx.fieldByName('SIGLA_UNID').AsString;
            DMMACS.TMP.FieldByName('DESC3').AsString:=DMESTOQUE.Alx.fieldByName('COD_CONVUNID').AsString;
            DMMACS.TMP.FieldByName('VLR1').AsString:=DMESTOQUE.Alx.fieldByName('QTDCONVERT').AsString;
            DMMACS.TMP.FieldByName('VLR2').AsString:=DMESTOQUE.Alx.fieldByName('COD_UNIDSAI').AsString;
            DMMACS.TMP.FieldByName('VLR3').AsString:=DMESTOQUE.Alx.fieldByName('COD_UNIDADE').AsString;
            DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=x;
            x:=x+1;
            DMMACS.TMP.Post;
            DMESTOQUE.Alx.Next;
       end;

       DMMACS.Transaction.CommitRetaining;

       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select * from convunid');
       DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unidsai = unidade.cod_unidade');
       DMESTOQUE.Alx.SQL.Add('Where (convunid.cod_unidsai=:UNIDENT or convunid.cod_unidsai=:UNIDSAI)');
       DMESTOQUE.Alx.ParamByName('UNIDENT').AsString:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString;
       DMESTOQUE.Alx.ParamByName('UNIDSAI').AsString:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString;
       DMESTOQUE.Alx.Open;
       DMESTOQUE.Alx.First;

       FiltraTabela(DMMACS.TMP, 'TMP', '', '', '');

       while not DMESTOQUE.Alx.Eof do
       begin
            if FiltraTabela(DMMACS.TMP, 'TMP', 'DESC3', DMESTOQUE.Alx.FieldByName('COD_CONVUNID').AsString,'') = true
            then begin
                DMMACS.TMP.Edit;
                DMMACS.TMP.FieldByName('DESC2').AsString := DMESTOQUE.Alx.fieldByName('SIGLA_UNID').AsString;
                DMMACS.TMP.Post;
            end;
            DMESTOQUE.Alx.Next;
       end;

       DMMACS.Transaction.CommitRetaining;
       DMMACS.IBTCodigo.CommitRetaining;

       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select tmp.desc1 AS SIGLA_UNID, tmp.desc2 AS SIGLA_UNID1, tmp.desc3 AS COD_CONVUNID, ');
       DMESTOQUE.Alx.SQL.Add('tmp.vlr1 AS QTDCONVERT, tmp.vlr2 AS COD_UNIDSAI, tmp.vlr3 AS COD_UNIDADE from tmp');
       DMESTOQUE.Alx.Open;
       DBGridConvert.DataSource := DMESTOQUE.DSAlx;
end;

procedure TFPedVenda.EDQuantidadeExit(Sender: TObject);
var
   key :Char;
begin
  inherited;
	If XFocu='FQTDCONVERT'
  	Then Begin
       // SE EM LOJA ESTIVER CONFIGURADO PARA FAZER CONVERSÕES
       If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
       Then Begin
           FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '');
           convertunidade;

           // mostrar painel para selecionar conversões
           PQtdConvert.Visible:=True;
           PQtdConvert.BringToFront;
           PQtdConvert.Repaint;

           If DMESTOQUE.Alx.IsEmpty
           Then Begin
               EdQtdConvert.ValueNumeric:=EDQuantidade.ValueNumeric;
               EdQtdConvert.SetFocus;
           End
           Else Begin
               DBGridConvertKeyPress(Self, key);
               DBGridConvert.SetFocus;
           End;

       End
       Else Begin
           EdQtdConvert.ValueNumeric:=EDQuantidade.ValueNumeric;
       End;
   End;
   XFocu:='';
end;

procedure TFPedVenda.EDQuantidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RETURN
   Then Begin
   	//Edmar - 02/09/2014 - Trecho comentado para corrigir travamento do sistema reportado pela AJS
       //quando dava enter no campo quantidade o sistema mostra esse painel que não está no form
       //e então passava a travar todo o sistema
      { PInfoExp.Visible:=True;
       PInfoExp.BringToFront;
       EdQuantExp.SetFocus; }
   End;
end;

procedure TFPedVenda.BtnDadosAdicClick(Sender: TObject);
begin
	//Salva simulando o pressionamento da tecla gravar
   XExiste:=True;
   BtnGravar.Click();
   //filtra a venda para consulta
   If FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', FMenu.XCodPesqPresSel, '')
   Then Begin
       BtnConsultar.Click();
	    XExiste:=False;
   	AbreFiscal;
       FiltraSlave;
		//Efetua Releitura dos itens caso tenham sido modificados na tela do fiscal
       EdValoIcmsSubstituicao.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency;
       EdValorFrete.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency;
       EdValorOutros.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLROUTROS').AsCurrency;
       EdValorIpi.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRIPI').AsCurrency;       
   End
   Else Begin
   	MessageDlg('Não foi possível visualizar o Fiscal. Tente novamente agora', mtWarning, [mbOK], 0);
   End;
//	AbrirForm(TFFiscalSaidas, FFiscalSaidas, 0);
  //FMenu.XNFe := 1;
  //inherited;
  //FMenu.XNFe := 0;
end;

procedure TFPedVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

   XConvUnitVenda := False;
   XConvUnitEmb := False;
   //cbUnidVendaFixo.ListSource := nil;
   DMESTOQUE.TUnidade.Close;
   DMESTOQUE.TUnidade.SQL.Clear;
   DMESTOQUE.TUnidade.SQL.Add('select * from unidade');
   DMESTOQUE.TUnidade.Open;
   FMenu.XNFe := 0; // deixar como zero para nao afetar notas fiscais normais

   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('select subproduto.contrint, subproduto.codbarra, subproduto.descricao, estoque.dataoferta, estoque.vencimentooferta,');
   DMESTOQUE.Alx.SQL.Add('estoque.precooferta, estoque.vendvarv from estoque');
   DMESTOQUE.Alx.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.Alx.Open;

   FMenu.XRemessaGarantia:=False;
   FMenu.XSimplesRemessa:=False;
end;

procedure TFPedVenda.edQntEmbKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if key = #27
    then begin
        LQtdConvert.Visible := False;
        PConvertEmb.SendToBack;
        PConvertEmb.Visible := False;
        EDValUnit.SetFocus;
    end;
end;

procedure TFPedVenda.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  inherited;
 // - 28/01/2009: utilizado para detectar nos key press a tecla tab na edit
  if (Msg.Message = WM_KEYDOWN) AND (Msg.wParam = VK_TAB) AND ((edQntConvert.Focused) or (btnOkConversaoUnitaria.Focused) or (cxButton1.Focused) or (BtnVisualizarRel.Focused)) then
  begin
      if (BtnVisualizarRel.Focused) then
        TcxRadioButton(RBDataFiltro.Controls[RBDataFiltro.ItemIndex]).SetFocus
      else if (cxButton1.Focused)
      then begin

          edQntEmb.SetFocus;

      end else
      if (edQntConvert.Focused)
      then begin
          if (cbUnidConvVenda.KeyValue = cbConvUnitVendaConv.KeyValue)
           then begin
                btnOkConversaoUnitaria.SetFocus;
           end
           else begin
                edQntConvertVenda.SetFocus;
           end;
      end
      else begin
            cbConvUnitVendaConv.SetFocus;
      end;

       Msg.wParam := 0;
       Handled := True;

       Exit;
  end;

  if (Msg.Message = WM_KEYDOWN) AND (Msg.wParam = VK_TAB) then
  begin
  		pPesquisa.Visible := False;
   	pPesquisa.SendToBack;
  end;


end;

procedure TFPedVenda.cbConvUnitVendaConvKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key = vk_return
    then begin
       if cbUnidConvVenda.KeyValue = cbConvUnitVendaConv.KeyValue
       then begin
            edQntConvert.SetFocus;
       end
       else begin
            edQntConvert.SetFocus;
       end;
    end;
    if key = 27 then
        btnOkConversaoUnitariaClick(Sender);
end;

procedure TFPedVenda.edQntConvertVendaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // - 05/02/2009:se conversao estiver ativa
  try
  if XConvAtivo
  then begin
       // - 28/01/2009:  se unidade de conversão for igual ao de venda setar valor igual na outra edit
      if cbUnidConvVenda.KeyValue = cbConvUnitVendaConv.KeyValue
        then begin
            edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric;
            EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
        end
        else begin
            // - 28/01/2009:  fazer calculo se nao for igual
            if XConvVlr then
                edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric/XVlrConv
            else
                edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric*XVlrConv;


        end;
  end;
  Except
  end;
  EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
end;

procedure TFPedVenda.edQntConvertKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  try
    // - 05/02/2009:se conversao estiver ativa

  if XConvAtivo
  then begin
    // - 28/01/2009:  se unidade de conversão for igual ao de venda setar valor igual na outra edit
    if cbUnidConvVenda.KeyValue = cbConvUnitVendaConv.KeyValue
    then begin
         edQntConvertVenda.ValueNumeric := edQntConvert.ValueNumeric;
         EDQuantidade.ValueNumeric := edQntConvert.ValueNumeric;
    end
    else begin
        // - 28/01/2009:  fazer calculo se nao for igual
        if XConvVlr then
            edQntConvertVenda.ValueNumeric := edQntConvert.ValueNumeric*XVlrConv
        else
           edQntConvertVenda.ValueNumeric := edQntConvert.ValueNumeric/XVlrConv;
          EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
    end;
  end;
  Except
  end;
  EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
end;

procedure TFPedVenda.btnOkConversaoUnitariaClick(Sender: TObject);
begin
  inherited;
    PConversaoUnitaria.SendToBack;
    PConversaoUnitaria.Visible := False;

    if cbUnidConvVenda.KeyValue <> cbConvUnitVendaConv.KeyValue
    then
        LQtde.Caption := FloatToStr(edQntConvert.ValueNumeric)+cbConvUnitVendaConv.Text
    else
        LQtde.Caption := '';

    xqtdconvert:=edQntConvertVenda.ValueNumeric;
    LQtde.Visible := True;
    LQtde.BringToFront;
    LQtde.Repaint;

    EDValUnit.SetFocus;

    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select * from unidade');
    DMESTOQUE.Alx.SQL.Add('where unidade.desc_unid = :DESC');
    DMESTOQUE.Alx.ParamByName('DESC').AsString:=cbConvUnitVendaConv.Text;
    DMESTOQUE.Alx.Open;
end;

procedure TFPedVenda.edQntConvertVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key = 27 then
        btnOkConversaoUnitariaClick(Sender);

    if (key = 13) and (cbUnidConvVenda.KeyValue <> cbConvUnitVendaConv.KeyValue)
    then begin
        if XConvAtivo
        then begin
            FPConversaoUnitaria.Color := $00D1F1DA;
            FPConversaoUnitaria.Title := 'Conversão Unitária (DESATIVADA)';
            FPConversaoUnitaria.Refresh;
            XConvAtivo := False;
        end
        else begin
            FPConversaoUnitaria.Color := $00FFECEC;
            FPConversaoUnitaria.Title := 'Conversão Unitária';
            FPConversaoUnitaria.Refresh;
            XConvAtivo := True;
        end;
    end;
end;

procedure TFPedVenda.edQntConvertKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key = 27 then
        btnOkConversaoUnitariaClick(Sender);

    if (key = 13) and (cbUnidConvVenda.KeyValue <> cbConvUnitVendaConv.KeyValue)
    then begin
        if XConvAtivo
        then begin
            FPConversaoUnitaria.Color := $00D1F1DA;
            FPConversaoUnitaria.Title := 'Conversão Unitária (DESATIVADA)';
            FPConversaoUnitaria.Refresh;
            XConvAtivo := False;
        end
        else begin
            FPConversaoUnitaria.Title := 'Conversão Unitária';
            FPConversaoUnitaria.Refresh;
            FPConversaoUnitaria.Color := $00FFECEC;
            XConvAtivo := True;
        end;
    end;
end;

procedure TFPedVenda.btnOkConversaoUnitariaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key = 27 then
        btnOkConversaoUnitariaClick(Sender);
end;

procedure TFPedVenda.EDQuantidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if XConvUnitVenda
  then begin
    edQntConvertVenda.ValueNumeric := EDQuantidade.ValueNumeric;
    edQntConvertVendaKeyUp(Sender, Key, Shift);
  end;
end;

procedure TFPedVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Paulo 10/05/2011:Abre a tela de busca cricando F1
  if key = vk_F1 then
  begin
     XHeight:= PConsulta.Height;
     XLeft:=Left+19;
     
     PPrecos.Visible:=False;
     AbrirForm(TFConsultaPedVenda, FConsultaPedVenda, 1);

  end;

   //Paulo 25/07/2011: Para sair do painel de troco
   If Key=Vk_Escape
   Then Begin
   	If (PTroco.Visible=True)
       Then Begin
	       PTroco.Visible:=False;
          PTroco.SendToBack;
          EdValorPedido.ValueNumeric:=0;
          EdValorPago.ValueNumeric:=0;
          EdValorTroco.ValueNumeric:=0;
       End;
       If (PVeiculoEnt.Visible=True)
       Then Begin
	       PVeiculoEnt.Visible:=False;
          PVeiculoEnt.SendToBack;
          EdDescVeic.Text:='';
          XCodVeiculo:=0;
          EdVlrVeiculo.Text:= '0,00';
       End;
       if(PAlteraQuantidade.Visible = True)
       then begin
           PAlteraQuantidade.Visible:=False;
           PAlteraQuantidade.SendToBack;
           EdNovaQtd.Text:='0,00';
       end;
   End;

   


  if ((PConvertEmb.Visible) or (PConversaoUnitaria.Visible)) and (key in [Vk_down,Vk_UP]) then
    Exit;

  // CTRL + D -> eh o comando para desbloquear o pedido de venda caso tenha ocorrido algum problema
  // qdo estava sendo consultado e caiu energia, ou foi pressionado F4 (por exemplo) e nao passou pelo
  // botão GRAVAR ou CANCELAR que liberar o pedido de venda
  If (shift = [ssCtrl]) And (key = 68)
  Then Begin
  		// BUSCANDO DADOS DO PEDIDO
       FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');

       // caso estiver bloqueado entra na condição
       If DMSAIDA.TPedV.FieldByName('EDIT').AsString = '1'
       Then Begin
       	If Mensagem('   A T E N Ç Ã O   ', 'Deseja desbloquear o pedido nº ' + DMSAIDA.TPedV.FieldByName('NUMPED').AsString + ' ?', '', 2, 3, false, 'A') = 2
           Then Begin
           	// abre formulario de senha
               AbrirForm(TFSenha, FSenha, 0);

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

  inherited;

end;

procedure TFPedVenda.cbConvUnitVendaConvExit(Sender: TObject);
begin
  inherited;
    if (cbUnidConvVenda.KeyValue = cbConvUnitVendaConv.KeyValue)
    then begin
        FPConversaoUnitaria.Color := $00FFECEC;
        FPConversaoUnitaria.Title := 'Conversão Unitária';
        FPConversaoUnitaria.Refresh;
        XConvAtivo := True;
    end;
end;

procedure TFPedVenda.RelatrioDanfe1Click(Sender: TObject);
begin
  inherited;
  //traz o painel pra frente
  RBDataFiltro.ItemIndex := 0;
  EDDataInicio.Text := '';
  EDDataFim.Text := '';
  cbNFeClientes.Checked := False;
  rbOrdenarNfe.ItemIndex := 0;
  cbMiniDanfe.Checked := False;
  PFiltrarParcelas.Left:=StrToInt(FormatFloat('#####', ((PCONSULTA.Width/2)-(PFiltrarParcelas.Width/2))));
  PFiltrarParcelas.Top:=StrToInt(FormatFloat('#####', ((PCONSULTA.Height/2)-(PFiltrarParcelas.Height/2))));
  PFiltrarParcelas.Visible:=True;
  PFiltrarParcelas.BringToFront;
  TcxRadioButton(RBDataFiltro.Controls[RBDataFiltro.ItemIndex]).SetFocus;
end;

procedure TFPedVenda.BtnVisualizarRelClick(Sender: TObject);
VAR
    DtInicio, DtFim :TDateTime;
begin
  inherited;

  // - 04/02/2009: validar dataainda
    try
        if Trim(EDDataInicio.Text) <> '' then
            DtInicio := StrToDate(EDDataInicio.Text);
    except
       Mensagem('   A T E N Ç Ã O   ','Data de Início Inválida!','',1,1,false,'I');
       EDDataInicio.SetFocus;
       Exit;
    end;

    try
        if Trim(EDDataFim.Text) <> '' then
            DtFim := StrToDate(EDDataFim.Text);
    except
       Mensagem('   A T E N Ç Ã O   ','Data de Fim Inválida!','',1,1,false,'I');
       EDDataFim.SetFocus;
       Exit;
    end;

      DMMACS.TMP.Close;
      DMMACS.TMP.SQL.Clear;
      DMMACS.TMP.SQL.Add('delete from tmp');
      DMMACS.TMP.ExecSQL;
      DMMACS.Transaction.CommitRetaining;

      DMMACS.TMP.Close;
      DMMACS.TMP.SQL.Clear;
      DMMACS.TMP.SQL.Add('SELECT * FROM TMP');
      DMMACS.TMP.Open;

      DMMACS.TMP.Insert;

      if not cbMiniDanfe.Checked
      then begin
          if RBDataFiltro.ItemIndex in[0,1]
          then begin
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add('select docfissaida.numdocfis, pedvenda.numped ,pedvenda.dtfech, docfissaida.vlrtotprod as valorprod, docfissaida.vlrtotdocnf, docfissaida.nfechave, cfop.cfop,');
            DMESTOQUE.Alx.SQL.Add('pessoa.nome as nomedes, pessoa.cpfcnpj, pessoa.bairro, pessoa.endnumero, pessoa.endereco, pessoa.telrel, cidade.nome as NOMECIDADE, estado.uf_estado');
            DMESTOQUE.Alx.SQL.Add('from docfissaida');
            DMESTOQUE.Alx.SQL.Add('left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
            DMESTOQUE.Alx.SQL.Add('left join cfop on docfissaida.cod_cfop = cfop.cod_cfop');
            DMESTOQUE.Alx.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
            DMESTOQUE.Alx.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
            DMESTOQUE.Alx.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
            DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');

            if RBDataFiltro.ItemIndex = 0
            then begin
              DMESTOQUE.Alx.SQL.Add('where docfissaida.nfestatus = 1');
              DMMACS.TMP.FieldByName('DESC1').AsString := 'Enviadas';
            end
            else begin
              DMMACS.TMP.FieldByName('DESC1').AsString := 'Canceladas';
              DMESTOQUE.Alx.SQL.Add('where docfissaida.nfestatus = 3');
            end;
            if Trim(EDDataInicio.Text) <> ''
            then begin
              DMMACS.TMP.FieldByName('DESC3').AsString := 'Data Inicio: '+EDDataInicio.Text;
              DMESTOQUE.Alx.SQL.Add(' and PEDVENDA.dtfech >= :DTINICIO');
              DMESTOQUE.Alx.ParamByName('DTINICIO').AsDateTime := DtInicio;
            end;
            if Trim(EDDataFim.Text) <> ''
            then begin
              DMMACS.TMP.FieldByName('DESC3').AsString := DMMACS.TMP.FieldByName('DESC3').AsString +#13+'Data Fim: '+EDDataFim.Text;
              DMESTOQUE.Alx.SQL.Add(' and PEDVENDA.dtfech <= :DTFIM');
              DMESTOQUE.Alx.ParamByName('DTFIM').AsDateTime := DtFim;
            end;

          end
          else begin

            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add('select docfis.numdocfis, pedcompra.dtfech, pedcompra.numped, docfis.vlrtotprod as valorprod, docfis.vlrtotdocnf, docfis.nfechave, cfop.cfop,');
            DMESTOQUE.Alx.SQL.Add('pessoa.nome as nomedes, pessoa.cpfcnpj, pessoa.bairro, pessoa.endnumero, pessoa.endereco, pessoa.telrel, cidade.nome as NOMECIDADE, estado.uf_estado');
            DMESTOQUE.Alx.SQL.Add('from docfis');
            DMESTOQUE.Alx.SQL.Add('left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
            DMESTOQUE.Alx.SQL.Add('left join cfop on docfis.cod_cfop = cfop.cod_cfop');
            DMESTOQUE.Alx.SQL.Add('left join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec');
            DMESTOQUE.Alx.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
            DMESTOQUE.Alx.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
            DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');

            DMMACS.TMP.FieldByName('DESC1').AsString := 'de Devolução';

            DMESTOQUE.Alx.SQL.Add('where docfis.nfestatus = 1');

            if Trim(EDDataInicio.Text) <> ''
            then begin
              DMMACS.TMP.FieldByName('DESC3').AsString := 'Data Inicio: '+EDDataInicio.Text;
              DMESTOQUE.Alx.SQL.Add(' and pedcompra.dtfech >= :DTINICIO');
              DMESTOQUE.Alx.ParamByName('DTINICIO').AsDateTime := DtInicio;
            end;

            if Trim(EDDataFim.Text) <> ''
            then begin
              DMMACS.TMP.FieldByName('DESC3').AsString := DMMACS.TMP.FieldByName('DESC3').AsString +#13+'Data Fim: '+EDDataFim.Text;
              DMESTOQUE.Alx.SQL.Add(' and pedcompra.dtfech <= :DTFIM');
              DMESTOQUE.Alx.ParamByName('DTFIM').AsDateTime := DtFim;
            end;

          end;

          if rbOrdenarNfe.ItemIndex = 0 then
              DMESTOQUE.Alx.SQL.Add('order by dtfech, numdocfis')
          else
              DMESTOQUE.Alx.SQL.Add('order by numdocfis, dtfech');

          DMESTOQUE.Alx.Open;


          if DMESTOQUE.Alx.IsEmpty
          then begin
              Mensagem('   A T E N Ç Ã O   ','Relatório retornou vazio!','',1,1,false,'I');
             TcxRadioButton(RBDataFiltro.Controls[RBDataFiltro.ItemIndex]).SetFocus;
             Exit;
          end;

          DMMACS.TMP.Post;
          DMMACS.Transaction.CommitRetaining;

          DMMACS.TMP.Close;
          DMMACS.TMP.SQL.Clear;
          DMMACS.TMP.SQL.Add('SELECT * FROM TMP');
          DMMACS.TMP.Open;

          // - 18/03/2009:  se estiver marcado o checkBox clientes imprimir relatório sem clientes
          If (cbNFeClientes.Checked)
          Then Begin
               FSRelNfe.LoadFromFile('C:\MZR\MACS\Rel\FrfNFeEmitidasClientes.frf');
          End
          Else Begin
               FSRelNfe.LoadFromFile('C:\MZR\MACS\Rel\FrfNFeEmitidas.frf');
          End;

           FSRelNfe.ShowReport;

       end
       else begin
            // - 09/02/2009:    se for gerar 'mini danfe'

          If RBDataFiltro.ItemIndex in[0,1]
          Then Begin
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add('select docfissaida.numdocfis, pedvenda.numped ,pedvenda.dtfech, docfissaida.vlrtotprod as valorprod, pedvenda.valor,docfissaida.vlrtotdocnf, docfissaida.nfechave, cfop.cfop,');
            DMESTOQUE.Alx.SQL.Add('pessoa.nome as nomedes, pessoa.cpfcnpj, pessoa.bairro, pessoa.endnumero, pessoa.endereco, pessoa.telrel, cidade.nome as NOMECIDADE, estado.uf_estado,');
            DMESTOQUE.Alx.SQL.Add('itenspedven.valortotal, itenspedven.qtdeprod, itenspedven.valunit, subproduto.descricao, ');
            DMESTOQUE.Alx.SQL.Add('subproduto.contrint, subproduto.cod_cst, subproduto.ncm, subproduto.marca, cst.cod_sit_trib, unidade.sigla_unid,');
            DMESTOQUE.Alx.SQL.Add('docfissaida.baseicms, docfissaida.vlricms, docfissaida.bascalsubs, docfissaida.vlricmsubs, docfissaida.vlrtotprod,');
            DMESTOQUE.Alx.SQL.Add('docfissaida.vlrfrete, docfissaida.vlrseg, docfissaida.vlroutrasdesp, docfissaida.vlrtotipi, docfissaida.vlrtotdocnf,');
            DMESTOQUE.Alx.SQL.Add('docfissaida.nfechave, docfissaida.nfeserie, cfop.descricao as descricaocfop');
            DMESTOQUE.Alx.SQL.Add('from docfissaida');
            DMESTOQUE.Alx.SQL.Add('left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
            DMESTOQUE.Alx.SQL.Add('left join cfop on docfissaida.cod_cfop = cfop.cod_cfop');
            DMESTOQUE.Alx.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
            DMESTOQUE.Alx.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
            DMESTOQUE.Alx.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
            DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
            DMESTOQUE.Alx.SQL.Add('left join itenspedven on pedvenda.cod_pedvenda = itenspedven.cod_pedven');
            DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
            DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
            DMESTOQUE.Alx.SQL.Add('left join cst on subproduto.cod_cst = cst.cod_cst');
            DMESTOQUE.Alx.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');

            if RBDataFiltro.ItemIndex = 0
            then begin
              DMESTOQUE.Alx.SQL.Add('where docfissaida.nfestatus = 1');
              DMMACS.TMP.FieldByName('DESC1').AsString := 'Enviadas';
            end
            else begin
              DMMACS.TMP.FieldByName('DESC1').AsString := 'Canceladas';
              DMESTOQUE.Alx.SQL.Add('where docfissaida.nfestatus = 3');
            end;
            if Trim(EDDataInicio.Text) <> ''
            then begin
              DMMACS.TMP.FieldByName('DESC3').AsString := 'Data Inicio: '+EDDataInicio.Text;
              DMESTOQUE.Alx.SQL.Add(' and PEDVENDA.dtfech >= :DTINICIO');
              DMESTOQUE.Alx.ParamByName('DTINICIO').AsDateTime := DtInicio;
            end;
            if Trim(EDDataFim.Text) <> ''
            then begin
              DMMACS.TMP.FieldByName('DESC3').AsString := DMMACS.TMP.FieldByName('DESC3').AsString +#13+'Data Fim: '+EDDataFim.Text;
              DMESTOQUE.Alx.SQL.Add(' and PEDVENDA.dtfech <= :DTFIM');
              DMESTOQUE.Alx.ParamByName('DTFIM').AsDateTime := DtFim;
            end;

          end
          else begin

            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add('select docfis.numdocfis, pedcompra.numped ,pedcompra.dtfech, docfis.vlrtotprod as valorprod, pedcompra.valor,docfis.vlrtotdocnf, docfis.nfechave, cfop.cfop,');
            DMESTOQUE.Alx.SQL.Add('pessoa.nome as nomedes, pessoa.cpfcnpj, pessoa.bairro, pessoa.endnumero, pessoa.endereco, pessoa.telrel, cidade.nome as NOMECIDADE, estado.uf_estado,');
            DMESTOQUE.Alx.SQL.Add('itenspedc.valortotal, itenspedc.qtdeprod, itenspedc.valunit, subproduto.descricao, ');
            DMESTOQUE.Alx.SQL.Add('subproduto.contrint, subproduto.cod_cst, subproduto.ncm, subproduto.marca, cst.cod_sit_trib, unidade.sigla_unid,');
            DMESTOQUE.Alx.SQL.Add('docfis.baseicms, docfis.vlricms, docfis.bascalsubs, docfis.vlricmsubs, docfis.vlrtotprod,');
            DMESTOQUE.Alx.SQL.Add('docfis.vlrfrete, docfis.vlrseg, docfis.vlroutrasdesp, docfis.vlrtotipi, docfis.vlrtotdocnf,');
            DMESTOQUE.Alx.SQL.Add('docfis.nfechave, docfis.nfeserie, cfop.descricao as descricaocfop');
            DMESTOQUE.Alx.SQL.Add('from docfis');
            DMESTOQUE.Alx.SQL.Add('left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
            DMESTOQUE.Alx.SQL.Add('left join cfop on docfis.cod_cfop = cfop.cod_cfop');
            DMESTOQUE.Alx.SQL.Add('left join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec');
            DMESTOQUE.Alx.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
            DMESTOQUE.Alx.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
            DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
            DMESTOQUE.Alx.SQL.Add('left join itenspedc on pedcompra.cod_pedcomp = itenspedc.cod_pedcompra');
            DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
            DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
            DMESTOQUE.Alx.SQL.Add('left join cst on subproduto.cod_cst = cst.cod_cst');
            DMESTOQUE.Alx.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');


            DMMACS.TMP.FieldByName('DESC1').AsString := 'de Devolução';

            DMESTOQUE.Alx.SQL.Add('where docfis.nfestatus = 1');

            if Trim(EDDataInicio.Text) <> ''
            then begin
              DMMACS.TMP.FieldByName('DESC3').AsString := 'Data Inicio: '+EDDataInicio.Text;
              DMESTOQUE.Alx.SQL.Add(' and pedcompra.dtfech >= :DTINICIO');
              DMESTOQUE.Alx.ParamByName('DTINICIO').AsDateTime := DtInicio;
            end;

            if Trim(EDDataFim.Text) <> ''
            then begin
              DMMACS.TMP.FieldByName('DESC3').AsString := DMMACS.TMP.FieldByName('DESC3').AsString +#13+'Data Fim: '+EDDataFim.Text;
              DMESTOQUE.Alx.SQL.Add(' and pedcompra.dtfech <= :DTFIM');
              DMESTOQUE.Alx.ParamByName('DTFIM').AsDateTime := DtFim;
            end;

          end;

          if rbOrdenarNfe.ItemIndex = 0 then
              DMESTOQUE.Alx.SQL.Add('order by dtfech, numdocfis')
          else
              DMESTOQUE.Alx.SQL.Add('order by numdocfis, dtfech');

          DMESTOQUE.Alx.Open;


          if DMESTOQUE.Alx.IsEmpty
          then begin
              Mensagem('   A T E N Ç Ã O   ','Relatório retornou vazio!','',1,1,false,'I');
             TcxRadioButton(RBDataFiltro.Controls[RBDataFiltro.ItemIndex]).SetFocus;
             Exit;
          end;

          DMMACS.TMP.Post;
          DMMACS.Transaction.CommitRetaining;

          DMMACS.TMP.Close;
          DMMACS.TMP.SQL.Clear;
          DMMACS.TMP.SQL.Add('SELECT * FROM TMP');
          DMMACS.TMP.Open;

          FSRelNfe.LoadFromFile('C:\MZR\MACS\Rel\FrfNFeMiniDanfeEmitidas.frf');
           FSRelNfe.ShowReport;
       end;
end;

procedure TFPedVenda.EdNumPedKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

end;

// - 28/03/2009: abre form de fornecedor para selecão
procedure TFPedVenda.FrmBusca1BTNOPENClick(Sender: TObject);
begin
//  inherited;
    FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', '', '');
    If AbrirForm(TFFORNECEDOR, FFORNECEDOR, 1)='Selected'
    Then Begin
        XCOD_TRANSP:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
      	FrmTransportadora.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
      	FrmTransportadora.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
    End;
    FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC', '', '');
end;

// - 28/03/2009: busca fornecedor
procedure TFPedVenda.FrmBusca1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
 // inherited;
	If Key = #13
   Then Begin
   	If FrmTransportadora.EDCodigo.Text<>''
       Then Begin
          If SelectRegistro('VWFORNEC', 'COD_FORNEC', FrmTransp.EDCodigo.Text) = True
	      Then Begin //Slecionou o registro procurado
            XCOD_TRANSP:=DMMACS.TSelect.FieldByName('COD_FORNEC').AsInteger;
           	FrmTransportadora.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_INTERNO').AsString;
           	FrmTransportadora.EdDescricao.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;
          End
          Else Begin
            XCOD_TRANSP:=-1;
           	FrmTransportadora.EDCodigo.Text:='';
           	FrmTransportadora.EdDescricao.Text:='';
          End;
       End
       Else Begin
     		XCOD_TRANSP:=-1;
         	FrmTransportadora.EDCodigo.Text:='';
          	FrmTransportadora.EdDescricao.Text:='';
       End;
   End;
   FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC', '', '');
end;

// - 28/03/2009: verifica se o cliente ja tem transporatora setada para ele se sim ja seta para os campos de transportadora
procedure TFPedVenda.BtnTranspClick(Sender: TObject);
begin
  inherited;
    Label10.Visible:=false;
    Label14.Visible:=false;

    PTransportadora.Visible:=True;
    PTransportadora.BringToFront;

    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('select vwfornec.nome as NOMEFORNEC, vwfornec.cod_interno, vwfornec.cod_fornec, pessoa.nome');
    DMServ.TAlx1.SQL.Add('from vwfornec');
    DMServ.TAlx1.SQL.Add('left join pessoa on vwfornec.cod_fornec = pessoa.cod_transportadora');
    DMServ.TAlx1.SQL.Add('where pessoa.nome = :NOME');
    DMServ.TAlx1.ParamByName('NOME').AsString:=DBNomeCli.Text;
    DMServ.TAlx1.Open;

    if not DMServ.TAlx1.IsEmpty
    then begin
        XCOD_TRANSP:=DMServ.TAlx1.fieldByName('COD_FORNEC').AsInteger;
        FrmTransportadora.EDCodigo.Text:=DMServ.TAlx1.fieldByName('COD_FORNEC').AsString;
        FrmTransportadora.EdDescricao.Text:=DMServ.TAlx1.fieldByName('NOMEFORNEC').AsString;
    end
    else begin
        XCOD_TRANSP:=-1;
        FrmTransportadora.EDCodigo.Text:='';
        FrmTransportadora.EdDescricao.Text:='';
    end;
end;

// - 28/03/2009: se o campo de transportadora estiver com alguma transportadora setada, grava o codigo do fornecedor no registro do cliente
procedure TFPedVenda.FrmTransportadoraBTNMINUSClick(Sender: TObject);
begin
//  inherited;
 // FrmTransportadora.BTNMINUSClick(Sender);

    if Trim(FrmTransportadora.EDCodigo.Text) <> ''
    then begin
        if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'NOME', DBNomeCli.Text, '') = True
        then begin
            DMPESSOA.TPessoa.Edit;
            DMPESSOA.TPessoa.FieldByName('COD_TRANSPORTADORA').AsInteger:=XCODTRANSP;
            DMPESSOA.TPessoa.Post;
            DMPESSOA.TransacPessoa.CommitRetaining;
        end;
    end;

    Label10.Visible:=true;
    Label14.Visible:=true;

    PTransportadora.Visible:=False;
    PTransportadora.SendToBack;

end;

procedure TFPedVenda.ConsultarNFe1Click(Sender: TObject);
begin
  inherited;
  if FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', XView.FieldByName('COD_PEDVENDA').AsString, '')
  then begin
        if DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger = 2
        then begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Nota Fiscal com erro: ' + DMSAIDA.TFiscPV.FieldByName('NFEERRO').AsString, '', 1, 1, False, 'a');
            Exit;
        end;

        if not (DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger in [1, 3, 4])
        then begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Nota Fiscal inválida!', '', 1, 1, False, 'a');
            Exit;
        end;
  end;

  If Mensagem('   A T E N Ç Ã O   ','Deseja Consultar Nota Fiscal do pedido ' + XView.FieldByName('NUMPED').AsString+'?','',2,3,false,'A')=3
  Then Begin
      Exit;
  end;

  {try
      FNFe := TFNFe.Create(FNFe);
      FNFe.SetConsulta(XView.FieldByName('COD_PEDVENDA').AsInteger,'PV');
      FNFe.ShowModal;
  Finally
      FNFe := nil;
  end; }

	ExecutaLiberaDados;
end;


procedure TFPedVenda.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if (DMSAIDA.WPedV.FieldByName('MARK').AsString= 'X') Then
        Begin
           DBGridCadastroPadrao.Canvas.Font.Color := $00FFFFFF;
           DBGridCadastroPadrao.Canvas.Brush.Color := $004D4DFF;
        End
        else if XView.FieldByName('SITUACAO').AsString = 'EXPEDICAO' then
          DBGridCadastroPadrao.Canvas.Brush.Color := clBlue
        else if XView.FieldByName('SITUACAO').AsString = 'FATURAMENT' then
           DBGridCadastroPadrao.Canvas.Brush.Color := clGreen
        else if XView.RecNo mod 2 = 1 then
           DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
        else
          DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
      end;
      DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFPedVenda.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If  FMenu.XGRIDZEBRADA
  Then Begin
    if State = [] then
    begin
      if DMESTOQUE.TSlave.Recno mod 2 = 1 then
        DBGrid1.Canvas.Brush.Color := $FFFFFFFF//$00EEEEEE
     else
        DBGrid1.Canvas.Brush.Color := clWhite;
    end;
    //DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  End;
end;

procedure TFPedVenda.DBGrid5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMESTOQUE.TDesp.Recno mod 2 = 1 then
          DBGrid8.Canvas.Brush.Color := $FFFFFFFF//$00EEEEEE
       else
          DBGrid8.Canvas.Brush.Color := clWhite;
      end;
      DBGrid8.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFPedVenda.DBGrid5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGrid8.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\pedvendaDespesas.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFPedVenda.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGrid1.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\pedvendaProdutos.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
   
end;

procedure TFPedVenda.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\pedvenda.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
   If (shift=[ssCtrl]) and (key = 67)
   Then Begin
   	Try
           If FiltraTabela(DMSAIDA.TFiscPV, 'docfissaida', 'COD_PEDIDO', XView.FieldByName('cod_pedvenda').AsString, '')=True
           Then Begin
				Clipboard.AsText := DMSAIDA.TFiscPV.FieldByName('nfechave').AsString;
               MessageDlg('A Chave da Nfe foi Copiada ('+Clipboard.AsText+')'+#13+#10+'para colar pressione Ctrl+v', mtWarning, [mbOK], 0);
           End;
     	Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de copiar a chave de Nfe!', '', 1, 1, false, 'i');
     	End;
   End;
end;

procedure TFPedVenda.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If  FMenu.XCONSULTARAPIDA
   Then Begin
     // - 16/02/2009: pesquisa
    DMSAIDA.WPedV.Locate('NOMECLI',EdNome.Text, [loPartialKey]);
  End;
end;

procedure TFPedVenda.SalvarXMLDestinatrio1Click(Sender: TObject);
var vXMLProt, vXMLNFe, vXMLCompartilha: TXMLDocument;
    NodePaiNFe, NodeProt: IXMLNode;
    NodeNivelA: IXMLNode;
    caminho, caminho2 :String;
begin
     caminho := '';
     caminho2 := '';
     
   FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', XView.FieldByName('COD_PEDVENDA').AsString, '');
   if DMSAIDA.TFiscPV.IsEmpty then begin
       Mensagem('   A T E N Ç Ã O   ','Não há nenhum XML para o pedido selecionado.','',1,1,false,'I');
       Exit;
   end;
   {FNFe := TFNFe.Create(FNFe);
    caminho := FNFe.XDir+'enviNFe\'+DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString+'-enviNFe.xml';
    caminho2 := FNFe.XDir+'retPedNFe\'+Trim(DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString)+'-pro-rec.xml';
    if (fileExists(caminho) And (fileExists(caminho2)))
    then begin
       //ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL);
    end
    else begin
       Mensagem('   A T E N Ç Ã O   ','Arquivo XML não encontrado.','',1,1,false,'I');
       Exit;
    end;
    FNFe := nil;
   }


  vXMLProt := TXMLDocument.Create(self);
  vXMLNFe := TXMLDocument.Create(self);
  vXMLCompartilha := TXMLDocument.Create(self);
  try
 
  // Abre XML NFe assinada;
  vXMLNFe.LoadFromFile(caminho);
  //Abre XML Protocolo autorização;
  vXMLProt.LoadFromFile(caminho2);
 
  // Le o nó "NFe" da NFe assinada
  NodePaiNFe := vXMLNFe.DocumentElement;
 
  // Le o nó "protNFe" do protocolo de autorização
  NodeProt := vXMLProt.DocumentElement.ChildNodes.FindNode('protNFe');
 
  // Cria documento de envio para o Destinatário
  With vXMLCompartilha do begin
       // ativa, versiona e codifica UTF-8 para o XML
       Active := True;
       Version := '1.0';
       Encoding := 'UTF-8';

       // adiciona atributos padrão arquivo
       AddChild('nfeProc','http://www.portalfiscal.inf.br/nfe');
       DocumentElement.Attributes['xmlns:ds'] :=
       'http://www.w3.org/2000/09/xmldsig#';
       DocumentElement.Attributes['xmlns:xsi'] :=
       'http://www.w3.org/2001/XMLSchema-instance';
       DocumentElement.Attributes['xsi:schemaLocation'] :=
       'http://www.portalfiscal.inf.br/nfe/procNFe_v1.10.xsd';
 
       // Prepara o nó principal e adiciona a versão como atributo
       NodeNivelA := DocumentElement;
       NodeNivelA.Attributes['versao'] := '1.10';
 
       // Adiciona o nó "NFe" da Nota Fiscal eletrônica assinada
       NodeNivelA.ChildNodes.Add(NodePaiNFe);
       NodeNivelA.ChildNodes.Add(NodeProt);
  end;

  sdXmlDestinatario.FileName :=  DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString;// + '.xml';
  If sdXmlDestinatario.Execute
  Then Begin
       // salva arquivo de distribuição da NF-e no disco.
       VXMLCompartilha.SaveToFile(sdXmlDestinatario.FileName);
       ShellExecute(Handle, nil, Pchar(sdXmlDestinatario.FileName), nil, nil, SW_SHOWNORMAL);
  End;
  finally
      vXMLNFe.Free; vXMLProt.Free; vXMLCompartilha.Free;
  end;

end;

procedure TFPedVenda.Edit1Exit(Sender: TObject);
begin
	FiltraSlave;
end;

procedure TFPedVenda.DBEdit1Exit(Sender: TObject);
begin
  inherited;
	FiltraSlave;
end;

procedure TFPedVenda.Normal1Click(Sender: TObject);
begin
  inherited;
   BitBtn17.Click;
end;

procedure TFPedVenda.ContingnciaFS1Click(Sender: TObject);
begin
  inherited;
//   enviarNFe(2, XView.FieldByName('COD_PEDVENDA').AsInteger, 'PV');
end;

procedure TFPedVenda.ContingnciaSCAN1Click(Sender: TObject);
begin
  inherited;
   //enviarNFe(3, XView.FieldByName('COD_PEDVENDA').AsInteger, 'PV');
end;

procedure TFPedVenda.VisualizarDanfe1Click(Sender: TObject);
begin
  inherited;
	FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
   FMzrNfe.SetInFiscal('', XView.FieldByName('COD_PEDVENDA').AsInteger, 0, 'PEDV', '', 1, '', '', '', 0,0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) ;
   FMzrNfe.DanfeVisualizar;
   FMzrNfe := NIL;
end;

procedure TFPedVenda.CancelarNfe1Click(Sender: TObject);
begin
  inherited;
	If XView.FieldByName('SITUACAO').AsString='CANCELADO'
   Then Begin
		MessageDlg('NFe já cancelada', mtWarning, [mbOK], 0);
   End
   Else Begin
   	if XView.FieldByName('numfiscal').AsString = '' then
       begin
       	MessageDlg('Documento fiscal do Pedido '+XView.FieldByName('NUMPED').AsString+' não foi emitido corretamente.', mtWarning, [mbOK], 0);
           Exit;
       end;

       If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar a Nota Fiscal Eletrônica Nº '+XView.FieldByName('numfiscal').AsString+'?'  , '', 2, 3, False, 'c')= 2
       Then Begin
          	if FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', XView.FieldByName('COD_PEDVENDA').AsString, ' AND (MODELONF = ''65'')') then
           	XEmiteNFCe := True
          	else
             	XEmiteNFCe := False;
           FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
           FMzrNfe.SetInFiscal('', XView.FieldByName('cod_pedvenda').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'PEDV', 'CANCELAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
           FMzrNfe.ShowModal;
       End;

       if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja cancelar o financeiro referente a nota cancelada?'   , '',2,3,False, 'c')=2
       then begin
           XCodPedido := XView.FieldByName('COD_PEDVENDA').ASSTRING;
           FMenu.XCodPesqPresSel := XCodPedido; //Armazena temporariamente o codigo do pedido para ser usado fora do pedido padrão
           CancelLanPed(XCodPedido);
       end;
   End;
end;

procedure TFPedVenda.ConsultarStatusNfe1Click(Sender: TObject);
begin
  inherited;
    FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', XView.FieldByName('cod_pedvenda').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'PEDV', 'CONSULTAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.ShowModal;
end;

procedure TFPedVenda.RecuperarDados1Click(Sender: TObject);
Var
	XChaveNfe: String;
begin
  inherited;
	If FiltraTabela(DMSAIDA.TFiscPV, 'docfissaida', 'cod_pedido', XView.FieldByName('cod_pedvenda').AsString, '')=True
   Then Begin
   	If DMSAIDA.TFiscPV.FieldByName('nfestatus').AsInteger=2
       Then Begin
       	If Mensagem('Confirmação do usuário', 'Deseja realmente Retornar os dados para o pedido de Número '+XView.FieldByName('numped').AsString+'?', '', 2, 3, False, 'c')=2
       	Then Begin
           	If InputQuery('Chave de Acesso','Informe a Chave de Acesso da NFe para recuperar os Dados', XChaveNfe)=True
               Then Begin
               	if DMSAIDA.TFiscPV.FieldByName('MODELONF').AsString = '65' then
                   	XEmiteNFCe := True
                   else
                   	XEmiteNFCe := False;
				    FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
					//Function TFMzrNfe.SetInFiscal(NomePeriodo: String; CodigoPedido: Integer; CodigoDestinatario: Integer; tipopedido: String; tipoacao: String; tipoemissao: Integer; Cfop: String; NatOperacao: String; FormPagamento: String; NumFiscal: Integer; DtEmissao: TDate; CodigoIbge: String; Municipio: String; Uf: String; BaseIcms, VlrIcm, VlrIpi, BaseIcmsSt, VlrIcmsSt, VlrProduto, VlrFrete, VlrSeguro, Desconto, VlrOutros, VlrNotaFiscal: Real): Boolean;
					FMzrNfe.SetInFiscal(XChaveNfe, XView.FieldByName('cod_pedvenda').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'PEDV', 'RETORNADADOS', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    				FMzrNfe.ShowModal;
               End;
           End;

       End
       Else Begin
       	MessageDlg('Os dados não podem ser recuperados devido ao fato que o Pedido esta marcado como NFe enviada e homologada'+#13+#10+'NFeStatus = 1 ou 3', mtWarning, [mbOK], 0);
       End;
   End;
end;

procedure TFPedVenda.BtnGravarClick(Sender: TObject);
begin
	cbUnidConvVenda.ListSource := nil;
	cbConvUnitVendaConv.ListSource := nil;
  inherited;

end;

procedure TFPedVenda.BtCancelaECFClick(Sender: TObject);
begin
  inherited;
   AbrirForm(TFExpVenda, FExpVenda,0);  
end;

//Paulo 14/09/2010: Abre a tela para listar as NFe's
procedure TFPedVenda.ListarNfe1Click(Sender: TObject);
begin
  inherited;
       AbrirForm(TFListaNfe, FListaNfe, 0);

end;

procedure TFPedVenda.VerificarServidorSefaz1Click(Sender: TObject);
begin
  inherited;
    FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', 0, 0, 'PEDV', 'STATUSSERV', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.ShowModal;
end;

procedure TFPedVenda.DBGridCadastroPadraoCellClick(Column: TColumn);
begin
  inherited;
	FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString, '');
   If DMSAIDA.TPedV.FieldByName('NUMECF').AsString<>'' Then
       LEcf.Caption:='Nº ECF Correspondente: '+DMSAIDA.TPedV.FieldByName('NUMECF').AsString
   Else
       LEcf.Caption:='';
end;

procedure TFPedVenda.DBGridCadastroPadraoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString, '');
   If DMSAIDA.TPedV.FieldByName('NUMECF').AsString<>'' Then
       LEcf.Caption:='Nº ECF Correspondente: '+DMSAIDA.TPedV.FieldByName('NUMECF').AsString
   Else
       LEcf.Caption:='';
end;

procedure TFPedVenda.EfetuarDevoluodeNFe1Click(Sender: TObject);
begin
  inherited;
{  	//Somente continua processo de devolução se for encontrado documento fiscal correspondente
  	If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', XView.FieldByName('COD_PEDVENDA').AsString, '')=True
   Then Begin
		//A Nota fiscal precisa estar fechada
   	If XView.FieldByName('SITUACAO').AsString<>'FECHADO'
       Then Begin
			MessageDlg('O pedido ('+XView.FieldByName('NUMPED').AsString+') selecionado para devolução deve estar Fechado para ser devolvido', mtWarning, [mbOK], 0);
			Exit;
       End;
       //Tratamento Especificos para NFe
   	If (XView.FieldByName('FISCO').AsString='NFE') and ((DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsString<>'1'))
       Then Begin
			MessageDlg('O pedido ('+XView.FieldByName('NUMPED').AsString+') selecionado para devolução, é um NFe que esta cancelado ou não foi transmitido corretamente para o Sefaz', mtWarning, [mbOK], 0);
			Exit;
       End;
       //Confirma devolução da Nota com o usuario
        If Mensagem('Confirmação do usuário', 'Deseja realmente efetuar devolução da Nota Fiscal Número: '+XView.FieldByName('NUMFISCAL').AsString+'?', '', 2, 3, False, 'c')=2
        Then Begin
           If DevNotaFiscal(XView.FieldByName('COD_PEDVENDA').AsInteger)=False
           Then Begin
           	If MessageDlg('Erro ao tentar efetuar devolução'+#13+#10+'Deseja visualizar o erro ocorrido?', mtConfirmation, [mbYes, mbNo], 0)=mryes Then
					MessageDlg(FMenu.MAux.Lines.Text, mtWarning, [mbOK], 0);
           End;
        End;
   End
   Else Begin
		MessageDlg('O pedido ('+XView.FieldByName('NUMPED').AsString+') selecionado para devolução não apresenta documento fiscal', mtWarning, [mbOK], 0);
   End;
}
end;

procedure TFPedVenda.RelatriodeDanfe1Click(Sender: TObject);
begin
  inherited;
		//Paulo 14/10/2010: Abre o rel periodo fiscal
       XRelDanfe:='VENDA';
       AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
end;

procedure TFPedVenda.edDtFiltro02KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13 Then
       ExecutaLiberaDados;
end;

procedure TFPedVenda.ReimprimirNotaFiscal1Click(Sender: TObject);
begin
  inherited;
	ReimprimirNF1.Click();
end;

procedure TFPedVenda.Inutilizarnumeraodenotafisclaleletrnica1Click(
  Sender: TObject);
begin
  inherited;
    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente Inutilizar Numeração de Nota Fiscal Eletrônica ?'  , '', 2, 3, False, 'c')= 2
    Then Begin
       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal('', XView.FieldByName('cod_pedvenda').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'PEDV', 'INUTILIZAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
       FMzrNfe.ShowModal;
    End;
end;

procedure TFPedVenda.EdQuantLoteExit(Sender: TObject);
begin
  inherited;
		//Paulo 25/11/2010: Verifica se a quantidade de venda é maior do que a quant de lote

end;

procedure TFPedVenda.CBSelecionaLoteExit(Sender: TObject);
begin
  inherited;
  		//PAulo 26/11/2010: Verifica a quantidade do lote
       FiltraTabela(DMMACS.TLote,'LOTE','NUMERO',CBSelecionaLote.Text,'');
       FiltraTabela(DMESTOQUE.TEstoqueLote,'ESTOQUELOTE','COD_LOTE',IntToStr(DMMACS.TLote.FieldByName('COD_LOTE').AsInteger),'');
       if DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsFloat = 0
       then begin
          Mensagem('LOTE', 'Não há estoque para o lote selecionado', '', 1, 1, false, 'c');
          BtnLoteVeOk.Enabled:=false;
          BtnCancelaLotevend.SetFocus;
       end
       else begin
			//Paulo 25/11/2010: Busca no banco a quantidade do lote
       	EdQuantLote.ValueNumeric:=RetornaQuantidadeLote(DMMACS.TLote.FieldByName('COD_LOTE').AsInteger,XESTOQUELOTE);
           BtnLoteVeOk.Enabled:=true;
       end;    
end;

procedure TFPedVenda.BtLoteClick(Sender: TObject);
begin
  inherited;
        BtnLoteVeOk.Enabled:=true;
        CBSelecionaLote.Items.Clear;
        CBSelecionaLote.Items.Add('');

       if FiltraTabela(DMESTOQUE.TEstoqueLote,'ESTOQUELOTE','COD_ESTOQUE',IntToStr(XESTOQUELOTE),'')= True
       then begin
       	//Paulo 23/11/2010: Seleciona os lotes
   		DMMACS.TALX.Close;
   		DMMACS.TALX.SQL.Clear;
   		DMMACS.TALX.SQL.Add('SELECT LOTE.numero FROM lote');
           DMMACS.TALX.SQL.Add('LEFT JOIN estoquelote ON LOTE.cod_lote = ESTOQUELOTE.cod_lote');
           DMMACS.TALX.SQL.Add('WHERE ESTOQUELOTE.cod_estoque = :CODESTOQUE');
           DMMACS.TALX.SQL.Add('AND lote.status = ''N'' order by lote.dtabertura');
       	DMMACS.TALX.ParamByName('CODESTOQUE').AsInteger:= XESTOQUELOTE;
   		DMMACS.TALX.Open;
           CBSelecionaLote.Enabled:=True;

           CBSelecionaLote.Items.Clear;
           DMMACS.TALX.First;
           WHILE NOT DMMACS.TALX.Eof DO
           BEGIN
               CBSelecionaLote.Items.Add(DMMACS.TALX.FieldByName('NUMERO').AsString);
               DMMACS.TALX.Next
           END;
          
           PLoteVenda.BringToFront;
       	PLoteVenda.Visible:=True;
       	PLoteVenda.SetFocus;
           CBSelecionaLote.SetFocus;
       	EdQuantVend.ValueNumeric:= EDQuantidade.ValueNumeric;
       	EdQuantLote.ValueNumeric:= XQuantLote;

       end
       else begin
       	CBSelecionaLote.Enabled:=False;
           Mensagem('LOTE', 'Não há lote cadastrado para esse item', '', 1, 1, false, 'c');

       end;


end;

procedure TFPedVenda.BtnLoteVeOkClick(Sender: TObject);
begin
  inherited;
      if EdQuantVend.ValueNumeric > EdQuantLote.ValueNumeric
      then begin
           Mensagem('LOTE', 'Não há estoque sufuciente para essa venda', '', 1, 1, false, 'c');
           EdQuantVend.SetFocus;
      end
      else begin
  	   		EDQuantidade.ValueNumeric:=EdQuantVend.ValueNumeric;
      		XQuantLote:=EdQuantLote.ValueNumeric;
      		XLote := DMMACS.TLote.FieldByName('COD_LOTE').AsInteger;
      		PLoteVenda.SendToBack;
      		PLoteVenda.Visible:=False;
      end;     
end;

procedure TFPedVenda.BtnCancelaLotevendClick(Sender: TObject);
begin
  inherited;

      XQuantLote:= 0 ;

      PLoteVenda.SendToBack;
      PLoteVenda.Visible:=False;
end;

procedure TFPedVenda.PCadastroExit(Sender: TObject);
begin
		If (PLoteVenda.Visible=false) and (PVeiculoEnt.Visible=false)and(PAlteraQuantidade.Visible=false) Then
  inherited;

end;
   	

procedure TFPedVenda.BtnProcFormPagEnter(Sender: TObject);
begin
  inherited;
       luzbt.Visible:=True;
end;

procedure TFPedVenda.BtnVeicEntExit(Sender: TObject);
begin
  inherited;
       luzbt.Visible:=False;
end;

procedure TFPedVenda.BtnVeicEntClick(Sender: TObject);
begin
  inherited;
       If AbrirForm(TFProduto, FProduto, 1)='Selected'
       Then Begin
           EdDescVeic.Text:=DMEstoque.WSimilar.FieldByName('DESCRICAO').AsString;
           XCodVeiculo:=DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
           EdVlrVeiculo.SetFocus;

           //Paulo 25/01/2012 :Filtra tabela subproduto
           If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
               Exit;

           //Paulo 25/01/2012 :Filtra tabela estoque
           If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
               Exit;

           //Paulo 25/01/2012: Informa Cst
           If FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST', DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString, '')
           Then Begin
               EdCSTEnt.Text:=DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;
               XCodCst:=DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;
           End
           Else Begin
               EdCSTEnt.Text:='';
               XCodCst:=-1;
           End;
           //Informa aliquota de Icms
           EdICMSEnt.Text:=DMESTOQUE.TEstoque.FieldByName('icms').Text;
       End;
end;

procedure TFPedVenda.PVeiculoExit(Sender: TObject);
begin
  inherited;
       
end;
//Paulo 07/03/2011: REtorna os dados do veiculo de entrada
Function TFPedVenda.RetornaVeiculoEntrada():Boolean;
begin
   
    FiltraVeiculoEntrada(DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger);
    PVeiculo.Visible:=True;
    LabelValorFrete.Visible:=False;
    LabelValorOutros.Visible:=False;
    
end;

procedure TFPedVenda.BtnLimpaVeicClick(Sender: TObject);
begin
  inherited;
      //Paulo 09/12/2011: Abre o painel com os veiculos de entrada
      PVeiculoEnt.Visible:=True;
      PVeiculoEnt.BringToFront;

      FiltraVeiculoEntrada(StrToInt(XCodPedidoP));

end;

procedure TFPedVenda.BtnLimpaVeicExit(Sender: TObject);
begin
  inherited;
       luzbt.Visible:=False;
       


end;

procedure TFPedVenda.BtnLimpaVeicEnter(Sender: TObject);
begin
  inherited;
       luzbt.Visible:=True;
end;

procedure TFPedVenda.Lote1Click(Sender: TObject);
begin
  inherited;
      PRelLote.BringToFront;
      PRelLote.Visible:=True; 
end;

procedure TFPedVenda.PConsultaExit(Sender: TObject);
begin
    If (PRelLote.Visible=false) Then
  		inherited;
end;

procedure TFPedVenda.FrmBuscaLoteBTNOPENClick(Sender: TObject);
begin
  inherited;

      //Paulo 16/03/2011: Busca o lote
      FiltraTabela(DMMACS.TLote, 'Lote', '', '', ' ');
      If AbrirForm(TFLote, FLote, 1)='Selected'
      Then Begin
          FrmBuscaLote.EdDescricao.Text:=DMMACS.TLote.FieldByName('DESCRICAO').AsString;
          FrmBuscaLote.EDCodigo.text:=DMMACS.TLote.FieldByName('NUMERO').AsString;
          FrmBuscaLote.Repaint;


      End;

end;

procedure TFPedVenda.FrmBuscaLoteBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmBuscaLote.BTNMINUSClick(Sender);
       FrmBuscaLote.EdDescricao.Text:='';
       FrmBuscaLote.EDCodigo.text:='';
       FrmBuscaLote.Repaint;
       LiberaDados;

end;

procedure TFPedVenda.BitBtn2Click(Sender: TObject);
begin

  inherited;
       //Paulo 17/03/2011: Limpa todos os campos do painel e fecha o mesmo
       FrmBuscaLote.EdDescricao.Text:='';
       FrmBuscaLote.EDCodigo.text:='';
       EdDtInicial.Text:='  /  /    ';
       EdDtFinal.Text:='  /  /    ';
       LiberaDados;
       PRelLote.SendToBack;
end;

procedure TFPedVenda.BtnImpRelLoteClick(Sender: TObject);
begin
  inherited;
       //Paulo 18/03/2011: Valida se todos os campos estão preenchidos
       if (FrmBuscaLote.EdDescricao.Text ='') or (FrmBuscaLote.EDCodigo.text ='')then
       begin
           MessageDlg('Selecione um lote !', mtError, [mbOK], 0);
           exit;
       end;    

       //Paulo 17/03/2011: Seleciona os pedidos referentes ao lote
       TLote.Close;
       TLote.SQL.Clear;
       TLote.SQL.Add('select distinct itenspedven.cod_pedven from itenspedven');
       TLote.SQL.Add('where itenspedven.cod_lote = :CODLOTE');
       //Paulo 17/03/2011: Verifica se tem data selecionada
       if(EdDtInicial.Text <>'  /  /    ')and(EdDtFinal.Text <>'  /  /    ')then
           TLote.SQL.Add('and itenspedven.data between :DTINICIAL and :DTFINAL');
       TLote.ParamByName('CODLOTE').AsInteger:=DMMACS.TLote.FieldByName('COD_LOTE').AsInteger;
       if(EdDtInicial.Text <>'  /  /    ')and(EdDtFinal.Text <>'  /  /    ')then
       begin
          TLote.ParamByName('DTINICIAL').AsDate:= StrToDate(EdDtInicial.Text);
          TLote.ParamByName('DTFINAL').AsDate:= StrToDate(EdDtFinal.Text);
       end;
       TLote.Open;


       QRRelLote.Preview;

       BitBtn2Click(Sender);


end;

procedure TFPedVenda.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  XQuant,XValor,XCont, XDesc:String;
begin
  inherited;
       LbCodigo.Caption:= '';
       LbDescricao.Caption:='';
       LbQuantidade.Caption:='';
       LbValor.Caption:='';
       //Paulo 17/03/2011: Selecina os pedidos referente ao lote escolhido
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select pedvenda.nomecli, pedvenda.dtpedven,pedvenda.cod_pedvenda,');
       DMESTOQUE.Alx.SQL.Add('pedvenda.numped');
       DMESTOQUE.Alx.SQL.Add('from pedvenda');
       DMESTOQUE.Alx.SQL.Add('where pedvenda.cod_pedvenda = :CODPEDV');
       DMESTOQUE.Alx.ParamByName('CODPEDV').AsInteger:=TLote.FieldByName('cod_pedven').AsInteger;
       DMESTOQUE.Alx.Open;

       LbNumPed.Caption:= DMESTOQUE.Alx.FieldByName('numped').AsString;
       LbNomeCliente.Caption:= DMESTOQUE.Alx.FieldByName('nomecli').AsString;
       LbDtPed.Caption:= DMESTOQUE.Alx.FieldByName('dtpedven').AsString;

       //Paulo 17/03/2011: Seleciona os produtos pertinentes ao pedido
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add('select itenspedven.qtdeprod,itenspedven.valortotal, subproduto.descricao, subproduto.contrint');
       DMESTOQUE.Alx1.SQL.Add('from itenspedven');
       DMESTOQUE.Alx1.SQL.Add('left join pedvenda on pedvenda.cod_pedvenda = itenspedven.cod_pedven');
       DMESTOQUE.Alx1.SQL.Add('left join estoque on estoque.cod_estoque = itenspedven.cod_estoque');
       DMESTOQUE.Alx1.SQL.Add('left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
       DMESTOQUE.Alx1.SQL.Add('left join cliente on cliente.cod_cliente = pedvenda.cod_cliente');
       DMESTOQUE.Alx1.SQL.Add('left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa');
       DMESTOQUE.Alx1.SQL.Add('where itenspedven.cod_pedven = :CODPEDVEND and itenspedven.cod_lote = :CODLOTE');
       DMESTOQUE.Alx1.ParamByName('CODPEDVEND').AsInteger:=DMESTOQUE.Alx.FieldByName('cod_pedvenda').AsInteger;
       DMESTOQUE.Alx1.ParamByName('CODLOTE').AsInteger:=DMMACS.TLote.FieldByName('COD_LOTE').AsInteger;
       DMESTOQUE.Alx1.Open;

       DMESTOQUE.Alx1.First;
       XCont:= '';
       XDesc:= '';
       XQuant:= '';
       XValor:= '';
       while not DMESTOQUE.Alx1.Eof do
       begin
           Xcont:=XCont+DMESTOQUE.Alx1.FieldByName('contrint').AsString+#13#10;
           XDesc:=XDesc+DMESTOQUE.Alx1.FieldByName('descricao').AsString+#13#10;
           XQuant:=XQuant+FormatFloat('0.0',DMESTOQUE.Alx1.FieldByName('qtdeprod').AsCurrency)+#13#10;
           XValor:=XValor+FormatFloat('0.00',DMESTOQUE.Alx1.FieldByName('valortotal').AsCurrency)+#13#10;
           DMESTOQUE.Alx1.Next;
       end;

       LbCodigo.Caption:= XCont;
       LbDescricao.Caption:=XDesc;
       LbQuantidade.Caption:=XQuant;
       LbValor.Caption:=XValor;



end;

procedure TFPedVenda.BtnLimpaDataClick(Sender: TObject);
begin
  inherited;

       EdDtInicial.Text:='  /  /    ';
       EdDtFinal.Text:='  /  /    ';

end;

procedure TFPedVenda.Contaapagarepagos1Click(Sender: TObject);
var
   COD_PEDIDO,I,XCONT,XCOD_TMP: Integer;
   XTotalPg, XTotal:Real;
begin
  inherited;
     COD_PEDIDO:=XView.FieldByName('COD_PEDVENDA').AsInteger;
     XTotalPg:=0;
     XTotal:=0;
     //Paulo 01/04/2011: prepara a tabela tmp
     DMMACS.TMP.Close;
     DMMACS.TMP.SQL.Clear;
     DMMACS.TMP.SQL.Add('delete from tmp');
     DMMACS.TMP.ExecSQL;
     DMMACS.Transaction.CommitRetaining;
     DMMACS.TMP.Close;
     DMMACS.TMP.SQL.Clear;
     DMMACS.TMP.SQL.Add('select * from tmp');
     DMMACS.TMP.Open;

     //Paulo 01/04/2011: Filtra a loja para garantir que todos as informações estejam corretas
     If FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')=True
     Then Begin//Se encontrou a loja
         DMMACS.TLOJA.Edit;
         DMMACS.TLoja.FieldByName('TMP2').AsString:='';
         DMMACS.TLoja.Post;
         DMMACS.Transaction.CommitRetaining;
         FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');


         //Paulo 01/04/2011: sql necessária para filtrar pedido de venda e valores necessários
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

         //Paulo 01/04/2011: Seleciona dados de pessoa juridica
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

          //Paulo 01/04/2011: se for setado em loja com conversao unitaria // incluir sql's
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

                  DMMACS.TMP.Post;

                  DMMACS.Transaction.CommitRetaining;

                  DMESTOQUE.TSlave.Next;
               end;
         end;

         //Paulo 01/04/2011: sql necessária para filtrar inetns do pedido de venda
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
             DMESTOQUE.Alx5.SQL.Add('select subproduto.contrint, subproduto.descricao, pedvenda.vlrveiculoent from pedvenda');
             DMESTOQUE.Alx5.SQL.Add('left join estoque on estoque.cod_estoque = pedvenda.codveiculoent');
             DMESTOQUE.Alx5.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
             DMESTOQUE.Alx5.SQL.Add('where pedvenda.cod_pedvenda = :CODPEDVENDA');
             DMESTOQUE.Alx5.ParamByName('CODPEDVENDA').AsInteger:= COD_PEDIDO;
             DMESTOQUE.Alx5.Open;
         end;


         //Paulo 01/04/2011: FILTRA DESPESAS
         DMESTOQUE.TDesp.Close;
         DMESTOQUE.TDesp.SQL.Clear;
         DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'PEDVENDA'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
         DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=COD_PEDIDO;
         DMESTOQUE.TDesp.Open;

         //Paulo 01/04/2011: VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
         FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+IntToStr(COD_PEDIDO)+#39+')');

         //Paulo 01/04/2011: sql necessária para filtrar parcelas abertas
         DMMacs.TALX.Close;
         DMMacs.TALX.sql.Clear;
         DMMacs.TALX.SQL.Add('SELECT  parcelacr.dtvenc, parcelacr.numparc, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
         DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) and parcelacr.fech = ''N'' ');
         DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:=COD_PEDIDO;
         DMMacs.TALX.Open;

         //Paulo 01/04/2011: sql necessária para filtrar parcelas pagas
         DMESTOQUE.Alx2.Close;
         DMESTOQUE.Alx2.sql.Clear;
         DMESTOQUE.Alx2.SQL.Add('SELECT  parcelacr.dtvenc, parcelacr.numparc,parcelacr.valorpg ,parcelacr.dtdebito, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
         DMESTOQUE.Alx2.SQL.Add(' Where (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) and parcelacr.fech = ''S'' ');
         DMESTOQUE.Alx2.ParamByName('CODGERADOR').AsInteger:=COD_PEDIDO;
         DMESTOQUE.Alx2.Open;



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

         FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompCtaPagar.frf');
         FSRel.ShowReport;
     end;




end;

procedure TFPedVenda.Devolver1Click(Sender: TObject);
var
   XDevolucao:String;
begin
  inherited;
{
       //Paulo 07/04/2011: FILTRA A TABELA CONFORME O PEDIDO E O COD DE ESTOQUE DO ITEM
       FiltraTabela(DMSAIDA.TItemPV,'ITENSPEDVEN','COD_PEDVEN',IntToStr(XView.FieldByName('COD_PEDVENDA').AsInteger),'AND ITENSPEDVEN.COD_ESTOQUE = '+IntToStr(DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger)+'');

       InputQuery('Devolução de Item','informe a quantidade devolvida', XDevolucao);

       //PAulo 07/04/2011: Verifica se a quantidade devolvida não é maior que a quantidade no pedido
       while (StrToFloat(XDevolucao) > DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsFloat) do
       begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'A quantidade devolvida não pode ser maior que a quantidade no pedido!', '', 1, 1, False, 'E');
            InputQuery('Devolução de Item','informe a quantidade devolvida', XDevolucao);
       end;

       if Mensagem('INFORMAÇÃO AO USUÁRIO', 'A quantidade devolvida do item '+DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString+' é: '+XDevolucao+' , Deseja prosseguir?', '', 2, 2, False, 'i')=2
       then begin
           //Paulo 07/04/2011: Atualiza a tabela com a quantidade devolvida
           DMSAIDA.TItemPV.Edit;
           DMSAIDA.TItemPV.FieldByName('QTDDEV').AsCurrency:=StrToFloat(XDevolucao);
		    CalcPercent(DMSAIDA.TItemPV.FieldByName('DESCPRO').AsCurrency, 0, ((DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency-StrToFloat(XDevolucao))*DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency), 'D');
           DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency:=AlxCalculo;
           DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency := DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency - StrToFloat(XDevolucao);
           DMSAIDA.TItemPV.Post;
           DMSAIDA.IBT.CommitRetaining;
       end;

      FiltraSlave;
 }
end;




procedure TFPedVenda.RelatriodeVendaspBanca1Click(Sender: TObject);
begin
  inherited;
       FMenu.XTipoRel:='BANCA';
       //Paulo 08/04/2011: Abre a tela de filtro do relatório
       AbrirForm(TFRelLancContas, FRelLancContas, 1);

end;

procedure TFPedVenda.GerarXMLDistribuio1Click(Sender: TObject);
var
   Xcfop:String;
begin
  inherited;
       XSafeXmlDist:=True;
       //Paulo 19/04/2011: Gera Nfe distribuição base no pedido selecionado
       //Seta os dados para chamar a função
       FiltraTabela(DMMACS.TPeriodoFiscal,'PERIODOFISCAL','FECHADO','N','');

       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('select pedvenda.cod_cliente, cfop.cfop, cfop.descricao, vwcliente.cod_cidade,email.email,');
       DMSAIDA.TAlx.SQL.Add('cidade.cod_ibge, cidade.nome, estado.uf_estado, docfissaida.cod_cfop,');
       DMSAIDA.TAlx.SQL.Add('docfissaida.cod_cfop1, docfissaida.cod_cfop2, docfissaida.nfexml, docfissaida.MODELONF, ');
       DMSAIDA.TAlx.SQL.Add('docfissaida.nferecibo, docfissaida.nfeambiente, docfissaida.nfechave,');
       DMSAIDA.TAlx.SQL.Add('docfissaida.numdocfis, docfissaida.baseicms, docfissaida.vlricms,');
       DMSAIDA.TAlx.SQL.Add('docfissaida.vlrtotipi, docfissaida.bascalsubs, docfissaida.vlricmsubs,');
       DMSAIDA.TAlx.SQL.Add('docfissaida.vlrtotprod, docfissaida.vlrfrete, docfissaida.vlrseg,');
       DMSAIDA.TAlx.SQL.Add('docfissaida.vlrdesconto, docfissaida.vlroutrasdesp, docfissaida.vlrtotdocnf, docfissaida.valortotaltributa');
       DMSAIDA.TAlx.SQL.Add('from pedvenda');
       DMSAIDA.TAlx.SQL.Add('left join vwcliente on vwcliente.cod_cliente = pedvenda.cod_cliente');
       DMSAIDA.TAlx.SQL.Add('left join cidade on cidade.cod_cidade = vwcliente.cod_cidade');
       DMSAIDA.TAlx.SQL.Add('left join estado on estado.cod_estado = cidade.cod_estado');
       DMSAIDA.TAlx.SQL.Add('left join docfissaida on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
       DMSAIDA.TAlx.SQL.Add('left join cfop on cfop.cod_cfop = docfissaida.cod_cfop');
       DMSAIDA.TAlx.SQL.Add('left Join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa');
       DMSAIDA.TAlx.SQL.Add('left join email ON pessoa.cod_pessoa = email.cod_pessoa');
       DMSAIDA.TAlx.SQL.Add('where pedvenda.cod_pedvenda = :COD_PEDVENDA');
       DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger:= XView.FieldByName('COD_PEDVENDA').AsInteger;
       DMSAIDA.TAlx.Open;
       
	    if DMSAIDA.TAlx.FieldByName('MODELONF').AsString = '65' then
    		XEmiteNFCe := True
  	 	else
    		XEmiteNFCe := False;

       //Paulo 19/04/2011: Filtra o cfop1
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add('select cfop.cfop, cfop.descricao from cfop where cfop.cod_cfop = :COD_CFOP');
       DMESTOQUE.Alx1.ParamByName('COD_CFOP').AsInteger:= DMSAIDA.TAlx.FieldByName('COD_CFOP1').AsInteger;
       DMESTOQUE.Alx1.Open;

       //Paulo 19/04/2011: Filtra o cfop2
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.SQL.Clear;
       DMESTOQUE.Alx2.SQL.Add('select cfop.cfop, cfop.descricao from cfop where cfop.cod_cfop = :COD_CFOP');
       DMESTOQUE.Alx2.ParamByName('COD_CFOP').AsInteger:= DMSAIDA.TAlx.FieldByName('COD_CFOP2').AsInteger;
       DMESTOQUE.Alx2.Open;

       Xcfop:= DMSAIDA.TAlx.FieldByName('CFOP').AsString +'/'+ DMESTOQUE.Alx1.FieldByName('CFOP').AsString +'/'+ DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
       XXmlNfe:= DMSAIDA.TAlx.FieldByName('NFEXML').AsString;
       XNfeRecibo:= DMSAIDA.TAlx.FieldByName('NFERECIBO').AsString;
       XNfeTipoAmbiente:= DMSAIDA.TAlx.FieldByName('NFEAMBIENTE').AsInteger;
       XUfLocal:= 'PR';
       XNfeChave:= DMSAIDA.TAlx.FieldByName('NFECHAVE').AsString;
       XSetInPeriodoFiscal:=DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;

       //Paulo 22/06/2011: Armazena o email do cliente
       XendEmail:= DMSAIDA.TAlx.FieldByName('email').AsString;

       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal(XSetInPeriodoFiscal, XView.FieldByName('COD_PEDVENDA').AsInteger, XView.FieldByName('COD_CLIENTE').AsInteger, 'PEDV', 'EMITIR', 1, Xcfop,
                           DMSAIDA.TAlx.FieldByName('DESCRICAO').AsString, XView.FieldByName('FORMPAG').AsString, StrToInt(DMSAIDA.TAlx.FieldByName('NUMDOCFIS').AsString),
                           XView.FieldByName('DTPEDVEN').AsDateTime, IntToStr(DMSAIDA.TAlx.FieldByName('COD_IBGE').AsInteger), DMSAIDA.TAlx.FieldByName('NOME').AsString,
                           DMSAIDA.TAlx.FieldByName('UF_ESTADO').AsString, DMSAIDA.TAlx.FieldByName('BASEICMS').AsFloat, DMSAIDA.TAlx.FieldByName('VLRICMS').AsFloat,
                           DMSAIDA.TAlx.FieldByName('VLRTOTIPI').AsFloat, DMSAIDA.TAlx.FieldByName('BASCALSUBS').AsFloat, DMSAIDA.TAlx.FieldByName('VLRICMSUBS').AsFloat,
                           DMSAIDA.TAlx.FieldByName('VLRTOTPROD').AsFloat, DMSAIDA.TAlx.FieldByName('VLRFRETE').AsFloat, DMSAIDA.TAlx.FieldByName('VLRSEG').AsFloat,
                           DMSAIDA.TAlx.FieldByName('VLRDESCONTO').AsFloat, DMSAIDA.TAlx.FieldByName('VLROUTRASDESP').AsFloat, DMSAIDA.TAlx.FieldByName('VLRTOTDOCNF').AsFloat,
                           DMSAIDA.TAlx.FieldByName('valortotaltributa').AsFloat);
       FMzrNfe.ShowModal;
end;

procedure TFPedVenda.CBORDEMExit(Sender: TObject);
begin
  inherited;
       //Paulo 07/06/2011: Seleciona o tipo de ordenação
       If CBORDEM.Text='NÚMERO'
       Then Begin //ordenar pelo número
           XLiberaDados:=' WHERE (COD_LOJA='+FMenu.LCODLOJA.Caption+') ORDER BY NUMPED DESC';
       End;
       If CBORDEM.Text='DATA'
       Then Begin //ordenar pela data
           XLiberaDados:=' WHERE (COD_LOJA='+FMenu.LCODLOJA.Caption+') ORDER BY DTPEDVEN DESC';
       End;
       If CBORDEM.Text='CLIENTE'
       Then Begin //ordenar pelo número
           XLiberaDados:=' WHERE (COD_LOJA='+FMenu.LCODLOJA.Caption+') ORDER BY upper(NOMECLI) ASC';
       End;
       If CBORDEM.Text = 'INSERÇÃO'
       Then Begin
           XLiberaDados:=' WHERE (COD_LOJA='+FMenu.LCODLOJA.Caption+') ORDER BY COD_PEDVENDA DESC';
       End;
       LiberaDados;
end;

procedure TFPedVenda.CBORDEMChange(Sender: TObject);
begin
  inherited;
    CBORDEMExit(Sender);
end;

procedure TFPedVenda.EdValorPagoExit(Sender: TObject);
begin
  inherited;
         EdValorTroco.ValueNumeric:= EdValorPago.ValueNumeric - EdValorPedido.ValueNumeric

end;

procedure TFPedVenda.EdValorPagoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
       If Key=VK_Return
       Then Begin
            EdValorTroco.ValueNumeric:= EdValorPago.ValueNumeric - EdValorPedido.ValueNumeric
       end;
end;

procedure TFPedVenda.EdComissaoExit(Sender: TObject);
begin
  inherited;
       XEDCOMISS:=StrToFloat(EdComissao.Text);
       CalcComisTotVend;
		XEDCOMISSAOPED:=XEDCOMISS;
       If XEDCOMISS>0
       Then Begin
           LVlrComissao.Caption:='Vlr. Comissão..: '+FormatFloat('###,##0.00', (EdValorPed.ValueNumeric*XEDCOMISS)/100);
           XVLRCOMIS:=(EdValorPed.ValueNumeric*XEDCOMISS)/100;
       End;
end;

procedure TFPedVenda.BtnInsereVeicClick(Sender: TObject);
var
   XCodVeicEnt:Integer;
begin
  inherited;
       //Paulo 19/01/2012:Verifica se ja existe o mesmo veiculo adicionado
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('Select veiculoentrada.cod_estoque, veiculoentrada.cod_pedido ');
       DMESTOQUE.TSlave.SQL.Add('From veiculoentrada');
       DMESTOQUE.TSlave.SQL.Add('Where (veiculoentrada.cod_estoque = :CODESTOQUE) AND (veiculoentrada.cod_estoque=:CODPEDIDO) ');
       DMESTOQUE.TSlave.ParamByName('CODESTOQUE').AsInteger:=XCodVeiculo;
       DMESTOQUE.TSlave.ParamByName('CODPEDIDO').AsInteger:=StrToInt(XCodPedidoP);
       DMESTOQUE.TSlave.Open;

       if not DMESTOQUE.TSlave.IsEmpty then
       begin
       	Mensagem('A T E N Ç Ã O !', 'O sistema encontrou o mesmo produto já lançado a lista. Verifique!', '', 1, 1, False, 'A');
           Exit;
       end
       else begin
           //Paulo 08/12/2011: insere o veiculo na tabela de veiculos de entrada
           XCodVeicEnt:=InserReg(DMSAIDA.TVeiculoEnt, 'VEICULOENTRADA', 'COD_VEIC_ENT');
           DMSAIDA.TVeiculoEnt.Edit;
           DMSAIDA.TVeiculoEnt.FieldByName('COD_VEIC_ENT').AsInteger:=XCodVeicEnt;
           DMSAIDA.TVeiculoEnt.FieldByName('COD_PEDIDO').AsInteger:=StrToInt(XCodPedidoP);
           DMSAIDA.TVeiculoEnt.FieldByName('COD_ESTOQUE').AsInteger:=XCodVeiculo;
           DMSAIDA.TVeiculoEnt.FieldByName('VALOR').AsCurrency:=EdVlrVeiculo.ValueNumeric;
           DMSAIDA.TVeiculoEnt.FieldByName('COD_CST').AsInteger:=XCodCst;
           DMSAIDA.TVeiculoEnt.FieldByName('ALIQ_ICMS').AsCurrency:=EdICMSEnt.ValueNumeric;
           DMSAIDA.TVeiculoEnt.FieldByName('BC_ICMS').AsCurrency:=EdBCEnt.ValueNumeric;
           DMSAIDA.TVeiculoEnt.FieldByName('VLR_ICMS').AsCurrency:=EdVlrICMSEnt.ValueNumeric;
           DMSAIDA.TVeiculoEnt.Post;
           DMSAIDA.IBT.CommitRetaining;

           DMMACS.TCodigo.Edit;
           DMMACS.TCodigo.FieldByName('COD_VEIC_ENT').AsInteger := DMMACS.TCodigo.FieldByName('COD_VEIC_ENT').AsInteger + 1;
           DMMACS.TCodigo.Post;
           DMMACS.Transaction.CommitRetaining;

           FiltraVeiculoEntrada(StrToInt(XCodPedidoP));

           //Paulo 07/03/2011: adiciona desconto da pedido de venda, com base no valor do veiculo de entrada
           EdDescMoeda.Text:=lbTotalEntrada.Caption;
           EdDescMoedaExit(Sender);

           //Paulo 22/12/2011: Efetua o lançamento de entrada de correção
           //LancaEntradaCorrecao(XCodVeiculo);


           //Paulo 15/03/2011: Limpa as edits de veiculo de entrada
           EdDescVeic.Text:='';
           XCodVeiculo:=0;
           EdVlrVeiculo.Text:= '0,00';
       end;


end;

//Paulo 22/12/2011: Efetua o lançamento de saída de correção
Procedure TFPedVenda.LancaSaidaCorrecao(XCodEstoque: Integer; XNumPedido:String);
var
   XCodEnt,XEstFisico,XEstReserv,XEstPed:Integer;
Begin

     if FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(XCodEstoque) , '')
     then begin
         DMESTOQUE.CalcCustMed(XCodEstoque , 'S', 1, 0);
         If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString=''
         Then Begin
            DMEstoque.TEstoque.edit;
            DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
            DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString:='0';
            DMESTOQUE.TEstoque.Post;
            DMESTOQUE.TransacEstoque.CommitRetaining;
         End
         Else Begin
            DMESTOQUE.TEstoque.Edit;
            DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
            DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value-1;
            DMESTOQUE.TEstoque.Post;
            DMESTOQUE.TransacEstoque.CommitRetaining;
         End;
         //Atualiza saldo de estoque

         //prepara estoque em pedido de compra
         If DMEstoque.TEstoque.FieldByName('ESTPED').AsString='' Then
             XEstPed:=0
         Else
             XEstPed:=DMEstoque.TEstoque.FieldByName('ESTPED').Value;

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

         //calcula saldo de estoque
         Try
             DMESTOQUE.TEstoque.Edit;
             DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
             DMEstoque.TEstoque.FieldByName('ESTSALDO').Value:=(XEstPed-XEstReserv)+XEstFisico;
             DMESTOQUE.TEstoque.Post;
             DMESTOQUE.TransacEstoque.CommitRetaining;
         Except
         End;

         DMESTOQUE.Alx.Close;
         DMESTOQUE.Alx.SQL.Clear;
         DMESTOQUE.Alx.SQL.Add('DELETE FROM LANCENT WHERE LANCENT.COD_ESTOQUE = :COD AND LANCENT.NUMNOTA = :NUM');
         DMESTOQUE.Alx.ParamByName('COD').AsInteger:=XCodEstoque;
         DMESTOQUE.Alx.ParamByName('NUM').AsString:=XNumPedido;
         DMESTOQUE.Alx.ExecSQL;
         DMESTOQUE.TransacEstoque.CommitRetaining;

     end;
end;

//Paulo 22/12/2011: Efetua o lançamento de entrada de correção
Procedure TFPedVenda.LancaEntradaCorrecao(XCodEstoque: Integer);
var
   XCodEnt,XEstFisico,XEstReserv,XEstPed:Integer;
Begin

     if FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(XCodEstoque) , '')
     then begin
         DMESTOQUE.CalcCustMed(XCodEstoque , 'E', 1, 0);
         If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString=''
         Then Begin
            DMEstoque.TEstoque.edit;
            DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
            DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString:='1';
            DMESTOQUE.TEstoque.Post;
            DMESTOQUE.TransacEstoque.CommitRetaining;
         End
         Else Begin
            DMESTOQUE.TEstoque.Edit;
            DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
            DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+1;
            DMESTOQUE.TEstoque.Post;
            DMESTOQUE.TransacEstoque.CommitRetaining;
         End;
         //Atualiza saldo de estoque
         //prepara estoque em pedido de compra
         If DMEstoque.TEstoque.FieldByName('ESTPED').AsString='' Then
             XEstPed:=0
         Else
             XEstPed:=DMEstoque.TEstoque.FieldByName('ESTPED').Value;

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

         //calcula saldo de estoque
         Try
             DMESTOQUE.TEstoque.Edit;
             DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
             DMEstoque.TEstoque.FieldByName('ESTSALDO').Value:=(XEstPed-XEstReserv)+XEstFisico;
             DMESTOQUE.TEstoque.Post;
             DMESTOQUE.TransacEstoque.CommitRetaining;
         Except
         End;

         //Paulo 22/12/2011: atualiza a tabela de entrada  de correção
         XCodEnt:=DMMACS.TCodigo.FieldByname('COD_LANENT').AsInteger;
         DMENTRADA.TLancEnt.Insert;
         DMENTRADA.TLancEnt.FieldByName('COD_LANENT').AsInteger:= XCodEnt;
         DMENTRADA.TLancEnt.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
         DMENTRADA.TLancEnt.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
         DMENTRADA.TLancEnt.FieldByName('COD_ESTOQUE').AsInteger:=XCodEstoque;
         DMENTRADA.TLancEnt.FieldByName('MOTIVO').AsString:='Ped. Nº: '+EdNumeroPedido.Text+' Cli.: '+EdNomeCli.Text;
         DMENTRADA.TLancEnt.FieldByName('DT_LANCAMENTO').AsDateTime:=Date;
         DMENTRADA.TLancEnt.FieldByName('DT_ESTOQUE').AsDateTime:=Date;
         DMENTRADA.TLancEnt.FieldByName('QUANTIDADE').AsFloat:=1;
         DMENTRADA.TLancEnt.FieldByName('QTDANT').AsFloat:=0;
         //Paulo : Nº do pedido
         DMENTRADA.TLancEnt.FieldByName('NUMNOTA').AsString:=EdNumeroPedido.Text;
         DMENTRADA.TLancEnt.Post;
         DMENTRADA.IBT.CommitRetaining;
     end;



end;


procedure TFPedVenda.BtnExcluiVeiculoClick(Sender: TObject);
begin
  inherited;

         FiltraTabela(DMESTOQUE.Alx1,'VEICULOENTRADA','COD_VEIC_ENT',IntToStr(DMESTOQUE.Alx5.FieldByName('COD_VEIC_ENT').AsInteger),'');

         //Paulo 22/12/2011: Efetua o lançamento de entrada de correção
         //LancaSaidaCorrecao(DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger, EdNumeroPedido.Text);

         DMSAIDA.TAlx.Close;
         DMSAIDA.TAlx.SQL.Clear;
         DMSAIDA.TAlx.SQL.Add('delete from VEICULOENTRADA');
         DMSAIDA.TAlx.SQL.Add('where VEICULOENTRADA.COD_VEIC_ENT = :CODIGO');
         DMSAIDA.TAlx.ParamByName('CODIGO').AsInteger:=DMESTOQUE.Alx5.FieldByName('COD_VEIC_ENT').AsInteger;
         DMSAIDA.TAlx.Open;
         DMSAIDA.IBT.CommitRetaining;

         FiltraVeiculoEntrada(StrToInt(XCodPedidoP));

         //Paulo 07/03/2011: adiciona desconto da pedido de venda, com base no valor do veiculo de entrada
         EdDescMoeda.Text:=lbTotalEntrada.Caption;
         EdDescMoedaExit(Sender);

end;




procedure TFPedVenda.EdICMSEntExit(Sender: TObject);
begin
  inherited;
  		If (EdVlrVeiculo.ValueNumeric<>0) and (EdICMSEnt.ValueNumeric<>0) Then
           EdVlrICMSEnt.ValueNumeric:=(EdVlrVeiculo.ValueNumeric*EdICMSEnt.ValueNumeric)/100;
       If EdimpIcms.ValueNumeric=0
       Then Begin
           EdBCEnt.ValueNumeric:=0;
           EdVlrICMSEnt.ValueNumeric:=0;
       End
       Else Begin
           If DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency>0
           Then Begin
               EdBCEnt.ValueNumeric:=((EdVlrVeiculo.ValueNumeric*DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency)/100);
               EdVlrICMSEnt.ValueNumeric:=(EdBCEnt.ValueNumeric*EdimpIcms.ValueNumeric)/100;
           End
           Else Begin
               EdBCEnt.ValueNumeric:=EdVlrVeiculo.ValueNumeric;
               EdVlrICMSEnt.ValueNumeric:=(EdBCEnt.ValueNumeric*EdICMSEnt.ValueNumeric)/100;
           End;
       End;

end;

procedure TFPedVenda.EdBCEntExit(Sender: TObject);
begin
  inherited;
      EdVlrICMSEnt.ValueNumeric:=(EdBCEnt.ValueNumeric*EdICMSEnt.ValueNumeric)/100;
end;

procedure TFPedVenda.EdVlrVeiculoExit(Sender: TObject);
begin
  inherited;
       If DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency>0 Then
   	EdBCEnt.ValueNumeric:=((EdVlrVeiculo.ValueNumeric*DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency)/100)
       Else
           EdBCEnt.ValueNumeric:=EdVlrVeiculo.ValueNumeric;

       If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString<>''
       Then Begin
           If (DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsInteger=1)OR (DMESTOQUE.TCST.FieldByName('ISENTA').AsString='1') Then
           begin
               EdBCEnt.ValueNumeric:=0;
               EdICMSEnt.ValueNumeric:=0;
               EdVlrICMSEnt.ValueNumeric:=0;
           end;
       End;

       EdVlrICMSEnt.ValueNumeric:=(EdBCIcms.ValueNumeric*EdimpIcms.ValueNumeric)/100;
end;

procedure TFPedVenda.AlteraQuantidade;
var
	XTOTAL, XBCICMS, XVLRICMS, XIPI, XIMPICMS:Real;
begin
  inherited;
		//Paulo 06/03/2012: recalcula valores com a nova quantidade
       IF EdNovaQtd.ValueNumeric <= 0 THEN
       begin
       	MessageDlg('Quantidade não pode ser menor ou igual a zero!', mtError, [mbOK], 0);
           exit;
       end;


       //FiltraTabela(DMESTOQUE.TEstoque,'ESTOQUE','COD_ESTOQUE', IntToStr(DMESTOQUE.TSlave.FieldByName('valunit').AsInteger),'');
       //FiltraTabela(DMESTOQUE.TCST,'CST','cod_sit_trib', DMESTOQUE.TSlave.FieldByName('CST').AsString,'');

       //CalcPercent(EdNovaQtd.ValueNumeric, 0, (EdNovaQtd.ValueNumeric*DMESTOQUE.TSlave.FieldByName('valunit').AsCurrency), 'D');
	    //XTOTAL:=AlxCalculo;


       {If DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency>0 Then
           XBCICMS:=XTOTAL-((XTOTAL*DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency)/100)
       Else
           XBCICMS:=XTOTAL;
       If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString<>''
       Then Begin
           If (DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString='1') or (DMESTOQUE.TCST.FieldByName('ISENTA').AsString='1') and (DMESTOQUE.TCST.FieldByName('ICMSOP').AsString='0')
           Then begin
               XBCICMS:=0;
               XVLRICMS:=0;
           end;
       End;

       If (DMESTOQUE.TSlave.FieldByName('CST').AsInteger<>0) and (XBCICMS<>0) Then
       	XVLRICMS:=(XBCICMS*XIMPICMS)/100
       Else
           XIMPICMS:=0;
        }
   	//XIPI:=(XTOTAL*DMESTOQUE.TSlave.FieldByName('aliqipi').AsCurrency)/100;

       FiltraTabela(DMSAIDA.TItemPV,'itenspedven','cod_itenspedven',IntToStr(DMESTOQUE.TSlave.FieldByName('cod_itenspedven').AsInteger),'');
       DMSAIDA.TItemPV.Edit;
       DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency:=EdNovaQtd.ValueNumeric*DMESTOQUE.TSlave.FieldByName('valunit').AsCurrency;
       DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency:=EdNovaQtd.ValueNumeric;
       DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency := ((EdNovaQtd.ValueNumeric*DMESTOQUE.TSlave.FieldByName('valunit').AsCurrency)*XEDCOMISS)/100;
       DMSAIDA.TItemPV.Post;
       DMSAIDA.IBT.CommitRetaining;

       XLINHAATUAL:= DMESTOQUE.TSlave.FieldByName('CONTRINT').AsString;
       FiltraSlave;
       PAlteraQuantidade.Visible:=False;
       EdNovaQtd.Text:='0,00';

       //Paulo 06/03/2012: Aponta o cursor para o ultimo item alterado
       DMESTOQUE.TSlave.Locate('CONTRINT',XLINHAATUAL, [loPartialKey, loCaseInsensitive]);



end;

procedure TFPedVenda.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
		if Key=#13
       Then Begin
          //Paulo 06/03/2012: Ao clica enter no grid abre a opção para alterar a quantidade do item
          PAlteraQuantidade.Visible:=true;
          PAlteraQuantidade.BringToFront;
          EdNovaQtd.SetFocus;
       end;
end;

procedure TFPedVenda.EdNovaQtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	inherited;
  		if key = vk_return
       Then Begin
       	AlteraQuantidade;
           DBGrid1.SetFocus;
       end;
end;

procedure TFPedVenda.RelatriodevendascomDespesas1Click(Sender: TObject);
begin
  inherited;
   If ControlAccess('RPEDVEN', 'M')=False Then
  	    Exit;
   FMenu.TIPOREL:='RELPEDVENDESP';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFPedVenda.RelatriodeVendasdeVeculos1Click(Sender: TObject);
begin
  inherited;
   FMenu.TIPOREL:='RELVENDAVEICULO';
	AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFPedVenda.RecuperareEnviarXMLdeCancelamento1Click(
  Sender: TObject);
begin
  inherited;
       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal('', XView.FieldByName('COD_PEDVENDA').AsInteger, XView.FieldByName('COD_CLIENTE').AsInteger, 'PEDV', 'XMLCANCELAMENTO', 0, '', '', '', 0, Date(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
       FMzrNfe.ShowModal;
end;

procedure TFPedVenda.CartadeCorreoEletrnica1Click(Sender: TObject);
begin
  inherited;
    IniciaCCe(XView.FieldByName('cod_pedvenda').AsInteger, 'PEDV');
end;

procedure TFPedVenda.VisualizarDanfecomComplementoFiscal1Click(
  Sender: TObject);
begin
  inherited;
   FMenu.XTIPOBOLTO:='COMPLEMENTO';
	FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
   FMzrNfe.SetInFiscal('', XView.FieldByName('COD_PEDVENDA').AsInteger, 0, 'PEDV', '', 1, '', '', '', 0,0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) ;
   FMzrNfe.DanfeVisualizar;
   FMzrNfe := NIL;
   FMenu.XTIPOBOLTO:='';   
end;

procedure TFPedVenda.edPesquisaAgilKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
	xPesqDescricao, xPesqCtrlInt, xPesqCodFab: Boolean;
var
	xOrdem: String;
begin
  inherited;
   pPesquisa.Top := 215;
   pPesquisa.Left := 45;
	pPesquisa.Visible := True;
   pPesquisa.BringToFront;

   //Edmar - 18/06/2014 - Apertando ESC filtra o similar e esconde o painel
   If Key = VK_ESCAPE
   Then Begin
      edPesquisaAgilEnter(sender);

      pPesquisa.Visible := False;
      pPesquisa.SendToBack;
      edPesquisaAgil.Text := '';
      LimpaLabels;
      lPesquisa.Caption := 'Pesquisa:';

      Exit;
   End;

   //Edmar - 18/06/2014 - Se o campo estiver vazio esconde o painel e atualiza a label
   If edPesquisaAgil.Text = '' then
   begin
   	pPesquisa.Visible := False;
       pPesquisa.SendToBack;
       lPesquisa.Caption := 'Pesquisa:';

       Exit;       
   end;

   //Edmar - 18/06/2014 - Apertando ENTER filtra similar com o código que foi buscado
   If Key = Vk_Return then
   begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  ((VWSIMILAR.ATIVO = ''S'') OR (VWSIMILAR.ATIVO IS NULL)) ');
      DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
      DMESTOQUE.WSimilar.Open;

      If Not DMESTOQUE.WSimilar.IsEmpty then
  	   begin
      		EscreveLabels;
           edBcSt.ValueNumeric := 0.00;
           edVlrSt.ValueNumeric := 0.00;
      		pPesquisa.Visible := False;
           pPesquisa.SendToBack;
      		edPesquisaAgil.Text := '';
      		EDQuantidade.Text := '1,00';
      end
      else
      		MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

      edPesquisaAgilEnter(sender);
      Exit;
   End;

    If Key = Vk_Down then
    begin
        DMESTOQUE.WSimilar.Next;
        XCodTmpEstoque := DBGrid7.Columns[0].Field.Text;

        Exit;
    End;

    if Key = Vk_UP then
    begin
        DMESTOQUE.WSimilar.Prior;
        XCodTmpEstoque := DBGrid7.Columns[0].Field.Text;

        Exit;
    end;

   //Edmar - 18/06/2014 - Busca pela descrição
	if DMESTOQUE.WSimilar.Locate('DESCRICAO', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if not xPesqDescricao then
       begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE ((VWSIMILAR.ATIVO = ''S'') OR (VWSIMILAR.ATIVO IS NULL)) ORDER BY DESCRICAO');
           DMESTOQUE.WSimilar.Open;

           xPesqDescricao := True;
           xPesqCtrlInt := False;
           xPesqCodFab := False;

           DMESTOQUE.WSimilar.Locate('DESCRICAO', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]);
       end;
       
   	lPesquisa.Caption := 'Descrição:';
		XCodTmpEstoque := DBGrid7.Columns[0].Field.Text;

       Exit;
   end;

   //Edmar - 18/06/2014 - Busca pelo codigo interno
   if DMESTOQUE.WSimilar.Locate('CONTRINT', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if not xPesqCtrlInt then
		begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE ((VWSIMILAR.ATIVO = ''S'') OR (VWSIMILAR.ATIVO IS NULL)) ORDER BY CONTRINT');
           DMESTOQUE.WSimilar.Open;

           xPesqCtrlInt := True;
           xPesqDescricao := False;
           xPesqCodFab := False;
                  	
			DMESTOQUE.WSimilar.Locate('CONTRINT', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]);
       end;
       
       lPesquisa.Caption := 'Ctrl. Interno:';
       XCodTmpEstoque := DBGrid7.Columns[0].Field.Text;

       Exit;
   end;

   //Edmar - 18/06/2014 - Busca pelo código do fabricante
   if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if not xPesqCodFab then
		begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE ((VWSIMILAR.ATIVO = ''S'') OR (VWSIMILAR.ATIVO IS NULL)) ORDER BY CODFABRICANTE');
           DMESTOQUE.WSimilar.Open;

           xPesqCodFab := True;
           xPesqCtrlInt := False;
           xPesqDescricao := False;

			DMESTOQUE.WSimilar.Locate('CODFABRICANTE', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]);
       end;
       
       lPesquisa.Caption := 'Cod. Fabricante:';
       XCodTmpEstoque := DBGrid7.Columns[0].Field.Text;

       Exit;
   end;
   
   lPesquisa.Caption := 'Fora de Pesquisa';
	XCodTmpEstoque := DBGrid7.Columns[0].Field.Text;
end;

procedure TFPedVenda.edPesquisaAgilKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  str: String;
begin
  inherited;
    If DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '0'
    Then Begin
       // ALEX - 21/05/2009: pressionar Ctrl+P chama painel de busca de produtos pelo nome
        If (shift = [ssCtrl]) And (key = 78)
            Then Begin
            If XTipoProc = 0
                Then Begin
                XTipoProc := 1;

                pPesquisa.Top := 215;
                pPesquisa.Left := 45;
                pPesquisa.Visible := True;
                pPesquisa.BringToFront;
            End
            Else Begin
                XTipoProc := 0;
                pPesquisa.Visible := False;
            End;
        End;
  // End;

        If XTipoProc = 1
            Then Begin
            If Key = Vk_Down
                Then Begin
                DMESTOQUE.WSimilar.Next;
            End;
            If Key = Vk_UP
                Then Begin
                DMESTOQUE.WSimilar.Prior;
            End;
        End;

        If Key = VK_Return
        Then Begin
            If XTipoProc = 0
                Then Begin
           //TIPO DE BUSCA
                If XPESPROD = 1 Then
                    str := 'CODBARRA'
                Else
                    If XPESPROD = 2 Then
                        str := 'CODFABRICANTE'
                    Else
                        If XPESPROD = 3 Then
                            str := 'DESCRICAO'
                        Else
                            str := 'CONTRINT';

             {Edmar - 14/08/2014 - Trecho comentado pois não é mais usado esse metodo para busca
           //Paulo 12/07/2011: Busca o produto pelo código conforme determinado na config loja
                If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CI' Then
                Begin
                    If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(edPesquisaAgil.Text), '') = True
                        Then Begin
                        //EscreveLabelsPROD;
                        EDCodFab.Text := '';
                        EDQuantidade.Text := '1,00';

                  // EDQuantidade.SetFocus;
                    End
                    Else Begin
                        //LimpaCamposProd;
                        LSimilar.Caption := 'PRODUTO NÃO ENCONTRADO';
                    End;
                End;
                If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CF' Then
                Begin
                    If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(edPesquisaAgil.Text), '') = True
                        Then Begin
                        //EscreveLabelsPROD;
                        EDCodFab.Text := '';
                        EDQuantidade.Text := '1,00';
                  // EDQuantidade.SetFocus;
                    End
                    Else Begin
                        //LimpaCamposProd;
                        LSimilar.Caption := 'PRODUTO NÃO ENCONTRADO';
                    End;
                End;
                If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CB' Then
                Begin
                    If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(edPesquisaAgil.Text), '') = True
                        Then Begin
                        //EscreveLabelsPROD;
                        edPesquisaAgil.Text := '';
                        EDQuantidade.Text := '1,00';
                  // EDQuantidade.SetFocus;
                    End
                    Else Begin
                        //LimpaCamposProd;
                        LSimilar.Caption := 'PRODUTO NÃO ENCONTRADO';
                    End;
                End;}

           //Paulo 12/07/2011: Se não existe config na loja
                If (DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'NC') Then
                Begin
                    If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(edPesquisaAgil.Text), '') = True
                        Then Begin
                        //EscreveLabelsPROD;
                        edPesquisaAgil.Text := '';
                        EDQuantidade.Text := '1,00';
                  // EDQuantidade.SetFocus;
                    End
                    Else Begin
                        If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(edPesquisaAgil.Text), '') = True
                            Then Begin
                            //EscreveLabelsPROD;
                            edPesquisaAgil.Text := '';
                            EDQuantidade.Text := '1,00';
                      // EDQuantidade.SetFocus;
                        End
                        Else Begin
                            If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(edPesquisaAgil.Text), '') = True
                                Then Begin
                                //EscreveLabelsPROD;
                                edPesquisaAgil.Text := '';
                                EDQuantidade.Text := '1,00';
                        //   EDQuantidade.SetFocus;
                            End
                            Else Begin
                                If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'DESCRICAO', UpperCase(edPesquisaAgil.Text), '') = True
                                    Then Begin
                                    //EscreveLabelsPROD;
                                    edPesquisaAgil.Text := '';
                                    EDQuantidade.Text := '1,00';
                              //   EDQuantidade.SetFocus;
                                End
                                Else Begin
                                    //LimpaCamposProd;
                                    LSimilar.Caption := 'PRODUTO NÃO ENCONTRADO';
                                End;
                            End;
                        End;
                    End;
                End;
            End
            Else Begin
                str := edPesquisaAgil.Text;
                If str[1] = '.'
                    Then Begin
                    edPesquisaAgil.Text := TiraCaracterEmPosicao(str, 1);
                    FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA=' + FMenu.LCODLOJA.Caption + ') AND (upper(CODFABRICANTE) like upper(' + #39 + edPesquisaAgil.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
                End
                Else Begin
                    FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA=' + FMenu.LCODLOJA.Caption + ') AND (upper(DESCRICAO) like upper(' + #39 + edPesquisaAgil.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
                End;
            End;
        End;
    End;
    If Key=Vk_F2
    Then Begin
          DMESTOQUE.WSimilar.Close;
          DMESTOQUE.WSimilar.SQL.Clear;
          DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR where (vwsimilar.descricao like upper(' + #39 + edPesquisaAgil.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
          DMESTOQUE.WSimilar.Open;
          XCodTmpEstoque := DBGrid7.Columns[0].Field.Text;
      	   EDQuantidade.Text := '1,00';
    End; 
end;

procedure TFPedVenda.edPesquisaAgilEnter(Sender: TObject);
begin
  inherited;
	DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
   DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR WHERE ((VWSIMILAR.ATIVO = ''S'') OR (VWSIMILAR.ATIVO IS NULL)) ORDER BY DESCRICAO ');
   DMESTOQUE.WSimilar.Open;
end;

procedure TFPedVenda.DBGrid7KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   //Edmar - 18/06/2014 - Apertando ESC filtra o similar e esconde o painel
   If Key = VK_ESCAPE
   Then Begin
      edPesquisaAgilEnter(sender);

      pPesquisa.Visible := False;
      pPesquisa.SendToBack;
      edPesquisaAgil.Text := '';
      lPesquisa.Caption := 'Pesquisa:';

      Exit;
   End;

   If Key = Vk_Return then
   begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
      DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
      DMESTOQUE.WSimilar.Open;

      If Not DMESTOQUE.WSimilar.IsEmpty then
  	   begin
      		EscreveLabels;
      		pPesquisa.Visible := False;
           pPesquisa.SendToBack;
      		edPesquisaAgil.Text := '';
           EDQuantidade.SetFocus;
      		EDQuantidade.Text := '1,00';
      end
      else
      		MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

      edPesquisaAgilEnter(sender);
      Exit;
   End;
end;

procedure TFPedVenda.DBGrid7DblClick(Sender: TObject);
begin
  inherited;
    DMESTOQUE.WSimilar.Close;
    DMESTOQUE.WSimilar.SQL.Clear;
    DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
    DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
    DMESTOQUE.WSimilar.Open;

    If Not DMESTOQUE.WSimilar.IsEmpty then
    begin
      EscreveLabels;
      pPesquisa.Visible := False;
      pPesquisa.SendToBack;
      edPesquisaAgil.Text := '';
      EDQuantidade.SetFocus;
      EDQuantidade.Text := '1,00';
    end
    else
      MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

    edPesquisaAgilEnter(sender);
    Exit;
end;

procedure TFPedVenda.BtnInsertProdClick(Sender: TObject);
begin
	FMenu.xBaseIcmsSt := edBcSt.ValueNumeric;
   FMenu.xVlrIcmsSt := edVlrSt.ValueNumeric;
  inherited;
  	//Edmar - 03/07/2014 - se estiver fazendo a pesquisa rapida, seta o foco para o campo
   //senão, assume o que foi atribuido no pedido padrão
	if pPesquisaAgil.Visible then
   	edPesquisaAgil.SetFocus;

   edBcSt.Text := '';
   edVlrSt.Text := '';
end;

procedure TFPedVenda.Comprovante1Click(Sender: TObject);
begin
  inherited;
  {
	If DMMACS.TLoja.FieldByName('MODELOPEDVENDA').AsString = '10' Then
		QRComp10.Preview;
  }
end;

procedure TFPedVenda.CustosdeProdutosVendidos1Click(Sender: TObject);
begin
  inherited;
	FMenu.XTipoRel := 'RELCUSTOPRODVENDIDOS';
	AbrirForm(TFRelProdutos , FRelProdutos, 0);
end;

//Felipe - 11/02/2015 - atualiza tabela PEDVENDA (campo CONTROLEFRETE)
procedure TFPedVenda.AtualizaControleFrete(ControleFrete: string);
begin
	try
   	DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('UPDATE PEDVENDA SET PEDVENDA.CONTROLEFRETE =:CONTROLEFRETE');
       DMSAIDA.TAlx.SQL.Add('WHERE PEDVENDA.COD_PEDVENDA =:COD_PEDVENDA');
       DMSAIDA.TAlx.ParamByName('CONTROLEFRETE').AsString := ControleFrete;
       DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(XView.FieldByName('COD_PEDVENDA').AsString);
       DMSAIDA.TAlx.ExecSQL;
       DMSAIDA.IBT.CommitRetaining;
   except
   	DMSAIDA.IBT.RollbackRetaining;
       MessageDlg('ATENÇÃO!' + #13 + #10 + 'A Atualização do Pedido de Venda falhou!', mtWarning, [mbOK], 0);
   end;
end;

procedure TFPedVenda.GerenciadordeEntregas1Click(Sender: TObject);
begin
  inherited;
  FMenu.TIPOAUX:=DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString;
  FMenu.TIPOREL:='Ped. Nº '+DMSAIDA.WPedV.FieldByName('NUMPED').AsString;
  AbrirForm(TFCtrlEntrega, FCtrlEntrega, 0);
end;

procedure TFPedVenda.ResumodeEntrega2Click(Sender: TObject);
begin
  inherited;
  	//Filtra a loja para garantir que todos as informações estejam corretas
   If FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')=True
   Then Begin//Se encontrou a loja
       DMMACS.TLOJA.Edit;
       DMMACS.TLoja.FieldByName('TMP2').AsString:='';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
			//insere sql necessária para filtrar pedido de venda e valores necessários
           DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
           DMEstoque.Alx.SQL.Add('SELECT pedvenda.numped, PEDVENDA.VLRFRETE, pedvenda.nomecli, cliente.endentraga, Cliente.Atacadista as atacadista, pessoa.telrel,  pessoa.BAIRRO, PESSOA.CEP, pedvenda.cpfcnpj, pedvenda.obs, pessoa.endereco, pessoa.endnumero, ');
           DMEstoque.Alx.SQL.Add('cidade.nome, pedvenda.dtpedven, funcionario.cod_interno, funcionario.cod_func, FormPag.Descricao, PedVenda.Desconto AS DESCONTO, PedVenda.Descmoe, PedVenda.Valor ');
           DMEstoque.Alx.SQL.Add('FROM pedvenda Left join cliente ON pedvenda.cod_cliente = cliente.cod_cliente ');
           DMEstoque.Alx.SQL.Add('Left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
           DMEstoque.Alx.SQL.Add('Left join funcionario ON pedvenda.cod_vendedor = funcionario.cod_func ');
           DMEstoque.Alx.SQL.Add('join FormPag ON FormPag.cod_FormPag = PedVenda.Cod_FormPag ');
           DMEstoque.Alx.SQL.Add('left join cidade ON pessoa.cod_cidade = cidade.cod_cidade ');
           DMEstoque.Alx.SQL.Add('left join telefone ON telefone.cod_pessoa = pessoa.cod_pessoa ');
           DMEstoque.Alx.SQL.Add('Where pedvenda.cod_pedvenda=:CODPED');
           DMEstoque.Alx.ParamByName('CODPED').AsInteger:=DMSAIDA.WPedV.FieldByName('cod_pedvenda').AsInteger;
           DMEstoque.Alx.Open;

           DMEstoque.Alx1.Close;
           DMEstoque.Alx1.SQL.Clear;
           DMEstoque.Alx1.SQL.Add(' Select * from vwfuncionario ');
           DMEstoque.Alx1.SQL.Add(' Where vwfuncionario.cod_func=:CODFUNC ');
           DMEstoque.Alx1.ParamByName('CODFUNC').AsInteger:=DMEstoque.Alx.FieldByName('cod_func').AsInteger;
           DMEstoque.Alx1.Open;

           //insere sql necessária para filtrar inetns do pedido de venda
           DMESTOQUE.TSlave.close;
           DMESTOQUE.TSlave.sql.clear;
           DMESTOQUE.TSlave.sql.Add('SELECT itenspedven.operacao AS OPER, itenspedven.qtdentregue AS QTDENTREGA, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
           DMESTOQUE.TSlave.sql.Add(' itenspedven.qtdeprod, LOTE.numero,unidade.sigla_unid, ');
           DMESTOQUE.TSlave.sql.Add('subproduto.descricao, subproduto.marca, itenspedven.valunit, itenspedven.descpro, itenspedven.valortotal, itenspedven.DATA ');
           DMESTOQUE.TSlave.sql.Add('FROM itenspedven join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
           DMESTOQUE.TSlave.sql.Add('join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           DMESTOQUE.TSlave.sql.Add('LEFT Join LOTE on itenspedven.cod_lote = LOTE.COD_LOTE ');
           DMESTOQUE.TSlave.sql.Add('join produto on subproduto.cod_produto = produto.cod_produto ');
           DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on SubProduto.cod_unidVenda = unidade.cod_unidade ');
           DMESTOQUE.TSlave.sql.Add('Where (itenspedven.cod_pedven = :CODPED) '+{and (Itenspedven.OPERACAO<>'+#39+'DVL'+#39+')}' ORDER BY Subproduto.Descricao, itenspedven.DATA');
			DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:=DMSAIDA.WPedV.FieldByName('cod_pedvenda').AsInteger;
           DMESTOQUE.TSlave.Open;

       	//FILTRA DESPESAS
   		DMESTOQUE.TDesp.Close;
   		DMESTOQUE.TDesp.SQL.Clear;
   		DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'PEDVENDA'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
			DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=DMSAIDA.WPedV.FieldByName('cod_pedvenda').AsInteger;
			DMESTOQUE.TDesp.Open;

   		//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   		FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+IntToStr(DMSAIDA.WPedV.FieldByName('cod_pedvenda').AsInteger)+#39+')');

           //insere sql necessária para filtrar parcelas da conta
           DMMacs.TALX.Close;
           DMMacs.TALX.sql.Clear;
           DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
			DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
           DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:=DMSAIDA.WPedV.FieldByName('cod_pedvenda').AsInteger;
           DMMacs.TALX.Open;

           //Assume parcelas em campo blob de loja para após ser passado em relatório
           DMMACS.TLoja.Edit;
			DMMACS.TLoja.FieldByName('TMP1').AsString:='';
           DMMACS.TLoja.Post;
           DMMACS.TALX.First;
           while not DMMACS.TALX.Eof do
           Begin
               DMMACS.TLoja.Post;
               DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+DMMacs.TALX.FieldByName('dtvenc').AsString+'     /    '+DMMacs.TALX.FieldByName('cobranca').AsString+'     -    '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+#13;
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
	       If (DMESTOQUE.TSlave.IsEmpty=True) And (DMESTOQUE.Tdesp.IsEmpty=True)
	       Then Begin
				Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O pedido que tentou imprimir encontra-se sem items!'+#13+'É provável que o produto deste pedido tenha sido devolvido ou trocado.', '', 1, 1, False, 'a');
  	            Exit;
          End;

          FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfResumoEntrega.frf');
          FSRel.ShowReport;
          DMMACS.Transaction.CommitRetaining;
	End; //fim de filtra loja

end;

procedure TFPedVenda.MarcarComoProntoParaEntregar1Click(Sender: TObject);
begin
  inherited;
	AtualizaControleFrete('P/ENTREGA');
	//Felipe - 03/03/2015 - Filtra Pedidos de Venda através do campo CONTROLEFRETE
   ControleFreteFiltro;   
end;

procedure TFPedVenda.MarcarComoEntregue1Click(Sender: TObject);
begin
  inherited;
	AtualizaControleFrete('ENTREGUE');
	//Felipe - 03/03/2015 - Filtra Pedidos de Venda através do campo CONTROLEFRETE
   ControleFreteFiltro;
end;

procedure TFPedVenda.EntregueClick(Sender: TObject);
begin
	//Felipe - 03/03/2015 - Filtra Pedidos de Venda através do campo CONTROLEFRETE
  	ControleFreteFiltro;
end;

procedure TFPedVenda.ControleFreteFiltro;
var
	busca: string;
begin
   //Felipe - 03/03/2015 - Filtra Todos os Pedidos de Venda
	if (Todos.Checked) then
   	FiltraTabela(XView, XSQLVIEW, '', '','')
   //Felipe - 03/03/2015 - Filtra Pedidos de Venda ENTREGUE ou P/ENTREGA
   else begin
     if (Entregue.Checked) then
         busca := 'ENTREGUE'
     else if (Entregar.Checked) then
         busca := 'P/ENTREGA';
     FiltraTabela(XView, XSQLVIEW, 'CONTROLEFRETE', '',   ' VWPEDV.CONTROLEFRETE = '+#39+ busca +#39+' ');
   end;
end;

procedure TFPedVenda.DevolverItensemissoprpria1Click(Sender: TObject);
begin
	//Edmar - 18/03/2015 - busca o cliente do pedido
   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMSAIDA.WPedV.FieldByName('COD_CLIENTE').AsString, '');

   if not FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '') then
   begin
   	//se não estiver, dá uma mensagem para o usuario informando que deve cadastra-lo como cliente antes de devolver
       MessageDlg('O cliente '+DMPESSOA.WCliente.FieldByName('NOME').AsString+' deve estar cadastrado como fornecedor para efetuar a devolução da NF-e.', mtWarning, [mbOK], 0);

   	Exit;
   end;

	FMenu.XCOD_CLIENTE_DEVOLUCAO := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString;
   FMenu.XNUM_FISCAL_DEVOLUCAO := DMSAIDA.WPedV.FieldByName('NUMFISCAL').AsString;
   FMenu.XCOD_PK_DEVOLVIDO := DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString;

   FMenu.XTABELA_DEVOLUCAO := 'PEDVENDA';

   AbrirForm(TFDevolucao , FDevolucao, 0);
end;

procedure TFPedVenda.CancelarFechamento1Click(Sender: TObject);
Var
	XCodPedidoTroca: String;
begin
  inherited;
	If XView.FieldByName('SITUACAO').AsString='CANCELADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido se encontra cancelado!', '', 1, 1, False, 'a');
       Exit;
   End;

   FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');
   If (DMSAIDA.TPedV.FieldByName('FISCO').AsString='ECF') OR (DMSAIDA.TPedV.FieldByName('FISCO').AsString='NF') OR (DMSAIDA.TPedV.FieldByName('FISCO').AsString='NFe')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Este pedido já passou por uma impressão fiscal!', '', 1, 1, False, 'a');
		Exit;
   End;

	If XView.FieldByName('SITUACAO').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido não se encontra fechado! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
       Exit;
   End;
   

	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CANCPEDFECH', 'M')=False Then
  		Exit;
	If Mensagem('A T E N Ç Ã O', 'Deseja realmente Cancelar o fechamento do pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
       XCodPedidoTroca:=XView.FieldByName('COD_PEDVENDA').AsString;
       If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XCodPedidoTroca, '')=True
       Then Begin

           //REGISTRA COMANDO DO USUARIO
           Registra('PEDIDO VENDA', 'CANCELA FECHAMENTO', DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsString, 'Nº '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+'-'+DMSAIDA.TPedV.FieldByName('NOMECLI').AsString, 'Vlr:'+DMSAIDA.TPedV.FieldByName('VALOR').AsString+'-'+DMSAIDA.WPedV.FieldByName('FORMPAG').AsString);
			If CancelLanPed(XCodPedidoTroca)=True
           Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
				DMSAIDA.TPedV.EDIT;
           	DMSAIDA.TPedV.FieldByName('SITUACAO').AsString:='ABERTO';
				DMSAIDA.TPedV.Post;
				DMSAIDA.TPedV.ApplyUpdates;
				DMSAIDA.IBT.CommitRetaining;
               //Alex: Como estamos cancelando o fechamento, devemos apagar qualquer pedido de compra com relacionamento de veículo de entrada
               if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
               begin
                   try
                   	//Vamos localizar o item de entrada
                       DMESTOQUE.Alx.Close;
                       DMESTOQUE.Alx.SQL.Clear;
                       DMESTOQUE.Alx.SQL.Add(' select * from veiculoentrada ');
                       DMESTOQUE.Alx.SQL.Add(' where veiculoentrada.cod_pedido=:venda ');
                       DMESTOQUE.Alx.ParamByName('venda').AsInteger:=XView.FieldByName('COD_PEDVENDA').AsInteger;
                       DMESTOQUE.Alx.Open;
                       If not DMESTOQUE.Alx.IsEmpty
                       Then Begin
                       	//Alex 02/08/2012: Atualizamos estoque
                           FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsString, '');
                           //Alex 02/08/2012: Atualiza Estoque
                           DMESTOQUE.TEstoque.Edit;
                           DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=0;
                           DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                           DMESTOQUE.TEstoque.Post;
                           //Apaga registro
                           DMESTOQUE.Alx1.Close;
                           DMESTOQUE.Alx1.SQL.Clear;
                           DMESTOQUE.Alx1.SQL.Add('  Delete from lancent ');
                           DMESTOQUE.Alx1.SQL.Add('  where (lancent.cod_estoque=:estoque) and (lancent.cod_lote=357) ');
                           DMESTOQUE.Alx1.ParamByName('estoque').Asinteger:=DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsInteger;
                           DMESTOQUE.Alx1.ExecSQL;
                           DMESTOQUE.TransacEstoque.CommitRetaining;
                       End;
                   except
                   	MessageDlg('Não foi possível cancelar o pedido de compra gerado com o veículo de entrada', mtWarning, [mbOK], 0);
                   end;
               end;
       		If FiltraTabela(XView, XSQLVIEW, XPkTabela, XCodPedidoTroca, '')=True
       		Then Begin
               	BtnConsultar.Click;
           	End;
           End;

           //Paulo 23/12/2011: Verifica se existe veiculo de entrada
           if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
           begin
               FiltraTabela(DMESTOQUE.Alx2,'VEICULOENTRADA','COD_PEDIDO',IntToStr(DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger),'');
               if not(DMESTOQUE.Alx2.IsEmpty) then
               begin
                   //Paulo 26/01/2012: Veifica se tem pedido de compra atrelado e apaga o mesmo
                   If FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', IntToStr(DMESTOQUE.Alx2.FieldByName('COD_PEDCOMP').AsInteger), '')=True
                   then begin
                        try
                            DMENTRADA.TPedC.Delete;
                            DMENTRADA.TPedC.ApplyUpdates;

                            //Paulo 26/01/2012: Atualiza estoque
                            DMESTOQUE.Alx2.First;
                            While Not DMESTOQUE.Alx2.Eof Do
                            Begin
                               FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(DMESTOQUE.Alx2.FieldByName('COD_ESTOQUE').AsInteger),'');
                               DMEstoque.TEstoque.Edit;
                               DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-1;
                               DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                               DMESTOQUE.TEstoque.Post;

                               DMESTOQUE.Alx2.Next;
                            end;
                            DMENTRADA.IBT.CommitRetaining;
                            DMESTOQUE.TransacEstoque.CommitRetaining;
                        except
                           DMENTRADA.IBT.RollbackRetaining;
                           DMESTOQUE.TransacEstoque.RollbackRetaining;
                        end;
                   end;
                   //Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido contém veiculo de entrada, exclua-o para poder prosseguir', '', 1, 1, False, 'a');
                   //Exit;
               end;
           end;

       End
       Else Begin
			Exit;
       End;
   End;
end;

procedure TFPedVenda.CancelarDevoluo1Click(Sender: TObject);
begin
  inherited;
	If Mensagem(' I N F O R M A Ç Ã O ', 'Ao cancelar a devolução do pedido, o sistema irá apenas retornar os itens para que possam ser devolvidos novamente. Deseja continuar?', '', 2, 3, False, 'c') = 2 then
	begin
   	//Edmar - 14/04/2015 - Efetua o cancelamento do pedido extornando o financeiro e retornando o estoque se preciso
		CancelarFechamento1Click(Sender);

		//Edmar - 14/04/2015 - Após isso, limpar o número da NF-e devolvida e marcar todos os
		//itens do pedido como não devolvido
   	try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE PEDVENDA SET PEDVENDA.NUMFISCAL_DEVOLVIDA = '''' WHERE PEDVENDA.COD_PEDVENDA = :CODIGO_VENDA ');
           MDO.Query.ParamByName('CODIGO_VENDA').AsInteger := XView.FieldByName('COD_PEDVENDA').AsInteger;
           MDO.Query.ExecSQL;

           MDO.QAlx1.Close;
           MDO.QAlx1.SQL.Clear;
           MDO.QAlx1.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.IT_DEV = '''' WHERE ITENSPEDVEN.COD_PEDVEN = :CODIGO_VENDA ');
           MDO.QAlx1.ParamByName('CODIGO_VENDA').AsInteger := XView.FieldByName('COD_PEDVENDA').AsInteger;
           MDO.QAlx1.ExecSQL;

           MDO.Transac.CommitRetaining;

           Mensagem(' I N F O R M A Ç Ã O ', 'Devolução cancelada com sucesso.', '', 1, 1, False, 'I');
   	except
       	MDO.Transac.RollbackRetaining;
       	Mensagem(' I N F O R M A Ç Ã O ', 'Não foi possível cancelar a devolução. Contate o suporte.', '', 1, 1, False, 'I');
   	end;
   end;
end;

//ANGELO - 11/06/2015 - MARCA OU DESMARCA UM PEDIDO DE ACORDO COM SEU CÓDIGO
procedure TFPedVenda.MarcaDesmarcaPedido(xCodPedido : Integer);
Begin
  MDO.Query.Close;
  MDO.Query.SQL.Clear;
  MDO.Query.SQL.Add('UPDATE PEDVENDA SET MARK = :MARK WHERE COD_PEDVENDA = :COD_PEDVENDA');
  //MARCA
  if (DMSAIDA.WPedV.FieldByName('MARK').AsString <> 'X') then
    MDO.Query.ParamByName('MARK').AsString := 'X'
  else
    MDO.Query.ParamByName('MARK').AsString := '';
  MDO.Query.ParamByName('COD_PEDVENDA').AsInteger := xCodPedido;
  MDO.Query.ExecSQL;
  MDO.Transac.CommitRetaining;
End;



//ANGELO - 11/06/2015 - PERMITE A MARCAÇÃO DE PEDIDOS DE VENDA
procedure TFPedVenda.DBGridCadastroPadraoDblClick(Sender: TObject);
var xCodPedido, xCodCliPedido : Integer;
		 xSqlFilter : String;
    xBookMark : Pointer;	
begin
  inherited;
	 //ANGELO - 11/06/2015 - REALIZA A MARCAÇÃO DOS PEDIDOS
  //SE O PEDIDO ESTIVER ABERTO
	 if (DMSAIDA.WPedV.FieldByName('SITUACAO').AsString = 'ABERTO') then
  Begin
    Try
      xBookMark := DMSAIDA.WPedV.GetBookmark;
      xCodPedido := DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
      xCodCliPedido := DMSAIDA.WPedV.FieldByName('COD_CLIENTE').AsInteger;
      //BUSCA O CLIENTE E O CÓDIGO DO PEDIDO MARCADO
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add('SELECT COD_CLIENTE,COD_PEDVENDA FROM PEDVENDA WHERE PEDVENDA.MARK = '+#39+'X'+#39);
      MDO.QConsulta.Open;
      MDO.QConsulta.First;
      if (Not(MDO.QConsulta.Eof)) Then
      Begin
        //VERIFICA SE O PEDIDO SERÁ DESMARCADO
        if (MDO.QConsulta.FieldByName('COD_PEDVENDA').AsInteger <> xCodPedido) then
          //VERIFIQUE SE O CLIENTE É O MESMO DOS PEDIDOS MARCADOS ANTERIORMENTE
          if (MDO.QConsulta.FieldByName('COD_CLIENTE').AsInteger <> xCodCliPedido) then
          Begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO','O cliente do pedido selecionado não é o mesmo dos pedidos selecionados anteriormente!'+#13+#10+'O pedido não será marcado!', '', 1, 1, False, 'a');
            Exit;
          End;
      End;
      //SE PASSOU PELAS VALIDAÇÕES ENTÃO MARCA/DESMARCA
      MarcaDesmarcaPedido(xCodPedido);
      //ATUALIZA A GRID APLICANDO OS FILTROS
      ExecutaLiberaDados;
      //SELECIONA O REGISTRO MARCADO
      DMSAIDA.WPedV.GotoBookmark(xBookMark);
      DMSAIDA.WPedV.FreeBookmark(xBookMark);
    Except
      Mensagem('NOTIFICAÇÃO AO USUÁRIO','Não foi possível marcar o pedido!', '', 1, 1, False, 'a');
      Exit;
    End;
  End Else
  Begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO','O pedido encontra-se fechado e não será marcado!', '', 1, 1, False, 'a');
  End;
end;

procedure TFPedVenda.MenuDesmPedMarcadosClick(Sender: TObject);
begin
  inherited;
  Try
    //DESMARCA TODOS OS PEDIDOS DE VENDA
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT * FROM PEDVENDA WHERE PEDVENDA.MARK = '+#39+'X'+#39);
    MDO.QConsulta.Open;
    MDO.QConsulta.First;
    While Not(MDO.QConsulta.Eof) do
    Begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('UPDATE PEDVENDA SET PEDVENDA.MARK = :MARK WHERE PEDVENDA.COD_PEDVENDA=:COD_PEDVENDA');
      MDO.Query.ParamByName('MARK').AsString := ' ';
      MDO.Query.ParamByName('COD_PEDVENDA').AsInteger := MDO.QConsulta.FieldByName('COD_PEDVENDA').AsInteger;
      MDO.Query.SQL.Text;
      MDO.Query.ExecSQL;
      MDO.QConsulta.Next;
    End;
    MDO.Transac.CommitRetaining;
    //ATUALIZA A GRID APLICANDO OS FILTROS
    ExecutaLiberaDados;
  Except;
  End;  
end;


//ANGELO - 17/06/2015 - GERA NOVO CÓDIGO PARA A TABELA E ATUALIZA O GERADOR
Function TFPedVenda.GeraCodigo(Gerador,Tabela,Campo:String):Integer;
var xCodGerado, xCodUltInserido : Integer;

Begin
  MDO.Query.Close;
  MDO.Query.SQL.Clear;
  MDO.Query.SQL.Add(' SELECT GEN_ID('+Gerador+', 0) AS CODIGO FROM RDB$DATABASE ');
  MDO.Query.Open;
  xCodGerado := MDO.Query.FieldByName('CODIGO').AsInteger;
  MDO.Transac.CommitRetaining;
  //SE JÁ EXISTIR ALGUM REGISTRO COM O CÓDIGO GERADO, ATUALIZAMOS O GERADOR
  MDO.Query.Close;
  MDO.Query.SQL.Clear;
  MDO.Query.SQL.Add(' SELECT '+Tabela+'.'+Campo+' FROM '+Tabela+' WHERE '+Tabela+'.'+Campo+' = :CODIGO ');
  MDO.Query.ParamByName('CODIGO').AsInteger := xCodGerado;
  MDO.Query.Open;
  if not MDO.Query.IsEmpty then
  begin
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' SELECT MAX('+Tabela+'.'+Campo+') AS CODIGO FROM '+Tabela);
    MDO.Query.Open;
    xCodUltInserido := MDO.Query.FieldByName('CODIGO').AsInteger;
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' SET GENERATOR '+Gerador+'  TO ' + IntToStr(xCodUltInserido+1));
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
    GeraCodigo := GeraCodigo(Gerador,Tabela,Campo);
  End Else
  Begin
    GeraCodigo := xCodGerado;
  End;
End;


//ANGELO - 12/06/2015 - PERMITE MESCLAR VÁRIOS PEDIDOS EM UM ÚNICO
procedure TFPedVenda.MenuMesclarPedMarcadosClick(Sender: TObject);
Var xCodPedMarcado, xNovoCodPed, xCodFPag,xCodFunc : Integer;
	xValorPed : Real;

begin
  inherited;
  Try
	   //SELECIONA TODOS OS PEDIDOS MARCADOS PARA MESCLAGEM
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT * FROM PEDVENDA WHERE PEDVENDA.MARK = '+#39+'X'+#39);
    MDO.QConsulta.Open;
    MDO.QConsulta.First;
    //VERIFICA SE HÁ NO MÍNIMO DOIS PRODUTOS SELECIONADOS
    MDO.QConsulta.Next;
    if (MDO.QConsulta.Eof) then
    Begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'É necessário selecionar no mínimo dois pedidos para mesclagem!', '', 1, 1, False, 'a');
      Exit;
    End;

    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja unir os pedidos marcados em um único pedido?'  , '', 2, 3, False, 'c')<> 2 Then
      Exit;

    MDO.QConsulta.First;
    //FUNCIONÁRIO VENDEDOR
    if (FMenu.EdUsuario.Text<>'SYSTEM LORD') then
    Begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('SELECT COD_FUNCIONARIO FROM USUARIO WHERE LOGIN=:LOGIN');
      MDO.Query.ParamByName('LOGIN').AsString := FMenu.EdUsuario.Text;
      MDO.Query.Open;
      xCodFunc := MDO.Query.FieldByName('COD_FUNCIONARIO').AsInteger;
    End Else
      xCodFunc := 0;

    //FORMA DE PAGAMENTO
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('SELECT COD_FORMPAG FROM FORMPAG WHERE DESCRICAO=:DESC');
    MDO.Query.ParamByName('DESC').AsString := 'À VISTA';
    MDO.Query.Open;
    xCodFPag := MDO.Query.FieldByName('COD_FORMPAG').AsInteger;

    //INSERE UM NOVO PEDIDO
    //XSQLTABELA := 'PEDVENDA';
    xNovoCodPed := GeraCodigo('gen_pedvenda_id','PEDVENDA','COD_PEDVENDA');
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('INSERT INTO PEDVENDA (COD_PEDVENDA,COD_CLIENTE,DTPEDVEN,COD_USUARIO,');
    MDO.Query.SQL.Add('VALOR,NOMECLI,CPFCNPJ,SITUACAO,NUMPED,TIPO,DTFECH,NUMFISCAL_PC,COD_PC_DEV,COMSOBVENDA,EDIT,ATU,FATURADO,COD_FORMPAG,COD_VENDEDOR ) ');
    MDO.Query.SQL.Add('VALUES(:COD_PEDVENDA,:COD_CLIENTE,:DTPEDVEN,:COD_USUARIO,');
    MDO.Query.SQL.Add(':VALOR,:NOMECLI,:CPFCNPJ,:SITUACAO,:NUMPED,:TIPO,:DTFECH,:NUMFISCAL_PC,:COD_PC_DEV,:COMSOBVENDA, :EDIT,:ATU,:FATURADO,:COD_FORMPAG,:COD_VENDEDOR )');
    MDO.Query.ParamByName('COD_PEDVENDA').AsInteger := xNovoCodPed;
    MDO.Query.ParamByName('COD_CLIENTE').AsInteger := MDO.QConsulta.FieldByName('COD_CLIENTE').AsInteger;
    MDO.Query.ParamByName('DTPEDVEN').AsDateTime := Date;
    MDO.Query.ParamByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
    //O CAMPO VALOR SERÁ ATUALIZADO NA CONTAGEM DOS ITENS
    MDO.Query.ParamByName('VALOR').AsCurrency := 0;
    MDO.Query.ParamByName('NOMECLI').AsString := MDO.QConsulta.FieldByName('NOMECLI').AsString;
    MDO.Query.ParamByName('CPFCNPJ').AsString := MDO.QConsulta.FieldByName('CPFCNPJ').AsString;
    MDO.Query.ParamByName('SITUACAO').AsString := 'ABERTO';
    MDO.Query.ParamByName('NUMPED').AsInteger := xNovoCodPed;
    MDO.Query.ParamByName('TIPO').AsString := MDO.QConsulta.FieldByName('TIPO').AsString;
    MDO.Query.ParamByName('DTFECH').AsDateTime := Date;
    MDO.Query.ParamByName('COMSOBVENDA').AsString := '1';
    MDO.Query.ParamByName('EDIT').AsString := '0';
    MDO.Query.ParamByName('ATU').AsString := '1';
    MDO.Query.ParamByName('FATURADO').AsString := '0';
    MDO.Query.ParamByName('COD_FORMPAG').AsInteger := xCodFPag;
    MDO.Query.ParamByName('COD_VENDEDOR').AsInteger := xCodFunc;

    if (FMenu.XDevolucao=True) AND (FMenu.XLancAutoDev=True) then
    Begin
      MDO.Query.ParamByName('NUMFISCAL_PC').AsString := FMenu.XNUM_FISCAL_DEVOLUCAO;
      MDO.Query.ParamByName('COD_PC_DEV').AsString := FMenu.XCOD_PK_DEVOLVIDO;
    End Else
    Begin
      MDO.Query.ParamByName('NUMFISCAL_PC').AsString := '';
      MDO.Query.ParamByName('COD_PC_DEV').AsString := '';
    End;
    MDO.Query.SQL.Text;
    MDO.Query.ExecSQL;

    //COPIE OS ITENS E DESPESAS DE CADA UM DOS PEDIDOS
    While Not(MDO.QConsulta.Eof) do
    Begin
      xValorPed := xValorPed + MDO.QConsulta.FieldByName('VALOR').AsCurrency;
      xCodPedMarcado := MDO.QConsulta.FieldByName('COD_PEDVENDA').AsInteger;
      CopiaItensPedVenda(xCodPedMarcado,xNovoCodPed);
      CopiaDespPedVenda(xCodPedMarcado,xNovoCodPed);
      MDO.QConsulta.Next;
    End;

    //ATUALIZA O VALOR DO PEDIDO BASEADO NA SOMA DOS PEDIDOS ANTERIORES
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('UPDATE PEDVENDA SET VALOR=:VALOR WHERE COD_PEDVENDA=:COD_PEDVENDA');
    MDO.Query.ParamByName('VALOR').AsCurrency := xValorPed;
    MDO.Query.ParamByName('COD_PEDVENDA').AsInteger := xNovoCodPed;
    MDO.Query.SQL.Text;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
    ExecutaLiberaDados;
    //CONFIRMA REMOÇÃO DOS PEDIDOS MARCADOS
		 If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'DESEJA REMOVER OS PEDIDOS DE ORIGEM?', '', 2, 3, False, 'c') = 2 Then
    	ApagaPedidosMarcados();
  Except;
    MDO.Transac.RollbackRetaining;
  End;
end;

//ANGELO - 12/06/2015 - COPIA AS DESPESAS DO PEDIDO DE ORIGEM PARA O PEDIDO DE DESTINO
Procedure TFPedVenda.CopiaDespPedVenda(xCodPedOrigem,xCodPedDestino : Integer);
Var xCodNovaDesp : Integer;
Begin
  Try
    MDO.QAlx1.Close;
    MDO.QAlx1.SQL.Clear;
    MDO.QAlx1.SQL.Add('SELECT * FROM DESPADIC WHERE COD_GERADOR=:COD_GERADOR');
    MDO.QAlx1.ParamByName('COD_GERADOR').AsInteger := xCodPedOrigem;
    MDO.QAlx1.Open;
    MDO.QAlx1.First;
    While Not(MDO.QAlx1.Eof) do
    Begin
      xCodNovaDesp := GeraCodigo('GEN_DESPADIC_ID','DESPADIC','COD_DESPADIC');
      MDO.QAlx2.Close;
      MDO.QAlx2.SQL.Clear;
      MDO.QAlx2.SQL.Add('INSERT INTO DESPADIC');
      MDO.QAlx2.SQL.Add('(COD_DESPADIC, COD_GERADOR, GERADOR, DESPESA, QTD, VLRREAL, VLRFINAL,');
      MDO.QAlx2.SQL.Add('LUCMOE, LUCPER, VLRTOTFIN, DESCONTO, MARCA, UNIDADE, COD_EQUIPE, COD_FUNCIONARIO)');
      MDO.QAlx2.SQL.Add('VALUES');
      MDO.QAlx2.SQL.Add('(:COD_DESPADIC, :COD_GERADOR, :GERADOR, :DESPESA, :QTD, :VLRREAL, :VLRFINAL,');
      MDO.QAlx2.SQL.Add(':LUCMOE, :LUCPER, :VLRTOTFIN, :DESCONTO, :MARCA, :UNIDADE, :COD_EQUIPE,');
      MDO.QAlx2.SQL.Add(':COD_FUNCIONARIO)');
      MDO.QAlx2.ParamByName('COD_DESPADIC').AsInteger := xCodNovaDesp;
      MDO.QAlx2.ParamByName('COD_GERADOR').AsInteger := xCodPedDestino;
      MDO.QAlx2.ParamByName('GERADOR').AsString := 'PEDVENDA';
      MDO.QAlx2.ParamByName('DESPESA').AsString := MDO.QAlx1.FieldByName('DESPESA').AsString;
      MDO.QAlx2.ParamByName('DESCONTO').AsCurrency := MDO.QAlx1.FieldByName('DESCONTO').AsCurrency;
      MDO.QAlx2.ParamByName('MARCA').AsString :=  MDO.QAlx1.FieldByName('MARCA').AsString;
      MDO.QAlx2.ParamByName('UNIDADE').AsString :=  MDO.QAlx1.FieldByName('UNIDADE').AsString;
      MDO.QAlx2.ParamByName('QTD').AsCurrency := MDO.QAlx1.FieldByName('QTD').AsCurrency;
      MDO.QAlx2.ParamByName('VLRREAL').AsCurrency := MDO.QAlx1.FieldByName('VLRREAL').AsCurrency;
      MDO.QAlx2.ParamByName('VLRFINAL').AsCurrency := MDO.QAlx1.FieldByName('VLRFINAL').AsCurrency;
      MDO.QAlx2.ParamByName('VLRTOTFIN').AsCurrency := MDO.QAlx1.FieldByName('VLRTOTFIN').AsCurrency;
      MDO.QAlx2.ParamByName('LUCMOE').AsCurrency := MDO.QAlx1.FieldByName('LUCMOE').AsCurrency;
      MDO.QAlx2.ParamByName('LUCPER').AsCurrency := MDO.QAlx1.FieldByName('LUCPER').AsCurrency;
      MDO.QAlx2.ExecSQL;
      MDO.QAlx1.Next;
  	 End;
    MDO.Transac.CommitRetaining;
  Except
    MDO.Transac.RollbackRetaining;
  End;
End;


//ANGELO - 15/06/2015 - REMOVE OS PEDIDOS MARCADOS
Procedure TFPedVenda.ApagaPedidosMarcados;
Begin
   Try
     //PARA CADA UM DOS PEDIDOS MARCADOS
     MDO.QConsulta.Close;
     MDO.QConsulta.SQL.Clear;
     MDO.QConsulta.SQL.Add('SELECT COD_PEDVENDA FROM PEDVENDA WHERE PEDVENDA.MARK = '+#39+'X'+#39);
     MDO.QConsulta.Open;
     MDO.QConsulta.First;
     //REMOVE ITENS E EM SEGUIDA O PEDIDO
     While Not(MDO.QConsulta.Eof) do
     Begin
     	 //Antes de remover os itens, atualize o estoque físico devolvendo os itens
        MDO.QAlx1.Close;
        MDO.QAlx1.SQL.Clear;
        MDO.QAlx1.SQL.Add('SELECT * FROM ITENSPEDVEN WHERE ITENSPEDVEN.COD_PEDVEN=:COD_PEDVEN');
        MDO.QALX1.ParamByName('COD_PEDVEN').AsInteger :=  MDO.QConsulta.FieldByName('COD_PEDVENDA').AsInteger;
        MDO.QAlx1.Open;
        MDO.QAlx1.First;
        While Not (MDO.QAlx1.Eof) Do
        Begin
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add('UPDATE ESTOQUE SET ESTFISICO = ESTFISICO + :QTDITENS WHERE ESTOQUE.COD_ESTOQUE = :COD');
          MDO.Query.ParamByName('QTDITENS').AsFloat := MDO.QAlx1.FieldByName('QTDENTREGUE').AsFloat;
          MDO.Query.ParamByName('COD').AsInteger := MDO.QAlx1.FieldByName('COD_ESTOQUE').AsInteger;
	       MDO.Query.ExecSQL;
          MDO.QAlx1.Next;
        End;

        //ITENS
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('DELETE FROM ITENSPEDVEN WHERE ITENSPEDVEN.COD_PEDVEN=:COD_PEDVEN ');
        MDO.Query.ParamByName('COD_PEDVEN').AsInteger :=  MDO.QConsulta.FieldByName('COD_PEDVENDA').AsInteger;
        MDO.Query.ExecSQL;
        //DESPESAS
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('DELETE FROM DESPADIC WHERE DESPADIC.COD_GERADOR=:COD_PEDVEN ');
        MDO.Query.ParamByName('COD_PEDVEN').AsInteger :=  MDO.QConsulta.FieldByName('COD_PEDVENDA').AsInteger;
        MDO.Query.ExecSQL;
        //PEDIDO
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('DELETE FROM PEDVENDA WHERE PEDVENDA.COD_PEDVENDA=:COD_PEDVEN ');
        MDO.Query.ParamByName('COD_PEDVEN').AsInteger :=  MDO.QConsulta.FieldByName('COD_PEDVENDA').AsInteger;
        MDO.Query.ExecSQL;
        MDO.QConsulta.Next;
     End;
     MDO.Transac.CommitRetaining;
     LiberaDados;	
   Except
     MDO.Transac.RollbackRetaining;
   End;
End;


//ANGELO - 12/06/2015 - COPIA OS ITENS DO PEDIDO DE ORIGEM PARA O PEDIDO DE DESTINO
Procedure TFPedVenda.CopiaITensPedVenda(xCodPedOrigem,xCodPedDestino : Integer);
Var xCodItemPed : Integer;
Begin
  Try
    MDO.QAlx1.Close;
    MDO.QAlx1.SQL.Clear;
    MDO.QAlx1.SQL.Add('SELECT * FROM ITENSPEDVEN WHERE COD_PEDVEN=:COD_PEDVEN');
    MDO.QAlx1.ParamByName('COD_PEDVEN').AsInteger := xCodPedOrigem;
    MDO.QAlx1.Open;
    MDO.QAlx1.First;
    While Not(MDO.QAlx1.Eof) do
    Begin
      //COPIA CADA UM DOS ITENS DO PEDIDO
      MDO.QAlx2.Close;
      MDO.QAlx2.SQL.Clear;
      MDO.QAlx2.SQL.Add('insert into ITENSPEDVEN');
      MDO.QAlx2.SQL.Add('(COD_ITENSPEDVEN,COD_PEDVEN, COD_ESTOQUE, QTDEPROD, DESCPRO, COD_FUNCIONARIO,');
      MDO.QAlx2.SQL.Add('VALUNIT, VALCUSTO, VALORTOTAL,COD_LOTE, ATUEST, VALREP, COEFDIV, VALCOMP, COD_CST, LUCPER,');
      MDO.QAlx2.SQL.Add('LUCMOE, DATA, COMISSAO, OPERACAO, LUCREL, VLRVENDBD, QTDDEV, NUMITEM,');
      MDO.QAlx2.SQL.Add(' ALIQICMS, BASEICMS, VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI,');
      MDO.QAlx2.SQL.Add('REDUCBASEICMS, VLRICMSSUBS, VLRUNITDEV, QTDENTREGUE, COD_UNIDADE, QTDEMB,');
      MDO.QAlx2.SQL.Add('UNIDEMB, QTDNAEMB, CFOP, TIPOLISTA, IPNPMC, IPNMVA)');

      MDO.QAlx2.SQL.Add('values');
      MDO.QAlx2.SQL.Add('(:COD_ITENSPEDVEN,:COD_PEDVEN, :COD_ESTOQUE, :QTDEPROD, :DESCPRO, :COD_FUNCIONARIO,');
      MDO.QAlx2.SQL.Add(':VALUNIT, :VALCUSTO, :VALORTOTAL, :COD_LOTE, :ATUEST, :VALREP, :COEFDIV, :VALCOMP, :COD_CST, ');
      MDO.QAlx2.SQL.Add(':LUCPER, :LUCMOE, :DATA, :COMISSAO, :OPERACAO, :LUCREL, :VLRVENDBD,');
      MDO.QAlx2.SQL.Add(':QTDDEV, :NUMITEM, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS,');
      MDO.QAlx2.SQL.Add(':VLRIPI, :ALIQIPI, :REDUCBASEICMS, :VLRICMSSUBS, :VLRUNITDEV, :QTDENTREGUE,');
      MDO.QAlx2.SQL.Add(':COD_UNIDADE, :QTDEMB, :UNIDEMB, :QTDNAEMB, :CFOP, :TIPOLISTA, :IPNPMC,:IPNMVA)');

      MDO.QAlx2.ParamByName('COD_PEDVEN').AsInteger := xCodPedDestino;
      MDO.QAlx2.ParamByName('COD_ITENSPEDVEN').AsInteger := GeraCodigo('GEN_ITENSPEDVEN_ID','ITENSPEDVEN','COD_ITENSPEDVEN');//UltimoRegistroInserido('ITENSPEDVEN','COD_ITENSPEDVEN')+1;
      MDO.QAlx2.ParamByName('COD_ESTOQUE').AsInteger :=  MDO.QAlx1.FieldByName('COD_ESTOQUE').AsInteger;
      MDO.QAlx2.ParamByName('QTDEPROD').AsFloat:=  MDO.QAlx1.FieldByName('QTDEPROD').AsFloat;
      MDO.QAlx2.ParamByName('DESCPRO').AsFloat:=  MDO.QAlx1.FieldByName('DESCPRO').AsFloat;
      MDO.QAlx2.ParamByName('COD_FUNCIONARIO').AsInteger := MDO.QAlx1.FieldByName('COD_FUNCIONARIO').AsInteger;
      MDO.QAlx2.ParamByName('VALUNIT').AsCurrency := MDO.QAlx1.FieldByName('VALUNIT').AsCurrency;
      MDO.QAlx2.ParamByName('VALCUSTO').AsCurrency := MDO.QAlx1.FieldByName('VALCUSTO').AsCurrency;
      MDO.QAlx2.ParamByName('VALORTOTAL').AsCurrency := MDO.QAlx1.FieldByName('VALORTOTAL').AsCurrency;
      MDO.QAlx2.ParamByName('COD_LOTE').AsInteger := MDO.QAlx1.FieldByName('COD_LOTE').AsInteger;
      MDO.QAlx2.ParamByName('ATUEST').AsString := MDO.QAlx1.FieldByName('ATUEST').AsString;
      MDO.QAlx2.ParamByName('VALREP').AsCurrency := MDO.QAlx1.FieldByName('VALREP').AsCurrency;
      MDO.QAlx2.ParamByName('COEFDIV').AsCurrency := MDO.QAlx1.FieldByName('COEFDIV').AsCurrency;
      MDO.QAlx2.ParamByName('VALCOMP').AsCurrency := MDO.QAlx1.FieldByName('VALCOMP').AsCurrency;
      MDO.QAlx2.ParamByName('COD_CST').AsInteger := MDO.QAlx1.FieldByName('COD_CST').AsInteger;      
      MDO.QAlx2.ParamByName('LUCPER').AsCurrency := MDO.QAlx1.FieldByName('LUCPER').AsCurrency;
      MDO.QAlx2.ParamByName('LUCMOE').AsCurrency := MDO.QAlx1.FieldByName('LUCMOE').AsCurrency;
      MDO.QAlx2.ParamByName('DATA').AsDate := Date();
      MDO.QAlx2.ParamByName('COMISSAO').AsCurrency := MDO.QAlx1.FieldByName('COMISSAO').AsCurrency;
      MDO.QAlx2.ParamByName('OPERACAO').AsString := MDO.QAlx1.FieldByName('OPERACAO').AsString;
      MDO.QAlx2.ParamByName('LUCREL').AsCurrency := MDO.QAlx1.FieldByName('LUCREL').AsCurrency;
      MDO.QAlx2.ParamByName('VLRVENDBD').AsCurrency := MDO.QAlx1.FieldByName('VLRVENDBD').AsCurrency;
      MDO.QAlx2.ParamByName('QTDDEV').AsFloat:=  MDO.QAlx1.FieldByName('QTDDEV').AsFloat;
      MDO.QAlx2.ParamByName('NUMITEM').AsInteger := MDO.QAlx1.FieldByName('NUMITEM').AsInteger;
      MDO.QAlx2.ParamByName('ALIQICMS').AsCurrency := MDO.QAlx1.FieldByName('ALIQICMS').AsCurrency;
      MDO.QAlx2.ParamByName('BASEICMS').AsCurrency := MDO.QAlx1.FieldByName('BASEICMS').AsCurrency;
      MDO.QAlx2.ParamByName('VLRICMS').AsCurrency := MDO.QAlx1.FieldByName('VLRICMS').AsCurrency;
      MDO.QAlx2.ParamByName('BASEICMSSUBS').AsCurrency := MDO.QAlx1.FieldByName('BASEICMSSUBS').AsCurrency;
      MDO.QAlx2.ParamByName('VLRIPI').AsCurrency := MDO.QAlx1.FieldByName('VLRIPI').AsCurrency;
      MDO.QAlx2.ParamByName('ALIQIPI').AsCurrency := MDO.QAlx1.FieldByName('ALIQIPI').AsCurrency;
      MDO.QAlx2.ParamByName('REDUCBASEICMS').AsCurrency := MDO.QAlx1.FieldByName('REDUCBASEICMS').AsCurrency;
      MDO.QAlx2.ParamByName('VLRICMSSUBS').AsCurrency := MDO.QAlx1.FieldByName('VLRICMSSUBS').AsCurrency;
      MDO.QAlx2.ParamByName('VLRUNITDEV').AsFloat:=  MDO.QAlx1.FieldByName('VLRUNITDEV').AsFloat;
      MDO.QAlx2.ParamByName('QTDENTREGUE').AsFloat:=  MDO.QAlx1.FieldByName('QTDENTREGUE').AsFloat;
      MDO.QAlx2.ParamByName('COD_UNIDADE').AsInteger := MDO.QAlx1.FieldByName('COD_UNIDADE').AsInteger;
      MDO.QAlx2.ParamByName('QTDEMB').AsCurrency := MDO.QAlx1.FieldByName('QTDEMB').AsCurrency;
      MDO.QAlx2.ParamByName('UNIDEMB').AsInteger := MDO.QAlx1.FieldByName('UNIDEMB').AsInteger;
      MDO.QAlx2.ParamByName('QTDNAEMB').AsCurrency := MDO.QAlx1.FieldByName('QTDNAEMB').AsCurrency;
      MDO.QAlx2.ParamByName('CFOP').AsString := MDO.QAlx1.FieldByName('CFOP').AsString;
      MDO.QAlx2.ParamByName('TIPOLISTA').AsString := MDO.QAlx1.FieldByName('TIPOLISTA').AsString;
      MDO.QAlx2.ParamByName('IPNPMC').AsCurrency := MDO.QAlx1.FieldByName('IPNPMC').AsCurrency;
      MDO.QAlx2.ParamByName('IPNMVA').AsCurrency := MDO.QAlx1.FieldByName('IPNMVA').AsCurrency;
      MDO.QAlx2.ExecSQL;

      //Atualiza estoque físico para cada um dos itens
      MDO.QAlx2.Close;
      MDO.QAlx2.SQL.Clear;
      MDO.QAlx2.SQL.Add('UPDATE ESTOQUE SET ESTFISICO = ESTFISICO - :QTDITENS, ULTVENDA = :ULTVENDA WHERE ESTOQUE.COD_ESTOQUE = :COD');
      MDO.QAlx2.ParamByName('QTDITENS').AsFloat := MDO.QAlx1.FieldByName('QTDENTREGUE').AsFloat;
      MDO.QAlx2.ParamByName('ULTVENDA').AsDateTime := Date();
      MDO.QAlx2.ParamByName('COD').AsInteger := MDO.QAlx1.FieldByName('COD_ESTOQUE').AsInteger;
      MDO.QAlx2.ExecSQL;

      MDO.QAlx1.Next;
    End;
		 MDO.Transac.CommitRetaining;
  Except
    MDO.Transac.RollbackRetaining;
  End;
End;

//Angelo - 2606/2015 - Libera o pedido para expedição conferir os itens antes de faturar
procedure TFPedVenda.MenuLiberaPedExpedClick(Sender: TObject);
begin
  inherited;
  Try
    If DMSAIDA.WPedV.FieldByName('SITUACAO').AsString='ABERTO'
    Then Begin
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('UPDATE PEDVENDA SET PEDVENDA.SITUACAO=:SIT WHERE PEDVENDA.COD_PEDVENDA=:PEDIDO');
        MDO.Query.ParamByName('SIT').AsString := 'EXPEDICAO';
        MDO.Query.ParamByName('PEDIDO').AsInteger := DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;
        ExecutaLiberaDados;
    End
    Else Begin
       MessageDlg('Apenas pedidos em aberto podem ir para a expedição!', mtWarning, [mbOK], 0);
    End;
  Except
    MDO.Transac.RollbackRetaining;
  End;
  

end;

procedure mnuMesclarPedMarcadosClick(Sender: TObject);
begin

end;
procedure TFPedVenda.mnuAbrirExpClick(Sender: TObject);
begin
  inherited;
  AbrirForm(TFExpVenda, FExpVenda,0);
end;


procedure TFPedVenda.ImprimirEtiquetas1Click(Sender: TObject);
var
   xTotalVolumes: Integer;
begin
  inherited;
   DMFAST.QAlx.Close;
   DMFAST.QAlx.SQL.Clear;
   DMFAST.QAlx.SQL.Add(' SELECT VOLUMES.NUMVOLUME, PESSOA.NOME AS NOMECLIENTE, PESSOAJ.RAZAO_SOCIAL, CIDADE.NOME AS CIDADE, ESTADO.UF_ESTADO, ');
   DMFAST.QAlx.SQL.Add(' PEDVENDA.NUMPED, PEDVENDA.NUMFISCAL FROM VOLUMES ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN PEDVENDA ON (PEDVENDA.COD_PEDVENDA=VOLUMES.COD_PEDIDO) ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN CLIENTE  ON (CLIENTE.COD_CLIENTE=PEDVENDA.COD_CLIENTE) ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN PESSOA   ON (PESSOA.COD_PESSOA=CLIENTE.COD_PESSOA) ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN CIDADE   ON (CIDADE.COD_CIDADE=PESSOA.COD_CIDADE) ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN ESTADO   ON (ESTADO.COD_ESTADO=CIDADE.COD_ESTADO) ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN PESSOAJ  ON (PESSOAJ.COD_PESSOA = PESSOA.COD_PESSOA) ');
   DMFAST.QAlx.SQL.Add(' WHERE VOLUMES.COD_PEDIDO = :PEDIDO ');
   DMFAST.QAlx.ParamByName('PEDIDO').AsInteger := DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsInteger;
   DMFAST.QAlx.Open;
   if (DMFAST.QAlx.Eof) Then
   Begin
      Mensagem('INFORMAÇÃO', 'Esse pedido não possui etiquetas!', '', 1, 1, False, 'a');
      Exit;
   End;
   //Edmar - 24/11/2015 - Vai até o ultimo registro pra pegar a posição com RecordCount
   DMFAST.QAlx.Last;
   xTotalVolumes := DMFAST.QAlx.RecordCount;
   DMFAST.QAlx.First;
   
   frxDbEtiquetasExp.DataSet := DMFAST.QAlx;
   frxRelEtiquetas.LoadFromFile('C:\MZR\Macs\Rel\FrfEtiquetasExp.fr3');
   frxRelEtiquetas.Variables['XTOTAL'] := xTotalVolumes;
   frxRelEtiquetas.ShowReport();
end;

procedure TFPedVenda.RelatriodeDANFENFCe1Click(Sender: TObject);
begin
  inherited;
	//Paulo 14/10/2010: Abre o rel periodo fiscal
   XRelDanfe := 'VENDA_NFCE';
   AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
end;

procedure TFPedVenda.VisualizarnoSefazNacional1Click(Sender: TObject);
begin
//
end;

procedure TFPedVenda.pPesquisaAgilExit(Sender: TObject);
begin
  inherited;
   EDQuantidade.SetFocus;
end;

procedure TFPedVenda.pPesqBarraInternoExit(Sender: TObject);
begin
  inherited;
   EDQuantidade.SetFocus;
end;

procedure TFPedVenda.PCodFabExit(Sender: TObject);
begin
  inherited;
   EDQuantidade.SetFocus;
end;

procedure TFPedVenda.PCodInternoExit(Sender: TObject);
begin
  inherited;
   EDQuantidade.SetFocus;
end;

procedure TFPedVenda.btnConfPedCompraNfeClick(Sender: TObject);
begin
   //
   inherited;
end;

procedure TFPedVenda.BTNOPENClick(Sender: TObject);
begin
 // inherited;
	If AbrirForm(TFSERVICO, FSERVICO, 1) <> 'Selected' then
   begin
       DMServ.WSubServ.Close;
       DMServ.WSubServ.SQL.Clear;
       DMServ.WSubServ.SQL.Add('SELECT * FROM VWSUBSERVICO ORDER BY DESCRICAO');
       DMServ.WSubServ.Open;
   end;
end;

procedure TFPedVenda.BitBtn18Click(Sender: TObject);
begin
  inherited;
   if EdDespesa.Text = DbServicoClassificacao.Text then
   	EdDespesa.Text := '';

   XCOD_SERVICOCLASSIFICACAO:=-1;
   Try
   	DbServicoClassificacao.KeyValue  := '';
   Except
   End;
   DbServicoClassificacao.ListField:='';
   DbServicoClassificacao.ListField:='DESCRICAO';
end;

procedure TFPedVenda.DbServicoClassificacaoDropDown(Sender: TObject);
Var Value : Variant;
begin
  inherited;
  Try
    Value := DbServicoClassificacao.KeyValue;
    DbServicoClassificacao.KeyValue := 20;
    DbServicoClassificacao.KeyValue := Value;
  Except
  End;
end;

procedure TFPedVenda.DespesasporClassificao1Click(Sender: TObject);
begin
  inherited;
   {PCadastro.SendToBack;
   PCadastro.Visible := False;}
   FMenu.TIPOREL:='RELDESPESACLASSIFICACAO';
	DMBANCO.TAlx.Close;
	DMBANCO.TAlx.SQL.Clear;
	DMBANCO.TAlx.SQL.Add('SELECT * FROM CAIXA where caixa.cod_loja=:CODLOJA');
  	DMBANCO.TAlx.ParamByName('CODLOJA').AsInteger:=StrToInt(FMenu.LCODLOJA.Caption);
	DMBANCO.TAlx.Open;
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFPedVenda.DespesasporClassificaoComgrficos1Click(
  Sender: TObject);
begin
  inherited;
    {PCadastro.SendToBack;
    PCadastro.Visible := False;}
   FMenu.TIPOREL:='RELDESPESACLASSIFICACAOGRAFICO';
	DMBANCO.TAlx.Close;
	DMBANCO.TAlx.SQL.Clear;
	DMBANCO.TAlx.SQL.Add('SELECT * FROM CAIXA where caixa.cod_loja=:CODLOJA');
  	DMBANCO.TAlx.ParamByName('CODLOJA').AsInteger:=StrToInt(FMenu.LCODLOJA.Caption);
	DMBANCO.TAlx.Open;   
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFPedVenda.Controlaritemparaposteriorretorno1Click(
  Sender: TObject);
begin
  inherited;
	Try
   	MDO.Query.Close;
   	MDO.Query.SQL.Clear;
		MDO.Query.SQL.Add(' Update itenspedven set itenspedven.controleretorno=''CONTROLANDO'' Where itenspedven.cod_itenspedven=:CodigoVenda ');
   	MDO.Query.ParamByName('CodigoVenda').AsInteger := DMESTOQUE.TSlave.FieldByName('cod_itenspedven').AsInteger;
   	MDO.Query.ExecSQL;
		MDO.Transac.CommitRetaining;
       FiltraSlave;
   Except;
	End;
end;

procedure TFPedVenda.Desmarcaritemparacontroledeposteriorretorno1Click(
  Sender: TObject);
begin
  inherited;
	Try
   	MDO.Query.Close;
   	MDO.Query.SQL.Clear;
		MDO.Query.SQL.Add(' Update itenspedven set itenspedven.controleretorno=''SEM CONTROLE'' Where itenspedven.cod_itenspedven=:CodigoVenda ');
   	MDO.Query.ParamByName('CodigoVenda').AsInteger := DMESTOQUE.TSlave.FieldByName('cod_itenspedven').AsInteger;
   	MDO.Query.ExecSQL;
		MDO.Transac.CommitRetaining;
       FiltraSlave;
   Except;
	End;
End;

procedure TFPedVenda.BtnFechaPedClick(Sender: TObject);
begin
   XSQLTABELA:= 'PEDVENDA';
   XSQLVIEW:='VWPEDV';
   XSQLTabSlave:='ITENSPEDVEN';
	XTabSlave:=DMSAIDA.TItemPV;

   inherited;
end;

procedure TFPedVenda.ReimprimirNFCeemcontingncia1Click(Sender: TObject);
begin
  inherited;
   // verifica se o pedido está mesmo em contingencia
   if XView.FieldByName('FISCO').AsString = 'CONT' then
   begin
       FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
       FMzrNfe.SetRetransmissaoNFCe(XView.FieldByName('COD_PEDVENDA').AsInteger, 'PEDV', XView.FieldByName('NUMFISCAL').AsInteger);
       FMzrNfe.ShowModal;
   end
   else begin
       Mensagem('OPÇÃO BLOQUEADA', 'Apenas NFCe em contingência pode ser reimpresso.', '', 1, 1, False, 'a');
   end;   
end;

End.



