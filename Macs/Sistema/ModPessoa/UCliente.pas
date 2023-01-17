unit UCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoPes, TFlatHintUnit, TFlatEditUnit, StdCtrls,
  Grids, DBGrids, ComCtrls, Mask, DBCtrls, DBColorEdit,
  TFlatTabControlUnit, ExtCtrls, FashionPanel, Buttons, jpeg, Menus,
  ColorMaskEdit, UFrmBusca, Qrctrls, QuickRpt,
  TFlatCheckBoxUnit, DBColorComboBox, DrLabel, FR_DSet, FR_DBSet, FR_Class,
  RpDefine, RpBase, RpSystem, xmldom, XMLIntf, msxmldom, XMLDoc,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Math,
  frxClass, frxDBSet,
  cxControls, cxContainer, cxEdit, cxTextEdit,
  ActnList;

type
  TFCliente = class(TFCadPadraoPes)
    GroupBox9: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DALUG: TDBColorEdit;
    DRESID: TDBColorEdit;
    DVEIC: TDBColorEdit;
    DFAM: TDBColorEdit;
    Label44: TLabel;
    OUTDESP: TDBColorEdit;
    GroupBox10: TGroupBox;
    LIMCRED: TDBColorEdit;
    BitBtn1: TBitBtn;
    Aniversrio1: TMenuItem;
    QRAniver: TQuickRep;
    QRBand13: TQRBand;
    QRLabel24: TQRLabel;
    QRSysData7: TQRSysData;
    QRSysData8: TQRSysData;
    QRDBText20: TQRDBText;
    QRLIntervalo: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRBand14: TQRBand;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRBand15: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape12: TQRShape;
    QRBand16: TQRBand;
    QRShape13: TQRShape;
    PAniversario: TPanel;
    FashionPanel2: TFashionPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox4: TGroupBox;
    CBMes: TComboBox;
    Shape3: TShape;
    Shape5: TShape;
    Shape6: TShape;
    FichaOtica1: TMenuItem;
    PFichaOtica: TPanel;
    Panel5: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    Shape7: TShape;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Shape8: TShape;
    Label56: TLabel;
    Label57: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Label58: TLabel;
    DBEsferLOD: TDBColorEdit;
    DBColorEdit37: TDBColorEdit;
    DBColorEdit38: TDBColorEdit;
    DBColorEdit39: TDBColorEdit;
    DBColorEdit40: TDBColorEdit;
    DBColorEdit41: TDBColorEdit;
    DBColorEdit42: TDBColorEdit;
    DBColorEdit43: TDBColorEdit;
    DBColorEdit44: TDBColorEdit;
    DBColorEdit45: TDBColorEdit;
    DBColorEdit10: TDBColorEdit;
    DBColorEdit14: TDBColorEdit;
    DBColorEdit27: TDBColorEdit;
    DBColorEdit30: TDBColorEdit;
    DBColorEdit31: TDBColorEdit;
    DBColorEdit32: TDBColorEdit;
    DBColorEdit33: TDBColorEdit;
    DBColorEdit34: TDBColorEdit;
    DBColorEdit35: TDBColorEdit;
    DBColorEdit46: TDBColorEdit;
    DBColorEdit51: TDBColorEdit;
    DBServOt: TDBGrid;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    DBColorEdit36: TDBColorEdit;
    GroupBox8: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    SALCONJ: TDBColorEdit;
    SALCLI: TDBColorEdit;
    HONPROF: TDBColorEdit;
    OUTREC: TDBColorEdit;
    Label16: TLabel;
    Label18: TLabel;
    GroupBox11: TGroupBox;
    DBMemo1: TDBMemo;
    btnEquip: TBitBtn;
    FrmVendedor: TFrmBusca;
    RBCliente: TRadioButton;
    RBConjuge: TRadioButton;
    QRAniverConj: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRBand4: TQRBand;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    GroupBox12: TGroupBox;
    DBMemo2: TDBMemo;
    Label46: TLabel;
    DBColorEdit48: TDBColorEdit;
    FichadeInformaes1: TMenuItem;
    CBATUALIZAR: TCheckBox;
    Label47: TLabel;
    LUsuarioAltera: TLabel;
    QRDBText8: TQRDBText;
    CBINATIVO: TCheckBox;
    Label50: TLabel;
    DBColorEdit49: TDBColorEdit;
    DBColorEdit50: TDBColorEdit;
    Label59: TLabel;
    FrmFormPag: TFrmBusca;
    Label60: TLabel;
    CBAtacadista: TCheckBox;
    PHistorico: TPanel;
    MResumo: TMemo;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DRLabel1: TDRLabel;
    DRLabel2: TDRLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox14: TGroupBox;
    DBColorEdit53: TDBColorEdit;
    RGFiltro: TRadioGroup;
    MenuSeparar: TPopupMenu;
    Separar1: TMenuItem;
    Juntar1: TMenuItem;
    Extratodecontas1: TMenuItem;
    FSRel: TfrReport;
    FDSCaixa: TfrDBDataSet;
    Label19: TLabel;
    DBColorEdit11: TDBColorEdit;
    DBColorEdit52: TDBColorEdit;
    Label62: TLabel;
    DBColorEdit54: TDBColorEdit;
    LTextoBusca: TLabel;
    Label63: TLabel;
    DBColorEdit55: TDBColorEdit;
    SCPC1: TMenuItem;
    cbscpc: TCheckBox;
    Label64: TLabel;
    DBColorEdit56: TDBColorEdit;
    DBInformacao: TDBColorEdit;
    LInformacao: TLabel;
    DBColorEdit57: TDBColorEdit;
    Label65: TLabel;
    GroupBox13: TGroupBox;
    DBColorEdit58: TDBColorEdit;
    MOrdem: TMemo;
    DRLabel3: TDRLabel;
    DBGrid5: TDBGrid;
    BitBtn7: TBitBtn;
    DRLabel4: TDRLabel;
    LMedia: TDRLabel;
    CBSimplesNacional: TCheckBox;
    RVRel: TRvSystem;
    FrmTransp: TFrmBusca;
    CBFinanceiro: TCheckBox;
    LQtdCli: TLabel;
    Label100: TLabel;
    DBColorEdit59: TDBColorEdit;
    cbIndustria: TCheckBox;
    DBColorEdit60: TDBColorEdit;
    Label61: TLabel;
    RelatriodeVendas1: TMenuItem;
    PRel: TPanel;
    LTituloRel: TLabel;
    BtGeraRel: TBitBtn;
    BtCanRel: TBitBtn;
    GBData: TGroupBox;
    LDtIni: TLabel;
    LDtFim: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    RGPessoa: TRadioGroup;
    GroupBox16: TGroupBox;
    DBMemo3: TDBMemo;
    GroupBox17: TGroupBox;
    DBMemo4: TDBMemo;
    RelatriodeCadastros1: TMenuItem;
    FrmCidade: TFrmBusca;
    RelatrioporCidade1: TMenuItem;
    AlteraFisicaJuridica2: TMenuItem;
    Label66: TLabel;
    DBColorEdit61: TDBColorEdit;
    Label67: TLabel;
    DBColorEdit62: TDBColorEdit;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    MarcarDesmarcar1: TMenuItem;
    MarcarDesmarcarTodos1: TMenuItem;
    PEtqMala: TPanel;
    EtiquetaMalaDireta1: TMenuItem;
    FSMalaDireta: TfrReport;
    FDSMalaDireta: TfrDBDataSet;
    QREtiqMalaDireta: TQuickRep;
    QRBand6: TQRBand;
    QRDBText11: TQRDBText;
    LbQEndereco: TQRLabel;
    LbQBairro: TQRLabel;
    FashionPanel6: TFashionPanel;
    FrmBuscaNome: TFrmBusca;
    FrmBuscaCid: TFrmBusca;
    Label70: TLabel;
    CBBAIRROETIQ: TComboBox;
    FrmBuscaUF: TFrmBusca;
    cbClienteSelecionado: TCheckBox;
    GroupBox15: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    EdLinha: TEdit;
    EdMargem: TEdit;
    EdAltura: TEdit;
    EdLargura: TEdit;
    EdFonte: TEdit;
    BtnImpEtq: TBitBtn;
    BitBtn8: TBitBtn;
    ContFrequencia: TCheckBox;
    Label69: TLabel;
    EdFreqVenda: TEdit;
    Label76: TLabel;
    PListaCliente: TPanel;
    FashionPanel3: TFashionPanel;
    BtCancCli: TBitBtn;
    GroupBox18: TGroupBox;
    Label77: TLabel;
    Label78: TLabel;
    EdDtInicial: TMaskEdit;
    EdDtFinal: TMaskEdit;
    GroupBox19: TGroupBox;
    FrmBuscaCliInicial: TFrmBusca;
    FrmBuscaCliFinal: TFrmBusca;
    BtImpCli: TBitBtn;
    FSVendaCli: TfrReport;
    FDSVendaCli: TfrDBDataSet;
    Vendas1: TMenuItem;
    btLimpaData: TBitBtn;
    cbVendaVista: TCheckBox;
    LbQCidade: TQRLabel;
    LbQCep: TQRLabel;
    DesmarcarTodos1: TMenuItem;
    lbCreditoCli: TLabel;
    PTabelaPreco: TPanel;
    Label79: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    btnnovatabela: TBitBtn;
    PNovaTabela: TPanel;
    FashionPanel4: TFashionPanel;
    EdNovaTabela: TEdit;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    DBColorEdit63: TDBColorEdit;
    Label80: TLabel;
    cbTxEntrega: TCheckBox;
    DBEMAILPADRAO: TDBColorEdit;
    lbEmailPadrao: TLabel;
    CBContribuinte: TCheckBox;
    CbContribuinteIcms: TComboBox;
    Label81: TLabel;
    RvMalaDireta: TRvSystem;
    DBTelPrincipal: TDBColorEdit;
    Label82: TLabel;
    BtnObra: TButton;
    EdRazaoSocial: TFlatEdit;
    Label83: TLabel;
    Shape4: TShape;
    btnhelp: TBitBtn;
    edctacontclipj: TDBColorEdit;
    labelctacontclipj: TLabel;
    edctacontclipf: TDBColorEdit;
    labelctacontclipf: TLabel;
    RelatriodeCrdito1: TMenuItem;
    FREL: TfrxReport;
    FDBREL: TfrxDBDataset;
    AnexarDocumentos1: TMenuItem;
    Documentos1: TMenuItem;
    AbrirPasta1: TMenuItem;
    EdQtdeEtqPagina: TEdit;
    Label84: TLabel;
    ActionList1: TActionList;
    actSearchCNPJ: TAction;
    btnBuscaCnpj: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure TCPessoaTabChanged(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Aniversrio1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FichaOtica1Click(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure DBServOtCellClick(Column: TColumn);
    procedure DBServOtKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure btnEquipClick(Sender: TObject);
    procedure FrmVendedorBTNMINUSClick(Sender: TObject);
    procedure FrmVendedorBTNOPENClick(Sender: TObject);
    procedure FrmVendedorEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FichadeInformaes1Click(Sender: TObject);
    procedure Sinttico1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmBusca2BTNOPENClick(Sender: TObject);
    procedure FrmFormPagBTNMINUSClick(Sender: TObject);
    procedure FrmFormPagEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure RGFiltroClick(Sender: TObject);
    procedure Separar1Click(Sender: TObject);
    procedure Juntar1Click(Sender: TObject);
    procedure Extratodecontas1Click(Sender: TObject);
    procedure SCPC1Click(Sender: TObject);
    procedure cbscpcClick(Sender: TObject);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BitBtn7Click(Sender: TObject);
    procedure FrmTabelaBTNOPENClick(Sender: TObject);
    procedure FrmTabelaBTNMINUSClick(Sender: TObject);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdCpfEnter(Sender: TObject);
    procedure EdCpfExit(Sender: TObject);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCpfKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RVRelPrint(Sender: TObject);
    procedure FrmTransBTNOPENClick(Sender: TObject);
    procedure FrmTransEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure cbIndustriaClick(Sender: TObject);
    procedure DBColorEdit60KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RelatriodeVendas1Click(Sender: TObject);
    procedure BtGeraRelClick(Sender: TObject);
    procedure BtCanRelClick(Sender: TObject);
    procedure RelatriodeCadastros1Click(Sender: TObject);
    procedure RelatrioporCidade1Click(Sender: TObject);
    procedure FrmCidadeBTNOPENClick(Sender: TObject);
    procedure AlteraFisicaJuridica2Click(Sender: TObject);
    procedure DBGridClienteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MarcarDesmarcar1Click(Sender: TObject);
    procedure MarcarDesmarcarTodos1Click(Sender: TObject);
    procedure PConsultaExit(Sender: TObject);
    procedure EtiquetaMalaDireta1Click(Sender: TObject);
    procedure BtnImpEtqClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FrmBuscaNomeBTNOPENClick(Sender: TObject);
    procedure FrmBuscaNomeBTNMINUSClick(Sender: TObject);
    procedure FrmCidadeBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaCidBTNOPENClick(Sender: TObject);
    procedure FrmBuscaUFBTNOPENClick(Sender: TObject);
    procedure FrmBuscaCidBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaUFBTNMINUSClick(Sender: TObject);
    procedure DBBuscaBairroExit(Sender: TObject);
    procedure cbClienteSelecionadoExit(Sender: TObject);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QREtiqMalaDiretaBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure BtImpCliClick(Sender: TObject);
    procedure FrmBuscaCliInicialBTNOPENClick(Sender: TObject);
    procedure FrmBuscaCliFinalBTNOPENClick(Sender: TObject);
    procedure FrmBuscaCliInicialBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaCliFinalBTNMINUSClick(Sender: TObject);
    procedure BtCancCliClick(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure btLimpaDataClick(Sender: TObject);
    procedure FrmTranspBTNMINUSClick(Sender: TObject);
    procedure DBCPFExit(Sender: TObject);
    procedure DesmarcarTodos1Click(Sender: TObject);
    procedure DBGridCadastroPadraoCellClick(Column: TColumn);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnnovatabelaClick(Sender: TObject);
    procedure RvMalaDiretaPrint(Sender: TObject);
    procedure RvMalaDiretaBeforePrint(Sender: TObject);
    procedure BtnObraClick(Sender: TObject);
    procedure EdRazaoSocialEnter(Sender: TObject);
    procedure EdRazaoSocialExit(Sender: TObject);
    procedure EdRazaoSocialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdRazaoSocialKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnhelpClick(Sender: TObject);
    procedure RelatriodeCrdito1Click(Sender: TObject);
    procedure BtnAnexarDocClick(Sender: TObject);
    procedure AnexarDocumentos1Click(Sender: TObject);
    procedure AbrirPasta1Click(Sender: TObject);
    procedure actSearchCNPJExecute(Sender: TObject);
    procedure actSearchCNPJUpdate(Sender: TObject);
    procedure btnBuscaCnpjClick(Sender: TObject);
    procedure DBCnpjExit(Sender: TObject);

  private
    { Private declarations }

    procedure RelMalaDiretaRave;
    procedure LocalizaUltCli;
    // localiza o ultimo cliente cadastrado e insere seu codigo interno na Hint
    procedure contadorCli;
    // - 27/03/2009: conta quantidade de clientes exibidos na grid

  public
    { Public declarations }
    procedure FiltraServot;
    //procedure utilizada para filtrar produtos e servot referente ao cliente
    procedure GeraHist;
    //Procedure responsavel por montar um historico do cliente
  //SQL PARA RELATORIOS DE CTAS A RECEBER
    procedure ImpExtrato; //SQL PARA RELATORIOS DE CTAS A RECEBER
    // imprimi historico do cliente sobre pedido de venda
    procedure Imprime_Historico;
    // Imprimi arquivo com dados da tabela pedido de venda
    procedure Historico_PedVenda;
    // Imprimi dados da tabela ordem de servi�o no memo
    procedure Historico_OS;
    // imprimi no arquivo dados da tabela ordem de servico
    procedure ImpArquivo_OS;
    // retorna a media de dias em atraso nas contas
    function RetornaMediaAtraso: string;
    //- 19/02/2009: procedimento que buscar� todos os dados da empresa para gerar relat�rio no RAVE
    procedure buscadados;
    //- 19/02/2009: impress�o do rave (componente, linha, coluna, texto, fonte, tamanho, cor)
    procedure Imprime(RVRel: TRVSystem; Linha: Double; Coluna: Double; Texto:
      string; Fonte: string; TamFonte: Integer; CorFonte: TColor; Tipo: Boolean);
    //- 19/02/2009: imprime uma linha para melhor visualiza��o dos dados no RAVE
    procedure linha(x: Integer; tipo: Boolean);
    //- 19/02/2009: busca dados do cliente para gerar relat�rio no RAVE
    procedure buscacliente;
    //- 19/02/2009: busca dados da primeira venda, ultima venda, media de dias de atraso
    procedure informacoescli(tipo: string; inf: string);
    //- 20/02/2009: compara se ja chegou no final da p�gina e seta a impress�o para uma nova
    procedure compara;
    //- 20/02/2009: imprime cabecalho em cada nova pagina
    procedure cabecalho;
    //- 20/02/2009: busca informa��es de venda
    procedure GeraInformacoes;
    //Procedure Para selecionar todas as tabelas de pre�o disponiveis
    procedure SelecionaTabelaPreco;
    //Angelo - 18/06/2015 - Define a ordem de tabula��o dinamicamente
    procedure DefineTabOrder;
  end;

var
  FCliente: TFCliente;
  XCOD_VENDEDOR: Integer;
  XCodFormPag: Integer;
  xcontlin, xindice: Integer;
  xOrigem: string;

  //- 19/02/2009: vari�veis que armazenam quantidade, soma, media, data de parcelas, pedidos
  x1, x2, x3, x4, x5, x6, descforma1, descforma2: string;
  // - 20/02/2009: e outras informa��es do cliente para relat�rio do RAVE
  auxlinha, xrel: Integer;
  // - 20/02/2009: vari�vel para controlar linha de impress�o e quantidade de itens comprados pelo cliente
  somaitens, somaserv, itens, serv: Real;
  // - 20/02/2009: vari�vel que acumula o valor total dos itens comprados pelo cliente
  XCOD_TRANSP: Integer; // - 20/02/2009: c�digo da transportadora do cliente
  XcodNome, XcodCid: Integer;
  XcodEst, Xbairro: string;

  XCODCLIINI, XCODCLIFIM: Integer;
  //Paulo 28/07/2011: variaveis para impress�o do rel de vendas dos clientes

implementation

uses AlxMessage, Alxor32, UDMPessoa, UDMMacs, UMenu, URelPadraoPes,
  UCadSubgrupo, UCadEquipamento, UFuncionario, UCadPadrao, UDMFinanc,
  UFormPag, DB, UPedVenda, UCtaReceber, UPadrao, UDMConta, UDmServ,
  UDMSaida, UExpImp, UDMEstoque, ShellAPI, UPrecoServ, IBQuery,
  UDMGEOGRAFIA, DateUtils, UFORNECEDOR, UCadCidade, UCadEstado, UMDO, DBClient;

{$R *.DFM}

//Procedure Para selecionar todas as tabelas de pre�o disponiveis
procedure TFCliente.SelecionaTabelaPreco;
begin
  try
    DMServ.TTabPreco.Close;
    DMServ.TTabPreco.SQL.clear;
    DMServ.TTabPreco.SQL.Add(' Select * from Tabela_preco');
    DMServ.TTabPreco.Open;
  except
  end;
end;

procedure TFCliente.LocalizaUltCli;
// localiza o ultimo cliente cadastrado e insere seu codigo interno na Hint
begin
  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add(' select * from cliente order by cliente.cod_cliente desc');
  DMMACS.TALX.Open;
  DBINTERNO.Hint := '�ltimo cliente cadastrado: ' +
    DMMACS.TALX.FieldByName('COD_INTERNO').AsString;
  DBCODINTERNOPJ.Hint := '�ltimo cliente cadastrado: ' +
    DMMACS.TALX.FieldByName('COD_INTERNO').AsString;
end;

///////////////////////////////////////
//SQL PARA RELATORIOS DE CTAS A RECEBER
///////////////////////////////////////
procedure TFCliente.ImpExtrato;
begin
  DMMACS.TRel.Close;
  DMMACS.TRel.SQL.Clear;
  DMMACS.TRel.SQL.Add(' SELECT parcelacr.cobranca, ctareceber.cod_cliente, parcelacr.desconto, parcelacr.dtdebito, parcelacr.dtvenc, ');
  DMMACS.TRel.SQL.Add(' parcelacr.juros, parcelacR.multa, parcelacR.numparc, parcelacR.valor, parcelacr.valorpg, ');
  DMMACS.TRel.SQL.Add(' ctareceber.cod_usuario, ctareceber.dtlanc, ctareceber.historico, ctareceber.numdoc, ');
  DMMACS.TRel.SQL.Add(' cliente.cod_interno, pessoa.nome, Pessoa.Telrel ');
  DMMACS.TRel.SQL.Add(' FROM parcelacr join ctareceber on parcelacr.cod_ctareceber=ctareceber.cod_ctareceber ');
  DMMACS.TRel.SQL.Add(' left join cliente on ctareceber.cod_cliente = cliente.cod_cliente ');
  DMMACS.TRel.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
  DMMACS.TRel.SQL.Add(' left join FORMPAG on CTARECEBER.COD_FORMPAG = FORMPAG.COD_FORMPAG ');
  DMMACS.TRel.SQL.Add(' WHERE (FORMPAG.COD_LOJA=' + FMenu.LCODLOJA.Caption +
    ') And (ctareceber.cod_cliente=:COD_CLIENTE)');
  DMMACS.TRel.SQL.Add(' And ((parcelacr.fech<>' + #39 + 'S' + #39 +
    ') OR (parcelacr.fech IS NULL))');
  DMMACS.TRel.ParamByName('COD_CLIENTE').AsString :=
    XView.FIELDBYNAME('COD_CLIENTE').AsString;
  DMMACS.TRel.SQL.Add(' order by pessoa.nome, ctareceber.numdoc, ctareceber.dtlanc, parcelacr.dtvenc ');
  DMMACS.TRel.Open;

  DMMACS.TLoja.Edit;
  DMMACS.TLoja.FieldByName('TMP2').AsString :=
    'Cadastro/Clientes/Relat�rio/Extrato de contas';
  DMMACS.TLoja.Post;
  DMMACS.Transaction.CommitRetaining;
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  PadraoImp(DMMACS.TLoja.FieldByName('IMPTHERMAL').AsString);
  DMMACS.FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfExtratoCli.frf');
  DMMACS.FSRel.ShowReport;
  RetPadraoImp;
end;

//Procedure responsavel por montar um historico do cliente
procedure TFCLIENTE.GeraHist;
begin
  MResumo.Lines.Clear;
  //**********************
  //**qtd de compras
  //**********************
  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add(' SELECT Count(Pedvenda.cod_Pedvenda) AS CONT, SUM(PEDVENDA.VALOR) AS TOTAL FROM PEDVENDA ');
  DMMACS.TALX.SQL.Add(' Left Join cliente on pedvenda.cod_cliente = cliente.cod_cliente ');
  DMMACS.TALX.SQL.Add(' where pedvenda.cod_cliente=:CODCLIENTE ');
  DMMACS.TALX.ParamByName('CODCLIENTE').AsString :=
    XTabela.FieldByName('COD_CLIENTE').AsString;
  DMMACS.TALX.Open;
  if not DMMACS.TALX.IsEmpty then
  begin
    if DMMACS.TALX.FieldByName('CONT').AsInteger > 0 then
    begin
      MResumo.Lines.Add('Pedidos de venda..:');
      MResumo.Lines.Add('   Quantidade..: ' +
        IntToStr(DMMACS.TALX.FieldByName('CONT').AsInteger) +
        '  - Valor Total..: ' + FormatFloat('0.00',
        DMMACS.TALX.FieldByName('TOTAL').AsCurrency) +
        '  - M�dia por Pedido..: ' + FormatFloat('0.00',
        DMMACS.TALX.FieldByName('TOTAL').AsCurrency /
        DMMACS.TALX.FieldByName('CONT').AsInteger));
    end;
  end;
  //**********************
  //**Maior e Menor Compra
  //**********************
  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add(' SELECT Pedvenda.valor, pedvenda.dtpedven, pedvenda.numped FROM PEDVENDA ');
  DMMACS.TALX.SQL.Add(' Left Join cliente on pedvenda.cod_cliente = cliente.cod_cliente ');
  DMMACS.TALX.SQL.Add(' where pedvenda.cod_cliente=:CODCLIENTE ');
  DMMACS.TALX.ParamByName('CODCLIENTE').AsString :=
    XTabela.FieldByName('COD_CLIENTE').AsString;
  DMMACS.TALX.SQL.Add(' order by pedvenda.valor desc ');
  DMMACS.TALX.Open;
  if not DMMACS.TALX.IsEmpty then
  begin
    DMMACS.TALX.First;
    MResumo.Lines.Add('Maior Compra..:');
    MResumo.Lines.Add('   Valor..: ' + FormatFloat('0.00',
      DMMACS.TALX.FieldByName('valor').AsCurrency) +
      '  - Data..: ' + DMMACS.TALX.FieldByName('dtpedven').AsString +
      '  - Pedido..: ' + DMMACS.TALX.FieldByName('numped').AsString);
    if DMMACS.TALX.RecordCount > 1 then
    begin
      DMMACS.TALX.Last;
      MResumo.Lines.Add('Menor Compra..:');
      MResumo.Lines.Add('   Valor..: ' + FormatFloat('0.00',
        DMMACS.TALX.FieldByName('valor').AsCurrency) +
        '  - Data..: ' + DMMACS.TALX.FieldByName('dtpedven').AsString +
        '  - Pedido..: ' + DMMACS.TALX.FieldByName('numped').AsString);
    end;
  end;
  //**************************
  //**Primeira e ultima compra
  //**************************
  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add(' SELECT Pedvenda.valor, pedvenda.dtpedven, pedvenda.numped FROM PEDVENDA ');
  DMMACS.TALX.SQL.Add(' Left Join cliente on pedvenda.cod_cliente = cliente.cod_cliente ');
  DMMACS.TALX.SQL.Add(' where pedvenda.cod_cliente=:CODCLIENTE ');
  DMMACS.TALX.ParamByName('CODCLIENTE').AsString := XTabela.FieldByName('COD_CLIENTE').AsString;
  DMMACS.TALX.SQL.Add(' order by pedvenda.dtpedven desc ');
  DMMACS.TALX.Open;
  if not DMMACS.TALX.IsEmpty then
  begin
    DMMACS.TALX.First;
    MResumo.Lines.Add('�ltima Compra..:');
    MResumo.Lines.Add('   Valor..: ' + FormatFloat('0.00', DMMACS.TALX.FieldByName('valor').AsCurrency) + '  - Data..: ' + DMMACS.TALX.FieldByName('dtpedven').AsString + '  - Pedido..: ' + DMMACS.TALX.FieldByName('numped').AsString);
    if DMMACS.TALX.RecordCount > 1 then
    begin
      DMMACS.TALX.Last;
      MResumo.Lines.Add('Primeira Compra..:');
      MResumo.Lines.Add('   Valor..: ' + FormatFloat('0.00', DMMACS.TALX.FieldByName('valor').AsCurrency) + '  - Data..: ' + DMMACS.TALX.FieldByName('dtpedven').AsString + '  - Pedido..: ' + DMMACS.TALX.FieldByName('numped').AsString);
    end;
  end;
  //**********************
  //**Documentos em atraso
  //**********************
  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add(' select count(vwparcr.cod_parcelacr) as  CONT, sum(vwparcr.valor) as TOTAL From vwparcr ');
  DMMACS.TALX.SQL.Add(' where (vwparcr.dtvenc<:data) AND (vwparcr.fech<>' + #39 + 'S' + #39 + ') and (vwparcr.cod_cliente=:COD_CLIENTE) ');
  DMMACS.TALX.ParamByName('DATA').AsDate := Date();
  DMMACS.TALX.ParamByName('COD_CLIENTE').AsInteger := XTabela.FieldByName('COD_CLIENTE').AsInteger;
  DMMACS.TALX.Open;
  if not DMMACS.TALX.IsEmpty then
  begin
    if DMMACS.TALX.FieldByName('CONT').AsInteger > 0 then
    begin
      MResumo.Lines.Add('Documentos em atraso..: ' + DMMACS.TALX.FieldByName('CONT').AsString);
      MResumo.Lines.Add('   Valor..: ' + FormatFloat('0.00', DMMACS.TALX.FieldByName('TOTAL').AsCurrency));
    end;
  end;

  // retorna a media de dias em atraso nas contas
  RetornaMediaAtraso;

  //*****************************
  //**Pedidos de venda do cliente
  //*****************************
  DMFINANC.TAlx.Close;
  DMFINANC.TALX.SQL.Clear;
  DMFINANC.TALX.SQL.Add(' select *  From vwpedv ');
  DMFINANC.TALX.SQL.Add(' where (vwpedv.cod_cliente=:COD_CLIENTE) ');
  DMFINANC.TALX.ParamByName('COD_CLIENTE').AsInteger := XTabela.FieldByName('COD_CLIENTE').AsInteger;
  DMFINANC.TALX.Open;
  //*******************************
  //**Lista de Documentos em atraso
  //*******************************
  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add(' select * From vwparcr ');
  DMMACS.TALX.SQL.Add(' where (vwparcr.dtvenc<:data) AND (vwparcr.fech<>' + #39 + 'S' + #39 + ') and (vwparcr.cod_cliente=:COD_CLIENTE) ');
  DMMACS.TALX.ParamByName('DATA').AsDate := Date();
  DMMACS.TALX.ParamByName('COD_CLIENTE').AsInteger := XTabela.FieldByName('COD_CLIENTE').AsInteger;
  DMMACS.TALX.Open;

  // Busca dados de Ordem de Servi�o para o memo do historico
  Historico_OS;

end;

procedure TFCLIENTE.FiltraServot;
//procedure utilizada para filtrar produtos e servot referente ao cliente
begin
  DMPESSOA.TALX.Close;
  DMPESSOA.TALX.sql.Clear;
  DMPESSOA.TALX.SQL.Add(' select pedvenda.numped, pedvenda.dtpedven, pedvenda.cpfcnpj, pedvenda.nomecli, pedvenda.valor, ');
  DMPESSOA.TALX.SQL.Add(' itenspedven.qtdeprod, itenspedven.descpro, itenspedven.valunit, itenspedven.valortotal, ');
  DMPESSOA.TALX.SQL.Add(' subproduto.cod_interno, subproduto.descricao, subproduto.codprodfabr, subproduto.fabricante, subproduto.marca, SERVOT.COD_SERVOT ');
  DMPESSOA.TALX.SQL.Add(' from servot ');
  DMPESSOA.TALX.SQL.Add(' Left join pedvenda ON servot.cod_pedido=pedvenda.cod_pedvenda ');
  DMPESSOA.TALX.SQL.Add(' left join itenspedven on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
  DMPESSOA.TALX.SQL.Add(' left join estoque ON estoque.cod_estoque=itenspedven.cod_estoque ');
  DMPESSOA.TALX.SQL.Add(' left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
  DMPESSOA.TALX.SQL.Add(' left join cliente on cliente.cod_cliente=pedvenda.cod_cliente ');
  DMPESSOA.TALX.SQL.Add(' left join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
  DMPESSOA.TALX.SQL.Add(' Where Pedvenda.cod_cliente = :CODCLIENTE ');
  DMPESSOA.TALX.ParamByName('CODCLIENTE').AsString := DMPESSOA.TCliente.FieldByName('COD_CLIENTE').AsString;
  DMPESSOA.TALX.SQL.Text;
  DMPESSOA.TALX.Open;
  try
    FiltraTabela(DMPESSOA.TServot, 'SERVOT', 'COD_SERVOT', '', ' COD_SERVOT=' + #39 + DMPESSOA.TALX.FieldByName('COD_SERVOT').AsString + #39);
  except
  end;
end;

procedure TFCliente.FormActivate(Sender: TObject);
begin
  inherited;
  Caption := 'Clientes';
  PListaCliente.Visible := False;
  PListaCliente.SendToBack;
  PEtqMala.Visible := false;
  PEtqMala.SendToBack;
  XCODCLIINI := -1;
  XCODCLIFIM := -1;
  xrel := 0;
  XTabela := DMPESSOA.TCliente;
  XCampo := 'NOME';
  XTransaction := DMPESSOA.TransacPessoa;
  XPkTabela := 'COD_CLIENTE';
  XTab := False;
  XView := DMPESSOA.WCliente;
  XDescricao := 'O Cliente';
  XSQLTABELA := 'CLIENTE';
  if XSQLTABELA = 'CLIENTE' then
  begin
    XLiberaDados := ' WHERE ((vwcliente.ativo<>0) or (vwcliente.ativo is null))';
    btnEquip.Visible := True;
  end;
  XSQLVIEW := 'VWCLIENTE';
  RGORDEM.OnClick(SENDER);
  XSQLREL := 'VWCLIENTE';

  //Filtra tabela de loja para buscar apenas a loja em abertura do sistema
  FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

  if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'LOCA��O' then
  begin
    PTabelaPreco.Visible := True;
    PTabelaPreco.BringToFront;
  end
  else
  begin
    PTabelaPreco.Visible := false;
    PTabelaPreco.SendToBack;
  end;

  //verifica se a empresa � do tipo �tica para liberar o bot�o de ficha
  if (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'OTICA') then
  begin
    Relatorio.Items[2].Visible := True;
    TCPessoa.Tabs.Clear;
    TCPessoa.Tabs.Add('&Principal');
    TCPessoa.Tabs.Add('C&omplemento');
    TCPessoa.Tabs.Add('&Financeiro');
    TCPessoa.Tabs.Add('F&icha �tica');
  end
  else
  begin
    Relatorio.Items[2].Visible := False;
    TCPessoa.Tabs.Clear;
    TCPessoa.Tabs.Add('&Principal');
    TCPessoa.Tabs.Add('C&omplemento');
    TCPessoa.Tabs.Add('&Financeiro');
    TCPessoa.Tabs.Add('&Hist�rico');
  end;

  //Paulo 17/06/2011: Para grid de petshop
  if DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' then
  begin
    btnEquip.Caption := 'Animais';
  end
  else
  begin
    if DMMACS.TLoja.FieldByName('atividade').AsString = 'LOCA��O' then
      btnEquip.Caption := 'Obra'
    else if DMMACS.TLoja.FieldByName('atividade').AsString = 'GRAFICA' then
      btnEquip.Caption := 'Departamento'
    else
      btnEquip.Caption := 'Equipamentos';
  end;

  // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
  if FileExists('C:\MZR\Arquivos\LayoutGrid\cliente.lgm') then
    DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\cliente.lgm');

  LiberaDados;

  RGFiltro.OnClick(Sender);

  // - 16/02/2009: se houver cliente pre-selecionado fazer busca
  if FMenu.XPreSel then
  begin
    DMPESSOA.WCliente.Locate(FMenu.XFieldPesqPreSel, FMenu.XCodPesqPresSel, []);
  end;
  FMenu.LimpaPreSelecao;

  contadorCli;
  DefineTabOrder;

end;

//Angelo - 18/06/2015 - Define a ordem de tabula��o dinamicamente
procedure TFCliente.DefineTabOrder;
begin
  //Pessoa Jur�dica
  DBCODINTERNOPJ.TabOrder := 0;
  DBCnpj.TabOrder := 1;
  DBColorEdit5.TabOrder := 2;
  DBColorEdit6.TabOrder := 3;
  DBColorEdit59.TabOrder := 4;
  DBColorEdit7.TabOrder := 5;
  DBColorEdit8.TabOrder := 6;
  DBNOMEPJ.TabOrder := 7;
  DBColorEdit2.TabOrder := 8;

  //Pessoa F�sica
  DBINTERNO.TabOrder := 0;
  DBCPF.TabOrder := 1;
  DBColorEdit1.TabOrder := 2;
  RGSexo.TabOrder := 3;
  cbVendaVista.TabOrder := 4;
  DBNOMEPF.TabOrder := 5;
  DBColorEdit3.TabOrder := 6;
  DBColorEdit9.TabOrder := 7;

  DBColorEdit13.TabOrder := 9;
  DBBairro.TabOrder := 10;
  DBColorEdit4.TabOrder := 11;
  DBEndNumero.TabOrder := 12;
  DBTelPrincipal.TabOrder := 13;
  DBDATACAD.TabOrder := 14;
  DBProximidade.TabOrder := 15;

  DBColorEdit11.TabOrder := 16;
  DBColorEdit52.TabOrder := 17;
  DBColorEdit54.TabOrder := 18;
  DBColorEdit55.TabOrder := 19;
  DBEMAILPADRAO.TabOrder := 20;
  DBColorEdit56.TabOrder := 21;
  DBColorEdit60.TabOrder := 22;
  DBColorEdit63.TabOrder := 23;

  FrmBusca1.TabOrder := 24;
  FrmNatural.TabOrder := 25;
  FrmFormPag.TabOrder := 26;
  FrmVendedor.TabOrder := 27;
  FrmTransp.TabOrder := 28;
  FrmRegiao.TabOrder := 29;
  PTabelaPreco.TabOrder := 30;
  btnnovatabela.TabOrder := 31;
  PageControl1.TabOrder := 32;
  DBColorEdit47.TabOrder := 33;
  GroupBox14.TabOrder := 34;
  GroupBox13.TabOrder := 35;
  CbContribuinteIcms.TabOrder := 36;
  CBFinanceiro.TabOrder := 37;
  CBAtualizar.TabOrder := 38;
  EdFreqVenda.TabOrder := 39;
  ContFrequencia.TabOrder := 40;
  CbTxEntrega.TabOrder := 41;
  CbContribuinte.TabOrder := 42;
  CbSimplesNacional.TabOrder := 43;
  CBAtacadista.TabOrder := 44;
  CBInativo.TabOrder := 45;

end;

procedure TFCliente.TCPessoaTabChanged(Sender: TObject);
begin
  inherited;
  PFichaOtica.Visible := False;
  if TCPessoa.ActiveTab = 1 then
  begin
    LInformacao.Visible := false;
    LInformacao.SendToBack;
    DBInformacao.Visible := false;
    DBInformacao.SendToBack;
  end;
  if (TCPessoa.ActiveTab = 2) and (RGTIPO.ItemIndex = 1) then
  begin
    PEspecifico.Visible := False;
    PComplementoJURIDICA.Visible := true;
    PComplementoJURIDICA.BringToFront;
    LInformacao.Visible := true;
    LInformacao.BringToFront;
    DBInformacao.Visible := true;
    DBInformacao.BringToFront;
  end;
  if TCPessoa.ActiveTab = 3 then
  begin
    //verifica se a empresa � do tipo �tica para liberar o bot�o de ficha
    if (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'OTICA') then
    begin
      PFichaOtica.Visible := true;
      PFichaOtica.BringToFront;
    end
    else
    begin
      PHistorico.Visible := true;
      PHistorico.BringToFront;
      GeraHist;
    end;
  end;
  if TCPessoa.ActiveTab = 2 then
  begin
    //EFETUA CONTROLE DE ACESSO
    if ControlAccess('LIBERACRED', 'M') = False then
      TCPessoa.ActiveTab := 1;
  end;

end;

procedure TFCliente.BitBtn1Click(Sender: TObject);
var
  REC: REAL;
begin
  inherited;
  //Se o usu�rio n�o digitar um valor � adicionado o valor zero aos campos de receitas
  if SALCONJ.Text = '' then
    SALCONJ.Text := '0';
  if SALCLI.Text = '' then
    SALCLI.Text := '0';
  if HONPROF.Text = '' then
    HONPROF.Text := '0';
  if OUTREC.Text = '' then
    OUTREC.Text := '0';
  //Se o usu�rio n�o digitar um valor � adicionado o valor zero aos campos de despesas
  if DALUG.Text = '' then
    DALUG.Text := '0';
  if DVEIC.Text = '' then
    DVEIC.Text := '0';
  if DRESID.Text = '' then
    DRESID.Text := '0';
  if DFAM.Text = '' then
    DFAM.Text := '0';
  if OUTDESP.Text = '' then
    OUTDESP.Text := '0';
  //Calculo das soma das receitas e das despesas
  REC := (StrToFloat(SALCONJ.Text) + StrToFloat(SALCLI.Text) + StrToFloat(HONPROF.Text) + StrToFloat(OUTREC.Text));
  // Comparando o estado civil da pessoa para calculo do limite de cr�dito.
  case RGCivil.ItemIndex of
    -1:
      begin
        Mensagem('INFORMA��O AO USU�RIO', 'Selecione o estado c�vil do cliente para que o c�lculo seja efetivado!', '', 1, 1, False, 'i');
      end;
    0:
      begin
        LIMCRED.Text := FloatToStr(((REC) * 30) / 100)
      end;
    3:
      begin
        LIMCRED.Text := FloatToStr(((REC) * 30) / 100)
      end;
    2:
      begin
        LIMCRED.Text := FloatToStr(((REC) * 50) / 100)
      end;
    1:
      begin
        LIMCRED.Text := FloatToStr(((REC) * 50) / 100)
      end;
  end;
end;

procedure TFCliente.BtnApagarClick(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('EXCLCLI', 'M') = False then
    Exit;

  //CHECA RELA��O ENTRE TABELAS
  if CheckRelation(XPkTabela, XView.FieldByName(XPkTabela).AsString, ['CTARECEBER', 'PEDVENDA', 'ORDEM'], 3) = False then
    inherited
  else
    Mensagem('INFORMA��O AO USU�RIO', 'Este Cliente possui refer�ncias pendentes e n�o pode ser apagado!', '', 1, 1, False, 'i');

end;

procedure TFCliente.BtnGravarClick(Sender: TObject);
begin
  try
    //    VerifExitVal(Xtabela: String; XPK:STRING; XVALORPK:STRING; Xcampo:String; XValor:String):Boolean;
    if VerifExitVal('CLIENTE', XPkTabela, XTabela.fieldbyname(XPkTabela).AsString, XPkTabela, XTabela.fieldbyname(XPkTabela).AsString) = True then
    begin
      Mensagem('INFORMA��O AO USU�RIO', 'Este C�digo Interno j� existe!', '', 1, 1, False, 'i');
    end
    else
    begin
      XTabela.Edit;
      XTabela.FieldByName('COD_VENDEDOR').AsInteger := XCOD_VENDEDOR;
      XTabela.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;

      //Edmar - 10/03/2015 - Verifica se a op��o de cliente industria e de simples nacional
      //n�o est� marcada
      if not CBSimplesNacional.Checked and not cbIndustria.Checked then
        //se nenhuma das duas op��es estiver marcada
           //marca o cliente como consumidor final
        CBContribuinte.Checked := True;

      if CBATUALIZAR.Checked = True then
        XTabela.FieldByName('ATUALIZAR').AsString := '1'
      else
        XTabela.FieldByName('ATUALIZAR').AsString := '0';

      if CBINATIVO.Checked = True then
        XTabela.FieldByName('ATIVO').AsString := '0'
      else
        XTabela.FieldByName('ATIVO').AsString := '1';

      if CBAtacadista.Checked = True then
        XTabela.FieldByName('ATACADISTA').AsString := '1'
      else
        XTabela.FieldByName('ATACADISTA').AsString := '0';

      // verifica se o cliente eh contribuinte de ICMS
      if CBContribuinte.Checked = True then
        XTabela.FieldByName('CONSUMIDOR').AsString := 'S'
      else
        XTabela.FieldByName('CONSUMIDOR').AsString := 'N';

      // verifica se o cliente eh do Simples Nacional
      if CBSimplesNacional.Checked = True then
        XTabela.FieldByName('SIMPLESNACIONAL').AsString := 'S'
      else
        XTabela.FieldByName('SIMPLESNACIONAL').AsString := 'N';

      // verifica se o cliente tem controle financeiro individual
      if CBFinanceiro.Checked = True then
        XTabela.FieldByName('MARKREL').AsString := '1'
      else
        XTabela.FieldByName('MARKREL').AsString := '0';

      XTabela.FieldByName('EXPORT').AsString := '1';
      XTabela.FieldByName('COD_FORMPAG').AsInteger := XCodFormPag;
      transportadora(XCOD_TRANSP);

      //Paulo 04/07/2011: Para controlar frequ�ncia de venda
      if ContFrequencia.Checked = True then
      begin
        XTabela.FieldByName('FREQVENDA').AsString := '1';
        XTabela.FieldByName('DIASFREQVENDA').AsString := EdFreqVenda.Text;
      end
      else
      begin
        XTabela.FieldByName('FREQVENDA').AsString := '0';
        XTabela.FieldByName('DIASFREQVENDA').AsString := '0';
      end;

      //Paulo 17/08/2011: cliente com venda liberada somente a vista
      if cbVendaVista.Checked = True then
      begin
        XTabela.FieldByName('VENDAVISTA').AsString := '1';
      end
      else
      begin
        XTabela.FieldByName('VENDAVISTA').AsString := '0';
      end;

      //Edmar - 11/01/2014 - Verifica se deve cobrar taxa de entraga para o cliente
      if cbTxEntrega.Checked then
        XTabela.FieldByName('TAXAENTREGA').AsString := '1'
      else
        XTabela.FieldByName('TAXAENTREGA').AsString := '0';

      //Edmar - 10/03/2015 - Valida se o cliente � contribuinte de ICMS ou n�o
      if CbContribuinteIcms.Text = 'Sim' then
        XTabela.FieldByName('CONTRIBICMS').AsString := '1' //Contribuinte
      else if CbContribuinteIcms.Text = 'Isento' then
        XTabela.FieldByName('CONTRIBICMS').AsString := '2' //isento
      else
        XTabela.FieldByName('CONTRIBICMS').AsString := '9'; //n�o contribuinte

      inherited;

    end;
  except
    Mensagem('Mzr Sistemas - INFORMA��O', 'Falha na tentativa de grava��o de novo cliente. Verifique se as informa��e foram gravadas. Se o problema persistir reinicie o sistema.', '', 1, 1, false, 'i');
    // - 28/04/2009: fechar possiveis transa��es abertas
    DMMACS.Transaction.RollbackRetaining;
    DMMACS.IBTCodigo.RollbackRetaining;
    DMPESSOA.TransacPessoa.RollbackRetaining;
    DMCONTA.IBT.RollbackRetaining;
    DMServ.IBT.RollbackRetaining;
    DMESTOQUE.TransacEstoque.RollbackRetaining;
    DMGEOGRAFIA.IBT.RollbackRetaining;
    DMFINANC.Transaction.RollbackRetaining;
  end;

  LiberaDados;
  MOrdem.Lines.Clear;

  // - 16/02/2009: se houver cliente pre-selecionado fazer busca
  if FMenu.XPreSel then
  begin
    DMPESSOA.WCliente.Locate(FMenu.XFieldPesqPreSel, FMenu.XCodPesqPresSel, []);
  end;
  FMenu.LimpaPreSelecao;

  {IF OPD.FileName <> '' THEN
    AnexarDocumentos(XTabela.fieldbyname(XPkTabela).AsInteger);}

  contadorCli;
end;

procedure TFCliente.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if CBMes.Text <> '' then
  begin //M�S V�LIDO executa sql e abre relat�rio
    if RBCliente.Checked = true then
    begin
      DMPESSOA.TALX.Close;
      DMPESSOA.TALX.SQL.Clear;
      DMPESSOA.TALX.SQL.Add(' update pessoa  set pessoa.diaaniver=extract(day FROM pessoa.dtnasc) ');
      DMPESSOA.TALX.ExecSQL;
      DMPESSOA.TransacPessoa.CommitRetaining;

      DMPESSOA.TALX.Close;
      DMPESSOA.TALX.SQL.Clear;
      DMPESSOA.TALX.SQL.Add('select cliente.cod_interno, pessoa.nome, pessoa.endnumero, pessoa.endereco, pessoa.bairro, pessoa.cep, ');
      DMPESSOA.TALX.SQL.Add('pessoa.dtnasc, cidade.nome, pessoa.telrel');
      DMPESSOA.TALX.SQL.Add('from pessoa join cliente on pessoa.cod_pessoa = cliente.cod_pessoa ');
      DMPESSOA.TALX.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade WHERE ((cliente.ativo<>0) or (cliente.ativo is null)) ORDER BY pessoa.DIAANIVER');
      DMPESSOA.TALX.Open;
      DMPESSOA.IndexAniver := CBMes.ItemIndex;
      DMPESSOA.TALX.Filtered := True;
      QRLIntervalo.Caption := CBMes.Text;
      QRAniver.Preview;
    end
    else
    begin
      DMPESSOA.TALX.Close;
      DMPESSOA.TALX.SQL.Clear;
      DMPESSOA.TALX.SQL.Add(' update pessoaF  set pessoaF.diaaniverconj=extract(day FROM pessoaF.datanasc_conj) ');
      DMPESSOA.TALX.ExecSQL;
      DMPESSOA.TransacPessoa.CommitRetaining;

      DMPESSOA.TALX.Close;
      DMPESSOA.TALX.SQL.Clear;
      DMPESSOA.TALX.SQL.Add('select cliente.cod_interno, pessoa.nome as CLIENTE, pessoa.endnumero, pessoa.endereco, pessoa.bairro, pessoa.cep, ');
      DMPESSOA.TALX.SQL.Add('pessoaf.datanasc_conj as DTNasc, cidade.nome, pessoaf.nome_conj, pessoa.telrel ');
      DMPESSOA.TALX.SQL.Add('from pessoa join cliente on pessoa.cod_pessoa = cliente.cod_pessoa ');
      DMPESSOA.TALX.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
      DMPESSOA.TALX.SQL.Add('left join pessoaf on pessoaf.cod_pessoa = pessoa.cod_pessoa ');
      DMPESSOA.TALX.SQL.Add(' WHERE ((cliente.ativo<>0) or (cliente.ativo is null)) ORDER BY pessoaf.diaaniverconj ');
      DMPESSOA.TALX.Open;
      DMPESSOA.IndexAniver := CBMes.ItemIndex;
      DMPESSOA.TALX.Filtered := True;
      QRLIntervalo.Caption := CBMes.Text;
      QRAniverConj.Preview;
    end;
    PAniversario.Visible := False;
  end;
end;

procedure TFCliente.Aniversrio1Click(Sender: TObject);
begin
  inherited;
  PAniversario.Visible := True;
  PAniversario.BringToFront;
end;

procedure TFCliente.BitBtn3Click(Sender: TObject);
begin
  inherited;
  PAniversario.Visible := False;
end;

procedure TFCliente.FichaOtica1Click(Sender: TObject);
begin
  inherited;
  FMenu.TIPOREL := 'RELFICHOT';
  AbrirForm(TFRelpadraopes, FRelPadraopes, 0);
end;

procedure TFCliente.BtnConsultarClick(Sender: TObject);
begin

  try
    //EFETUA CONTROLE DE ACESSO
    if ControlAccess('CADCLI', 'M') = False then
      Exit;

    inherited;
    LocalizaUltCli;
    if DMPESSOA.TCliente.FieldByName('COD_USUARIO').AsString = '111522' then
      LUsuarioAltera.Caption := 'System Lord';
    //Localiza Vendedor
    if FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO',
      DMPESSOA.TCliente.FieldByName('COD_USUARIO').AsString, '') = True then
    begin
      //Localiza Vendedor
      if FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC',
        DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsString, '') = True then
      begin
        LUsuarioAltera.Caption := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      end;
    end;
    //Localiza Vendedor
    if FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC',
      DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsString, '') = True then
    begin
      XCOD_VENDEDOR := DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsInteger;
      FrmVendedor.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      FrmVendedor.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
    end
    else
    begin
      XCOD_VENDEDOR := -1;
      FrmVendedor.EdDescricao.Text := '';
      FrmVendedor.EDCodigo.Text := '';
    end;
    //Localiza Forma de Pagamento
    if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG',
      DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsString, '') = True then
    begin
      XCodFormPag := DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsInteger;
      FrmFormPag.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      FrmFormPag.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
    end
    else
    begin
      XCodFormPag := -1;
      FrmFormPag.EdDescricao.Text := '';
      FrmFormPag.EDCodigo.Text := '';
    end;
    if filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC',
      DMPESSOA.TPessoa.FieldByName('COD_TRANSPORTADORA').AsString, '') = True then
    begin
      XCOD_TRANSP := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
      FrmTransp.EDCodigo.Text := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString;
      FrmTransp.EdDescricao.Text := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
    end
    else
    begin
      XCOD_TRANSP := -1;
      FrmTransp.EDCodigo.Text := '';
      FrmTransp.EdDescricao.Text := '';
    end;

    if XTabela.FieldByName('ATUALIZAR').AsString = '1' then
      CBATUALIZAR.Checked := True
    else
      CBATUALIZAR.Checked := False;

    if XTabela.FieldByName('ATACADISTA').AsString = '1' then
      CBAtacadista.Checked := True
    else
      CBAtacadista.Checked := False;

    if XTabela.FieldByName('CONSUMIDOR').AsString = 'S' then
      CBContribuinte.Checked := true
    else
      CBContribuinte.Checked := false;

    if XTabela.FieldByName('SIMPLESNACIONAL').AsString = 'S' then
      CBSimplesNacional.Checked := true
    else
      CBSimplesNacional.Checked := false;

    if XTabela.FieldByName('MARKREL').AsString = '1' then
      CBFinanceiro.Checked := true
    else
      CBFinanceiro.Checked := false;

    if XTabela.FieldByName('FREQVENDA').AsString = '1' then
      ContFrequencia.Checked := True
    else
      ContFrequencia.Checked := False;

    EdFreqVenda.Text := XTabela.FieldByName('DIASFREQVENDA').AsString;

    if XTabela.FieldByName('VENDAVISTA').AsString = '1' then
      cbVendaVista.Checked := True
    else
      cbVendaVista.Checked := False;

    //Edmar - 11/02/2014 - Testa se deve marcar taxa de entrega
    if XTabela.FieldByName('TAXAENTREGA').AsString = '1' then
      cbTxEntrega.Checked := true
    else
      cbTxEntrega.Checked := false;

    //Edmar - 11/02/2014 - Testa se deve marcar taxa de entrega
    if XTabela.FieldByName('CONTRIBICMS').AsString = '1' then //Contribuinte
      CbContribuinteIcms.Text := 'Sim'
    else if XTabela.FieldByName('CONTRIBICMS').AsString = '2' then //isento
      CbContribuinteIcms.Text := 'Isento'
    else
      CbContribuinteIcms.Text := 'N�o'; //n�o contribuinte

    // - 03/04/2009: se for do tipo pessoa juridica
    if RGTIPO.ItemIndex <> 0 then
    begin
      if DMPESSOA.TPessoaJ.FieldByName('INDUSTRIA').AsString = '1' then
        cbIndustria.Checked := True
      else
        cbIndustria.Checked := False;
    end;

    FrmBusca1.refresh;
    FrmNatural.refresh;
    FrmRegiao.refresh;
    FrmVendedor.refresh;
    FrmFormPag.Refresh;
    SelecionaTabelaPreco;
    CBINATIVO.Checked := False;
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
    if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'OTICA' then
      FiltraServot;

  except
    Mensagem('Mzr Sistemas - INFORMA��O', 'Falha na tentativa de consulta de cadastro. Se o problema persistir reinicie o sistema.', '', 1, 1, false, 'i');
    // - 28/04/2009: fechar possiveis transa��es abertas
    DMMACS.Transaction.RollbackRetaining;
    DMMACS.IBTCodigo.RollbackRetaining;
    DMPESSOA.TransacPessoa.RollbackRetaining;
    DMCONTA.IBT.RollbackRetaining;
    DMServ.IBT.RollbackRetaining;
    DMESTOQUE.TransacEstoque.RollbackRetaining;
    DMGEOGRAFIA.IBT.RollbackRetaining;
    DMFINANC.Transaction.RollbackRetaining;
  end;

end;

procedure TFCliente.DBServOtCellClick(Column: TColumn);
begin
  inherited;
  try
    FiltraTabela(DMPESSOA.TServot, 'SERVOT', 'COD_SERVOT', '', ' COD_SERVOT=' + #39 + DMPESSOA.TALX.FieldByName('COD_SERVOT').AsString + #39);
  except
  end;
end;

procedure TFCliente.DBServOtKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  try
    FiltraTabela(DMPESSOA.TServot, 'SERVOT', 'COD_SERVOT', '', ' COD_SERVOT=' + #39 + DMPESSOA.TALX.FieldByName('COD_SERVOT').AsString + #39);
  except
  end;
end;

procedure TFCliente.BitBtn4Click(Sender: TObject);
begin
  inherited;
  DMPESSOA.TServot.edit;
  DMPESSOA.TServot.Post;
  DMPESSOA.TServot.ApplyUpdates;
  DMPESSOA.TransacPessoa.CommitRetaining;
end;

procedure TFCliente.BtnNovoClick(Sender: TObject);
begin

  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('CADCLI', 'M') = False then
    Exit;

  try
    inherited;
  except
    Mensagem('Mzr Sistemas - INFORMA��O', 'Falha na tentativa de inser��o de novo cliente. Se o problema persistir reinicie o sistema.', '', 1, 1, false, 'i');
    // - 28/04/2009: fechar possiveis transa��es abertas
    DMMACS.Transaction.RollbackRetaining;
    DMMACS.IBTCodigo.RollbackRetaining;
    DMPESSOA.TransacPessoa.RollbackRetaining;
    DMCONTA.IBT.RollbackRetaining;
    DMServ.IBT.RollbackRetaining;
    DMESTOQUE.TransacEstoque.RollbackRetaining;
    DMGEOGRAFIA.IBT.RollbackRetaining;
    DMFINANC.Transaction.RollbackRetaining;
  end;

  LocalizaUltCli;
  FrmBusca1.refresh;
  FrmNatural.refresh;
  FrmRegiao.refresh;
  FrmVendedor.refresh;
  FrmFormPag.Refresh;
  XTabela.Edit;
  XTabela.FieldByName('DATA_CAD').AsDateTime := Date();
  XTabela.post;
  XCOD_VENDEDOR := -1;
  FrmVendedor.EdDescricao.Text := '';
  FrmVendedor.EDCodigo.Text := '';
  SelecionaTabelaPreco;
  LUsuarioAltera.Caption := '';
  CBINATIVO.Checked := False;
  cbIndustria.Checked := False;
  ContFrequencia.Checked := False;
  CBINATIVO.Checked := False;
  CBAtacadista.Checked := False;
  CBATUALIZAR.Checked := False;
  CBFinanceiro.Checked := False;
  CBContribuinte.Checked := False;
  EdFreqVenda.Text := '';
  cbVendaVista.Checked := False;
end;

procedure TFCliente.btnEquipClick(Sender: TObject);
begin
  inherited;
  //Paulo 17/06/2011: Para mostrar os dados de petshop
  if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'PETSHOP' then
  begin
    DMPESSOA.TAux1.Close;
    DMPESSOA.TAux1.SQL.Clear;
    DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
    DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
    DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
    DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
    DMPESSOA.TAux1.SQL.Add('where equipamento.cod_cliente = :CODCLIENTE and EQUIPAMEnTO.ATIVO=' + #39 + '1' + #39 + '');
    DMPESSOA.TAux1.ParamByName('CODCLIENTE').AsInteger := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
    DMPESSOA.TAux1.Open;
  end;
  FMenu.XTIPOBOLTO := '';
  AbrirForm(TFCadEQUIPAMENTO, FCadEQUIPAMENTO, 0);
end;

procedure TFCliente.FrmVendedorBTNMINUSClick(Sender: TObject);
begin
  inherited;
  XCOD_VENDEDOR := -1;
  FrmVendedor.EDCodigo.Text := '';
  FrmVendedor.EdDescricao.Text := '';
end;

procedure TFCliente.FrmVendedorBTNOPENClick(Sender: TObject);
begin
  inherited;
  //LIBERA TODAS OS ESTADOS PARA CONSUTA
  filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', ' Order by NOME');

  if AbrirForm(TFFuncionario, FFuncionario, 1) = 'Selected' then
  begin
    XCOD_VENDEDOR := DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
    FrmVendedor.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
    FrmVendedor.EDCodigo.text := DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsString;
  end
  else
  begin
    XCOD_VENDEDOR := -1;
    FrmVendedor.EdDescricao.Text := '';
    FrmVendedor.EDCodigo.text := '';
  end;
  FrmFormPag.Repaint;
  FrmTransp.Repaint;
  FrmVendedor.Repaint;
  FrmRegiao.Repaint;
  FrmNatural.Repaint;
end;

procedure TFCliente.FrmVendedorEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if FrmVendedor.EDCodigo.Text <> '' then
    begin
      if SelectRegistro('VWFUNCIONARIO', 'COD_FUNC', FrmVendedor.EDCodigo.Text) = True then
      begin //Slecionou o registro procurado
        XCOD_VENDEDOR := DMMACS.TSelect.FieldByName('COD_FUNC').AsInteger;
        FrmVendedor.EDCodigo.text := DMMACS.TSelect.FieldByName('COD_FUNC').AsString;
        FrmVendedor.EdDescricao.Text := DMMACS.TSelect.FieldByName('NOME').AsString;
      end
      else
      begin
        XCOD_VENDEDOR := -1;
        FrmVendedor.EDCodigo.Text := '';
        FrmVendedor.EdDescricao.Text := '';
      end;
    end
    else
    begin
      XCOD_VENDEDOR := -1;
      FrmVendedor.EDCodigo.Text := '';
      FrmVendedor.EdDescricao.Text := '';
    end;
  end;
end;

procedure TFCliente.FichadeInformaes1Click(Sender: TObject);
begin
  inherited;
  FMenu.TIPOREL := 'RELCLIFICH';
  AbrirForm(TFRelpadraopes, FRelPadraopes, 0);
end;

procedure TFCliente.Sinttico1Click(Sender: TObject);
begin
  XSQLREL := 'VWCLIENTE';
  inherited;

end;

procedure TFCliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F1 then
    btnhelp.Click;
  if Key = VK_F10 then
  begin
    //PREPARA PARA INATIVA CLIENTE
    if Mensagem('A T E N � � O ! ! !', 'DESEJA REALMENTE INATIVAR O CLIENTE ' + #13 + XView.FieldByName(XCampo).AsString + '?', '', 2, 3, False, 'c') = 2 then
    begin
      if FiltraTabela(XTabela, XSQLTABELA, XPkTabela, XView.FieldByName(XPkTabela).AsString, '') = True then
      begin
        XTabela.Edit;
        XTabela.FieldByName('ATIVO').AsInteger := 0;
        XTabela.Post;
        XTransaction.CommitRetaining;
        LiberaDados;
        contadorCli;
      end;
    end;
  end;
end;

procedure TFCliente.EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  XSCPC, XFiltro: string;
begin
  inherited;
  try
    if cbscpc.Checked = True then
      XSCPC := ' and (vwcliente.scpc<>' + #39 + '1' + #39')'
    else
      XSCPC := ' ';
    if RGFiltro.ItemIndex = 0 then
      XFiltro := ' and ((vwcliente.SEPARAR=0) or (vwcliente.SEPARAR is null)) ';
    if RGFiltro.ItemIndex = 1 then
      XFiltro := ' and (vwcliente.SEPARAR=' + #39 + '1' + #39 + ')';

    if Key = VK_RETURN then
    begin //pressionado enter, consultar
      if RGFiltro.ItemIndex = 2 then
      begin
        if XTab = True then
          FiltraTabela(XTabela, XSQLTABELA, XCampo, '', '(upper(' + XCampo + ') like upper(' + #39 + EdNome.Text + '%' + #39 + ')) AND (vwcliente.ativo=0) ' + XSCPC + XFiltro + ' ORDER  BY ' + XCAMPO)
        else
          FiltraTabela(XView, XSQLVIEW, XCampo, '', '(upper(' + XCampo + ') like upper(' + #39 + EdNome.Text + '%' + #39 + ')) AND (vwcliente.ativo=0)  ' + XSCPC + XFiltro + '  ORDER BY ' + XCAMPO);
      end
      else
      begin
        if XTab = True then
          FiltraTabela(XTabela, XSQLTABELA, XCampo, '', '(upper(' + XCampo + ') like upper(' + #39 + EdNome.Text + '%' + #39 + ')) AND ((vwcliente.ativo<>0) or (vwcliente.ativo is null)) ' + XSCPC + XFiltro + ' ORDER  BY ' + XCAMPO)
        else
          FiltraTabela(XView, XSQLVIEW, XCampo, '', '(upper(' + XCampo + ') like upper(' + #39 + EdNome.Text + '%' + #39 + ')) AND ((vwcliente.ativo<>0) or (vwcliente.ativo is null)) ' + XSCPC + XFiltro + '  ORDER BY ' + XCAMPO);
      end;
    end;

    if Key = VK_ESCAPE then
    begin //pressionado esc, liberar
      LiberaDados;
      lbCreditoCli.Caption := '';
    end;
    if Key = VK_RETURN then //CONAGEM DE CLIENTE E DE CREDITO DE ANTECIPA��O
      contadorCli;

  except
  end;
  //   contadorCli;
end;

procedure TFCliente.FrmBusca2BTNOPENClick(Sender: TObject);
begin
  inherited;
  FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', '', '');
  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_INTERNO';
  FMenu.XCodPesqPresSel := FrmFormPag.EDCodigo.Text;
  if AbrirForm(TFFormPag, FFormPag, 1) = 'Selected' then
  begin
    XCodFormPag := DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
    FrmFormPag.EDCodigo.Text := DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
    FrmFormPag.EdDescricao.Text := DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
  end;
  FrmFormPag.Repaint;
  FrmTransp.Repaint;
  FrmVendedor.Repaint;
  FrmRegiao.Repaint;
  FrmNatural.Repaint;
end;

procedure TFCliente.FrmFormPagBTNMINUSClick(Sender: TObject);
begin
  inherited;
  XCodFormPag := -1;
  FrmFormPag.EDCodigo.Text := '';
  FrmFormPag.EdDescricao.Text := '';
end;

procedure TFCliente.FrmFormPagEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  comp: string;
begin
  inherited;
  if Key = VK_RETURN then
  begin
    if FrmFormPag.EDCodigo.Text <> '' then
    begin
      comp := '';
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      if DMMACS.TLoja.FieldByName('UTILFORMPG').AsString = '1' then
      begin
        comp := ' AND TIPO=' + #39 + 'V' + #39
      end;
      //seleciona a forma de pagamento
      if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG',
        FrmFormPag.EDCodigo.Text, comp) then
      begin
        XCodFormPag := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
        FrmFormPag.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
        FrmFormPag.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      end
      else
      begin
        XCodFormPag := -1;
        FrmFormPag.EDCodigo.Text := '';
        FrmFormPag.EdDescricao.Text := '';
      end;
    end;
  end;
end;

procedure TFCliente.BitBtn5Click(Sender: TObject);
begin
  inherited;
  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('PEDVENDA', 'M') = False then
    Exit;

  AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
end;

procedure TFCliente.BitBtn6Click(Sender: TObject);
begin
  inherited;
  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('CAD_CR', 'M') = False then
    Exit;
  AbrirForm(TFCtaReceber, FCtaReceber, 0);
end;

procedure TFCliente.BtnCancelarClick(Sender: TObject);
begin
  try
    DMPESSOA.TDevCli.Cancel;
    MOrdem.Lines.Clear;
    inherited;
  except
    Mensagem('Mzr Sistemas - INFORMA��O', 'Falha na tentativa de cancelamento de cadastro. Se o problema persistir reinicie o sistema.', '', 1, 1, false, 'i');
    // - 28/04/2009: fechar possiveis transa��es abertas
    DMMACS.Transaction.RollbackRetaining;
    DMMACS.IBTCodigo.RollbackRetaining;
    DMPESSOA.TransacPessoa.RollbackRetaining;
    DMCONTA.IBT.RollbackRetaining;
    DMServ.IBT.RollbackRetaining;
    DMESTOQUE.TransacEstoque.RollbackRetaining;
    DMGEOGRAFIA.IBT.RollbackRetaining;
    DMFINANC.Transaction.RollbackRetaining;
  end;
end;

procedure TFCliente.RGFiltroClick(Sender: TObject);
begin
  inherited;
  //If RGFiltro.ItemIndex<>3
  //Then Begin
  if RGFiltro.ItemIndex = 0 then
  begin
    if cbscpc.Checked = True then
      XLiberaDados := ' WHERE  ((vwcliente.ativo<>0) or (vwcliente.ativo is null))  and ((vwcliente.SEPARAR=0) or (vwcliente.SEPARAR is null))  and ((vwcliente.SCPC=0) or (vwcliente.SCPC is null)) Order By COD_INTERNO'
    else
      XLiberaDados := ' WHERE  ((vwcliente.ativo<>0) or (vwcliente.ativo is null))  and ((vwcliente.SEPARAR=0) or (vwcliente.SEPARAR is null)) Order By COD_INTERNO';
  end;
  if RGFiltro.ItemIndex = 1 then
  begin
    if cbscpc.Checked = True then
      XLiberaDados := ' WHERE  ((vwcliente.ativo<>0) or (vwcliente.ativo is null))  and (vwcliente.SEPARAR=1) and  ((vwcliente.SCPC=0) or (vwcliente.SCPC is null)) Order By COD_INTERNO'
    else
      XLiberaDados := ' WHERE  ((vwcliente.ativo<>0) or (vwcliente.ativo is null)) and (vwcliente.SEPARAR=1) Order By COD_INTERNO';
  end;
  if RGFiltro.ItemIndex = 2 then
  begin
    if cbscpc.Checked = True then
      XLiberaDados := ' WHERE  (vwcliente.ativo=0)  and  ((vwcliente.SCPC=0) or (vwcliente.SCPC is null)) Order By COD_INTERNO'
    else
      XLiberaDados := ' WHERE  (vwcliente.ativo=0)  Order By COD_INTERNO';
  end;
  LiberaDados;
  //End;
  contadorCli;
end;

procedure TFCliente.Separar1Click(Sender: TObject);
begin
  inherited;
  if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
    DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '') = True then
  begin
    DMPESSOA.TCliente.Edit;
    DMPESSOA.TCliente.FieldByName('SEPARAR').AsString := '0';
    DMPESSOA.TCliente.Post;
    DMPESSOA.TransacPessoa.CommitRetaining;
    RGFiltro.OnClick(Sender);
  end;
end;

procedure TFCliente.Juntar1Click(Sender: TObject);
begin
  inherited;
  if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
    DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '') = True then
  begin
    DMPESSOA.TCliente.Edit;
    DMPESSOA.TCliente.FieldByName('SEPARAR').AsString := '1';
    DMPESSOA.TCliente.Post;
    DMPESSOA.TransacPessoa.CommitRetaining;
    RGFiltro.OnClick(Sender);
  end;
end;

procedure TFCliente.Extratodecontas1Click(Sender: TObject);
begin
  inherited;
  ImpExtrato;
end;

procedure TFCliente.SCPC1Click(Sender: TObject);
var
  XInformCliente: string;
begin
  inherited;
  if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
    DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '') = True then
  begin
    DMPESSOA.TCliente.Edit;
    if DMPESSOA.TCliente.FieldByName('SCPC').AsString = '1' then
    begin
      DMPESSOA.TCliente.FieldByName('SCPC').AsString := '0';
      DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString := '';
      if Mensagem('Confirma��o do usu�rio', 'Deseja excluir todas as contas deste cliente no scpc?', '', 2, 3, False, 'c') = 2 then
      begin
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add(' select * from vwparcr where vwparcr.cod_cliente=:CLIENTE ');
        DMMACS.TALX.ParamByName('CLIENTE').AsString := DMPESSOA.TCliente.FieldByName('COD_CLIENTE').AsString;
        DMMACS.TALX.Open;
        DMMACS.TALX.First;
        while not DMMACS.TALX.Eof do
        begin
          DMCONTA.TParcCR.Close;
          DMCONTA.TParcCR.SQL.Clear;
          DMCONTA.TParcCR.SQL.Add('  Update parcelacr set parcelacr.scpc=' + #39 + '0' + #39 + ' where parcelacr.cod_parcelacr=:codigo ');
          DMCONTA.TParcCR.ParamByName('CODIGO').AsString := DMMACS.TALX.FieldByName('COD_PARCELACR').AsString;
          DMCONTA.TParcCR.ExecSQL;
          DMMACS.TALX.Next;
        end;
        DMCONTA.IBT.CommitRetaining;
      end;
    end
    else
    begin
      XInformCliente := '';
      InputQuery('Solicita��o', 'Informe a observa��o financeira para o cliente:', XInformCliente);
      DMPESSOA.TCliente.FieldByName('SCPC').AsString := '1';
      DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString := XInformCliente;
      if Mensagem('Confirma��o do usu�rio', 'Deseja incluir todas as contas deste cliente no scpc?', '', 2, 3, False, 'c') = 2 then
      begin
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add(' select * from vwparcr where vwparcr.cod_cliente=:CLIENTE ');
        DMMACS.TALX.ParamByName('CLIENTE').AsString := DMPESSOA.TCliente.FieldByName('COD_CLIENTE').AsString;
        DMMACS.TALX.Open;
        DMMACS.TALX.First;
        while not DMMACS.TALX.Eof do
        begin
          DMCONTA.TParcCR.Close;
          DMCONTA.TParcCR.SQL.Clear;
          DMCONTA.TParcCR.SQL.Add('  Update parcelacr set parcelacr.scpc=' + #39 + '1' + #39 + ' where parcelacr.cod_parcelacr=:codigo ');
          DMCONTA.TParcCR.ParamByName('CODIGO').AsString := DMMACS.TALX.FieldByName('COD_PARCELACR').AsString;
          DMCONTA.TParcCR.ExecSQL;
          DMMACS.TALX.Next;
        end;
        DMCONTA.IBT.CommitRetaining;
      end;
    end;
    DMPESSOA.TCliente.Post;
    DMPESSOA.TransacPessoa.CommitRetaining;
    RGFiltro.OnClick(Sender);
  end;
end;

procedure TFCliente.cbscpcClick(Sender: TObject);
begin
  inherited;
  RGFiltro.OnClick(Sender);
end;

procedure TFCliente.DBGridCadastroPadraoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  //ATIVA O GRID SEBRADO
  if FMenu.XGRIDZEBRADA then
  begin
    if State = [] then
    begin
      if DMPESSOA.WCliente.RecNo mod 2 = 1 then
        DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
      else
        DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
    end;
    if (DMPESSOA.WCliente.FieldByName('MARK').AsString = 'X') then
      DBGridCadastroPadrao.Canvas.Brush.Color := $004D4DFF;
    DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  //SE CLIENTE NO SCPC A COR DAFONTE DEVE MUDAR
  if DMPESSOA.WCliente.FieldByName('scpc').AsString = '1' then
  begin
    DBGridCadastroPadrao.Canvas.Font.Color := clRed;
    DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  //SE CLIENTE PARA ATUALIZAR A FONTE DEVE MUDAR
  if DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString = '1' then
  begin
    DBGridCadastroPadrao.Canvas.Font.Color := clGreen;
    DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFCliente.BitBtn7Click(Sender: TObject);
begin
  inherited;

  //- 19/02/2009: vamos l�, o bot�o chama o componente RVRel(RVSystem), do RAVE
  //- 19/02/2009: dentro deste componente no evento OnPrint que ser� controlado o que ser� impresso no relat�rio

  buscadados; //- 19/02/2009: procedimento que buscar� todos os dados da empresa para serem impressas no relat�rio

  RVRel.SystemPreview.FormState := wsMaximized;
  RVRel.DefaultDest := rdPreview; //- 19/02/2009: visualizar o relat�rio direto
  RVRel.SystemPrinter.Units := unMM;
  //- 19/02/2009: trabalha nos milimetros da p�gina
  RVRel.SystemPReview.RulerType := rtBothCm;
  //- 19/02/2009: mostra r�gua superior e lateral
  RVRel.Execute;

  //- 19/02/2009: abaixo est� comentado o c�digo q gerava arquivo texto com algumas informa��es do cliente
  //- 19/02/2009: n�o ser� mais utilizado pois ser� usado um relat�rio do rave com mais informa��es do cliente
  //- 19/02/2009: a pedido da lojas pamela do panorama

  { //FILTRA EMPRESA PARA IMPRIMIR CABE�ALHO
   FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

   FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',XTabela.FieldByName('COD_CLIENTE').AsString,'');

   FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TCliente.FieldByName('cod_pessoa').AsString,'');

   FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_CLIENTE', XTabela.FieldByName('COD_CLIENTE').AsString,'');

   If FileExists('C:\MZR\Arquivos\Historico Clientes\'+ DMPESSOA.TPessoa.FieldByName('nome').AsString +'.TXT') then
       DeleteFile('C:\MZR\Arquivos\Historico Clientes\'+ DMPESSOA.TPessoa.FieldByName('nome').AsString +'.TXT');

   AssignFile(XTexto,'C:\MZR\Arquivos\Historico Clientes\'+ DMPESSOA.TPessoa.FieldByName('nome').AsString +'.TXT');
   {$I-}
   {Reset(XTexto);
   {$I+}

  { If IOResult = 0 then
       Append(XTexto)
   Else
       Rewrite(XTexto);

   // imprimi o arquivo do cliente para pedidos de venda
   Historico_PedVenda;
   //QRLabel14.Caption:=

   // DEPOIS DE IMPRIMIR PEDIDO DE VENDA, IMPRIMI AGORA ORDEM DE SERVI�O
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_CLIENTE', XTabela.FieldByName('COD_CLIENTE').AsString,'');

   // imprimi no arquivo dados da tabela ordem de servico
   ImpArquivo_OS;

   // atualiza grid
   GeraHist; }

end;

// imprimi no arquivo dados da tabela ordem de servico
procedure TFCliente.ImpArquivo_OS;
begin

  //- 19/02/2009: abaixo est� comentado o c�digo q gerava arquivo texto com algumas informa��es do cliente
  //- 19/02/2009: n�o ser� mais utilizado pois ser� usado um relat�rio do rave com mais informa��es do cliente
  //- 19/02/2009: a pedido da lojas pamela do panorama

 {  If Not DMServ.TOrd.IsEmpty
   Then Begin

       Writeln(xtexto,'');
       XLinha := '--------------------------------------------------------------------------------';
       Writeln(xtexto,xlinha);
       Writeln(xtexto,'');
       XLinha := 'Ordem de Servi�o..:';
       Writeln(xtexto,xlinha);

       Writeln(xtexto,'');
       XLinha := '   N� ORD. SERVI�O      DT. ORD. SERVI�O      FORM. PAG.                         VALOR(R$)';
       Writeln(xtexto,xlinha);

       while not DMServ.TOrd.Eof do
       begin
           // numero da ordem
           XLinha := '   ' + ConcatEspacoDir(DMServ.TOrd.FieldByName('numero').AsString,21);

           // data de abertura
           XLinha := XLinha + ConcatEspacoDir(DMServ.TOrd.FieldByName('dtabert').AsString,22);

           // selecionando a descricao da forma de pagamento
           FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',DMServ.TOrd.FieldByName('COD_FORMPAG').AsString,'');

           // descricao da forma de pagamento
           XLinha := XLinha + ConcatEspacoDir(DMFINANC.TFormPag.FieldByname('descricao').AsString,35);

           // total da ordem
           XLinha := XLinha + DMServ.TOrd.FieldByName('totord').AsString;

           // grava dados no arquivo
           writeln(xtexto,xlinha);

       // proxima ordem de servico
       DMServ.TOrd.Next;
       end;
   End;
   // fexando o arquivo gerado
   CloseFile(XTexto);

   // se o arquivo existe o mesmo eh aberto para vizualiza��o do usuario
   If FileExists('C:\MZR\Arquivos\Historico Clientes\'+ DMPESSOA.TPessoa.FieldByName('nome').AsString +'.TXT')
   Then Begin
       ShellExecute(Application.Handle, 'open',pchar('C:\MZR\Arquivos\Historico Clientes\'+ DMPESSOA.TPessoa.FieldByName('nome').AsString +'.TXT'), nil, nil, SW_SHOWNORMAL);
   End;  }
end;

// Imprimi arquivo com dados da tabela ordem de servi�o
procedure TFCliente.Historico_OS;
begin
  // selecina a quantidade de ordem de servico aberta para determinado cliente e o total das ordems
  DMServ.Alx.Close;
  DMServ.Alx.SQL.Clear;
  DMServ.Alx.SQL.Add('select count(ordem.cod_ordem) as CONT, SUM(ordem.totord) as TOTAL');
  DMServ.Alx.SQL.Add('from ORDEM Left Join cliente on ordem.cod_cliente = cliente.cod_cliente');
  DMServ.Alx.SQL.Add('where ordem.cod_cliente = :codigo');
  DMServ.Alx.ParamByName('CODigo').AsString :=
    XTabela.FieldByName('COD_CLIENTE').AsString;
  DMServ.Alx.Open;

  if DMServ.Alx.FieldByName('cont').AsInteger > 0 then
  begin
    MOrdem.Lines.Add('Ordem de Servi�o..:');
    MOrdem.Lines.Add(
      '   Quantidade: ' + IntToStr(DMServ.Alx.FieldByname('CONT').AsInteger) +
      ' - Valor Total..:' + FormatFloat('0.00', DMServ.Alx.FieldByName('TOTAL').AsCurrency) +
      ' - M�dia por Ordem..: ' + FormatFloat('0.00', DMServ.Alx.FieldByName('TOTAL').AsCurrency / DMServ.Alx.FieldByName('CONT').AsInteger));
  end;

  // maior e menor valor do ordem de servi�o jah registrado p cliente
  DMServ.Alx.Close;
  DMServ.Alx.SQL.Clear;
  DMServ.Alx.SQL.Add('select ordem.cod_cliente, ordem.numero, ordem.dtabert, ordem.totord');
  DMServ.Alx.SQL.Add('from ORDEM Left Join cliente on ordem.cod_cliente = cliente.cod_cliente');
  DMServ.Alx.SQL.Add('where ordem.cod_cliente = :codigo');
  DMServ.Alx.ParamByName('CODigo').AsString := XTabela.FieldByName('COD_CLIENTE').AsString;
  DMServ.Alx.SQL.Add('order by ordem.totord desc');
  DMServ.Alx.Open;

  if not DMServ.Alx.IsEmpty then
  begin
    DMServ.Alx.First;
    MOrdem.Lines.Add('Maior Ordem..:');
    MOrdem.Lines.Add('   Valor..: ' + FormatFloat('0.00', DMServ.Alx.FieldByName('totord').AsCurrency) +
      '  - Data..: ' + DMServ.Alx.FieldByName('dtabert').AsString +
      '  - N�mero..: ' + DMServ.Alx.FieldByName('numero').AsString);
  end;
  if not DMServ.Alx.IsEmpty then
  begin
    DMServ.Alx.Last;
    MOrdem.Lines.Add('Menor Ordem..:');
    MOrdem.Lines.Add('   Valor..: ' + FormatFloat('0.00', DMServ.Alx.FieldByName('totord').AsCurrency) +
      '  - Data..: ' + DMServ.Alx.FieldByName('dtabert').AsString +
      '  - N�mero..: ' + DMServ.Alx.FieldByName('numero').AsString);
  end;

  //meira e ultima ordem de servico do cliente
  DMServ.Alx.Close;
  DMServ.Alx.SQL.Clear;
  DMServ.Alx.SQL.Add('select ordem.cod_cliente, ordem.numero, ordem.dtabert, ordem.totord');
  DMServ.Alx.SQL.Add('from ORDEM Left Join cliente on ordem.cod_cliente = cliente.cod_cliente');
  DMServ.Alx.SQL.Add('where ordem.cod_cliente = :codigo');
  DMServ.Alx.ParamByName('CODigo').AsString := XTabela.FieldByName('COD_CLIENTE').AsString;
  DMServ.Alx.SQL.Add('order by ordem.dtabert desc');
  DMServ.Alx.Open;

  if not DMServ.Alx.IsEmpty then
  begin
    DMServ.Alx.First;
    MOrdem.Lines.Add('Ultima Ordem..:');
    MOrdem.Lines.Add('   Valor..: ' + FormatFloat('0.00', DMServ.Alx.FieldByName('totord').AsCurrency) +
      '  - Data..: ' + DMServ.Alx.FieldByName('dtabert').AsString +
      '  - N�mero..: ' + DMServ.Alx.FieldByName('numero').AsString);
  end;
  if not DMServ.Alx.IsEmpty then
  begin
    DMServ.Alx.Last;
    MOrdem.Lines.Add('Primeira Ordem..:');
    MOrdem.Lines.Add('   Valor..: ' + FormatFloat('0.00', DMServ.Alx.FieldByName('totord').AsCurrency) +
      '  - Data..: ' + DMServ.Alx.FieldByName('dtabert').AsString +
      '  - N�mero..: ' + DMServ.Alx.FieldByName('numero').AsString);
  end;

  // dados das ordens de servi�o do cliente
  DMServ.WOrdem.Close;
  DMServ.WOrdem.SQL.Clear;
  DMServ.WOrdem.SQL.Add('select * from vwordem');
  DMServ.WOrdem.SQL.Add('where vwordem.cod_cliente = :codigo order by vwordem.dtabert desc');
  DMServ.WOrdem.ParamByName('codigo').AsInteger := XTabela.FieldByName('COD_CLIENTE').AsInteger;
  DMServ.WOrdem.Open;
end;

// imprimi historico do cliente sobre pedido de venda
procedure TFCliente.Imprime_Historico;
begin

  //- 19/02/2009: abaixo est� comentado o c�digo q gerava arquivo texto com algumas informa��es do cliente
  //- 19/02/2009: n�o ser� mais utilizado pois ser� usado um relat�rio do rave com mais informa��es do cliente
  //- 19/02/2009: a pedido da lojas pamela do panorama

  {
   //**********************
   //**qtd de compras
   //**********************
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' SELECT Count(Pedvenda.cod_Pedvenda) AS CONT, SUM(PEDVENDA.VALOR) AS TOTAL FROM PEDVENDA ');
   DMMACS.TALX.SQL.Add(' Left Join cliente on pedvenda.cod_cliente = cliente.cod_cliente ');
   DMMACS.TALX.SQL.Add(' where pedvenda.cod_cliente=:CODCLIENTE ');
   DMMACS.TALX.ParamByName('CODCLIENTE').AsString:=XTabela.FieldByName('COD_CLIENTE').AsString;
   DMMACS.TALX.Open;

   //**********************
   //**Maior e Menor Compra
   //**********************
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' SELECT Pedvenda.valor, pedvenda.dtpedven, pedvenda.numped FROM PEDVENDA ');
   DMESTOQUE.Alx.SQL.Add(' Left Join cliente on pedvenda.cod_cliente = cliente.cod_cliente ');
   DMESTOQUE.Alx.SQL.Add(' where pedvenda.cod_cliente=:CODCLIENTE ');
   DMESTOQUE.Alx.ParamByName('CODCLIENTE').AsString:=XTabela.FieldByName('COD_CLIENTE').AsString;
   DMESTOQUE.Alx.SQL.Add(' order by pedvenda.valor desc ');
   DMESTOQUE.Alx.Open;

   //**************************
   //**Primeira e ultima compra
   //**************************
   DMFINANC.TAlx.Close;
   DMFINANC.TALX.SQL.Clear;
   DMFINANC.TALX.SQL.Add(' SELECT Pedvenda.valor, pedvenda.dtpedven, pedvenda.numped FROM PEDVENDA ');
   DMFINANC.TALX.SQL.Add(' Left Join cliente on pedvenda.cod_cliente = cliente.cod_cliente ');
   DMFINANC.TALX.SQL.Add(' where pedvenda.cod_cliente=:CODCLIENTE ');
   DMFINANC.TALX.ParamByName('CODCLIENTE').AsString:=XTabela.FieldByName('COD_CLIENTE').AsString;
   DMFINANC.TALX.SQL.Add(' order by pedvenda.dtpedven desc ');
   DMFINANC.TALX.Open;

   //**********************
   //**Documentos em atraso
   //**********************
   DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add(' select count(vwparcr.cod_parcelacr) as CONT, sum(vwparcr.valor) as TOTAL From vwparcr ');
   DMPESSOA.TALX.SQL.Add(' where (vwparcr.dtvenc<:data) AND (vwparcr.fech<>'+#39+'S'+#39+') and (vwparcr.cod_cliente=:COD_CLIENTE) ');
 DMPESSOA.TALX.ParamByName('DATA').AsDate:=Date();
 DMPESSOA.TALX.ParamByName('COD_CLIENTE').AsInteger:=XTabela.FieldByName('COD_CLIENTE').AsInteger;
   DMPESSOA.TALX.Open;

   //*******************************
   //**Lista de Documentos em atraso
   //*******************************
   DMCONTA.TAlx.Close;
   DMCONTA.TALX.SQL.Clear;
   DMCONTA.TALX.SQL.Add(' select * From vwparcr ');
   DMCONTA.TALX.SQL.Add(' where (vwparcr.dtvenc<:data) AND (vwparcr.fech<>'+#39+'S'+#39+') and (vwparcr.cod_cliente=:COD_CLIENTE) ');
 DMCONTA.TALX.ParamByName('DATA').AsDate:=Date();
 DMCONTA.TALX.ParamByName('COD_CLIENTE').AsInteger:=XTabela.FieldByName('COD_CLIENTE').AsInteger;
   DMCONTA.TALX.Open;}

end;

// DADOS DA TABELA PEDIDO DE VENDA REFERENTE AO HISTORICO DO CLIENTE
procedure TFCliente.Historico_PedVenda;
begin

  //- 19/02/2009: abaixo est� comentado o c�digo q gerava arquivo texto com algumas informa��es do cliente
  //- 19/02/2009: n�o ser� mais utilizado pois ser� usado um relat�rio do rave com mais informa��es do cliente
  //- 19/02/2009: a pedido da lojas pamela do panorama

  { // apenas seleciona historico do cliente sobre maior e menor compra, documentos e contas em atraso...
   Imprime_Historico;

   If Not DMSAIDA.TPedV.IsEmpty
   Then Begin
       Try
           // grava linha de dados no arquivo
           Writeln(XTexto, 'Pedido de Venda..:');
           Writeln(XTexto, '');

           // grava dados
           XLinha := '   N�M. PEDIDO        DT. PEDIDO VENDA        FORM. PAG.                         VALOR(R$)';

           Writeln(XTexto, XLinha);

           while not DMSAIDA.TPedV.Eof do
           begin
               XLinha := '';

               // numero do pedido
               XLinha := XLinha + '   ' + ConcatEspacoDir(DMSAIDA.TPedV.fieldByname('numped').AsString,19);

               //data pedido de venda
               XLinha := XLinha + ConcatEspacoDir(DMSAIDA.TPedV.fieldByname('dtpedven').AsString,24);

               // seleciona a descricao da forma de pagamento
               FiltraTabela(DMFINANC.TFormPag ,'FORMPAG','COD_FORMPAG',DMSAIDA.TPedV.FieldByName('cod_formpag').AsString,'');

               // forma de pagamento
               XLinha := XLinha + ConcatEspacoDir(DMFINANC.TFormPag.FieldByName('descricao').AsString,35);

               // valor do pedido
               XLinha := XLinha + DMSAIDA.TPedV.fieldByname('valor').AsString;

               // grava linha de dados no arquivo
               Writeln(XTexto, XLinha);

           DMSAIDA.TPedV.Next;
           end;
       Except
           Mensagem('   A T E N � � O   ', 'Falha na impress�o do hist�rico do cliente.','',1,1,false,'E');
           Exit;
       End;
   End;

   // grava linha de dados no arquivo
   Writeln(XTexto, '');

   // verifica se o cliente possui dados da ultimo pedido de venda
   If DMMACS.TALX.FieldByName('cont').AsString <> '0'
   Then Begin
       XLinha := '';

       XLinha := XLinha + '   Quantidade..: ' + IntToStr(DMMACS.TALX.FieldByName('CONT').AsInteger) + '  - Valor Total..: '+FormatFloat('0.00', DMMACS.TALX.FieldByName('TOTAL').AsCurrency)+ '  - M�dia por Pedido..: '+FormatFloat('0.00', DMMACS.TALX.FieldByName('TOTAL').AsCurrency/DMMACS.TALX.FieldByName('CONT').AsInteger);

       // grava linha de dados no arquivo
       Writeln(XTexto, XLinha);
       Writeln(XTexto,'');
   End;

   // maior e menor compra
   If Not DMESTOQUE.Alx.IsEmpty
   Then Begin
       DMESTOQUE.Alx.First;

       XLinha := '';

       XLinha := XLinha + '   Maior Compra..:';

       XLinha := XLinha + '   Valor..: '+FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('valor').AsCurrency)+ '  - Data..: '+DMESTOQUE.Alx.FieldByName('dtpedven').AsString+ '  - Pedido..: '+DMESTOQUE.Alx.FieldByName('numped').AsString;

       // grava linha de dados no arquivo
       Writeln(XTexto, XLinha);
       Writeln(XTexto,'');

       DMESTOQUE.Alx.Last;

       XLinha := '';

       XLinha := XLinha + '   Menor Compra..:';

       XLinha := XLinha + '   Valor..: '+FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('valor').AsCurrency)+ '  - Data..: '+DMESTOQUE.Alx.FieldByName('dtpedven').AsString+ '  - Pedido..: '+DMESTOQUE.Alx.FieldByName('numped').AsString;

       // grava linha de dados no arquivo
       Writeln(XTexto, XLinha);
       Writeln(XTexto,'');
   End;

   //meira e ultima compra
   If Not DMFINANC.TAlx.IsEmpty
   Then Begin
       DMFINANC.TAlx.First;

       XLinha := '';

       XLinha := XLinha + '   �ltima Compra..:';

       XLinha := XLinha + '   Valor..: '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('valor').AsCurrency)+'  - Data..: '+DMFINANC.TAlx.FieldByName('dtpedven').AsString+ '  - Pedido..: '+DMFINANC.TAlx.FieldByName('numped').AsString;

       // grava linha de dados no arquivo
       Writeln(XTexto, XLinha);
       Writeln(XTexto,'');

       DMFINANC.TAlx.Last;

       XLinha := '   Primeira Compra..:';

       XLinha := XLinha + '   Valor..: '+FormatFloat('0.00', DMFINANC.TALX.FieldByName('valor').AsCurrency)+ '  - Data..: '+DMFINANC.TALX.FieldByName('dtpedven').AsString+ '  - Pedido..: '+DMFINANC.TALX.FieldByName('numped').AsString;

       // grava linha de dados no arquivo
       Writeln(XTexto, XLinha);
       Writeln(XTexto,'');
   End;

   // Documentos em atraso
   If DMPESSOA.TALX.FieldByName('cont').AsInteger > 0
   Then Begin
       XLinha := '';

       XLinha := XLinha + '   Documentos em atraso..: '+DMPESSOA.TALX.FieldByName('CONT').AsString + '   Valor..: '+FormatFloat('0.00', DMPESSOA.TALX.FieldByName('TOTAL').AsCurrency);
       Writeln(XTexto, XLinha);
       XLinha := '   DT. LANC.          DT. VENC.           N�M. PARC.            FORM. PAG.                           VALOR(R$)';
       Writeln(XTexto, XLinha);

       DMCONTA.TAlx.First;

       // Lista dos documentos em atraso
       while Not DMCONTA.TAlx.Eof do
       Begin

           // data de lancamento
           XLinha := '   ' + ConcatEspacoDir(DMCONTA.TAlx.FieldByName('dtlanc').AsString,19);

           // data de vencimento
           XLinha := XLinha + ConcatEspacoDir(DMCONTA.TAlx.FieldByName('dtvenc').AsString,20);

           // numero da parcela
           XLinha := XLinha + ConcatEspacoDir(DMCONTA.TAlx.FIeldByName('numparc').AsString,22);

           // filtra tabela forma de pagamento para buscar a descricao referente a parcela
           FiltraTabela(DMFINANC.TAlx,'FORMPAG','COD_FORMPAG',DMCONTA.TAlx.FIeldByName('cod_formpag').AsString,'');

           // descricao da forma de pagemento
           XLinha := XLinha + ConcatEspacoDir(DMFINANC.TAlx.FieldByName('descricao').AsString,37);

           // valor da parcela
           XLinha := XLinha + DMCONTA.TAlx.FieldByname('valor').AsString;

           // grava linha de dados no arquivo
           Writeln(XTexto, XLinha);

       // proximo documento em atraso
       DMCONTA.TAlx.Next;
       End;
   End;}

end;

procedure TFCliente.FrmTabelaBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmFormPag.Repaint;
  FrmTransp.Repaint;
  FrmVendedor.Repaint;
  FrmRegiao.Repaint;
  FrmNatural.Repaint;
end;

procedure TFCliente.FrmTabelaBTNMINUSClick(Sender: TObject);
begin
  inherited;
end;

// retorna a media de dias em atraso nas contas
function TFCliente.RetornaMediaAtraso: string;
var
  XDiasAtraso: TDateTime; // acumula a quantidade de dias das contas em atraso
  XMediaDias: real; // media de dias em atraso
begin
  DMPESSOA.TALX.Close;
  DMPESSOA.TALX.SQL.Clear;
  DMPESSOA.TALX.SQL.Add(' select * From vwparcr ');
  DMPESSOA.TALX.SQL.Add(' where (vwparcr.dtvenc<:data) AND (vwparcr.fech<>' + #39 + 'S' + #39 + ') and (vwparcr.cod_cliente=:COD_CLIENTE) ');
  DMPESSOA.TALX.ParamByName('DATA').AsDate := Date();
  DMPESSOA.TALX.ParamByName('COD_CLIENTE').AsInteger := XTabela.FieldByName('COD_CLIENTE').AsInteger;
  DMPESSOA.TALX.Open;

  XDiasAtraso := 0;

  while not DMPESSOA.TALX.Eof do
  begin
    // armazena o total de dias em atraso de todas as contas. Utiliza uma fun��o que retorna a diferenca entre as datas
    XDiasAtraso := XDiasAtraso + (Date() - DMPESSOA.TALX.FieldByName('DTVENC').AsDateTime);

    // proxima conta vencida
    DMPESSOA.TALX.Next;
  end;

  if DMMACS.TALX.FieldByName('CONT').AsInteger > 0 then
  begin
    // media de dias que recebe a quantidade de dias em atraso pelo numero de contas
    XMediaDias := XDiasAtraso / DMMACS.TALX.FieldByName('CONT').AsInteger;
    LMedia.Caption := FloatToStr(XMediaDias);
    x3 := FloatToStr(XMediaDias);
    // - 19/02/2009: media de dias em atraso de cada parcela para gerar relat�rio do RAVE
  end
  else
  begin
    LMedia.Caption := '0';
  end;
end;

//duplo click na grid de consulta
procedure TFCliente.DBGridCadastroPadraoDblClick(Sender: TObject);
begin
  inherited;

end;

// key press gri de consulta
procedure TFCliente.EdCodigoEnter(Sender: TObject);
begin

  if EdCodigo.Text = 'C�digo' then
    EdCodigo.Text := ''
  else
    EdCodigo.SelectAll;

  EdCodigo.Font.Color := clBlack;

end;

procedure TFCliente.EdCodigoExit(Sender: TObject);
begin

  if Trim(EdCodigo.Text) = '' then
  begin
    EdCodigo.Text := 'C�digo';
    EdCodigo.Font.Color := clGray;
  end;

end;

procedure TFCliente.EdNomeEnter(Sender: TObject);
begin

  if EdNome.Text = 'Nome' then
    EdNome.Text := ''
  else
    EdNome.SelectAll;

  EdNome.Font.Color := clBlack;

end;

procedure TFCliente.EdNomeExit(Sender: TObject);
begin

  if Trim(EdNome.Text) = '' then
  begin
    EdNome.Text := 'Nome';
    EdNome.Font.Color := clGray;
  end;

end;

procedure TFCliente.EdCpfEnter(Sender: TObject);
begin

  if EdCpf.Text = 'CPF/CNPJ' then
    EdCpf.Text := ''
  else
    EdCpf.SelectAll;

  EdCpf.Font.Color := clBlack;

end;

procedure TFCliente.EdCpfExit(Sender: TObject);
begin

  if Trim(EdCpf.Text) = '' then
  begin
    EdCpf.Text := 'CPF/CNPJ';
    EdCpf.Font.Color := clGray;
  end;

end;

procedure TFCliente.EdNomeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if FMenu.XCONSULTARAPIDA then
  begin
    // - 16/02/2009: pesquisa nome cliente na tabela aberta
    DMPESSOA.WCliente.Locate('NOME', EdNome.Text, [loPartialKey, loCaseInsensitive]);
    //contadorCli;
  end;

end;

procedure TFCliente.EdCodigoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if FMenu.XCONSULTARAPIDA then
  begin
    // - 16/02/2009: pesquisa codigo do cliente na tabela aberta
    DMPESSOA.WCliente.Locate('COD_INTERNO', EdCodigo.Text, [loCaseInsensitive]);
  end;
end;

procedure TFCliente.EdCpfKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if FMenu.XCONSULTARAPIDA then
  begin
    // - 16/02/2009: pesquisa cpf/cnpj do cliente na tabela aberta
    DMPESSOA.WCliente.Locate('CPFCNPJ', EdCpf.Text, [loPartialKey,
        loCaseInsensitive]);
  end;
  contadorCli;
end;

// - 19/02/2009: procedimento que busca dados da empresa e cliente para gerar relat�rio no RAVE
procedure TFCliente.buscadados;
begin

  FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, ''); // - 19/02/2009: filtra dados de empresa

  FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('cod_cidade').AsString, ''); // - 19/02/2009: filtra cidade da empresa

  FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.fieldByName('cod_estado').AsString, ''); // - 19/02/2009: filtra estado da empresa

end;

// - 19/02/2009: impress�o do rave (componente, linha, coluna, texto, fonte, tamanho, cor)
procedure TFCliente.Imprime(RVRel: TRVSystem; Linha: Double; Coluna: Double; Texto: string; Fonte: string; TamFonte: Integer;
  CorFonte: TColor; Tipo: Boolean);
begin
  with RVRel.BaseReport do
  begin
    GotoXY(Coluna, Linha);
    FontColor := CorFonte;
    Bold := Tipo;
    FontSize := TamFonte;
    FontName := Fonte;
    Print(Texto);
  end;
end;

// - 19/02/2009: x = linha da pagina / tipo = tracejada ou continua / bld = negrito ou n�o
procedure TFCliente.linha(x: Integer; tipo: Boolean);
begin
  if tipo = True then
  begin
    Imprime(RVRel, x, 5,
      '______________________________________________________________________________________________',
      'Verdana', 10, clBlack, false);

  end
  else
  begin
    Imprime(RVRel, x, 5,
      '------------------------------------------------------------------------------------------------------------',
      'Verdana', 10, clBlack, false);
  end;
  auxlinha := auxlinha + 6;
  compara;
end;

// - 19/02/2009: On print do componente do Rave, antes de imprimir ele vai setar os locais que ser�o impressas as informa��es do cliente
procedure TFCliente.RVRelPrint(Sender: TObject);
var
  pp, up: string;
  // - 20/02/2009: vari�veis que armazenam data do primeiro e ultimo pedido e primeira e ultima ordem
  difp, aux: Real;
  // - 20/02/2009: vari�veis que guardam a diferen�a de dias entre duas datas
  atraso, adiantado: Integer;
  // - 20/02/2009: vari�vel que guarda a diferen�a entre data de vencimento e data do relat�rio
begin
  inherited;
  difp := 0;
  // - 19/02/2009: CABE�ALHO

  cabecalho; // - 02/03/2009: imprime cabe�alho de p�gina

  // - 19/02/2009: dados do cliente
  Imprime(RVRel, 31, 5, 'Cliente: ' +
    DMPESSOA.TCliente.fieldByName('COD_INTERNO').AsString + ' - ' +
    DMPESSOA.TPessoa.fieldByName('NOME').AsString, 'Verdana', 8, clBlack, true);
  Imprime(RVRel, 31, 150, 'CPF/CNPJ: ' +
    DMPESSOA.TPessoa.fieldByName('CPFCNPJ').AsString, 'Verdana', 8, clBlack,
    false);
  Imprime(RVRel, 35, 5, 'Endere�o: ' +
    DMPESSOA.TPessoa.fieldByName('ENDERECO').AsString + ' - ' +
    DMPESSOA.TPessoa.fieldByName('BAIRRO').AsString, 'Verdana', 8, clBlack,
    false);
  Imprime(RVRel, 35, 150, 'CEP: ' + DMPESSOA.TPessoa.fieldByName('CEP').AsString,
    'Verdana', 8, clBlack, false);
  Imprime(RVRel, 39, 5, 'Cidade: ' +
    DMGEOGRAFIA.TCidade.FieldByName('NOME').AsString + ' - ' +
    DMGEOGRAFIA.TEstado.fieldByName('UF_ESTADO').AsString, 'Verdana', 8, clBlack,
    false);
  Imprime(RVRel, 39, 150, 'Fone: ' +
    DMPESSOA.TPessoa.fieldByName('TELREL').AsString, 'Verdana', 8, clBlack, true);

  auxlinha := 43;

  linha(auxlinha, true); // - 19/02/2009: linha separat�ria

  // - 19/02/2009: INFORMA��ES COMERCIAIS
  Imprime(RVRel, auxlinha, 5, 'Informa��es comerciais:', 'Verdana', 10, clBlack,
    true);

  auxlinha := auxlinha + 5;

  ///////////////////////////////////////
  // - 20/02/2009: PEDIDOS DE VENDA //
  ///////////////////////////////////////

  informacoescli('P', 'Ultima');
  // - 19/02/2009: busca todas as informa��es da PRIMEIRO e ULTIMO pedido de compra do cliente
  if x4 <> '' then
  begin
    Imprime(RVRel, auxlinha, 10, 'Primeiro Pedido de Compra: ' + x4 +
      '   No Valor de: R$ ' + x5 + '   em: ' + x6 + '    pagamento em: ' +
      descforma1, 'Verdana', 8, clBlack, false);
    up := x6; // - 20/02/2009: data do �ltimo pedido
    pp := x3; // - 20/02/2009: data do primeiro pedido
    difp := DaysBetween(StrToDate(pp), StrToDate(up));
    // - 20/02/2009: calcula a diferen�a de dias entre as datas
    auxlinha := auxlinha + 4;
    compara;
  end;
  if x1 <> '' then
  begin
    Imprime(RVRel, auxlinha, 10, '�ltimo Pedido de Compra: ' + x1 +
      '   No Valor de: R$ ' + x2 + '   em: ' + x3 + '    pagamento em: ' +
      descforma2, 'Verdana', 8, clBlack, false);

    auxlinha := auxlinha + 4;
    compara;
  end;

  informacoescli('P', 'Maior');
  // - 19/02/2009: busca todas as informa��es da MAIOR e MENOR compra do cliente
  if x1 <> '' then
  begin
    Imprime(RVRel, auxlinha, 10, 'Maior Pedido de Compra: ' + x1 +
      '   No Valor de: R$ ' + x2 + '   em: ' + x3 + '    pagamento em: ' +
      descforma1, 'Verdana', 8, clBlack, false);
    auxlinha := auxlinha + 4;
    compara;
  end;
  if x4 <> '' then
  begin
    Imprime(RVRel, auxlinha, 10, 'Menor Pedido de Compra: ' + x4 +
      '   No Valor de: R$ ' + x5 + '   em: ' + x6 + '    pagamento em: ' +
      descforma2, 'Verdana', 8, clBlack, false);
    auxlinha := auxlinha + 6;
    compara;
  end;

  informacoescli('I', 'Pedido');
  // - 19/02/2009: busca todas as informa��es dos itens comprados pelo cliente
  if itens > 0 then
  begin
    somaitens := somaitens / itens;
    FormatCurr('0.00', somaitens);
    Imprime(RVRel, auxlinha, 10, 'M�dia de Valor de Produto: R$ ' +
      CurrToStr(somaitens), 'Verdana', 8, clBlack, true);
    auxlinha := auxlinha + 4;
    compara;
  end;

  informacoescli('P', 'Pedido');
  // - 19/02/2009: busca todas as informa��es dos PEDIDOS do cliente
  if x1 <> '' then
  begin
    if difp <> 0
      {// - 20/02/2009: se a diferen�a de dias n�o for zero (caso de um unico pedido)} then
    begin
      if difp < 30
        {// - 20/02/2009: se a diferen�a de datas for menor que 30 dias} then
      begin
        Imprime(RVRel, auxlinha, 10, 'M�dia de Valor de Compra Mensal: R$ ' + x2,
          'Verdana', 8, clBlack, true);
      end
      else
      begin
        difp := (StrToCurr(x2) / difp) * 30;
        // - 20/02/2009: calcula a m�dia de compra por m�s
        Imprime(RVRel, auxlinha, 10, 'M�dia de Valor de Compra Mensal: R$ ' +
          FloatToStr(StrToFloat(FormatFloat('0.00', difp))), 'Verdana', 8,
          clBlack, true);
      end;
      auxlinha := auxlinha + 6;
      compara;
    end;

    Imprime(RVRel, auxlinha, 10, 'Quantidade de Pedidos: ' + x1 +
      '   Valor Total dos Pedidos: R$ ' + x2 + '   M�dia do Valor de Compra: R$ '
      + x3, 'Verdana', 8, clBlack, true);
    auxlinha := auxlinha + 6;
    compara;
  end;

  ///////////////////////////////////////
 // - 20/02/2009: ORDENS DE SERVI�O//
 ///////////////////////////////////////

  informacoescli('O', 'Ultima');
  // - 19/02/2009: busca todas as informa��es da PRIMEIRO e ULTIMO ordem de servi�o do cliente
  if x4 <> '' then
  begin

    linha(auxlinha, false);
    // - 19/02/2009: s� imprime linha separat�ria se tiver ordens de servi�o

    Imprime(RVRel, auxlinha, 10, 'Primeira Ordem de Sevi�o: ' + x4 +
      '   No Valor de: R$ ' + x5 + '   em: ' + x6 + '    pagamento em: ' +
      descforma1, 'Verdana', 8, clBlack, false);
    up := x6;
    pp := x3;
    difp := DaysBetween(StrToDate(pp), StrToDate(up));
    auxlinha := auxlinha + 4;
    compara;
  end;
  if x1 <> '' then
  begin
    Imprime(RVRel, auxlinha, 10, '�ltima Ordem de Sevi�o: ' + x1 +
      '   No Valor de: R$ ' + x2 + '   em: ' + x3 + '    pagamento em: ' +
      descforma2, 'Verdana', 8, clBlack, false);
    auxlinha := auxlinha + 4;
    compara;
  end;

  informacoescli('O', 'Maior');
  // - 19/02/2009: busca todas as informa��es da MAIOR e MENOR compra do cliente
  if x1 <> '' then
  begin
    Imprime(RVRel, auxlinha, 10, 'Maior Ordem de Sevi�o: ' + x1 +
      '   No Valor de: R$ ' + x2 + '   em: ' + x3 + '    pagamento em: ' +
      descforma1, 'Verdana', 8, clBlack, false);
    auxlinha := auxlinha + 4;
    compara;
  end;
  if x4 <> '' then
  begin
    Imprime(RVRel, auxlinha, 10, 'Menor Ordem de Sevi�o: ' + x4 +
      '   No Valor de: R$ ' + x5 + '   em: ' + x6 + '    pagamento em: ' +
      descforma2, 'Verdana', 8, clBlack, false);
    auxlinha := auxlinha + 6;
    compara;
  end;

  informacoescli('I', 'Ordem');
  // - 19/02/2009: busca todas as informa��es dos itens comprados pelo cliente em ordens
  if itens > 0 then
  begin
    somaitens := somaitens / itens;
    Imprime(RVRel, auxlinha, 10, 'M�dia de Valor de Produtos em Ordem: R$ ' +
      CurrToStr(somaitens), 'Verdana', 8, clBlack, true);
    auxlinha := auxlinha + 4;
    compara;
  end;
  if serv > 0 then
  begin
    somaserv := somaserv / serv;
    Imprime(RVRel, auxlinha, 10, 'M�dia de Valor de Servi�os em Ordem: R$ ' +
      CurrToStr(somaserv), 'Verdana', 8, clBlack, true);
    auxlinha := auxlinha + 4;
    compara;
  end;

  informacoescli('O', 'Ordem');
  // - 19/02/2009: busca todas as informa��es dos PEDIDOS do cliente
  if x1 <> '' then
  begin
    if difp < 30 {// - 20/02/2009: se a diferen�a de datas for menor que 30 dias} then
    begin
      Imprime(RVRel, auxlinha, 10,
        'M�dia de Valor de Ordens de Servi�o por M�s: R$ ' + x2, 'Verdana', 8,
        clBlack, true);
    end
    else
    begin
      difp := (StrToCurr(x2) / difp) * 30;
      // - 20/02/2009: calcula a m�dia do valor das ordens por m�s
      Imprime(RVRel, auxlinha, 10,
        'M�dia de Valor de Ordens de Servi�o por M�s: R$ ' +
        FloatToStr(StrToFloat(FormatFloat('0.00', difp))), 'Verdana', 8, clBlack,
        true);
    end;
    auxlinha := auxlinha + 6;
    compara;

    Imprime(RVRel, auxlinha, 10, 'Quantidade de Ordens de Sevi�o: ' + x1 +
      '   Valor Total das Ordens: R$ ' + x2 + '   M�dia do Valor de Compra: R$ ' +
      x3, 'Verdana', 8, clBlack, true);
    auxlinha := auxlinha + 6;
    compara;
  end;

  linha(auxlinha, True); // - 19/02/2009: linha separat�ria

  ///////////////////////////////////////
  // - 20/02/2009: CONTAS A RECEBER //
  ///////////////////////////////////////

  informacoescli('C', 'ParcVencidas');
  // - 19/02/2009: busca todas as informa��es das PARCELAS do cliente
  if x1 <> '' then
  begin
    Imprime(RVRel, auxlinha, 5, 'Quantidade de parcelas atrasadas: ' + x1 +
      '   No Valor de: R$ ' + x2 + '   M�dia de dias de atraso: ' + x3, 'Verdana',
      10, clBlack, true);
    auxlinha := auxlinha + 7;
    compara;
  end;

  informacoescli('C', 'Vencidas');
  // - 19/02/2009: busca todas as informa��es das PARCELAS do cliente
  if not DMMACS.TALX.IsEmpty then
  begin
    Imprime(RVRel, auxlinha, 5, 'Parcelas Vencidas', 'Verdana', 10, clBlack,
      true);
    auxlinha := auxlinha + 5;
    compara;

    while not DMMACS.TALX.Eof do
    begin
      atraso := DaysBetween(DMMACS.TALX.fieldByName('DTVENC').AsDateTime,
        Date());
      Imprime(RVRel, auxlinha, 10, 'N�mero da parcela: ' +
        DMMACS.TALX.fieldByName('NUMPARC').AsString + '   Com vencimento em: ' +
        DMMACS.TALX.fieldByName('DTVENC').AsString + '   No valor de: R$ ' +
        DMMACS.TALX.fieldByName('VALOR').AsString + '   Atraso de: ' +
        IntToStr(atraso) + ' dias.', 'Verdana', 8, clBlack, false);
      auxlinha := auxlinha + 4; // - 20/02/2009: controla linha de impress�o
      compara; // - 20/02/2009: compara se est� no fim da pagina
      DMMACS.TALX.Next; // - 20/02/2009: pr�ximo registro
    end;
  end;

  linha(auxlinha, True); // - 19/02/2009: linha separat�ria

  informacoescli('C', 'ParcVencer');
  // - 19/02/2009: busca todas as informa��es das PARCELAS do cliente
  if x1 <> '' then
  begin
    Imprime(RVRel, auxlinha, 5, 'Quantidade de parcelas a vencer: ' + x1 +
      '   No Valor de: R$ ' + x2, 'Verdana', 10, clBlack, true);
    auxlinha := auxlinha + 7;
    compara;
  end;

  informacoescli('C', 'Vencer');
  // - 19/02/2009: busca todas as informa��es das PARCELAS do cliente
  if not DMMACS.TALX.IsEmpty then
  begin
    Imprime(RVRel, auxlinha, 5, 'Parcelas a Vencer', 'Verdana', 10, clBlack,
      true);
    auxlinha := auxlinha + 5;
    compara;

    while not DMMACS.TALX.Eof do
    begin

      Imprime(RVRel, auxlinha, 10, 'N�mero da parcela: ' +
        DMMACS.TALX.fieldByName('NUMPARC').AsString + '   Com vencimento em: ' +
        DMMACS.TALX.fieldByName('DTVENC').AsString + '   No valor de: R$ ' +
        DMMACS.TALX.fieldByName('VALOR').AsString, 'Verdana', 8, clBlack, false);
      auxlinha := auxlinha + 4; // - 20/02/2009: controla linha de impress�o
      compara; // - 20/02/2009: compara se est� no fim da pagina
      DMMACS.TALX.Next; // - 20/02/2009: pr�ximo registro
    end;
  end;

  linha(auxlinha, True); // - 19/02/2009: linha separat�ria

  atraso := 0; // - 19/02/2009: vari�veis de controle de inadimpl�ncia
  adiantado := 0; // - 19/02/2009: vari�veis de controle de inadimpl�ncia
  //aux := 0; // - 19/02/2009: vari�veis de controle de inadimpl�ncia

  informacoescli('C', 'Inadimplencia');
  // - 19/02/2009: busca todas as informa��es das PARCELAS do cliente para compara��o de inadimplencia
  if not DMMACS.TALX.IsEmpty {// - 19/02/2009: se existem parcelas pagas} then
  begin
    while not DMMACS.TALX.Eof do // - 19/02/2009: enquanto n�o for o fim
    begin
      FiltraTabela(DMMACS.TLoja, 'LOJA', '', '', '');
      if DMMACS.TLoja.FieldByName('DIASCARE').AsInteger > 0
        {// - 02/03/20029: compara em loja os dias de carencia para controle de inadimpl�ncia} then
      begin
        x1 := DMMACS.TLoja.FieldByName('DIASCARE').AsString;
      end
      else
      begin
        x1 := '10';
      end;
      if (DMMACS.TALX.fieldByName('DTVENC').AsDateTime <
        DMMACS.TALX.fieldByName('DTDEBITO').AsDateTime) and
        (DaysBetween(DMMACS.TALX.fieldByName('DTVENC').AsDateTime,
        DMMACS.TALX.fieldByName('DTDEBITO').AsDateTime) > StrToInt(x1)) then
      begin
        atraso := atraso + 1;
      end
      else
      begin
        adiantado := adiantado + 1;
      end;
      DMMACS.TALX.Next;
    end;
    aux := atraso + adiantado;
    atraso := (atraso * 100);
    aux := (atraso / aux);
    // - 20/02/2009: recebe o calculo da porcentagem de inadimpl�ncia nas parcelas ja pagas
    FormatCurr('0.00', aux);
    Imprime(RVRel, auxlinha, 10, 'Em ' + CurrToStr(aux) +
      '% das parcelas pagas, houve atraso maior que ' + x1 + ' dias.', 'Verdana',
      8, clBlack, true);

  end;

  linha(272, True); // - 20/02/2009: linha do rodap�
  Imprime(RVRel, 276, 90, 'Mzr Sistemas', 'Verdana', 8, clBlack, False);
  // - 20/02/2009: imprime rodap�

end;

// - 20/02/2009: compara se chegou no final da pagina para abrir nova pagina
procedure TFCliente.compara;
begin
  if auxlinha > 270 then
  begin
    linha(272, True); // - 20/02/2009: linha do rodap�
    Imprime(RVRel, 276, 90, 'Mzr Sistemas', 'Verdana', 8, clBlack, False);
    // - 20/02/2009: imprime rodap�
    cabecalho; // - 20/02/2009: imprime cabe�alho
    auxlinha := 31; // - 20/02/2009: seta pr�xima linha de impress�o
    RVRel.BaseReport.NewPage; // - 20/02/2009: gera nova p�gina
  end;
end;

// - 20/02/2009: imprime cabe�alho de pagina a cada nova pagina
procedure TFCliente.cabecalho;
begin
  // - 19/02/2009: dados da empresa
  Imprime(RVRel, 8, 5, DMMACS.TEmpresa.fieldByName('FANTASIA').AsString,
    'Verdana', 11, clBlack, true);
  Imprime(RVRel, 13, 5, DMMACS.TEmpresa.fieldByName('ENDERECO').AsString,
    'Verdana', 8, clBlack, false);
  Imprime(RVRel, 17, 5, DMMACS.TEmpresa.fieldByName('BAIRRO').AsString + ' - ' +
    DMMACS.TEmpresa.fieldByName('CEP').AsString, 'Verdana', 8, clBlack, false);
  Imprime(RVRel, 21, 5, DMGEOGRAFIA.TCidade.fieldByName('NOME').AsString + ' - '
    + DMGEOGRAFIA.TEstado.fieldByName('UF_ESTADO').AsString, 'Verdana', 8,
    clBlack, false);

  // - 19/02/2009: t�tulo do relat�rio
  Imprime(RVRel, 19, 75, 'Hist�rico do Cliente', 'Verdana', 14, clBlack, True);

  // - 19/02/2009: hora e data de gera��o do hist�rico
  Imprime(RVRel, 13, 185, DateToStr(Date()), 'Verdana', 8, clBlack, false);
  Imprime(RVRel, 17, 185, TimeToStr(Time()), 'Verdana', 8, clBlack, false);

  linha(25, true); // - 19/02/2009: linha separat�ria

end;

// - 19/02/2009: busca informa��es comerciais do cliente
procedure TFCliente.informacoescli(tipo: string; inf: string);
begin
  // - 19/02/2009: limpa vari�veis de controle
  x1 := '';
  x2 := '';
  x3 := '';
  x4 := '';
  x5 := '';
  x6 := '';
  descforma1 := '';
  descforma2 := '';
  somaitens := 0;
  itens := 0;
  serv := 0;
  somaserv := 0;

  if tipo = 'P' {// - 20/02/2009: SE FOR INFORMA��ES DOS PEDIDOS} then
  begin
    if inf = 'Pedido' {// - 19/02/2009: se for informa��es sobre os pedidos} then
    begin
      // - 19/02/2009: filtra quantidade de pedidos do cliente, soma do valor dos mesmos e m�dia de valor que o cliente compra
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' SELECT Count(Pedvenda.cod_Pedvenda) AS CONT, SUM(PEDVENDA.VALOR) AS TOTAL FROM PEDVENDA ');
      DMMACS.TALX.SQL.Add(' Left Join cliente on pedvenda.cod_cliente = cliente.cod_cliente ');
      DMMACS.TALX.SQL.Add(' where pedvenda.cod_cliente=:CODCLIENTE ');
      if xrel = 1 then
      begin
        if (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ') then
        begin
          DMMACS.TALX.SQL.Add(' and (pedvenda.dtpedven>=:DATA1) and (pedvenda.dtpedven<=:DATA2)');
          DMMACS.TALX.ParamByName('DATA1').AsDateTime :=
            StrToDate(EdDataIni.Text);
          DMMACS.TALX.ParamByName('DATA2').AsDateTime :=
            StrToDate(EdDataFim.Text);
        end;
        DMMACS.TALX.ParamByName('CODCLIENTE').AsString :=
          DMESTOQUE.Alx1.fieldByName('COD_CLIENTE').AsString;
      end
      else
      begin
        DMMACS.TALX.ParamByName('CODCLIENTE').AsString :=
          XTabela.FieldByName('COD_CLIENTE').AsString;
      end;
      DMMACS.TALX.Open;
      if not DMMACS.TALX.IsEmpty then
      begin
        if DMMACS.TALX.FieldByName('CONT').AsInteger > 0 then
        begin
          x1 := IntToStr(DMMACS.TALX.FieldByName('CONT').AsInteger);
          // - 19/02/2009: quantidade de pedidos
          x2 := DMMACS.TALX.FieldByName('TOTAL').AsString;
          // - 19/02/2009: soma do valor dos pedidos
          x3 := FloatToStr(StrToFloat(FormatFloat('0.00',
            DMMACS.TALX.FieldByName('TOTAL').AsCurrency /
            DMMACS.TALX.FieldByName('CONT').AsInteger)));
          // - 19/02/2009: m�dia do valor dos pedidos
        end;
      end;
    end
    else if inf = 'Maior'
      {// - 19/02/2009: se for informa��es da maior e menor pedido de venda} then
    begin
      // - 19/02/2009: codigo e valor da maior compra, codigo e valor do menor pedido de venda
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' SELECT Pedvenda.valor, pedvenda.dtpedven, pedvenda.numped, formpag.descricao FROM PEDVENDA ');
      DMMACS.TALX.SQL.Add(' Left Join cliente on pedvenda.cod_cliente = cliente.cod_cliente ');
      DMMACS.TALX.SQL.Add(' Left Join formpag on pedvenda.cod_formpag = formpag.cod_formpag');
      DMMACS.TALX.SQL.Add(' where pedvenda.cod_cliente=:CODCLIENTE ');
      DMMACS.TALX.ParamByName('CODCLIENTE').AsString :=
        XTabela.FieldByName('COD_CLIENTE').AsString;
      DMMACS.TALX.SQL.Add(' order by pedvenda.valor desc ');
      DMMACS.TALX.Open;
      if not DMMACS.TALX.IsEmpty then
      begin
        DMMACS.TALX.First;
        x1 := DMMACS.TALX.FieldByName('numped').AsString;
        // - 19/02/2009: numero do pedido da maior compra
        x2 := DMMACS.TALX.FieldByName('valor').AsString;
        // - 19/02/2009: valor da maior compra
        x3 := DMMACS.TALX.FieldByName('dtpedven').AsString;
        // - 19/02/2009: data da maior compra
        descforma1 := DMMACS.TALX.FieldByName('descricao').AsString;
        if DMMACS.TALX.RecordCount > 1 then
        begin
          DMMACS.TALX.Last;
          x4 := DMMACS.TALX.FieldByName('numped').AsString;
          // - 19/02/2009: numero do pedido da menor compra
          x5 := DMMACS.TALX.FieldByName('valor').AsString;
          // - 19/02/2009: valor da menor compra
          x6 := DMMACS.TALX.FieldByName('dtpedven').AsString;
          // - 19/02/2009: data da menor compra
          descforma2 := DMMACS.TALX.FieldByName('descricao').AsString;
        end;
      end;
    end
    else if inf = 'Ultima'
      {// - 19/02/2009: se for informa��es da primeiro e ultimo pedido de venda} then
    begin
      // - 19/02/2009: dados da primeira e da ultima compra do cliente
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' SELECT Pedvenda.valor, pedvenda.dtpedven, pedvenda.numped, formpag.descricao FROM PEDVENDA ');
      DMMACS.TALX.SQL.Add(' Left Join cliente on pedvenda.cod_cliente = cliente.cod_cliente ');
      DMMACS.TALX.SQL.Add(' Left Join formpag on pedvenda.cod_formpag = formpag.cod_formpag');
      DMMACS.TALX.SQL.Add(' where pedvenda.cod_cliente=:CODCLIENTE ');
      DMMACS.TALX.ParamByName('CODCLIENTE').AsString :=
        XTabela.FieldByName('COD_CLIENTE').AsString;
      DMMACS.TALX.SQL.Add(' order by pedvenda.dtpedven desc ');
      DMMACS.TALX.Open;
      if not DMMACS.TALX.IsEmpty then
      begin
        DMMACS.TALX.First;
        x2 := DMMACS.TALX.FieldByName('valor').AsString;
        // - 19/02/2009: valor da ultima compra
        x3 := DMMACS.TALX.FieldByName('dtpedven').AsString;
        // - 19/02/2009: data da ultima compra
        x1 := DMMACS.TALX.FieldByName('numped').AsString;
        // - 19/02/2009: numero do pedido da ultima compra
        descforma2 := DMMACS.TALX.FieldByName('descricao').AsString;
        if DMMACS.TALX.RecordCount > 1 then
        begin
          DMMACS.TALX.Last;
          x5 := DMMACS.TALX.FieldByName('valor').AsString;
          // - 19/02/2009: valor da primeira compra
          x6 := DMMACS.TALX.FieldByName('dtpedven').AsString;
          // - 19/02/2009: data da primeira compra
          x4 := DMMACS.TALX.FieldByName('numped').AsString;
          // - 19/02/2009: numero do pedido da primeira compra
          descforma1 := DMMACS.TALX.FieldByName('descricao').AsString;
        end;
      end;
    end;
  end
  else if tipo = 'O' {// - 20/02/2009: SE FOR INFORMA��ES DAS ORDENS} then
  begin
    if inf = 'Ordem'
      {// - 20/02/2009: se for informa��es sobre as ordens do cliente} then
    begin
      // - 20/02/2009: selecina a quantidade de ordem de servico aberta para determinado cliente e o total das ordems
      DMServ.Alx.Close;
      DMServ.Alx.SQL.Clear;
      DMServ.Alx.SQL.Add('select count(ordem.cod_ordem) as CONT, SUM(ordem.totord) as TOTAL');
      DMServ.Alx.SQL.Add('from ORDEM Left Join cliente on ordem.cod_cliente = cliente.cod_cliente');
      DMServ.Alx.SQL.Add('where ordem.cod_cliente = :codigo');
      DMServ.Alx.ParamByName('CODigo').AsString :=
        XTabela.FieldByName('COD_CLIENTE').AsString;
      DMServ.Alx.Open;
      if DMServ.Alx.FieldByName('cont').AsInteger > 0 then
      begin
        x1 := DMServ.Alx.FieldByname('CONT').AsString;
        // - 20/02/2009: quantidade de ordens
        x2 := DMServ.Alx.FieldByName('TOTAL').AsString;
        // - 20/02/2009: soma do valor das ordens
        x3 := FloatToStr(StrToFloat(FormatFloat('0.00',
          DMServ.Alx.FieldByName('TOTAL').AsCurrency /
          DMServ.Alx.FieldByName('CONT').AsInteger)));
        // - 20/02/2009: m�dia do valor das ordens
      end;
    end
    else if inf = 'Maior'
      {// - 20/02/2009: se for informa��es sobre as ordens do cliente} then
    begin
      // maior e menor valor do ordem de servi�o jah registrado p cliente
      DMServ.Alx.Close;
      DMServ.Alx.SQL.Clear;
      DMServ.Alx.SQL.Add('select ordem.cod_cliente, ordem.numero, ordem.dtabert, ordem.totord, formpag.descricao');
      DMServ.Alx.SQL.Add('from ORDEM Left Join cliente on ordem.cod_cliente = cliente.cod_cliente');
      DMServ.Alx.SQL.Add('Left Join formpag on ordem.cod_formpag = formpag.cod_formpag');
      DMServ.Alx.SQL.Add('where ordem.cod_cliente = :codigo');
      DMServ.Alx.ParamByName('CODigo').AsString :=
        XTabela.FieldByName('COD_CLIENTE').AsString;
      DMServ.Alx.SQL.Add('order by ordem.totord desc');
      DMServ.Alx.Open;
      if not DMServ.Alx.IsEmpty then
      begin
        DMServ.Alx.First;
        x2 := DMServ.Alx.FieldByName('totord').AsString;
        x3 := DMServ.Alx.FieldByName('dtabert').AsString;
        x1 := DMServ.Alx.FieldByName('numero').AsString;
        descforma2 := DMServ.Alx.FieldByName('descricao').AsString;
      end;
      if not DMServ.Alx.IsEmpty then
      begin
        DMServ.Alx.Last;
        x5 := DMServ.Alx.FieldByName('totord').AsString;
        x6 := DMServ.Alx.FieldByName('dtabert').AsString;
        x4 := DMServ.Alx.FieldByName('numero').AsString;
        descforma1 := DMServ.Alx.FieldByName('descricao').AsString;
      end;
    end
    else if inf = 'Ultima'
      {// - 20/02/2009: se for informa��es sobre as ordens do cliente} then
    begin
      //meira e ultima ordem de servico do cliente
      DMServ.Alx.Close;
      DMServ.Alx.SQL.Clear;
      DMServ.Alx.SQL.Add('select ordem.cod_cliente, ordem.numero, ordem.dtabert, ordem.totord, formpag.descricao');
      DMServ.Alx.SQL.Add('from ORDEM Left Join cliente on ordem.cod_cliente = cliente.cod_cliente');
      DMServ.Alx.SQL.Add('Left Join formpag on ordem.cod_formpag = formpag.cod_formpag');
      DMServ.Alx.SQL.Add('where ordem.cod_cliente = :codigo');
      DMServ.Alx.ParamByName('CODigo').AsString :=
        XTabela.FieldByName('COD_CLIENTE').AsString;
      DMServ.Alx.SQL.Add('order by ordem.dtabert desc');
      DMServ.Alx.Open;
      if not DMServ.Alx.IsEmpty then
      begin
        DMServ.Alx.First;
        x2 := DMServ.Alx.FieldByName('totord').AsString;
        x3 := DMServ.Alx.FieldByName('dtabert').AsString;
        x1 := DMServ.Alx.FieldByName('numero').AsString;
        descforma2 := DMServ.Alx.FieldByName('totord').AsString;
      end;
      if not DMServ.Alx.IsEmpty then
      begin
        DMServ.Alx.Last;
        x5 := DMServ.Alx.FieldByName('totord').AsString;
        x6 := DMServ.Alx.FieldByName('dtabert').AsString;
        x4 := DMServ.Alx.FieldByName('numero').AsString;
        descforma1 := DMServ.Alx.FieldByName('totord').AsString;
      end;
    end;
  end
  else if tipo = 'C' {// - 20/02/2009: SE FOR INFORMA��ES DAS CONTAS A RECEBER} then
  begin
    if inf = 'ParcVencidas'
      {// - 19/02/2009: se for informa��es das parcelas} then
    begin
      // - 19/02/2009: documentos em atraso
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' select count(vwparcr.cod_parcelacr) as  CONT, sum(vwparcr.valor) as TOTAL From vwparcr ');
      DMMACS.TALX.SQL.Add(' where (vwparcr.dtvenc<:data) AND (vwparcr.fech<>'
        + #39 + 'S' + #39 + ') and (vwparcr.cod_cliente=:COD_CLIENTE) ');
      DMMACS.TALX.ParamByName('DATA').AsDate := Date();
      if xrel = 1 then
      begin
        DMMACS.TALX.ParamByName('COD_CLIENTE').AsString :=
          DMESTOQUE.Alx1.fieldByName('COD_CLIENTE').AsString;
      end
      else
      begin
        DMMACS.TALX.ParamByName('COD_CLIENTE').AsInteger :=
          XTabela.FieldByName('COD_CLIENTE').AsInteger;
      end;
      DMMACS.TALX.Open;
      if not DMMACS.TALX.IsEmpty then
      begin
        if DMMACS.TALX.FieldByName('CONT').AsInteger > 0 then
        begin
          x1 := DMMACS.TALX.FieldByName('CONT').AsString;
          // - 19/02/2009: quantidade de parcelas em atraso
          x2 := DMMACS.TALX.FieldByName('TOTAL').AsString;
          // - 19/02/2009: soma do valor total de parcelas em atraso
        end;
      end;
      // - 19/02/2009: retorna a media de dias em atraso nas contas
      if xrel = 0 then
        RetornaMediaAtraso;
    end
    else if inf = 'Vencidas'
      {// - 19/02/2009: se for informa��es gerais de todas parcelas vencidas} then
    begin
      //filtra parcelas em atraso do cliente
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' select * From vwparcr ');
      DMMACS.TALX.SQL.Add(' where (vwparcr.dtvenc<:data) AND (vwparcr.fech<>' + #39 + 'S' + #39 +
        ') and (vwparcr.cod_cliente=:COD_CLIENTE) ');
      DMMACS.TALX.SQL.Add('order by vwparcr.dtvenc');
      DMMACS.TALX.ParamByName('DATA').AsDate := Date();
      DMMACS.TALX.ParamByName('COD_CLIENTE').AsInteger :=
        XTabela.FieldByName('COD_CLIENTE').AsInteger;
      DMMACS.TALX.Open;
      DMMACS.TALX.First;
    end
    else if inf = 'ParcVencer'
      {// - 19/02/2009: se for informa��es das parcelas} then
    begin
      // - 19/02/2009: documentos em atraso
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' select count(vwparcr.cod_parcelacr) as  CONT, sum(vwparcr.valor) as TOTAL From vwparcr ');
      DMMACS.TALX.SQL.Add(' where (vwparcr.dtvenc>:data) AND (vwparcr.fech<>' + #39 + 'S' + #39 +
        ') and (vwparcr.cod_cliente=:COD_CLIENTE) ');
      DMMACS.TALX.ParamByName('DATA').AsDate := Date();
      DMMACS.TALX.ParamByName('COD_CLIENTE').AsInteger :=
        XTabela.FieldByName('COD_CLIENTE').AsInteger;
      DMMACS.TALX.Open;
      if not DMMACS.TALX.IsEmpty then
      begin
        if DMMACS.TALX.FieldByName('CONT').AsInteger > 0 then
        begin
          x1 := DMMACS.TALX.FieldByName('CONT').AsString;
          // - 19/02/2009: quantidade de parcelas em atraso
          x2 := DMMACS.TALX.FieldByName('TOTAL').AsString;
          // - 19/02/2009: soma do valor total de parcelas em atraso
        end;
      end;
    end
    else if inf = 'Vencer'
      {// - 19/02/2009: se for informa��es gerais de todas parcelas vencidas} then
    begin
      //filtra parcelas em atraso do cliente
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' select * From vwparcr ');
      DMMACS.TALX.SQL.Add(' where (vwparcr.dtvenc>=:data) AND (vwparcr.fech<>' + #39 + 'S' + #39 +
        ') and (vwparcr.cod_cliente=:COD_CLIENTE) ');
      DMMACS.TALX.SQL.Add('order by vwparcr.dtvenc');
      DMMACS.TALX.ParamByName('DATA').AsDate := Date();
      DMMACS.TALX.ParamByName('COD_CLIENTE').AsInteger :=
        XTabela.FieldByName('COD_CLIENTE').AsInteger;
      DMMACS.TALX.Open;
      DMMACS.TALX.First;
    end
    else if inf = 'Inadimplencia'
      {// - 19/02/2009: se for informa��es gerais de todas parcelas pagas} then
    begin
      // - 19/02/2009: filtra parcelas pagas do cliente
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' select * From vwparcr ');
      DMMACS.TALX.SQL.Add(' where (vwparcr.fech=' + #39 + 'S' + #39 +
        ') and (vwparcr.cod_cliente=:COD_CLIENTE) ');
      DMMACS.TALX.ParamByName('COD_CLIENTE').AsInteger :=
        XTabela.FieldByName('COD_CLIENTE').AsInteger;
      DMMACS.TALX.Open;
      DMMACS.TALX.First;
    end;
  end
  else if tipo = 'I'
    {// - 20/02/2009: SE FOR RELACIONADO A ITENS DE PEDIDOS E SERVI�OS DE ORDENS} then
  begin
    if inf = 'Pedido' {// - 20/02/2009: filtra todos os pedidos do cliente} then
    begin
      DMFINANC.TAlx.Close;
      DMFINANC.TALX.SQL.Clear;
      DMFINANC.TALX.SQL.Add(' select *  From vwpedv ');
      DMFINANC.TALX.SQL.Add(' where (vwpedv.cod_cliente=:COD_CLIENTE) ');
      if xrel = 1 then
      begin
        if (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <>
          '  /  /    ') then
        begin
          DMFINANC.TALX.SQL.Add(' and (vwpedv.dtpedven>=:DATA1) and (vwpedv.dtpedven<=:DATA2)');
          DMFINANC.TALX.ParamByName('DATA1').AsDateTime :=
            StrToDate(EdDataIni.Text);
          DMFINANC.TALX.ParamByName('DATA2').AsDateTime :=
            StrToDate(EdDataFim.Text);
        end;
        DMFINANC.TALX.ParamByName('COD_CLIENTE').AsString :=
          DMESTOQUE.Alx1.fieldByName('COD_CLIENTE').AsString;
      end
      else
      begin
        DMFINANC.TALX.ParamByName('COD_CLIENTE').AsInteger :=
          XTabela.FieldByName('COD_CLIENTE').AsInteger;
      end;
      DMFINANC.TALX.Open;
      DMFINANC.TAlx.First;

      if not DMFINANC.TAlx.IsEmpty
        {// - 20/02/2009: se encontrou algum pedido do cliente} then
      begin

        itens := 0;
        // - 20/02/2009: zera controle de quantidade de produtos comprados
        somaitens := 0;
        // - 20/02/2009: zera controle da soma dos produtos comprados pelo cliente

        while not DMFINANC.TAlx.Eof do
          // - 20/02/2009: enquanto n�o for o fim dos pedidos
        begin
          DMESTOQUE.Alx.Close;
          DMESTOQUE.Alx.SQL.Clear;
          DMESTOQUE.Alx.SQL.Add('select SUM(itenspedven.qtdeprod) as QTD, SUM(itenspedven.valortotal) as VALOR');
          DMESTOQUE.Alx.SQL.Add('from itenspedven');
          DMESTOQUE.Alx.SQL.Add('where itenspedven.cod_pedven = :COD');
          {if xrel = 1
          then begin
             if  (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
             then begin
                 DMESTOQUE.Alx.SQL.Add(' and (pedvenda.dtpedven>=:DATA1) and (pedvenda.dtpedven<=:DATA2)');
                 DMESTOQUE.Alx.ParamByName('DATA1').AsDateTime:=StrToDate(EdDataIni.Text);
                 DMESTOQUE.Alx.ParamByName('DATA2').AsDateTime:=StrToDate(EdDataFim.Text);
             end;
          end;}
          DMESTOQUE.Alx.ParamByName('COD').AsString :=
            DMFINANC.TAlx.fieldByName('COD_PEDVENDA').AsString;
          DMESTOQUE.Alx.Open;

          itens := itens + DMESTOQUE.Alx.FieldByName('QTD').AsInteger;
          // - 20/02/2009: acumula a soma da quantidade de itens comprados
          somaitens := somaitens +
            DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
          // - 20/02/2009: acumula a soma do valor dos itens comprados

          DMFINANC.TAlx.Next; // - 20/02/2009: pr�ximo registro
        end;
      end;
    end
    else if inf = 'Ordem' {// - 20/02/2009: filtra todas as ordens do cliente} then
    begin
      DMServ.WOrdem.Close;
      DMServ.WOrdem.SQL.Clear;
      DMServ.WOrdem.SQL.Add('select * from vwordem');
      DMServ.WOrdem.SQL.Add('where vwordem.cod_cliente = :codigo order by vwordem.dtabert desc');
      DMServ.WOrdem.ParamByName('codigo').AsInteger :=
        XTabela.FieldByName('COD_CLIENTE').AsInteger;
      DMServ.WOrdem.Open;
      DMServ.WOrdem.First;

      if not DMServ.WOrdem.IsEmpty
        {// - 20/02/2009: se encontrou alguma ordem do cliente} then
      begin

        itens := 0;
        // - 20/02/2009: zera controle de quantidade de produtos comprados
        somaitens := 0;
        // - 20/02/2009: zera controle da soma dos produtos comprados pelo cliente

        while not DMServ.WOrdem.Eof do
          // - 20/02/2009: enquanto n�o for o fim dos pedidos
        begin
          DMESTOQUE.Alx.Close;
          DMESTOQUE.Alx.SQL.Clear;
          DMESTOQUE.Alx.SQL.Add('select SUM(itprodord.qtd) as QTD, SUM(itprodord.total) as VALOR');
          DMESTOQUE.Alx.SQL.Add('from itprodord');
          DMESTOQUE.Alx.SQL.Add('where itprodord.cod_ordem = :COD');
          DMESTOQUE.Alx.ParamByName('COD').AsString :=
            DMServ.WOrdem.fieldByName('COD_ORDEM').AsString;
          DMESTOQUE.Alx.Open;

          itens := itens + DMESTOQUE.Alx.FieldByName('QTD').AsInteger;
          // - 20/02/2009: acumula a soma da quantidade de itens comprados
          somaitens := somaitens +
            DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
          // - 20/02/2009: acumula a soma do valor dos itens comprados

          DMServ.WOrdem.Next; // - 20/02/2009: pr�ximo registro
        end;

        DMServ.WOrdem.First;
        // - 20/02/2009: volta ao primeiro registro para calcular os servi�os

        serv := 0;
        // - 20/02/2009: zera controle de quantidade de servi�os prestados
        somaserv := 0;
        // - 20/02/2009: zera controle da soma dos servi�os prestados

        while not DMServ.WOrdem.Eof do
          // - 20/02/2009: enquanto n�o for o fim dos pedidos
        begin
          if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE'
            {// - 20/02/2009: se n�o for a mercescan} then
          begin
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add('select SUM(itservord.qtd) as QTD, SUM(itservord.total) as VALOR');
            DMESTOQUE.Alx.SQL.Add('from itservord');
            DMESTOQUE.Alx.SQL.Add('where itservord.cod_ordem = :COD');
            DMESTOQUE.Alx.ParamByName('COD').AsString :=
              DMServ.WOrdem.fieldByName('COD_ORDEM').AsString;
            DMESTOQUE.Alx.Open;

            serv := itens + DMESTOQUE.Alx.FieldByName('QTD').AsInteger;
            // - 20/02/2009: acumula a soma da quantidade de itens comprados
            somaserv := somaserv +
              DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
            // - 20/02/2009: acumula a soma do valor dos itens comprados

            DMServ.WOrdem.Next; // - 20/02/2009: pr�ximo registro
          end
          else
          begin // - 20/02/2009: se for a mercescan busca o valor de servi�os na tabela de despesas
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add('select SUM(despadic.qtd) as QTD, SUM(despadic.vlrtotfin) as VALOR');
            DMESTOQUE.Alx.SQL.Add('from despadic');
            DMESTOQUE.Alx.SQL.Add('where despadic.cod_gerador = :COD and despadic.gerador= :TIPO');
            DMESTOQUE.Alx.ParamByName('COD').AsString :=
              DMServ.WOrdem.fieldByName('COD_ORDEM').AsString;
            DMESTOQUE.Alx.ParamByName('TIPO').AsString := 'ORDEM';
            DMESTOQUE.Alx.Open;

            serv := itens + DMESTOQUE.Alx.FieldByName('QTD').AsInteger;
            // - 20/02/2009: acumula a soma da quantidade de itens comprados
            somaserv := somaserv +
              DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
            // - 20/02/2009: acumula a soma do valor dos itens comprados

            DMServ.WOrdem.Next; // - 20/02/2009: pr�ximo registro
          end;
        end;
      end;
    end;
  end;
end;

// - 19/02/2009: busca dados do cliente
procedure TFCliente.buscacliente;
begin

  FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
    DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '');
  // - 19/02/2009: filtra dados do cliente

  FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
    DMPESSOA.TCliente.FieldByName('cod_pessoa').AsString, '');
  // - 19/02/2009: filtra dados da pessoa

  FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE',
    DMPESSOA.TPessoa.FieldByName('cod_cidade').AsString, '');
  // - 19/02/2009: filtra cidade do cliente

  FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO',
    DMGEOGRAFIA.TCidade.fieldByName('cod_estado').AsString, '');
  // - 19/02/2009: filtra estado do cliente

end;

procedure TFCliente.FrmTransBTNOPENClick(Sender: TObject);
begin
  filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', '', '');
  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_INTERNO';
  FMenu.XCodPesqPresSel := FrmTransp.EDCodigo.text;
  if AbrirForm(TFFORNECEDOR, FFORNECEDOR, 1) = 'Selected' then
  begin
    XCOD_TRANSP := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
    FrmTransp.EdDescricao.Text :=
      DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
    FrmTransp.EDCodigo.text :=
      DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
  end;
  FrmFormPag.Repaint;
  FrmTransp.Repaint;
  FrmVendedor.Repaint;
  FrmRegiao.Repaint;
  FrmNatural.Repaint;
end;

procedure TFCliente.FrmTransEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if FrmTransp.EDCodigo.Text <> '' then
    begin
      if SelectRegistro('VWFORNEC', 'COD_FORNEC', FrmTransp.EDCodigo.Text) = True then
      begin //Slecionou o registro procurado
        XCOD_TRANSP := DMMACS.TSelect.FieldByName('COD_FORNEC').AsInteger;
        FrmTransp.EDCodigo.text :=
          DMMACS.TSelect.FieldByName('COD_INTERNO').AsString;
        FrmTransp.EdDescricao.Text :=
          DMMACS.TSelect.FieldByName('NOME').AsString;
      end
      else
      begin
        XCOD_TRANSP := -1;
        FrmTransp.EDCodigo.Text := '';
        FrmTransp.EdDescricao.Text := '';
      end;
    end
    else
    begin
      XCOD_TRANSP := -1;
      FrmTransp.EDCodigo.Text := '';
      FrmTransp.EdDescricao.Text := '';
    end;
  end;
end;

procedure TFCliente.contadorCli;
begin
  //Busca Contador
  DMPESSOA.TAux1.Close;
  DMPESSOA.TAux1.SQL.Clear;
  DMPESSOA.TAux1.SQL.Add(' select count(cliente.cod_cliente) AS QTD from cliente');
  DMPESSOA.TAux1.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
  if RGFiltro.ItemIndex = 0 then
  begin
    if cbscpc.Checked = True then
      DMPESSOA.TAux1.SQL.Add('WHERE  ((cliente.ativo<>0) or (cliente.ativo is null))  and ((cliente.SEPARAR=0) or (cliente.SEPARAR is null))  and ((cliente.SCPC=0) or (cliente.SCPC is null))')
    else
      DMPESSOA.TAux1.SQL.Add('WHERE  ((cliente.ativo<>0) or (cliente.ativo is null))  and ((cliente.SEPARAR=0) or (cliente.SEPARAR is null))');
  end
  else
  begin
    if cbscpc.Checked = True then
      DMPESSOA.TAux1.SQL.Add('WHERE  ((cliente.ativo<>0) or (cliente.ativo is null))  and (cliente.SEPARAR=1) and  ((cliente.SCPC=0) or (cliente.SCPC is null))')
    else
      DMPESSOA.TAux1.SQL.Add('WHERE  ((cliente.ativo<>0) or (cliente.ativo is null)) and (cliente.SEPARAR=1)');
  end;

  if (EdNome.Text <> '') and (EdNome.Text <> 'Nome') then
    DMPESSOA.TAux1.SQL.Add(' and (upper(pessoa.nome)) like (upper(' + #39 +
      EdNome.Text + '%' + #39 + '))');

  if (EdCodigo.Text <> '') and (EdCodigo.Text <> 'C�digo') then
    DMPESSOA.TAux1.SQL.Add(' and (upper(cliente.cod_interno)) like (upper('#39 +
      EdCodigo.Text + '%' + #39 + '))');

  if (EdCpf.Text <> '') and (EdCpf.Text <> 'CPF/CNPJ') then
    DMPESSOA.TAux1.SQL.Add(' and (upper(pessoa.cpfcnpj)) like (upper('#39 +
      EdCpf.Text + '%' + #39 + '))');

  DMPESSOA.TAux1.SQL.Add(' AND (CLIENTE.COD_PESSOA IS NOT NULL) ');
  DMPESSOA.TAux1.Open;
  LQtdCli.Caption := DMPESSOA.TAux1.FieldByName('QTD').AsString + ' clientes.';
  LQtdCli.Repaint;
  //Busca Valor de cr�dito
  DMPESSOA.TAux1.Close;
  DMPESSOA.TAux1.SQL.Clear;
  DMPESSOA.TAux1.SQL.Add('select pessoa.vlrcredito from cliente');
  DMPESSOA.TAux1.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
  if RGFiltro.ItemIndex = 0 then
  begin
    if cbscpc.Checked = True then
      DMPESSOA.TAux1.SQL.Add('WHERE  ((cliente.ativo<>0) or (cliente.ativo is null))  and ((cliente.SEPARAR=0) or (cliente.SEPARAR is null))  and ((cliente.SCPC=0) or (cliente.SCPC is null))')
    else
      DMPESSOA.TAux1.SQL.Add('WHERE  ((cliente.ativo<>0) or (cliente.ativo is null))  and ((cliente.SEPARAR=0) or (cliente.SEPARAR is null))');
  end
  else
  begin
    if cbscpc.Checked = True then
      DMPESSOA.TAux1.SQL.Add('WHERE  ((cliente.ativo<>0) or (cliente.ativo is null))  and (cliente.SEPARAR=1) and  ((cliente.SCPC=0) or (cliente.SCPC is null))')
    else
      DMPESSOA.TAux1.SQL.Add('WHERE  ((cliente.ativo<>0) or (cliente.ativo is null)) and (cliente.SEPARAR=1)');
  end;

  if (EdNome.Text <> '') and (EdNome.Text <> 'Nome') then
    DMPESSOA.TAux1.SQL.Add(' and (upper(pessoa.nome)) like (upper(' + #39 +
      EdNome.Text + '%' + #39 + '))');

  if (EdCodigo.Text <> '') and (EdCodigo.Text <> 'C�digo') then
    DMPESSOA.TAux1.SQL.Add(' and (upper(cliente.cod_interno)) like (upper('#39 +
      EdCodigo.Text + '%' + #39 + '))');

  if (EdCpf.Text <> '') and (EdCpf.Text <> 'CPF/CNPJ') then
    DMPESSOA.TAux1.SQL.Add(' and (upper(pessoa.cpfcnpj)) like (upper('#39 +
      EdCpf.Text + '%' + #39 + '))');
  DMPESSOA.TAux1.Open;

  //ALEX 11/11/2011: mostra cr�dito do cliente
  lbCreditoCli.Caption := 'Cr�dito por Antecipa��es: ' + FormatFloat('0.00',
    DMPESSOA.TAux1.FieldByName('VLRCREDITO').AsCurrency);
end;

procedure TFCliente.cbIndustriaClick(Sender: TObject);
begin
  inherited;

  DMPESSOA.TPessoaJ.Edit;

  // - 03/04/2009: se checkBox for marcado como industria
  if cbIndustria.Checked then
    DMPESSOA.TPessoaJ.FieldByName('INDUSTRIA').AsString := '1'
  else
    DMPESSOA.TPessoaJ.FieldByName('INDUSTRIA').AsString := '0';

  DMPESSOA.TPessoaJ.Post;
end;

procedure TFCliente.DBColorEdit60KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #13, #27]) then
    Key := #0;
end;

procedure TFCliente.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (shift = [ssCtrl]) and (key = 83) then
  begin
    try
      if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then
      begin
        ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
      end;
      DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\cliente.lgm');
      Mensagem('Mzr Sistemas - INFORMA��O',
        'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
    except
      Mensagem('Mzr Sistemas - INFORMA��O',
        'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
    end;
  end;
end;

procedure TFCliente.RelatriodeVendas1Click(Sender: TObject);
begin
  inherited;

  // - 20/05/2009: relat�rio de vendas
  PCadastro.SendToBack;
  PCadastro.Visible := False;
  PConsulta.SendToBack;
  PConsulta.Visible := False;
  PRel.BringToFront;
  PRel.Visible := True;
  PRel.Repaint;
  FrmCidade.Visible := false;
  GBData.Visible := True;
  EdDataIni.Visible := True;
  EdDataFim.Visible := True;
  LDtIni.Visible := True;
  LDtFim.Visible := True;
  RGPessoa.Visible := True;
  LTituloRel.Caption := 'Relat�rio de Vendas';
  FMenu.TIPOREL := 'Vendas';
end;

procedure TFCliente.BtGeraRelClick(Sender: TObject);
begin
  inherited;
  if FMenu.TIPOREL = 'Vendas' then
  begin
    xrel := 1;
    //zera tabela temporaria
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('delete from TMP');
    DMMACS.TALX.ExecSQL;
    DMMACS.Transaction.CommitRetaining;

    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add(' select * From TMP');
    DMMACS.TMP.Open;

    xindice := 1;

    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('select * from vwcliente');
    DMESTOQUE.Alx1.SQL.Add('order by vwcliente.nome');
    DMESTOQUE.Alx1.Open;
    DMESTOQUE.Alx1.First;

    //  - 20/05/2009: enquanto n�o for o fim dos clientes
    while not DMESTOQUE.Alx1.Eof do
    begin
      DMESTOQUE.Alx2.Close;
      DMESTOQUE.Alx2.SQL.Clear;
      DMESTOQUE.Alx2.SQL.Add('select * From vwparcr ');
      DMESTOQUE.Alx2.SQL.Add('where (vwparcr.dtvenc < :DATA) AND (vwparcr.fech<>'
        + #39 + 'S' + #39 + ') and (vwparcr.cod_cliente = :CODCLIENTE)');
      DMESTOQUE.Alx2.ParamByName('DATA').AsDateTime := Date();
      DMESTOQUE.Alx2.ParamByName('CODCLIENTE').AsInteger :=
        DMESTOQUE.Alx1.fieldByName('COD_CLIENTE').AsInteger;
      DMESTOQUE.Alx2.Open;

      if not DMESTOQUE.Alx2.IsEmpty then
      begin
        if RGPessoa.ItemIndex = 1
          {// - 20/05/2009: se forem s� clientes q pagam em dia} then
        begin
          DMESTOQUE.Alx1.Next;
        end
        else
        begin
          GeraInformacoes;
        end;
      end
      else
      begin
        GeraInformacoes;
      end;
    end;

    DMCONTA.TRel.Close;
    DMCONTA.TRel.SQL.Clear;
    DMCONTA.TRel.SQL.Add('select * from TMP');
    DMCONTA.TRel.SQL.Add('order by TMP.vlr1 desc, TMP.vlr6 ');
    DMCONTA.TRel.Open;
    DMCONTA.TRel.First;

    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfHistoricoCli.frf');
    FSRel.ShowReport;

    xrel := 0;
  end;
  if FMenu.TIPOREL = 'Cadastro' then
  begin
    DMCONTA.TRel.Close;
    DMCONTA.TRel.SQL.Clear;
    DMCONTA.TRel.SQL.Add('select pessoa.nome, pessoa.endereco, pessoa.endnumero, pessoa.bairro, cliente.cod_interno,');
    DMCONTA.TRel.SQL.Add('pessoa.telrel, estado.uf_estado as UF, cidade.nome as NOMECID, usuario.login, pessoa.data_ini');
    DMCONTA.TRel.SQL.Add('from cliente');
    DMCONTA.TRel.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
    DMCONTA.TRel.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
    DMCONTA.TRel.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
    DMCONTA.TRel.SQL.Add('left join usuario on cliente.cod_usuario = usuario.codusuario');
    if (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ') then
    begin
      DMCONTA.TRel.SQL.Add('where pessoa.data_ini >= :DATA1');
      DMCONTA.TRel.SQL.Add('and pessoa.data_ini <= :DATA2');
      DMCONTA.TRel.ParamByName('DATA1').AsDate := StrToDate(EdDataIni.Text);
      DMCONTA.TRel.ParamByName('DATA2').AsDate := StrToDate(EdDataFim.Text);
    end;
    DMCONTA.TRel.SQL.Add('order by pessoa.data_ini, pessoa.nome');
    DMCONTA.TRel.Open;
    DMCONTA.TRel.First;

    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCliCadastrados.frf');
    FSRel.ShowReport;
  end;
  if FMenu.TIPOREL = 'Cidade' then
  begin
    DMCONTA.TRel.Close;
    DMCONTA.TRel.SQL.Clear;
    DMCONTA.TRel.SQL.Add('select pessoa.nome, pessoa.endereco, pessoa.endnumero, pessoa.bairro, cliente.cod_interno,');
    DMCONTA.TRel.SQL.Add('pessoa.telrel, estado.uf_estado as UF, cidade.nome as NOMECID, usuario.login, pessoa.data_ini');
    DMCONTA.TRel.SQL.Add('from cliente');
    DMCONTA.TRel.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
    DMCONTA.TRel.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
    DMCONTA.TRel.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
    DMCONTA.TRel.SQL.Add('left join usuario on cliente.cod_usuario = usuario.codusuario');
    if FrmCidade.EdDescricao.Text <> '' then
    begin
      DMCONTA.TRel.SQL.Add('where cidade.nome = :CLI');
      DMCONTA.TRel.ParamByName('CLI').AsString := FrmCidade.EdDescricao.Text;
    end;
    DMCONTA.TRel.SQL.Add('order by cidade.nome, pessoa.nome');
    DMCONTA.TRel.Open;
    DMCONTA.TRel.First;

    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCliCidade.frf');
    FSRel.ShowReport;
  end;
end;

procedure TFCliente.GeraInformacoes;
var
  xvlr1, xvlr2, xvlr3, xvlr4, xvlr5, xvlr6: Real;
  xdata: string;
begin

  try
    // - 20/05/2009: busca data de cadastro
    FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
      DMESTOQUE.Alx1.fieldByName('COD_PESSOA').AsString, '');
    xdata := DMPESSOA.TPessoa.fieldByName('DATA_INI').AsString;

    // - 20/05/2009: busca informa��es dos pedidos
    informacoescli('P', 'Pedido');
    if x1 <> '' then
    begin
      xvlr1 := StrToCurr(x2);
      xvlr2 := StrToCurr(x1);
      xvlr4 := StrToCurr(x3);
    end
    else
    begin
      xvlr1 := 0;
      xvlr2 := 0;
      xvlr4 := 0;
    end;

    // - 20/05/2009: busca informa��es dos itens
    informacoescli('I', 'Pedido');
    if itens > 0 then
      xvlr3 := itens
    else
      xvlr3 := 0;

    // - 20/05/2009: busca informa��es das parcelas vencidas
    informacoescli('C', 'ParcVencidas');
    if x1 > '' then
    begin
      xvlr5 := StrToCurr(x1);
      xvlr6 := StrToCurr(x2);
    end
    else
    begin
      xvlr5 := 0;
      xvlr6 := 0;
    end;

    DMESTOQUE.Alx4.Close;
    DMESTOQUE.Alx4.SQL.Clear;
    DMESTOQUE.Alx4.SQL.Add('insert into TMP');
    DMESTOQUE.Alx4.SQL.Add('(DESC1, VLR1, VLR2, COD_TMP, INT1, DATA1, VLR3, VLR4, VLR5, VLR6)');
    DMESTOQUE.Alx4.SQL.Add('values');
    DMESTOQUE.Alx4.SQL.Add('(:DESC1, :VLR1, :VLR2, :COD_TMP, :INT1, :DATA1, :VLR3, :VLR4, :VLR5, :VLR6)');
    DMESTOQUE.Alx4.ParamByName('COD_TMP').AsInteger := xindice;
    DMESTOQUE.Alx4.ParamByName('DESC1').AsString :=
      DMESTOQUE.Alx1.fieldByName('NOME').AsString;
    DMESTOQUE.Alx4.ParamByName('INT1').AsInteger :=
      DMESTOQUE.Alx1.fieldByName('COD_INTERNO').AsInteger;
    //Edmar - 05/05/2015 - Altera o tipo de dado que ser� incluido
//DMESTOQUE.Alx4.ParamByName('DATA1').AsDate := StrToDate(xdata);
    DMESTOQUE.Alx4.ParamByName('DATA1').AsString := xdata;
    DMESTOQUE.Alx4.ParamByName('VLR1').AsCurrency := xvlr1;
    DMESTOQUE.Alx4.ParamByName('VLR2').AsCurrency := xvlr2;
    DMESTOQUE.Alx4.ParamByName('VLR3').AsCurrency := xvlr3;
    DMESTOQUE.Alx4.ParamByName('VLR4').AsCurrency := xvlr4;
    DMESTOQUE.Alx4.ParamByName('VLR5').AsCurrency := xvlr5;
    DMESTOQUE.Alx4.ParamByName('VLR6').AsCurrency := xvlr6;
    DMESTOQUE.Alx4.ExecSQL;
    DMESTOQUE.TransacEstoque.CommitRetaining;

    xindice := xindice + 1;

    DMESTOQUE.Alx1.Next;
  except
    DMESTOQUE.Alx1.Next;
    ShowMessage(xdata);
  end;
end;

procedure TFCliente.BtCanRelClick(Sender: TObject);
begin
  inherited;
  PCadastro.SendToBack;
  PCadastro.Visible := True;
  PConsulta.BringToFront;
  PConsulta.Visible := True;
  PRel.SendToBack;
  PRel.Visible := False;
  PConsulta.Repaint;
end;

procedure TFCliente.RelatriodeCadastros1Click(Sender: TObject);
begin
  inherited;
  // - 03/06/2009: relat�rio de clientes cadastrados por data de cadastro
  PCadastro.SendToBack;
  PCadastro.Visible := False;
  PConsulta.SendToBack;
  PConsulta.Visible := False;
  PRel.BringToFront;
  PRel.Visible := True;
  PRel.Repaint;
  FrmCidade.Visible := false;
  GBData.Visible := True;
  EdDataIni.Visible := True;
  EdDataFim.Visible := True;
  LDtIni.Visible := True;
  LDtFim.Visible := True;
  RGPessoa.Visible := false;
  LTituloRel.Caption := 'Relat�rio de Clientes Cadastrados';
  FMenu.TIPOREL := 'Cadastro';
end;

procedure TFCliente.RelatrioporCidade1Click(Sender: TObject);
begin
  inherited;
  // - 03/06/2009: relat�rio de clientes divididos por cidade
  PCadastro.SendToBack;
  PCadastro.Visible := False;
  PConsulta.SendToBack;
  PConsulta.Visible := False;
  PRel.BringToFront;
  PRel.Visible := True;
  PRel.Repaint;
  FrmCidade.Visible := true;
  FrmCidade.EdDescricao.Text := '';
  FrmCidade.EDCodigo.Text := '';
  GBData.Visible := false;
  EdDataIni.Visible := false;
  EdDataFim.Visible := false;
  LDtIni.Visible := false;
  LDtFim.Visible := false;
  RGPessoa.Visible := false;
  LTituloRel.Caption := 'Relat�rio de Clientes por Cidade';
  FMenu.TIPOREL := 'Cidade';
end;

procedure TFCliente.FrmCidadeBTNOPENClick(Sender: TObject);

begin
  // - 03/06/2009: relat�rio de clientes divididos por cidade
  FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', ' Order by NOME');
  if AbrirForm(TFCadCidade, FCadCidade, 1) = 'Selected' then
  begin
    FrmCidade.EdDescricao.Text :=
      DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
    FrmCidade.EDCodigo.text :=
      DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    FrmCidade.Repaint;
  end;
end;

procedure TFCliente.AlteraFisicaJuridica2Click(Sender: TObject);
begin
  inherited;
  AlternarFisicaJuridica;
end;

procedure TFCliente.DBGridClienteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  //ATIVA O GRID SEBRADO
  if FMenu.XGRIDZEBRADA then
  begin
    if State = [] then
    begin
      if DMPESSOA.WCliente.RecNo mod 2 = 1 then
        DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
      else
        DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
    end;
    DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  //SE CLIENTE NO SCPC A COR DAFONTE DEVE MUDAR
  if DMPESSOA.WCliente.FieldByName('scpc').AsString = '1' then
  begin
    DBGridCadastroPadrao.Canvas.Font.Color := clRed;
    DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  //SE CLIENTE PARA ATUALIZAR A FONTE DEVE MUDAR
  if DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString = '1' then
  begin
    DBGridCadastroPadrao.Canvas.Font.Color := clGreen;
    DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFCliente.DBGridClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (shift = [ssCtrl]) and (key = 83) then
  begin
    try
      if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then
      begin
        ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
      end;
      DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\cliente.lgm');
      Mensagem('Mzr Sistemas - INFORMA��O',
        'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
    except
      Mensagem('Mzr Sistemas - INFORMA��O',
        'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
    end;
  end;
end;

procedure TFCliente.MarcarDesmarcar1Click(Sender: TObject);
begin
  inherited;
  //Paulo 02/03/2011: Marcar e desmarcar unico cliente
  FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
    DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '');
  {DMPESSOA.TCliente.Edit;
  if DMPESSOA.TCliente.FieldByName('MARK').AsString='X' Then
   DMPESSOA.TCliente.FieldByName('MARK').AsString:=''
  else
   DMPESSOA.TCliente.FieldByName('MARK').AsString:='X';
  DMPESSOA.TCliente.Post;   }

//Edmar - 08/06/2015 - Foi alterado a forma de marca��o e desmarca��o do cliente
  try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' UPDATE CLIENTE SET ');
    if DMPESSOA.TCliente.FieldByName('MARK').AsString = 'X' then
      MDO.Query.SQL.Add(' CLIENTE.MARK = '''' ')
    else
      MDO.Query.SQL.Add(' CLIENTE.MARK = ''X'' ');
    MDO.Query.SQL.Add(' WHERE CLIENTE.COD_CLIENTE = :CLIENTE ');
    MDO.Query.ParamByName('CLIENTE').AsInteger :=
      DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;
  except
    ShowMessage('N�o foi poss�vel desmarcar o Cliente ' +
      DMPESSOA.WCliente.FieldByName('NOME').AsString);
    MDO.Transac.RollbackRetaining;
  end;

  XSQLVIEW := 'VWCLIENTE';
  LiberaDados;
end;

procedure TFCliente.MarcarDesmarcarTodos1Click(Sender: TObject);
begin
  inherited;
  //Paulo 02/03/2011: Marcar e desmarcar TODOS OS cliente
  {DMPESSOA.TCliente.Close;
  DMPESSOA.TCliente.SQL.Clear;
  DMPESSOA.TCliente.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.MARK = ''''');
  DMPESSOA.TCliente.Open;

  DMPESSOA.TCliente.First;
  while not DMPESSOA.TCliente.Eof do
  begin
      DMPESSOA.TCliente.Edit;
      If DMPESSOA.TCliente.FieldByName('MARK').AsString='' Then
          DMPESSOA.TCliente.FieldByName('MARK').AsString:='X';

       DMPESSOA.TCliente.Post;
       DMPESSOA.TCliente.Next;
  end;}
//Edmar - 08/06/2015 - Foi alterado a forma de marca��o do cliente
  try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' UPDATE CLIENTE SET CLIENTE.MARK = ''X'' ');
    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;
  except
    ShowMessage('N�o foi poss�vel marcar os Clientes.');
    MDO.Transac.RollbackRetaining;
  end;

  XSQLVIEW := 'VWCLIENTE';
  LiberaDados;
end;

procedure TFCliente.PConsultaExit(Sender: TObject);
begin
  if (PEtqMala.Visible = false) and (PListaCliente.Visible = false) then
    inherited;

end;

procedure TFCliente.EtiquetaMalaDireta1Click(Sender: TObject);
begin
  inherited;
  //Paulo 03/03/2011: Seleciona os bairro para mostrar no filtro de bairro
  DMESTOQUE.Alx5.Close;
  DMESTOQUE.Alx5.SQL.Clear;
  DMESTOQUE.Alx5.SQL.Add('SELECT DISTINCT BAIRRO FROM PESSOA');
  DMESTOQUE.Alx5.Open;

  cbClienteSelecionado.Enabled := True;

  CBBAIRROETIQ.Items.Clear;
  DMESTOQUE.Alx5.First;
  while not DMESTOQUE.Alx5.Eof do
  begin
    CBBAIRROETIQ.Items.Add(DMESTOQUE.Alx5.FieldByName('BAIRRO').AsString);
    DMESTOQUE.Alx5.Next
  end;

  PEtqMala.Visible := true;
  PEtqMala.BringToFront;
  XcodNome := 0;
  XcodCid := 0;
  XcodEst := '';
  Xbairro := '';

  EdMargem.Text := '9';
  EdLinha.Text := '8';
  EdAltura.Text := '3';
  EdLargura.Text := '40';
  EdFonte.Text := '10';
  EdQtdeEtqPagina.Text := '6';
  xcontlin := 1;

end;

procedure TFCliente.BtnImpEtqClick(Sender: TObject);
begin
  inherited;
  try
    //Paulo 03/03/2011: Verifica se existe algum filtro selecionado, sen�o manda a mensagem e
    //aborda a tarefa
    if (XcodNome = 0) and (XcodCid = 0) and (XcodEst = '') and (Xbairro = '')
      and (cbClienteSelecionado.Checked = False) then
    begin
      MessageDlg('Voc� deve selecionar pelo menos um filtro pra imprimir as etiquetas', mtWarning, [mbOK], 0);
      exit;
    end;

    DMPESSOA.TRel.Close;
    DMPESSOA.TRel.SQL.Clear;
    DMPESSOA.TRel.SQL.Add('select vwcliente.cod_cliente, vwcliente.cod_pessoa, vwcliente.cod_cidade,');
    DMPESSOA.TRel.SQL.Add('vwcliente.nome, vwcliente.endereco, vwcliente.bairro, vwcliente.cidade,');
    DMPESSOA.TRel.SQL.Add('vwcliente.uf_estado,vwcliente.cpfcnpj,vwcliente.endnumero,vwcliente.mark,');
    DMPESSOA.TRel.SQL.Add('pessoaf.cod_pessoaf, pessoaj.cod_pessoaj, pessoa.cep from vwcliente');
    DMPESSOA.TRel.SQL.Add('left join pessoaf on   vwcliente.cod_pessoa = pessoaf.cod_pessoa');
    DMPESSOA.TRel.SQL.Add('left join pessoaj on   vwcliente.cod_pessoa = pessoaj.cod_pessoa');
    DMPESSOA.TRel.SQL.Add('left join pessoa  on  vwcliente.cod_pessoa = pessoa.cod_pessoa');
    DMPESSOA.TRel.SQL.Add('where');
    if (XcodNome <> 0) then
    begin
      DMPESSOA.TRel.SQL.Add('vwcliente.cod_cliente = :CODCLIENTE ');
      DMPESSOA.TRel.ParamByName('CODCLIENTE').AsInteger := XcodNome;
      if (XcodCid <> 0) or (XcodEst <> '') or (Xbairro <> '') then
        DMPESSOA.TRel.SQL.Add('and');
    end;
    if (XcodCid <> 0) then
    begin
      DMPESSOA.TRel.SQL.Add('vwcliente.cod_cidade = :CODCIDADE ');
      DMPESSOA.TRel.ParamByName('CODCIDADE').AsInteger := XcodCid;
      if (XcodEst <> '') or (Xbairro <> '') then
        DMPESSOA.TRel.SQL.Add('and');
    end;
    if (XcodEst <> '') then
    begin
      DMPESSOA.TRel.SQL.Add('vwcliente.uf_estado = :UFESTADO ');
      DMPESSOA.TRel.ParamByName('UFESTADO').AsString := XcodEst;
      if (Xbairro <> '') then
        DMPESSOA.TRel.SQL.Add('and');
    end;
    if (Xbairro <> '') then
    begin
      DMPESSOA.TRel.SQL.Add('vwcliente.bairro = :BAIRRO');
      DMPESSOA.TRel.ParamByName('BAIRRO').AsString := Xbairro;
    end;
    if (cbClienteSelecionado.Checked = true) then
    begin
      DMPESSOA.TRel.SQL.Add('vwcliente.mark = :MARCADO');
      DMPESSOA.TRel.ParamByName('MARCADO').AsString := 'X';
    end;

    DMPESSOA.TRel.Open;
    RvMalaDireta.Execute;

    { //Paulo 03/03/2011: Determino o tamanho da folha com base das configura��es
     QREtiqMalaDireta.Page.LeftMargin:= StrToFloat(EdMargem.Text);
     QREtiqMalaDireta.Page.RightMargin:= StrToFloat(EdMargem.Text);
     QREtiqMalaDireta.Page.TopMargin:=StrToFloat(EdLinha.Text);
     QREtiqMalaDireta.Page.BottomMargin:=0;
     QRBand6.Height:=StrToInt(EdAltura.Text);
     QRBand6.Top:=StrToInt(EdLinha.Text);
     //QRBand6.Size.Height:=24;
     QRBand6.Size.Width:=StrToFloat(EdLargura.Text);
     //Paulo 09/06/2011: Determino o tamanho da fonte com base das configura��es
     QRDBText11.Font.Size:=StrToInt(EdFonte.Text);
     LbQEndereco.Font.Size:=StrToInt(EdFonte.Text);
     LbQCidade.Font.Size:=StrToInt(EdFonte.Text);

     QREtiqMalaDireta.Prepare;
QREtiqMalaDireta.PreviewModal;

     FrmBuscaNome.Enabled:=True;
     FrmBuscaCid.Enabled:=True;
     FrmBuscaUF.Enabled:=True;

     cbClienteSelecionado.Checked:=False;
     cbClienteSelecionado.Enabled:=True;
     FrmBuscaNome.EdDescricao.Text:='';
     FrmBuscaNome.EDCodigo.Text:='';
     FrmBuscaCid.EdDescricao.Text:='';
     FrmBuscaCid.EDCodigo.Text:='';
     FrmBuscaUF.EdDescricao.Text:='';
     FrmBuscaUF.EDCodigo.Text:='';       }

     //FSMalaDireta.LoadFromFile('C:\MZR\MACS\Rel\FrfEtiqMalaDireta.frf');
     //FSMalaDireta.ShowReport;
  except

  end;
end;

procedure TFCliente.BitBtn8Click(Sender: TObject);
begin
  inherited;
  FrmBuscaNome.Enabled := True;
  FrmBuscaCid.Enabled := True;
  FrmBuscaUF.Enabled := True;

  cbClienteSelecionado.Checked := False;
  FrmBuscaNome.EdDescricao.Text := '';
  FrmBuscaNome.EDCodigo.Text := '';
  FrmBuscaCid.EdDescricao.Text := '';
  FrmBuscaCid.EDCodigo.Text := '';
  FrmBuscaUF.EdDescricao.Text := '';
  FrmBuscaUF.EDCodigo.Text := '';

  PEtqMala.Visible := False;
  PEtqMala.SendToBack;

end;

procedure TFCliente.FrmBuscaNomeBTNOPENClick(Sender: TObject);
begin
  inherited;
  //Paulo 03/03/2011: Busca cliente pelo nome
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' Order by NOME');
  if AbrirForm(TFCliente, FCliente, 1) = 'Selected' then
  begin
    FrmBuscaNome.EdDescricao.Text :=
      DMPESSOA.WCliente.FieldByName('NOME').AsString;
    FrmBuscaNome.EDCodigo.text :=
      DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString;
    FrmBuscaNome.Repaint;
    XcodNome := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
    cbClienteSelecionado.Enabled := False;
  end;
end;

procedure TFCliente.FrmBuscaNomeBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmBuscaNome.BTNMINUSClick(Sender);
  FrmBuscaNome.EdDescricao.Text := '';
  FrmBuscaNome.EDCodigo.text := '';
  XcodNome := 0;
  cbClienteSelecionado.Enabled := True;
  LiberaDados;
end;

procedure TFCliente.FrmCidadeBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmCidade.BTNMINUSClick(Sender);

end;

procedure TFCliente.FrmBuscaCidBTNOPENClick(Sender: TObject);
begin
  inherited;
  //Paulo :03/03/2011: Busca Cidade
  FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', ' Order by NOME');
  if AbrirForm(TFCadCidade, FCadCidade, 1) = 'Selected' then
  begin
    FrmBuscaCid.EdDescricao.Text :=
      DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
    FrmBuscaCid.EDCodigo.text :=
      DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    FrmBuscaCid.Repaint;
    XcodCid := DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
    cbClienteSelecionado.Enabled := False;
  end;

end;

procedure TFCliente.FrmBuscaUFBTNOPENClick(Sender: TObject);
begin
  inherited;
  //Paulo :03/03/2011: Busca UF de Cliente
  FiltraTabela(DMGEOGRAFIA.WEstado, 'VWESTADO', '', '', ' Order by DESCRICAO');
  if AbrirForm(TFCadEstado, FCadEstado, 1) = 'Selected' then
  begin
    FrmBuscaUF.EdDescricao.Text :=
      DMGEOGRAFIA.WEstado.FieldByName('DESCRICAO').AsString;
    FrmBuscaUF.EDCodigo.text :=
      DMGEOGRAFIA.WEstado.FieldByName('COD_ESTADO').AsString;
    FrmBuscaUF.Repaint;
    XcodEst := DMGEOGRAFIA.WEstado.FieldByName('UF').AsString;
    cbClienteSelecionado.Enabled := False;
  end;

end;

procedure TFCliente.FrmBuscaCidBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmBuscaCid.BTNMINUSClick(Sender);
  FrmBuscaCid.EdDescricao.Text := '';
  FrmBuscaCid.EDCodigo.text := '';
  cbClienteSelecionado.Enabled := True;
  XcodCid := 0;
end;

procedure TFCliente.FrmBuscaUFBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmBuscaUF.BTNMINUSClick(Sender);
  FrmBuscaUF.EdDescricao.Text := '';
  FrmBuscaUF.EDCodigo.text := '';
  cbClienteSelecionado.Enabled := True;
  XcodEst := '';
end;

procedure TFCliente.DBBuscaBairroExit(Sender: TObject);
begin
  inherited;
  Xbairro := DMESTOQUE.Alx5.FieldByName('BAIRRO').AsString;
  cbClienteSelecionado.Enabled := False;
  if DMESTOQUE.Alx5.FieldByName('BAIRRO').AsString = '' then
    cbClienteSelecionado.Enabled := True;
end;

procedure TFCliente.cbClienteSelecionadoExit(Sender: TObject);
begin
  inherited;
  if cbClienteSelecionado.Checked = True then
  begin
    FrmBuscaNome.Enabled := False;
    FrmBuscaCid.Enabled := False;
    FrmBuscaUF.Enabled := False;

    FrmBuscaNome.EdDescricao.Text := '';
    FrmBuscaNome.EDCodigo.Text := '';
    FrmBuscaCid.EdDescricao.Text := '';
    FrmBuscaCid.EDCodigo.Text := '';
    FrmBuscaUF.EdDescricao.Text := '';
    FrmBuscaUF.EDCodigo.Text := '';
  end
  else
  begin
    FrmBuscaNome.Enabled := True;
    FrmBuscaCid.Enabled := True;
    FrmBuscaUF.Enabled := True;

  end;
end;

procedure TFCliente.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  //Paulo 03/03/2011: Junta os dados do endere�o e joga no caption
  LbQEndereco.Caption := DMPESSOA.TRel.FieldByName('endereco').AsString + ', ' +
    DMPESSOA.TRel.FieldByName('endnumero').AsString;
  LbQBairro.Caption := DMPESSOA.TRel.FieldByName('bairro').AsString;
  LbQCidade.Caption := DMPESSOA.TRel.FieldByName('cidade').AsString + ' - ' +
    DMPESSOA.TRel.FieldByName('uf_estado').AsString;
  LbQCep.Caption := 'CEP: ' + DMPESSOA.TRel.FieldByName('cep').AsString;

  xcontlin := xcontlin + 1;

end;

procedure TFCliente.QREtiqMalaDiretaBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  if xcontlin = 7 then
  begin
    QREtiqMalaDireta.NewPage;
    xcontlin := 1;
  end;
end;

procedure TFCliente.BtImpCliClick(Sender: TObject);
var
  XTotalOrdem, XTotalVenda, XValorTotal: Real;
  Cod_Tmp: Integer;
begin
  inherited;
  //PAulo 29/07/2011: Valida campos
  if (EdDtInicial.Text <> '  /  /    ') and (EdDtFinal.Text = '  /  /    ') then
  begin
    MessageDlg('Selecione o intervalo de datas', mtWarning, [mbOK], 0);
    EdDtInicial.SetFocus;
    Exit;
  end;
  if (EdDtInicial.Text = '  /  /    ') and (EdDtFinal.Text <> '  /  /    ') then
  begin
    MessageDlg('Selecione o intervalo de datas', mtWarning, [mbOK], 0);
    EdDtInicial.SetFocus;
    Exit;
  end;

  if (FrmBuscaCliInicial.EDCodigo.text = '') and (FrmBuscaCliFinal.EDCodigo.text
    <> '') then
  begin
    MessageDlg('Selecione o intervalo de clientes', mtWarning, [mbOK], 0);
    FrmBuscaCliInicial.BTNOPEN.SetFocus;
    Exit;
  end;
  if (FrmBuscaCliInicial.EDCodigo.text <> '') and (FrmBuscaCliFinal.EDCodigo.text
    = '') then
  begin
    MessageDlg('Selecione o intervalo de clientes', mtWarning, [mbOK], 0);
    FrmBuscaCliFinal.BTNOPEN.SetFocus;
    Exit;
  end;

  //Paulo 29/07/2011: Armazena o filtro
  DMMACS.TLoja.Edit;
  if (EdDtInicial.Text <> '  /  /    ') and (EdDtFinal.Text <> '  /  /    ') then
    DMMACS.TLoja.FieldByName('TMP2').AsString := 'De ' + EdDtInicial.Text + ' a '
      + EdDtFinal.Text
  else
    DMMACS.TLoja.FieldByName('TMP2').AsString := 'Todos';
  DMMACS.TLoja.Post;

  Cod_Tmp := 1;

  DMMACS.TMP.Close;
  DMMACS.TMP.SQL.Clear;
  DMMACS.TMP.SQL.Add(' delete from tmp ');
  DMMACS.TMP.ExecSQL;
  DMMACS.Transaction.CommitRetaining;
  DMMACS.TMP.Close;
  DMMACS.TMP.SQL.Clear;
  DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
  DMMACS.TMP.Open;

  if FMenu.TIPOREL = 'RELVENDA' then
  begin
    //Paulo 28/07/2011: executa sql para buscar dados
    DMPESSOA.TRel.Close;
    DMPESSOA.TRel.SQL.Clear;
    DMPESSOA.TRel.SQL.Add('select distinct(vwcliente.cod_cliente), vwcliente.nome from vwcliente');
    //DMPESSOA.TRel.SQL.Add('left join pedvenda on vwcliente.cod_cliente = pedvenda.cod_cliente');

    if (FrmBuscaCliInicial.EDCodigo.text <> '') and
      (FrmBuscaCliFinal.EDCodigo.text <> '') then
    begin
      DMPESSOA.TRel.SQL.Add('where vwcliente.cod_cliente between :CLIINI and :CLIFIM');
      DMPESSOA.TRel.ParamByName('CLIINI').AsInteger :=
        StrToInt(FrmBuscaCliInicial.EDCodigo.text);
      DMPESSOA.TRel.ParamByName('CLIFIM').AsInteger :=
        StrToInt(FrmBuscaCliFinal.EDCodigo.text);
    end;
    DMPESSOA.TRel.Open;

    //Paulo 28/07/2011: Soma os valores totais
    DMPESSOA.TRel.First;

    while not DMPESSOA.TRel.Eof do
    begin
      //Paulo 29/07/2011: Seleciona dados de pedido e venda
      DMPESSOA.TALX.Close;
      DMPESSOA.TALX.SQL.Clear;
      DMPESSOA.TALX.SQL.Add('select vwcliente.nome, pedvenda.dtfech, pedvenda.valor from vwcliente');
      DMPESSOA.TALX.SQL.Add('left join pedvenda on vwcliente.cod_cliente = pedvenda.cod_cliente');
      DMPESSOA.TALX.SQL.Add('left join ordem on vwcliente.cod_cliente = ordem.cod_cliente');
      DMPESSOA.TALX.SQL.Add('where vwcliente.cod_cliente=:CODCLI and pedvenda.situacao = :sit ');
      DMPESSOA.TALX.ParamByName('CODCLI').AsInteger :=
        DMPESSOA.TRel.FieldByName('cod_cliente').AsInteger;
      DMPESSOA.TALX.ParamByName('SIT').AsString := 'FECHADO';
      if (EdDtInicial.Text <> '  /  /    ') and (EdDtFinal.Text <> '  /  /    ') then
      begin
        DMPESSOA.TALX.SQL.Add('and pedvenda.dtfech between :dtIni and :dtFim');
        DMPESSOA.TALX.ParamByName('DTINI').AsDate :=
          StrToDate(EdDtInicial.Text);
        DMPESSOA.TALX.ParamByName('DTFIM').AsDate := StrToDate(EdDtFinal.Text);
      end;

      DMPESSOA.TALX.Open;

      DMPESSOA.TALX.First;
      XTotalVenda := 0;
      while not DMPESSOA.TALX.Eof do
      begin
        XTotalVenda := XTotalVenda +
          DMPESSOA.TALX.FieldByName('valor').AsCurrency;

        DMPESSOA.TALX.Next;
      end;

      //Paulo 29/07/2011: Seleciona dados de ordem de servi�o
      DMPESSOA.TALX1.Close;
      DMPESSOA.TALX1.SQL.Clear;
      DMPESSOA.TALX1.SQL.Add('select vwcliente.nome, ordem.dtentrega, ordem.totord from vwcliente');
      DMPESSOA.TALX1.SQL.Add('left join ordem on vwcliente.cod_cliente = ordem.cod_cliente');
      DMPESSOA.TALX1.SQL.Add('where vwcliente.cod_cliente=:CODCLI and ordem.status = :sit');
      DMPESSOA.TALX1.ParamByName('CODCLI').AsInteger :=
        DMPESSOA.TRel.FieldByName('cod_cliente').AsInteger;
      DMPESSOA.TALX1.ParamByName('SIT').AsString := 'FECHADO';
      if (EdDtInicial.Text <> '  /  /    ') and (EdDtFinal.Text <> '  /  /    ') then
      begin
        DMPESSOA.TALX1.SQL.Add('and ordem.dtentrega between :dtIni and :dtFim');
        DMPESSOA.TALX1.ParamByName('DTINI').AsDate :=
          StrToDate(EdDtInicial.Text);
        DMPESSOA.TALX1.ParamByName('DTFIM').AsDate := StrToDate(EdDtFinal.Text);

      end;

      DMPESSOA.TALX1.Open;

      DMPESSOA.TALX1.First;
      XTotalOrdem := 0;
      while not DMPESSOA.TALX1.Eof do
      begin
        XTotalOrdem := XTotalOrdem +
          DMPESSOA.TALX1.FieldByName('totord').AsCurrency;

        DMPESSOA.TALX1.Next;
      end;

      //Paulo 29/07/2011: Verifica se o cliente tem os dois peidos (venda e ordem)
      if not (DMPESSOA.TALX.IsEmpty) and not (DMPESSOA.TALX1.IsEmpty) then
      begin
        XValorTotal := XTotalVenda + XTotalOrdem;
        DMMACS.TMP.Insert;
        DMMACS.TMP.FieldByName('COD_TMP').AsInteger := Cod_Tmp;
        DMMACS.TMP.FieldByName('DESC1').AsString :=
          DMPESSOA.TALX.FieldByName('NOME').AsString;
        if DMPESSOA.TALX.FieldByName('dtfech').AsDateTime >
          DMPESSOA.TALX1.FieldByName('dtentrega').AsDateTime then
          DMMACS.TMP.FieldByName('DATA1').AsDateTime :=
            DMPESSOA.TALX.FieldByName('dtfech').AsDateTime
        else
          DMMACS.TMP.FieldByName('DATA1').AsDateTime :=
            DMPESSOA.TALX.FieldByName('dtentrega').AsDateTime;
        DMMACS.TMP.FieldByName('VLR1').AsCurrency := XValorTotal;
        DMMACS.TMP.Post;
        DMMACS.Transaction.CommitRetaining;
        Cod_Tmp := Cod_Tmp + 1;
      end
      else
      begin
        if not DMPESSOA.TALX.IsEmpty then
        begin
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('COD_TMP').AsInteger := Cod_Tmp;
          DMMACS.TMP.FieldByName('DESC1').AsString :=
            DMPESSOA.TALX.FieldByName('NOME').AsString;
          DMMACS.TMP.FieldByName('DATA1').AsDateTime :=
            DMPESSOA.TALX.FieldByName('dtfech').AsDateTime;
          DMMACS.TMP.FieldByName('VLR1').AsCurrency := XTotalVenda;
          DMMACS.TMP.Post;
          DMMACS.Transaction.CommitRetaining;
          Cod_Tmp := Cod_Tmp + 1;
        end
        else
        begin
          if not DMPESSOA.TALX1.IsEmpty then
          begin
            DMMACS.TMP.Insert;
            DMMACS.TMP.FieldByName('COD_TMP').AsInteger := Cod_Tmp;
            DMMACS.TMP.FieldByName('DESC1').AsString :=
              DMPESSOA.TALX1.FieldByName('NOME').AsString;
            DMMACS.TMP.FieldByName('DATA1').AsDateTime :=
              DMPESSOA.TALX1.FieldByName('dtentrega').AsDateTime;
            DMMACS.TMP.FieldByName('VLR1').AsCurrency := XTotalOrdem;
            DMMACS.TMP.Post;
            DMMACS.Transaction.CommitRetaining;
            Cod_Tmp := Cod_Tmp + 1;
          end;
        end;
      end;
      DMPESSOA.TRel.Next
    end;

    //Paulo 29/07/2011: Seleciona os dados para o relat�rio
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ORDER BY TMP.VLR1 DESC');
    DMMACS.TMP.Open;

    FSVendaCli.LoadFromFile('C:\MZR\MACS\Rel\FrfVendaCliente.frf');
    FSVendaCli.ShowReport;
  end

  else if FMenu.TIPOREL = 'RELCRED' then
  begin
    //Paulo 28/07/2011: executa sql para buscar dados
    DMPESSOA.TRel.Close;
    DMPESSOA.TRel.SQL.Clear;
    DMPESSOA.TRel.SQL.Add(' SELECT CREDITO.COD_PESSOA ,CREDITO.TIPOCRED, CREDITO.VALOR, CREDITO.SALDO, CREDITO.DATA, PESSOA.NOME, PESSOA.VLRCREDITO, CLIENTE.COD_INTERNO');
    DMPESSOA.TRel.SQL.Add(' FROM CREDITO');
    DMPESSOA.TRel.SQL.Add(' LEFT JOIN PESSOA ON CREDITO.COD_PESSOA = PESSOA.COD_PESSOA');
    DMPESSOA.TRel.SQL.Add(' LEFT JOIN CLIENTE ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA');

    if (FrmBuscaCliInicial.EDCodigo.text <> '') and
      (FrmBuscaCliFinal.EDCodigo.text <> '') then
    begin
      DMPESSOA.TRel.SQL.Add('WHERE CLIENTE.COD_INTERNO BETWEEN :CLIINI AND :CLIFIM');
      DMPESSOA.TRel.ParamByName('CLIINI').AsInteger :=
        StrToInt(FrmBuscaCliInicial.EDCodigo.text);
      DMPESSOA.TRel.ParamByName('CLIFIM').AsInteger :=
        StrToInt(FrmBuscaCliFinal.EDCodigo.text);
    end;

    if (EdDtInicial.Text <> '  /  /    ') and (EdDtFinal.Text <> '  /  /    ') then
    begin
      DMPESSOA.TRel.SQL.Add('AND CREDITO.DATA BETWEEN :dtIni and :dtFim');
      DMPESSOA.TRel.ParamByName('DTINI').AsDate := StrToDate(EdDtInicial.Text);
      DMPESSOA.TRel.ParamByName('DTFIM').AsDate := StrToDate(EdDtFinal.Text);
    end;

    DMPESSOA.TRel.Open;
    DMPESSOA.TRel.First;

    FDBREL.DataSource := DMPESSOA.DSRel;
    FREL.LoadFromFile('C:\MZR\MACS\Rel\FrfRelCreditoCliente.fr3');
    FREL.ShowReport;
  end;
end;

procedure TFCliente.FrmBuscaCliInicialBTNOPENClick(Sender: TObject);
begin
  inherited;
  //Paulo 28/07/2011: Seleciona cliente INICIAL
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' Order by NOME');
  if AbrirForm(TFCliente, FCliente, 1) = 'Selected' then
  begin
    FrmBuscaCliInicial.EdDescricao.Text :=
      DMPESSOA.WCliente.FieldByName('NOME').AsString;
    FrmBuscaCliInicial.EDCodigo.text :=
      DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString;
    FrmBuscaCliInicial.Repaint;
    XCODCLIINI := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
  end
  else
    XCODCLIINI := -1;

end;

procedure TFCliente.FrmBuscaCliFinalBTNOPENClick(Sender: TObject);
begin
  inherited;
  //Paulo 28/07/2011: Seleciona cliente FINAL
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' Order by NOME');
  if AbrirForm(TFCliente, FCliente, 1) = 'Selected' then
  begin
    FrmBuscaCliFinal.EdDescricao.Text :=
      DMPESSOA.WCliente.FieldByName('NOME').AsString;
    FrmBuscaCliFinal.EDCodigo.text :=
      DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString;
    FrmBuscaCliFinal.Repaint;
    XCODCLIFIM := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
  end
  else
    XCODCLIFIM := -1;

end;

procedure TFCliente.FrmBuscaCliInicialBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmBuscaCliInicial.EdDescricao.Text := '';
  FrmBuscaCliInicial.EDCodigo.text := '';
  FrmBuscaCliInicial.Repaint;
  XCODCLIINI := -1;

end;

procedure TFCliente.FrmBuscaCliFinalBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmBuscaCliFinal.EdDescricao.Text := '';
  FrmBuscaCliFinal.EDCodigo.text := '';
  FrmBuscaCliFinal.Repaint;
  XCODCLIFIM := -1;

end;

procedure TFCliente.BtCancCliClick(Sender: TObject);
begin
  inherited;
  FrmBuscaCliFinalBTNMINUSClick(Sender);
  FrmBuscaCliInicialBTNMINUSClick(Sender);
  EdDtInicial.Text := '  /  /    ';
  EdDtFinal.Text := '  /  /    ';

  PListaCliente.Visible := False;
  PListaCliente.SendToBack;

end;

procedure TFCliente.Vendas1Click(Sender: TObject);
begin
  inherited;
  PListaCliente.Visible := True;
  PListaCliente.BringToFront;
  FMenu.TIPOREL := 'RELVENDA'
end;

procedure TFCliente.btLimpaDataClick(Sender: TObject);
begin
  inherited;
  EdDtInicial.Text := '  /  /    ';
  EdDtFinal.Text := '  /  /    ';
end;

procedure TFCliente.FrmTranspBTNMINUSClick(Sender: TObject);
begin
  inherited;
  XCOD_TRANSP := -1;
  FrmTransp.EdDescricao.Text := '';
  FrmTransp.EDCodigo.text := '';

end;

procedure TFCliente.DBCPFExit(Sender: TObject);
begin
  inherited;
  //Paulo 17/08/2011:Para petshop ele marca o combobox de venda a vissta caso o edit de cpf esteja em branco
  if (DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP') and (DBCPF.Text
    = '') then
    cbVendaVista.Checked := True
  else
    cbVendaVista.Checked := False;
end;

procedure TFCliente.DesmarcarTodos1Click(Sender: TObject);
begin
  inherited;
  //Paulo 02/03/2011: Marcar e desmarcar TODOS OS cliente
  {DMPESSOA.TCliente.Close;
  DMPESSOA.TCliente.SQL.Clear;
  DMPESSOA.TCliente.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.MARK = ''X''');
  DMPESSOA.TCliente.Open;

  DMPESSOA.TCliente.First;
  while not DMPESSOA.TCliente.Eof do
  begin
      DMPESSOA.TCliente.Edit;
      If DMPESSOA.TCliente.FieldByName('MARK').AsString='X' Then
          DMPESSOA.TCliente.FieldByName('MARK').AsString:='';

       DMPESSOA.TCliente.Post;
       DMPESSOA.TCliente.Next;
  end; }
//Edmar - 08/06/2015 - Foi alterado a forma de desmarca��o do cliente
  try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' UPDATE CLIENTE SET CLIENTE.MARK = '''' ');
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
  except
    ShowMessage('N�o foi poss�vel desmarcar os Clientes.');
    MDO.Transac.RollbackRetaining;
  end;

  XSQLVIEW := 'VWCLIENTE';
  LiberaDados;
end;

procedure TFCliente.DBGridCadastroPadraoCellClick(Column: TColumn);
begin
  inherited;
  //Paulo 01/11/2011: mostra cr�dito do cliente
  FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
    IntToStr(DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger), '');
  lbCreditoCli.Caption := 'Cr�dito por Antecipa��es: ' + FormatFloat('0.00',
    DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency);

end;

procedure TFCliente.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_return) then
    contadorcli;
  if (Key = VK_ESCAPE) then
    lbCreditoCli.Caption := '';
end;

procedure TFCliente.BitBtn10Click(Sender: TObject);
begin
  inherited;
  PNovaTabela.Visible := False;
  DBLookupComboBox1.SetFocus;
end;

procedure TFCliente.BitBtn9Click(Sender: TObject);
begin
  inherited;
  try
    if EdNovaTabela.Text = '' then
    begin
      MessageDlg('Por favor, informe a descri��o da tabela de pre�o', mtWarning,
        [mbOK], 0);
      EdNovaTabela.SetFocus;
    end
    else
    begin
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add(' Select max(tabela_preco.cod_tabelapreco) as codigo, max(tabela_preco.indicelinha) as linha from tabela_preco ');
      MDO.QConsulta.Open;

      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' INSERT INTO tabela_preco (cod_tabelapreco, descricao, INDICELINHA) ');
      MDO.Query.SQL.Add(' VALUES (:cod_tabelapreco, :descricao, :INDICELINHA) ');
      MDO.Query.ParamByName('cod_tabelapreco').AsInteger :=
        MDO.QConsulta.FieldByName('codigo').AsInteger + 1;
      MDO.Query.ParamByName('INDICELINHA').AsInteger :=
        MDO.QConsulta.FieldByName('LINHA').AsInteger + 1;
      MDO.Query.ParamByName('descricao').AsString := EdNovaTabela.Text;
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
      DMServ.IBT.CommitRetaining;
      DMServ.TTabPreco.Close;
      DMServ.TTabPreco.Open;
      PNovaTabela.Visible := False;
      btnnovatabela.SetFocus;
    end;
  except
    MDO.Transac.RollbackRetaining;
  end;
end;

procedure TFCliente.btnnovatabelaClick(Sender: TObject);
begin
  inherited;
  PNovaTabela.Visible := True;
  PNovaTabela.BringToFront;
  EdNovaTabela.Text := '';
  EdNovaTabela.SetFocus;
end;

procedure TFCliente.RelMalaDiretaRave;
// Metodo que  gera o relatorio Mala Direta Usando Rave Reports
var
  xNrLines: Integer;
  xContadorEspacamento: Integer;
  //xTamanhoEtiquetas: Double;
  xQuantidadeEtiquetas: Integer;
  xContadorEtiquetas: Integer;
begin
  with RvMalaDireta.BaseReport do
  begin
    //xTamanhoEtiquetas := (((StrToInt(EdFonte.text) * 0.3 / 10) * 5) + 2.8);
    //2,8 corresponde a o espa�amento entre as etiquetas, ja contando com o espa�o entre as linhas
    xQuantidadeEtiquetas := StrToInt(EdQtdeEtqPagina.Text);
    //Ceil(25.6/xTamanhoEtiquetas);

    xNrLines := ((StrToInt(EdAltura.text)));
    xContadorEtiquetas := 1;
    SetFont('Arial', (StrToFloat(EdFonte.text)));
    MarginTop := StrtoFloat(EdLinha.text) / 20;
    Bold := true;

    while not DMPESSOA.TRel.Eof do
    begin

      if (DMPESSOA.TRel.RecordCount = 1) and (StrToFloat(EdLinha.text) <> 0) then
        Println('                                                                                                               ');

      PrintLeft(Copy(DMPESSOA.TRel.FieldbyName('NOME').AsString, 1,
        StrToInt(EdLargura.text)), (StrToFloat(EdMargem.Text) / 25.0));
      NewLine;
      PrintLeft(Copy(DMPESSOA.TRel.FieldbyName('ENDERECO').AsString + ', ' +
        DMPESSOA.TRel.FieldbyName('ENDNUMERO').AsString, 1,
        StrToInt(EdLargura.text)), (StrToFloat(EdMargem.Text) / 25.0));
      NewLine;
      PrintLeft(Copy(DMPESSOA.TRel.FieldbyName('BAIRRO').AsString, 1,
        StrToInt(EdLargura.text)), (StrToFloat(EdMargem.Text) / 25.0));
      NewLine;
      PrintLeft(Copy(DMPESSOA.TRel.FieldbyName('CIDADE').AsString + ' - ' +
        DMPESSOA.TRel.FieldbyName('UF_ESTADO').AsString, 1,
        StrToInt(EdLargura.text)), (StrToFloat(EdMargem.Text) / 25.0));
      NewLine;
      PrintLeft(Copy(DMPESSOA.TRel.FieldbyName('CEP').AsString, 1,
        StrToInt(EdLargura.text)), (StrToFloat(EdMargem.Text) / 25.0));
      DMPESSOA.TRel.Next;

      for xContadorEspacamento := 0 to xNrLines do
      begin
        NewLine;
      end;

      if xContadorEtiquetas = xQuantidadeEtiquetas then
      begin
        NewPage;
        xContadorEtiquetas := 1;
      end
      else
        xContadorEtiquetas := xContadorEtiquetas + 1;
    end;

  end;
end;

procedure TFCliente.RvMalaDiretaPrint(Sender: TObject);
begin
  inherited;
  RelMalaDiretaRave;
end;

procedure TFCliente.RvMalaDiretaBeforePrint(Sender: TObject);
begin
  inherited;
  with Sender as TBaseReport do
  begin
    SetPaperSize(DMPAPER_A4, 0, 0);
  end;
end;

procedure TFCliente.BtnObraClick(Sender: TObject);
begin
  inherited;
  FMenu.XTIPOBOLTO := '357';
  AbrirForm(TFCadEQUIPAMENTO, FCadEQUIPAMENTO, 0);
  FMenu.XTIPOBOLTO := '';
end;

procedure TFCliente.EdRazaoSocialEnter(Sender: TObject);
begin
  inherited;
  if EdRazaoSocial.Text = 'Raz�o Social' then
    EdRazaoSocial.Text := ''
  else
    EdRazaoSocial.SelectAll;

  EdRazaoSocial.Font.Color := clBlack;
end;

procedure TFCliente.EdRazaoSocialExit(Sender: TObject);
begin
  inherited;
  if Trim(EdRazaoSocial.Text) = '' then
  begin
    EdRazaoSocial.Text := 'Raz�o Social';
    EdRazaoSocial.Font.Color := clGray;
  end;
end;

procedure TFCliente.EdRazaoSocialKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  XSCPC, XFiltro: string;
begin
  inherited;
  try
    if cbscpc.Checked = True then
      XSCPC := ' and (vwcliente.scpc<>' + #39 + '1' + #39')'
    else
      XSCPC := ' ';
    if RGFiltro.ItemIndex = 0 then
      XFiltro := ' and ((vwcliente.SEPARAR=0) or (vwcliente.SEPARAR is null)) ';
    if RGFiltro.ItemIndex = 1 then
      XFiltro := ' and (vwcliente.SEPARAR=' + #39 + '1' + #39 + ')';

    if Key = VK_RETURN then
    begin //pressionado enter, consultar
      if RGFiltro.ItemIndex = 2 then
      begin
        if XTab = True then
          FiltraTabela(XTabela, XSQLTABELA, 'RAZAOSOCIAL', '',
            '(upper(RAZAOSOCIAL) like upper(' + #39 + EdRazaoSocial.Text + '%' +
            #39 + ')) AND (vwcliente.ativo=0) ' + XSCPC + XFiltro +
            ' ORDER  BY RAZAOSOCIAL')
        else
          FiltraTabela(XView, XSQLVIEW, 'RAZAOSOCIAL', '',
            '(upper(RAZAOSOCIAL) like upper(' + #39 + EdRazaoSocial.Text + '%' +
            #39 + ')) AND (vwcliente.ativo=0)  ' + XSCPC + XFiltro +
            '  ORDER BY RAZAOSOCIAL');
      end
      else
      begin
        if XTab = True then
          FiltraTabela(XTabela, XSQLTABELA, 'RAZAOSOCIAL', '',
            '(upper(RAZAOSOCIAL) like upper(' + #39 + EdRazaoSocial.Text + '%' +
            #39 + ')) AND ((vwcliente.ativo<>0) or (vwcliente.ativo is null)) ' +
            XSCPC + XFiltro + ' ORDER  BY RAZAOSOCIAL')
        else
          FiltraTabela(XView, XSQLVIEW, 'RAZAOSOCIAL', '',
            '(upper(RAZAOSOCIAL) like upper(' + #39 + EdRazaoSocial.Text + '%' +
            #39 + ')) AND ((vwcliente.ativo<>0) or (vwcliente.ativo is null)) ' +
            XSCPC + XFiltro + '  ORDER BY RAZAOSOCIAL');
      end;
    end;

    if Key = VK_ESCAPE then
    begin //pressionado esc, liberar
      LiberaDados;
      lbCreditoCli.Caption := '';
    end;
    if Key = VK_RETURN then //CONAGEM DE CLIENTE E DE CREDITO DE ANTECIPA��O
      contadorCli;

  except
  end;

end;

procedure TFCliente.EdRazaoSocialKeyUp(Sender: TObject; var Key: Word; Shift:
  TShiftState);
begin
  inherited;
  if FMenu.XCONSULTARAPIDA then
  begin
    // - 16/02/2009: pesquisa nome cliente na tabela aberta
    DMPESSOA.WCliente.Locate('RAZAOSOCIAL', EdRazaoSocial.Text, [loPartialKey,
        loCaseInsensitive]);
    //contadorCli;
  end;
end;

procedure TFCliente.btnhelpClick(Sender: TObject);
begin
  inherited;
  AbrirHelp(cliente);
end;

procedure TFCliente.RelatriodeCrdito1Click(Sender: TObject);
begin
  inherited;
  PListaCliente.Visible := True;
  PListaCliente.BringToFront;
  FMenu.TIPOREL := 'RELCRED'
end;

procedure TFCliente.BtnAnexarDocClick(Sender: TObject);
begin
  inherited;
  if DMMACS.TLoja.FieldByName('CAMINHODOCS').AsString <> '' then
  begin
    if not DirectoryExists(DMMACS.TLoja.FieldByName('CAMINHODOCS').AsString) then
      ForceDirectories(DMMACS.TLoja.FieldByName('CAMINHODOCS').AsString);
  end
  else
  begin
    if not DirectoryExists('C:/MZR/Arquivos/Documentos Clientes') then
      ForceDirectories('C:/MZR/Arquivos/Documentos Clientes');
  end;

  if OPD.Execute then
    xOrigem := OPD.FileName;
end;

procedure TFCliente.AnexarDocumentos1Click(Sender: TObject);
begin
  inherited;
  AnexarArquivoPessoa(DMPESSOA.WCliente.FieldByName('cod_pessoa').AsInteger);
end;

procedure TFCliente.AbrirPasta1Click(Sender: TObject);
begin
  inherited;
  AbrirPastaPessoa(DMPESSOA.WCliente.FieldByName('cod_pessoa').AsInteger);
end;

procedure TFCliente.actSearchCNPJExecute(Sender: TObject);
var
  cds: TClientDataSet;
begin
  inherited;
  cds := GetCNPJInfo(DMPESSOA.TPessoaCPFCNPJ.AsString);
  try
    if not (DMPESSOA.TPessoa.State in DB.dsEditModes) then
      DMPESSOA.TPessoa.Edit;
    if not (DMPESSOA.TPessoaJ.State in DB.dsEditModes) then
      DMPESSOA.TPessoaJ.Edit;

    DMPESSOA.TPessoaJRAZAO_SOCIAL.Value := cds.FieldByName('nome').AsString;
    DMPESSOA.TPessoaNOME.Value := cds.FieldByName('fantasia').AsString;
    DMPESSOA.TPessoaDTNASC.Value := cds.FieldByName('abertura').AsDateTime;
    DMPESSOA.TPessoaCEP.Value := cds.FieldByName('cep').AsString;
    DMPESSOA.TPessoaBAIRRO.Value := cds.FieldByName('bairro').AsString;
    DBColorEdit4.Text := cds.FieldByName('logradouro').AsString;
    DMPESSOA.TPessoaENDNUMERO.Value := cds.FieldByName('numero').AsString;
    DMPESSOA.TPessoaTELREL.Value := cds.FieldByName('telefone').AsString;

    EdEmail.Text := cds.FieldByName('email').AsString;
    if Length(Trim(EdEmail.Text)) > 0 then
    begin
      edDescEmail.Text := 'Email principal';
      btnAddEmail.Click;
    end;

  finally
    cds.Free;
  end;
end;

procedure TFCliente.actSearchCNPJUpdate(Sender: TObject);
begin
  inherited;
  actSearchCNPJ.Enabled := ((Length(Trim(DMPESSOA.TPessoaCPFCNPJ.AsString)) = 14) and (RGTIPO.ItemIndex <> 0));
end;

procedure TFCliente.btnBuscaCnpjClick(Sender: TObject);
var
  cds: TClientDataSet;
begin
  inherited;
  cds := GetCNPJInfo(DMPESSOA.TPessoaCPFCNPJ.AsString);
  DMGEOGRAFIA.WCidade.close;
  DMGEOGRAFIA.WCidade.SQL.Clear;
  DMGEOGRAFIA.WCidade.SQL.Add(' SELECT * FROM vwcidade WHERE (upper(vwcidade.nome) = :CIDADE) AND (upper(vwcidade.uf) = :UF) ');
  DMGEOGRAFIA.WCidade.ParamByName('CIDADE').AsString := UpperCase(cds.FieldByName('municipio').AsString);
  DMGEOGRAFIA.WCidade.ParamByName('UF').AsString := UpperCase(cds.FieldByName('UF').AsString);
  DMGEOGRAFIA.WCidade.Open;
  IF NOT DMGEOGRAFIA.WCidade.IsEmpty
  Then Begin
        XCOD_CIDADE:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
        Frmbusca1.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
        Frmbusca1.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
  End
  Else Begin
        XCOD_CIDADE:=-1;
        Frmbusca1.EdDescricao.Text:='';
        Frmbusca1.EDCodigo.text:='';
  End;

  try
    if not (DMPESSOA.TPessoa.State in DB.dsEditModes) then
      DMPESSOA.TPessoa.Edit;
    if not (DMPESSOA.TPessoaJ.State in DB.dsEditModes) then
      DMPESSOA.TPessoaJ.Edit;

    DMPESSOA.TPessoaJRAZAO_SOCIAL.Value := cds.FieldByName('nome').AsString;
    DMPESSOA.TPessoaNOME.Value := cds.FieldByName('fantasia').AsString;
    DMPESSOA.TPessoaDTNASC.Value := cds.FieldByName('abertura').AsDateTime;
    DMPESSOA.TPessoaCEP.Value := cds.FieldByName('cep').AsString;
    DMPESSOA.TPessoaBAIRRO.Value := cds.FieldByName('bairro').AsString;
    DBColorEdit4.Text := cds.FieldByName('logradouro').AsString;
    DMPESSOA.TPessoaENDNUMERO.Value := cds.FieldByName('numero').AsString;
    DMPESSOA.TPessoaTELREL.Value := cds.FieldByName('telefone').AsString;

    EdEmail.Text := cds.FieldByName('email').AsString;
    if Length(Trim(EdEmail.Text)) > 0 then
    begin
      edDescEmail.Text := 'Email principal';
      btnAddEmail.Click;
    end;
  finally
    cds.Free;
  end; 
end;

procedure TFCliente.DBCnpjExit(Sender: TObject);
begin
  inherited;
   btnBuscaCnpj.SetFocus;
end;

end.
