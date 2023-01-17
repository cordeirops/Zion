unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg, StdCtrls, Buttons, FashionPanel, Menus, Registry, DB,
  TFlatHintUnit,
  AppEvnts, abfAppProps, TFlatGaugeUnit, Grids, DBGrids, ComCtrls, EditFloat,
  DBCtrls, OleCtrls, Cripto, DBColorEdit,
  IBServices, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, AppProt, FR_DSet, FR_DBSet,
  FR_Class, ExcelXP, ImgList, OleServer, abarra, Extenso,
  IBSQLMonitor, QRCtrls, QuickRpt, DrLabel, Mask, ColorMaskEdit,
  ColorEditFloat, JLLabel, IBCustomDataSet, RPrint, Printers,
  KERB, Excel97, Variants, ShellAPI, XMLDoc, XMLIntf, xmldom, IdHTTP,
  abfComponents, UFrmatalho, IdAntiFreezeBase, IdAntiFreeze, IdFTP,
  msxmldom, midaslib, MSNPopUp, MDOCustomDataSet, RpDefine, RpBase,
  RpSystem, TLHelp32, TFlatPanelUnit, frxpngimage, TFlatEditUnit, ZipMstr,
  pngimage, IdExplicitTLSClientServerBase, IdSMTPBase;
  	//função utilizada para abrir gaveta atraves da impressora elgin
  //	function Wind_AcionaGaveta:integer; stdcall; External 'Elgin.DLL';
type
  TFMenu = class(TForm)
    Cripto: TCriptografa;
    Extenso: TExtenso;
    CriptBloqued: TCriptografa;
    PrnCodBarra: TABarraPrinter;
    PrnEan8: TABarraPrinter;
    QRResumo: TQuickRep;
    QRBand8: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape4: TQRShape;
    QRSysData1: TQRSysData;
    QRBand9: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape5: TQRShape;
    QRBand10: TQRBand;
    QRBand12: TQRBand;
    QRShape8: TQRShape;
    QRBand11: TQRBand;
    QRLORION: TQRLabel;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLSaldo: TQRLabel;
    QrlVlrPagar: TQRLabel;
    QrLVlrReceber: TQRLabel;
    QRLTotalSaldo: TQRLabel;
    QRLMes: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel2: TQRLabel;
    PComunica: TPanel;
    LCODUSUARIO: TRotateLabel;
    LCODCAIXA: TLabel;
    LABCAIXA: TLabel;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    MAux: TMemo;
    ABarraPrinter1: TABarraPrinter;
    LABBANCO: TLabel;
    MCripto: TMemo;
    LCODEMPRESA: TLabel;
    LEmpresa: TLabel;
    LCODLOJA: TLabel;
    IdFTP1: TIdFTP;
    IdAntiFreeze1: TIdAntiFreeze;
    TSinc: TTimer;
    PrnEan13: TABarraPrinter;
    ABarraPrinter2: TABarraPrinter;
    Panel3: TPanel;
    Panel4: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    LRUSUARIO: TDRLabel;
    PAguarde: TPanel;
    Panel5: TPanel;
    Label17: TLabel;
    XmlCaminhoBanco: TXMLDocument;
    LCaixaLogado: TLabel;
    RvFaturas: TRvSystem;
    Menu: TMainMenu;
    MenuCadastro: TMenuItem;
    Clientes4: TMenuItem;
    Fornecedores3: TMenuItem;
    Funcionrios1: TMenuItem;
    erceiros2: TMenuItem;
    Equipe2: TMenuItem;
    Equipamentos1: TMenuItem;
    Cidade2: TMenuItem;
    Estado2: TMenuItem;
    Regio2: TMenuItem;
    Empresa2: TMenuItem;
    Loja2: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    ServiosF41: TMenuItem;
    OrdemdeServios1: TMenuItem;
    abeladeServios1: TMenuItem;
    OrdemdeManuteno2: TMenuItem;
    CadastrodeServios1: TMenuItem;
    Grupo2: TMenuItem;
    SubGrupo2: TMenuItem;
    Unidade2: TMenuItem;
    N13: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    Relatrios6: TMenuItem;
    OrdemdeServios2: TMenuItem;
    CompdeFechamento1: TMenuItem;
    ReldeEquipamento1: TMenuItem;
    RelAnalticodeEquipamentos1: TMenuItem;
    RelSintticodeEquipamentos1: TMenuItem;
    ReldeEquipes1: TMenuItem;
    RelAnalticodeProdutos1: TMenuItem;
    ReldeProdutosemOS1: TMenuItem;
    ReldeReceitaseDespesas1: TMenuItem;
    Comisso4: TMenuItem;
    RelnicoComissionado1: TMenuItem;
    ReldeComisso1: TMenuItem;
    ReldeServiosporFuncionrio1: TMenuItem;
    FinanceiroAltF1: TMenuItem;
    EstoqueAltE1: TMenuItem;
    EntradasAltN1: TMenuItem;
    SadasAltA1: TMenuItem;
    U1: TMenuItem;
    Usurios1: TMenuItem;
    N27: TMenuItem;
    GeradorSintegra1: TMenuItem;
    ImportarSintegra1: TMenuItem;
    SpedFiscal2: TMenuItem;
    ReduoZ1: TMenuItem;
    ECF2: TMenuItem;
    Auditoria2: TMenuItem;
    ExportadorImportadordeDados1: TMenuItem;
    Gerenciador2: TMenuItem;
    ExportadorDomnio1: TMenuItem;
    AtualizaodoBancodeDados1: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    ContasaPagar2: TMenuItem;
    ContasaReceber3: TMenuItem;
    PlanodeContas2: TMenuItem;
    Caixas2: TMenuItem;
    Bancos2: TMenuItem;
    Cheques2: TMenuItem;
    Cartes2: TMenuItem;
    Relatrios7: TMenuItem;
    Lanamentos4: TMenuItem;
    BaixasConjuntas3: TMenuItem;
    ContasdePreviso2: TMenuItem;
    Lanamentos5: TMenuItem;
    LanamentosemLote2: TMenuItem;
    BaixaConjunta1: TMenuItem;
    CadastrodeCaixas1: TMenuItem;
    AbrirCaixa2: TMenuItem;
    Lanamentos6: TMenuItem;
    FecharCaixa1: TMenuItem;
    C1: TMenuItem;
    CadastrodeContaCorrente1: TMenuItem;
    Lanamentos7: TMenuItem;
    ChequesEmitidos2: TMenuItem;
    ChequesRecebidos2: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    ContasaPagar3: TMenuItem;
    ContasaReceber4: TMenuItem;
    Caixa3: TMenuItem;
    CtasaPagarxCtasaReceber1: TMenuItem;
    Banco1: TMenuItem;
    Relatriode1: TMenuItem;
    EstruturadeResultado1: TMenuItem;
    CompraseVendas2: TMenuItem;
    RelatriodeCrdito1: TMenuItem;
    PosioFinanceira2: TMenuItem;
    ReciboAvulso2: TMenuItem;
    Gere1: TMenuItem;
    GerencialSinttico1: TMenuItem;
    Rel1: TMenuItem;
    LanamentodeCrditos1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores4: TMenuItem;
    ReldeCaixaAgrupadoporData1: TMenuItem;
    ReldeCaixaAgrupadoporCaixa1: TMenuItem;
    ReldeCaixaporPerodo1: TMenuItem;
    ReldeCtasaPagarporFornecedor1: TMenuItem;
    ReldeCtasaPagarporData1: TMenuItem;
    RelaodosPagamentos2: TMenuItem;
    Pagamentodas1: TMenuItem;
    RelaodeCtasaPagarporFornecedor1: TMenuItem;
    Relatrio1: TMenuItem;
    ReldeCtasaReceberporCliente1: TMenuItem;
    ReldeCtasaReceberporDocumento1: TMenuItem;
    ReldeCtasaReceberAgrupadopor1: TMenuItem;
    RelaodosRecebimentos2: TMenuItem;
    RelaodosDocumentoscomCorrees1: TMenuItem;
    RelporSetordeVendas1: TMenuItem;
    Relao1: TMenuItem;
    ReldeBoletosEmitidos1: TMenuItem;
    Extrato1: TMenuItem;
    ExtratodePessoaFsica1: TMenuItem;
    ExtratodePessoaJurdica1: TMenuItem;
    ReldeResumodeCtasem1: TMenuItem;
    ResumodeCtasem306090120120Dias1: TMenuItem;
    ReldeInadimplencias1: TMenuItem;
    ResumoMensal2: TMenuItem;
    ReldeMovimentaes1: TMenuItem;
    ReldeChequesEmitidos1: TMenuItem;
    ReldeChequesRecebidos1: TMenuItem;
    RelcomSaldosdasCtasCorrente1: TMenuItem;
    ReldosMovimentosporPreodo1: TMenuItem;
    RelResumo1: TMenuItem;
    ReldeProdutosVendidos1: TMenuItem;
    ReldeProdutoseServiosVendidos1: TMenuItem;
    ReldeProdutoseServiosemConta1: TMenuItem;
    RelComparativodeVendasAnual1: TMenuItem;
    RelComparativode1: TMenuItem;
    ReldeComparaodeComisses1: TMenuItem;
    Rel2: TMenuItem;
    ReldeVendasporVendedor1: TMenuItem;
    Extratos1: TMenuItem;
    PessoaFsica1: TMenuItem;
    PessoaJurdica1: TMenuItem;
    N15: TMenuItem;
    N20: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    PTitulo: TFlatPanel;
    IconFornecedor: TImage;
    IconCliente: TImage;
    IconCheque: TImage;
    IconBanco: TImage;
    IconReceber: TImage;
    IconPagar: TImage;
    IconEstoque: TImage;
    IconCaixa: TImage;
    IconCompra: TImage;
    IconOrcamento: TImage;
    IconVenda: TImage;
    IconOrdem: TImage;
    IFTP: TIdFTP;
    PedidodeVenda2: TMenuItem;
    Outros2: TMenuItem;
    abeladepreos2: TMenuItem;
    Oramentos2: TMenuItem;
    Fatura1: TMenuItem;
    Licitaes2: TMenuItem;
    ProduoemLote2: TMenuItem;
    PedidosemXML2: TMenuItem;
    Relatrios3: TMenuItem;
    N2: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    SimplesRemessa2: TMenuItem;
    RemessaparaGarantia1: TMenuItem;
    Devolues3: TMenuItem;
    Outros3: TMenuItem;
    NotaFiscalEletrnicaComplementar1: TMenuItem;
    FaturarPedidos2: TMenuItem;
    CancelarFaturas2: TMenuItem;
    SintticoeOrdenado3: TMenuItem;
    SintticoparaClientes1: TMenuItem;
    SintticoporFormadePagamento1: TMenuItem;
    SintticoporClientes2: TMenuItem;
    AnalticoporClientes1: TMenuItem;
    SintticocommdiadeDias2: TMenuItem;
    RelatriodeProdutoseClientes1: TMenuItem;
    ProdutosVendidosporTributao2: TMenuItem;
    RelatriodeDanfesdeVendas1: TMenuItem;
    RelatriodeCarregamentos1: TMenuItem;
    AnalticoporClienteseProdutos2: TMenuItem;
    AnalticodeProdutosVendidos1: TMenuItem;
    Analticocom1: TMenuItem;
    ComissoporProduto2: TMenuItem;
    Vendasfaturadas2: TMenuItem;
    Oramentos3: TMenuItem;
    Comisso2: TMenuItem;
    VendasporRegistro1: TMenuItem;
    ComissoporContasReceber1: TMenuItem;
    ListBox: TListBox;
    Licitaes1: TMenuItem;
    PedidodeCompra1: TMenuItem;
    SolicitaodeCompra2: TMenuItem;
    Outros1: TMenuItem;
    Faturar1: TMenuItem;
    Relatrios4: TMenuItem;
    EntradasdeTerceiros2: TMenuItem;
    EntradascomEmissaoPrpria1: TMenuItem;
    SintticoeOrdenado1: TMenuItem;
    AnalticoporFornecedor1: TMenuItem;
    AnalticodeprodutosComprados1: TMenuItem;
    SintticoporfornecedorcomObservaes1: TMenuItem;
    Comisso1: TMenuItem;
    Devolues2: TMenuItem;
    RelatriodeDanfesdeEntrada1: TMenuItem;
    Sinttico2: TMenuItem;
    Produtos1: TMenuItem;
    FaturarPedidos1: TMenuItem;
    CancelarFatura1: TMenuItem;
    Produtos4: TMenuItem;
    EntradasparaCorreo1: TMenuItem;
    SadasparaCorreo1: TMenuItem;
    Industrializao1: TMenuItem;
    Relatrios8: TMenuItem;
    CadastrarProdutos1: TMenuItem;
    Cadastrargrupo1: TMenuItem;
    CadastrarSubGrupo1: TMenuItem;
    CstCsosn1: TMenuItem;
    Unidades1: TMenuItem;
    ConversoUnitria1: TMenuItem;
    CFOP2: TMenuItem;
    aTUALIZARvALORES1: TMenuItem;
    FichaTcnica3: TMenuItem;
    Produo2: TMenuItem;
    Relatrios9: TMenuItem;
    FichaTcnica4: TMenuItem;
    FichadeProduo2: TMenuItem;
    LanamentosdeEntrada2: TMenuItem;
    LanamentosdeSada1: TMenuItem;
    Etiquetas2: TMenuItem;
    CurvaABC2: TMenuItem;
    InventriodeEstoque2: TMenuItem;
    ListadeProdutosporTributao2: TMenuItem;
    Posiodeestoque2: TMenuItem;
    ListagemdeEstoque1: TMenuItem;
    ListadeClassificaodeProdutos1: TMenuItem;
    Listadepreos2: TMenuItem;
    ListadepreosComplesta1: TMenuItem;
    ListadepreoscomValoresdeAtacado2: TMenuItem;
    ListadePreosemDuasColunas1: TMenuItem;
    ListadeVendas2: TMenuItem;
    Listade1: TMenuItem;
    ListaparaContagem2: TMenuItem;
    Loteevencimento2: TMenuItem;
    EstoqueCalculado2: TMenuItem;
    EstoqueMnimo1: TMenuItem;
    EsportarparaXML1: TMenuItem;
    EntradasxSadadeEstoque1: TMenuItem;
    GradeeProduto1: TMenuItem;
    ProdutosComercializadosporMs1: TMenuItem;
    N3: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N42: TMenuItem;
    PRodape: TFlatPanel;
    EdUsuario: TFlatEdit;
    EdCaixa: TFlatEdit;
    EdLoja: TFlatEdit;
    EdData: TFlatEdit;
    PrintDialog1: TPrintDialog;
    XMLDocument1: TXMLDocument;
    DevoluesdeVenda1: TMenuItem;
    PAtalhosAdicionais: TFlatPanel;
    IconChat: TImage;
    IconTicket: TImage;
    IconRemoto: TImage;
    IconAtualizar: TImage;
    FTP: TIdFTP;
    Expedio1: TMenuItem;
    N1: TMenuItem;
    ValidaodeversodoSistema1: TMenuItem;
    N4: TMenuItem;
    IconAjuda: TImage;
    ContagemdeEstoque1: TMenuItem;
    OutrasEntradascomEmissoPrpria1: TMenuItem;
    LNomeLoja: TLabel;
    NFCereferenciada1: TMenuItem;
    Arquivosparacontabilidade1: TMenuItem;
    ListadeProdutosClassificados1: TMenuItem;
    PosiodeEstoque4casas1: TMenuItem;
    FDSCaixa: TfrDBDataSet;
    FSRel: TfrReport;
    VerificarservicepackeNetframework1: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure IniciaData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure PAnelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PAnelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BtnMonitorUpClick(Sender: TObject);
    procedure BtnMonitorDownClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Agencia1Click(Sender: TObject);
    procedure CtaCorrente1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure PedidodeVenda1Click(Sender: TObject);
    procedure PedidodeCompras1Click(Sender: TObject);
    procedure Moeda2Click(Sender: TObject);
    procedure CotaodeValores1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure IconChequeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBSQLMonitor1SQL(EventText: String; EventTime: TDateTime);
    procedure FormActivate(Sender: TObject);
    procedure Sadas1Click(Sender: TObject);
    procedure Entradas1Click(Sender: TObject);
    procedure CadastrarProduto1Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure SubGrupo1Click(Sender: TObject);
    procedure CST1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure PosiodeEstoque1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Mensal1Click(Sender: TObject);
    procedure Mensal2Click(Sender: TObject);
    procedure LanamentosdeEntrada1Click(Sender: TObject);
    procedure LanamentodeSada1Click(Sender: TObject);
    procedure CdBarra1Click(Sender: TObject);
    procedure Clientes3Click(Sender: TObject);
    procedure Emitidos1Click(Sender: TObject);
    procedure ChequesEmitidos1Click(Sender: TObject);
    procedure f1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Comissionadonico1Click(Sender: TObject);
    procedure ComisMltiplo1Click(Sender: TObject);
    procedure MltiplosComis1Click(Sender: TObject);
    procedure VendasporFormadePagamento1Click(Sender: TObject);
    procedure Comisso3Click(Sender: TObject);
    procedure ListadePreos1Click(Sender: TObject);
    procedure ConversodeUnidades1Click(Sender: TObject);
    procedure Novo2Click(Sender: TObject);
    procedure Sintticoeordenado1Click(Sender: TObject);
    procedure SintticoeOrdenado2Click(Sender: TObject);
    procedure EstruturadeResultados1Click(Sender: TObject);
    procedure Analticocomitensdevolvidos1Click(Sender: TObject);
    procedure Oramentos1Click(Sender: TObject);
    procedure Mensagem1Click(Sender: TObject);
    procedure ListadeVendas1Click(Sender: TObject);
    procedure ListadePreosparaClientes1Click(Sender: TObject);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRResumoBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ComProdutoseSimilares1Click(Sender: TObject);
    procedure PorMseProdutos1Click(Sender: TObject);
    procedure LoteeVencimento1Click(Sender: TObject);
    procedure ExportarDados1Click(Sender: TObject);
    procedure ListaComDescriodeCupom1Click(Sender: TObject);
    procedure VendasFaturadas1Click(Sender: TObject);
    procedure IconServicosClick(Sender: TObject);
    procedure CurvaABC1Click(Sender: TObject);
    procedure InventriodeEstoque1Click(Sender: TObject);
    procedure Licitaes1Click(Sender: TObject);
    procedure EstoqueCalculado1Click(Sender: TObject);
    procedure PagamentoscomPrevises1Click(Sender: TObject);
    procedure Listaparacontagem1Click(Sender: TObject);
    procedure EstoqueMximoMnimo1Click(Sender: TObject);
    procedure Sinttico1Click(Sender: TObject);
    procedure Produtos3Click(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
    procedure Licitao1Click(Sender: TObject);
    procedure Faturar2Click(Sender: TObject);
    procedure ExportarparaXML1Click(Sender: TObject);
    procedure Clientes4Click(Sender: TObject);
    procedure ListadePreosCompleta1Click(Sender: TObject);
    procedure Clientes5Click(Sender: TObject);
    procedure Fornecedores2Click(Sender: TObject);
    procedure ListadePreos2Colunas1Click(Sender: TObject);
    procedure AnalticoporClienteseProdutos1Click(Sender: TObject);
    procedure SintticoporClientes1Click(Sender: TObject);
    procedure Sintticocommdiadedias1Click(Sender: TObject);
    procedure RelatriodeCarregamento1Click(Sender: TObject);
    procedure ESTE1Click(Sender: TObject);
    procedure AnalticoporProdutoseClientes1Click(Sender: TObject);
    procedure AtualizaValores1Click(Sender: TObject);
    procedure RelProdCliClick(Sender: TObject);
    procedure ComissaoporProdutos1Click(Sender: TObject);
    procedure ComissoporProduto1Click(Sender: TObject);
    procedure ReceitaseDespesas1Click(Sender: TObject);
    procedure TRssTimer(Sender: TObject);
    procedure lbRss01Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure abeladePreos1Click(Sender: TObject);
    procedure PedidosemXML1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Remessasdegarantia1Click(Sender: TObject);
    procedure IconMinimizeClick(Sender: TObject);
    procedure Devolues2Click(Sender: TObject);
    procedure Perodofiscal1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SintticoporFornecedorescomObservao1Click(Sender: TObject);
    procedure TSincTimer(Sender: TObject);
    procedure SimplesRemessa1Click(Sender: TObject);
    procedure ListadePreoscomvaloresdeAtacado1Click(Sender: TObject);
    procedure OutrosFiscClick(Sender: TObject);
    procedure ListadeProdutosporTributao1Click(Sender: TObject);
    procedure ProdutosVendidosporTributao1Click(Sender: TObject);
    procedure SintticoparaCliente1Click(Sender: TObject);
    procedure EmissoPrpria1Click(Sender: TObject);
    procedure EntradasdeTerceiros1Click(Sender: TObject);
    procedure RelDanfesdeVenda1Click(Sender: TObject);
    procedure RelDanfesdeEntradas1Click(Sender: TObject);
    procedure ProduoemLote1Click(Sender: TObject);
    procedure ComplementaopNFe1Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FaturaPedidos1Click(Sender: TObject);
    procedure CancelaFatura1Click(Sender: TObject);
    procedure CancelarFaturas1Click(Sender: TObject);
    procedure FaturarPedidos1Click(Sender: TObject);
    procedure ComissoporCtaReceber1Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure RvFaturasBeforePrint(Sender: TObject);
    procedure RvFaturasPrint(Sender: TObject);
    procedure btnRelFaturaClick(Sender: TObject);
    procedure SolicitaodeCompra1Click(Sender: TObject);
    procedure Fornecedores3Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure erceiros2Click(Sender: TObject);
    procedure Equipe2Click(Sender: TObject);
    procedure Equipamentos1Click(Sender: TObject);
    procedure Empresa2Click(Sender: TObject);
    procedure Loja2Click(Sender: TObject);
    procedure Cidade2Click(Sender: TObject);
    procedure Estado2Click(Sender: TObject);
    procedure Regio2Click(Sender: TObject);
    procedure ManuCadastroDrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; Selected: Boolean);
    procedure CadastrodeServios1Click(Sender: TObject);
    procedure Grupo2Click(Sender: TObject);
    procedure SubGrupo2Click(Sender: TObject);
    procedure Unidade2Click(Sender: TObject);
    procedure OrdemdeServios1Click(Sender: TObject);
    procedure abeladeServios1Click(Sender: TObject);
    procedure OrdemdeManuteno2Click(Sender: TObject);
    procedure OrdemdeServios2Click(Sender: TObject);
    procedure CompdeFechamento1Click(Sender: TObject);
    procedure ReldeEquipamento1Click(Sender: TObject);
    procedure RelAnalticodeEquipamentos1Click(Sender: TObject);
    procedure RelSintticodeEquipamentos1Click(Sender: TObject);
    procedure ReldeEquipes1Click(Sender: TObject);
    procedure RelAnalticodeProdutos1Click(Sender: TObject);
    procedure RelAnalticode1Click(Sender: TObject);
    procedure ReldeProdutosemOS1Click(Sender: TObject);
    procedure ReldeReceitaseDespesas1Click(Sender: TObject);
    procedure RelnicoComissionado1Click(Sender: TObject);
    procedure ReldeComisso1Click(Sender: TObject);
    procedure ReldeServiosporFuncionrio1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure GeradorSintegra1Click(Sender: TObject);
    procedure ImportarSintegra1Click(Sender: TObject);
    procedure SpedFiscal2Click(Sender: TObject);
    procedure ReduoZ1Click(Sender: TObject);
    procedure ECF2Click(Sender: TObject);
    procedure Auditoria2Click(Sender: TObject);
    procedure ExportadorImportadordeDados1Click(Sender: TObject);
    procedure Gerenciador2Click(Sender: TObject);
    procedure ExportadorDomnio1Click(Sender: TObject);
    procedure AtualizaodoBancodeDados1Click(Sender: TObject);
    procedure Lanamentos4Click(Sender: TObject);
    procedure BaixasConjuntas3Click(Sender: TObject);
    procedure ContasdePreviso2Click(Sender: TObject);
    procedure Lanamentos5Click(Sender: TObject);
    procedure LanamentosemLote2Click(Sender: TObject);
    procedure BaixaConjunta1Click(Sender: TObject);
    procedure PlanodeContas2Click(Sender: TObject);
    procedure CadastrodeCaixas1Click(Sender: TObject);
    procedure AbrirCaixa2Click(Sender: TObject);
    procedure Lanamentos6Click(Sender: TObject);
    procedure FecharCaixa1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure CadastrodeContaCorrente1Click(Sender: TObject);
    procedure Lanamentos7Click(Sender: TObject);
    procedure ChequesEmitidos2Click(Sender: TObject);
    procedure ChequesRecebidos2Click(Sender: TObject);
    procedure Cartes2Click(Sender: TObject);
    procedure ReldeCtasaPagarporFornecedor1Click(Sender: TObject);
    procedure ReldeCtasaPagarporData1Click(Sender: TObject);
    procedure RelaodosPagamentos2Click(Sender: TObject);
    procedure Pagamentodas1Click(Sender: TObject);
    procedure RelaodeCtasaPagarporFornecedor1Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
    procedure ReldeCtasaReceberporCliente1Click(Sender: TObject);
    procedure ReldeCtasaReceberporDocumento1Click(Sender: TObject);
    procedure ReldeCtasaReceberAgrupadopor1Click(Sender: TObject);
    procedure RelaodosRecebimentos2Click(Sender: TObject);
    procedure RelaodosDocumentoscomCorrees1Click(Sender: TObject);
    procedure RelporSetordeVendas1Click(Sender: TObject);
    procedure Relao1Click(Sender: TObject);
    procedure ReldeBoletosEmitidos1Click(Sender: TObject);
    procedure ExtratodePessoaFsica1Click(Sender: TObject);
    procedure ExtratodePessoaJurdica1Click(Sender: TObject);
    procedure ReldeCaixaporPerodo1Click(Sender: TObject);
    procedure ReldeCaixaAgrupadoporData1Click(Sender: TObject);
    procedure ReldeCaixaAgrupadoporCaixa1Click(Sender: TObject);
    procedure ReldeResumodeCtasem1Click(Sender: TObject);
    procedure ResumodeCtasem306090120120Dias1Click(Sender: TObject);
    procedure ReldeInadimplencias1Click(Sender: TObject);
    procedure ResumoMensal2Click(Sender: TObject);
    procedure ReldosMovimentosporPreodo1Click(Sender: TObject);
    procedure ReldeMovimentaes1Click(Sender: TObject);
    procedure ReldeChequesEmitidos1Click(Sender: TObject);
    procedure Relatriode1Click(Sender: TObject);
    procedure EstruturadeResultado1Click(Sender: TObject);
    procedure RelResumo1Click(Sender: TObject);
    procedure ReldeProdutosVendidos1Click(Sender: TObject);
    procedure ReldeProdutoseServiosVendidos1Click(Sender: TObject);
    procedure ReldeProdutoseServiosemConta1Click(Sender: TObject);
    procedure RelComparativodeVendasAnual1Click(Sender: TObject);
    procedure RelComparativode1Click(Sender: TObject);
    procedure ReldeComparaodeComisses1Click(Sender: TObject);
    procedure Rel2Click(Sender: TObject);
    procedure ReldeVendasporVendedor1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedores4Click(Sender: TObject);
    procedure RelatriodeCrdito1Click(Sender: TObject);
    procedure PosioFinanceira2Click(Sender: TObject);
    procedure ReciboAvulso2Click(Sender: TObject);
    procedure Gere1Click(Sender: TObject);
    procedure GerencialSinttico1Click(Sender: TObject);
    procedure Rel1Click(Sender: TObject);
    procedure IconOrdemClick(Sender: TObject);
    procedure IconOrcamentoClick(Sender: TObject);
    procedure IconVendaClick(Sender: TObject);
    procedure IconCompraClick(Sender: TObject);
    procedure IconCaixaClick(Sender: TObject);
    procedure IconEstoqueClick(Sender: TObject);
    procedure IconPagarClick(Sender: TObject);
    procedure IconReceberClick(Sender: TObject);
    procedure IconBancoClick(Sender: TObject);
    procedure IconClienteClick(Sender: TObject);
    procedure IconFornecedorClick(Sender: TObject);
    procedure IconTicketClick(Sender: TObject);
    procedure IconRemotoClick(Sender: TObject);
    procedure IconChatClick(Sender: TObject);
    procedure PedidodeVenda2Click(Sender: TObject);
    procedure SimplesRemessa2Click(Sender: TObject);
    procedure RemessaparaGarantia1Click(Sender: TObject);
    procedure Devolues3Click(Sender: TObject);
    procedure Outros3Click(Sender: TObject);
    procedure NotaFiscalEletrnicaComplementar1Click(Sender: TObject);
    procedure abeladepreos2Click(Sender: TObject);
    procedure Oramentos2Click(Sender: TObject);
    procedure FaturarPedidos2Click(Sender: TObject);
    procedure CancelarFaturas2Click(Sender: TObject);
    procedure Licitaes2Click(Sender: TObject);
    procedure ProduoemLote2Click(Sender: TObject);
    procedure PedidosemXML2Click(Sender: TObject);
    procedure SintticoeOrdenado3Click(Sender: TObject);
    procedure SintticoparaClientes1Click(Sender: TObject);
    procedure SintticoporFormadePagamento1Click(Sender: TObject);
    procedure SintticoporClientes2Click(Sender: TObject);
    procedure AnalticoporClientes1Click(Sender: TObject);
    procedure SintticocommdiadeDias2Click(Sender: TObject);
    procedure RelatriodeProdutoseClientes1Click(Sender: TObject);
    procedure ProdutosVendidosporTributao2Click(Sender: TObject);
    procedure RelatriodeDanfesdeVendas1Click(Sender: TObject);
    procedure RelatriodeCarregamentos1Click(Sender: TObject);
    procedure AnalticoporClienteseProdutos2Click(Sender: TObject);
    procedure AnalticodeProdutosVendidos1Click(Sender: TObject);
    procedure Analticocom1Click(Sender: TObject);
    procedure ComissoporProduto2Click(Sender: TObject);
    procedure Vendasfaturadas2Click(Sender: TObject);
    procedure Oramentos3Click(Sender: TObject);
    procedure VendasporRegistro1Click(Sender: TObject);
    procedure ComissoporContasReceber1Click(Sender: TObject);
    procedure PedidodeCompra1Click(Sender: TObject);
    procedure SolicitaodeCompra2Click(Sender: TObject);
    procedure EntradasdeTerceiros2Click(Sender: TObject);
    procedure EntradascomEmissaoPrpria1Click(Sender: TObject);
    procedure CancelarFatura1Click(Sender: TObject);
    procedure AnalticoporFornecedor1Click(Sender: TObject);
    procedure AnalticodeprodutosComprados1Click(Sender: TObject);
    procedure SintticoporfornecedorcomObservaes1Click(Sender: TObject);
    procedure Comisso1Click(Sender: TObject);
    procedure Sinttico2Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure RelatriodeDanfesdeEntrada1Click(Sender: TObject);
    procedure CadastrarProdutos1Click(Sender: TObject);
    procedure Cadastrargrupo1Click(Sender: TObject);
    procedure CadastrarSubGrupo1Click(Sender: TObject);
    procedure CstCsosn1Click(Sender: TObject);
    procedure Unidades1Click(Sender: TObject);
    procedure ConversoUnitria1Click(Sender: TObject);
    procedure CFOP2Click(Sender: TObject);
    procedure aTUALIZARvALORES1Click(Sender: TObject);
    procedure EntradasparaCorreo1Click(Sender: TObject);
    procedure SadasparaCorreo1Click(Sender: TObject);
    procedure FichaTcnica3Click(Sender: TObject);
    procedure LanamentosdeEntrada2Click(Sender: TObject);
    procedure LanamentosdeSada1Click(Sender: TObject);
    procedure Etiquetas2Click(Sender: TObject);
    procedure CurvaABC2Click(Sender: TObject);
    procedure InventriodeEstoque2Click(Sender: TObject);
    procedure ListadeProdutosporTributao2Click(Sender: TObject);
    procedure Posiodeestoque2Click(Sender: TObject);
    procedure ListagemdeEstoque1Click(Sender: TObject);
    procedure ListadeClassificaodeProdutos1Click(Sender: TObject);
    procedure Listadepreos2Click(Sender: TObject);
    procedure ListadepreosComplesta1Click(Sender: TObject);
    procedure ListadepreoscomValoresdeAtacado2Click(Sender: TObject);
    procedure ListadePreosemDuasColunas1Click(Sender: TObject);
    procedure ListadeVendas2Click(Sender: TObject);
    procedure Listade1Click(Sender: TObject);
    procedure ListaparaContagem2Click(Sender: TObject);
    procedure Loteevencimento2Click(Sender: TObject);
    procedure EstoqueCalculado2Click(Sender: TObject);
    procedure EstoqueMnimo1Click(Sender: TObject);
    procedure EsportarparaXML1Click(Sender: TObject);
    procedure GradeeProduto1Click(Sender: TObject);
    procedure ProdutosComercializadosporMs1Click(Sender: TObject);
    procedure DevoluesdeVenda1Click(Sender: TObject);
    procedure IconAtualizarClick(Sender: TObject);
    procedure Expedio1Click(Sender: TObject);
    procedure ValidaodeversodoSistema1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure IconAjudaClick(Sender: TObject);
    procedure ContagemdeEstoque1Click(Sender: TObject);
    procedure OutrasEntradascomEmissoPrpria1Click(Sender: TObject);
    procedure NFCereferenciada1Click(Sender: TObject);
    procedure Arquivosparacontabilidade1Click(Sender: TObject);
    procedure ListadeProdutosClassificados1Click(Sender: TObject);
    procedure PosiodeEstoque4casas1Click(Sender: TObject);
    procedure VerificarservicepackeNetframework1Click(Sender: TObject);
  private
    { Private declarations }
    //Procedure Utilizada para trazer as primeiras informações sobre o usuário informado
    Procedure BuscaUsu;
    //Função principal que inicialza todas as variáveis principais
    Function InicializaVariaveis: Boolean;
  public
    { Public declarations }
    xBaseIcmsSt, xVlrIcmsSt: Real;
    //Variaveis de controle para menu de atalho
    MouseDownSpot : TPoint;
    Capturing : bool;
    xLancConta: Boolean;//Edmar - 09/06/2014 - Controla o lançamento de conta (linha 2641 - UPadraoContas)
    //Variaveis para carta de correcao eletronica
    XCCe_Cod_pedido: Integer;
    XCCe_TipoGerador: String;
    xValorPis, xValorConfins, xValorIss: real;
    xReterIss, xServico: string;
    //Variavel para controlar o numero da versão a estar disponivel em novidades
    XVersaoNovidades: String;
    //variável para controlar se será permitido marcar ou não serviços
    XMark: String;
    //váriavel utilizada para armazenar o código da ordem de serviço
    XCod_Ordem:String;
    //Variaveis para controle do menu de atalhos
    XEstadoOrigem, XEstadoDestino: String; //Determina o estado de origem (da empresa usuaria) e estado de destino (cliente)
    XTributaEmpresa, XTributaCliente: String; // Define o tipo de tributação da empresa usuaria e do cliente de destino da mercadoria (SIMPLES OU NORMAL)
    XDecreto, XProtocolo: String;// Define protocolo ou decreto a ser usado
    XCST: String; //Código de cst quando produto de substituição
    XEncontrouST: Boolean; // seo sistema enCONTROU PRODUTOS COM ST
    SelectedForm:Boolean;//Armazena se o form em trabalho clicou no botão selecionar
    LancCaixa: Boolean;//Verifica se o lançamento em caixa foi bem sucedido
    LancAutConta: Boolean;//Verifica se o lançamento automático em contas a pagar ou a receber foi bem sucedido
    LancChEnt: Boolean;//Verifica se o lançamento automático em Cheques recebidos foi bem sucedido
    LancChSai: Boolean;//Verifica se o lançamento automático em Cheques emitidos foi bem sucedido
    TIPOREL: String;//Armazena qual o tipo de relatório a ser impresso nos formu;ário de relatório
    XNotaEntrada: Boolean;//Determina que o tipo de impressão é de nota fiscal de entrada
    XRemessaGarantia: Boolean;//determina se o tipo do pedido é remessa para garantia
    XSimplesRemessa: Boolean;//determina se o tipo do pedido é remessa para garantia
    XOutrosFisc: Boolean;//Paulo 19/07/2010:determina se o tipo é outros para saida
    XOutrosEnt: Boolean;//Paulo 20/07/2010:determina se o tipo é outros para entrada
    XOutrosEntPropria: Boolean;//Paulo 20/07/2010:determina se o tipo é outros para entrada de emissão propria
    XComplementacao: Boolean;//Paulo 29/11/2010:Destermina se é NFe de complementação
    XNfceReferenciada: Boolean; //
    XLancAutoDev: Boolean;//Controla lançamento automatica para devolução
    XDevolucao: Boolean;//determina se o tipo do pedido é devolução de compra
    TITULOREL: String;//Armazena o titulo do formulario padrao de relatório do momento
    TIPOAUX: String;//Utilizado de forma global
    XCOD_USUARIO, XCOD_PLANO: INTEGER; //ARMAZENARÁ VALORES PARA SEREM USADOS NO PLANO DE ACESSO DE USUARIOS
    XTRILL: String;//Conterá o endereço da base de dados ativa
    XSERVER: String;//Conterá o servidor da base de dados ativa
    XCOUNRECORD: Integer;//Utilizado para contar o numero de registros contendo bases válidas
    XBCPROD, XBCSERV: Real;//Passa para o formulario de comissionados as respectivas bases de cáculo
	 XIMPFISC: Boolean;//Controla se o meio fiscal foi impresso ou não
    XFRETETRANSP:Real;//armazena o valor do frete para o pedido
  	 XFRETETRANSPCOMPOEM: Boolean;//Determina se o valor do frete compoem ou nao o valor da nota
    //Variaveis para rodape de relatorios
    XRODAPE1, XRODAPE2: String;
    XSystem: String;//Variavel q determina qual o tipo do sistema a ser executado
    XCOD_LANCAIXA: Integer;// Variavel q define o codigo do abcaixa para lançamento
    XNOMEIMPPADRAO: String;// Armazena nome da impressora padrao
    XTIPOBOLTO: String;//Armazena temporariamente se o boleto eh registrado ou não
    XAPLICAMULTA: String;//Armazena temporariamente se o boleto recebe a multa ou não
    XVALORMULTA: Double;//Armazena temporariamente o valor da multa do boleto em porcentagem
    XVALORJUROS: Double;//Aramazena temporariamente o valor dos juros do boleto em porcentagem
    XDTREF: String;//Armazena de forma temporaria para auxilio a data de referencia
    XDtFiltro01, XDtFiltro02: TDate;//Variaveis de datas para filtro
    XFiltroDataItensRetorno: Boolean;

    XPedFatura: String;//armazena o numero de todos os pedidos que estão sendo faturados para gerar NFe
    XCodCLiFatura: String;//armazena o codigo do cliente para gerar NFe quando for direto do faturar
    XCodCliente: String;//armazena o codigo do fornecedor para utilizar no crédito de devoluções
    XValorFatura: Real;//armazena o valor da fatura para calculo de descontas em notas fiscais

    XNFe: Integer; //controla se está sendo feito NFe ou notas fiscais impressas, para poder utilizar o mesmo recalcfiscal
    XNFORD: Integer; // controla para que não afete a reimpressão de nf ordem
    XTipoFiscal: String;

    XLinkRss: String; //- 26/01/2009: link do rss ativo na tela
    XContRss: Integer; //- 26/01/2009: controla qual rss aberto
    XContLink: Integer; //- 26/01/2009: controla qual site esta aberto
    XXMLRss: TXMLDocument;//- 26/01/2009: xml do rss aberto
    XListaXml: IXMLNode;//- 26/01/2009: lista de itens xml do rss
    XListaLink: TStringList; //- 26/01/2009: lista de sites rss
    xfiscalcompra: String;
    XCodSlave: Integer;
    XPreSel:Boolean; //16/02/2009: true se estiver com codigo pre-selecionado
    XFieldPesqPreSel:String; //16/02/2009: armazena o field para pesquisar
    XCodPesqPresSel:String; //16/02/2009: armazena o valor (codigo) p/ pesquisar no field
            // Ex: qnd o usuario consulta um pedido de venda e um cliente ja estiver selecionado
            //e o ele clickar no botao para selecionar cliente setar variavel XPreSel como true e passar os parametros para pesquisa
            // para q no activate do form cliente ja faça a busca e deixe o foco sobre o cliente ja selecionado anteriormente
            // objetivo: agilidade nas consultas
    XGRIDZEBRADA, XCONSULTARAPIDA :Boolean; //28/04/2009: variaveis contralar se dever ser exibido a grid zebrada e as consultar rapidas configuradas em loja (ver activate)
    xCtrThread: Boolean; //Variavel para controla que as thread sejam executadas uma unica vez
    xSqlRelCtaLanc: WideString;//Edmar - 18/06/2014 - Armazena o sql que será usado para gerar o relatorio gráfico de lançamentos
    xCodPlncta: Integer;
    AbrirBrowser:Boolean;
    ArquivoBrowser:String;    // controle de web browser
    XTipoCupom:String;//Paulo 02/08/2010: Retorna tipo de cupom usado em caixa
    XTipoRel:String;//Paulo 09/08/2011: Para controle de relatórios na tela de RelLancContas
    XCaixaLogado:String; //Paulo 06/02/2012: Armazena o caixa logado
    XTipoEmissaoNFe, xSerieNfe:String;//Paulo 13/02/2012: Armazena o tipo de emissão para gerar xml por periodo
    XChaveNFe: WideString;//Jõnatas 24/07/2013 - Armazena a chave da NFe
    XAliquota:Real;
    //Edmar - 12/03/2015 - Armazena dados do cliente e do numero da nfe de devolução
    XCOD_CLIENTE_DEVOLUCAO, XNUM_FISCAL_DEVOLUCAO, XCOD_PK_DEVOLVIDO, XTABELA_DEVOLUCAO: String;
    //Edmar - 19/12/2014 - Variavel de controle para verificar se o usuário está gerando relatorio de banco e plano de conta
    //caso seja verdadeiro, deixa selecionar planos de conta totalizadores
    XGerandoRelBancoPlncta: Boolean;
    xImportando: Boolean;
    XCodEstoqueImportacao: String;
    //Edmar - 19/08/2015 - armazena a PK da ordem para ser usada em CtaReceber para vincular a ordem com a conta
    //isso é necessário pois nem todas as ordens usam o mesmo data source
    XCodOrdemVinculo: Integer;
    //Transfere Arquivo Compactado para Ftp
    Function TransfFTP: Boolean;
	 procedure TrimAppMemorySize;    
    Procedure AcordaKerberos;//Procedure utilizada para verificar se o prazo de demonstração do sistema espirrou
    //procedure q automatiza abertura de gaveta
    Procedure Abregaveta;
    //Imprime ao cabeçalho os dados do cliente
    Function ImpComprovanteFaturaCabecalhoCliente : Boolean;

    procedure IniciaRss; //26/01/2009: seta os camandos iniciais para iniciar o rss
    function AbreXml(link:String):boolean;
    procedure MostraRSS;
    function resourceExists(url:string):boolean; //26/01/2009: verifica se link existe
    procedure LimpaPreSelecao; //16/02/2009:  limpa as variaveis XPreSel:= false,XFieldPesqPreSel = '',XCodPesqPresSel=''
    //Função para retornar se existem cartões a serem baixados e efetuar a baixa automatica
    function RetornaCartaoBaixa : Integer;

    //MAURO - Funções para Recibo do FaturaContas
    procedure Imprime(RVRel: TRVSystem; Linha: Double; Coluna:Double; Texto:String; Fonte:String; TamFonte:Integer; CorFonte:TColor; Tipo:Boolean);
    procedure PrintImage(RVSystem:TRvSystem; Row,Col,ImageWidth,ImageHeight: Double; Bitmap: TBitmap; FileName:String='');
    Function ImpRelCabecalhoPadrao: Boolean;
    Function ImpComprovanteFatura : boolean;
    Function ImpComprovanteFaturaDados : Boolean;
    Function ImpComprovanteFaturaCabecalho : Boolean;
    Function ImpComprovanteFaturaRodape : Boolean;

    //Edmar - 11/04/2014 - Funções utilizadas para gerar modelo de fatura versão 2 (a pedido da Baroni)
    Function ImpComprovanteFaturaModelo2 : boolean;
    Function ImpComprovanteFaturaDadosModelo2 : Boolean;
    Function ImpComprovanteFaturaCabecalhoModelo2 : Boolean;
    Function ImpComprovanteFaturaRodapeModelo2 : Boolean;

  end;

var
  FMenu: TFMenu;
  //P/ Movimentar O painel
  	XAtual, YAtual, XMov, YMov: Integer;
   Mov:Boolean;
   XTamanhoPainel: Integer;
   XTopPainel:Integer;
   XLOGOFFINI:INTEGER; //Caso valor igual a 1 logoff inicial já foi dado
   XFMENS: Integer;//Controla se FMensagem esta em show ou nao
   //VARIAVEIS P/ O RELATORIO DE RESUMO DE CONTAS POR MES
   XRELRECEBER, XRELPAGAR: Real;
	XNOMECIDADE: String;//Armazena nome da cidade cadastrada em Empresa p/ mostrar no rodape do menu
   XCOMISSAO: Integer; //controla a visibilidade de painel no fatualizavalores
   XTIPO_CONTA: String;    // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   X060, X00: Integer; //Define qual o codigo da cst 060 e qual a cst do 00
   Xemail, Xpassword, Xhostsmtp, Xhostpop3, Xporta:String;

	//MAURO impReciboFatura
   XLinImp, XColImp, XNumPagina, XLinAddvia2: Smallint;//Variaveis para controle de impressao de comprovante
   xImpReciboCliente,xImpReciboEndereco,xImpReciboValor,xImpReciboValorExt,xImpReciboHistorico: String;
	xImpReciboParcela, xImpReciboCpfCnpj, xImpReciboCidade, xImpReciboUf : String;
   xTipo, xTipoPapel, xTituloRelatorio : String;
   XNovaPagina : Boolean;
implementation

uses USPlash, ULogoff,AlxMessage, UDMMacs, Alxor32, Alxorprn, UGerenciador, Ubanco,
  UDesligar, UCadRegiao, UCadEstado, UCadCidade, UCadLoja, UCadEmpresa,
  UCtaCor, UCadCST, UCadGrupo, UCadMoeda, UCadSubgrupo, UCadUnidade,
  UFormPag, UConsPlncta, UCadCFOP, UCadCaixa, UCliente, UFORNECEDOR,
  UFuncionario, UCadUsuario, UProduto, UPedVenda, UPedCompra, ULancSai,
  ULancEnt, UDMFinanc, UAbCaixa, UDMCONTA, UDMCaixa, ULancCaixa, UFechaCaixa,
  UCtasPagar, UCtaReceber, URelCaixa, URelEstoque, URelCtaPR, UMovBanco,
  URelPadraoped, URelEtiqEstoque, ULanCHSaida, ULanCHEntr, UServico,
  UOrdem, UDMEntrada, URelMovBanco, URelChequeEmit, URelOrdem,
  URelComissao, URelComissPedC, UConvertUnid, UEcf,
  UGeraSintegra, UCadReducaoZ, UDMFiscal, UEstrutResult, UOrcamento,
  UMensagem, UConsProduto, URelData, URelMovCaixa, UExpImp, ULogoff1,
  UDMGEOGRAFIA, UConfigLoja, URelCtasSetor, URelGraficoLine, UDMEstoque,
  ULicita, URelGraficoLine03, UBaixaMult, UFaturaPedidos, UResumoMov,
  UConfigEtqProd02, UClienteCob, UDmBanco, URelMovBancoPeriodo,
  URelClienteData, UCtasReceberLote, UCadEquipe, URelEquipamento,
  URelEquipe, UPrecoServ, UCadEquipamento, UAtualizaValores, URelProdCli,
  URelComissaoProd, UOrdemMec, Math, URelMecanica, UDMSaida,
  UDMExporta, UDMPessoa, UDmServ, UExpImpXML,
  UAuditoria, UFechaConta, UPeriodoFiscal, UImpSintegra, UNovidades, UnitDeclaracoes, URelPeriodoFiscal,
  UProducaoLote, UOrdemDesp, UExportaDominio, UOrdemPet, UFreqVendas,
  UAtualizaBanco, USenha, UOrcamentoMac, UOrdemGrafica, UCartao,
  UOrdemLoca, UOrdemRetifica, UMDO, UOrdemManutencao, USped, UOrcamento3,
  USolicitarCompra, UOrdemProduc, URelGeralMovimentacoesFinanceiras,
  URelProdutos,URLMON, UOrdemAsistenciaTecnica, UExpVenda, Validacoes,
  UAjuda, UContagemEstoque;

{$R *.DFM}


//Transfere Arquivo Compactado para Ftp
Function TFMenu.TransfFTP: Boolean;
var
  DirecDownFtp,DirecUpFtp,ArquivoFtp,LineFtp,dirDowFTP,dirUpFTP,RepliFtp,Line2Ftp,NameFtp: String;
Begin
   Result:=True;
   try
       IFTP.Disconnect();

       IFTP.Host	  := 'ftp.mzrsistemas.com';
       IFTP.Port     := 21;
       IFTP.Username := 'mzrsistemas01';
       IFTP.Password := 'ecg879bd';
       IFTP.Passive  := True;
       
       IFTP.Connect;
   except
       On E : Exception do
       begin
           MessageDlg('Não foi possível conectar ao FTP. '+#13+#10+E.Message, mtWarning, [mbOK], 0);
           Result:=False;
           Exit;
       end;
   end;

	try
       IFTP.Get('downloads/Aplicativos/Suporte-MZR.exe', 'Suporte-MZR.exe', true, false);
       IFTP.Quit;
   except
       On E : Exception do
       begin
           MessageDlg('Não foi possível realizar o download '+#13+#10+E.Message, mtWarning, [mbOK], 0);
           Result:=False;
       end;
	end;
End;

procedure TFMenu.TrimAppMemorySize;
var
	MainHandle : THandle;
begin
	try
		MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
		SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
		CloseHandle(MainHandle) ;
	except
	end;
	Application.ProcessMessages;
end;
//Função para retornar se existem cartões a serem baixados e efetuar a baixa automatica
function TFMenu.RetornaCartaoBaixa : Integer;
Begin
     try
        DMFINANC.TAlx.Close;
        DMFINANC.TAlx.SQL.Clear;
        DMFINANC.TAlx.SQL.Add('Select count(VWPARCR.COD_PARCELACR) as QUANTIDADE from vwparcr');
        DMFINANC.TAlx.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr = parcelacr.cod_parcelacr');
        DMFINANC.TAlx.SQL.Add(' WHERE (COD_LOJA=:CODIGO_LOJA) AND ((parcelacr.fech<>'+#39+'S'+#39+') or (parcelacr.fech = null))');
        DMFINANC.TAlx.SQL.Add(' AND ((PARCELACR.cobranca =  '+#39+'C - Cartão'+#39+') OR (PARCELACR.cobranca =  '+#39+'D - Cartão'+#39+'))');
        DMFINANC.TAlx.SQL.Add(' AND (parcelacr.dtvenc<=:DATA_VENC)');
        DMFINANC.TAlx.ParamByName('CODIGO_LOJA').AsString:= FMenu.LCODLOJA.Caption;
        DMFINANC.TAlx.ParamByName('DATA_VENC').AsDate:= date() ;
        DMFINANC.TAlx.Open;
        if (DMFINANC.TAlx.FieldByName('QUANTIDADE').AsInteger > 0)
        Then Begin
           if MessageDlg('Existem '+DMFINANC.TALx.FieldByName('QUANTIDADE').AsString+' números de contas no cartão a serem baixadas! Deseja baixar agora?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               //efetua controle de acesso
               If ControlAccess('CAD_CR', 'M')=True
               Then Begin
                    //marca variavel para saber que contas serão feitas
                    FMenu.XTIPOBOLTO:='LANCACARTÃO';
                    AbrirForm(TFCtaReceber, FCtaReceber, 0);
               End;
        End;
     except

     end;
End;

Procedure TFMenu.abreGaveta;
Begin
	Try
      { If DMMACS.TLoja.FieldByName('USAGAVETA').AsString='1'
       Then Begin
			Case Wind_AcionaGaveta of
				0: MessageDlg('Erro de comunicação com a impressora.', mtWarning, [mbOK], 0);
				-2: MessageDlg('Parâmentro de comunicação com a impressora inválido.', mtWarning, [mbOK], 0);
				-4: MessageDlg('O Arquivo de inicialização da impressora Elgin não foi encontrado.', mtWarning, [mbOK], 0);
				-5: MessageDlg('Erro ao abrir porta de comunicação', mtWarning, [mbOK], 0);
				-10: MessageDlg('Impressora off line ou desligada', mtWarning, [mbOK], 0);
				-50: MessageDlg('Número de Série inválido', mtWarning, [mbOK], 0);
			End;
       End; }
   Except
		MessageDlg('Erro ao comunicar com e impressora Elgin', mtWarning, [mbOK], 0);
   End;
End;

//Procedure Utilizada para trazer as primeiras informações sobre o usuário informado
Procedure TFMenu.BuscaUsu;
Begin
	Try
	    FMenu.EdUsuario.Text:='SYSTEM LORD';
	    FMenu.LCODUSUARIO.Caption:='111522';
  		TamLabel:=Length(Fmenu.EdUsuario.Text);
  		FMenu.LRUsuario.Caption:=FMenu.EdUsuario.Text;

   	DMMacs.tEmpAc.Close;
       DMMacs.tEmpAc.SQL.Clear;
       DMMacs.tEmpAc.SQL.Add('SELECT * FROM EMPRESA');
       DMMacs.tEmpAc. Open;
     	If Not DMMACS.TEmpAc.IsEmpty
     	Then Begin
       	DMMACS.TEmpAc.First;
	        LEmpresa.Caption:=DMMacs.TEmpAc.FieldByName('FANTASIA').AsString;
	        LCODEMPRESA.Caption:=DMMacs.TEmpAc.FieldByName('COD_EMPRESA').AsString;

          	DMMacs.TLojaAc.Close;
          	DMMacs.TLojaAc.SQL.Clear;
          	DMMacs.TLojaAc.SQL.Add('SELECT loja.cod_loja, loja.cod_empresa, loja.descricao, lojacesso.cod_usuario FROM LOJA LEFT JOIN lojacesso ON loja.cod_loja = lojacesso.cod_loja ');
          	DMMacs.TLojaAc.SQL.Add(' WHERE (loja.cod_empresa=:CODEMPRESA)');
          	DMMacs.TLojaAc.ParamByName('CODEMPRESA').AsString:=DMMACS.TEmpAc.FieldByName('cod_empresa').AsString;
          	DMMacs.TLojaAc.Open;

       	If not DMMACS.TLojaAc.IsEmpty
       	Then Begin
           	DMMACS.TLojaAc.First;
             	EdLoja.Text:=DMMacs.TLojaAc.FieldByName('DESCRICAO').AsString;
	            LCODLOJA.Caption:=DMMacs.TLojaAc.FieldByName('COD_LOJA').AsString;

	     		DMCAIXA.TCaixaPAcess.Close;
	     		DMCAIXA.TCaixaPAcess.SQL.Clear;
	     		DMCAIXA.TCaixaPAcess.SQL.Add('select * FROM caixa left join caixausu ON caixausu.cod_caixa = caixa.cod_caixa WHERE (caixa.cod_loja=:CODLOJA)');
	     		DMCAIXA.TCaixaPAcess.ParamByName('CODLOJA').AsInteger:=DMMacs.TLojaAc.FieldByName('cod_loja').AsInteger;
	     		DMCAIXA.TCaixaPAcess.Open;
           	If Not DMCAIXA.TCaixaPAcess.IsEmpty
           	Then Begin
	            	EdCaixa.Text:=DMCAIXA.TCaixaPAcess.FieldByName('DESCRICAO').AsString;
	            	LCODCAIXA.Caption:=DMCAIXA.TCaixaPAcess.FieldByName('COD_CAIXA').AsString;
                   EdCaixa.Text:=DMCAIXA.TCaixaPAcess.FieldByName('DESCRICAO').AsString;
           	End;
       	End;
     	End;
	Except
	End;
End;

//Procedure utilizada para verificar se o prazo de demonstração do sistema espirrou
Procedure TFMenu.AcordaKerberos;
Var
  YearAtu, MonthAtu, DayAtu:word;
  YearCad, MonthCad, DayCad:word;
Begin
  	//extratifica data Atual
  	DecodeDate(Date(), YearAtu, MonthAtu, DayAtu);
	//O Sitema de Proteção somente deve entrear em vigor a partir de Setembro de 2005
   If (YearAtu>2007) Or ((YearAtu=2007) And (MonthAtu>=9))
   Then Begin
		//O Sitema devera efetuar o controle após um ano de utilização do sistema, para isso irá tomar como base o Primeiro cliente cadastrado
		DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('select cliente.data_cad from cliente where cliente.data_cad is not null order by cliente.data_cad');
       DMMACS.TALX.Open;
       //Posissiona no 1º registro para receber o mais antigo
       DMMACS.TALX.First;
  		//Tenta extratifica data do cadastro
       Try
  			DecodeDate(DMMACS.TALX.FieldByName('data_cad').AsDateTime, YearCad, MonthCad, DayCad);
		Except
       End;
       // se a diferença entre os anos for de 1 ou mais é efetuado o bloqueio
       If StrToInt(DifDias(DMMACS.TALX.FieldByName('data_cad').AsDateTime, Date(), 0))>=365
       Then Begin
			//Para não ocorrer engarrafamento de pedidos de liberação o Sistema somente irá pedir liberação no mesmo dia de cadastro ou superior
			If (DayAtu>=DayCad) Or (MonthAtu>MonthCad)
           Then begin
           	If Not FileExists('C:\WINDOWS\wink.dat') Then
//               	TKerb.Active:=True;
           End;
       End;
   End;
End;

procedure TFMenu.SpeedButton1Click(Sender: TObject);
begin
    Close;            
end;

procedure TFMenu.IniciaData;
VAR
  Data: Integer;
  Mes:String;
  Year, Month, Day:word;
begin
   FMenu.Update;
   FMenu.Refresh;
	Try
    Data := DayOfWeek(Date());{Volta um número inteiro que representa o dia da semana}
    DecodeDate(Date(), Year, Month, Day);
    Case Month of
      1:Mes:='Janeiro';
      2:Mes:='Fevereiro';
      3:Mes:='Março';
      4:Mes:='Abril';
      5:Mes:='Maio';
      6:Mes:='Junho';
      7:Mes:='Julho';
      8:Mes:='Agosto';
      9:Mes:='Setembro';
      10:Mes:='Outubro';
      11:Mes:='Novembro';
      12:Mes:='Dezembro';
    End;
    Case data of
      1:EdData.Text := (XNOMECIDADE+'Domingo, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      2:EdData.Text := (XNOMECIDADE+'Segunda-feira, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      3:EdData.Text := (XNOMECIDADE+'Terça-feira, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      4:EdData.Text := (XNOMECIDADE+'Quarta-feira, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      5:EdData.Text := (XNOMECIDADE+'Quinta-feira, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      6:EdData.Text := (XNOMECIDADE+'Sexta-feira, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
      7:EdData.Text := (XNOMECIDADE+'Sábado, '+ IntToStr(Day)+' de ' + mes+' de '+IntToStr(year)+' ');
    End;
   Except
   End;
end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TRY
         Try
             DesconectBanco;
         Except
         End;
         //application.free;    //se o objeto application estiver disponível;
         exitprocess(0);    //por último, pra finalizar.
         Close;
     EXCEPT
         Application.Terminate;
     end;
     Try
        Action:= caFree;
     Except
     End;
end;

procedure TFMenu.SpeedButton3Click(Sender: TObject);
begin
    AbrirForm(TFDesliga, FDesliga, 0);
end;

procedure TFMenu.PAnelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	//Para movimentar o anel do painel
    	XAtual:=X;
        YAtual:=Y;
        Mov:=True;
end;

procedure TFMenu.PAnelMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	Mov:=False;
end;

procedure TFMenu.SpeedButton2Click(Sender: TObject);
begin
    Application.Minimize;
end;

procedure TFMenu.BtnMonitorUpClick(Sender: TObject);
begin
    DMCAIXA.VerifAbCaixa;
end;

procedure TFMenu.BtnMonitorDownClick(Sender: TObject);
begin
    DMCAIXA.VerifAbCaixa;
end;

procedure TFMenu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //Abre tela de logoff
    If Key=VK_F12
    Then Begin
        If Mensagem('Logoff de Usuário', 'Tem certeza que deseja efetuar logoff de ' +FMenu.EdUsuario.Text, '', 2, 3, false, 'c')=2 Then
            AbrirForm(TFLogoff1, FLogoff1, 1);
    End;
    //Abre tela de Resumo de Movimentações
    If Key=VK_F11
    Then Begin
       if (FMenu.EdUsuario.Text<>'SYSTEM LORD')
       then begin
           FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'LOGIN', FMenu.EdUsuario.Text, '');
           If (DMMacs.TUsuario.FieldByName('REVRESMOV').AsString='1') Then
               AbrirForm(TFResumoMov, FResumoMov, 1)
           Else
				MessageDlg('Você solicitou visualização da tela de movimento de caixa, mas para visualizar é necessário que o usuário obtenha liberação no seu cadastro. Para maiores informações verifique junto ao suporte.', mtWarning, [mbOK], 0);
       end
       else begin
           AbrirForm(TFResumoMov, FResumoMov, 1);
       end;
    End;
    //Abre Tela de Consultar Produto
    If Key=VK_F10
    Then Begin
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
   	DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx.Open;
		AbrirForm(TFConsProduto, FConsProduto, 1);
    End;
    //Paulo 04/07/2011: Abre tela de Frequancia de Vendas
    If Key=VK_F9
    Then Begin
         AbrirForm(TFFreqVenda, FFreqVenda, 1);
    End;
end;

procedure TFMenu.Agencia1Click(Sender: TObject);
begin
{***    AbrirForm(TFCadAgencia, FCadAgencia, 0);***}
end;

procedure TFMenu.CtaCorrente1Click(Sender: TObject);
begin
{***    AbrirForm(TFCadCtaCor, FCadCtaCor, 0);***}
end;

procedure TFMenu.Usurio1Click(Sender: TObject);
begin
{***    AbrirForm(TFCadUsuario, FCadUsuario, 0);***}
end;

procedure TFMenu.PedidodeVenda1Click(Sender: TObject);
begin
	 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;
    If DMMACS.TLoja.FieldByName('VENDSALDONEG').AsString='2'
    Then Begin
		MessageDlg('Este Módulo esta bloqueado no sistema!', mtWarning, [mbOK], 0);
       Exit;
	 End;

    FMenu.XDevolucao:=False;
    FMenu.XRemessaGarantia:=False;
    FMenu.XSimplesRemessa:=False;
    FMenu.XOutrosFisc:=false;
    FMenu.XOutrosEnt:=False;
    FMenu.XComplementacao:=False;
    FMenu.XOutrosEntPropria := False;
    AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
end;

procedure TFMenu.PedidodeCompras1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADPEDCOMP', 'M')=False Then
  		Exit;
    FMenu.XOutrosEnt:=False;
    FMenu.XOutrosFisc:=False;
    FMenu.XOutrosEntPropria := False;
    AbrirForm(TFPEDCOMPRA, FPEDCOMPRA, 0);
end;

procedure TFMenu.Moeda2Click(Sender: TObject);
begin
    AbrirForm(TFCadMoeda, FCadMoeda, 0);
end;

procedure TFMenu.CotaodeValores1Click(Sender: TObject);
begin
{***    AbrirForm(TFCotaMoeda, FCotaMoeda, 0);***}
end;

procedure TFMenu.SpeedButton4Click(Sender: TObject);
begin
    WinHelp(0, 'TELA.HLP' , HELP_CONTEXT, 3);
end;

procedure TFMenu.IconChequeClick(Sender: TObject);
begin
    AbrirForm(TFLanCHEntr, FLanCHEntr, 0);
end;

procedure TFMenu.FormShow(Sender: TObject);
begin
     FSplash.Free;
     FSplash:=nil;
End;

procedure TFMenu.IBSQLMonitor1SQL(EventText: String; EventTime: TDateTime);
begin
     FGerenciador.MSQL.lines.add('');
     FGerenciador.MSQL.lines.add('*** '+FormatDateTime('HH:nn', EventTime)+' ***');
     FGerenciador.mSQL.lines.Add(EventText);
end;

//Função principal que inicialza todas as variáveis principais
Function TFMenu.InicializaVariaveis: Boolean;
Begin
   Try
       ///////////////
       //CUSTOMIZAÇÕES
       ///////////////
       EdData.Width:=PRodape.Width-500;

       /////////////////
       // INICIALIZAÇÕES
       /////////////////
       XFMENS:=0;
       XTipoRel:='';//Paulo 09/08/2011: Para controle de relatórios na tela de RelLancContas
       FMenu.XPedFatura:=''; //limpa variável para q não afete geração de notas fiscais direto dos pedidos
       FMenu.XCodCLiFatura:=''; //limpa variável para q não afete geração de notas fiscais direto dos pedidos
       FMenu.XValorFatura:=0; //limpa variavel para que não afete a geração de notas fiscas direto dos pedidos
       FMenu.XNFe:=0; //limpa variavel para que não afete impressão de notas fiscais normais
       FMenu.XDTREF:='18/07/1980';//variavel temporaria para auxiliar nas datas de referencia. Manter este valor!
       //Busca para datas de filtro a data atual
       XDtFiltro01:=Date();
       XDtFiltro02:=Date();
       XFiltroDataItensRetorno:=True;
       XCOD_LANCAIXA:=-1;
       XPopUp:=false;

       //////////////////
	    //LOGIN DE USUARIO
       //////////////////
       If FileExists(ExtractFilePath(Application.EXEName)+'OpenDoor.DAT')
       Then Begin
           BuscaUsu;
           XPopUp:=True;
    	    XLOGOFFINI:=1;
       End;
       If XLOGOFFINI=0 Then
           AbrirForm(TFLOGOFF1, FLOGOFF1, 0);
       XLOGOFFINI:=1;

       ///////////////////////////////////////////////////////////////////////////////////////////////
       //DJ  16/03/2010: Procedimento para atualizacao do banco de dados que esta presente em Alxor32
       ///////////////////////////////////////////////////////////////////////////////////////////////
	    if(DMMACS.TLoja.FieldByName('ATUALIZABANCOAUT').AsString = '1')
       Then Begin
           if(MessageBox(0, 'Deseja confirmar a atualização dos dados?', 'Atenção!', MB_ICONQUESTION or MB_YESNO)=ID_YES)
           Then Begin
               Panel3.Visible := True;
               Panel3.BringToFront;
     		    TransferenciaFTP;
               Panel3.Visible := False;
               Panel3.SendToBack;
           End;
       End;

       ////////////////////////
	    //CUSTOMIZAÇÃO DE GRIDS
       ////////////////////////
       // Verifica na configuração de loja se as grids devem ser pintadas em linhas zebradas
       If DMMACS.TLoja.FieldByName('ATIVAGRID').AsString = '1' Then
           FMenu.XGRIDZEBRADA := True
       Else
           FMenu.XGRIDZEBRADA := False;
       // Verifica e Marca se a consulta rápida deve ser usado no grid (vai pesquisando enquanto digita)
       If DMMACS.TLoja.FieldByName('ATIVACONSULTARAP').AsString = '1' Then
           FMenu.XCONSULTARAPIDA := True
       Else
           FMenu.XCONSULTARAPIDA := False;

       //Seleciona o tipo de impressora e documento fiscal presentes no caixa
       Dados_Caixa(FMenu.LCODCAIXA.Caption);
       //Paulo 02/08/2010: Retorna o tipo de cupom usado em caixa
       FMenu.XTipoCupom:=DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString;
       Application.Title:=FMenu.EdLoja.Text;
       LNomeLoja.Caption:='';
       LNomeLoja.Left:=PAtalhosAdicionais.Left-10;
		LNomeLoja.Caption:=FMenu.EdLoja.Text;
       FiltraTabela(DMMACS.TALX, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
       If FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TALX.FieldByName('COD_CIDADE').AsString, '') Then
           XNOMECIDADE:=' '+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString+'. '
       Else
           XNOMECIDADE:='';

       //Verifik Banco aberto
       DMBANCO.VerifAbBanco;

       //Verifica se as contas feitas em cartão devem ser baixadas automaticamente
       if(DMMACS.TLoja.FieldByName('BAIXAAUTOMATICACARTAO').AsInteger = 1) Then
           FMenu.RetornaCartaoBaixa;
       //Mostra Data no componente adequado
       FMenu.IniciaData;
   Except

   End;
End;
procedure TFMenu.FormActivate(Sender: TObject);
begin
   //Chama função para inicializar variáveis
   InicializaVariaveis;

   //Paulo 04/04/2012: Para usuário mestre mostra o menu de atualiza Base de Dados
   If LCODUSUARIO.Caption = '111522' then
       AtualizaodoBancodeDados1.Visible:=True
   else
       AtualizaodoBancodeDados1.Visible:=False;

   //Atualiza a tela do menu
   FMenu.Update;
   FMenu.Refresh;

   Try
     GetPadraoImp;
   Except
   End;

   //Edmar - 05/11/2015 - Inicia aplicativo ThreadZion
   if FileExists(ExtractFilePath(Application.ExeName)+'ThreadZion1122.exe') then
   begin
     //Edmar - 23/07/2014 - Se o programa de backup não estiver executando
     if not VerificaProcesso('ThreadZion1122.exe') then
       WinExec('ThreadZion1122.exe', SW_SHOW);//Edmar - 24/07/2014 - Executa o backup
   end
   else begin
     MessageDlg('Não foi encontrado o aplicativo "ThreadZion1122" junto ao sistema. Comunique este fato ao suporte.', mtWarning, [mbOK], 0);
     FMenu.Close;
   end;
   
   if AplicaBloqueio=False then
   begin
   	Close;
       Application.Terminate;
   end;
end;

procedure TFMenu.Sadas1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ACERTESTOQUE', 'M')=False Then
  		Exit;

    AbrirForm(TFLancSai, FLancSai, 0);
end;

procedure TFMenu.Entradas1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ACERTESTOQUE', 'M')=False Then
  		Exit;

    AbrirForm(TFLancEnt, FLancEnt, 0);
end;

procedure TFMenu.CadastrarProduto1Click(Sender: TObject);
begin
    AbrirForm(TFPRODUTO, FPRODUTO, 0);
end;

procedure TFMenu.Grupo1Click(Sender: TObject);
begin
    FMENU.TIPOAUX:='PRODUTO';
    AbrirForm(TFCadGrupo, FCadGrupo, 0);
end;

procedure TFMenu.SubGrupo1Click(Sender: TObject);
begin
    FMENU.TIPOAUX:='PRODUTO';
    AbrirForm(TFCadSubGrupo, FCadSubGrupo, 0);
end;

procedure TFMenu.CST1Click(Sender: TObject);
begin
	AbrirForm(TFCadCst, FCadCst, 1)
end;

procedure TFMenu.CFOP1Click(Sender: TObject);
begin
    AbrirForm(TFCadCFOP, FCadCFOP, 0);
end;

procedure TFMenu.PosiodeEstoque1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='POSEST';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Fornecedores1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='RELCTAPFOR';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.Mensal1Click(Sender: TObject);
begin
{	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='RELCTAPMENS';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);}
   
   ShowMessage('     RELATÓRIO DESATIVADO DO SISTEMA!     ');

end;

procedure TFMenu.Mensal2Click(Sender: TObject);
begin
	ShowMessage('RELATÓRIO DESATIVADO PARA CORREÇÃO!');
   {
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARCORR';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);}
end;

procedure TFMenu.LanamentosdeEntrada1Click(Sender: TObject);
begin
   if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'SEMENTES'
   then begin
      FMenu.TIPOREL:='LANCENTLOTE';
   end
   else begin
      FMenu.TIPOREL:='LANCENT';
   end;                   

   AbrirForm(TFRelEstoque, FRelEstoque, 0);

end;

procedure TFMenu.LanamentodeSada1Click(Sender: TObject);
begin
   if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'SEMENTES'
   then begin
      FMenu.TIPOREL:='LANCSAILOTE';
   end
   else begin
      FMenu.TIPOREL:='LANCSAI';
   end;

   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.CdBarra1Click(Sender: TObject);
begin
   FMenu.TIPOREL:='ETBARRA';
   AbrirForm(TFRELETIQESTOQUE, FRELETIQESTOQUE, 0);
end;

procedure TFMenu.Clientes3Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDCLIANALIT';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.Emitidos1Click(Sender: TObject);
begin
//   ShowMessage('MÓDULO EM DESENVOLVIMENTO');
//   EXIT;


end;



procedure TFMenu.ChequesEmitidos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='CHEQUEEMIT';
   AbrirForm(TFRelChequeEmit, FRelChequeEmit, 0);
end;
procedure TFMenu.f1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RELPEDFORANALIT';
   FMenu.TIPOAUX:='COMPRA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.Produtos2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='FRFPRODCOMPRA_CLASS_PROD';
   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Comissionadonico1Click(Sender: TObject);
begin
	  MessageDlg('RELATÓRIO DESATIVADO DO SISTEMA!', mtWarning, [mbOK], 0);
{	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;} {
	FMenu.TIPOREL:='COMISSIMP';
	AbrirForm(TFRelComissao, FRelComissao, 0);}
end;

procedure TFMenu.ComisMltiplo1Click(Sender: TObject);
begin
	  MessageDlg('RELATÓRIO DESATIVADO DO SISTEMA!', mtWarning, [mbOK], 0);
{	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;}
{	FMenu.TIPOREL:='COMISMULTVEN';
	AbrirForm(TFRelComissao, FRelComissao, 0);}
end;

procedure TFMenu.MltiplosComis1Click(Sender: TObject);
begin
{	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;}

       Mensagem('   A T E N Ç Ã O   ','Relatório Desativado.','',1,1,false,'A');
       Exit;

//	FMenu.TIPOREL:='COMISMULTORD';
//	AbrirForm(TFRelComissao, FRelComissao, 0);
end;

procedure TFMenu.VendasporFormadePagamento1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDFORMPAG';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.Comisso3Click(Sender: TObject);
begin

{	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;}
   FMenu.TIPOAUX:='RELCOMISPEDC';
	AbrirForm(TFRelComisPedC, FRelComisPedC, 0);
end;

procedure TFMenu.ListadePreos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LISTPREC';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ConversodeUnidades1Click(Sender: TObject);
begin
    AbrirForm(TFConvertUnid, FConvertUnid, 0);
end;

procedure TFMenu.Novo2Click(Sender: TObject);
begin
	FMenu.TIPOREL:='COMISSPV';
	AbrirForm(TFRelComissao, FRelComissao, 0);
end;

procedure TFMenu.Sintticoeordenado1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RELPEDFORSINTORD';
   FMenu.TIPOAUX:='COMPRA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.SintticoeOrdenado2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RELPEDFORSINTORD';
   FMenu.TIPOAUX:='COMPRA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;


procedure TFMenu.ECF2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If LCODUSUARIO.Caption<>'111522'
   Then Begin
   	MessageDlg('Apenas o usuário System Lord tem acesso a esta tela', mtWarning, [mbOK], 0);
  		Exit;
   End;

    AbrirForm(TFECF, FECF, 0);
end;

procedure TFMenu.EstruturadeResultados1Click(Sender: TObject);
begin
{	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;}


end;

procedure TFMenu.Analticocomitensdevolvidos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDCLIANALITDEV';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.Oramentos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;
   {If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE' Then
       AbrirForm(TFOrcamentoMac , FOrcamentoMac, 0)
   Else
		AbrirForm(TFORCAMENTO, FORCAMENTO, 0);}
    If DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString='MECANICA' Then
    	AbrirForm(TFORCAMENTOMAC, FORCAMENTOMAC, 0)
    Else
		if DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString = 'INDUSTRIA' Then
       	AbrirForm(TFOrcamento3, FOrcamento3, 0)
       else
    		AbrirForm(TFORCAMENTO, FORCAMENTO, 0);       
end;

procedure TFMenu.Mensagem1Click(Sender: TObject);
begin
    AbrirForm(TFMensagem, FMensagem, 0);
end;

procedure TFMenu.ListadeVendas1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   MessageDlg('DESATIVADO!', mtWarning, [mbOK], 0);
   exit;
   {
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LISTVEND';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
    }
end;

procedure TFMenu.ListadePreosparaClientes1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LSTESTPEDCLI';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLSaldo.Caption:=FormatFloat('0.00', DMMACS.TMP.fieldbyname('VLR2').AsCurrency-DMMACS.TMP.fieldbyname('VLR1').AsCurrency);
	XRELRECEBER:=XRELRECEBER+DMMACS.TMP.fieldbyname('VLR2').AsCurrency;
   XRELPAGAR:=XRELPAGAR+DMMACS.TMP.fieldbyname('VLR1').AsCurrency;
   Case DMMACS.TMP.fieldbyname('INT1').AsInteger OF
   	1: QRLMes.Caption:='Janeiro';
   	2: QRLMes.Caption:='Fevereiro';
   	3: QRLMes.Caption:='Março';
   	4: QRLMes.Caption:='Abril';
   	5: QRLMes.Caption:='Maio';
   	6: QRLMes.Caption:='Junho';
   	7: QRLMes.Caption:='Julho';
   	8: QRLMes.Caption:='Agosto';
   	9: QRLMes.Caption:='Setembro';
   	10: QRLMes.Caption:='Outubro';
   	11: QRLMes.Caption:='Novembro';
   	12: QRLMes.Caption:='Dezembro';
   End;
   QRLMes.Caption:=QRLMes.Caption+'/'+DMMACS.TMP.fieldbyname('DESC2').AsString;
end;

procedure TFMenu.QRResumoBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
	XRELRECEBER:=0;
   XRELPAGAR:=0;
end;

procedure TFMenu.QRBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QrlVlrPagar.Caption:=FormatFloat('0.00', XRELPAGAR);
   QrLVlrReceber.Caption:=FormatFloat('0.00', XRELRECEBER);
   QRLTotalSaldo.Caption:=FormatFloat('0.00', XRELRECEBER-XRELPAGAR);
end;

procedure TFMenu.ComProdutoseSimilares1Click(Sender: TObject);
begin
	 FMenu.TIPOREL:='ENTXSAI';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.PorMseProdutos1Click(Sender: TObject);
begin
	 FMenu.TIPOREL:='ENTXSAIMENS';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.LoteeVencimento1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='IMPRELLOTE';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ExportarDados1Click(Sender: TObject);
begin

   //MessageDlg('DESATIVADO TEMPORARIAMENTE', mtWarning, [mbOK], 0);
end;

procedure TFMenu.ListaComDescriodeCupom1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LSTESTPEDCLIDESCCUPOM';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.VendasFaturadas1Click(Sender: TObject);
begin
   FMenu.TIPOAUX:='RELCOMISPEDV';
	AbrirForm(TFRelComisPedC, FRelComisPedC, 0);
end;

procedure TFMenu.IconServicosClick(Sender: TObject);
begin
//	MenuServico.Popup(IconServico.Left+IconServico.Width-30, IconServico02.Top+FMenu.Top-5)
end;

procedure TFMenu.CurvaABC1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='CURVAABC';
    AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFMenu.InventriodeEstoque1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELINVENTEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='INVEST';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Licitaes1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;
    AbrirForm(TFLICITA, FLICITA, 0);
end;

procedure TFMenu.EstoqueCalculado1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='ESTCALC';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.PagamentoscomPrevises1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='RELCTAP_PREVI';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);

end;

procedure TFMenu.Listaparacontagem1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO        	
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LISTACONTAGEM';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.EstoqueMximoMnimo1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='ESTMAXMIN';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Sinttico1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RELPEDFORDEVSINTORD';
   FMenu.TIPOAUX:='COMPRA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.Produtos3Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='FRFPRODCOMPRA_DEV_CLASS_PROD';
   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Oramento1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELORC';
   FMenu.TIPOAUX:='ORCAMENTO';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.Licitao1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELLICITA';
   FMenu.TIPOAUX:='LICITACAO';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.Faturar2Click(Sender: TObject);
begin
    FMenu.TIPOAUX:='FATORDEM';
    AbrirForm(TFFaturaPedidos, FFaturaPedidos, 0);
end;

procedure TFMenu.ExportarparaXML1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:=' ';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Clientes4Click(Sender: TObject);
begin
    FMenu.TIPOREL:='';
    AbrirForm(TFCliente, FCliente, 0);
end;

procedure TFMenu.ListadePreosCompleta1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LISTPRECCOMP';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Clientes5Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
//   If ControlAccess('RCTARECEBER', 'M')=False Then
//  		Exit;

end;

procedure TFMenu.Fornecedores2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
//   If ControlAccess('RCTARECEBER', 'M')=False Then

end;

procedure TFMenu.ListadePreos2Colunas1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LSTPRECO2COLUNAS';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.AnalticoporClienteseProdutos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RELPEDCLIPROANALIT';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.SintticoporClientes1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDCLISINTORD';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.Sintticocommdiadedias1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDCLISINTDIAS';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.RelatriodeCarregamento1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='FRFPRODVENDA_TotalProd';
   AbrirForm(TFRelEstoque, FRelEstoque, 0);

end;

procedure TFMenu.ESTE1Click(Sender: TObject);
begin
	FMenu.TIPOREL:='ANALITICOCLI';
	AbrirForm(TFRelOrdem, FRelOrdem, 0);
end;

procedure TFMenu.AnalticoporProdutoseClientes1Click(Sender: TObject);
begin
   Mensagem('   A T E N Ç Ã O   ','Relatório Desativado.','',1,1,false,'A');
   Exit;
end;

procedure TFMenu.AtualizaValores1Click(Sender: TObject);
begin
    AbrirForm(TFAtualizaValores, FAtualizaValores, 0);
end;

procedure TFMenu.RelProdCliClick(Sender: TObject);
begin
   // relatorio de produtos e clientes
   AbrirForm(TFRelProdCli,FRelProdCli,0);
end;

procedure TFMenu.ComissaoporProdutos1Click(Sender: TObject);
begin
   XCOMISSAO:= 1;
 	AbrirForm(TFAtualizaValores, FAtualizaValores, 0);
end;

procedure TFMenu.ComissoporProduto1Click(Sender: TObject);
begin
   AbrirForm(TFRelComissaoProd, FRelComissaoProd, 0);
end;

procedure TFMenu.ReceitaseDespesas1Click(Sender: TObject);
begin
	FMenu.TIPOREL:='RELRECDESP';
	AbrirForm(TFRelCaixa, FRelCaixa, 0);
end;

function TFMenu.resourceExists(url:string):boolean;
var h:tidhttp;
begin
  result:=false;
  try
    h:=TIdHttp.Create(nil);
    try
      h.Head(url);
      result:=h.response.ResponseCode=200;
    finally
      freeandnil(h);
    end;
  except
  end;
end;

procedure TFMenu.IniciaRss;
begin
{    If VerificaNet = 0
    then begin
//        LbRss.Visible := False;
//        TRss.Enabled := False;
        Exit;
    end;


    XListaLink := TStringList.Create;
    XListaLink.Add('http://www.orionsoftware.com.br/rss/feed.xml');
    XListaLink.Add('http://g1.globo.com/Rss2/0,,AS0-9356,00.xml');
    XListaLink.Add('http://br.invertia.com/rss/economia/pt-br/feedrss.xml');
    //XListaLink.Add('http://g1.globo.com/Rss2/0,,AS0-5598,00.xml');
    XLinkRss := '';
    XContRss := 0;
    XContLink := 0;

    if AbreXml(XListaLink.Strings[XContLink])
    then begin
        MostraRSS;
        LbRss.Visible := true;
        TRss.Interval := 10000;
        TRss.Enabled := True;
    end
    else begin
        LbRss.Visible := False;
        TRss.Enabled := False;
    end;
 }
end;

procedure TFMenu.MostraRSS;
begin
{    if (XListaXml.ChildNodes.Nodes['title'] <> nil) and (XListaXml.ChildNodes.Nodes['link'] <> nil)
    then begin
        lbRss.ShowHint := True;
        lbRss.Caption := XListaXml.ChildNodes.Nodes['title'].Text;
        XLinkRss := XListaXml.ChildNodes.Nodes['link'].text;
        if XListaXml.ChildNodes.Nodes['description'] <> nil
        then
            lbRss.Hint := XListaXml.ChildNodes.Nodes['description'].Text
        else
            lbRss.Hint := XLinkRss;
    end
    else begin
       lbRss.ShowHint := False;
       lbRss.Caption := '';
       XLinkRss := '';
    end;
    lbRss.Repaint;}
end;

function TFMenu.AbreXml(link:String):boolean;
begin
{    // Cria a variável baseada no TXMLDocument
    XXMLRss := TXMLDocument.Create(self
    );

    try
      // Le conteúdo do arquivo XML informado
      // if not resourceExists(link)
      // then begin
      //     Result := False;
      //    Exit;
      // end;

       XXMLRss.LoadFromFile(link);

       if XXMLRss.ChildNodes.Nodes['rss'].AttributeNodes['version'].Text <> '2.0'
       then begin
           Result := False;
           Exit;
       end;

       XListaXml := XXMLRss.ChildNodes.Nodes['rss'].ChildNodes.Nodes['channel'].ChildNodes.Nodes['item'];

       XListaXml.ChildNodes.First;

       Result := True;


       Except

           Result := False;
       end;
       }
end;
procedure TFMenu.TRssTimer(Sender: TObject);
begin
end;

// click em info RSS label
procedure TFMenu.lbRss01Click(Sender: TObject);
begin
{
    FMenu.AbrirBrowser := True;
    FMenu.ArquivoBrowser := XLinkRss;

    AbrirForm(TFWebBrowser, FWebBrowser, 0);

    FMenu.AbrirBrowser := False;
    //ShellExecute(Handle, 'open', PAnsiChar(XLinkRss), '', '', 1);
    }
end;

procedure TFMenu.BitBtn2Click(Sender: TObject);
Var
incs_estadual, num_nf:String;
XBaseIcmsSubTrib:Real;
begin

   ///////////////////////////////
   //GERA REGISTRO 53 PARA ORDENS
   //////////////////////////////
	//Executa a seleção dos registros no banco de dados
	DMFiscal.TAlx.Close;
   DMFiscal.TAlx.UnPrepare;
   DMFiscal.TAlx.SQL.Clear;
	DMFiscal.TAlx.SQL.Add(' select * from DOCFISORD ');
	DMFiscal.TAlx.SQL.Add(' join ORDEM on DOCFISORD.COD_ORDEM=ORDEM.COD_ORDEM ');
	DMFiscal.TAlx.SQL.Add(' WHERE ');
	DMFiscal.TAlx.SQL.Add(' (DTEMISSAO BETWEEN :data_ini AND :data_fim) AND ((ORDEM.STATUS = ''FECHADO'') OR (ORDEM.STATUS = ''CANCELADO'')) AND (');
  	DMFiscal.TAlx.SQL.Add('(SERIE = ''01'') OR (SERIE = ''1'')  OR ');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''1A'') OR');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''03'') OR');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''06'') OR');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''22''))');
	DMFiscal.TAlx.SQL.Add(' ORDER BY DTEMISSAO, NUMDOCFIS');
   DMFiscal.TAlx.ParamByName('data_ini').asdatetime := StrToDate('01/09/2009');
   DMFiscal.TAlx.ParamByName('data_fim').asdatetime := StrToDate('30/09/2009');
   DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.Open;

   	While not DMFiscal.TAlx.EOF do
    	begin
   		//SELECIONA O CLIENTE
       	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMFiscal.TAlx.FieldByName('COD_CLIENTE').AsString, '');
       	FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '');
       	If FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '')=False Then
              FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '');
       	FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString, '');
       	FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');
       	FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMFiscal.TAlx.FieldByName('COD_CFOP').AsString, '');
           If DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString = '' Then
               incs_estadual := 'ISENTO'
           Else
               incs_estadual := DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString;

           num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
           num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF

           If DMFiscal.TAlx.FieldByName('BASCALSUBS').AsCurrency<=0 Then
               XBaseIcmsSubTrib:=DMFiscal.TAlx.FieldByName('vlrtotprod').AsCurrency
           Else
               XBaseIcmsSubTrib:=DMFiscal.TAlx.FieldByName('BASCALSUBS').AsCurrency;

           //Registro 53 - Registro de Total de Documento Fiscal quanto a substituição tributária

     		If not DMFiscal.TAlx.EOF then
       		DMFiscal.TAlx.Next;

      End;
      MessageDlg('TERMINOU ORDEM', mtWarning, [mbOK], 0);
end;

procedure TFMenu.LimpaPreSelecao;
begin
    XPreSel := False;
    XFieldPesqPreSel := '';
    XCodPesqPresSel := '';
end;

procedure TFMenu.abeladePreos1Click(Sender: TObject);
begin
      AbrirForm(TFPrecoServ , FPrecoServ, 0);
end;

procedure TFMenu.PedidosemXML1Click(Sender: TObject);
begin
    AbrirForm(TFExpImpXML , FExpImpXML, 0);
end;


procedure TFMenu.Button2Click(Sender: TObject);
Var
   xcodtmp: integer;
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
       DMExporta.DBExporta.DatabaseName := DMMACS.TLoja.FieldByName('EXPORT_OS').AsString;
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

   Except
		MessageDlg('Banco não conectado', mtWarning, [mbOK], 0);
   End;

   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' DELETE FROM tmp ');
   DMMACS.TMP.ExecSQL;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('select * from tmp');
   DMMACS.TMP.Open;
   xcodtmp:=1;

   DMPESSOA.TPessoa.Close;
   DMPESSOA.TPessoa.SQL.Clear;
   DMPESSOA.TPessoa.SQL.Add('select * from pessoa');
   DMPESSOA.TPessoa.Open;
   DMPESSOA.TPessoa.First;

   While NOT DMPESSOA.TPessoa.Eof do
   Begin

       DMEXPORTA.TPessoa.Close;
       DMEXPORTA.TPessoa.SQL.Clear;
       DMEXPORTA.TPessoa.SQL.Add('Select * from pessoa where pessoa.cpfcnpj=:cpf');
       DMEXPORTA.TPessoa.ParamByName('cpf').AsString:=DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString;
       DMEXPORTA.TPessoa.Open;
       If not DMEXPORTA.TPessoa.IsEmpty
       Then Begin
       	If DMEXPORTA.TPessoa.FieldByName('NOME').AsString<>DMPESSOA.TPessoa.FieldByName('NOME').AsString
           Then Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=xcodtmp;
               DMMACS.TMP.FieldByName('DESC2').AsString:=DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString;
               DMMACS.TMP.FieldByName('DESC1').AsString:=DMPESSOA.TPessoa.FieldByName('NOME').AsString;
               DMMACS.TMP.FieldByName('DESC3').AsString:=DMEXPORTA.TPessoa.FieldByName('NOME').AsString;
               DMMACS.TMP.Post;
               xcodtmp:=xcodtmp+1;
           End;
       End;
       DMPESSOA.TPessoa.Next;
   End;

   DMMACS.Transaction.CommitRetaining;
	MessageDlg('CONCLUIDO', mtWarning, [mbOK], 0);
end;

procedure TFMenu.Button3Click(Sender: TObject);
begin
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' DELETE FROM tmp ');
   DMMACS.TMP.ExecSQL;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('select * from tmp');
   DMMACS.TMP.Open;
   xcodtmp:=1;

   DMPESSOA.TPessoa.Close;
   DMPESSOA.TPessoa.SQL.Clear;
   DMPESSOA.TPessoa.SQL.Add('select * from pessoa');
   DMPESSOA.TPessoa.Open;
   DMPESSOA.TPessoa.First;

   While NOT DMPESSOA.TPessoa.Eof do
   Begin
       DMPESSOA.TALX.Close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add('Select COUNT(PESSOA.CPFCNPJ) AS QTD from pessoa where pessoa.cpfcnpj=:cpf');
       DMPESSOA.TALX.ParamByName('cpf').AsString:=DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString;
       DMPESSOA.TALX.Open;
       If  DMPESSOA.TALX.FieldByName('QTD').AsInteger>1
       Then Begin
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=xcodtmp;
           DMMACS.TMP.FieldByName('DESC2').AsString:=DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString;
           DMMACS.TMP.FieldByName('DESC1').AsString:=DMPESSOA.TPessoa.FieldByName('NOME').AsString;
           DMMACS.TMP.Post;
           XCodTmp:=XCodTmp+1;
       End
       Else Begin
       	If (DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString<>'') and (DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString<>null)
           Then Begin
           	Try
                   If (ValidaCGC(DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString)=false) and (ValidCPF(DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString)=false)
                   Then Begin
                       DMMACS.TMP.Insert;
                       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=xcodtmp;
                       DMMACS.TMP.FieldByName('DESC2').AsString:=DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString;
                       DMMACS.TMP.FieldByName('DESC1').AsString:=DMPESSOA.TPessoa.FieldByName('NOME').AsString;
                       DMMACS.TMP.FieldByName('DESC3').AsString:='CPF';
                       DMMACS.TMP.Post;
                       XCodTmp:=XCodTmp+1;
                   End;
               Except
                       DMMACS.TMP.Insert;
                       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=xcodtmp;
                       DMMACS.TMP.FieldByName('DESC2').AsString:=DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString;
                       DMMACS.TMP.FieldByName('DESC1').AsString:=DMPESSOA.TPessoa.FieldByName('NOME').AsString;
                       DMMACS.TMP.FieldByName('DESC3').AsString:='CPF';
                       DMMACS.TMP.Post;
                       XCodTmp:=XCodTmp+1;
				end;
           end;
       End;
       DMPESSOA.TPessoa.Next;
   End;
   DMMACS.Transaction.CommitRetaining;
	MessageDlg('CONCLUIDO', mtWarning, [mbOK], 0);
end;

procedure TFMenu.Button4Click(Sender: TObject);
Var
	XContAlteracoes: Integer;
begin
	If MessageDlg('Reatribuir cst aos produtos vendidos?', mtWarning, [mbyes, mbno], 0)=mryes
   Then Begin
       DMServ.TPOrd.Close;
       DMServ.TPOrd.SQL.clear;
       DMServ.TPOrd.SQL.Add(' Select * from itprodord ');
       DMServ.TPOrd.Open;

       XContAlteracoes:=1;
       DMServ.TPOrd.First;
       While not DMServ.TPOrd.Eof do
       Begin
           DMServ.Alx.Close;
           DMServ.Alx.SQL.Clear;
           DMServ.Alx.SQL.Add(' select cst.cod_cst from estoque ');
           DMServ.Alx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           DMServ.Alx.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');
           DMServ.Alx.SQL.Add(' where estoque.cod_estoque=:codigo');
           DMServ.Alx.ParamByName('codigo').AsInteger:=DMServ.TPOrd.FieldByName('cod_estoque').AsInteger;
           DMServ.Alx.Open;
           If not DMServ.Alx.IsEmpty
           Then Begin
               DMServ.TPOrd.Edit;
               DMServ.TPOrd.FieldByName('COD_CST').AsInteger:=DMServ.Alx.FieldByName('COD_CST').AsInteger;
               DMServ.TPOrd.Post;
               XContAlteracoes:=XContAlteracoes+1;
           End;
           DMServ.TPOrd.Next;
       End;
       DMServ.IBT.CommitRetaining;
       MessageDlg('operação efetuada com sucesso!'+#13+'Registros: '+IntToStr(XContAlteracoes), mtWarning, [mbOK], 0);
   End
end;

procedure TFMenu.Button5Click(Sender: TObject);
begin

	//VERIFICA O ESTADO DE ORIGEM
   XEstadoOrigem:='';
   DMGEOGRAFIA.WCidade.close;
   DMGEOGRAFIA.WCidade.SQL.Clear;
   DMGEOGRAFIA.WCidade.SQL.Add(' select * from vwcidade where vwcidade.cod_cidade=:codigo ');
   DMGEOGRAFIA.WCidade.ParamByName('codigo').AsInteger:=DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsInteger;
   DMGEOGRAFIA.WCidade.Open;
   If not DMGEOGRAFIA.WCidade.IsEmpty Then
       XEstadoOrigem:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString;


	//seleciona todas as ordens de serviço
   DMMACS.TALX.close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select * from vwordem order by vwordem.cod_ordem');
   DMMACS.TALX.Open;

   DMMACS.TALX.First;
   while not DMMACS.TALX.eof do
   begin
       XEstadoDestino:='';
   	//seleciona cliente da ordem
       DMPESSOA.WCliente.Close;
       DMPESSOA.WCliente.SQL.Clear;
       DMPESSOA.WCliente.SQL.Add('select * from vwcliente where vwcliente.cod_cliente=:codigo ');
       DMPESSOA.WCliente.ParamByName('codigo').AsInteger:=DMMACS.TALX.fieldbyname('cod_cliente').AsInteger;
       DMPESSOA.WCliente.Open;
       If not DMPESSOA.WCliente.IsEmpty
       Then Begin
           DMGEOGRAFIA.WCidade.close;
           DMGEOGRAFIA.WCidade.SQL.Clear;
           DMGEOGRAFIA.WCidade.SQL.Add(' select * from vwcidade where vwcidade.cod_cidade=:codigo ');
           DMGEOGRAFIA.WCidade.ParamByName('codigo').AsInteger:=DMPESSOA.WCliente.FieldByName('COD_CIDADE').AsInteger;
           DMGEOGRAFIA.WCidade.Open;
           If not DMGEOGRAFIA.WCidade.IsEmpty Then
               XEstadoDestino:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString;
       End;

       //***********************
       //** PRODUTOS DE ORDEM **
       //***********************
       
       //seleciona todos os itens de de produto da ordem
       DMServ.TPOrd.close;
       DMServ.TPOrd.SQL.Clear;
       DMServ.TPOrd.SQL.Add(' select * from itprodord WHERE itprodord.cod_ordem=:CODIGO');
       DMServ.TPOrd.ParamByName('CODIGO').AsInteger:=DMMACS.TALX.FieldByName('COD_ORDEM').AsInteger;
       DMServ.TPOrd.Open;

       DMServ.TPOrd.First;
       While not DMServ.TPOrd.Eof do
       Begin//01
       	If DMServ.TPOrd.FieldByName('COD_ITPRODORD').AsInteger=122903 Then
				DMServ.TPOrd.FieldByName('COD_ITPRODORD').AsInteger;           

       	//seleciona cst do item para verificar
           DMESTOQUE.TCST.Close;
           DMESTOQUE.TCST.SQL.Clear;
           DMESTOQUE.TCST.SQL.Add(' select * from cst where cst.cod_cst=:codigo ');
           Dmestoque.TCST.ParamByName('codigo').AsInteger:=DMServ.TPOrd.FieldByName('cod_cst').AsInteger;
           DMESTOQUE.TCST.Open;
           If not DMESTOQUE.TCST.IsEmpty
           Then Begin//02
           	If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString='1'
               Then Begin
               	//seleciona as cfops de substituição
                   //SELECIONA SUBSTITUIÇÃO PARA DENTRO DO ESTADO
                   DMESTOQUE.Alx1.Close;
                   DMESTOQUE.Alx1.SQL.Clear;
                   DMESTOQUE.Alx1.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
                   DMESTOQUE.Alx1.ParamByName('codigo').AsString:=DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsString;
                   DMESTOQUE.Alx1.Open;

                   //SELECIONA SUBSTITUIÇÃO PARA FORA DO ESTADO
                   DMESTOQUE.Alx2.Close;
                   DMESTOQUE.Alx2.SQL.Clear;
                   DMESTOQUE.Alx2.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
                   DMESTOQUE.Alx2.ParamByName('codigo').AsString:=DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsString;
                   DMESTOQUE.Alx2.Open;

               	//O item vendido é de substituição tributária e deve ser inserido cfop de substituição
                   If XEstadoOrigem<>XEstadoDestino
                   Then Begin
                   	//INSERE CFOP PARA FORA DO ESTADO
                       Try
                           DMServ.TPOrd.Edit;
                           DMServ.TPOrd.FieldByName('CFOP').AsString:=DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
                           DMServ.TPOrd.Post;
                       Except
                       	MessageDlg('Erro ao atualizar: '+DMServ.TPOrd.FieldByName('cod_itprodord').AsString, mtWarning, [mbOK], 0);
                       End;
                   End
                   Else Begin
                   	//INSERE CFOP PARA DENTRO DO ESTADO
                       Try
                           DMServ.TPOrd.Edit;
                           DMServ.TPOrd.FieldByName('CFOP').AsString:=DMESTOQUE.Alx1.FieldByName('CFOP').AsString;
                           DMServ.TPOrd.Post;
                       Except
                       	MessageDlg('Erro ao atualizar: '+DMServ.TPOrd.FieldByName('cod_itprodord').AsString, mtWarning, [mbOK], 0);
                       End;
                   End;

               End
               Else Begin
               	//seleciona as cfops de não substituição
                   //SELECIONA SUBSTITUIÇÃO PARA DENTRO DO ESTADO
                   DMESTOQUE.Alx1.Close;
                   DMESTOQUE.Alx1.SQL.Clear;
                   DMESTOQUE.Alx1.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
                   DMESTOQUE.Alx1.ParamByName('codigo').AsString:=DMMACS.TLoja.FieldByName('CFOPINTERNO').AsString;
                   DMESTOQUE.Alx1.Open;

                   //SELECIONA SUBSTITUIÇÃO PARA FORA DO ESTADO
                   DMESTOQUE.Alx2.Close;
                   DMESTOQUE.Alx2.SQL.Clear;
                   DMESTOQUE.Alx2.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
                   DMESTOQUE.Alx2.ParamByName('codigo').AsString:=DMMACS.TLoja.FieldByName('CFOPEXTERNO').AsString;
                   DMESTOQUE.Alx2.Open;

               	//O item vendido é de substituição tributária e deve ser inserido cfop de substituição
                   If XEstadoOrigem<>XEstadoDestino
                   Then Begin
                   	//INSERE CFOP PARA FORA DO ESTADO
                       Try
                           DMServ.TPOrd.Edit;
                           DMServ.TPOrd.FieldByName('CFOP').AsString:=DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
                           DMServ.TPOrd.Post;
                       Except
                       	MessageDlg('Erro ao atualizar: '+DMServ.TPOrd.FieldByName('cod_itprodord').AsString, mtWarning, [mbOK], 0);
                       End;
                   End
                   Else Begin
                   	//INSERE CFOP PARA DENTRO DO ESTADO
                       Try
                           DMServ.TPOrd.Edit;
                           DMServ.TPOrd.FieldByName('CFOP').AsString:=DMESTOQUE.Alx1.FieldByName('CFOP').AsString;
                           DMServ.TPOrd.Post;
                       Except
                       	MessageDlg('Erro ao atualizar: '+DMServ.TPOrd.FieldByName('cod_itprodord').AsString, mtWarning, [mbOK], 0);
                       End;
                   End;
               End;
           End;//02
			DMServ.TPOrd.Next;
       End;//01

       //************************
       //** SERVICOS/ DESPESAS **
       //************************

       //seleciona todos os itens de de produto da ordem
       DMESTOQUE.TDesp.close;
       DMESTOQUE.TDesp.SQL.Clear;
       DMESTOQUE.TDesp.SQL.Add(' select * from despadic where (despadic.cod_GERADOR=:CODIGO) AND (despadic.GERADOR=''ORDEM'') ');
       DMESTOQUE.TDesp.ParamByName('CODIGO').AsInteger:=DMMACS.TALX.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.TDesp.Open;

       DMESTOQUE.TDesp.First;
       While not DMESTOQUE.TDesp.Eof do
       Begin
           //O item vendido é de substituição tributária e deve ser inserido cfop de substituição
           If XEstadoOrigem<>XEstadoDestino
           Then Begin
               //INSERE CFOP PARA FORA DO ESTADO
               Try
                   DMESTOQUE.TDesp.Edit;
                   DMESTOQUE.TDesp.FieldByName('CFOP').AsString:='6933';
                   DMESTOQUE.TDesp.Post;
               Except
               	MessageDlg('erro ao atualizar: '+DMESTOQUE.TDesp.FieldByName('cod_despadic').AsString, mtWarning, [mbOK], 0);
               End;
           End
           Else Begin
               //INSERE CFOP PARA DENTRO DO ESTADO
               Try
                   DMESTOQUE.TDesp.Edit;
                   DMESTOQUE.TDesp.FieldByName('CFOP').AsString:='5933';
                   DMESTOQUE.TDesp.Post;
               Except
               	MessageDlg('erro ao atualizar: '+DMESTOQUE.TDesp.FieldByName('cod_despadic').AsString, mtWarning, [mbOK], 0);
               End;
           End;
			DMESTOQUE.TDesp.Next;
       End;
       DMMACS.TALX.Next;
   End;
   If MessageDlg('Confirmar atualizações?', mtWarning, [mbYes, mbNo], 0)=mryes
   Then Begin
       DMServ.IBT.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;
   End;
end;

procedure TFMenu.Button6Click(Sender: TObject);
begin
   DMServ.TFiscOrd.Close;
   DMServ.TFiscOrd.SQL.Clear;
   DMServ.TFiscOrd.SQL.Add(' Select * from docfisord ');
   DMServ.TFiscOrd.Open;

   DMServ.TFiscOrd.First;
   While not DMServ.TFiscOrd.Eof do
   Begin

       DMServ.TPOrd.Close;
       DMServ.TPOrd.SQL.Clear;
       DMServ.TPOrd.SQL.Add(' select * from itprodord where itprodord.cod_ordem=:codigo ');
       //DMServ.TPOrd.ParamByName('codigo').AsInteger:=DMServ.
       DMServ.TFiscOrd.Next;
   End;
end;

procedure TFMenu.Button7Click(Sender: TObject);
Var
	XContAlteracoes: Integer;
begin

	///////////////////////////////////
	//atualiza cst para itens de venda
   ///////////////////////////////////

	If MessageDlg('Reatribuir cst aos produtos vendidos?', mtWarning, [mbyes, mbno], 0)=mryes
   Then Begin
       DMSAIDA.TItemPV.Close;
       DMSAIDA.TItemPV.SQL.clear;
       DMSAIDA.TItemPV.SQL.Add(' Select * from itenspedven ');
       DMSAIDA.TItemPV.Open;

       XContAlteracoes:=1;
       DMSAIDA.TItemPV.First;
       While not DMSAIDA.TItemPV.Eof do
       Begin
           DMServ.Alx.Close;
           DMServ.Alx.SQL.Clear;
           DMServ.Alx.SQL.Add(' select cst.cod_cst from estoque ');
           DMServ.Alx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           DMServ.Alx.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');
           DMServ.Alx.SQL.Add(' where estoque.cod_estoque=:codigo');
           DMServ.Alx.ParamByName('codigo').AsInteger:=DMSAIDA.TItemPV.FieldByName('cod_estoque').AsInteger;
           DMServ.Alx.Open;
           If not DMServ.Alx.IsEmpty
           Then Begin
               DMSAIDA.TItemPV.Edit;
               DMSAIDA.TItemPV.FieldByName('COD_CST').AsInteger:=DMServ.Alx.FieldByName('COD_CST').AsInteger;
               DMSAIDA.TItemPV.Post;
               XContAlteracoes:=XContAlteracoes+1;
           End;
           DMSAIDA.TItemPV.Next;
       End;
       DMSAIDA.IBT.CommitRetaining;
       MessageDlg('operação efetuada com sucesso! (CST) '+#13+'Registros: '+IntToStr(XContAlteracoes), mtWarning, [mbOK], 0);
   End ;

   //////////////////////////////////////
   // ATUALIZA CFOPS PARA ITENS DE VENDA
   /////////////////////////////////////

	//VERIFICA O ESTADO DE ORIGEM
   XEstadoOrigem:='';
   DMGEOGRAFIA.WCidade.close;
   DMGEOGRAFIA.WCidade.SQL.Clear;
   DMGEOGRAFIA.WCidade.SQL.Add(' select * from vwcidade where vwcidade.cod_cidade=:codigo ');
   DMGEOGRAFIA.WCidade.ParamByName('codigo').AsInteger:=DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsInteger;
   DMGEOGRAFIA.WCidade.Open;
   If not DMGEOGRAFIA.WCidade.IsEmpty Then
       XEstadoOrigem:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString;
	//seleciona todas as ordens de serviço
   DMMACS.TALX.close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select * from vwpedv order by vwpedv.cod_pedvenda');
   DMMACS.TALX.Open;

   DMMACS.TALX.First;
   while not DMMACS.TALX.eof do
   begin
       XEstadoDestino:='';
   	//seleciona cliente da ordem
       DMPESSOA.WCliente.Close;
       DMPESSOA.WCliente.SQL.Clear;
       DMPESSOA.WCliente.SQL.Add('select * from vwcliente where vwcliente.cod_cliente=:codigo ');
       DMPESSOA.WCliente.ParamByName('codigo').AsInteger:=DMMACS.TALX.fieldbyname('cod_cliente').AsInteger;
       DMPESSOA.WCliente.Open;
       If not DMPESSOA.WCliente.IsEmpty
       Then Begin
           DMGEOGRAFIA.WCidade.close;
           DMGEOGRAFIA.WCidade.SQL.Clear;
           DMGEOGRAFIA.WCidade.SQL.Add(' select * from vwcidade where vwcidade.cod_cidade=:codigo ');
           DMGEOGRAFIA.WCidade.ParamByName('codigo').AsInteger:=DMPESSOA.WCliente.FieldByName('COD_CIDADE').AsInteger;
           DMGEOGRAFIA.WCidade.Open;
           If not DMGEOGRAFIA.WCidade.IsEmpty Then
               XEstadoDestino:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString;
       End;

       //***********************
       //** PRODUTOS DE VENDA **
       //***********************
       
       //seleciona todos os itens de de produto da ordem
       DMSAIDA.TItemPV.close;
       DMSAIDA.TItemPV.SQL.Clear;
       DMSAIDA.TItemPV.SQL.Add(' select * from itenspedven WHERE itenspedven.cod_itenspedven=:CODIGO');
       DMSAIDA.TItemPV.ParamByName('CODIGO').AsInteger:=DMMACS.TALX.FieldByName('cod_pedvenda').AsInteger;
       DMSAIDA.TItemPV.Open;

       DMSAIDA.TItemPV.First;
       While not DMSAIDA.TItemPV.Eof do
       Begin//01
       	If DMSAIDA.TItemPV.FieldByName('cod_itenspedven').AsInteger=122903 Then
				DMSAIDA.TItemPV.FieldByName('cod_itenspedven').AsInteger;

       	//seleciona cst do item para verificar
           DMESTOQUE.TCST.Close;
           DMESTOQUE.TCST.SQL.Clear;
           DMESTOQUE.TCST.SQL.Add(' select * from cst where cst.cod_cst=:codigo ');
           Dmestoque.TCST.ParamByName('codigo').AsInteger:=DMSAIDA.TItemPV.FieldByName('cod_cst').AsInteger;
           DMESTOQUE.TCST.Open;
           If not DMESTOQUE.TCST.IsEmpty
           Then Begin//02
           	If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString='1'
               Then Begin
               	//seleciona as cfops de substituição
                   //SELECIONA SUBSTITUIÇÃO PARA DENTRO DO ESTADO
                   DMESTOQUE.Alx1.Close;
                   DMESTOQUE.Alx1.SQL.Clear;
                   DMESTOQUE.Alx1.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
                   DMESTOQUE.Alx1.ParamByName('codigo').AsString:=DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsString;
                   DMESTOQUE.Alx1.Open;

                   //SELECIONA SUBSTITUIÇÃO PARA FORA DO ESTADO
                   DMESTOQUE.Alx2.Close;
                   DMESTOQUE.Alx2.SQL.Clear;
                   DMESTOQUE.Alx2.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
                   DMESTOQUE.Alx2.ParamByName('codigo').AsString:=DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsString;
                   DMESTOQUE.Alx2.Open;

               	//O item vendido é de substituição tributária e deve ser inserido cfop de substituição
                   If XEstadoOrigem<>XEstadoDestino
                   Then Begin
                   	//INSERE CFOP PARA FORA DO ESTADO
                       Try
                           DMSAIDA.TItemPV.Edit;
                           DMSAIDA.TItemPV.FieldByName('CFOP').AsString:=DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
                           DMSAIDA.TItemPV.Post;
                       Except
                       	MessageDlg('Erro ao atualizar: '+DMSAIDA.TItemPV.FieldByName('cod_itenspedven').AsString, mtWarning, [mbOK], 0);
                       End;
                   End
                   Else Begin
                   	//INSERE CFOP PARA DENTRO DO ESTADO
                       Try
                           DMServ.TPOrd.Edit;
                           DMServ.TPOrd.FieldByName('CFOP').AsString:=DMESTOQUE.Alx1.FieldByName('CFOP').AsString;
                           DMServ.TPOrd.Post;
                       Except
                       	MessageDlg('Erro ao atualizar: '+DMSAIDA.TItemPV.FieldByName('cod_itenspedven').AsString, mtWarning, [mbOK], 0);
                       End;
                   End;

               End
               Else Begin
               	//seleciona as cfops de não substituição
                   //SELECIONA SUBSTITUIÇÃO PARA DENTRO DO ESTADO
                   DMESTOQUE.Alx1.Close;
                   DMESTOQUE.Alx1.SQL.Clear;
                   DMESTOQUE.Alx1.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
                   DMESTOQUE.Alx1.ParamByName('codigo').AsString:=DMMACS.TLoja.FieldByName('CFOPINTERNO').AsString;
                   DMESTOQUE.Alx1.Open;

                   //SELECIONA SUBSTITUIÇÃO PARA FORA DO ESTADO
                   DMESTOQUE.Alx2.Close;
                   DMESTOQUE.Alx2.SQL.Clear;
                   DMESTOQUE.Alx2.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
                   DMESTOQUE.Alx2.ParamByName('codigo').AsString:=DMMACS.TLoja.FieldByName('CFOPEXTERNO').AsString;
                   DMESTOQUE.Alx2.Open;

               	//O item vendido é de substituição tributária e deve ser inserido cfop de substituição
                   If XEstadoOrigem<>XEstadoDestino
                   Then Begin
                   	//INSERE CFOP PARA FORA DO ESTADO
                       Try
                           DMSAIDA.TItemPV.Edit;
                           DMSAIDA.TItemPV.FieldByName('CFOP').AsString:=DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
                           DMSAIDA.TItemPV.Post;
                       Except
                       	MessageDlg('Erro ao atualizar: '+DMSAIDA.TItemPV.FieldByName('cod_itenspedven').AsString, mtWarning, [mbOK], 0);
                       End;
                   End
                   Else Begin
                   	//INSERE CFOP PARA DENTRO DO ESTADO
                       Try
                           DMSAIDA.TItemPV.Edit;
                           DMSAIDA.TItemPV.FieldByName('CFOP').AsString:=DMESTOQUE.Alx1.FieldByName('CFOP').AsString;
                           DMSAIDA.TItemPV.Post;
                       Except
                       	MessageDlg('Erro ao atualizar: '+DMServ.TPOrd.FieldByName('cod_itenspedven').AsString, mtWarning, [mbOK], 0);
                       End;
                   End;
               End;
           End;//02
			DMSAIDA.TItemPV.Next;
       End;//01
       DMMACS.TALX.Next;
   End;
   If MessageDlg('Confirmar atualizações?', mtWarning, [mbYes, mbNo], 0)=mryes
   Then Begin
       DMSAIDA.IBT.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;
   End;       
end;

procedure TFMenu.Button8Click(Sender: TObject);
begin
   DMCONTA.TParcCR.Close;
   DMCONTA.TParcCR.SQL.Clear;
   DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR ');
   DMCONTA.TParcCR.Open;
   DMCONTA.TParcCR.First;
   While not DMCONTA.TParcCR.Eof do
   Begin

       DMCONTA.TParcCR.Next;
   End;
end;

procedure TFMenu.Button9Click(Sender: TObject);
begin
	//preparar todos os itens de compra

end;


procedure TFMenu.Remessasdegarantia1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit; 
   FMenu.XDevolucao:=False;
   FMenu.XSimplesRemessa:=False;
   FMenu.XRemessaGarantia:=True;
   FMenu.XOutrosFisc:=false;
   FMenu.XOutrosEnt:=False;
   FMenu.XComplementacao:=False;
   FMenu.XOutrosEntPropria := False;
   AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
end;

procedure TFMenu.IconMinimizeClick(Sender: TObject);
begin
   Application.Minimize;
end;

procedure TFMenu.Devolues2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;

   FMenu.XDevolucao:=True;
   FMenu.XSimplesRemessa:=False;
   FMenu.XRemessaGarantia:=False;
   FMenu.XLancAutoDev:=False;
   FMenu.XOutrosFisc:=False;
	FMenu.XOutrosEnt:=False;
   FMenu.XComplementacao:=False;
   FMenu.XOutrosEntPropria := False;
   MessageDlg('Para emissão de NF-e de devolução use opção própria no pedido de compra.', mtWarning, [mbOK], 0);
   AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
end;

procedure TFMenu.Perodofiscal1Click(Sender: TObject);
begin
    AbrirForm(TFPeriodoFiscal, FPERIODOFISCAL, 0);
end;

procedure TFMenu.FormCreate(Sender: TObject);
begin
   xCtrThread:=False;
	XLOGOFFINI:=0;
end;

procedure TFMenu.SintticoporFornecedorescomObservao1Click(Sender: TObject);
begin
	FMenu.TIPOREL := 'PEDCOBS';
   AbrirForm(TFRelMecanica,FRelMecanica,0);                                
end;

procedure TFMenu.TSincTimer(Sender: TObject);
begin
  if((DMMACS.TLoja.FieldByName('HORAFTP').AsString <= TimeToStr(Time)) and (DMMACS.TLoja.FieldByName('DATAFTP').AsDateTime < Date))
  Then Begin
   	TransferenciaFTP;
  End;
end;

{procedure TFMenu.BitBtn3Click(Sender: TObject);
var
Util:NFe_Util_Interface;
i:integer;
nome:widestring;

    ///  2. PegaNomeCertificado: Seleciona ou confirma a exitência de um certificado para o nome informado.
    ///
    ///     Entrada: Nome do titular
    ///                se não informado busca certificado do repositório;
    ///                se informado confirma a existência.
    ///
    ///    Retornos:
    ///
    ///        PegaNomeCertificado: código do resultado
    ///
    ///                             0-Selecinado um Certificado
    ///                             1-Existe um Certificado com o nome informado
    ///                             2-Nenhum Certificado Selecionado
    ///                             3-Nenhum certificado válido foi encontrado com o nome informado
    ///                             4-Erro Inesperado: "+ex.Message
    ///
    ///        Nome               : Nome do titular do Certificado
    ///
    ///        msgResultado       : Literal da mensagem do resultado
    ///

begin
  Util := CoUtil.Create;
  nome := '';
  i:= Util.PegaNomeCertificado(nome, mensagem);
  if i > 1 then
      MessageDlg( 'Ocorreu uma falha no acesso ao repositório de certificados digitais...'+#13+#13+mensagem, mtInformation, [mbOk], 0)
  else
      begin
      if i = 0 then
         MessageDlg( 'Certificado selecionado:'#13+#13+nome, mtInformation, [mbOk], 0)
      else
         MessageDlg( 'O Certificado:'#13+#13+nome+#13+#13+'foi localizado no repósitorio de certificados!', mtInformation, [mbOk], 0);
      end;
  Util := nil;

end;
}
procedure TFMenu.SimplesRemessa1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;

   FMenu.XDevolucao:=False;
   FMenu.XSimplesRemessa:=True;
   FMenu.XRemessaGarantia:=False;
   FMenu.XOutrosFisc:=false;
	FMenu.XOutrosEnt:=False;
   FMenu.XComplementacao:=False;
   FMenu.XOutrosEntPropria := False;
   AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
end;

procedure TFMenu.ListadePreoscomvaloresdeAtacado1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
    FMenu.XTIPOBOLTO:='ATACADO';
	 FMenu.TIPOREL:='LISTPRECCOMP';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
    FMenu.XTIPOBOLTO:='';
end;

procedure TFMenu.OutrosFiscClick(Sender: TObject);
begin
	If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;

   FMenu.XDevolucao:=False;
   FMenu.XSimplesRemessa:=False;
   FMenu.XRemessaGarantia:=False;
   FMenu.XOutrosFisc:=true;
   FMenu.XOutrosEnt:=False;
   FMenu.XComplementacao:=False;
   FMenu.XOutrosEntPropria := False;
   AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
end;

procedure TFMenu.ListadeProdutosporTributao1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELINVENTEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='RELTRIBUTA';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ProdutosVendidosporTributao1Click(Sender: TObject);
begin
   // relatorio de produtos e clientes
   FMenu.TIPOREL:='PERIODOPRODTRIBUTA';
   AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
end;

procedure TFMenu.SintticoparaCliente1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDCLISINTPARACLIENTE';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.EmissoPrpria1Click(Sender: TObject);
begin
	If ControlAccess('CADPEDCOMP', 'M')=False Then
  		Exit;
	MessageDlg('A T E N Ç Ã O'+#13+#10+'Este tipo de entrada se utiliza de formulário da empresa '+DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString+' para emissão.', mtWarning, [mbOK], 0);
	MessageDlg('A T E N Ç Ã O'+#13+#10+'Para gerar uma NF-e de Emissão Própria por favor usar função especifica no Pedido de Venda ou Ordem de Serviço.', mtWarning, [mbOK], 0);   
   FMenu.XOutrosEnt:=true;
   FMenu.XNotaEntrada:=True;
   FMenu.XOutrosEntPropria := False;
   AbrirForm(TFPEDCOMPRA, FPEDCOMPRA, 0);
end;

procedure TFMenu.EntradasdeTerceiros1Click(Sender: TObject);
begin
If ControlAccess('CADPEDCOMP', 'M')=False Then
  		Exit;

    FMenu.XOutrosEnt:=true;
    FMenu.XOutrosEntPropria := False;
    AbrirForm(TFPEDCOMPRA, FPEDCOMPRA, 0);
end;

procedure TFMenu.RelDanfesdeVenda1Click(Sender: TObject);
begin
   // relatorio de produtos e clientes
   FMenu.TIPOREL:='RELDANFESINT';
   AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
end;

procedure TFMenu.RelDanfesdeEntradas1Click(Sender: TObject);
begin
   If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
   Then Begin
       //Paulo 06/12/2011: relatorio de notas emitidas com produtos
       FMenu.TIPOREL:='RELDANFEENTRADASINTPROD';
       AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
   end
   else begin
      // relatorio de produtos e clientes
       FMenu.TIPOREL:='RELDANFEENTRADASINT';
       AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
   end;

end;

procedure TFMenu.ProduoemLote1Click(Sender: TObject);
begin
	AbrirForm(TFProducaoLote, FProducaoLote, 0);
end;

procedure TFMenu.ComplementaopNFe1Click(Sender: TObject);
begin
	//Paulo 30/11/2010: EFETUA CONTROLE DE ACESSO 
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;

   FMenu.XDevolucao:=False;
   FMenu.XSimplesRemessa:=False;
   FMenu.XRemessaGarantia:=False;
	FMenu.XOutrosEnt:=False;
   FMenu.XOutrosFisc:=false;
   FMenu.XOutrosEntPropria := False;
   FMenu.XComplementacao:=True;
   AbrirForm(TFPEDVENDA, FPEDVENDA, 0);		
end;

procedure TFMenu.Button10Click(Sender: TObject);
Var
Rodape : TMemo;
begin
   FMenu.MAux.Lines.Add(DMMACS.TLoja.FieldByName('TMP3').AsString);
end;
procedure TFMenu.FaturaPedidos1Click(Sender: TObject);
begin
    FMenu.TIPOAUX:='FATPEDIDOC';
    AbrirForm(TFFaturaPedidos, FFaturaPedidos, 0);
end;

procedure TFMenu.CancelaFatura1Click(Sender: TObject);
begin
    FMenu.TIPOAUX:='CANCELAFATURA';
    AbrirForm(TFFaturaPedidos, FFaturaPedidos, 0);
end;

procedure TFMenu.CancelarFaturas1Click(Sender: TObject);
begin
	MessageDlg('EM ATUALIZAÇÃO', mtWarning, [mbOK], 0);
   EXIT;
   FMenu.TIPOAUX:='CANCELAFATURAVENDA';
   AbrirForm(TFFaturaPedidos, FFaturaPedidos, 0);
end;

procedure TFMenu.FaturarPedidos1Click(Sender: TObject);
begin
    FMenu.TIPOAUX:='FATPEDIDOC';
    AbrirForm(TFFaturaPedidos, FFaturaPedidos, 0);
end;       
procedure TFMenu.ComissoporCtaReceber1Click(Sender: TObject);
begin
   FMenu.TIPOREL:='COMISSCTR';
	AbrirForm(TFRelComissao, FRelComissao, 0);
end;

procedure TFMenu.N14Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LISTEST';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.RvFaturasBeforePrint(Sender: TObject);
begin
	with Sender as TBaseReport do
  	begin
   	SetPaperSize(DMPAPER_A4,0,0);
	END;
end;

procedure TFMenu.RvFaturasPrint(Sender: TObject);
begin
	if TIPOREL = 'RECIBOFATCONTA' then
		ImpComprovanteFatura//Recibo de faturamento
   else
   	if TIPOREL = 'RECIBOFATCONTAMODELO2' then
			ImpComprovanteFaturaModelo2;

   if TIPOREL = 'COMPROVANTEFATCONTA'
   then begin
   	xTituloRelatorio := 'Comprovante de Faturas';
       ImpComprovanteFaturas;// Comprovante com todas as parcelas, e itens das parcelas
   End;
   if TIPOREL = 'COMPROVANTEFATCONTA'
   then begin
   	xTituloRelatorio := 'Comprovante de Faturas';
       ImpComprovanteFaturas;// Comprovante com todas as parcelas, e itens das parcelas
   End;
   if TIPOREL = 'COMPROVANTEFATCONTARESUMIDO'
   then begin
    xTituloRelatorio := 'Comprovante de Faturas Resumido';
      ImpComprovanteFaturasResumido;
    End;
   if TIPOREL = 'RELGMOVIMENTACOESFINANCEIRAS'
   then begin
   	xTituloRelatorio := 'Rel. Geral de Movimentações Financeiras';
       ImpRelGMovFinanceiras;// Comprovante com todas as parcelas, e itens das parcelas
   End;

end;

procedure TFMenu.btnRelFaturaClick(Sender: TObject);
begin

	TIPOREL := 'COMPROVANTEFATCONTA';
   //ImpReciboFatura('Mauro Pies', 'Rua Verbo Divino, 128', '935,00','Novecentos reais e trinta e cinco centavos','Faturamento: Doc 100/1-1; 200/1-1');
   ImpReciboFaturaContas(6,'FATURA', 'CR');
	FMenu.RvFaturas.SystemPreview.FormState := wsMaximized;
   FMenu.RvFaturas.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
   FMenu.RvFaturas.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
   FMenu.RvFaturas.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
   FMenu.RvFaturas.Execute;
end;
//Imprime ao cabeçalho os dados do cliente
Function TFMenu.ImpComprovanteFaturaCabecalhoCliente : Boolean;
Var
	Bitmap: TBitmap;
Begin
	Try
       XLinImp:=XLinImp+7;
		Imprime(RvFaturas, XLinImp,5, 'Cliente: '+ DMCONTA.TAlx.fieldByName('CLIENTE').AsString,'Verdana',12,clBlack, false);
	    XLinImp:=XLinImp+5;
       Imprime(RvFaturas,XLinImp,5,'____________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);       
	Except

   End;

End;

Function TFMenu.ImpComprovanteFatura : Boolean;
Begin
	Try
   	ImpComprovanteFaturaCabecalho;
		ImpComprovanteFaturaDados;
       ImpComprovanteFaturaRodape;
   Except

   End;
End;

Function TFMenu.ImpComprovanteFaturaCabecalho : Boolean;
Var
	Bitmap: TBitmap;
Begin
	Try
   	XLinImp:=0;
       //Carrega a imagem para ser usado no relatório
      	try
       	If FileExists('logoEmpresa.bmp')
           Then Begin
           	XLinImp:=5;
               Bitmap := TBitmap.Create;
               Bitmap.LoadFromFile('logoEmpresa.bmp');
               Bitmap := TBitmap.Create;
               Bitmap.LoadFromFile('logoEmpresa.bmp');
               //PrintImage(RvFaturas:TRvSystem; Row,Col,ImageWidth,ImageHeight: Double; Bitmap: TBitmap; FileName:String='');
               PrintImage(RvFaturas, XLinImp, 5, 30, 30,  Bitmap);// via 1
           End
           Else Begin
               XLinImp:=XLinImp+7;
      			Imprime(RvFaturas, XLinImp,5, DMMACS.TEmpresa.fieldByName('FANTASIA').AsString,'Verdana',12,clBlack, false);
      			XLinImp:=XLinImp+7;
               Imprime(RvFaturas, XLinImp,5, 'CNPJ: '+DMMACS.TEmpresa.fieldByName('CNPJ').AsString,'Verdana',12,clBlack, false);
      			Imprime(RvFaturas, XLinImp,65, 'I.E.: '+DMMACS.TEmpresa.fieldByName('INSC_EST').AsString,'Verdana',12,clBlack, false);
      			XLinImp:=XLinImp+7;
      			Imprime(RvFaturas, XLinImp,5, DMMACS.TEmpresa.fieldByName('ENDERECO').AsString+', '+DMMACS.TEmpresa.fieldByName('NUMERO').AsString + ' - '+DMMACS.TEmpresa.fieldByName('BAIRRO').AsString ,'Verdana',12,clBlack, false);
      			XLinImp:=XLinImp+7;
      			Imprime(RvFaturas, XLinImp,5, 'TELEFONE: '+DMMACS.TEmpresa.fieldByName('FONE').AsString,'Verdana',12,clBlack, false);
           	Exit;
           End;

       finally
         //  FreeAndNil(Bitmap);
       end;

       XLinImp:=XLinImp+7;
       Imprime(RvFaturas, XLinImp,40, DMMACS.TEmpresa.fieldByName('FANTASIA').AsString,'Verdana',12,clBlack, false);
       XLinImp:=XLinImp+7;
       Imprime(RvFaturas, XLinImp,40, 'CNPJ: '+DMMACS.TEmpresa.fieldByName('CNPJ').AsString,'Verdana',12,clBlack, false);
       Imprime(RvFaturas, XLinImp,100, 'I.E.: '+DMMACS.TEmpresa.fieldByName('INSC_EST').AsString,'Verdana',12,clBlack, false);
       XLinImp:=XLinImp+7;
       Imprime(RvFaturas, XLinImp,40, DMMACS.TEmpresa.fieldByName('ENDERECO').AsString+', '+DMMACS.TEmpresa.fieldByName('NUMERO').AsString + ' - '+DMMACS.TEmpresa.fieldByName('BAIRRO').AsString ,'Verdana',12,clBlack, false);
       XLinImp:=XLinImp+7;
       Imprime(RvFaturas, XLinImp,40, 'TELEFONE: '+DMMACS.TEmpresa.fieldByName('FONE').AsString,'Verdana',12,clBlack, false);
	Except

   End;

End;

Function TFMenu.ImpComprovanteFaturaRodape : Boolean;
Begin
	    XLinImp:=XLinImp+2;
       Imprime(RvFaturas,XLinImp,5,'____________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);
       XLinImp:=XLinImp+5;
       Imprime(RvFaturas,XLinImp,5, FMenu.EdData.Text,'Verdana',10,clBlack, true);
       XLinImp:=XLinImp+20;
       Imprime(RvFaturas,XLinImp,60,'________________________________________','Verdana',10,clBlack, true);
       XLinImp:=XLinImp+3;
       Imprime(RvFaturas,XLinImp,100, 'Assinatura','Verdana',7,clBlack, false);
       XLinImp:=XLinImp+2;
       Imprime(RvFaturas,XLinImp,5,'____________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);
       XLinImp:=XLinImp+3;
       Imprime(RvFaturas,XLinImp,70, 'MZR Sistemas - Sistemas em gestão empresarial','Verdana',7,clBlack, false);
		XLinImp:=XLinImp+2;
       Imprime(RvFaturas,XLinImp,90, 'www.mzrsistemas.com','Verdana',7,clBlack, false);
End;

Function TFMenu.ImpComprovanteFaturaDados : Boolean;
Begin
	    XLinImp:=XLinImp+5;
       Imprime(RvFaturas,XLinImp,5,'____________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);

       XLinImp:=XLinImp+6;
       Imprime(RvFaturas, XLinImp,85, 'RECIBO','Verdana',14,clBlack, true);
       Imprime(RvFaturas, XLinImp,160, 'Valor: ' + xImpReciboValor  ,'Verdana',12,clBlack, true);

       XLinImp:=XLinImp+2;
       Imprime(RvFaturas,XLinImp,5,'____________________________________________________________________________________________________________________________','Verdana',10,clBlack, false);

       XLinImp:=XLinImp+8;
       Imprime(RvFaturas, XLinImp,5, 'Recebemos de  ','Verdana',11,clBlack, true);
	    Imprime(RvFaturas, XLinImp,38, xImpReciboCliente ,'Verdana',11,clBlack, false);

       XLinImp:=XLinImp+10;
       Imprime(RvFaturas, XLinImp,5, 'Endereço  '  ,'Verdana',11,clBlack, true);
       Imprime(RvFaturas, XLinImp,28, xImpReciboEndereco  ,'Verdana',11,clBlack, false);

       XLinImp:=XLinImp+10;
		Imprime(RvFaturas, XLinImp,5, 'A importância de  '  ,'Verdana',11,clBlack, true);
       Imprime(RvFaturas, XLinImp,43, xImpReciboValorExt  ,'Verdana',10,clBlack, false);

       XLinImp:=XLinImp+10;
       Imprime(RvFaturas, XLinImp,5, 'Referente  '  ,'Verdana',11,clBlack, true);
       Imprime(RvFaturas, XLinImp,28, xImpReciboHistorico  ,'Verdana',11,clBlack, false);

End;

Procedure TFMenu.Imprime(RVRel: TRVSystem; Linha: Double; Coluna:Double; Texto:String; Fonte:String; TamFonte:Integer; CorFonte:TColor; Tipo:Boolean);
Begin
     With RVRel.BaseReport do
     Begin
          GotoXY(Coluna,Linha);
          FontColor := CorFonte;
          Bold:=Tipo;
          FontSize := TamFonte;
          FontName := Fonte;
          Print(Texto);
     End;
End;

procedure TFMenu.PrintImage(RVSystem:TRvSystem; Row,Col,ImageWidth,ImageHeight: Double; Bitmap: TBitmap; FileName:String='');
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
		//Original - RVSystem.BaseReport.PrintBitmap(Col, Row, ImageWidth, ImageHeight,InternalBitmap);
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

Function TFMenu.ImpRelCabecalhoPadrao : Boolean;
Begin
	Try
		XLinImp:=3;
   	XLinImp:=XLinImp+5;
   	Imprime(RvFaturas, XLinImp,5, DMMACS.TEmpresa.fieldByName('FANTASIA').AsString + ' / ' + 'Fone :'+DMMACS.TEmpresa.fieldByName('FONE').AsString ,'Verdana',10,clBlack, true);
		if xTipoPapel = 'PAISAGEM'
   	Then Begin
   		Imprime(FMenu.RvFaturas, XLinImp,262, 'Emissão:'+DateToStr(Date),'Verdana',7,clBlack, false);
       	XLinImp:=XLinImp+4;
   		Imprime(FMenu.RvFaturas, XLinImp,5, 'Loja: '+DMMACS.TLoja.fieldByName('DESCRICAO').AsString,'Verdana',10,clBlack, false);
   		Imprime(FMenu.RvFaturas, XLinImp,271, 'Hora:'+ TimeToStr(Time),'Verdana',7,clBlack, false);
   		XLinImp:=XLinImp+4;
   		Imprime(FMenu.RvFaturas, XLinImp,282, 'Pag.: '+IntToStr(xNumPagina),'Verdana',7,clBlack, false);
       	//Titulo
   		XLinImp:=XLinImp+5;
   		Imprime(FMenu.RvFaturas, XLinImp,110, xTituloRelatorio,'Verdana',12,clBlack, true);
   	End
   	Else Begin
   		Imprime(FMenu.RvFaturas, XLinImp,175, 'Emissão:'+DateToStr(Date),'Verdana',7,clBlack, false);
       	XLinImp:=XLinImp+4;
   		Imprime(FMenu.RvFaturas, XLinImp,5, 'Loja: '+DMMACS.TLoja.fieldByName('DESCRICAO').AsString,'Verdana',10,clBlack, false);
   		Imprime(FMenu.RvFaturas, XLinImp,184, 'Hora:'+ TimeToStr(Time),'Verdana',7,clBlack, false);
   		XLinImp:=XLinImp+4;
   		Imprime(FMenu.RvFaturas, XLinImp,193, 'Pag.: '+IntToStr(xNumPagina),'Verdana',7,clBlack, false);
   		//Titulo
   		XLinImp:=XLinImp+3;
   		Imprime(FMenu.RvFaturas, XLinImp,70, xTituloRelatorio,'Verdana',12,clBlack, true);
   	End;

   	//Filtro
		XLinImp:=XLinImp+5;
   	//Imprime(FMenu.RvFaturas, XLinImp,5, xDadosAdicionais ,'Verdana',7,clBlack, false);

  		XLinImp:=XLinImp+2;
   	Imprime(FMenu.RvFaturas,XLinImp,5,'____________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);
	Except
       Result := False;
       ShowMessage('Erro ao tentar imprimir cabecalho do relatorio');
   End;
End;

function TFMenu.ImpComprovanteFaturaModelo2: boolean;
begin
    ImpComprovanteFaturaCabecalhoModelo2;
    ImpComprovanteFaturaDadosModelo2;
    ImpComprovanteFaturaRodapeModelo2;
end;

function TFMenu.ImpComprovanteFaturaCabecalhoModelo2: Boolean;
begin
	Try
   	XLinImp:=0;
       XLinImp:=XLinImp+15;
       Imprime(RvFaturas, XLinImp,62, DMMACS.TEmpresa.fieldByName('FANTASIA').AsString+' - '+DMMACS.TEmpresa.fieldByName('FONE').AsString, 'Times New Roman',17,clBlack, false);
       XLinImp:=XLinImp+7;
       Imprime(RvFaturas, XLinImp,69, DMMACS.TEmpresa.fieldByName('ENDERECO').AsString{+', '+DMMACS.TEmpresa.fieldByName('NUMERO').AsString},'Verdana',12,clBlack, false);
       XLinImp:=XLinImp+3;
       Imprime(RvFaturas, XLinImp,3, '___ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____' ,'Verdana',12,clBlack, false);
       XLinImp:=XLinImp+7;
       Imprime(RvFaturas, XLinImp,90, 'RECIBO' ,'Verdana',17,clBlack, true);
       Imprime(RvFaturas, XLinImp,185, FormatDateTime('hh:nn:ss', Now()) ,'Verdana',11,clBlack, true);
       XLinImp:=XLinImp+3;
       Imprime(RvFaturas, XLinImp,3, '___ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____' ,'Verdana',12,clBlack, false);
		XLinImp:=XLinImp+1;
		Imprime(RvFaturas, XLinImp,3, '___ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____' ,'Verdana',12,clBlack, false);
       XLinImp:=XLinImp+7;
	Except
   	showMessage('Erro ao gerar cabeçalho da fatura');
   End;
end;

function TFMenu.ImpComprovanteFaturaDadosModelo2: Boolean;
begin
	 Imprime(RvFaturas, XLinImp,5, 'DOCUMENTO: '+xImpReciboParcela,'Verdana',11,clBlack, true);
	 Imprime(RvFaturas, XLinImp,150, 'Valor: R$ '+xImpReciboValor,'Verdana',11,clBlack, true);
    XLinImp:=XLinImp+3;
    Imprime(RvFaturas, XLinImp,3,    '______________________________________________________________________' ,'Verdana',12,clBlack, true);

    XLinImp:=XLinImp+10;
    Imprime(RvFaturas, XLinImp, 5, 'RECEBEMOS DE: ','Verdana',10,clBlack, false);
    Imprime(RvFaturas, XLinImp, 35, xImpReciboCliente ,'Verdana',10, clBlack, true);
    Imprime(RvFaturas, XLinImp, 145, 'CPF/CNPJ: '+xImpReciboCpfCnpj,'Verdana',10,clBlack, false);

    XLinImp:=XLinImp+5;
    Imprime(RvFaturas, XLinImp, 35, 'Endereço: '+xImpReciboEndereco, 'Verdana', 10, clBlack, false);

    XLinImp:=XLinImp+5;
    Imprime(RvFaturas, XLinImp,35, 'Município: '+xImpReciboCidade, 'Verdana',10,clBlack, false);
    Imprime(RvFaturas, XLinImp, 145, 'UF: '+xImpReciboUf, 'Verdana', 10, clBlack, false);

    XLinImp:=XLinImp+10;
    Imprime(RvFaturas, XLinImp,5, 'A IMPORTÂNCIA DE: ','Verdana',10,clBlack, false);
    Imprime(RvFaturas, XLinImp,42, xImpReciboValorExt  ,'Verdana',10,clBlack, true);

    XLinImp:=XLinImp+10;
    Imprime(RvFaturas, XLinImp,5, 'REFERENTE: '+xImpReciboHistorico, 'Verdana', 10, clBlack, false);
end;

function TFMenu.ImpComprovanteFaturaRodapeModelo2: Boolean;
VAR
  Data: Integer;
  Mes, xRodapeCidadeData:String;
  Year, Month, Day:word;
begin
    xRodapeCidadeData := 'Toledo, 01 de Janeiro de 2001';
    
    Data := DayOfWeek(Date());//Volta um número inteiro que representa o dia da semana
    DecodeDate(Date(), Year, Month, Day);
    Case Month of
        1:Mes:='Janeiro';
        2:Mes:='Fevereiro';
        3:Mes:='Março';
        4:Mes:='Abril';
        5:Mes:='Maio';
        6:Mes:='Junho';
        7:Mes:='Julho';
        8:Mes:='Agosto';
        9:Mes:='Setembro';
        10:Mes:='Outubro';
        11:Mes:='Novembro';
        12:Mes:='Dezembro';
    End;
    
    if FiltraTabela(DMMACS.TALX, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '') Then
    	xRodapeCidadeData := DMMACS.TALX.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);

    XLinImp:=XLinImp+7;
    Imprime(RvFaturas, XLinImp,3, '______________________________________________________________________' ,'Verdana',12,clBlack, true);
    XLinImp:=XLinImp+5;
    Imprime(RvFaturas, XLinImp,5, xRodapeCidadeData, 'Verdana',10,clBlack, false);

    XLinImp := XLinImp + 20;
    Imprime(RvFaturas, XLinImp,63, '_______________________________', 'Verdana',11,clBlack, true);
    XLinImp := XLinImp + 5;
    Imprime(RvFaturas, XLinImp,90, 'A S S I N A T U R A', 'Verdana',11,clBlack, false); 
end; 

procedure TFMenu.SolicitaodeCompra1Click(Sender: TObject);
begin
//
AbrirForm(TFSolicitarCompra, FSolicitarCompra, 0);
end;

procedure TFMenu.Fornecedores3Click(Sender: TObject);
begin
    AbrirForm(TFFornecedor, FFornecedor, 0);
end;

procedure TFMenu.Funcionrios1Click(Sender: TObject);
begin
   FMenu.TIPOAUX:='FUNCIONARIO';
   AbrirForm(TFFuncionario, FFuncionario, 0);
end;

procedure TFMenu.erceiros2Click(Sender: TObject);
begin
   FMenu.TIPOAUX:='TERCEIROS';
   AbrirForm(TFFuncionario, FFuncionario, 0);
end;

procedure TFMenu.Equipe2Click(Sender: TObject);
begin
   AbrirForm(TFCadEquipe,FCadEquipe,0);
end;

procedure TFMenu.Equipamentos1Click(Sender: TObject);
begin
   // abre formulario equipamento
    AbrirForm(TFCadEQUIPAMENTO, FCadEQUIPAMENTO, 0);
end;

procedure TFMenu.Empresa2Click(Sender: TObject);
begin
    AbrirForm(TFCadEmpresa, FCadEmpresa, 0);
end;

procedure TFMenu.Loja2Click(Sender: TObject);
begin
    AbrirForm(TFCadLoja, FCadLoja, 0);
end;

procedure TFMenu.Cidade2Click(Sender: TObject);
begin
    AbrirForm(TFCadCidade, FCadCidade, 0);
end;

procedure TFMenu.Estado2Click(Sender: TObject);
begin
    AbrirForm(TFCadEstado, FCadEstado, 0);
end;

procedure TFMenu.Regio2Click(Sender: TObject);
begin
    AbrirForm(TFCadRegiao, FCadRegiao, 0);
end;

procedure TFMenu.ManuCadastroDrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; Selected: Boolean);
begin
{  //Pinta a opção
  if Selected then  //verifica se o item está selecionado
    BEGIN
      ACanvas.Brush.Color :=  $00EFD3C6;        //cor de fundo do item (Lembrando que podemos printar um Imagem).
          //   Canv.Brush.Color :=  clAppWorkSpace;
      ACanvas.Rectangle(Arect);                         //Desenharemos uma retangulo em todo o Item selecionado.
      ACanvas.pen.Color:=$00C66931;             //seta a cor da borda do retangulo.
      InflateRect (ARect, -1,-1);
    end
    else
    ACanvas.Brush.Color:=clMenu;                        //se não estiver selecionado o item coloca a cor normal do item.
        //-->  dietrich 01/02/2007

        //coloca o texto
    ACanvas.pen.Color:=clBlack;  //cor
    ACanvas.TextRect(ARect,ARect.Left+5, ARect.Top+1,'Cadastros [F3]');//local onde sera escrito o texto ARect
    }
end;

procedure TFMenu.CadastrodeServios1Click(Sender: TObject);
begin
    TIPOAUX:='SERVICO';
    AbrirForm(TFServico, FServico, 0);
end;

procedure TFMenu.Grupo2Click(Sender: TObject);
begin
    FMENU.TIPOAUX:='SERVICO';
    AbrirForm(TFCadGrupo, FCadGrupo, 0);
end;

procedure TFMenu.SubGrupo2Click(Sender: TObject);
begin
    FMENU.TIPOAUX:='SERVICO';
    AbrirForm(TFCadSUBGrupo, FCadSUBGrupo, 0);
end;

procedure TFMenu.Unidade2Click(Sender: TObject);
begin
    AbrirForm(TFCadUnidade, FCadUnidade, 0);
end;

procedure TFMenu.OrdemdeServios1Click(Sender: TObject);
begin
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE' Then
       AbrirForm(TFOrdemMec, FOrdemMec, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'DESPACHANTE' Then
       AbrirForm(TFOrdemDesp, FOrdemDesp, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'PETSHOP' Then
       AbrirForm(TFOrdemPet, FOrdemPet, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'LOCAÇÃO' Then
       AbrirForm(TFOrdemLoca, FOrdemLoca, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'RETIFICA' Then
       AbrirForm(TFOrdemRetifica, FOrdemRetifica, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'GRAFICA' Then
       AbrirForm(TFOrdemGrafica, FOrdemGrafica, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'INDUSTRIA' Then
       AbrirForm(TFOrdemProduc, FOrdemProduc, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'MANUTENÇÃO' Then
       AbrirForm(TFOrdemAssitenciaTecnica, FOrdemAssitenciaTecnica, 0);       

   If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'MANUTENÇÃO') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'DESPACHANTE') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE')  and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'INDUSTRIA') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'PETSHOP')   and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'RETIFICA')   and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'LOCAÇÃO')   and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'GRAFICA') Then
       AbrirForm(TFOrdem, FOrdem, 0);
end;

procedure TFMenu.abeladeServios1Click(Sender: TObject);
begin
   AbrirForm(TFPrecoServ , FPrecoServ, 0);
end;

procedure TFMenu.OrdemdeManuteno2Click(Sender: TObject);
begin
	AbrirForm(TFOrdemManutencao, FOrdemManutencao, 0);
end;

procedure TFMenu.OrdemdeServios2Click(Sender: TObject);
begin
{	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;}
	FMenu.TIPOREL:='RELORDEM';
	AbrirForm(TFRelOrdem, FRelOrdem, 0);

end;

procedure TFMenu.CompdeFechamento1Click(Sender: TObject);
begin
{	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;}
	FMenu.TIPOREL:='RELCOMPORDEM';
	AbrirForm(TFRelOrdem, FRelOrdem, 0);

end;

procedure TFMenu.ReldeEquipamento1Click(Sender: TObject);
begin
   FMenu.TIPOREL := 'EQUIPAMENTO';
   // abre formularo de relatorio de equipamento
   AbrirForm(TFRelEquipamento,FRelEquipamento,0);
end;

procedure TFMenu.RelAnalticodeEquipamentos1Click(Sender: TObject);
begin
   FMenu.TIPOREL := 'LOCACAO_ANALIT';
   // abre formularo de relatorio de equipamento
   AbrirForm(TFRelEquipamento,FRelEquipamento,0);

end;

procedure TFMenu.RelSintticodeEquipamentos1Click(Sender: TObject);
begin
   FMenu.TIPOREL := 'LOCACAO_SINT';
   // abre formularo de relatorio de equipamento
   AbrirForm(TFRelEquipamento,FRelEquipamento,0);
end;

procedure TFMenu.ReldeEquipes1Click(Sender: TObject);
begin
   // abri formulario do relatorio de equipes
   AbrirForm(TFRelEquipe,FRelEquipe,0);
end;

procedure TFMenu.RelAnalticodeProdutos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='FRFPRODOS';
   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.RelAnalticode1Click(Sender: TObject);
begin
   Mensagem('   A T E N Ç Ã O   ','Relatório Desativado.','',1,1,false,'A');
   Exit;

end;

procedure TFMenu.ReldeProdutosemOS1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   FMenu.TIPOREL:='RELPRODORDEM';
   FMenu.TIPOAUX:='ORDEM';
 	AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.ReldeReceitaseDespesas1Click(Sender: TObject);
begin
	FMenu.TIPOREL:='RELRECDESP';
	AbrirForm(TFRelCaixa, FRelCaixa, 0);
end;

procedure TFMenu.RelnicoComissionado1Click(Sender: TObject);
begin
{	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;}
	FMenu.TIPOREL:='COMISSIMPORD';
	AbrirForm(TFRelComissao, FRelComissao, 0);
end;

procedure TFMenu.ReldeComisso1Click(Sender: TObject);
begin
	FMenu.TIPOREL:='COMISSORD';
	AbrirForm(TFRelComissao, FRelComissao, 0);
end;

procedure TFMenu.ReldeServiosporFuncionrio1Click(Sender: TObject);
begin
   //Paulo 29/11/2011: Gera rel para serviços por equipe
   FMenu.TIPOREL:='COMISSERV';
	AbrirForm(TFRelComissao, FRelComissao, 0);
end;

procedure TFMenu.Usurios1Click(Sender: TObject);
begin
    FMenu.TIPOREL:='CAD_USUARIO';
    AbrirForm(TFCadUsuario, FCadUsuario, 0);
end;

procedure TFMenu.GeradorSintegra1Click(Sender: TObject);
begin
     AbrirForm(TFGeraSintegra, FGeraSintegra, 0);
end;

procedure TFMenu.ImportarSintegra1Click(Sender: TObject);
begin
    AbrirForm(TFImpSintegra, FImpSintegra, 0);
end;

procedure TFMenu.SpedFiscal2Click(Sender: TObject);
begin
    AbrirForm(TFSped, FSped, 0);
end;

procedure TFMenu.ReduoZ1Click(Sender: TObject);
begin
	//Paulo 10/08/2010: para controle de janela
    XEdiT:=True;
    AbrirForm(TFCadReducaoZ, FCadReducaoZ, 0);
end;

procedure TFMenu.Auditoria2Click(Sender: TObject);
begin
   AbrirForm(TFAuditoria, FAuditoria, 0);
end;

procedure TFMenu.ExportadorImportadordeDados1Click(Sender: TObject);
begin
	AbrirForm(TFExpImp, FExpImp, 0);
end;

procedure TFMenu.Gerenciador2Click(Sender: TObject);
begin
     FGerenciador.Show;
end;

procedure TFMenu.ExportadorDomnio1Click(Sender: TObject);
begin
     //Paulo 20/05/2011: Para expostação de dados para Dominio
     AbrirForm(TFExportaDominio, FExportaDominio, 0);
end;

procedure TFMenu.AtualizaodoBancodeDados1Click(Sender: TObject);
begin
	AbrirForm(TFSENHA, FSENHA, 0);
   If XAlxResult=True
   Then Begin
		//Paulo 26/03/2012: abre tela para atualizar base de dados
   	AbrirForm(TFAtualizaBanco, FAtualizaBanco, 0);
    END;
end;

procedure TFMenu.Lanamentos4Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CP', 'M')=False Then
  		Exit;
	 TIPOAUX:='NORMAL';
    AbrirForm(TFCtaPagar, FCtaPagar, 0);
end;

procedure TFMenu.BaixasConjuntas3Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CP', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   AbrirForm(TFBaixaMult, FBaixaMult, 0);
end;

procedure TFMenu.ContasdePreviso2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CP', 'M')=False Then
  		Exit;
	 TIPOAUX:='PREVISAO';
    AbrirForm(TFCtaPagar, FCtaPagar, 0);
end;

procedure TFMenu.Lanamentos5Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CR', 'M')=False Then
  		Exit;
    AbrirForm(TFCtaReceber, FCtaReceber, 0);
end;

procedure TFMenu.LanamentosemLote2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CR', 'M')=False Then
  		Exit;
    AbrirForm(TFCtasReceberLote, FCtasReceberLote, 0);
end;

procedure TFMenu.BaixaConjunta1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   AbrirForm(TFBaixaMult, FBaixaMult, 0);
end;

procedure TFMenu.PlanodeContas2Click(Sender: TObject);
begin
	//LIBERA TODAS AS CONTAS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_LOJA', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') ORDER BY CLASSIFICACAO');

   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := '';

   AbrirForm(TFConsPlnCta, FConsPlnCta, 0);
end;

procedure TFMenu.CadastrodeCaixas1Click(Sender: TObject);
begin
    AbrirForm(TFCadCaixa, FCadCaixa, 0);
end;

procedure TFMenu.AbrirCaixa2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ABRIRCX', 'M')=False Then
  		Exit;

  	 If DMCAIXA.VerifAbCaixa=False
    Then Begin
       FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
       SaldoINI:=DMCAIXA.TCaixa.FieldByName('SALDO').AsCurrency;

	    If DMCAIXA.VerifAbCaixa=True
	    Then Begin//VERIFICA SE O CAIXA ESTA ABERTO
	        Mensagem('A T E N Ç Ã O ', 'O Caixa escolhido já se encontra aberto. Para abrir outro caixa você deve efetuar logoff de usuário.', '', 1,1, false, 'i');
	        Exit;
	    End
	    Else Begin
	        AbrirForm(TFAbCaixa, FAbCaixa, 0);
	    End;
    End
    Else Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Este caixa já se encontra aberto!', '', 1, 1, false, 'i');
    End;
end;

procedure TFMenu.Lanamentos6Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('LANCX', 'M')=False Then
  		Exit;

    //VERIFICA SE O CAIXA ESTA ABERTO
    If DMCAIXA.VerifAbCaixa=False
    Then Begin
        Mensagem('A T E N Ç Ã O ', 'O Caixa escolhido não se encontra aberto. Para realizar a maioria das operações financeiras é obrigado que o caixa esteja aberto!', '', 1,1, false, 'a');
        Exit;
    End
    Else Begin
        AbrirForm(TFLancCaixa, FLancCaixa, 0);
    End;
end;

procedure TFMenu.FecharCaixa1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('FECHCX', 'M')=False Then
  		Exit;

    If DMCAIXA.VerifAbCaixa=False
    Then Begin//VERIFICA SE O CAIXA ESTA ABERTO
        Mensagem('A T E N Ç Ã O ', 'O Caixa escolhido não se encontra aberto. Para realizar a maioria das operações financeiras é obrigado que o caixa esteja aberto!', '', 1,1, false, 'a');
        Exit;
    End
    Else Begin
        AbrirForm(TFFechacaixa, FFechaCaixa, 0);
    End;
end;

procedure TFMenu.C1Click(Sender: TObject);
begin
    AbrirForm(TFCadBanco, FCadBanco, 0);
end;

procedure TFMenu.CadastrodeContaCorrente1Click(Sender: TObject);
begin
    AbrirForm(TFCadCtaCor, FCadCtaCor, 0);
end;

procedure TFMenu.Lanamentos7Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('MOVBANCO', 'M')=False Then
  		Exit;

    AbrirForm(TFMovBanco, FMovBanco, 0);
end;

procedure TFMenu.ChequesEmitidos2Click(Sender: TObject);
begin
    AbrirForm(TFLanCHSaida, FLanCHSaida, 0);
end;

procedure TFMenu.ChequesRecebidos2Click(Sender: TObject);
begin
    AbrirForm(TFLanCHEntr, FLanCHEntr, 0);
end;

procedure TFMenu.Cartes2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
    AbrirForm(TFCadCartao, FCadCartao, 0);
end;

procedure TFMenu.ReldeCtasaPagarporFornecedor1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='RELCTAPFOR';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.ReldeCtasaPagarporData1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='RELCTAPDATA';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.RelaodosPagamentos2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='RELCTAPDOC_REC';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.Pagamentodas1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CP', 'M')=False Then
  		Exit;
	 TIPOAUX:='PREVISAO';
    TIPOREL:='RELCTAP_PREVI';
    AbrirForm(TFRelCtaPR, FRelCtaPR, 0);
end;

procedure TFMenu.RelaodeCtasaPagarporFornecedor1Click(Sender: TObject);
begin
   FMenu.TIPOREL:='RELCTA_FORNECEDOR';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.Relatrio1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='REL_CTARATEIO';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.ReldeCtasaReceberporCliente1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARCLI';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.ReldeCtasaReceberporDocumento1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARDOC';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.ReldeCtasaReceberAgrupadopor1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARDOCAGRUPADO';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.RelaodosRecebimentos2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARDOC_REC';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.RelaodosDocumentoscomCorrees1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARDOCCORR';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.RelporSetordeVendas1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELCTARSETOR';
   AbrirForm(TFRelCtasSetor, FRelCtasSetor, 0);
end;

procedure TFMenu.Relao1Click(Sender: TObject);
begin
   FMenu.TIPOREL:='RELCTA_CLIENTE';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.ReldeBoletosEmitidos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';
   FMenu.TIPOREL:='RELBOLETOS';
   AbrirForm(TFRelCtasSetor, FRelCtasSetor, 0);
end;

procedure TFMenu.ExtratodePessoaFsica1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';   // cta receber
   FMenu.TIPOREL:='RELEXTRACTCLI'; // cta receber cliente
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.ExtratodePessoaJurdica1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTARECEBER', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CR';   // cta receber
   FMenu.TIPOREL:='RELEXTRACTPES_JUR'; // cta receber cliente
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.ReldeCaixaporPerodo1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCAIXA', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RCAIXAPERIODO';
   FMenu.TITULOREL:='Relatório de Movimentação de Caixa por Período';
   AbrirForm(TFRelMovCaixa, FRelMovCaixa, 0);
end;

procedure TFMenu.ReldeCaixaAgrupadoporData1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCAIXA', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='AGDATA';
   FMenu.TITULOREL:='Relatório de Caixa (Agrupados por data)';
   AbrirForm(TFRelCaixa, FRelCaixa, 0);
end;

procedure TFMenu.ReldeCaixaAgrupadoporCaixa1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCAIXA', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='AGCAIXA';
   FMenu.TITULOREL:='Relatório de Caixa (Agrupados por caixa)';
   AbrirForm(TFRelCaixa, FRelCaixa, 0);
end;

procedure TFMenu.ReldeResumodeCtasem1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If (ControlAccess('RCTAPAGAR', 'M')=False) AND (ControlAccess('RCTARECEBER', 'M')=False) Then
  		Exit;
	Try
     ImpRelCtaPR306090120;
   Except
     PComunica.Visible:=False;
   End;
end;

procedure TFMenu.ResumodeCtasem306090120120Dias1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If (ControlAccess('RCTAPAGAR', 'M')=False) AND (ControlAccess('RCTARECEBER', 'M')=False) Then
  		Exit;
   ImpRelResCtaPR306090120;
end;

procedure TFMenu.ReldeInadimplencias1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If (ControlAccess('RCTAPAGAR', 'M')=False) AND (ControlAccess('RCTARECEBER', 'M')=False) Then
  		Exit;

   FMenu.TIPOREL := 'INADIMPLENCIA';

   ImpRelResCtaPR306090120;
end;

procedure TFMenu.ResumoMensal2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If (ControlAccess('RCTAPAGAR', 'M')=False) AND (ControlAccess('RCTARECEBER', 'M')=False) Then
  		Exit;
   ImpRelCtaPRVencMes;
end;

procedure TFMenu.ReldosMovimentosporPreodo1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RMOVBANCOPERIODO';
   FMenu.TITULOREL:='Relatório de Movimentações Bancárias por Período';
   AbrirForm(TFRelMovBancoPeriodo, FRelMovBancoPeriodo, 0);

end;

procedure TFMenu.ReldeMovimentaes1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;
   AbrirForm(TFRelMovBanco, FRelMovBanco, 0);
end;

procedure TFMenu.ReldeChequesEmitidos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='CHEQUEREC';
   AbrirForm(TFRelChequeEmit, FRelChequeEmit, 0);
end;

procedure TFMenu.Relatriode1Click(Sender: TObject);
begin
   FMenu.TIPOREL:='REL_PLANOCONTAS';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFMenu.EstruturadeResultado1Click(Sender: TObject);
begin
   AbrirForm(TFRelEstrutResult, FRelEstrutResult, 0);
end;

procedure TFMenu.RelResumo1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='FRRESUMOVC';
   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ReldeProdutosVendidos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='FRFPRODVEND';
   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ReldeProdutoseServiosVendidos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='FRFPRODSERVVEND';
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFMenu.ReldeProdutoseServiosemConta1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='FRFPRODSERVVENDCTA';
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFMenu.RelComparativodeVendasAnual1Click(Sender: TObject);
begin
   FMenu.TIPOREL:='RESUMOANUAL';
 	DMESTOQUE.ALX.Close;
 	DMESTOQUE.ALX.SQL.Clear;
 	DMESTOQUE.ALX.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX.Open;
 	DMESTOQUE.ALX1.Close;
 	DMESTOQUE.ALX1.SQL.Clear;
 	DMESTOQUE.ALX1.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX1.Open;
 	DMESTOQUE.ALX2.Close;
 	DMESTOQUE.ALX2.SQL.Clear;
 	DMESTOQUE.ALX2.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX2.Open;
   FMenu.TIPOREL:='RESUMOANUAL';
   AbrirForm(TFRelGraficoLine, FRelGraficoLine, 0);
end;

procedure TFMenu.RelComparativode1Click(Sender: TObject);
begin
	FMenu.TIPOREL:='COMPVENDCOMP';
 	DMESTOQUE.ALX.Close;
 	DMESTOQUE.ALX.SQL.Clear;
 	DMESTOQUE.ALX.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX.Open;
 	DMESTOQUE.ALX1.Close;
 	DMESTOQUE.ALX1.SQL.Clear;
 	DMESTOQUE.ALX1.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX1.Open;
 	DMESTOQUE.ALX2.Close;
 	DMESTOQUE.ALX2.SQL.Clear;
 	DMESTOQUE.ALX2.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX2.Open;
	FMenu.TIPOREL:='COMPVENDCOMP';
   AbrirForm(TFRelGraficoLine, FRelGraficoLine, 0);
end;

procedure TFMenu.ReldeComparaodeComisses1Click(Sender: TObject);
begin
   FMenu.TIPOREL:='RESUMOANUAL';
 	DMESTOQUE.ALX.Close;
 	DMESTOQUE.ALX.SQL.Clear;
 	DMESTOQUE.ALX.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX.Open;
 	DMESTOQUE.ALX1.Close;
 	DMESTOQUE.ALX1.SQL.Clear;
 	DMESTOQUE.ALX1.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX1.Open;
 	DMESTOQUE.ALX2.Close;
 	DMESTOQUE.ALX2.SQL.Clear;
 	DMESTOQUE.ALX2.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX2.Open;
   FMenu.TIPOREL:='ACOMPCOMISVEND';
   AbrirForm(TFRelGraficoLine, FRelGraficoLine, 0);
end;

procedure TFMenu.Rel2Click(Sender: TObject);
begin
   FMenu.TIPOREL:='RESUMOANUAL';
 	DMESTOQUE.ALX.Close;
 	DMESTOQUE.ALX.SQL.Clear;
 	DMESTOQUE.ALX.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX.Open;
 	DMESTOQUE.ALX1.Close;
 	DMESTOQUE.ALX1.SQL.Clear;
 	DMESTOQUE.ALX1.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX1.Open;
 	DMESTOQUE.ALX2.Close;
 	DMESTOQUE.ALX2.SQL.Clear;
 	DMESTOQUE.ALX2.SQL.Add('Select * from tmp');
 	DMESTOQUE.ALX2.Open;
   FMenu.TIPOREL:='ACOMPPRODSERV';
   AbrirForm(TFRelGraficoLine03, FRelGraficoLine03, 0);
end;

procedure TFMenu.ReldeVendasporVendedor1Click(Sender: TObject);
begin
	FMenu.TIPOREL:='COMISVENDEDOR';
	AbrirForm(TFRelComissao, FRelComissao, 0);
end;

procedure TFMenu.Clientes1Click(Sender: TObject);
begin
   FMenu.TIPOREL:='RELCREDCLI';
   AbrirForm(TFRelClienteData, FRelClienteData, 0);
end;

procedure TFMenu.Fornecedores4Click(Sender: TObject);
begin
//  		Exit;
   FMenu.TIPOREL:='RELCREDFOR';
   AbrirForm(TFRelClienteData, FRelClienteData, 0);
end;

procedure TFMenu.RelatriodeCrdito1Click(Sender: TObject);
begin
   FMenu.TIPOREL:='RELCREDITO';
   AbrirForm(TFRelCaixa, FRelCaixa, 0);
end;

procedure TFMenu.PosioFinanceira2Click(Sender: TObject);
begin
     FMenu.TIPOREL:='POSFINANC';
     AbrirForm(TFRelCaixa, FRelCaixa, 0);
end;

procedure TFMenu.ReciboAvulso2Click(Sender: TObject);
begin
   FMenu.TIPOREL:='RECAVULSO';
   AbrirForm(TFRelCtaPR, FRelCtaPR, 0);
end;

procedure TFMenu.Gere1Click(Sender: TObject);
begin
	 //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELGERENCIALANALITICO';
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFMenu.GerencialSinttico1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELGERENCIALSINTETICO';
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFMenu.Rel1Click(Sender: TObject);
begin
	AbrirForm(TFRelGeralMovimentacoesFinanceiras, FRelGeralMovimentacoesFinanceiras, 0);
end;

procedure TFMenu.IconOrdemClick(Sender: TObject);
begin
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE' Then
       AbrirForm(TFOrdemMec, FOrdemMec, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'DESPACHANTE' Then
       AbrirForm(TFOrdemDesp, FOrdemDesp, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'PETSHOP' Then
       AbrirForm(TFOrdemPet, FOrdemPet, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'LOCAÇÃO' Then
       AbrirForm(TFOrdemLoca, FOrdemLoca, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'RETIFICA' Then
       AbrirForm(TFOrdemRetifica, FOrdemRetifica, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'GRAFICA' Then
       AbrirForm(TFOrdemGrafica, FOrdemGrafica, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'INDUSTRIA' Then
       AbrirForm(TFOrdemProduc, FOrdemProduc, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'MANUTENÇÃO' Then
       AbrirForm(TFOrdemAssitenciaTecnica, FOrdemAssitenciaTecnica, 0);

   If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'MANUTENÇÃO') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'DESPACHANTE') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'INDUSTRIA')  and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'PETSHOP')   and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'RETIFICA')   and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'LOCAÇÃO')   and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'GRAFICA') Then
       AbrirForm(TFOrdem, FOrdem, 0);
end;

procedure TFMenu.IconOrcamentoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;
    If DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString='MECANICA' Then
    Begin
      FORCAMENTOMAC.ShowModal;
    End
    Else
		if DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString = 'INDUSTRIA' Then
       	AbrirForm(TFOrcamento3, FOrcamento3, 0)
       else
    		AbrirForm(TFORCAMENTO, FORCAMENTO, 0);
end;

procedure TFMenu.IconVendaClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;
    If DMMACS.TLoja.FieldByName('VENDSALDONEG').AsString='2'
    Then Begin
		MessageDlg('Este Módulo esta bloqueado no sistema!', mtWarning, [mbOK], 0);
       Exit;
	 End;

    FMenu.XDevolucao:=False;
    FMenu.XRemessaGarantia:=False;
    FMenu.XSimplesRemessa:=False;
    FMenu.XOutrosFisc:=False;
    FMenu.XOutrosEnt:=False;
    FMenu.XNotaEntrada:=False;
    FMenu.XOutrosEntPropria := False;    
    AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
end;

procedure TFMenu.IconCompraClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADPEDCOMP', 'M')=False Then
  		Exit;
   FMenu.XOutrosEnt:=False;
   FMenu.XOutrosFisc:=False;
   FMenu.XOutrosEntPropria := False;
   AbrirForm(TFPEDCOMPRA, FPEDCOMPRA, 0);
end;

procedure TFMenu.IconCaixaClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('LANCX', 'M')=False Then
  		Exit;

    //VERIFICA SE O CAIXA ESTA ABERTO
    If DMCAIXA.VerifAbCaixa=False
    Then Begin
        Mensagem('A T E N Ç Ã O ', 'O Caixa escolhido não se encontra aberto. Para realizar a maioria das operações financeiras é obrigado que o caixa esteja aberto!', '', 1,1, false, 'a');
        Exit;
    End
    Else Begin
        AbrirForm(TFLancCaixa, FLancCaixa, 0);
    End;
end;

procedure TFMenu.IconEstoqueClick(Sender: TObject);
begin
    AbrirForm(TFPRODUTO, FPRODUTO, 0);
end;

procedure TFMenu.IconPagarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CP', 'M')=False Then
  		Exit;
	 FMenu.TIPOAUX:='NORMAL';
    AbrirForm(TFCtaPagar, FCtaPagar, 0);
end;

procedure TFMenu.IconReceberClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CR', 'M')=False Then
  		Exit;
    AbrirForm(TFCtaReceber, FCtaReceber, 0);
end;

procedure TFMenu.IconBancoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('MOVBANCO', 'M')=False Then
  		Exit;

    AbrirForm(TFMovBanco, FMovBanco, 0); 
end;

procedure TFMenu.IconClienteClick(Sender: TObject);
begin
    FMenu.TIPOREL:='';
    AbrirForm(TFCliente, FCliente, 0);
end;

procedure TFMenu.IconFornecedorClick(Sender: TObject);
begin
    AbrirForm(TFFornecedor, FFornecedor, 0);
end;

procedure TFMenu.IconTicketClick(Sender: TObject);
begin
    Try
       ShellExecute(Handle, 'Open', 'http://mzrsistemas.mysuite1.com.br/central.php', nil, nil, SW_SHOWNORMAL);
    Except
       MessageDlg('O Ticket de Suporte esta indisponível, entre em contato pelo e-mail suporte@mzrsistemas.com', mtWarning, [mbOK], 0);
    End; 
end;

procedure TFMenu.IconRemotoClick(Sender: TObject);
begin
     try
     	MessageDlg('O sistema poderá solicitar permissão para copiar o aplicativo de Suporte Remoto.'+#13+#10+'Para que tudo funcione corretamente, é necessário que permita essa solicitação.', mtWarning, [mbOK], 0);
         //Alex - 26/07/2014 - Verifica se o arquivo Suporte-MZR.exe existe
         if FileExists(ExtractFilePath(Application.ExeName)+'Suporte-MZR.exe') then
         begin
         		WinExec('Suporte-MZR.exe', SW_SHOW)
         end
         Else Begin
               If TransfFTP = True Then
          			WinExec('Suporte-MZR.exe', SW_SHOW)
         End;

     except
     	Mensagem(' A T E N Ç Ã O ', 'Ocorreram problemas ao tentar iniciar o programa de suporte!', '', 1,1, false, 'i');
     end;
end;

procedure TFMenu.IconChatClick(Sender: TObject);
begin
    Try
       ShellExecute(Handle, 'Open', 'http://mzrsistemas.com/index.html', nil, nil, SW_SHOWNORMAL);
		//ShellExecute(Handle,'http://www.mzrsistemas.com','http://www.mzrsistemas.com',nil,nil,SW_NORMAL);
//		ShellExecute(Handle,'open','www.mzrsistemas.com', '',nil,0);
    Except
       MessageDlg('O Chat de Suporte esta indisponível, entre em contato pelo e-mail suporte@mzrsistemas.com', mtWarning, [mbOK], 0);
    End;
end;

procedure TFMenu.PedidodeVenda2Click(Sender: TObject);
begin
	 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;
    If DMMACS.TLoja.FieldByName('VENDSALDONEG').AsString='2'
    Then Begin
		MessageDlg('Este Módulo esta bloqueado no sistema!', mtWarning, [mbOK], 0);
       Exit;
	 End;

    FMenu.XDevolucao:=False;
    FMenu.XRemessaGarantia:=False;
    FMenu.XSimplesRemessa:=False;
    FMenu.XOutrosFisc:=false;
    FMenu.XOutrosEnt:=False;
    FMenu.XComplementacao:=False;
    FMenu.XOutrosEntPropria := False;
    AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
end;

procedure TFMenu.SimplesRemessa2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;

   FMenu.XDevolucao:=False;
   FMenu.XSimplesRemessa:=True;
   FMenu.XRemessaGarantia:=False;
   FMenu.XOutrosFisc:=false;
	FMenu.XOutrosEnt:=False;
   FMenu.XComplementacao:=False;
   FMenu.XOutrosEntPropria := False;
   FMenu.XNfceReferenciada := False;   
   AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
   //após fechar o form, falseia a flag
   FMenu.XSimplesRemessa := False;
end;

procedure TFMenu.RemessaparaGarantia1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit; 
   FMenu.XDevolucao:=False;
   FMenu.XSimplesRemessa:=False;
   FMenu.XRemessaGarantia:=True;
   FMenu.XOutrosFisc:=false;
   FMenu.XOutrosEnt:=False;
   FMenu.XComplementacao:=False;
   FMenu.XOutrosEntPropria := False;
   FMenu.XNfceReferenciada := False;   
   AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
   //após fechar o form, falseia a flag
   FMenu.XRemessaGarantia := False;   
end;

procedure TFMenu.Devolues3Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;

   FMenu.XDevolucao:=True;
   FMenu.XSimplesRemessa:=False;
   FMenu.XRemessaGarantia:=False;
   FMenu.XLancAutoDev:=False;
   FMenu.XOutrosFisc:=False;
	FMenu.XOutrosEnt:=False;
   FMenu.XComplementacao:=False;
   FMenu.XOutrosEntPropria := False;
   FMenu.XNfceReferenciada := False;
   MessageDlg('Para emissão de NF-e de devolução use opção própria no pedido de compra.', mtWarning, [mbOK], 0);
   AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
   //após fechar o form, falseia a flag
   FMenu.XDevolucao:=False;
end;

procedure TFMenu.Outros3Click(Sender: TObject);
begin
	If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;

   FMenu.XDevolucao:=False;
   FMenu.XSimplesRemessa:=False;
   FMenu.XRemessaGarantia:=False;
   FMenu.XOutrosFisc:=true;
   FMenu.XOutrosEnt:=False;
   FMenu.XComplementacao:=False;
   FMenu.XOutrosEntPropria := False;
   FMenu.XNfceReferenciada := False;   

   AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
   //após fechar o form, falseia a flag   
   FMenu.XOutrosFisc := False;
end;

procedure TFMenu.NotaFiscalEletrnicaComplementar1Click(Sender: TObject);
begin
	//Paulo 30/11/2010: EFETUA CONTROLE DE ACESSO 
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;

   FMenu.XDevolucao:=False;
   FMenu.XSimplesRemessa:=False;
   FMenu.XRemessaGarantia:=False;
	FMenu.XOutrosEnt:=False;
   FMenu.XOutrosFisc:=false;
   FMenu.XComplementacao:=True;
   FMenu.XOutrosEntPropria := False;
   FMenu.XNfceReferenciada := False;   
   AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
   //após fechar o form, falseia a flag
   FMenu.XComplementacao := False;
end;

procedure TFMenu.abeladepreos2Click(Sender: TObject);
begin
      AbrirForm(TFPrecoServ , FPrecoServ, 0);
end;

procedure TFMenu.Oramentos2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;
   {If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE' Then
       AbrirForm(TFOrcamentoMac , FOrcamentoMac, 0)
   Else
		AbrirForm(TFORCAMENTO, FORCAMENTO, 0);}
    If DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString='MECANICA' Then
    	AbrirForm(TFORCAMENTOMAC, FORCAMENTOMAC, 0)
    Else
		if DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString = 'INDUSTRIA' Then
       	AbrirForm(TFOrcamento3, FOrcamento3, 0)
       else
    		AbrirForm(TFORCAMENTO, FORCAMENTO, 0);    
end;

procedure TFMenu.FaturarPedidos2Click(Sender: TObject);
begin
	MessageDlg('EM ATUALIZAÇÃO', mtWarning, [mbOK], 0);
   EXIT;
     //EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;
    FMenu.TIPOAUX:='FATPEDIDO';
    AbrirForm(TFFaturaPedidos, FFaturaPedidos, 0);  
end;

procedure TFMenu.CancelarFaturas2Click(Sender: TObject);
begin
	MessageDlg('EM ATUALIZAÇÃO', mtWarning, [mbOK], 0);
   EXIT;
   FMenu.TIPOAUX:='CANCELAFATURAVENDA';
   AbrirForm(TFFaturaPedidos, FFaturaPedidos, 0);
end;

procedure TFMenu.Licitaes2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;
    AbrirForm(TFLICITA, FLICITA, 0);
end;

procedure TFMenu.ProduoemLote2Click(Sender: TObject);
begin
	AbrirForm(TFProducaoLote, FProducaoLote, 0);
end;

procedure TFMenu.PedidosemXML2Click(Sender: TObject);
begin
    AbrirForm(TFExpImpXML , FExpImpXML, 0);
end;

procedure TFMenu.SintticoeOrdenado3Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDCLISINTORD';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.SintticoparaClientes1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDCLISINTPARACLIENTE';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.SintticoporFormadePagamento1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDFORMPAG';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.SintticoporClientes2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDCLISINTORD';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.AnalticoporClientes1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDCLIANALIT';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.SintticocommdiadeDias2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDCLISINTDIAS';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.RelatriodeProdutoseClientes1Click(Sender: TObject);
begin
   // relatorio de produtos e clientes
   AbrirForm(TFRelProdCli,FRelProdCli,0);
end;

procedure TFMenu.ProdutosVendidosporTributao2Click(Sender: TObject);
begin
   // relatorio de produtos e clientes
   FMenu.TIPOREL:='PERIODOPRODTRIBUTA';
   AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
end;

procedure TFMenu.RelatriodeDanfesdeVendas1Click(Sender: TObject);
begin
   // relatorio de produtos e clientes
   FMenu.TIPOREL:='RELDANFESINT';
   AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
end;

procedure TFMenu.RelatriodeCarregamentos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='FRFPRODVENDA_TotalProd';
   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.AnalticoporClienteseProdutos2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
	       
   FMenu.TIPOREL:='RELPEDCLIPROANALIT';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.AnalticodeProdutosVendidos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='FRFPRODVENDA_CLASS_PROD';
   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Analticocom1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELPEDCLIANALITDEV';
   FMenu.TIPOAUX:='VENDA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.ComissoporProduto2Click(Sender: TObject);
begin
   AbrirForm(TFRelComissaoProd, FRelComissaoProd, 0);
end;

procedure TFMenu.Vendasfaturadas2Click(Sender: TObject);
begin
   FMenu.TIPOAUX:='RELCOMISPEDV';
	AbrirForm(TFRelComisPedC, FRelComisPedC, 0);
end;

procedure TFMenu.Oramentos3Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELORC';
   FMenu.TIPOAUX:='ORCAMENTO';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.VendasporRegistro1Click(Sender: TObject);
begin
	FMenu.TIPOREL:='COMISSPV';
	AbrirForm(TFRelComissao, FRelComissao, 0);
end;

procedure TFMenu.ComissoporContasReceber1Click(Sender: TObject);
begin
   FMenu.TIPOREL:='COMISSCTR';
	AbrirForm(TFRelComissao, FRelComissao, 0);
end;

procedure TFMenu.PedidodeCompra1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADPEDCOMP', 'M')=False Then
  		Exit;
    FMenu.XOutrosEnt:=False;
    FMenu.XOutrosFisc:=False;
    FMenu.XOutrosEntPropria := False;    
    AbrirForm(TFPEDCOMPRA, FPEDCOMPRA, 0);
end;

procedure TFMenu.SolicitaodeCompra2Click(Sender: TObject);
begin
AbrirForm(TFSolicitarCompra, FSolicitarCompra, 0);
end;

procedure TFMenu.EntradasdeTerceiros2Click(Sender: TObject);
begin
If ControlAccess('CADPEDCOMP', 'M')=False Then
  		Exit;

    FMenu.XOutrosEnt:=true;
    FMenu.XOutrosEntPropria := False;    
    AbrirForm(TFPEDCOMPRA, FPEDCOMPRA, 0);
    //após fechar o form, falseia a flag
    FMenu.XOutrosEnt := False;
end;

procedure TFMenu.EntradascomEmissaoPrpria1Click(Sender: TObject);
begin
	If ControlAccess('CADPEDCOMP', 'M')=False Then
  		Exit;
	MessageDlg('A T E N Ç Ã O'+#13+#10+'Este tipo de entrada se utiliza de formulário da empresa '+DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString+' para emissão.', mtWarning, [mbOK], 0);
   FMenu.XOutrosEnt := True;
   FMenu.XNotaEntrada := True;
   FMenu.XDevolucao := False;
   FMenu.XOutrosEntPropria := False;
   AbrirForm(TFPEDCOMPRA, FPEDCOMPRA, 0);
   //após fechar o form, falseia a flag
   FMenu.XOutrosEnt := False;
   FMenu.XNotaEntrada := False;
end;

procedure TFMenu.DevoluesdeVenda1Click(Sender: TObject);
begin
	If ControlAccess('CADPEDCOMP', 'M')=False Then
   	Exit;
	MessageDlg('A T E N Ç Ã O'+#13+#10+'Para gerar uma NF-e de Devolução de Venda por favor usar função especifica no Pedido de Venda ou Ordem de Serviço.', mtWarning, [mbOK], 0);
   FMenu.XOutrosEnt := True;
   FMenu.XNotaEntrada := True;
   FMenu.XDevolucao := True;
   FMenu.XOutrosEntPropria := False;
   AbrirForm(TFPEDCOMPRA, FPEDCOMPRA, 0);
   //após fechar o form, falseia a flag
   FMenu.XOutrosEnt := False;
   FMenu.XNotaEntrada := False;
   FMenu.XDevolucao := False;  
end;

procedure TFMenu.CancelarFatura1Click(Sender: TObject);
begin
    FMenu.TIPOAUX:='CANCELAFATURA';
    AbrirForm(TFFaturaPedidos, FFaturaPedidos, 0);
end;

procedure TFMenu.AnalticoporFornecedor1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RELPEDFORANALIT';
   FMenu.TIPOAUX:='COMPRA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.AnalticodeprodutosComprados1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='FRFPRODCOMPRA_CLASS_PROD';
   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.SintticoporfornecedorcomObservaes1Click(Sender: TObject);
begin
	FMenu.TIPOREL := 'PEDCOBS';
   AbrirForm(TFRelMecanica,FRelMecanica,0); 
end;

procedure TFMenu.Comisso1Click(Sender: TObject);
begin
   FMenu.TIPOAUX:='RELCOMISPEDC';
	AbrirForm(TFRelComisPedC, FRelComisPedC, 0);
end;

procedure TFMenu.Sinttico2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RELPEDFORDEVSINTORD';
   FMenu.TIPOAUX:='COMPRA';
   AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFMenu.Produtos1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RPEDCOMP', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='FRFPRODCOMPRA_DEV_CLASS_PROD';
   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.RelatriodeDanfesdeEntrada1Click(Sender: TObject);
begin
   If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
   Then Begin
       //Paulo 06/12/2011: relatorio de notas emitidas com produtos
       FMenu.TIPOREL:='RELDANFEENTRADASINTPROD';
       AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
   end
   else begin
      // relatorio de produtos e clientes
       FMenu.TIPOREL:='RELDANFEENTRADASINT';
       AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
   end;
end;

procedure TFMenu.CadastrarProdutos1Click(Sender: TObject);
begin
    AbrirForm(TFPRODUTO, FPRODUTO, 0);
end;

procedure TFMenu.Cadastrargrupo1Click(Sender: TObject);
begin
    FMENU.TIPOAUX:='PRODUTO';
    AbrirForm(TFCadGrupo, FCadGrupo, 0);
end;

procedure TFMenu.CadastrarSubGrupo1Click(Sender: TObject);
begin
    FMENU.TIPOAUX:='PRODUTO';
    AbrirForm(TFCadSubGrupo, FCadSubGrupo, 0);	
end;

procedure TFMenu.CstCsosn1Click(Sender: TObject);
begin
	AbrirForm(TFCadCst, FCadCst, 1)
end;

procedure TFMenu.Unidades1Click(Sender: TObject);
begin
    AbrirForm(TFCadUnidade, FCadUnidade, 0);
end;

procedure TFMenu.ConversoUnitria1Click(Sender: TObject);
begin
    AbrirForm(TFConvertUnid, FConvertUnid, 0);
end;

procedure TFMenu.CFOP2Click(Sender: TObject);
begin
    AbrirForm(TFCadCFOP, FCadCFOP, 0);
end;

procedure TFMenu.aTUALIZARvALORES1Click(Sender: TObject);
begin
    AbrirForm(TFAtualizaValores, FAtualizaValores, 0);
end;

procedure TFMenu.EntradasparaCorreo1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ACERTESTOQUE', 'M')=False Then
  		Exit;

    AbrirForm(TFLancEnt, FLancEnt, 0);
end;

procedure TFMenu.SadasparaCorreo1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ACERTESTOQUE', 'M')=False Then
  		Exit;

    AbrirForm(TFLancSai, FLancSai, 0);
end;

procedure TFMenu.FichaTcnica3Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ACEFCHTECPROD', 'M')=False Then
  		Exit;
end;

procedure TFMenu.LanamentosdeEntrada2Click(Sender: TObject);
begin
   if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'SEMENTES'
   then begin
      FMenu.TIPOREL:='LANCENTLOTE';
   end
   else begin
      FMenu.TIPOREL:='LANCENT';
   end;

   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.LanamentosdeSada1Click(Sender: TObject);
begin
   if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'SEMENTES'
   then begin
      FMenu.TIPOREL:='LANCSAILOTE';
   end
   else begin
      FMenu.TIPOREL:='LANCSAI';
   end;

   AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Etiquetas2Click(Sender: TObject);
begin
   FMenu.TIPOREL:='ETBARRA';
   AbrirForm(TFRELETIQESTOQUE, FRELETIQESTOQUE, 0);
end;

procedure TFMenu.CurvaABC2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='CURVAABC';
    AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFMenu.InventriodeEstoque2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELINVENTEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='INVEST';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ListadeProdutosporTributao2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELINVENTEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='RELTRIBUTA';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Posiodeestoque2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='POSEST';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ListagemdeEstoque1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LISTEST';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ListadeClassificaodeProdutos1Click(Sender: TObject);
begin
	 FMenu.TIPOREL:='CLASSPROD';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Listadepreos2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LISTPREC';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ListadepreosComplesta1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LISTPRECCOMP';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ListadepreoscomValoresdeAtacado2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
    FMenu.XTIPOBOLTO:='ATACADO';
	 FMenu.TIPOREL:='LISTPRECCOMP';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
    FMenu.XTIPOBOLTO:='';
end;

procedure TFMenu.ListadePreosemDuasColunas1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LSTPRECO2COLUNAS';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ListadeVendas2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LSTESTPEDCLI';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Listade1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LSTESTPEDCLIDESCCUPOM';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ListaparaContagem2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='LISTACONTAGEM';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.Loteevencimento2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='IMPRELLOTE';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.EstoqueCalculado2Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='ESTCALC';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.EstoqueMnimo1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='ESTMAXMIN';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.EsportarparaXML1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:=' ';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.GradeeProduto1Click(Sender: TObject);
begin
	 FMenu.TIPOREL:='ENTXSAI';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.ProdutosComercializadosporMs1Click(Sender: TObject);
begin
	 FMenu.TIPOREL:='ENTXSAIMENS';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;



procedure TFMenu.IconAtualizarClick(Sender: TObject);
var
  DirApp, PathNeo: string;
begin
	try
  		DirApp := ExtractFilePath(Application.ExeName);
    	PathNeo := DirApp + 'Neo.zip';
  		{conexao com o servidor}
  		FTP.Disconnect;
  		FTP.Host := 'ftp.mzrsistemas.com';
  		FTP.Port := 21;
  		FTP.Username := 'mzrsistemas01';
  		FTP.Password := 'ecg879bd';
  		FTP.Passive := true;
  		FTP.Connect;
              
       //Edmar - 26/05/2015 - Se as DLLs não estiverem junto com o executável fazer o download do ftp
       if not FileExists('DelZip64.dll') then
       	FTP.Get('downloads/Zion/Atualizacao/Atualizador/DelZip64.dll', DirApp+'DelZip64.dll', true);

       if not FileExists('DelZip190.dll') then
       	FTP.Get('downloads/Zion/Atualizacao/Atualizador/DelZip190.dll', DirApp+'DelZip190.dll', true);

  		{download}
  		FTP.Get('downloads/Zion/Atualizacao/Atualizador/Neo.zip', PathNeo, true);
  		{desconecta com o servidor}
  		FTP.Disconnect;
  		{descompactar}
  		{ZipMaster.FSpecArgs.Clear;
  		ZipMaster.FSpecArgs.Add('*.*');
  		ZipMaster.Active := true;
  		ZipMaster.ZipFileName := PathNeo;   //Origem arquivo zipado
  		ZipMaster.ExtrBaseDir := DirApp;    //destino arquivo descompactado
  		ZipMaster.Extract;}
    	{executar atualizador}
    	WinExec(PChar(DirApp + 'Neo.exe'), SW_SHOW);
  		{encerrar Zion}
		Close;            
	except
   	on E: Exception do
       	ShowMessage(' Falhamos ao fazer o download do atualizador.'+#13#10+E.Message);
	end;
end;

procedure TFMenu.Expedio1Click(Sender: TObject);
begin
  AbrirForm(TFExpVenda, FExpVenda,0);
end;

procedure TFMenu.ValidaodeversodoSistema1Click(Sender: TObject);
begin
   TestaValidaSistema;
end;

procedure TFMenu.Button1Click(Sender: TObject);
begin
   FMenu.Activate();
end;

procedure TFMenu.IconAjudaClick(Sender: TObject);
begin
    Try
       AbrirForm(TFAjuda, FAjuda, 0);
    Except
       MessageDlg('Falha ao iniciar o painel de ajuda.', mtWarning, [mbOK], 0);
    End;
end;

procedure TFMenu.ContagemdeEstoque1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   if ControlAccess('ACERTESTOQUE', 'M')=False Then
   	Exit;
       
	AbrirForm(TFContagemEstoque, FContagemEstoque, 0);
end;

procedure TFMenu.OutrasEntradascomEmissoPrpria1Click(Sender: TObject);
begin
	//
	if not ControlAccess('CADPEDCOMP', 'M') then
   	Exit;
	MessageDlg('A T E N Ç Ã O'+#13+#10+'Este tipo de entrada se utiliza de formulário da empresa '+DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString+' para emissão.', mtWarning, [mbOK], 0);
   FMenu.XOutrosEnt := True;
   FMenu.XNotaEntrada := True;
   FMenu.XOutrosEntPropria := True;
   FMenu.XDevolucao := False;
   FMenu.XNfceReferenciada := False;
   AbrirForm(TFPEDCOMPRA, FPEDCOMPRA, 0);
   //após fechar o form, falseia a flag
   FMenu.XOutrosEnt := False;
   FMenu.XNotaEntrada := False;
   FMenu.XOutrosEntPropria := False;
end;

procedure TFMenu.NFCereferenciada1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;

   FMenu.XDevolucao:=False;
   FMenu.XSimplesRemessa:=False;
   FMenu.XRemessaGarantia:=False;
   FMenu.XLancAutoDev:=False;
   FMenu.XOutrosFisc:=False;
	FMenu.XOutrosEnt:=False;
   FMenu.XComplementacao:=False;
   FMenu.XOutrosEntPropria := False;
   FMenu.XNfceReferenciada := True;

   AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
   //após fechar o form, falseia a flag
   FMenu.XNfceReferenciada := False;
end;

procedure TFMenu.Arquivosparacontabilidade1Click(Sender: TObject);
begin
   //Edmar - 06/12/2016
   FMenu.TIPOREL := 'CONTABILIDADE';
   AbrirForm(TFRelPeriodoFiscal, FRelPeriodoFiscal, 0);
end;

procedure TFMenu.ListadeProdutosClassificados1Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RFINEST', 'M')=False Then
  		Exit;
	 FMenu.TIPOREL:='POSEST2';
    AbrirForm(TFRelEstoque, FRelEstoque, 0);
end;

procedure TFMenu.PosiodeEstoque4casas1Click(Sender: TObject);
begin
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('  select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.SQL.Add('   subproduto.contrint AS PRIMCOD, subproduto.est_permanente, subproduto.codprodfabr AS SEGCOD, subproduto.localestante AS LOCAL, unidade.sigla_unid, ');
   DMESTOQUE.TRel.SQL.Add('   estoque.estfisico, estoque.estoque4casas, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.vlrunitcomp as valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add('   produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add('   from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add('   left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
   DMESTOQUE.TRel.SQL.Add('   left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add('   left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add('   left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add('    WHERE (subproduto.ativo=''S'')  and (estoque.estoque4casas is not null) ');
   DMESTOQUE.TRel.SQL.Add('   order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.marca, subproduto.descricao ');
   DMESTOQUE.TRel.Open;
   If not DMESTOQUE.TRel.IsEmpty
   Then Begin
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPosEstoque4Casas_Class.frf');
      FSRel.ShowReport;
   End;
end;

procedure TFMenu.VerificarservicepackeNetframework1Click(Sender: TObject);
var
  OSVersionInfo: TOSVersionInfo;
  Reg: TRegistry;
  xResult: String;
begin
   OSVersionInfo.dwOSVersionInfoSize := SizeOf(OSVersionInfo);
   if GetVersionEx(OSVersionInfo) then
       with OSVersionInfo do
       begin
           Win32Platform := dwPlatformId;
           Win32MajorVersion := dwMajorVersion;
           Win32MinorVersion := dwMinorVersion;
           if Win32Platform = VER_PLATFORM_WIN32_WINDOWS then
               Win32BuildNumber := dwBuildNumber and $FFFF
           else
               Win32BuildNumber := dwBuildNumber;
           Win32CSDVersion := szCSDVersion;
       end;

   Reg := TRegistry.Create(KEY_READ);
   try
       Reg.RootKey := HKEY_LOCAL_MACHINE;
       if (Reg.KeyExists('SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full\')) then
       begin
           Reg.OpenKeyReadOnly('SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full\');
           xResult := Reg.ReadString('Version');
           if xResult = '' then
           begin
              Reg.CloseKey;
              Reg.OpenKeyReadOnly('SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full\Client');
              xResult := Reg.ReadString('Version');
           end;
       end;
   finally
       Reg.Free;
   end;
   
   //ShowMessage('Windows '+Win32CSDVersion+#13+'.Net Framework '+xResult);
   if ((Win32MajorVersion = 6) and (Win32MinorVersion = 1)) then
       ShowMessage('Windows 7 '+Win32CSDVersion+' e .NET Framework '+xResult)
   else
   if (Win32CSDVersion = '') then
       ShowMessage('Service pack OK e .NET Framework '+xResult)
   else
       ShowMessage(Win32CSDVersion+' e .NET Framework '+xResult);
end;

End.
