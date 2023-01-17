unit UPedVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPedidoPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  Buttons, TFlatEditUnit, jpeg, ExtCtrls, EditFloat, ColorEditFloat, Mask,
  DBCtrls, DBColorEdit, ColorMaskEdit, FashionPanel, Qrctrls, QuickRpt,
  UFrmBusca, FR_Class, FR_DSet, FR_DBSet, Menus, DB, MP20FI, DrLabel,ShellApi,ClipBrd,
  cxLookAndFeelPainters, cxButtons, AppEvnts, XP_Button, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxCheckBox,
  FR_Shape, FR_BarC,XMLDoc, XMLIntf, xmldom, IBCustomDataSet, IBQuery;

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
    Cancelar1: TMenuItem;
    N2: TMenuItem;
    Gerarnovopedido1: TMenuItem;
    DBGrid5: TDBGrid;
    InserirNFiscal1: TMenuItem;
    ApagarNFiscal1: TMenuItem;
    ComprovanteTermal1: TMenuItem;
    N4: TMenuItem;
    ControledeEntrega1: TMenuItem;
    ResumodeEntrega1: TMenuItem;
    ReimprimirNF1: TMenuItem;
    LHistNumDocumento: TLabel;
    LHistValor: TLabel;
    LHistData: TLabel;
    Shape2: TShape;
    LHistProd: TLabel;
    LHistCliente: TLabel;
    LQuantidade: TLabel;
    LQtde: TLabel;
    N5: TMenuItem;
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
    ColorEditFloat1: TColorEditFloat;
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
    EfetuarDevoluodeNFe1: TMenuItem;
    RelatriodeDanfe1: TMenuItem;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    NOTAFISCALELETRNICA2: TMenuItem;
    ReimprimirNotaFiscal1: TMenuItem;
    NOTAFISCALFORMULRIO1: TMenuItem;
    N10: TMenuItem;
    NFeNF1: TMenuItem;
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
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRGroup1: TQRGroup;
    TLote: TIBQuery;
    DSLote: TDataSource;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    LbNomeCliente: TQRLabel;
    LbDtPed: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand2: TQRBand;
    LbCodigo: TQRLabel;
    LbDescricao: TQRLabel;
    LbQuantidade: TQRLabel;
    LbValor: TQRLabel;
    QRShape2: TQRShape;
    BtnLimpaData: TBitBtn;
    LbNumPed: TQRLabel;
    BtnAbreVeiculos: TBitBtn;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
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
    EDMarca: TColorEditFloat;
    EdUnidade: TColorEditFloat;
    Label42: TLabel;
    Label50: TLabel;
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
    Panel5: TPanel;
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
    procedure MP20FI1Erro(Sender: TObject);
    procedure MP20FI1Mensagem(Sender: TObject);
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
    procedure Cancelar1Click(Sender: TObject);
    procedure Gerarnovopedido1Click(Sender: TObject);
    procedure InserirNFiscal1Click(Sender: TObject);
    procedure ApagarNFiscal1Click(Sender: TObject);
    procedure BtnProcVendClick(Sender: TObject);
    procedure ComprovanteTermal1Click(Sender: TObject);
    procedure ControledeEntrega1Click(Sender: TObject);
    procedure ResumodeEntrega1Click(Sender: TObject);
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
    procedure EdDespesaExit(Sender: TObject);
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
    procedure FPListaExit(Sender: TObject);
    procedure RelatriodevendascomDespesas1Click(Sender: TObject);
    procedure RelatriodeVendasdeVeculos1Click(Sender: TObject);
    procedure RecuperareEnviarXMLdeCancelamento1Click(Sender: TObject);
    procedure CartadeCorreoEletrnica1Click(Sender: TObject);
    
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
  
implementation

uses UDMEstoque, UDMPessoa, UFuncionario, Alxor32, AlxMessage, UDMSaida,
  UDMEntrada, UMenu, UDMMacs, UTroca, UComissionados, Alxorprn, UDmServ,
  UOrcamento, UDMFinanc, UCadPadrao, UDMConta, UDmBanco, UDMCaixa,
  UCtrlEntrega, USenha, UnitDeclaracoes, UValidacaoNFe, UDMGEOGRAFIA,
  UPadrao, UFORNECEDOR, UDMExporta, UFiscalSaidas, UMzrNfe, UCadCFOP,
  UPadraoFiscal, Variants, UListaNfe, UFiscalEntradas, URelPeriodoFiscal,
  UProduto, ULote, URelLancContas, UConsPedVenda, UAtualizaValores,
  URelPadraoped, URelData, UCartaCorrecaoEletronica, UGeradorXML;

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
   	DMESTOQUE.Alx.SQL.Add(' select itenspedven.valunit, itenspedven.qtdeprod , itenspedven.data, pedvenda.numped from itenspedven ');
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
   RetornaUltimaVendaProd('LIMPAR');
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




end;

procedure TFPedVenda.BtnDeleteListClick(Sender: TObject);
begin
  inherited;
  XCTrlPainelvend:=False;//varivael de controle do painel de vendedor item (ver em declaração de variáveis)
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
   If (FMenu.XRemessaGarantia=True) and (FMenu.XSimplesRemessa=False) and (fmenu.XDevolucao=False)and (FMenu.XOutrosFisc=False)and(FMenu.XComplementacao=True) Then
       LDescTitulo.Caption:='Remessa para garantia';

   If (FMenu.XRemessaGarantia=False) and (FMenu.XSimplesRemessa=True) and (fmenu.XDevolucao=False)and (FMenu.XOutrosFisc=False)and(FMenu.XComplementacao=True) Then
       LDescTitulo.Caption:='Simples Remessa';

   If (FMenu.XDevolucao=True) and (fmenu.XRemessaGarantia=False) and (FMenu.XSimplesRemessa=False)and (FMenu.XOutrosFisc=False)and(FMenu.XComplementacao=True) Then
       LDescTitulo.Caption:='Devolução de Mercadoria';

   If (FMenu.XRemessaGarantia=false)  and (FMenu.XSimplesRemessa=False) and (fmenu.XDevolucao=False)and (FMenu.XOutrosFisc=False)and(FMenu.XComplementacao=True) Then
       LDescTitulo.Caption:='Pedido de Venda';

   //Paulo 19/07/2010: Abre o form para outros
   If (FMenu.XOutrosFisc=True)and(FMenu.XRemessaGarantia=False) and (FMenu.XSimplesRemessa=False) and (fmenu.XDevolucao=False)and(FMenu.XComplementacao=True)Then
       LDescTitulo.Caption:='Outras Saídas';

   //Paulo 30/11/2010: Abre o form para Complementos
   If (FMenu.XComplementacao=True)and(FMenu.XOutrosFisc=False)and(FMenu.XRemessaGarantia=False) and (FMenu.XSimplesRemessa=False) and (fmenu.XDevolucao=False) Then
       LDescTitulo.Caption:='Nota Fiscal Eletrônica Complementar';

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

    //VERIFICA INFORMAÇÕES NECESSÁRIAS PARA CONTROLES DE CÁLCULOS FISCAIS
   If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '') = True
   Then Begin
       //Localiza o caixa em questão para verificar se suas configurações são de Nota Fiscal
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='NF') and (DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString <> '')
       Then
           BitBtn17.Visible := True
       else
           BitBtn17.Visible := False;
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='NFe')
       Then Begin
           DBGridCadastroPadrao.Hint:='Pressione Ctrl+s para salvar o lay-out do grid e Ctrl+c para copiar a chave de acesso da NFe';
           DBGridCadastroPadrao.ShowHint:=True;
       End
       Else Begin
           DBGridCadastroPadrao.Hint:='Pressione Ctrl+s para salvar o lay-ou do grid';
           DBGridCadastroPadrao.ShowHint:=True;
       End;
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString='NFe') Then
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
       DBGrid5.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\pedvendaDespesas.lgm');

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
           //Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
           If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.TEstoque.FieldByName('cod_subprod').AsString, '')=False Then
               Exit;
           //Filtra tabela de produto de acordo com o produto selecionada em fproduto
           If FiltraTabela(DMEstoque.TProduto, 'PRODUTO', 'COD_PRODUTO', DMEstoque.WSimilar.FieldByName('COD_PRODUTO').AsString, '')=False Then
               Exit;
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
               DMSAIDA.TAlx.SQL.Add('UNIDEMB, QTDNAEMB, CFOP, TIPOLISTA, IPNPMC, IPNMVA)');
               DMSAIDA.TAlx.SQL.Add('values');
               DMSAIDA.TAlx.SQL.Add('(:COD_ITENSPEDVEN, :COD_PEDVEN, :COD_ESTOQUE, :QTDEPROD, :DESCPRO, :COD_FUNCIONARIO,');
               DMSAIDA.TAlx.SQL.Add(':VALUNIT, :VALCUSTO, :VALORTOTAL, :ATUEST, :VALREP, :COEFDIV, :VALCOMP, :COD_CST, ');
               DMSAIDA.TAlx.SQL.Add(':LUCPER, :LUCMOE, :DATA, :COMISSAO, :OPERACAO, :LUCREL, :VLRVENDBD,');
               DMSAIDA.TAlx.SQL.Add(':QTDDEV, :NUMITEM, :COD_LOTE, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS,');
               DMSAIDA.TAlx.SQL.Add(':VLRIPI, :ALIQIPI, :REDUCBASEICMS, :VLRICMSSUBS, :VLRUNITDEV, :QTDENTREGUE,');
               DMSAIDA.TAlx.SQL.Add(':COD_UNIDADE, :QTDEMB, :UNIDEMB, :QTDNAEMB, :CFOP, :TIPOLISTA, :IPNPMC,:IPNMVA)');

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
               DMSAIDA.TAlx.ParamByName('COD_CST').AsInteger  := DMESTOQUE.TSubProd.FieldByName('COD_CST').AsInteger;
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
       FiltraSlave;
   End;

   //Paulo 01/02/2012: Verifica se o usuário é adm para desabilitar o campo de comissão
   FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption,'');
   if (DMMACS.TUsuario.FieldByName('ADM').AsString = '1')or(FMenu.LCODUSUARIO.Caption = '111522')  then
   	EdComissao.Enabled:=True
   else
       EdComissao.Enabled:=False;

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
   	If UpperCase(EdNome.Text)<>UpperCase(FMenu.LUSUARIO.Caption+'123') Then
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

procedure TFPedVenda.MP20FI1Erro(Sender: TObject);
begin
  inherited;
  ShowMessage('Erro');
end;

procedure TFPedVenda.MP20FI1Mensagem(Sender: TObject);
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
   DMESTOQUE.TSlave.sql.Add('subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD ');
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
begin
  inherited;
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

   EdDespesa.SetFocus;   
end;

procedure TFPedVenda.BitBtn4Click(Sender: TObject);
begin
  inherited;
   If Not DMESTOQUE.TDesp.IsEmpty
   Then Begin
   	DMESTOQUE.TDesp.Delete;
   	DMESTOQUE.TransacEstoque.CommitRetaining;
   	FiltraSlave;
   End;
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
  DMSAIDA.TAlx.SQL.Add('(COD_DESPADIC, COD_GERADOR, GERADOR, DESPESA, QTD, VLRREAL, VLRFINAL,');
  DMSAIDA.TAlx.SQL.Add('LUCMOE, LUCPER, VLRTOTFIN, DESCONTO, MARCA, UNIDADE, COD_EQUIPE, COD_FUNCIONARIO)');
  DMSAIDA.TAlx.SQL.Add('values');
  DMSAIDA.TAlx.SQL.Add('(:COD_DESPADIC, :COD_GERADOR, :GERADOR, :DESPESA, :QTD, :VLRREAL, :VLRFINAL,');
  DMSAIDA.TAlx.SQL.Add(':LUCMOE, :LUCPER, :VLRTOTFIN, :DESCONTO, :MARCA, :UNIDADE, :COD_EQUIPE,');
  DMSAIDA.TAlx.SQL.Add(':COD_FUNCIONARIO)');

   DMSAIDA.TAlx.ParamByName('COD_DESPADIC').AsInteger := XCOD_ITDESP;
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

   // - 15/01/2009: se botao lote fiscal estiver visivel não deixar fazer devolução parcial
   if BitBtn17.Visible = True
   then begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é permitida a Devolução Parcial para Notas Fiscais Eletrônicas.', '', 1, 1, False, 'a');
       Exit;
   end;

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
    FiltraSlave;
end;

procedure TFPedVenda.Cancelar1Click(Sender: TObject);
Var
	XCodPedidoTroca: String;
   XCODLANEST: Integer;
   XQTDLOTE: Real;
   XJust, XChave, XProtocolo, XNovoProtocolo: string;     // justificativa, nºchave, nºprotocolo do cancelamento nfe
   XCont:boolean;     // controle  nfe
   msg, XNumPedido :String;
begin
  inherited;

         XNumPedido := XView.FieldByName('COD_PEDVENDA').AsString;   //controle nfe

         FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');
         If FiltraTabela(DMSAIDA.TFiscPV, 'docfissaida', 'cod_pedido', XView.FieldByName('COD_PEDVENDA').AsString, '')=True
         Then Begin
         	If DMSAIDA.TFiscPV.FieldByName('NF').AsString='NFe'
           Then Begin
              MessageDlg('Use a função específica para cancelar Nota Fiscal Eletrônica', mtWarning, [mbOK], 0);
              Exit;
           End;
         End
         Else Begin
         		MessageDlg('Este pedido não gerou nota fiscal', mtWarning, [mbOK], 0);
               Exit;
         End;

         If (DMSAIDA.TPedV.FieldByName('FISCO').AsString<>'ECF') AND (DMSAIDA.TPedV.FieldByName('FISCO').AsString<>'NF') AND (DMSAIDA.TPedV.FieldByName('FISCO').AsString<>'NFe')
         Then Begin
             Mensagem('OPÇÃO BLOQUEADA', 'Este pedido NÃO passou por uma impressão fiscal!', '', 1, 1, False, 'a');
             Exit;
         End;

         If XView.FieldByName('SITUACAO').AsString='CANCELADO'
         Then Begin
             Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido se encontra Cancelado!', '', 1, 1, False, 'a');
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
         If Mensagem('A T E N Ç Ã O', 'Deseja realmente Cancelar a NF referente ao Pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
         Then Begin
             XCodPedidoTroca:=XView.FieldByName('COD_PEDVENDA').AsString;
             If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XCodPedidoTroca, '')=True
             Then Begin
                 //REGISTRA COMANDO DO USUARIO
                 Registra('PEDIDO VENDA', 'CANCELA NF', DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsString, 'Nº '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+'-'+DMSAIDA.TPedV.FieldByName('NOMECLI').AsString, 'Vlr:'+DMSAIDA.TPedV.FieldByName('VALOR').AsString+'-'+DMSAIDA.WPedV.FieldByName('FORMPAG').AsString);
                 If CancelLanPed(XCodPedidoTroca)=True
                 Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
                     DMSAIDA.TPedV.EDIT;
                     DMSAIDA.TPedV.FieldByName('SITUACAO').AsString:='CANCELADO';
                     DMSAIDA.TPedV.Post;
                 End;
                 XCodPedido:=XView.FieldByName('COD_PEDVENDA').AsString;
			      FMenu.XCodPesqPresSel:=XCodPedido;//Armazena temporariamente o codigo do pedido para ser usado fora do pedido padrão
                 //INSERE COMANDOS PARA FILTRAR
                 DMESTOQUE.Alx.Close;
                 DMESTOQUE.Alx.SQL.Clear;
                 DMESTOQUE.Alx.SQL.Add('Select itenspedven.cod_itenspedven, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, ');
                 DMESTOQUE.Alx.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
                 DMESTOQUE.Alx.SQL.Add('itenspedven.descpro, itenspedven.cod_funcionario, pessoa.nome, itenspedven.valunit, subproduto.descricao, subproduto.marca, subproduto.CONTRINT, itenspedven.data, itenspedven.operacao ');
                 DMESTOQUE.Alx.SQL.Add('From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
                 DMESTOQUE.Alx.SQL.Add('Left Join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
                 DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
                 DMESTOQUE.Alx.SQL.Add('Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
                 DMESTOQUE.Alx.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
                 DMESTOQUE.Alx.SQL.Add('Where PEDVENDA.cod_pedvenda = :CODPEDVENDA ');
                 DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString:=XView.FieldByName('COD_PEDVENDA').AsString;
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
                             FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.ALX.FieldByName('COD_ITENSPEDVEN').AsString, '');
                             DMSAIDA.TItemPV.Edit;
                             DMSAIDA.TItemPV.FieldByName('OPERACAO').AsString:='DVL';
                             DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency:=0;
                             DMSAIDA.TItemPV.Post;
                             XCODLANEST:=InserReg(DMENTRADA.TLancENT, 'LANCENT', 'COD_LANENT');
                             DMENTRADA.TLancENT.FieldByName('COD_LANENT').AsInteger:=XCODLANEST;
                             DMENTRADA.TLancENT.FieldByName('COD_ESTOQUE').AsString:=DMESTOQUE.Testoque.FieldByName('COD_ESTOQUE').AsString;
                             DMENTRADA.TLancENT.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
                             DMENTRADA.TLancENT.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
                             DMENTRADA.TLancENT.FieldByName('NUMNOTA').AsString:='CLD PDV-'+XView.FieldByName('NUMPED').AsString;
                             DMENTRADA.TLancENT.FieldByName('MOTIVO').AsString:='Cancelamento ref. Pedido: '+EdNumeroPedido.Text+'/Cliente: '+DMSAIDA.TPedV.FieldByName('NOMECLI').AsString;
                             DMENTRADA.TLancENT.FieldByName('DT_LANCAMENTO').AsString:=DateToStr(Date());
                             DMENTRADA.TLancENT.FieldByName('DT_ESTOQUE').AsString:=DateToStr(Date());
                             DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsString:=DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsString;
                             DMENTRADA.TLancENT.FieldByName('QTDANT').AsString:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
                             DMENTRADA.TLancEnt.POST;
                             DMESTOQUE.TEstoque.Edit;
                             DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency;
                             DMESTOQUE.TEstoque.POST;
                             DMESTOQUE.TransacEstoque.CommitRetaining;

                             if DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
                             Then Begin
                                 XQTDLOTE:=DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency;
                                 //VERIFICA SE O LOTE JA SE ENCONTRA CADASTRADO
                                 DMESTOQUE.TEstoqueLote.Close;
                                 DMESTOQUE.TEstoqueLote.SQL.Clear;
                                 DMESTOQUE.TEstoqueLote.SQL.Add('SELECT * FROM LESTOQUELOTE WHERE (ESTOQUELOTE.COD_LOTE=:LOTE)');
                                 DMESTOQUE.TEstoqueLote.ParamByName('LOTE').AsString:=DMSAIDA.TItemPV.FieldByName('COD_LOTE').AsString;
                                 DMESTOQUE.TEstoqueLote.Open;
                                 If Not DMESTOQUE.TEstoqueLote.IsEmpty
                                 Then Begin
                                     DMESTOQUE.TEstoqueLote.Edit;
                                     DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency:=DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency+XQTDLOTE;
                                     DMESTOQUE.TEstoqueLote.Post;
                                 End;
                             End;
                         End;
                     End;
                     DMESTOQUE.Alx.Next;
                 End;
                 Try
                     DMESTOQUE.TransacEstoque.CommitRetaining;
                     DMESTOQUE.TransacEstoque.CommitRetaining;
                     DMENTRADA.IBT.CommitRetaining;
                     DMSAIDA.IBT.CommitRetaining;
                 Except
                     DMESTOQUE.TransacEstoque.RollbackRetaining;
                     DMESTOQUE.TransacEstoque.RollbackRetaining;
                     DMENTRADA.IBT.RollbackRetaining;
                     DMSAIDA.IBT.RollbackRetaining;
                 End;
                 ExecutaLiberaDados;
             End
             Else Begin
                 Exit;
             End;
         End;

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

procedure TFPedVenda.ControledeEntrega1Click(Sender: TObject);
begin
  inherited;
  	 FMenu.TIPOAUX:=DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString;
    FMenu.TIPOREL:='Ped. Nº '+DMSAIDA.WPedV.FieldByName('NUMPED').AsString;
    AbrirForm(TFCtrlEntrega, FCtrlEntrega, 0);
end;

procedure TFPedVenda.ResumodeEntrega1Click(Sender: TObject);
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
   Then Begin
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
               If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF') or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NFe')
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

procedure TFPedVenda.BitBtn17Click(Sender: TObject);
begin
  inherited;
  enviarNFe(1, XView.FieldByName('COD_PEDVENDA').AsInteger, 'PV');
  {
  If XView.FieldByName('SITUACAO').AsString<>'FECHADO'
  then begin
        Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O Pedido não está fechado!', '', 1, 1, False, 'a');
        Exit;
  end;

  if FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', XView.FieldByName('COD_PEDVENDA').AsString, '')
  then begin
        if DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger = 1
        then begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Nota Fiscal do pedido já enviada para a Receita!', '', 1, 1, False, 'a');
            Exit;
        end;

        if DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger = 3
        then begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Nota Fiscal do pedido foi Cancelada!', '', 1, 1, False, 'a');
            Exit;
        end;

        if DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger = 4
        then begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Nota Fiscal em processo faça uma consulta!', '', 1, 1, False, 'a');
            Exit;
        end;
  end;

  If Mensagem('   A T E N Ç Ã O   ','Deseja enviar Nota Fiscal do pedido '+XView.FieldByName('NUMPED').AsString+'?','',2,3,false,'A')=3
  Then Begin
      Exit;
  end;


  FMenu.XNFe:=1;
  try
      FNFe := TFNFe.Create(FNFe);
      AbrirForm(TFNFe,FNFe, 1);
      FNFe.SetPedido(1, XView.FieldByName('COD_PEDVENDA').AsInteger, 'PV');
      FNFe.ShowModal;
  Finally
      FNFe := nil;
  end;
  FMenu.XNFe:=0;
	ExecutaLiberaDados;
  }
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
     If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString<>'SEMENTES') Then
          FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE.frf')
     Else
         FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE2.frf');


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
       PInfoExp.Visible:=True;
       PInfoExp.BringToFront;
       EdQuantExp.SetFocus;
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
        if XView.Recno mod 2 = 1 then
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
        DBGrid1.Canvas.Brush.Color := $00EEEEEE
     else
        DBGrid1.Canvas.Brush.Color := clWhite;
    end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
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
          DBGrid5.Canvas.Brush.Color := $00EEEEEE
       else
          DBGrid5.Canvas.Brush.Color := clWhite;
      end;
      DBGrid5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
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
       DBGrid5.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\pedvendaDespesas.lgm');
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
       If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar a Nota Fiscal Eletrônica Nº '+XView.FieldByName('numfiscal').AsString+'?'  , '', 2, 3, False, 'c')= 2
       Then Begin
           FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
           FMzrNfe.SetInFiscal('', XView.FieldByName('cod_pedvenda').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'PEDV', 'CANCELAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
           FMzrNfe.ShowModal;
       End;
   End;
end;

procedure TFPedVenda.VisualizarnoSefazNacional1Click(Sender: TObject);
begin
  inherited;
    FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', XView.FieldByName('cod_pedvenda').AsInteger, XView.FieldByName('cod_cliente').AsInteger, 'PEDV', 'SEFAZ', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.ShowModal;
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
var
XContA:integer;
XProx1:String;
begin
  inherited;
  //Paulo 10/08/2010: Busca o ultimo cupom
  for XContA := 1 to 6 do
  XCuponProx:= XCuponProx + ' ';
  Bematech_FI_NumeroCupom(XCuponProx);
  XCuponProx:=(Copy(XCuponProx,1,6));

  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add('select * from PEDVENDA where NUMFISCAL = :NUMCUPOM');
  DMMACS.TALX.ParamByName('NUMCUPOM').AsString:=XCuponProx;
  DMMACS.TALX.Open;
  if not(DMMACS.TALX.IsEmpty)then
  begin
      DMMACS.TALX.Close;
  	   DMMACS.TALX.SQL.Clear;
  	   DMMACS.TALX.SQL.Add('update PEDVENDA set pedvenda.situacao = :SITUACAO where pedvenda.numfiscal = :NUMCUPOM');
      DMMACS.TALX.ParamByName('SITUACAO').AsString:='CANCELADO';
      DMMACS.TALX.ParamByName('NUMCUPOM').AsString:=XCuponProx;
      DMMACS.TALX.ExecSQL;
      DMMACS.Transaction.CommitRetaining;
      
      //Paulo 10/08/2010: Cancela ultimo cupom fiscal
  	   Bematech_FI_CancelaCupom();
      FormActivate(Sender);
  end;

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
  	//Somente continua processo de devolução se for encontrado documento fiscal correspondente
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
       DMSAIDA.TAlx.SQL.Add('docfissaida.cod_cfop1, docfissaida.cod_cfop2, docfissaida.nfexml,');
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

procedure TFPedVenda.EdDespesaExit(Sender: TObject);
begin
  inherited;
   If PDespAdic.Visible=True Then
   	EdQtdDesp.SetFocus;
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
       end

end;

procedure TFPedVenda.FPListaExit(Sender: TObject);
begin
  //If (PAlteraQuantidade.Visible=false) Then
  //inherited;

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

End.

