unit uOrdemMecanica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, EditFloat,
  ComCtrls, DBClient, ColorEditFloat, ColorMaskEdit, UFrmBusca,
  FashionPanel, Menus, XMLDoc, XMLIntf;

type
  TfrmOrdemMecanica = class(TForm)
    pConsulta: TPanel;
    PBotoesConsulta: TPanel;
    BtnNovo: TBitBtn;
    btnOrcamento: TBitBtn;                                        
    btnRelatorio: TBitBtn;
    BtnFechaPed: TBitBtn;
    BtnConsultar: TBitBtn;
    pFiltro: TPanel;
    DBGridConsulta: TDBGrid;
    pRodaPe: TPanel;
    cbFiltroAndamento: TComboBox;
    cbFiltroStatus: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edFiltroNumeroOrdem: TEdit;
    edFiltroNumeroNfe: TEdit;
    edFiltroNumeroNfse: TEdit;
    edFiltroPlaca: TEdit;
    Label7: TLabel;
    edFiltroCliente: TEdit;
    edFiltroDataIni: TMaskEdit;
    edFiltroDataFim: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label9: TLabel;
    PCadastro: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    edValorTotalOS: TFloatEdit;
    Label10: TLabel;
    edValorTotalProduto: TFloatEdit;
    Label11: TLabel;
    Label12: TLabel;
    edValorLiquidoProduto: TFloatEdit;
    Label13: TLabel;
    edValorDescontoProduto: TFloatEdit;
    edValorTotalServico: TFloatEdit;
    Label15: TLabel;
    Label16: TLabel;
    edValorDescontoServico: TFloatEdit;
    edValorLiquidoServico: TFloatEdit;
    Label17: TLabel;
    pCamposPlaca: TPanel;
    Label18: TLabel;
    edPlaca: TEdit;
    BitBtn5: TBitBtn;
    edVeiculo: TEdit;
    BitBtn7: TBitBtn;
    pCamposPlacasAdicionais: TPanel;
    edPlaca02: TEdit;
    edPlaca03: TEdit;
    Label19: TLabel;
    pCampoCliente: TPanel;
    Label23: TLabel;
    edCliente: TEdit;
    btnAbreCliente: TBitBtn;
    edHistoricoCliente: TEdit;
    edCodCliente: TEdit;
    Panel4: TPanel;
    btnGravar: TBitBtn;
    BitBtn11: TBitBtn;
    btnCancelar: TBitBtn;
    pcItens: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgProdutos: TDBGrid;
    Panel1: TPanel;
    DbgServicos: TDBGrid;
    Panel5: TPanel;
    Label14: TLabel;
    edInsereProdutoDescricao: TEdit;
    TabSheet3: TTabSheet;
    pCamposData: TPanel;
    pVendedor: TPanel;
    Label25: TLabel;
    edVendedor: TEdit;
    BitBtn3: TBitBtn;
    edCodVendedor: TEdit;
    edInsereProdutoQuantidade: TFloatEdit;
    edInsereProdutoValorUnitario: TFloatEdit;
    edInsereProdutoValorTotal: TFloatEdit;
    btnInsereProduto: TBitBtn;
    btnRemoveProduto: TBitBtn;
    edNumero: TFloatEdit;
    Label26: TLabel;
    lPesquisa: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    btnInsereProdutoLocalize: TBitBtn;
    lInsereProdutoSelecionado: TLabel;
    PListaProdutos: TPanel;
    DBGrid1: TDBGrid;
    Label27: TLabel;
    edObservacao: TMemo;
    Label31: TLabel;
    edDadosAdicionais: TMemo;
    Label32: TLabel;
    edValorDescontoOS: TFloatEdit;
    Label33: TLabel;
    edInsereServicoDescricao: TEdit;
    Label34: TLabel;
    edInsereServicoQuantidade: TFloatEdit;
    Label35: TLabel;
    edInsereServicoValorUnitario: TFloatEdit;
    Label36: TLabel;
    edInsereServicoValorTotal: TFloatEdit;
    btnInsereServico: TBitBtn;
    btnRemoveServico: TBitBtn;
    Label37: TLabel;
    edInsereServicoCodigoResponsavel: TFloatEdit;
    btnInsereResponsavel: TBitBtn;
    lInsereServicoResponsavel: TLabel;
    btnAtualizaDadosCadastro: TBitBtn;
    MenuListaOrdens: TPopupMenu;
    AjustaAndamento1: TMenuItem;
    Iniciado1: TMenuItem;
    Paralizado1: TMenuItem;
    erminado1: TMenuItem;
    edKmAtual: TFloatEdit;
    Label38: TLabel;
    MenuRelatorios: TPopupMenu;
    Relatrios1: TMenuItem;
    ListagemdeOrdensdeServio1: TMenuItem;
    Financeiro1: TMenuItem;
    CancelaFechamento1: TMenuItem;
    NotaFiscalEletrnicaProdutos1: TMenuItem;
    NotaFiscalEletrnicaServios1: TMenuItem;
    ReenviarNFe1: TMenuItem;
    ReenviarNFSe1: TMenuItem;
    RecuperarDadosdeNFecomachave1: TMenuItem;
    N1: TMenuItem;
    VisualizarDanfe1: TMenuItem;
    ConsultarStatusdaNFenoSefaz1: TMenuItem;
    N2: TMenuItem;
    ConsultarStatusServioSefaz1: TMenuItem;
    ListarNFescontidasnoSefaz1: TMenuItem;
    InutilizarNumeraodeNFe1: TMenuItem;
    EfetuardevoluodeNFe1: TMenuItem;
    ReenviarNFeemcontingncia1: TMenuItem;
    CancelarNFe1: TMenuItem;
    EnviarCartadeCorreoEletrnica1: TMenuItem;
    XML1: TMenuItem;
    N3: TMenuItem;
    EnviarXMLdeNFeporEmail1: TMenuItem;
    CancelarNFSe1: TMenuItem;
    N4: TMenuItem;
    VisualizarNFSe1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    XML2: TMenuItem;
    EnviarXMLdeNFSeporEmail1: TMenuItem;
    N7: TMenuItem;
    RecuperarDadosdeNFSe1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    DuplicarOrdemdeServio1: TMenuItem;
    NFCeNotaFiscalConsumidor1: TMenuItem;
    ReenviarNFCeemContingncia1: TMenuItem;
    N11: TMenuItem;
    Consultar1: TMenuItem;
    EnviarXMLdeCancelamentoporEmail1: TMenuItem;
    Comprovantemeiapgina1: TMenuItem;
    Comprovantepginainteira1: TMenuItem;
    Cupomnofiscal1: TMenuItem;
    Comprovantes1: TMenuItem;
    N8: TMenuItem;
    N12: TMenuItem;
    Auditoria1: TMenuItem;
    Auditoriadeusurio1: TMenuItem;
    ermodecontratao1: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    pmImpressaoInterna: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem14: TMenuItem;
    Shape1: TShape;
    Shape2: TShape;
    edFiltroVeiculo: TEdit;
    Label20: TLabel;
    cbTerceiros: TCheckBox;
    edInsereServicoCustoTerceirizacao: TFloatEdit;
    Shape3: TShape;
    lbCustoTerceirizacao: TLabel;
    Label22: TLabel;
    edDataAbertura: TMaskEdit;
    ListarpagamentosRealizados1: TMenuItem;
    TabSheet4: TTabSheet;
    Label21: TLabel;
    edProblemaReclamado: TMemo;
    Label24: TLabel;
    edSolucaoApresentada: TMemo;
    LaudoTcnico1: TMenuItem;
    N15: TMenuItem;
    CBVENDABALCAO: TCheckBox;
    pInsereProdutoValorCusto: TPanel;
    Label39: TLabel;
    edInsereProdutoCusto: TFloatEdit;
    PPagamento: TPanel;
    Label40: TLabel;
    edPagamentoDescricao: TEdit;
    BitBtn4: TBitBtn;
    edPagamentoCodigo: TEdit;
    edPercentoDescontoProduto: TFloatEdit;
    edPercentoDescontoServico: TFloatEdit;
    Servios1: TMenuItem;
    Serviosporequipe011: TMenuItem;
    Serviosporequipe021: TMenuItem;
    N16: TMenuItem;
    Serviosporclassificao1: TMenuItem;
    ServiosporclassificaoGrfico1: TMenuItem;
    Produtos1: TMenuItem;
    ProdutosvendidoscomCusto1: TMenuItem;
    ProdutosvendidoscomcustodeNFe1: TMenuItem;
    OrdemdeServios1: TMenuItem;
    Sinttico1: TMenuItem;
    Analtico1: TMenuItem;
    Extrato1: TMenuItem;
    N17: TMenuItem;
    LaudoTcnico2: TMenuItem;
    PagamentosAntecipados1: TMenuItem;
    LanarAntecipao1: TMenuItem;
    ConsultarAtencipaes1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbFiltroStatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edValorDescontoProdutoExit(Sender: TObject);
    procedure edValorLiquidoProdutoExit(Sender: TObject);
    procedure edValorDescontoServicoExit(Sender: TObject);
    procedure edValorLiquidoServicoExit(Sender: TObject);
    procedure edPlacaExit(Sender: TObject);
    procedure edPlacaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPlacaKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure edCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAbreClienteClick(Sender: TObject);
    procedure edCodVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarClick(Sender: TObject);
    procedure btnInsereProdutoLocalizeClick(Sender: TObject);
    procedure edInsereProdutoQuantidadeExit(Sender: TObject);
    procedure edInsereProdutoValorUnitarioExit(Sender: TObject);
    procedure edInsereProdutoValorTotalExit(Sender: TObject);
    procedure edInsereProdutoDescricaoEnter(Sender: TObject);
    procedure edInsereProdutoDescricaoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edInsereProdutoDescricaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInsereProdutoClick(Sender: TObject);
    procedure btnRemoveProdutoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edInsereServicoQuantidadeExit(Sender: TObject);
    procedure edInsereServicoValorTotalExit(Sender: TObject);
    procedure edInsereServicoCodigoResponsavelExit(Sender: TObject);
    procedure btnInsereResponsavelClick(Sender: TObject);
    procedure edInsereServicoCodigoResponsavelKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure btnInsereServicoClick(Sender: TObject);
    procedure btnRemoveServicoClick(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure btnAtualizaDadosCadastroClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure Iniciado1Click(Sender: TObject);
    procedure Paralizado1Click(Sender: TObject);
    procedure erminado1Click(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure ListagemdeOrdensdeServio1Click(Sender: TObject);
    procedure CancelaFechamento1Click(Sender: TObject);
    procedure btnOrcamentoClick(Sender: TObject);
    procedure RecuperarDadosdeNFecomachave1Click(Sender: TObject);
    procedure InutilizarNumeraodeNFe1Click(Sender: TObject);
    procedure CancelarNFe1Click(Sender: TObject);
    procedure EnviarCartadeCorreoEletrnica1Click(Sender: TObject);
    procedure ReenviarNFe1Click(Sender: TObject);
    procedure ReenviarNFSe1Click(Sender: TObject);
    procedure ReenviarNFCeemContingncia1Click(Sender: TObject);
    procedure VisualizarDanfe1Click(Sender: TObject);
    procedure ConsultarStatusdaNFenoSefaz1Click(Sender: TObject);
    procedure ConsultarStatusServioSefaz1Click(Sender: TObject);
    procedure EfetuardevoluodeNFe1Click(Sender: TObject);
    procedure ListarNFescontidasnoSefaz1Click(Sender: TObject);
    procedure CancelarNFSe1Click(Sender: TObject);
    procedure VisualizarNFSe1Click(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure RecuperarDadosdeNFSe1Click(Sender: TObject);
    procedure EnviarXMLdeNFSeporEmail1Click(Sender: TObject);
    procedure EnviarXMLdeNFeporEmail1Click(Sender: TObject);
    procedure EnviarXMLdeCancelamentoporEmail1Click(Sender: TObject);
    procedure Comprovantemeiapgina1Click(Sender: TObject);
    procedure Comprovantepginainteira1Click(Sender: TObject);
    procedure Cupomnofiscal1Click(Sender: TObject);
    procedure Auditoriadeusurio1Click(Sender: TObject);
    procedure ermodecontratao1Click(Sender: TObject);
    procedure Serviosporequipe1Click(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BitBtn11Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure DuplicarOrdemdeServio1Click(Sender: TObject);
    procedure cbTerceirosClick(Sender: TObject);
    procedure pcItensChange(Sender: TObject);
    procedure ListarpagamentosRealizados1Click(Sender: TObject);
    procedure LaudoTcnico1Click(Sender: TObject);
    procedure edFiltroNumeroOrdemKeyPress(Sender: TObject; var Key: Char);
    procedure edFiltroNumeroNfeKeyPress(Sender: TObject; var Key: Char);
    procedure edFiltroNumeroNfseKeyPress(Sender: TObject; var Key: Char);
    procedure edFiltroPlacaKeyPress(Sender: TObject; var Key: Char);
    procedure edFiltroVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure edFiltroClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure edPagamentoCodigoExit(Sender: TObject);
    procedure edPagamentoCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPercentoDescontoProdutoExit(Sender: TObject);
    procedure edPercentoDescontoServicoExit(Sender: TObject);
    procedure Sinttico1Click(Sender: TObject);
    procedure Analtico1Click(Sender: TObject);
    procedure Serviosporequipe011Click(Sender: TObject);
    procedure Serviosporequipe021Click(Sender: TObject);
    procedure Serviosporclassificao1Click(Sender: TObject);
    procedure ServiosporclassificaoGrfico1Click(Sender: TObject);
    procedure Extrato1Click(Sender: TObject);
    procedure ProdutosvendidoscomCusto1Click(Sender: TObject);
    procedure ProdutosvendidoscomcustodeNFe1Click(Sender: TObject);
    procedure LaudoTcnico2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LanarAntecipao1Click(Sender: TObject);
  private
    { Private declarations }
    function FiltraOrdem: Boolean;
    function FiltraOrdemCampo(xCampo: String): Boolean;
    function ConsultaOrdemServico: Boolean;
    function Auditoria(Cod_Ordem, Comando, Funcao, Historico: String): Boolean;    
    function ConsultaOrdemServicoPopulaCampos: Boolean;
    function LimpaFiltros: Boolean;
    function LimpaCamposCadastro: Boolean;
    function LimpaCamposPesquisaProduto: Boolean;
    function LimpaCamposItemServico: Boolean;
    function AtivaPainelConsulta(xParam: Boolean): Boolean;
    procedure PesquisaCodigoPagamento(codigo: string);
    function CancelLanOrd(CodPedido: string): Boolean;

    function EfetuaCalculoISS: Boolean;
    function RetemIss: Boolean;    
    procedure FiltraItens;
    function GravaOrdemServico: Boolean;
    function SalvaFiltrosArquivo: Boolean;
    function GravaValoresOrdemServico: Boolean;
    function AjustarAndamentoOrdem(StatusAndamento: string; EmPagamento: Boolean): Boolean;
    function FechaOrdemServico: Boolean;
    function ReabrirOrdemServico(codigo: Integer): Boolean;    
    function FechaOrdemServicoFinal: Boolean;
    function CarregaFiltrosArquivo: Boolean;
    procedure RefreshOrdem;
    Function RefiltraOrdem: Boolean;
    procedure ValidaOSDuplicada;
    function ValidaOSNumeroDuplicado: Boolean;
    function EfetuaDesconto(OrigemDesconto: string; TipoDesconto: string):       Boolean;
    function AplicaDescontos: Boolean;
    function AplicaDescontosPercentual: Boolean;
    function IncrementaNumeroOS: Boolean;
    function ValidaDadosInsereProdutoOrdemServico: Boolean;
    function ValidaDadosInsereProdutoDuplicadoLista: Boolean;
    function ValidaDadosInsereOrdemServico: Boolean;    
    function InsereDadosInsereOrdemServico: Boolean;
    procedure PesquisaCodigoEquipe(codigo: string);
    function InsereDadosProduto: Boolean;
    function InsereDadosServico: Boolean;
    function RemoveDadosProduto: Boolean;
    function ApagarOrdemVazia: Boolean;
    function FechaOrd(CODPEDIDO: string; DTFECH: string): Boolean;
    procedure FinalizarPopulaComponentes;
    procedure FinalizarVerificaCreditoCliente;
    procedure TravarPaines(oi: boolean);
    procedure PesquisaCodigoEquipamento(codigo: string; cliente: boolean);
    procedure EscreveLabelsPROD;
    function AbreFiscal: Boolean;
    function CancelaFechamentoOrdemServico: Boolean;
    function CancelaFechamento: Boolean;    
    function CancelaLancamentosCaixa(Codigo: Integer): Boolean;
    function CancelaLancamentosCR(Codigo: Integer): Boolean;
    function CancelaLancamentosBanco(Codigo: Integer): Boolean;
    Function BancoAberto(xVerificaCodigoCaixa: Integer): Boolean;            
    function CancelaFechamentoOrdemServicoAntiga: Boolean;
    procedure ChamaMetodoFechamento;
    procedure FechaOSTelaPagamentos;
    procedure FechaOSTelaFormaPagamentos;
    procedure Adiantamento;
    procedure ChamaAdiantamento;


  public
    { Public declarations }
  end;

var
  frmOrdemMecanica: TfrmOrdemMecanica;

  //Chaves estrangeiras
  pkCodigoOrdem, pkTmpCodigoOrdem, pkCodigoEstoque, pkCodigoCst, pkCodigoResponsavel: Integer;
  pkCodigoVeiculo, pkCodigoCliente, pkCodigoVendedor, pkCodigoPagamento: Integer;
  XCOD_CONTA, XCOD_CONTASERV: Integer;

  xNumeroOS: Integer;

  //Totalizadores
  xValorTotalOS, xValorTotalProduto, xValorTotalServico, xAliqComiss,
    XVLR_CREDITO_OS: Real;

  xValorISS, xAliquotaISS : Real;
  xRetemISS: Boolean;

  XLiberaDados, xStateOrdem, XCampo, xTipoPagamentoOS: string;

  xMsgOrdemFechada: string = 'Ordem de serviço fechada.';
  xMsgOrdemFechadaFinalizada: string =
    'Ordem de serviço fechada ou finalizada.';

  XTipoProc, XPESPROD: Smallint; //0 = procura normal 1=procura pelo nome
  xPesquisaDesc, xPesquisaCtrlInt, xPesquisaCodFabr, XLIBMARGEMSEG,
    xGeraFinanceiro: Boolean;

  XServicoOp,xPermiteSalvar, xPermiteConsultar, xPermiteFechar: Boolean;

  //Constantes de Status
  xStatusOrdemAberto: string = 'ABERTO';
  xStatusOrdemFechado: string = 'FECHADO';

  xStatusAndamentoIniciado: string = 'Iniciado';
  xStatusAndamentoParalizado: string = 'Paralizado';
  xStatusAndamentoTerminado: string = 'Terminado';
  xStatusAndamentoFinalizado: string = 'Finalizado';

implementation

uses
  UDmServ, UMenu, UMDO, DB, UDMEstoque, UDMMacs, Alxor32, UDMPessoa,
  UCadEquipamento, UCliente, UFuncionario, UDMFinanc, UFormPag, UProduto,
  Math, AlxMessage, USenha, JLLabel, UCadEquipe, UDmBanco, UDMCaixa,
  UDMConta, UConsPlncta, UFiscalOrdem, URelOrdemServMec, UDMEntrada,
  UDMSaida, UOrcamentoMac, UOrcamento3, UOrcamento, UMzrNfe, UDevolucao,
  UListaNfe, UMzrNFSe, UControllerRelOrdemVendaMec, UDMGEOGRAFIA,
  URelMecanica, URelEquipe, URelData, ULogoff1, UAntecipa;

{$R *.dfm}

function TfrmOrdemMecanica.CancelaFechamentoOrdemServicoAntiga: Boolean;
begin
   Result := True;

   try
       if DMCAIXA.VerifAbCaixa = false then
       begin
           Mensagem('   A T E N Ç Ã O   ', 'CAIXA FECHADO. A ORDEM DE SERVIÇO NÃO PODE SER CANCELADA.', '', 1, 1, false, 'I');
           Exit;
       end;

       if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', IntToStr(pkCodigoOrdem), '') = True then
       begin
           if (DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Multiplo') or (DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Pagamentos') then
           begin
               if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Pagamentos' then
               begin
                   IniciaCancelamento('ORDEM', pkCodigoOrdem);
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMENTRADA.IBT.CommitRetaining;
                   DMSAIDA.IBT.CommitRetaining;
                   if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', IntToStr(pkCodigoOrdem), '') = True then
                   begin
                       BtnConsultar.Click;
                   end;
               end
               else begin
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

                   if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', IntToStr(pkCodigoOrdem), '') = True then
                   begin
                       BtnConsultar.Click;
                   end;
               end;
           end
           else begin
               if CancelLanOrd(IntToStr(pkCodigoOrdem)) = True then
               begin //Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
                   DMServ.TOrd.EDIT;
                   DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
                   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                   DMServ.TOrd.Post;
               end;
               try
                   if FiltraTabela(DMFINANC.TCredito, 'CREDITO', 'COD_GERADOR', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, ' AND (TIPOGERADOR = ''LANCTRC'') ') then
                   begin
                       FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.WOrdem.FieldByName('COD_CLIENTE').AsString, '');
                       DMPESSOA.TALX.Close;
                       DMPESSOA.TALX.SQL.Clear;
                       DMPESSOA.TALX.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = PESSOA.VLRCREDITO - :VALOR WHERE (PESSOA.COD_PESSOA = :PESSOA) AND (PESSOA.VLRCREDITO >= :VALOR) ');
                       DMPESSOA.TALX.ParamByName('VALOR').AsCurrency :=
                       DMFINANC.TCredito.FieldByName('VALOR').AsCurrency;
                       DMPESSOA.TALX.ParamByName('PESSOA').AsInteger :=
                       DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger;
                       DMPESSOA.TALX.ExecSQL;

                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' DELETE FROM CREDITO WHERE (CREDITO.COD_CREDITO = :CODIGO) ');
                       MDO.Query.ParamByName('CODIGO').AsInteger :=
                       DMFINANC.TCredito.FieldByName('COD_CREDITO').AsInteger;
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
           end;
       end
       else begin
           Exit;
       end;
   Except
       Result := False;
   End;
End;

function TfrmOrdemMecanica.CancelaLancamentosCR(Codigo: Integer): Boolean;
Var
   xTmpTexto: String;
begin
   Result := True;

   try


       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select  vwparcr.cod_parcelacr, vwparcr.numparc, vwparcr.valor  from vwparcr ');
       MDO.QConsulta.SQL.Add(' left join ctareceber on vwparcr.cod_ctareceber = ctareceber.cod_ctareceber ');
       MDO.QConsulta.SQL.Add(' left join lancaixa on vwparcr.cod_parcelacr = lancaixa.cod_gerador ');
       MDO.QConsulta.SQL.Add(' where (ctareceber.cod_gerador = :CodigoOrdem) ');
       MDO.QConsulta.SQL.Add('     and (vwparcr.fech = ''S'') ');
       MDO.QConsulta.SQL.Add('     and (ctareceber.tipogerador = ''ORDEM'') ');
       MDO.QConsulta.SQL.Add('     and ((lancaixa.tipogerador = ''BXCTAR'') ');
       MDO.QConsulta.SQL.Add('      or (lancaixa.tipogerador = ''CTAR'') ');
       MDO.QConsulta.SQL.Add('      or (lancaixa.tipogerador = ''CTARJ'') ');
       MDO.QConsulta.SQL.Add('      or (lancaixa.tipogerador = ''CTARTRC'') ');
       MDO.QConsulta.SQL.Add('      or (lancaixa.tipogerador = ''FATCR'') ');
       MDO.QConsulta.SQL.Add('      or (lancaixa.tipogerador = ''FATURA'')) ');
       MDO.QConsulta.ParamByName('CodigoOrdem').AsInteger := Codigo;
       MDO.QConsulta.Open;

       If MDO.QConsulta.IsEmpty
       Then Begin
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add(' select vwparcr.cod_parcelacr, vwparcr.numparc, vwparcr.valor from vwparcr ');
           MDO.QConsulta.SQL.Add(' left join ctareceber on vwparcr.cod_ctareceber = ctareceber.cod_ctareceber ');
           MDO.QConsulta.SQL.Add(' where (ctareceber.cod_gerador = :CodigoOrdem) ');
           MDO.QConsulta.SQL.Add('     and (ctareceber.tipogerador = ''ORDEM'') ');
           MDO.QConsulta.ParamByName('CodigoOrdem').AsInteger := Codigo;
           MDO.QConsulta.Open;

           If not MDO.QConsulta.IsEmpty
           Then Begin
               MDO.QConsulta.First;
               While NOT MDO.QConsulta.Eof do
               Begin
                   MDO.Query.Close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.SQL.Add(' delete from parcelacr where parcelacr.cod_parcelacr = :codigo ');
                   MDO.Query.ParamByName('Codigo').AsInteger := MDO.QConsulta.FieldByName('cod_parcelacr').AsInteger;
                   MDO.Query.ExecSQL;

                   MDO.QConsulta.Next;
               End;
           End;
       end
       Else Begin
           MDO.QConsulta.First;
           While MDO.QConsulta.Eof do
           Begin
               xTmpTexto := MDO.QConsulta.FieldByName('numparc').AsString + ', ';

               MDO.QConsulta.Next;
           End;

           MessageDlg('Cancelamento de contas a receber abortado.'+#13+#10+'As parcelas de número '+ xTmpTexto +'já se encontram baixadas, você precisa cancelar a baixa manualmente para depois cancelar o fechamento.', mtWarning, [mbOK], 0);
           Result := False;
       End;
   Except
       Result := False
   End;
End;

function TfrmOrdemMecanica.CancelaLancamentosCaixa(Codigo: Integer): Boolean;
begin
   Result := True;

   try
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select lancaixa.cod_lanc, lancaixa.cod_abcaixa, abcaixa.cod_caixa from lancaixa ');
       MDO.QConsulta.SQL.Add(' left join abcaixa on lancaixa.cod_abcaixa = abcaixa.cod_abcaixa ');
       MDO.QConsulta.SQL.Add(' where (lancaixa.cod_gerador = :Codigo) ');
       MDO.QConsulta.SQL.Add('       and (lancaixa.tipogerador = ''ORDEM'')');
       MDO.QConsulta.ParamByName('Codigo').AsInteger := Codigo;
       MDO.QConsulta.Open;

       If Not MDO.QConsulta.IsEmpty
       Then Begin
           If (VerificaCaixaAberto(MDO.QConsulta.FieldByName('cod_caixa').AsInteger) = MDO.QConsulta.FieldByName('cod_abcaixa').AsInteger)
           Then Begin
               MDO.QConsulta.First;
               While not mdo.QConsulta.Eof do
               Begin
                   MDO.Query.close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.sql.Add(' delete from lancaixacta where lancaixacta.cod_lancaixa = :Codigo ');
                   MDO.Query.ParamByName('Codigo').AsInteger := MDO.QConsulta.FieldByName('cod_lanc').AsInteger;
                   MDO.Query.ExecSQL;
                   MDO.QConsulta.Next;
               End;

               MDO.Query.close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' delete from lancaixa ');
               MDO.Query.SQL.Add(' where (lancaixa.cod_gerador = :Codigo) ');
               MDO.Query.SQL.Add('   and (lancaixa.tipogerador = ' + #39 + 'ORDEM' + #39 + ') ');
               MDO.Query.ParamByName('Codigo').AsInteger := Codigo;
               MDO.Query.SQL.Text;
               MDO.Query.ExecSQL; 
           End
           Else Begin
               MessageDlg('Cancelamento de lançamentos em caixa a bortado.'+#13+#10+'O caixa utilizado se encontra fechado.', mtWarning, [mbOK], 0);
               Result := False;
           End;

       End;
   Except
       Result := False;
   End;
End;

Function TfrmOrdemMecanica.BancoAberto(xVerificaCodigoCaixa: Integer): Boolean;
Begin
  Try
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add(' SELECT * FROM abbanco WHERE ( abbanco.cod_abbanco = :cod_abbanco) AND (abbanco.fechado=' + #39 + 'N' + #39 + ')');
    DMCAIXA.TAlx.ParamByName('cod_abbanco').AsInteger := xVerificaCodigoCaixa;
    DMCAIXA.TAlx.Open;
    If NOT DMCAIXA.TAlx.IsEmpty
    Then
    Begin
      Result := True;
    End
    Else
    Begin
      Result := False;
    End;
  Except
    Result := False;
  End;
End;

function TfrmOrdemMecanica.CancelaLancamentosBanco(Codigo: Integer): Boolean;
begin
   Result := True;
   try
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' Select  movbanco.cod_movbanco, movbanco.cod_abbanco, abbanco.cod_ctacor  from movbanco ');
       MDO.QConsulta.SQL.Add(' left join abbanco on movbanco.cod_movbanco = movbanco.cod_movbanco ');
       MDO.QConsulta.SQL.Add(' where (movbanco.cod_gerador = :Codigo) ');
       MDO.QConsulta.SQL.Add(' and (movbanco.tipogerador = ''ORDEM'') ');
       MDO.QConsulta.ParamByName('Codigo').AsInteger := Codigo;
       MDO.QConsulta.Open;
       If Not MDO.QConsulta.IsEmpty
       Then Begin
           If BancoAberto(MDO.QConsulta.FieldByName('cod_abbanco').AsInteger) = True
           Then Begin
               MDO.Query.close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' delete from  movbanco ');
               MDO.Query.SQL.Add(' where (movbanco.cod_gerador = :Codigo) ');
               MDO.Query.SQL.Add('   and (movbanco.tipogerador = ' + #39 + 'ORDEM' + #39 + ') ');
               MDO.Query.ParamByName('Codigo').AsInteger := Codigo;
               MDO.Query.SQL.Text;
               MDO.Query.ExecSQL; 
           End
           Else Begin
               MessageDlg('Cancelamento de lançamentos em banco abortado.'+#13+#10+'O banco utilizado se encontra fechado.', mtWarning, [mbOK], 0);
               Result := False;
           End;
       End;
   Except
       Result := False;
   End;
End;

function TfrmOrdemMecanica.CancelaFechamento: Boolean;
var
  XCodPedidoTroca: string;
begin
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');
  FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');

  if ((DMServ.WOrdem.FieldByName('numfiscal').AsString <> '0') and
    (DMServ.WOrdem.FieldByName('numfiscal').AsString <> '')) or
    (DMServ.TFiscOrd.FieldByName('NFSE_STATUSGERAL').AsString = '1') then
  begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO',
      'Esta O.S. Passou por uma impressão fiscal e não pode mais ter seu fechamento cancelado.',
      '', 1, 1, False, 'a');
    Exit;
  end;

  if DMServ.WOrdem.FieldByName('STATUS').AsString <> 'FECHADO' then
  begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO',
      'A ORDEM DE SERVIÇO NÃO SE ENCONTRADA FECHADA!' + #13 +
      'PRESSIONE O BOTÃO CONSULTAR PARA ALTERAR AS INFORMAÇÕES.', '', 1, 1,
        False,
      'a');
    Exit;
  end;

  //EFETUA CONTROLE DE ACESSO
  if ControlAccess('CANCPEDFECH', 'M') = False then
    Exit;

    // verifica se o caixa estah aberto
    if DMCAIXA.VerifAbCaixa = false then
    begin
      Mensagem('   A T E N Ç Ã O   ',
        'CAIXA FECHADO. A ORDEM DE SERVIÇO NÃO PODE SER CANCELADA.', '', 1, 1,
        false, 'I');
      Exit;
    end;

    XCodPedidoTroca := DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;

    if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')
      = True then
    begin
      //REGISTRA COMANDO DO USUARIO
      Registra('ORDEM', 'C. FECH ORD',
        DMServ.WOrdem.FieldByName('DTABERT').AsString, 'Nº ' +
        DMServ.TOrd.FieldByName('NUMERO').AsString + '-' +
        DMServ.WOrdem.FieldByName('CLIENTE').AsString, 'Vlr:' +
        DMServ.TOrd.FieldByName('totord').AsString + '-' +
        DMServ.WOrdem.FieldByName('equipamento').AsString);
      if (DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Multiplo') or
        (DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Pagamentos') then
      begin
        if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Pagamentos' then
        begin
          IniciaCancelamento('ORDEM', StrToInt(XCodPedidoTroca));
          DMESTOQUE.TransacEstoque.CommitRetaining;
          DMENTRADA.IBT.CommitRetaining;
          DMSAIDA.IBT.CommitRetaining;
        end
        else
        begin
          DMServ.TOrd.EDIT;
          DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
          DMServ.TOrd.FieldByName('MONITOR').AsString := 'Terminado';          
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
        end;
      end
      else
      begin
        if CancelLanOrd(XCodPedidoTroca) = True then
        begin //Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
          DMServ.TOrd.EDIT;
          DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
          DMServ.TOrd.FieldByName('MONITOR').AsString := 'Terminado';          
          DMServ.TOrd.FieldByName('EDIT').AsString := '0';
          DMServ.TOrd.Post;
        end;

        try
          //Edmar - 18/02/2015 - Ao cancelar o fechamento, verifica se o cliente possuí um valor de crédito em seu nome
          if FiltraTabela(DMFINANC.TCredito, 'CREDITO', 'COD_GERADOR',
            DMServ.WOrdem.FieldByName('COD_ORDEM').AsString,
            ' AND (TIPOGERADOR = ''LANCTRC'') ') then
          begin
            //filtra a view do cliente para buscar o codigo da pessoa
            FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE',
              DMServ.WOrdem.FieldByName('COD_CLIENTE').AsString, '');

            //atualiza o credito da pessoa se o valor atribuido na pessoa for maior ou igual ao valor do credito real
            DMPESSOA.TALX.Close;
            DMPESSOA.TALX.SQL.Clear;
            DMPESSOA.TALX.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = PESSOA.VLRCREDITO - :VALOR WHERE (PESSOA.COD_PESSOA = :PESSOA) AND (PESSOA.VLRCREDITO >= :VALOR) ');
            DMPESSOA.TALX.ParamByName('VALOR').AsCurrency :=
              DMFINANC.TCredito.FieldByName('VALOR').AsCurrency;
            DMPESSOA.TALX.ParamByName('PESSOA').AsInteger :=
              DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger;
            DMPESSOA.TALX.ExecSQL;

            //Deleta o registro de crédito da ordem de serviço geradora
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add(' DELETE FROM CREDITO WHERE (CREDITO.COD_CREDITO = :CODIGO) ');
            MDO.Query.ParamByName('CODIGO').AsInteger :=
              DMFINANC.TCredito.FieldByName('COD_CREDITO').AsInteger;
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
      end;
    end
    else
    begin
      Exit;
    end;

   Result := True;

   try
       MDO.Transac.CommitRetaining;

   Except
       Result := False;
   End
End;

function TfrmOrdemMecanica.CancelaFechamentoOrdemServico: Boolean;
begin
   Result := True;

   try
       MDO.Transac.CommitRetaining;

       If CancelaLancamentosCaixa(pkCodigoOrdem) = False Then
           Result := False;

       If Result = True
       Then Begin
           If CancelaLancamentosBanco(pkCodigoOrdem) = False Then
               Result := False;
       End;
       If Result = True
       Then Begin
           If CancelaLancamentosCR(pkCodigoOrdem) = False Then
               Result := False;
       End;

       If Result = True
       Then Begin
           ReabrirOrdemServico(pkCodigoOrdem);
           MessageDlg('Cancelamento ocorreu com sucesso', mtWarning, [mbOK], 0);
       End
       Else Begin
           MessageDlg('Cancelamento falhou', mtWarning, [mbOK], 0);
       End;

       exit;
       
       if DMCAIXA.VerifAbCaixa = false then
       begin
           Mensagem('   A T E N Ç Ã O   ', 'CAIXA FECHADO. A ORDEM DE SERVIÇO NÃO PODE SER CANCELADA.', '', 1, 1, false, 'I');
           Exit;
       end;

       if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', IntToStr(pkCodigoOrdem), '') = True then
       begin
           if (DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Multiplo') or (DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Pagamentos') then
           begin
               if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Pagamentos' then
               begin
                   IniciaCancelamento('ORDEM', pkCodigoOrdem);
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMENTRADA.IBT.CommitRetaining;
                   DMSAIDA.IBT.CommitRetaining;
                   if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', IntToStr(pkCodigoOrdem), '') = True then
                   begin
                       BtnConsultar.Click;
                   end;
               end
               else begin
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

                   if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', IntToStr(pkCodigoOrdem), '') = True then
                   begin
                       BtnConsultar.Click;
                   end;
               end;
           end
           else begin
               if CancelLanOrd(IntToStr(pkCodigoOrdem)) = True then
               begin //Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
                   DMServ.TOrd.EDIT;
                   DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
                   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                   DMServ.TOrd.Post;
               end;
               try
                   if FiltraTabela(DMFINANC.TCredito, 'CREDITO', 'COD_GERADOR', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, ' AND (TIPOGERADOR = ''LANCTRC'') ') then
                   begin
                       FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.WOrdem.FieldByName('COD_CLIENTE').AsString, '');
                       DMPESSOA.TALX.Close;
                       DMPESSOA.TALX.SQL.Clear;
                       DMPESSOA.TALX.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = PESSOA.VLRCREDITO - :VALOR WHERE (PESSOA.COD_PESSOA = :PESSOA) AND (PESSOA.VLRCREDITO >= :VALOR) ');
                       DMPESSOA.TALX.ParamByName('VALOR').AsCurrency :=
                       DMFINANC.TCredito.FieldByName('VALOR').AsCurrency;
                       DMPESSOA.TALX.ParamByName('PESSOA').AsInteger :=
                       DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger;
                       DMPESSOA.TALX.ExecSQL;

                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' DELETE FROM CREDITO WHERE (CREDITO.COD_CREDITO = :CODIGO) ');
                       MDO.Query.ParamByName('CODIGO').AsInteger :=
                       DMFINANC.TCredito.FieldByName('COD_CREDITO').AsInteger;
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
           end;
       end
       else begin
           Exit;
       end;
   Except
       Result := False;
   End;
End;


function TfrmOrdemMecanica.CancelLanOrd(CodPedido: string): Boolean;
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
  FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG',
    DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '');

  if (DMServ.TOrd.FieldByName('TipoPag').AsString <> 'Multiplo') then
  begin
    FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '',
               '(COD_GERADOR = ' + #39 + DMServ.WOrdem.FieldByName('COD_ORDEM').AsString
               + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')');

    XCampo := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

    //seleciona cheques para serem apagados
    DMCAIXA.TAlx.close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('select * from chequerec');
    DMCAIXA.TAlx.SQL.Add('where chequerec.cod_movbanco = :CODMOV');
    DMCAIXA.TAlx.ParamByName('CODMOV').AsString :=
      DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
    DMCAIXA.TAlx.Open;

    if not DMCAIXA.TAlx.IsEmpty then
    begin
      xcod_chequerec := DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
      //seleciona lançamentos de caixa para serem deletados
      DMCAIXA.TLanCaixa.Close;
      DMCAIXA.TLanCaixa.SQL.Clear;
      DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
      DMCAIXA.TLanCaixa.SQL.Add('where ((lancaixa.tipogerador=' + #39 + 'LCHR' +
        #39 + ') or (lancaixa.tipogerador=' + #39 + 'DCHR' + #39 +
        ') or (lancaixa.tipogerador=' + #39 + 'MCHR' + #39 +
        ') AND (lancaixa.cod_gerador =:CODLANCA))');
      DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString :=
        DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
      DMCAIXA.TLanCaixa.Open;
      DMCAIXA.TLanCaixa.First;

      //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
      if (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <>
        FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO',
        'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 +
        DMServ.WOrdem.FieldByname('COD_ORDEM').AsString + #39 +
        ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = false) then
      begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
        LanCaixa(-1, DateToStr(Date()),
          DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger,
          'Cancel. fech. Ped. ' + DMServ.TOrd.FieldByName('NUMERO').AsString +
          ' Cli. ' + DMServ.WOrdem.FieldByName('CLIENTE').AsString,
          DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV',
          StrToInt(CodPedido), 'Carteira', 'S', 'EST' +
          DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');

      end;

      //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
      if DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString =
        FMenu.LABCAIXA.Caption then
      begin
        while not DMCAIXA.TLanCaixa.Eof do
        begin
          DMCAIXA.TLanCaixa.Delete;
          DMCAIXA.TLanCaixa.ApplyUpdates;

        end;
      end;

      //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
      if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '',
        '(COD_GERADOR = ' + #39 + xcod_chequerec + #39 + ') AND (TIPOGERADOR = '
          +
        #39 + 'MCHR' + #39 + ')') = true then
      begin
        DMBANCO.TMovBanco.Delete;
        DMBANCO.TMovBanco.ApplyUpdates;
      end;

      //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
      if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '',
        '(COD_GERADOR = ' + #39 + DMServ.TOrd.FieldByname('COD_ORDEM').AsString
          +
        #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')') = true then
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
      DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR=' +
        #39 + 'ORDSERV' + #39 + ') AND (COD_GERADOR=:CODPEDIDO)');
      DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsString := CodPedido;
      DMCAIXA.TLanCaixa.Open;
      DMCAIXA.TLanCaixa.First;
      if not DMCAIXA.TLanCaixa.IsEmpty then
      begin //se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
        while not DMCAIXA.TLanCaixa.Eof do
        begin
          if LanCaixa(-1, DateToStr(Date()),
            DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger,
              'Cancel. O.S. '
            + DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli. ' +
            DMServ.WOrdem.FieldByName('CLIENTE').AsString,
            DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS',
            StrToInt(CodPedido), 'Carteira', 'S', 'EST' +
            DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1') = True then
            MDO.Transac.CommitRetaining
              //DMCAIXA.IBT.CommitRetaining
          else
            Result := False;
          DMCAIXA.TLanCaixa.Next;
        end;
      end;

      if (DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Cartão') or
        (DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Pix') then
      begin
        if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '',
          '(COD_GERADOR = ' + #39 +
            DMServ.WOrdem.FieldByname('COD_ORDEM').AsString
          + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTPROD' + #39 + ')') = true
            then
        begin
          DMBANCO.TMovBanco.Delete;
          DMBANCO.TMovBanco.ApplyUpdates;
        end;
        if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '',
          '(COD_GERADOR = ' + #39 +
            DMServ.WOrdem.FieldByname('COD_ORDEM').AsString
          + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTSERV' + #39 + ')') = true
            then
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
      if FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '',
        ' (TIPOGERADOR = ' + #39 + 'ORD' + #39 + ') AND (COD_GERADOR=' +
          CodPedido
        + ')') = True then
      begin //se foi encontrado alguma conta
        //FILTRA PARCELAS
        if FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER',
          DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '') = True then
        begin //se foi encontrado alguma conta
          //PARA CADA PARCELA VERIFICA SE ESTA FECHADA
          DMCONTA.TParcCR.First;
          while not DMCONTA.TParcCR.Eof do
          begin
            //deleta lançamentos de caixa caso seja forma de pagamento carteira.
            if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Carteira' then
            begin
              FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '',
                '(lancaixa.tipogerador=' + #39 + 'CTAR' + #39 +
                ') AND (lancaixa.cod_gerador =' + #39 +
                DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39')');
              while not DMCAIXA.TLanCaixa.Eof do
              begin
                if LanCaixa(-1, DateToStr(Date()),
                  DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger,
                  'Cancel. O.S. ' + DMServ.TOrd.FieldByName('NUMERO').AsString +
                  ' Cli. ' + DMServ.WOrdem.FieldByName('CLIENTE').AsString,
                  DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS',
                  StrToInt(CodPedido), 'Carteira', 'S', 'EST' +
                  DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1') = True
                    then
                  MDO.Transac.CommitRetaining
                    //DMCAIXA.IBT.CommitRetaining
                else
                  Result := False;
                DMCAIXA.TLanCaixa.Next;
              end;
            end;

            //filtra movimentação bancaria da parcela em questão
            FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '',
              '(COD_GERADOR = ' + #39 +
              IntToStr(DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsInteger) +
              #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39')');
            //filtra cheque da parcela
            FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', '',
              '(COD_MOVBANCO = ' + #39 +
              IntToStr(DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger)
                +
              #39 + ')');

            //variável utilizada para apos apagar a movimentação bancaria sejam apagados os cheques ligados as parcelas
            XCampo := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

            //filtra os lançamentos de caixa ligados a parcela
            FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '',
              '(lancaixa.tipogerador=' + #39 + 'LCHR' + #39 +
              ') or (lancaixa.tipogerador=' + #39 + 'DCHR' + #39 +
              ') or (lancaixa.tipogerador=' + #39 + 'MCHR' + #39 +
              ') AND (lancaixa.cod_gerador =' + #39 +
              IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger)
                +
              #39')');

            if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '',
              ' (TIPOGERADOR=' + #39 + 'CTARCH' + #39 + ') AND (COD_GERADOR=' +
              DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString + ')') = True
                then
            begin
              //se o codigo de abertura do caixa atual for diferente do codigo de lançamento de caixa da ordem e este cheque foi movimentado em caixa faz o estorno
              if (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <>
                FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,
                'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 +
                DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 +
                ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = false)
                  then
              begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
                LanCaixa(-1, DateToStr(Date()),
                  DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger,
                  'Cancel. fech. Ped. ' +
                  DMSAIDA.TPedV.FieldByName('NUMPED').AsString + ' Cli. ' +
                  DMSAIDA.WPedV.FieldByName('NOMECLI').AsString,
                  DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV',
                  StrToInt(CodPedido), 'Carteira', 'S', 'EST' +
                  DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1');
              end;
              DMCAIXA.IBT.CommitRetaining;
              MDO.Transac.CommitRetaining;

              DMCAIXA.TLanCaixa.First;

              while not DMCAIXA.TLanCaixa.Eof do
                //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
                if (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString =
                  FMenu.LABCAIXA.Caption) and
                  (DMCAIXA.TLanCaixa.FieldByName('COD_GERADOR').AsString =
                  DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString) then
                begin
                  if ((DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString =
                    'LCHR') or
                    (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString =
                    'MCHR') or
                    (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString =
                    'DCHR')) then
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
            if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '',
              '(COD_GERADOR = ' + #39 +
              IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger)
              + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = true
                then
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
            if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '',
              '(COD_GERADOR = ' + #39 +
              DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 +
              ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')') = true then
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
    DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador=' + #39 + 'ORDEMENT'
      + #39 + ') AND (lancaixa.cod_gerador =:CODLANCA)');
    DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString :=
      DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
    DMCAIXA.TLanCaixa.Open;
    DMCAIXA.TLanCaixa.First;

    //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
    if DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <>
      FMenu.LABCAIXA.Caption = false then
    begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
      LanCaixa(-1, DateToStr(Date()),
        DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger,
        'Cancel. fech. Ped. ' + DMServ.TOrd.FieldByName('NUMERO').AsString +
        ' Cli. ' + DMServ.WOrdem.FieldByName('CLIENTE').AsString,
        DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMENTEST',
        StrToInt(CodPedido), 'Carteira', 'S', 'EST' +
        DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
    end;

    //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
    if DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString =
      FMenu.LABCAIXA.Caption then
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
    DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador=' + #39 + 'ORDEMTRO'
      + #39 + ') AND (lancaixa.cod_gerador =:CODLANCA)');
    DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString :=
      DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
    DMCAIXA.TLanCaixa.Open;
    DMCAIXA.TLanCaixa.First;

    //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
    if DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <>
      FMenu.LABCAIXA.Caption = false then
    begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
      LanCaixa(-1, DateToStr(Date()),
        DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger,
        'Cancel. fech. Ped. ' + DMServ.TOrd.FieldByName('NUMERO').AsString +
        ' Cli. ' + DMServ.WOrdem.FieldByName('CLIENTE').AsString,
        DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMTROEST',
        StrToInt(CodPedido), 'Carteira', 'S', 'EST' +
        DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
    end;

    //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
    if DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString =
      FMenu.LABCAIXA.Caption then
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

function TfrmOrdemMecanica.AbreFiscal: Boolean;
begin
   Result := True;
   try
       if FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', IntToStr(pkTmpCodigoOrdem), '') = True then
           AbrirForm(TFFiscalOrdem, FFiscalOrdem, 0)
       Else
           MessageDlg('Os dados não foram localizados.', mtWarning, [mbOK], 0);
   except
       Result := False;
   end
end;

procedure TfrmOrdemMecanica.EscreveLabelsPROD;
begin
  if FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO',
    DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '') = False then
  begin
    MessageDlg('Tabela Subproduto não foi localizada. Solicite suporte técnico.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE',
    DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '') = False then
  begin
    MessageDlg('Tabela Estoque não foi localizada. Solicite suporte técnico.',
      mtWarning, [mbOK], 0);
    Exit;
  end;
  if FiltraTabela(DMEstoque.TCST, 'CST', 'COD_CST',
    DMEstoque.TSubProd.FieldByName('COD_CST').AsString, '') = false then
  begin
    MessageDlg('Tabela CST não foi localizada. Solicite suporte técnico.',
      mtWarning, [mbOK], 0);
    Exit;
  end;

  if DMMACS.TLoja.FieldByName('tipovenda').AsString = '0' then
  begin
    if (edInsereProdutoQuantidade.ValueNumeric >=
      DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) and
      (DMEstoque.TSubProd.FieldByName('QTDATC').AsString <> '') then
    begin //caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
       edInsereProdutoValorUnitario.ValueNumeric := DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency;
    end
    else
    begin
       edInsereProdutoValorUnitario.ValueNumeric := DMEstoque.TEstoque.FieldByName('VENDVARV').AsCurrency;
    end;
  end
  else
  begin
    if (edInsereProdutoQuantidade.ValueNumeric >=
      DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) and
      (DMEstoque.TSubProd.FieldByName('QTDATC').AsString <> '') then
    begin //caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
      edInsereProdutoValorUnitario.ValueNumeric :=
        DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency;
    end
    else
    begin
      edInsereProdutoValorUnitario.ValueNumeric :=
        DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency;
    end;
  end;

   edInsereProdutoCusto.ValueNumeric := DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency;  
  //Passa os valores do produto selecionado para as labels
  lInsereProdutoSelecionado.Caption := 'Cód.: ' +
    DMEstoque.TSubProd.FieldByName('CONTRINT').AsString;

  lInsereProdutoSelecionado.Caption := lInsereProdutoSelecionado.Caption + ' | '
    + DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
  if DMEstoque.TSubProd.FieldByName('Marca').asstring <> '' then
    lInsereProdutoSelecionado.Caption := lInsereProdutoSelecionado.Caption +
      ' | Marca: ' + dMEstoque.TSubProd.FieldByName('Marca').asstring;

  lInsereProdutoSelecionado.Caption := lInsereProdutoSelecionado.Caption +
    ' | Estoque: ' + FormatFloat('#,###0.000',
    DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency);
  lInsereProdutoSelecionado.Caption := lInsereProdutoSelecionado.Caption +
    ' | Cst/Csosn: ' + DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;

  pkCodigoCst := DMEstoque.TSubProd.FieldByName('COD_CST').AsInteger;
  pkCodigoEstoque := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;

   If pInsereProdutoValorCusto.Visible = True Then
       edInsereProdutoCusto.SetFocus
   Else
       edInsereProdutoQuantidade.SetFocus;
end;

function TfrmOrdemMecanica.RemoveDadosProduto: Boolean;
begin
  try
    Result := True;

  except

    Result := False;
  end;
end;

function TfrmOrdemMecanica.InsereDadosProduto: Boolean;
begin
  try
    Result := True;

    CalcLuc(edInsereProdutoValorTotal.ValueNumeric, 0,
      edInsereProdutoQuantidade.ValueNumeric);

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' INSERT INTO ITPRODORD (COD_ESTOQUE, COD_ORDEM, QTD, COD_CST,  ');
    MDO.Query.SQL.Add('       VLRUNIT, TOTAL, DATA, COD_FUNCIONARIO, QTD4CASAS, ');
    MDO.Query.SQL.Add('       COEFDIV, valcusto, VALCOMP, LUCMOE, LUCPER, VALREP, ');
    MDO.Query.SQL.Add('       VLRVENDBD, LUCREL, OPERACAO, VALORCUSTOUNITARIONOTAFISCAL) ');
    MDO.Query.SQL.Add(' VALUES (:COD_ESTOQUE, :COD_ORDEM, :QTD, :COD_CST,  ');
    MDO.Query.SQL.Add('       :VLRUNIT, :TOTAL, :DATA, :COD_FUNCIONARIO, ');
    MDO.Query.SQL.Add('       :QTD4CASAS, :COEFDIV, :valcusto, :VALCOMP, :LUCMOE, :LUCPER, :VALREP, ');
    MDO.Query.SQL.Add('       :VLRVENDBD, :LUCREL, :OPERACAO, :VALORCUSTOUNITARIONOTAFISCAL) ');

    MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := pkCodigoEstoque;
    MDO.Query.ParamByName('COD_ORDEM').AsInteger := pkCodigoOrdem;
    MDO.Query.ParamByName('COD_CST').AsInteger := pkCodigoCst;
    MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := pkCodigoVendedor;

    MDO.Query.ParamByName('DATA').AsDate := Date();
    MDO.Query.ParamByName('OPERACAO').AsString := 'VND';

    MDO.Query.ParamByName('QTD').AsCurrency :=
      edInsereProdutoQuantidade.ValueNumeric;
    MDO.Query.ParamByName('VLRUNIT').AsCurrency :=
      edInsereProdutoValorUnitario.ValueNumeric;
    MDO.Query.ParamByName('TOTAL').AsCurrency :=
      edInsereProdutoValorTotal.ValueNumeric;
    MDO.Query.ParamByName('VALCUSTO').AsCurrency :=
      DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
    MDO.Query.ParamByName('QTD4CASAS').AsCurrency :=
      edInsereProdutoQuantidade.ValueNumeric;
    MDO.Query.ParamByName('COEFDIV').AsCurrency :=
      DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
    MDO.Query.ParamByName('VALCOMP').AsCurrency := edInsereProdutoCusto.ValueNumeric;
    MDO.Query.ParamByName('LUCMOE').AsCurrency := AlxLUCMOE;
    MDO.Query.ParamByName('LUCPER').AsCurrency := AlxLUCPER;
    MDO.Query.ParamByName('VALREP').AsCurrency :=
      DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
    MDO.Query.ParamByName('VLRVENDBD').AsCurrency :=
      DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;
    MDO.Query.ParamByName('LUCREL').AsCurrency := ALXLUCREAL;

    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;

    DMESTOQUE.CalcCustMed(pkCodigoEstoque,
                           'S', edInsereProdutoQuantidade.ValueNumeric,
                           edInsereProdutoQuantidade.ValueNumeric *
                           edInsereProdutoValorUnitario.ValueNumeric);

    Auditoria(IntToStr(pkCodigoOrdem), 'Insere Produto OS', 'Tela de cadastro',
              'Número: ' + edNumero.Text +
              '; Cliente: ' + edCliente.Text +
              '; Produto: ' + lInsereProdutoSelecionado.Caption +
              '; Quantidade: ' + edInsereProdutoQuantidade.Text +
              '; Vlr. Unitário: ' + FormatFloat('0.00',  edInsereProdutoValorUnitario.ValueNumeric)  +
              '; Vlr. Total: ' + FormatFloat('0.00', edInsereProdutoValorTotal.ValueNumeric));

    LimpaCamposPesquisaProduto;
    If (pConsulta.Visible = true ) and (pcItens.ActivePageIndex = 0) Then
       edInsereProdutoDescricao.SetFocus;
  except

    MDO.Transac.RollbackRetaining;
    Result := False;
  end;
end;

function TfrmOrdemMecanica.InsereDadosServico: Boolean;
begin
  try
    Result := True;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' INSERT INTO DESPADIC (COD_GERADOR, GERADOR, ');
    MDO.Query.SQL.Add('        DESPESA, QTD, VLRREAL, VLRFINAL, VLRTOTFIN, ');
    MDO.Query.SQL.Add('        COD_EQUIPE, UNIDADE, COD_FUNCIONARIO) ');
    MDO.Query.SQL.Add(' VALUES ( ');
    MDO.Query.SQL.Add('        :COD_GERADOR, :GERADOR, ');
    MDO.Query.SQL.Add('        :DESPESA, :QTD, :VLRREAL, :VLRFINAL, :VLRTOTFIN, ');
    MDO.Query.SQL.Add('        :COD_EQUIPE, :UNIDADE, :COD_FUNCIONARIO) ');

    MDO.Query.ParamByName('COD_GERADOR').AsInteger := pkCodigoOrdem;
    MDO.Query.ParamByName('COD_EQUIPE').AsInteger := pkCodigoResponsavel;
    MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := FMenu.XCOD_USUARIO;
    MDO.Query.ParamByName('GERADOR').AsString := 'ORDEM';
    MDO.Query.ParamByName('DESPESA').AsString := edInsereServicoDescricao.Text;
    MDO.Query.ParamByName('QTD').AsCurrency := edInsereServicoQuantidade.ValueNumeric;
    MDO.Query.ParamByName('VLRFINAL').AsCurrency := edInsereServicoValorUnitario.ValueNumeric;
    MDO.Query.ParamByName('VLRTOTFIN').AsCurrency := edInsereServicoValorTotal.ValueNumeric;
    if (cbTerceiros.Checked = true)
    Then Begin
       MDO.Query.ParamByName('UNIDADE').AsString := '1';
       MDO.Query.ParamByName('VLRREAL').AsCurrency := edInsereServicoCustoTerceirizacao.ValueNumeric;
    End
    else Begin
       MDO.Query.ParamByName('VLRREAL').AsCurrency := 0;
       MDO.Query.ParamByName('UNIDADE').AsString := '0';
    End;

    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;

    Auditoria(IntToStr(pkCodigoOrdem), 'Insere Serviço OS', 'Tela de cadastro',
              'Número: ' + edNumero.Text +
              '; Cliente: ' + edCliente.Text +
              '; Serviço: ' + edInsereServicoDescricao.Text +
              '; Responsável: ' + lInsereServicoResponsavel.Caption +
              '; Quantidade: ' + edInsereServicoQuantidade.Text +
              '; Vlr. Unitário: ' + FormatFloat('0.00',  edInsereServicoValorUnitario.ValueNumeric)  +
              '; Vlr. Total: ' + FormatFloat('0.00', edInsereServicoValorTotal.ValueNumeric));

    LimpaCamposItemServico;
    If (pConsulta.Visible = true ) and (pcItens.ActivePageIndex = 1) Then
       edInsereServicoDescricao.SetFocus;
  except
    MDO.Transac.RollbackRetaining;
    Result := False;
  end;
end;

function TfrmOrdemMecanica.InsereDadosInsereOrdemServico: Boolean;
var
  xtmpPkOrdem: Integer;
begin
  try
    Result := True;

    MDO.Transac.CommitRetaining;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('  select gen_id(gen_ordem_id, 0) as codigo from rdb$database ');
    MDO.Query.Open;
    xtmpPkOrdem := MDO.Query.FieldByName('CODIGO').AsInteger + 1;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' INSERT INTO ORDEM (COD_CLIENTE, COD_EQUIPAMENTO, ');
    MDO.Query.SQL.Add('        COD_VENDEDOR, DTABERT, HRABERT, COD_FUNCIONARIO, ');
    MDO.Query.SQL.Add('        OBSERVACAO, PROBREC, SOLUCAO, STATUS, NUMERO, DESCONTO, ');
    MDO.Query.SQL.Add('        COD_USUARIO, TOTPROD, TOTSERV, TOTORD, COD_LOJA, ');
    MDO.Query.SQL.Add('        COD_FORMPAG, TOTDESP, DESCPROD, ');
    MDO.Query.SQL.Add('        DESCSERV, MONITOR, FISCO, NUMFISCAL, TIPOPAG, ');
    MDO.Query.SQL.Add('        BOX, TOTKM, NUMFISCALAUX, OBSORDEM, PLACA2, PLACA3, ');
    MDO.Query.SQL.Add('        NUMFISCALNFSE, STATUSNFSE, NOMECLI, CPFCNPJ, GERANFSE) ');
    MDO.Query.SQL.Add(' VALUES ');
    MDO.Query.SQL.Add('        (:COD_CLIENTE, :COD_EQUIPAMENTO, ');
    MDO.Query.SQL.Add('        :COD_VENDEDOR, :DTABERT, :HRABERT, :COD_FUNCIONARIO, ');
    MDO.Query.SQL.Add('        :OBSERVACAO, :PROBREC, :SOLUCAO, :STATUS, :NUMERO, :DESCONTO, ');
    MDO.Query.SQL.Add('        :COD_USUARIO, :TOTPROD, :TOTSERV, :TOTORD, :COD_LOJA, ');
    MDO.Query.SQL.Add('        :COD_FORMPAG, :TOTDESP, :DESCPROD, ');
    MDO.Query.SQL.Add('        :DESCSERV, :MONITOR, :FISCO, :NUMFISCAL, :TIPOPAG, ');
    MDO.Query.SQL.Add('        :BOX, :TOTKM, :NUMFISCALAUX, :OBSORDEM, :PLACA2, :PLACA3, ');
    MDO.Query.SQL.Add('        :NUMFISCALNFSE, :STATUSNFSE, :NOMECLI, :CPFCNPJ, :GERANFSE) ');

    MDO.Query.ParamByName('COD_CLIENTE').AsInteger := pkCodigoCliente;
    MDO.Query.ParamByName('COD_EQUIPAMENTO').AsInteger := pkCodigoVeiculo;
    MDO.Query.ParamByName('COD_VENDEDOR').AsInteger := pkCodigoVendedor;
    MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
    MDO.Query.ParamByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
    MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := pkCodigoVendedor;
    MDO.Query.ParamByName('COD_FORMPAG').AsInteger := -1;

    MDO.Query.ParamByName('DTABERT').AsDate := Date();
    MDO.Query.ParamByName('HRABERT').AsTime := Time();
    MDO.Query.ParamByName('STATUS').AsString := xStatusOrdemAberto;
    MDO.Query.ParamByName('MONITOR').AsString := xStatusAndamentoIniciado;
    MDO.Query.ParamByName('NUMERO').AsInteger := xNumeroOS;
    edNumero.Text := IntToStr(xNumeroOS);
    MDO.Query.ParamByName('TIPOPAG').AsString := 'Carteira';
    MDO.Query.ParamByName('TOTKM').AsString := edKmAtual.Text;
    MDO.Query.ParamByName('OBSORDEM').AsString := edObservacao.Text;
    MDO.Query.ParamByName('PLACA2').AsString := edPlaca02.Text;
    MDO.Query.ParamByName('PLACA3').AsString := edPlaca03.Text;
    MDO.Query.ParamByName('NUMFISCALNFSE').AsString := '';
    MDO.Query.ParamByName('OBSERVACAO').AsString := edDadosAdicionais.Text;
    MDO.Query.ParamByName('PROBREC').AsString := '';
    MDO.Query.ParamByName('SOLUCAO').AsString := '';
    MDO.Query.ParamByName('BOX').AsString := '';
    MDO.Query.ParamByName('NUMFISCAL').AsString := '';
    MDO.Query.ParamByName('FISCO').AsString := '';

    MDO.Query.ParamByName('NOMECLI').AsString := edCliente.Text;
    MDO.Query.ParamByName('DESCONTO').AsCurrency :=
      edValorDescontoOS.ValueNumeric;
    MDO.Query.ParamByName('TOTPROD').AsCurrency := xValorTotalProduto;
    MDO.Query.ParamByName('TOTSERV').AsCurrency := xValorTotalServico;
    MDO.Query.ParamByName('TOTORD').AsCurrency := edValorTotalOS.ValueNumeric;

    MDO.Query.ParamByName('TOTDESP').AsCurrency := 0;
    MDO.Query.ParamByName('DESCPROD').AsCurrency :=
      edValorDescontoProduto.ValueNumeric;
    MDO.Query.ParamByName('DESCSERV').AsCurrency :=
      edValorDescontoServico.ValueNumeric;

    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;

    pkCodigoOrdem := xtmpPkOrdem;

  except
    MDO.Transac.RollbackRetaining;
    Result := False;
  end;
end;

function TfrmOrdemMecanica.ValidaDadosInsereOrdemServico: Boolean;
begin
  try
    Result := True;
    if pkCodigoCliente <= 0 then
    begin
      MessageDlg('Informe o Cliente para esta Ordem de Serviço', mtWarning,
        [mbOK], 0);
      Result := False;
    end;
    If DMMACS.TLoja.FieldByName('DESATIVASITE').AsString <> '1'
    Then Begin
       if (pkCodigoVeiculo <= 0) and (CBVENDABALCAO.Checked=False) then
       begin
           
           MessageDlg('Veículo não informado para esta Ordem de Serviço', mtWarning, [mbOK], 0);
           Result := False;
       End;
    end;    
    if (DMMACS.TLoja.FieldByName('USARVENDEDOROSMEC').AsString = '1')
    Then Begin
       if pkCodigoVendedor <= 0 then
       begin
           MessageDlg('Vendedor não informado para esta Ordem de Serviço', mtWarning, [mbOK], 0);
           Result := False;
       end;
    End;

    if (xTipoPagamentoOS <> 'TELA PAGAMENTOS')
    Then Begin
       if pkCodigoPagamento <= 0 then
       begin
           MessageDlg('Pagamento não informado para esta Ordem de Serviço', mtWarning, [mbOK], 0);
           Result := False;
       end;
    End;    
  except
    Result := False;
  end;
end;

function TfrmOrdemMecanica.ValidaDadosInsereProdutoDuplicadoLista: Boolean;
Var
   xQuantidade: Real;
begin
   try
       Result := False;
       if (DMMACS.TLoja.FieldByName('controlprodlista').AsString = '1') or (DMMACS.TLoja.FieldByName('controlprodlista').AsString = null) then
       begin
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_estoque ');
           MDO.QConsulta.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
           MDO.QConsulta.SQL.Add('Where (itprodord.cod_ordem = :CODORDEM) AND (itprodord.cod_estoque=:CODESTOQUE) ');
           MDO.QConsulta.ParamByName('CODORDEM').AsInteger   := pkCodigoOrdem;
           MDO.QConsulta.ParamByName('CODESTOQUE').AsInteger := pkCodigoEstoque;
           MDO.QConsulta.Open;
           if not MDO.QConsulta.IsEmpty then
           begin
               if Mensagem('A T E N Ç Ã O !',
                   'O sistema encontrou o mesmo produto já lançado a lista. Deseja alterar este produto já lançado?', '', 2, 3, False, 'c') = 2
               then begin
                   xQuantidade := edInsereProdutoQuantidade.ValueNumeric;
                   MDO.Query1.Close;
                   MDO.Query1.SQL.Clear;
                   MDO.Query1.SQL.Add(' Select itprodord.cod_itprodord, unidade.sigla_unid as UNIDADE, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
                   MDO.Query1.SQL.Add(' itprodord.desconto, itprodord.data, itprodord.VALCOMP, itprodord.cod_funcionario, itprodord.vlrunit, subproduto.contrint, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, itprodord.operacao,');
                   MDO.Query1.SQL.Add(' itprodord.baseicms, itprodord.vlricms, itprodord.aliqicms, cst.cod_sit_trib, itprodord.descnf as DESCONTONF, subproduto.ncm, itprodord.VALCOMP ');
                   MDO.Query1.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
                   MDO.Query1.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
                   MDO.Query1.SQL.Add(' left join cst ON itprodord.cod_cst = cst.cod_cst ');
                   MDO.Query1.SQL.Add(' Left Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
                   MDO.Query1.SQL.Add(' Where itprodord.cod_itprodord = :CODORDEM ');
                   MDO.Query1.ParamByName('CODORDEM').AsInteger := MDO.QConsulta.FieldByName('cod_itprodord').AsInteger;
                   MDO.Query1.SQL.Add('order by itprodord.cod_itprodord desc');
                   MDO.Query1.SQL.Text;
                   MDO.Query1.Open;
                   If Not MDO.Query1.IsEmpty
                   Then Begin
                       Result := True;
                       btnRemoveProduto.Click;
                       edInsereProdutoQuantidade.ValueNumeric := edInsereProdutoQuantidade.ValueNumeric + xQuantidade;
                   End
                   Else Begin
                       FiltraItens;
                   End;
               End;
           End;
       End;
   Except
       Result := false;
   end;
End;

function TfrmOrdemMecanica.ValidaDadosInsereProdutoOrdemServico: Boolean;
begin
   try
       Result := True;

       If ValidaDadosInsereOrdemServico = False Then
           Result := False;

       if pkCodigoEstoque < 0 then
       begin
           MessageDlg('O Produto não foi devidamente selecionado, refaça a pesquisa.', mtWarning, [mbOK], 0);
           edInsereProdutoDescricao.SetFocus;
           Result := False;
       end;
       if edInsereProdutoQuantidade.ValueNumeric <= 0 then
       begin
           MessageDlg('O Produto não pode ser inserido com a quantidade informada.', mtWarning, [mbOK], 0);
           edInsereProdutoQuantidade.SetFocus;
           Result := False;
       end;

       if edInsereProdutoValorUnitario.ValueNumeric <= 0 then
       begin
           MessageDlg('O Produto não pode ser inserido com o valor unitário informado.', mtWarning, [mbOK], 0);
           edInsereProdutoValorUnitario.SetFocus;
           Result := False;
       end;

       if edInsereProdutoValorTotal.ValueNumeric <= 0 then
       begin
           MessageDlg('O Produto não pode ser inserido com o valor total informado.', mtWarning, [mbOK], 0);
           edInsereProdutoValorTotal.SetFocus;
           Result := False;
       end;

       if DMESTOQUE.TCST.FieldByName('VENDA').AsString <> '1' then
       begin
           MessageDlg('O Produto não pode ser inserido com o CST/CSOSN informado. Ele não é se venda', mtWarning, [mbOK], 0);
           Result := False;
       end;
   except
       Result := False;
   end;
end;

function TfrmOrdemMecanica.IncrementaNumeroOS: Boolean;
var xFlag: Integer;
begin
  try
    Result := True;
    MDO.Transac.CommitRetaining;
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' select empresa.prox_os from empresa ');
    MDO.Query.Open;
    if MDO.Query.FieldByName('prox_os').AsInteger <= 0 then
      xNumeroOS := 1
    else
      xNumeroOS := MDO.Query.FieldByName('prox_os').AsInteger + 1;

    xflag := 1;
    While xFlag = 1 do
    Begin
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('  select ordem.numero from ordem where ordem.numero = :Numero ');
       MDO.QConsulta.ParamByName('Numero').AsString := IntToStr(xNumeroOS);
       MDO.QConsulta.Open;
       If MDO.QConsulta.IsEmpty Then
           xFlag:=0
       Else
           xNumeroOS := xNumeroOS + 1;
    End;

    edNumero.ValueInteger := xNumeroOS;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' Update empresa set empresa.prox_os = :NumeroOS ');
    MDO.Query.ParamByName('NumeroOS').AsInteger := xNumeroOS;
    MDO.Query.Open;

    MDO.Transac.CommitRetaining;
  except
    Result := False;
    MDO.Transac.RollbackRetaining;
  end;
end;

//pesquisa codigo equipamento
procedure TfrmOrdemMecanica.PesquisaCodigoEquipamento(codigo: string; cliente:
  boolean);
var
  Tmp: Boolean;
begin
  // letras maiusculas
  codigo := Trim(UpperCase(StringReplace(StringReplace(codigo, '-', '',
    [rfReplaceAll]), ' ', '', [rfReplaceAll])));
  if codigo <> '' then
  begin
    DMESTOQUE.Alx.close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select * from equipamento');
    DMESTOQUE.Alx.SQL.Add('where upper(replace(replace(equipamento.placa, ''-'', ''''), '' '', '''')) like upper (' + #39 + codigo + #39 + ')  AND ((EQUIPAMEnTO.ATIVO=' + #39 + '1' + #39 +
      ') OR (EQUIPAMEnTO.ATIVO IS NULL) or (EQUIPAMEnTO.ATIVO=' + #39 + 'S' + #39
      +
      ') )'); //Jônatas 23/08/2013 - Alterado pois estava com erro
    DMESTOQUE.Alx.Open;
    DMESTOQUE.Alx.first;
    if not DMESTOQUE.alx.IsEmpty then
    begin
      pkCodigoVeiculo := DMESTOQUE.Alx.FieldByName('COD_EQUIPAMENTO').AsInteger;
      edVeiculo.Text := DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;

      if cliente then
      begin
        // busca o cliente q esta atrelado ao equipamento
        FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE',
          DMESTOQUE.Alx.FieldByname('cod_cliente').AsString, '');
        if not DMPESSOA.WCliente.IsEmpty then
        begin
          if DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString = '1' then
            MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS',
              mtWarning, [mbOK], 0);

          pkCodigoCliente :=
            DMPESSOA.WCliente.FieldByname('COD_CLIENTE').AsInteger;
          edCodCliente.Text :=
            DMPESSOA.WCliente.FieldByname('cod_interno').AsString;
          edCliente.Text := DMPESSOA.WCliente.FieldByname('nome').AsString;
          if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
            DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '') = True
              then
          begin
            edHistoricoCliente.Text :=
              DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString;
            edHistoricoCliente.Visible := True;
          end
          else
          begin
            edHistoricoCliente.Text := '';
            edHistoricoCliente.Visible := False;
          end;
        end
        else
        begin
          pkCodigoCliente := -999;
          edCodCliente.Text := '';
          edCliente.Text := '';
          edHistoricoCliente.Text := '';
        end;
      end;
    end
    else
    begin
      pkCodigoVeiculo := -999;
      edPlaca.Text := '';
      edVeiculo.Text := '';
      edPlaca02.Text := '';
      edPlaca03.Text := '';
      edPlaca.SelectAll;
    end;
  end;
end;

function TfrmOrdemMecanica.EfetuaDesconto(OrigemDesconto: string; TipoDesconto:
  string): Boolean;
begin
  //se nao tiver nenhum desconto zerar o desconto de produto
  if MDO.Query1.IsEmpty then
    edValorDescontoProduto.ValueNumeric := 0;

  if MDO.Query2.IsEmpty then
    edValorDescontoServico.ValueNumeric := 0;

  if (OrigemDesconto = 'SERVICO') or (OrigemDesconto = 'GERAL') then
  begin
    if xValorTotalServico <> 0 then
    begin
      //Efetua desconto somente para serviços
      if TipoDesconto = 'PERCENTO' then
        edValorLiquidoServico.ValueNumeric := xValorTotalServico - (edValorDescontoServico.ValueNumeric * xValorTotalServico) / 100
      else
        edValorDescontoServico.ValueNumeric := (xValorTotalServico - edValorLiquidoServico.ValueNumeric);
    end;
  end;
  {
  else begin
    edValorDescontoServico.ValueNumeric := 0;
    edValorLiquidoServico.ValueNumeric := 0;
  end;
  }
  //PRODUTOS
  if (OrigemDesconto = 'PRODUTO') or (OrigemDesconto = 'GERAL') then
  begin
    if xValorTotalProduto <> 0 then
    begin
      if TipoDesconto = 'PERCENTO' then
        edValorLiquidoProduto.ValueNumeric := xValorTotalProduto -
          (edValorDescontoProduto.ValueNumeric * xValorTotalProduto) / 100
      else
        edValorDescontoProduto.ValueNumeric := xValorTotalProduto - edValorLiquidoProduto.ValueNumeric;
    end
    else
    begin
      edValorTotalProduto.ValueNumeric := 0;
      edValorDescontoProduto.ValueNumeric := 0
    end;
  end;

  edValorTotalOS.ValueNumeric := edValorLiquidoProduto.ValueNumeric + edValorLiquidoServico.ValueNumeric;
  If (xValorTotalOS > 0) and (edValorTotalOS.ValueNumeric <> xValorTotalOS) Then
       edValorDescontoOS.ValueNumeric := xValorTotalOS - edValorTotalOS.ValueNumeric
  Else
       edValorDescontoOS.ValueNumeric := 0;
end;

function TfrmOrdemMecanica.AplicaDescontos: Boolean;
begin
   //se nao tiver nenhum desconto zerar o desconto de produto
   if MDO.Query1.IsEmpty
   then Begin
       edValorLiquidoProduto.ValueNumeric := 0;
       edValorDescontoProduto.ValueNumeric := 0;
       edPercentoDescontoProduto.ValueNumeric := 0;
   End
   Else Begin
       edValorLiquidoProduto.ValueNumeric := xValorTotalProduto - edValorDescontoProduto.ValueNumeric;
       edPercentoDescontoProduto.ValueNumeric := (edValorDescontoProduto.ValueNumeric / xValorTotalProduto) * 100;
   end;

  if MDO.Query2.IsEmpty
  then begin
       edValorLiquidoServico.ValueNumeric := 0;
       edValorDescontoServico.ValueNumeric := 0;
       edPercentoDescontoServico.ValueNumeric := 0;
  end
  Else Begin
       edValorLiquidoServico.ValueNumeric := xValorTotalServico - edValorDescontoServico.ValueNumeric;
       edPercentoDescontoServico.ValueNumeric := (edValorDescontoServico.ValueNumeric / xValorTotalServico) * 100;
       //edValorLiquidoServico.ValueNumeric := xValorTotalServico - edValorDescontoServico.ValueNumeric;
  End;

  edValorTotalOS.ValueNumeric := edValorLiquidoServico.ValueNumeric + edValorLiquidoProduto.ValueNumeric;
  edValorDescontoOS.ValueNumeric := xValorTotalOS - edValorTotalOS.ValueNumeric;
end;

function TfrmOrdemMecanica.AplicaDescontosPercentual: Boolean;
begin
   //se nao tiver nenhum desconto zerar o desconto de produto
   if MDO.Query1.IsEmpty
   then Begin
       edValorLiquidoProduto.ValueNumeric := 0;
       edValorDescontoProduto.ValueNumeric := 0;
       edPercentoDescontoProduto.ValueNumeric := 0;
   End
   Else Begin
       edValorDescontoProduto.ValueNumeric := (xValorTotalProduto * edPercentoDescontoProduto.ValueNumeric)/100;
       edValorLiquidoProduto.ValueNumeric := xValorTotalProduto - edValorDescontoProduto.ValueNumeric;
       ///edValorDescontoProdutoExit;
   end;

  if MDO.Query2.IsEmpty
  then begin
       edValorLiquidoServico.ValueNumeric := 0;
       edValorDescontoServico.ValueNumeric := 0;
       edPercentoDescontoServico.ValueNumeric := 0;
  end
  Else Begin
       edValorDescontoServico.ValueNumeric := (xValorTotalServico * edPercentoDescontoServico.ValueNumeric)/100;
       edValorLiquidoServico.ValueNumeric := xValorTotalServico - edValorDescontoServico.ValueNumeric;
       //edValorDescontoServicoExit(sender);
  End;

  edValorTotalOS.ValueNumeric := edValorLiquidoServico.ValueNumeric + edValorLiquidoProduto.ValueNumeric;
  edValorDescontoOS.ValueNumeric := xValorTotalOS - edValorTotalOS.ValueNumeric;
end;


Function TfrmOrdemMecanica.RefiltraOrdem: Boolean;
begin
  try
    Result := True;
    MDO.Transac.CommitRetaining;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select * from vwordem ');
    MDO.QConsulta.SQL.Add('  where vwordem.cod_ordem = :Codigo ');
    MDO.QConsulta.ParamByName('Codigo').AsInteger := pkCodigoOrdem;
    MDO.QConsulta.Open;
    if not MDO.QConsulta.IsEmpty then
    begin
       Result := True;
    End
    Else Begin
       Result := False;
    End;
  except
    Result := False;
  End;
End;

procedure TfrmOrdemMecanica.RefreshOrdem;
begin
  try
    MDO.Transac.CommitRetaining;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select * from vwordem ');
    MDO.QConsulta.SQL.Add('  where vwordem.cod_ordem = :Codigo order by vwordem.cod_ordem desc ');
    MDO.QConsulta.ParamByName('Codigo').AsInteger := pkCodigoOrdem;
    MDO.QConsulta.Open;
    if not MDO.QConsulta.IsEmpty then
    begin
      if MDO.QConsulta.FieldByName('Status').AsString = xStatusOrdemAberto then
      begin
        xPermiteSalvar := True;
        xPermiteConsultar := True;
        xPermiteFechar := True;
      end;
      if MDO.QConsulta.FieldByName('Status').AsString = xStatusOrdemFechado then
      begin
        xPermiteSalvar := false;
        xPermiteConsultar := false;
        xPermiteFechar := false;
      end;
      if MDO.QConsulta.FieldByName('monitor').AsString =
        xStatusAndamentoTerminado then
      begin
        xPermiteSalvar := true;
        xPermiteConsultar := false;
        xPermiteFechar := true;
      end;
      if MDO.QConsulta.FieldByName('monitor').AsString =
        xStatusAndamentoFinalizado then
      begin
        xPermiteSalvar := false;
        xPermiteConsultar := false;
        xPermiteFechar := false;
      end;
    end
    else
    begin
      xPermiteSalvar := False;
      xPermiteConsultar := False;
      xPermiteFechar := False;
    end;
  except
    xPermiteSalvar := False;
    xPermiteConsultar := False;
    xPermiteFechar := False;
  end;
end;

procedure TfrmOrdemMecanica.ValidaOSDuplicada;
begin
  try
    MDO.Transac.CommitRetaining;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select * from vwordem ');
    MDO.QConsulta.SQL.Add(' Where vwordem.status = :Status ');
    MDO.QConsulta.SQL.Add('   and vwordem.cod_cliente = :cliente ');
    MDO.QConsulta.SQL.Add('   and vwordem.cod_equipamento = :veiculo  ');
    MDO.QConsulta.SQL.Add(' and vwordem.cod_ordem <> :Codigo ');
    MDO.QConsulta.ParamByName('Status').AsString := xStatusOrdemAberto;
    MDO.QConsulta.ParamByName('cliente').AsInteger := pkCodigoCliente;
    MDO.QConsulta.ParamByName('veiculo').AsInteger := pkCodigoVeiculo;
    MDO.QConsulta.ParamByName('Codigo').AsInteger := pkCodigoOrdem;
    MDO.QConsulta.Open;
    if not MDO.QConsulta.IsEmpty then
    begin
      MessageDlg('Verifique duplicidade com a Ordem de Serviço número ' +
        MDO.QConsulta.FieldByName('NUMERO').AsString, mtInformation, [mbOK], 0);
    end;
  except
  end;
end;

function TfrmOrdemMecanica.ValidaOSNumeroDuplicado: Boolean;
begin
  try
    Result := True;

    MDO.Transac.CommitRetaining;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' Select Count(vwordem.cod_ordem) as Cont from vwordem ');
    MDO.QConsulta.SQL.Add(' where (vwordem.numero = :Numero) ');
    MDO.QConsulta.SQL.Add(' And (vwordem.cod_ordem = :Codigo) ');
    MDO.QConsulta.ParamByName('Numero').AsString := edNumero.Text;
    MDO.QConsulta.ParamByName('Codigo').AsInteger := pkCodigoOrdem;
    MDO.QConsulta.Open;
    if MDO.QConsulta.FieldByName('Cont').AsInteger > 1 then
    begin
      Result := False;
      MessageDlg(' O Número desta Ordem de Serviço esta em uso por outra Ordem. Será preciso alterar a numeração para poder salvar ', mtInformation, [mbOK], 0);
    end;
  except
    Result := False;
  end;
end;

procedure TfrmOrdemMecanica.FiltraItens;
begin
  try
    MDO.Transac.CommitRetaining;

    MDO.Query1.Close;
    MDO.Query1.SQL.Clear;
    MDO.Query1.SQL.Add('Select Sum(ITPRODORD.total) as TOTAL From ITPRODORD');
    MDO.Query1.SQL.Add('Where ITPRODORD.COD_ORDEM = :CODORDEM ');
    MDO.Query1.ParamByName('CODORDEM').AsInteger := pkCodigoOrdem;
    MDO.Query1.Open;

    xValorTotalProduto := MDO.Query1.FieldByName('TOTAL').AsCurrency;
    edValorTotalProduto.ValueNumeric := xValorTotalProduto;

    MDO.Query1.Close;
    MDO.Query1.SQL.Clear;
    MDO.Query1.SQL.Add(' Select itprodord.cod_itprodord, unidade.sigla_unid as UNIDADE, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
    MDO.Query1.SQL.Add(' itprodord.desconto, itprodord.data, itprodord.VALCOMP, itprodord.cod_funcionario, itprodord.vlrunit, subproduto.contrint, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, itprodord.operacao,');
    MDO.Query1.SQL.Add(' itprodord.baseicms, itprodord.vlricms, itprodord.aliqicms, cst.cod_sit_trib, itprodord.descnf as DESCONTONF, subproduto.ncm, itprodord.VALCOMP ');
    MDO.Query1.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
    MDO.Query1.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
    MDO.Query1.SQL.Add(' left join cst ON itprodord.cod_cst = cst.cod_cst ');
    MDO.Query1.SQL.Add(' Left Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
    MDO.Query1.SQL.Add(' Where itprodord.cod_ordem = :CODORDEM ');
    MDO.Query1.ParamByName('CODORDEM').AsInteger := pkCodigoOrdem;
    MDO.Query1.SQL.Add('order by itprodord.cod_itprodord desc');
    MDO.Query1.SQL.Text;
    MDO.Query1.Open;

    //TRABALHANDO COM DESPESAS
    MDO.Query2.Close;
    MDO.Query2.SQL.Clear;
    MDO.Query2.SQL.Add('select Sum(despadic.vlrtotfin) AS VLRTOTFIN From despadic Where (despadic.gerador=' + #39 + 'ORDEM' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
    MDO.Query2.ParamByName('COD_GERADOR').AsInteger := pkCodigoOrdem;
    MDO.Query2.Open;

    xValorTotalServico := MDO.Query2.FieldByName('VLRTOTFIN').AsCurrency;
    edValorTotalServico.ValueNumeric := xValorTotalServico;

    MDO.Query2.Close;
    MDO.Query2.SQL.Clear;
    MDO.Query2.SQL.Add(' select * from despadic');
    MDO.Query2.SQL.Add(' left join equipe on despadic.cod_equipe = equipe.cod_equipe');
    MDO.Query2.SQL.Add(' left join vwsubservico on despadic.cod_servico = vwsubservico.cod_subservico ');
    MDO.Query2.SQL.Add(' where (despadic.cod_gerador= :cod) and (despadic.gerador=' + #39 + 'ORDEM' + #39 + ')');
    MDO.Query2.SQL.Add(' order by despadic.cod_despadic desc');
    MDO.Query2.ParamByName('cod').AsInteger := pkCodigoOrdem;
    MDO.Query2.Open;

    xValorTotalOS := xValorTotalProduto + xValorTotalServico;

    AplicaDescontosPercentual;
//    AplicaDescontos;

  except

  end;
end;

function TfrmOrdemMecanica.AtivaPainelConsulta(xParam: Boolean): Boolean;
begin
   try
       if xParam = True then
       begin
           pConsulta.Visible := True;
           PCadastro.Visible := False;
           pcItens.ActivePageIndex := 0;
           pConsulta.BringToFront;
       end
       else
       begin
           pConsulta.Visible := false;
           PCadastro.Visible := True;
           pCamposPlacasAdicionais.Visible := false;
           if DMMACS.TLoja.FieldByName('USAPLACASADICIONAIS').AsString = '1' then
           begin
               pCamposPlacasAdicionais.Visible := true;
               pCamposPlacasAdicionais.BringToFront;
           end;
           if (DMMACS.TLoja.FieldByName('EXIBVLRCOMPOS').AsString = '1') then
           begin
               edInsereProdutoDescricao.Width := 206;
               btnInsereProdutoLocalize.Left := 214;
               pInsereProdutoValorCusto.Visible := True;
               pInsereProdutoValorCusto.BringToFront;
           end
           else
           begin
               edInsereProdutoDescricao.Width := 273;
               btnInsereProdutoLocalize.Left := 282;
               pInsereProdutoValorCusto.Visible := False;
           end;
           PCadastro.BringToFront;
       end;
   except

   end;
end;

function TfrmOrdemMecanica.LimpaFiltros: Boolean;
begin
  try
    Result := true;
    edFiltroNumeroOrdem.Clear;
    edFiltroNumeroNfe.Clear;
    edFiltroNumeroNfse.Clear;
    edFiltroPlaca.Clear;
    edFiltroCliente.Clear;
    edFiltroDataIni.Clear;
    edFiltroDataFim.Clear;
    edFiltroVeiculo.Clear;
    edFiltroDataIni.Text := '01/01/1900';
    edFiltroDataFim.Text := '01/01/9999';
  except
    Result := false;
  end;
end;

function TfrmOrdemMecanica.LimpaCamposItemServico: Boolean;
begin
  try
    Result := True;
    pkCodigoResponsavel := -999;
    edInsereServicoDescricao.Text := '';
    edInsereServicoQuantidade.ValueNumeric := 1;
    edInsereServicoValorUnitario.ValueNumeric := 0;
    edInsereServicoValorTotal.ValueNumeric := 0;
    edInsereServicoCodigoResponsavel.Text := '';
    lInsereServicoResponsavel.Caption := 'Selecione responsável';
    lPesquisa.Caption := 'Selecione o produto';
    cbTerceiros.Checked:=false;

    edInsereServicoCustoTerceirizacao.ValueNumeric  := 0;
    lbCustoTerceirizacao.Visible                    := False;
    edInsereServicoCustoTerceirizacao.Visible       := False;
  except
    Result := False;
  end;
end;

function TfrmOrdemMecanica.LimpaCamposPesquisaProduto: Boolean;
begin
  try
    Result := True;
    pkCodigoEstoque := -999;
    pkCodigoCst := -999;
    edInsereProdutoDescricao.Text := '';
    edInsereProdutoQuantidade.ValueNumeric := 1;
    edInsereProdutoValorUnitario.ValueNumeric := 0;
    edInsereProdutoCusto.ValueNumeric := 0;
    edInsereProdutoValorTotal.ValueNumeric := 0;
    lInsereProdutoSelecionado.Caption := 'Produto não selecionado';
    lPesquisa.Caption := 'Selecione o produto';
  except
    Result := False;

  end;
end;

function TfrmOrdemMecanica.ConsultaOrdemServicoPopulaCampos: Boolean;
begin
  try
    Result := true;

    LimpaCamposCadastro;

    pkCodigoOrdem := MDO.QConsulta.FieldByName('COD_ORDEM').AsInteger;
    pkCodigoVeiculo := MDO.QConsulta.FieldByName('cod_equipamento').AsInteger;
    pkCodigoCliente := MDO.QConsulta.FieldByName('cod_cliente').AsInteger;
    pkCodigoVendedor := MDO.QConsulta.FieldByName('cod_vendedor').AsInteger;
    pkCodigoPagamento := MDO.QConsulta.FieldByName('cod_formpag').AsInteger;

    edPlaca.Text := MDO.QConsulta.FieldByName('placa').AsString;
    edVeiculo.Text := MDO.QConsulta.FieldByName('veiculo').AsString;
    edPlaca02.Text := MDO.QConsulta.FieldByName('placa2').AsString;
    edPlaca03.Text := MDO.QConsulta.FieldByName('placa3').AsString;
    edKmAtual.Text := MDO.QConsulta.FieldByName('totkm').AsString;
    If MDO.QConsulta.FieldByName('LOCALAT').AsString = 'BALCÃO' Then
       CBVENDABALCAO.Checked := true
    Else
       CBVENDABALCAO.Checked := false;
    edCodCliente.Text := MDO.QConsulta.FieldByName('cod_cliente').AsString;
    edCliente.Text := MDO.QConsulta.FieldByName('nome').AsString;
    edHistoricoCliente.Text :=
      MDO.QConsulta.FieldByName('obsfinanceira').AsString;
    if edHistoricoCliente.Text <> '' then
      edHistoricoCliente.Visible := True;

    edPagamentoCodigo.Text := MDO.QConsulta.FieldByName('cod_formpag').AsString;
    edPagamentoDescricao.Text := MDO.QConsulta.FieldByName('Pagamento').AsString;

    edCodVendedor.Text := MDO.QConsulta.FieldByName('codvendedor').AsString;
    edVendedor.Text := MDO.QConsulta.FieldByName('vendedor').AsString;
    edNumero.Text := MDO.QConsulta.FieldByName('numero').AsString;
    //edValorDescontoProduto.ValueNumeric    := MDO.QConsulta.FieldByName('TOTPROD').AsCurrency; // MDO.QConsulta.FieldByName('DESCPROD').AsCurrency;
    //edValorDescontoServico.ValueNumeric    := xValorTotalServico - MDO.QConsulta.FieldByName('TOTSERV').AsCurrency; //MDO.QConsulta.FieldByName('DESCSERV').AsCurrency;
    edPercentoDescontoProduto.ValueNumeric    := MDO.QConsulta.FieldByName('DESCPROD').AsCurrency;
    edPercentoDescontoServico.ValueNumeric    := MDO.QConsulta.FieldByName('DESCSERV').AsCurrency;
    edValorDescontoOS.ValueNumeric         := MDO.QConsulta.FieldByName('DESCONTO').AsCurrency;

    edValorLiquidoProduto.ValueNumeric     := MDO.QConsulta.FieldByName('TOTPROD').AsCurrency;
    edValorLiquidoServico.ValueNumeric     := MDO.QConsulta.FieldByName('TOTSERV').AsCurrency;
    edValorTotalOS.ValueNumeric            := MDO.QConsulta.FieldByName('TOTORD').AsCurrency;
    edObservacao.Lines.Text                := MDO.QConsulta.FieldByName('obsordem').AsString;
    edDadosAdicionais.Lines.Text           := MDO.QConsulta.FieldByName('observacao').AsString;
    edProblemaReclamado.Lines.Text         := MDO.QConsulta.FieldByName('PROBLEMA').AsString;
    edSolucaoApresentada.Lines.Text        := MDO.QConsulta.FieldByName('SOLUCAO').AsString;
    edDataAbertura.Text := MDO.QConsulta.FieldByName('dtabert').AsString;
  except
    Result := False;
  end;
end;

function TfrmOrdemMecanica.AjustarAndamentoOrdem(StatusAndamento: string; EmPagamento: Boolean):
  Boolean;
var
  xContinua: Boolean;
begin
  try
    Result := True;

    xContinua := False;

    pkCodigoOrdem := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;

    RefreshOrdem;

    if (MDO.QConsulta.FieldByName('STATUS').AsString = xStatusOrdemAberto) then
      xContinua := true;

    if (MDO.QConsulta.FieldByName('monitor').AsString = xStatusAndamentoFinalizado) and (EmPagamento = False) then
    begin
      if
        MessageDlg('Esta Ordem de Serviço esta sinalizada como Finalizada. Tem certeza que deseja alterar esta sinalização?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        if ControlAccess('ADMINISTRADOR', '') = False then
        begin
          xContinua := False;
          if Mensagem('A T E N Ç Ã O !', 'Usuário sem permissão.' + #13 +
            'Deseja solicitar a senha de um administrador?', '', 2, 3, False, 'c')
            = 2 then
          begin
            AbrirForm(TFSENHA, FSENHA, 0);
            if XAlxResult = True then
              xContinua := True
            else
              xContinua := False;
          end
          else
          begin
            xContinua := False;
          end;
        end
        else
        begin
          xContinua := True;
        end;

      end;
    end;

    if (MDO.QConsulta.FieldByName('STATUS').AsString = xStatusOrdemAberto) then
    begin
      if (xContinua = True) then
      begin
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' update ordem set ');
        MDO.Query.SQL.Add('     MONITOR = :MONITOR');
        MDO.Query.SQL.Add('     Where ordem.cod_ordem = :Codigo ');
        MDO.Query.ParamByName('Codigo').AsInteger := pkCodigoOrdem;
        MDO.Query.ParamByName('MONITOR').AsString := StatusAndamento;
        MDO.Query.ExecSQL;

        MDO.Transac.CommitRetaining;
      end
      else
      begin
        Result := False;
      end;
    end
    else
    begin
      Result := False;
    end;
  except
    Result := False;
  end;
end;

function TfrmOrdemMecanica.FechaOrdemServico: Boolean;
begin
  try
    Result := false;

    pkCodigoOrdem := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;

    RefreshOrdem;
    { TODO : Permitir finalização da OS apenas quando monitor/andamento Finalizado }
    if (MDO.QConsulta.FieldByName('STATUS').AsString = xStatusOrdemAberto)
      {// and (MDO.QConsulta.FieldByName('MONITOR').AsString <> 'FINALIZADO')} then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' update ordem set ');
      MDO.Query.SQL.Add('     STATUS = :STATUS, MONITOR = :MONITOR');
      MDO.Query.SQL.Add('     Where ordem.cod_ordem = :Codigo ');
      MDO.Query.ParamByName('Codigo').AsInteger := pkCodigoOrdem;
      MDO.Query.ParamByName('STATUS').AsString := xStatusOrdemFechado;
      MDO.Query.ParamByName('MONITOR').AsString := xStatusAndamentoFinalizado;

      MDO.Query.ExecSQL;

      MDO.Transac.CommitRetaining;

      pkCodigoOrdem := -999;

    end
    else
    begin
      MessageDlg(xMsgOrdemFechada + #13 + '[FinalizarOrdemServico]', mtWarning,
        [mbOK], 0);
    end;

    Result := True;
  finally
    pkCodigoOrdem := -999;
  end;
end;

function TfrmOrdemMecanica.ReabrirOrdemServico(codigo: Integer): Boolean;
begin
   try
       Result := false;

       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' update ordem set ');
       MDO.Query.SQL.Add('     STATUS = :STATUS, MONITOR = :MONITOR');
       MDO.Query.SQL.Add('     Where ordem.cod_ordem = :Codigo ');
       MDO.Query.ParamByName('Codigo').AsInteger := codigo;
       MDO.Query.ParamByName('STATUS').AsString := xStatusOrdemAberto;
       MDO.Query.ParamByName('MONITOR').AsString := xStatusAndamentoTerminado;
       MDO.Query.ExecSQL;

       MDO.Transac.CommitRetaining;
   except
       MDO.Transac.RollbackRetaining;
       Result := False;
       MessageDlg('Falha ao confirmar cancelamento de fechamento da ordem de serviço', mtWarning, [mbOK], 0);
   End;
   FiltraOrdem;
end;

function TfrmOrdemMecanica.FechaOrdemServicoFinal: Boolean;
begin
  try
    Result := false;

    if (MDO.QConsulta.FieldByName('STATUS').AsString = xStatusOrdemAberto)
      {// and (MDO.QConsulta.FieldByName('MONITOR').AsString <> 'FINALIZADO')} then
    begin
       If FMenu.XDTREF <>  '' Then
           xDataFechamento := FMenu.XDTREF;

      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' update ordem set ');
      MDO.Query.SQL.Add('     STATUS = :STATUS, MONITOR = :MONITOR, DTFECH = :DTFECH, FORMAFECHAMENTOOS = :FORMAFECHAMENTOOS ');
      MDO.Query.SQL.Add('     Where ordem.cod_ordem = :Codigo ');
      MDO.Query.ParamByName('Codigo').AsInteger            := pkCodigoOrdem;
      MDO.Query.ParamByName('STATUS').AsString             := xStatusOrdemFechado;
      MDO.Query.ParamByName('MONITOR').AsString            := xStatusAndamentoFinalizado;
      MDO.Query.ParamByName('DTFECH').AsString             := xDataFechamento;
      MDO.Query.ParamByName('FORMAFECHAMENTOOS').AsString  := xTipoPagamentoOS;
      MDO.Query.ExecSQL;

      MDO.Transac.CommitRetaining;

    end
    else
    begin
      MessageDlg(xMsgOrdemFechada + #13 + '[FinalizarOrdemServico]', mtWarning,
        [mbOK], 0);
    end;

    Result := True;
  finally
    pkCodigoOrdem := -999;
  end;
end;

function TfrmOrdemMecanica.CarregaFiltrosArquivo: Boolean;
Var
   Node : IXMLNode;
   XMLDocument: TXMLDocument;
begin
   XMLDocument := TXMLDocument.Create(Self);
   try
       cbFiltroStatus.ItemIndex    := 0;
       cbFiltroAndamento.ItemIndex := 0;
       edFiltroNumeroOrdem.Text    := '';
       edFiltroNumeroNfe.Text      := '';
       edFiltroNumeroNfse.Text     := '';
       edFiltroPlaca.Text          := '';
       edFiltroCliente.Text        := '';
       edFiltroVeiculo.Text        := '';
       edFiltroDataIni.Text        := '01/01/1900';
       edFiltroDataFim.Text        := '30/12/9999';

       XMLDocument.Active := True;

       If FileExists('C:\MZR\Arquivos\LayoutGrid\FiltrosOrdemServico.xml')
       Then Begin
           XMLDocument.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\FiltrosOrdemServico.xml');
           If XMLDocument.ChildNodes['config'].ChildNodes.FindNode('status') <> nil Then
               cbFiltroStatus.ItemIndex    := StrToInt(XMLDocument.ChildNodes['config'].ChildNodes.FindNode('status').Text);
           If XMLDocument.ChildNodes['config'].ChildNodes.FindNode('andamento') <> nil Then
               cbFiltroAndamento.ItemIndex := StrToInt(XMLDocument.ChildNodes['config'].ChildNodes.FindNode('andamento').Text);
           {
           If XMLDocument.ChildNodes['config'].ChildNodes.FindNode('numero') <> nil Then
               edFiltroNumeroOrdem.Text    := XMLDocument.ChildNodes['config'].ChildNodes.FindNode('numero').Text;
           If XMLDocument.ChildNodes['config'].ChildNodes.FindNode('nfe') <> nil Then
               edFiltroNumeroNfe.Text      := XMLDocument.ChildNodes['config'].ChildNodes.FindNode('nfe').Text;
           If XMLDocument.ChildNodes['config'].ChildNodes.FindNode('nfse') <> nil Then
               edFiltroNumeroNfse.Text     := XMLDocument.ChildNodes['config'].ChildNodes.FindNode('nfse').Text;
           If XMLDocument.ChildNodes['config'].ChildNodes.FindNode('placa') <> nil Then
               edFiltroPlaca.Text          := XMLDocument.ChildNodes['config'].ChildNodes.FindNode('placa').Text;
           If XMLDocument.ChildNodes['config'].ChildNodes.FindNode('cliente') <> nil Then
               edFiltroCliente.Text        := XMLDocument.ChildNodes['config'].ChildNodes.FindNode('cliente').Text;
           If XMLDocument.ChildNodes['config'].ChildNodes.FindNode('veiculo') <> nil Then
               edFiltroVeiculo.Text        := XMLDocument.ChildNodes['config'].ChildNodes.FindNode('veiculo').Text;
           }
           If XMLDocument.ChildNodes['config'].ChildNodes.FindNode('datainicial') <> nil Then
               edFiltroDataIni.Text        := XMLDocument.ChildNodes['config'].ChildNodes.FindNode('datainicial').Text;
           If XMLDocument.ChildNodes['config'].ChildNodes.FindNode('datafinal') <> nil Then
               edFiltroDataFim.Text        := XMLDocument.ChildNodes['config'].ChildNodes.FindNode('datafinal').Text   ;
       End;

   finally
       XMLDocument.Free;
   end;
End;


function TfrmOrdemMecanica.SalvaFiltrosArquivo: Boolean;
var
  XMLDocument: TXMLDocument;
  Node: IXMLNode;
  I: Integer;
begin
   XMLDocument := TXMLDocument.Create(Self);
   try
       XMLDocument.Active := True;
       Node := XMLDocument.AddChild('config');
       Node.ChildValues['status'] := cbFiltroStatus.ItemIndex;
       Node.ChildValues['andamento'] := cbFiltroAndamento.ItemIndex;
       {
       Node.ChildValues['numero'] := edFiltroNumeroOrdem.Text;
       Node.ChildValues['nfe'] := edFiltroNumeroNfe.Text;
       Node.ChildValues['nfse'] := edFiltroNumeroNfse.Text;
       Node.ChildValues['placa'] := edFiltroPlaca.Text;
       Node.ChildValues['cliente'] := edFiltroCliente.Text;
       Node.ChildValues['veiculo'] := edFiltroVeiculo.Text;
       }
       Node.ChildValues['datainicial'] := edFiltroDataIni.Text;
       Node.ChildValues['datafinal'] := edFiltroDataFim.Text;

       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');

       XMLDocument.SaveToFile('C:\MZR\Arquivos\LayoutGrid\FiltrosOrdemServico.xml');
   finally
       XMLDocument.Free;
   end;
End;

function TfrmOrdemMecanica.GravaOrdemServico: Boolean;
begin
  try
    Result := true;

    RefreshOrdem;

    if (MDO.QConsulta.FieldByName('STATUS').AsString = xStatusOrdemAberto) OR (pkCodigoOrdem = -999)  then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' update ordem set ');
      MDO.Query.SQL.Add('     COD_CLIENTE = :COD_CLIENTE, COD_EQUIPAMENTO = :COD_EQUIPAMENTO, ');
      MDO.Query.SQL.Add('     COD_VENDEDOR = :COD_VENDEDOR, DTABERT = :DTABERT, ');
      MDO.Query.SQL.Add('     COD_FUNCIONARIO = :COD_FUNCIONARIO, LOCALAT = :LOCALAT, ');
      MDO.Query.SQL.Add('     OBSERVACAO = :OBSERVACAO, PROBREC = :PROBREC, SOLUCAO = :SOLUCAO, ');
      MDO.Query.SQL.Add('     NUMERO = :NUMERO, DESCONTO = :DESCONTO, ');
      MDO.Query.SQL.Add('     COD_USUARIO= :COD_USUARIO, TOTPROD = :TOTPROD, TOTSERV = :TOTSERV, ');
      MDO.Query.SQL.Add('     TOTORD = :TOTORD, COD_FORMPAG = :COD_FORMPAG, TOTDESP = :TOTDESP, DESCPROD = :DESCPROD, ');
      MDO.Query.SQL.Add('     DESCSERV = :DESCSERV, MONITOR = :MONITOR, ');
      MDO.Query.SQL.Add('     BOX = :BOX, TOTKM = :TOTKM, OBSORDEM = :OBSORDEM, ');
      MDO.Query.SQL.Add('     PLACA2 = :PLACA2, PLACA3 = :PLACA3, ');
      MDO.Query.SQL.Add('     NOMECLI = :NOMECLI');
      MDO.Query.SQL.Add('     Where ordem.cod_ordem = :Codigo ');
      MDO.Query.ParamByName('Codigo').AsInteger := pkCodigoOrdem;
      MDO.Query.ParamByName('COD_CLIENTE').AsInteger := pkCodigoCliente;
      MDO.Query.ParamByName('COD_EQUIPAMENTO').AsInteger := pkCodigoVeiculo;
      If (CBVENDABALCAO.Checked = true) then
           MDO.Query.ParamByName('LOCALAT').AsString := 'BALCÃO'
      else
           MDO.Query.ParamByName('LOCALAT').AsString := '';
      MDO.Query.ParamByName('COD_VENDEDOR').AsInteger := pkCodigoVendedor;
      MDO.Query.ParamByName('COD_USUARIO').AsString :=
        FMenu.LCODUSUARIO.Caption;
      MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := pkCodigoVendedor;
      MDO.Query.ParamByName('COD_FORMPAG').AsInteger := pkCodigoPagamento;
      MDO.Query.ParamByName('DTABERT').AsString := edDataAbertura.Text;
      MDO.Query.ParamByName('MONITOR').AsString := xStatusAndamentoIniciado;
      MDO.Query.ParamByName('NUMERO').AsString := edNumero.Text;
      MDO.Query.ParamByName('TOTKM').AsString := edKmAtual.Text;
      MDO.Query.ParamByName('OBSORDEM').AsString := edObservacao.Text;
      MDO.Query.ParamByName('PLACA2').AsString := edPlaca02.Text;
      MDO.Query.ParamByName('PLACA3').AsString := edPlaca03.Text;
      MDO.Query.ParamByName('OBSERVACAO').AsString := edDadosAdicionais.Text;
      MDO.Query.ParamByName('PROBREC').AsString := edProblemaReclamado.Text;
      MDO.Query.ParamByName('SOLUCAO').AsString := edSolucaoApresentada.Text;
      MDO.Query.ParamByName('BOX').AsString := '';
      MDO.Query.ParamByName('NOMECLI').AsString := edCliente.Text;
      MDO.Query.ParamByName('DESCONTO').AsCurrency :=
        edValorDescontoOS.ValueNumeric;
      MDO.Query.ParamByName('TOTPROD').AsCurrency :=
        edValorLiquidoProduto.ValueNumeric;
      MDO.Query.ParamByName('TOTSERV').AsCurrency :=
        edValorLiquidoServico.ValueNumeric;
      MDO.Query.ParamByName('TOTORD').AsCurrency := edValorTotalOS.ValueNumeric;
      MDO.Query.ParamByName('TOTDESP').AsCurrency := 0;
      MDO.Query.ParamByName('DESCPROD').AsCurrency :=  edPercentoDescontoProduto.ValueNumeric;
      MDO.Query.ParamByName('DESCSERV').AsCurrency :=  edPercentoDescontoServico.ValueNumeric;

      MDO.Query.ExecSQL;

      MDO.Transac.CommitRetaining;

      Auditoria(IntToStr(pkCodigoOrdem), 'Grava OS', 'Tela de cadastro',
                'Número: ' + edNumero.Text +
                '; Data OS: ' + edDataAbertura.Text +
                '; Cliente: ' + edCliente.Text +
                '; Veículo: ' + edVeiculo.Text +
                '; Valor Produtos: ' + FormatFloat('0.00',  edValorLiquidoProduto.ValueNumeric)  +
                '; Valor Serviços: ' + FormatFloat('0.00', edValorLiquidoProduto.ValueNumeric)  +
                '; Valor OS: ' + FormatFloat('0.00', edValorTotalOS.ValueNumeric)) ;
    end
    else
    begin
      MessageDlg(xMsgOrdemFechada + #13 + '[GravaOrdemServico]', mtWarning,
        [mbOK], 0);
    end;
  except
    Result := False;
  end;
end;

function TfrmOrdemMecanica.GravaValoresOrdemServico: Boolean;
begin
  try
    Result := true;

    RefreshOrdem;

    if MDO.QConsulta.FieldByName('STATUS').AsString = xStatusOrdemAberto then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' update ordem set ');
      MDO.Query.SQL.Add('     DESCONTO = :DESCONTO, DESCSERV = :DESCSERV, ');
      MDO.Query.SQL.Add('     TOTPROD = :TOTPROD, TOTSERV = :TOTSERV, ');
      MDO.Query.SQL.Add('     TOTORD = :TOTORD, TOTDESP = :TOTDESP, DESCPROD = :DESCPROD ');
      MDO.Query.SQL.Add('     Where ordem.cod_ordem = :Codigo ');
      MDO.Query.ParamByName('Codigo').AsInteger := pkCodigoOrdem;
      MDO.Query.ParamByName('DESCONTO').AsCurrency :=
        edValorDescontoOS.ValueNumeric;
      MDO.Query.ParamByName('TOTPROD').AsCurrency :=
        edValorTotalProduto.ValueNumeric;
      MDO.Query.ParamByName('TOTSERV').AsCurrency :=
        edValorTotalServico.ValueNumeric;
      MDO.Query.ParamByName('TOTORD').AsCurrency := edValorTotalOS.ValueNumeric;
      MDO.Query.ParamByName('TOTDESP').AsCurrency := 0;
      MDO.Query.ParamByName('DESCPROD').AsCurrency := edValorDescontoProduto.ValueNumeric;
      MDO.Query.ParamByName('DESCSERV').AsCurrency := edValorDescontoServico.ValueNumeric;

      MDO.Query.ExecSQL;

      MDO.Transac.CommitRetaining;

    end
    else
    begin
      MessageDlg(xMsgOrdemFechada + #13 + '[GravaOrdemServico]', mtWarning,
        [mbOK], 0);
    end;
  except
    Result := False;
  end;
end;

function TfrmOrdemMecanica.Auditoria(Cod_Ordem, Comando, funcao, Historico: String): Boolean;
begin
   try
       Result := true;
       RegistraAcoes('ORDEM MECANICA', Cod_Ordem, Comando, DateToStr(Date()), Funcao, Historico);
   Except
       Result:= False;
   End;
End;

function TfrmOrdemMecanica.ConsultaOrdemServico: Boolean;
begin
  try
    Result := true;

    pkCodigoOrdem := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;

    RefreshOrdem;
    if (not MDO.QConsulta.IsEmpty) and (xPermiteConsultar) then
    begin
      if (MDO.QConsulta.FieldByName('status').AsString = xStatusOrdemAberto) and
        (MDO.QConsulta.FieldByName('monitor').AsString <>
          xStatusAndamentoFinalizado) then
      begin
        MDO.Transac.CommitRetaining;
        MDO.QConsulta.Close;
        MDO.QConsulta.SQL.Clear;
        MDO.QConsulta.SQL.Add(' Select vwordem.cod_ordem, vwordem.cod_equipamento, vwordem.cod_cliente, ');
        MDO.QConsulta.SQL.Add('        ordem.cod_formpag, vwordem.cod_vendedor, ordem.DESCPROD,  ordem.DESCSERV,  ');
        MDO.QConsulta.SQL.Add('        ordem.desconto, ordem.totprod, ordem.totserv, ordem.totord, ');
        MDO.QConsulta.SQL.Add('        equipamento.placa, equipamento.descricao as veiculo, ordem.totkm, ');
        MDO.QConsulta.SQL.Add('        equipamento.num_frota, ordem.placa2, ordem.placa3, ordem.LOCALAT, ');
        MDO.QConsulta.SQL.Add('        vwcliente.cod_cliente, vwcliente.nome, cliente.obsfinanceira, ');
        MDO.QConsulta.SQL.Add('        formpag.cod_formpag, formpag.descricao as pagamento, ');
        MDO.QConsulta.SQL.Add('        vwfuncionario.cod_func as codvendedor, vwfuncionario.nome as vendedor, ');
        MDO.QConsulta.SQL.Add('        vwordem.dtabert, ordem.observacao, ordem.obsordem, ordem.SOLUCAO, ordem.PROBREC AS PROBLEMA, vwordem.numero ');
        MDO.QConsulta.SQL.Add(' from vwordem ');
        MDO.QConsulta.SQL.Add(' left join ordem         on vwordem.cod_ordem        = ordem.cod_ordem ');
        MDO.QConsulta.SQL.Add(' left join equipamento   on vwordem.cod_equipamento  = equipamento.cod_equipamento ');
        MDO.QConsulta.SQL.Add(' left join vwcliente     on vwordem.cod_cliente      = vwcliente.cod_cliente ');
        MDO.QConsulta.SQL.Add(' left join cliente       on vwcliente.cod_cliente    = cliente.cod_cliente ');
        MDO.QConsulta.SQL.Add(' left join formpag       on ordem.cod_formpag        = formpag.cod_formpag ');
        MDO.QConsulta.SQL.Add(' left join vwfuncionario on vwordem.cod_vendedor     = vwfuncionario.cod_func ');
        MDO.QConsulta.SQL.Add(' where vwordem.cod_ordem = :Codigo ');
        MDO.QConsulta.ParamByName('Codigo').AsInteger := pkCodigoOrdem;
        MDO.QConsulta.Open;

        if MDO.QConsulta.IsEmpty then
           Result := False;
      end
      else
      begin
        Result := False;
        MessageDlg(xMsgOrdemFechada, mtWarning, [mbOK], 0);
      end;
    end
    else
    begin
      Result := False;
      if xPermiteConsultar = false then
        MessageDlg(xMsgOrdemFechadaFinalizada, mtWarning, [mbOK], 0);
    end;
  except
    Result := false;
  end;
end;



function TfrmOrdemMecanica.LimpaCamposCadastro: Boolean;
begin
  try
    Result := true;

    pkCodigoOrdem := -999;
    pkCodigoVeiculo := -999;
    pkCodigoCliente := -999;
    pkCodigoVendedor := -999;
    pkCodigoPagamento:= -999;

    edPlaca.Text := '';
    edVeiculo.Text := '';
    edPlaca02.Text := '';
    edPlaca03.Text := '';
    CBVENDABALCAO.Checked := false;

    edCodCliente.Text := '';
    edCliente.Text := '';
    edHistoricoCliente.Text := '';
    edHistoricoCliente.Visible := False;

    edPagamentoDescricao.Text := '';
    edPagamentoCodigo.Text := '';
    If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '')
    then begin
       pkCodigoPagamento := DMFINANC.TFormPag.FieldByName('cod_formpag').AsInteger;
       edPagamentoDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       edPagamentoCodigo.Text := DMFINANC.TFormPag.FieldByName('cod_interno').AsString;
    end;

    edCodVendedor.Text := '';
    edVendedor.Text := '';

    edKmAtual.Text := '';
    edDataAbertura.Clear;

    edObservacao.Clear;
    edDadosAdicionais.Clear;
    edProblemaReclamado.Clear;
    edSolucaoApresentada.Clear;

    edNumero.Text := '';
    edValorTotalOS.ValueNumeric := 0;
    edValorTotalProduto.ValueNumeric := 0;
    edValorLiquidoProduto.ValueNumeric := 0;
    edValorDescontoProduto.ValueNumeric := 0;
    edPercentoDescontoProduto.ValueNumeric := 0;
    edValorTotalServico.ValueNumeric := 0;
    edValorDescontoServico.ValueNumeric := 0;
    edPercentoDescontoServico.ValueNumeric := 0;
    edValorLiquidoServico.ValueNumeric := 0;
    edValorDescontoOS.ValueNumeric := 0;    

    LimpaCamposPesquisaProduto;
    LimpaCamposItemServico;
  except
    Result := false;
  end;
end;

function TfrmOrdemMecanica.FiltraOrdem: Boolean;
begin
  try
    Result := true;

    MDO.Transac.CommitRetaining;
    DMServ.IBT.CommitRetaining;

    DMServ.WOrdem.Close;
    DMServ.WOrdem.SQL.Clear;
    DMServ.WOrdem.SQL.Add(' select * from vwordem ');
    DMServ.WOrdem.SQL.Add(' where (vwordem.cod_loja = :CodigoLoja) ');
    DMServ.WOrdem.ParamByName('CodigoLoja').AsString := Fmenu.LCODLOJA.Caption;
    if (edFiltroDataIni.Text <> '  /  /    ') and (edFiltroDataFim.Text <>
      '  /  /    ') then
    begin
      DMServ.WOrdem.SQL.Add(' And (vwordem.dtabert BETWEEN :data_ini AND :data_fim)  ');
      DMServ.WOrdem.ParamByName('data_ini').AsDate :=
        StrToDate(edFiltroDataIni.Text);
      DMServ.WOrdem.ParamByName('data_fim').AsDate :=
        StrToDate(edFiltroDataFim.Text);
    end;

    if (cbFiltroStatus.Text <> 'TODOS') and (cbFiltroStatus.Text <> '') then
    begin
      DMServ.WOrdem.SQL.Add(' And (vwordem.status = :Status) ');
      DMServ.WOrdem.ParamByName('Status').AsString := cbFiltroStatus.Text;
    end;
    if (cbFiltroAndamento.Text <> 'TODOS') and (cbFiltroAndamento.Text <> '')
      then
    begin
      DMServ.WOrdem.SQL.Add(' And (vwordem.monitor = :Monitor) ');
      DMServ.WOrdem.ParamByName('Monitor').AsString := cbFiltroAndamento.Text;
      { TODO : Ajustar em cbfiltroandamento para mostrar somente os tipos definidos }
    end;
    if Trim(edFiltroNumeroOrdem.Text) <> '' then
    begin
      DMServ.WOrdem.SQL.Add(' And (vwordem.Numero like ' + #39 + '%' +
        edFiltroNumeroOrdem.Text + '%' + #39 + ')');
    end;
    if Trim(edFiltroNumeroNfe.Text) <> '' then
    begin
      DMServ.WOrdem.SQL.Add(' And (vwordem.numfiscal like ' + #39 + '%' +
        edFiltroNumeroNfe.Text + '%' + #39 + ')');
    end;
    if Trim(edFiltroNumeroNfse.Text) <> '' then
    begin
      DMServ.WOrdem.SQL.Add(' And (vwordem.numfiscalnfse like ' + #39 + '%' +
        edFiltroNumeroNfse.Text + '%' + #39 + ')');
    end;
    if Trim(edFiltroPlaca.Text) <> '' then
    begin
      DMServ.WOrdem.SQL.Add(' And (upper(vwordem.Placa) like ' + #39 + '%' +
        UpperCase(edFiltroPlaca.Text) + '%' + #39 + ')');
    end;
    if Trim(edFiltroCliente.Text) <> '' then
    begin
      DMServ.WOrdem.SQL.Add(' And (upper(vwordem.Cliente) like ' + #39 + '%' +
        UpperCase(edFiltroCliente.Text) + '%' + #39 + ')');
    end;
    if Trim(edFiltroVeiculo.Text) <> '' then
    begin
      DMServ.WOrdem.SQL.Add(' And (upper(vwordem.equipamento) like ' + #39 + '%' +
        UpperCase(edFiltroVeiculo.Text) + '%' + #39 + ')');
    end;
    DMServ.WOrdem.SQL.Add('  order by vwordem.cod_ordem desc ');
    DMServ.WOrdem.SQL.Text;
    DMServ.WOrdem.Open;

    Auditoria('-999', 'Filtra Ordem', 'Tela de consulta',
               'Status: ' + cbFiltroStatus.Text +
               '; Andamento: ' + cbFiltroAndamento.Text +
               '; Número: ' + edFiltroNumeroOrdem.Text +
               '; NF-e: ' + edFiltroNumeroNfe.Text +
               '; NFS-e: ' + edFiltroNumeroNfse.Text +
               '; Placa: ' + edFiltroPlaca.Text +
               '; Cliente: ' + edFiltroCliente.Text +
               '; Data: ' + edFiltroDataIni.Text + ' - ' +edFiltroDataFim.Text);
    SalvaFiltrosArquivo;
  except
    Result := false;
  end;
end;

function TfrmOrdemMecanica.FiltraOrdemCampo(xCampo: String): Boolean;
begin
  try
    Result := true;

    MDO.Transac.CommitRetaining;
    DMServ.IBT.CommitRetaining;

    DMServ.WOrdem.Close;
    DMServ.WOrdem.SQL.Clear;
    DMServ.WOrdem.SQL.Add(' select * from vwordem ');
    DMServ.WOrdem.SQL.Add(' where (vwordem.cod_loja = :CodigoLoja) ');
    DMServ.WOrdem.ParamByName('CodigoLoja').AsString := Fmenu.LCODLOJA.Caption;
    if (xCampo = 'NumeroOrdem')
    then begin
      DMServ.WOrdem.SQL.Add(' And (vwordem.Numero like ' + #39 + '%' + edFiltroNumeroOrdem.Text + '%' + #39 + ')');
    end;

    if (xCampo = 'NumeroNFe')
    then begin
      DMServ.WOrdem.SQL.Add(' And (vwordem.numfiscal like ' + #39 + '%' + edFiltroNumeroNfe.Text + '%' + #39 + ')');
    end;

    if (xCampo = 'NumeroNFSe')
    then begin
      DMServ.WOrdem.SQL.Add(' And (vwordem.numfiscalnfse like ' + #39 + '%' +
        edFiltroNumeroNfse.Text + '%' + #39 + ')');
    end;

    if (xCampo = 'Placa')
    then begin
      DMServ.WOrdem.SQL.Add(' And (upper(vwordem.Placa) like ' + #39 + '%' +
        UpperCase(edFiltroPlaca.Text) + '%' + #39 + ')');
    end;
    if (xCampo = 'Veiculo')
    then begin
      DMServ.WOrdem.SQL.Add(' And (upper(vwordem.equipamento) like ' + #39 + '%' +
        UpperCase(edFiltroVeiculo.Text) + '%' + #39 + ')');
    end;
    if (xCampo = 'Cliente')
    then begin
      DMServ.WOrdem.SQL.Add(' And (upper(vwordem.Cliente) like ' + #39 + '%' +
        UpperCase(edFiltroCliente.Text) + '%' + #39 + ')');
    end;
    DMServ.WOrdem.SQL.Add('  order by vwordem.cod_ordem desc ');
    DMServ.WOrdem.SQL.Text;
    DMServ.WOrdem.Open;

    Auditoria('-999', 'Filtra Ordem Campo', 'Tela de consulta',
               'Status: ' + cbFiltroStatus.Text +
               '; Andamento: ' + cbFiltroAndamento.Text +
               '; Número: ' + edFiltroNumeroOrdem.Text +
               '; NF-e: ' + edFiltroNumeroNfe.Text +
               '; NFS-e: ' + edFiltroNumeroNfse.Text +
               '; Placa: ' + edFiltroPlaca.Text +
               '; Cliente: ' + edFiltroCliente.Text +
               '; Data: ' + edFiltroDataIni.Text + ' - ' +edFiltroDataFim.Text);
    SalvaFiltrosArquivo;
  except
    Result := false;
  end;
end;


procedure TfrmOrdemMecanica.FormShow(Sender: TObject);
begin
  LimpaFiltros;
  CarregaFiltrosArquivo;  
  FiltraOrdem;

  if FileExists('C:\MZR\Arquivos\LayoutGrid\Ordemmecanica.lgm') then
    DBGridConsulta.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\Ordemmecanica.lgm');

  if FileExists('C:\MZR\Arquivos\LayoutGrid\ItemOrdemmecanica.lgm') then
    dbgProdutos.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ItemOrdemmecanica.lgm');
  if FileExists('C:\MZR\Arquivos\LayoutGrid\ServicoOrdemmecanica.lgm') then
    DbgServicos.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ServicoOrdemmecanica.lgm');
  xStateOrdem := '';
end;

procedure TfrmOrdemMecanica.BitBtn1Click(Sender: TObject);
begin
  FiltraOrdem;
end;

procedure TfrmOrdemMecanica.BitBtn2Click(Sender: TObject);
begin
  LimpaFiltros;
end;

procedure TfrmOrdemMecanica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then
    begin
      ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
    end;
    DBGridConsulta.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\Ordemmecanica.lgm');
    dbgProdutos.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ItemOrdemmecanica.lgm');
    DbgServicos.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ServicoOrdemmecanica.lgm');
  except
    MessageDlg('Falha na tentativa de salvar o layout da grid', mtWarning,
      [mbOK], 0);
  end;
end;

procedure TfrmOrdemMecanica.cbFiltroStatusKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    FiltraOrdem;
  if Key = 27 then
  begin
    LimpaFiltros;
    FiltraOrdem;
  end;
end;

function TfrmOrdemMecanica.ApagarOrdemVazia: Boolean;
begin
  try
    Result := True;

    FiltraItens;
    if (MDO.Query1.IsEmpty) and (MDO.Query2.IsEmpty) and (MDO.Query3.IsEmpty)
      then
    begin
      RefreshOrdem;
      if not MDO.QConsulta.IsEmpty then
      begin
        if MDO.QConsulta.FieldByName('status').AsString = xStatusOrdemFechado
          then
        begin
          MessageDlg(xMsgOrdemFechada + #13 + '[GravaOrdemServico]', mtWarning,
            [mbOK], 0);
        end
        else
        begin
          if MessageDlg('A Ordem de Serviço esta vazia. ' + #13 + #10 +
            'Deseja apagar?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
          begin
               Auditoria(IntToStr(pkCodigoOrdem), 'Apaga OS vazia', 'Tela de cadastro',
                   'Número: ' + MDO.QConsulta.FieldByName('NUMERO').AsString +
                   '; Data OS: ' + MDO.QConsulta.FieldByName('DTABERT').AsString +
                   '; Cliente: ' + MDO.QConsulta.FieldByName('CLIENTE').AsString +
                   '; Veículo: ' + MDO.QConsulta.FieldByName('PLACA').AsString + ' : ' + MDO.QConsulta.FieldByName('EQUIPAMENTO').AsString +
                   '; Forma Pagamento: ' + MDO.QConsulta.FieldByName('FORMAPAG').AsString +
                   '; Tipo Pagamento: ' + MDO.QConsulta.FieldByName('TIPOPAG').AsString +
                   '; Valor Produtos: ' + FormatFloat('0.00', MDO.QConsulta.FieldByName('TPROD').AsCurrency)  +
                   '; Valor Serviços: ' + FormatFloat('0.00', MDO.QConsulta.FieldByName('TSERV').AsCurrency)  +
                   '; Valor OS: ' + FormatFloat('0.00', MDO.QConsulta.FieldByName('TOTAL').AsCurrency)) ;


            MDO.Query.close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add(' Delete from ordem where ordem.cod_ordem = :Codigo ');
            MDO.Query.ParamByName('Codigo').AsInteger := pkCodigoOrdem;
            MDO.Query.ExecSQL;
            try
              MDO.Transac.CommitRetaining;
              pkCodigoOrdem := -999;
              xStateOrdem := '';
            except
              MDO.Transac.RollbackRetaining;
            end;
          end;
        end;
      end;
    end
    else
    begin
      RefreshOrdem;
      if not MDO.QConsulta.IsEmpty then
      begin
        if MDO.QConsulta.FieldByName('status').AsString = xStatusOrdemFechado
          then
        begin
          MessageDlg(xMsgOrdemFechada + #13 + '[GravaOrdemServico]', mtWarning,
            [mbOK], 0);
        end
        else
        begin
          GravaValoresOrdemServico;
        end;
      end;
    end;

  except
    Result := False;
  end;
end;

procedure TfrmOrdemMecanica.BitBtn6Click(Sender: TObject);
begin
  try
      Auditoria(IntToStr(pkCodigoOrdem), 'Cancela Gravação de OS', 'Tela de cadastro',
                'Número: ' + edNumero.Text +
                '; Data OS: ' + edDataAbertura.Text +
                '; Cliente: ' + edCliente.Text +
                '; Veículo: ' + edVeiculo.Text +
                '; Valor Produtos: ' + FormatFloat('0.00',  edValorLiquidoProduto.ValueNumeric)  +
                '; Valor Serviços: ' + FormatFloat('0.00', edValorLiquidoProduto.ValueNumeric)  +
                '; Valor OS: ' + FormatFloat('0.00', edValorTotalOS.ValueNumeric)) ;

    ApagarOrdemVazia;
  finally
    AtivaPainelConsulta(true);
    FiltraOrdem;
    xStateOrdem := '';
  end;
end;

procedure TfrmOrdemMecanica.BitBtn3Click(Sender: TObject);
begin
  try
    //AtivaPainelConsulta(True);
    FMenu.TIPOAUX := 'VENDEDOR';

    FMenu.XPreSel := True;
    FMenu.XFieldPesqPreSel := 'COD_INTERNO';
    FMenu.XCodPesqPresSel := edCodVendedor.Text;
    if AbrirForm(TFFuncionario, FFuncionario, 1) = 'Selected' then
    begin
      pkCodigoVendedor :=
        DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
      edCodVendedor.Text :=
        DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
      edVendedor.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;

      // busca a comissão do funcionario
      DMPESSOA.TALX.Close;
      DMPESSOA.TALX.SQL.Clear;
      DMPESSOA.TALX.SQL.Add(' SELECT FUNCARGO.COMISSAO_VVPRO FROM FUNCARGO ');
      DMPESSOA.TALX.SQL.Add(' WHERE FUNCARGO.COD_FUNCIONARIO = :VENDEDOR ');
      DMPESSOA.TALX.ParamByName('VENDEDOR').AsInteger := XCOD_VENDEDOR;
      DMPESSOA.TALX.Open;

      xAliqComiss := DMPESSOA.TALX.FieldByName('COMISSAO_VVPRO').AsCurrency;
    end
    else
    begin
      XCOD_VENDEDOR := -1;
      edCodVendedor.Text := '';
      edVendedor.Text := '';
      xAliqComiss := 0;
    end;
  except

  end;
end;

procedure TfrmOrdemMecanica.BtnNovoClick(Sender: TObject);
begin
  try
    AtivaPainelConsulta(false);
    LimpaCamposCadastro;
    pkCodigoOrdem := -999;
    FiltraItens;
    xStateOrdem := 'NOVO';
    edDataAbertura.Text := DateToStr(date());
    edCodCliente.SetFocus;
    Auditoria(IntToStr(pkCodigoOrdem), 'Nova Ordem', 'Tela de consulta',
               'Status: ' + cbFiltroStatus.Text +
               '; Andamento: ' + cbFiltroAndamento.Text +
               '; Número: ' + edFiltroNumeroOrdem.Text +
               '; NF-e: ' + edFiltroNumeroNfe.Text +
               '; NFS-e: ' + edFiltroNumeroNfse.Text +
               '; Placa: ' + edFiltroPlaca.Text +
               '; Cliente: ' + edFiltroCliente.Text +
               '; Data: ' + edFiltroDataIni.Text + ' - ' +edFiltroDataFim.Text);

  except
  end;
end;

procedure TfrmOrdemMecanica.BtnConsultarClick(Sender: TObject);
begin
  try
    if ConsultaOrdemServico = True then
    begin
      //FiltraItens;
      if ConsultaOrdemServicoPopulaCampos = False then
        MessageDlg('Ocorreram falhas ao carregar os dados. ' + #13 + #10 +
          'Verifique todas as informações antes de gravar a Ordem de Serviço.',
          mtInformation, [mbOK], 0);

      AtivaPainelConsulta(false);
      FiltraItens;
      xStateOrdem := 'EDIT';
      Auditoria(IntToStr(pkCodigoOrdem), 'Consulta Ordem', 'Tela de consulta',
               'Número: ' + DmServ.WOrdem.FieldByName('NUMERO').AsString +
               '; Data OS: ' + DmServ.WOrdem.FieldByName('DTABERT').AsString +
               '; Cliente: ' + DmServ.WOrdem.FieldByName('CLIENTE').AsString +
               '; Veículo: ' + DmServ.WOrdem.FieldByName('PLACA').AsString + ' : ' + DmServ.WOrdem.FieldByName('EQUIPAMENTO').AsString +
               '; Valor Produtos: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TPROD').AsCurrency)  +
               '; Valor Serviços: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TSERV').AsCurrency)  +
               '; Valor OS: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TOTAL').AsCurrency)) ;

    end;
  except
    MessageDlg('Falha ao consultar a Ordem de Serviço. Reinicie o sistema.',
      mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmOrdemMecanica.FormActivate(Sender: TObject);
begin
   XTipoProc := 0; //0 = procura de produtos normal 1=procura pelo nome
   xAliquotaIss := DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency;
   xRetemISS := false;

   //******************************************//
   // Controle de visibilidade de componentes //
   //******************************************//

   If (DMMACS.TLoja.FieldByName('FORMAFECHAMENTOOS').AsString = '') or (DMMACS.TLoja.FieldByName('FORMAFECHAMENTOOS').AsString = Null) Then
       xTipoPagamentoOS := 'TELA PAGAMENTOS'
   Else
       xTipoPagamentoOS := DMMACS.TLoja.FieldByName('FORMAFECHAMENTOOS').AsString;
          
   if (DMMACS.TLoja.FieldByName('USARVENDEDOROSMEC').AsString = '1') then
       pVendedor.Visible := True
   else
       pVendedor.Visible := False;

   If (DMMACS.TLoja.FieldByName('DESATIVASITE').AsString = '1') Then
       pCamposPlaca.Visible := False
   Else
       pCamposPlaca.Visible := True;

  AtivaPainelConsulta(True);       
end;

procedure TfrmOrdemMecanica.edValorDescontoProdutoExit(Sender: TObject);
begin
   if (edValorLiquidoProduto.ValueNumeric = 0) and (edValorDescontoProduto.ValueNumeric <> 0) then
   begin
       Mensagem('A T E N Ç Ã O !', 'Não há produtos na Ordem para conceder desconto.', '', 1, 1, False, 'a');
       edValorDescontoProduto.ValueNumeric := 0;
       Exit;
   end;
   FiltraItens; //O Filtra itens chama tbm o aplicardescontos
//   AplicaDescontos;
end;

procedure TfrmOrdemMecanica.edValorLiquidoProdutoExit(Sender: TObject);
begin
   //FiltraItens;
   if xValorTotalProduto <> edValorLiquidoProduto.ValueNumeric then
   begin
       If xValorTotalProduto > 0
       Then Begin
           edPercentoDescontoProduto.ValueNumeric := ((xValorTotalProduto  - edValorLiquidoProduto.ValueNumeric) * 100) / xValorTotalProduto;
           edValorDescontoProduto.ValueNumeric := xValorTotalProduto  - edValorLiquidoProduto.ValueNumeric;
       End
       Else Begin
           edPercentoDescontoProduto.ValueNumeric := 0;
           edValorDescontoProduto.ValueNumeric := 0;
       End;
   end
   else begin
       edValorDescontoProduto.ValueNumeric := 0;
       edPercentoDescontoProduto.ValueNumeric := 0;
   end;
   edValorTotalOS.ValueNumeric := edValorLiquidoServico.ValueNumeric + edValorLiquidoProduto.ValueNumeric;
   edValorDescontoOS.ValueNumeric := xValorTotalOS - edValorTotalOS.ValueNumeric;
end;

function TfrmOrdemMecanica.EfetuaCalculoISS: Boolean;
begin
   xValorISS := edValorLiquidoServico.ValueNumeric * (xAliquotaIss / 100);
end;

function TfrmOrdemMecanica.RetemIss: Boolean;
begin
   if xRetemISS then
   begin
       edValorLiquidoServico.ValueNumeric := edValorLiquidoServico.ValueNumeric - xValorISS;
       edValorTotalOS.ValueNumeric := edValorLiquidoServico.ValueNumeric + edValorLiquidoProduto.ValueNumeric;
   end;
end;

procedure TfrmOrdemMecanica.edValorDescontoServicoExit(Sender: TObject);
begin
   if (edValorLiquidoServico.ValueNumeric = 0) and (edValorDescontoServico.ValueNumeric <> 0) then
   begin
       Mensagem('A T E N Ç Ã O !',
               'Não há serviços na ordem para conceder desconto!', '', 1, 1, False, 'a');
       edValorDescontoServico.ValueNumeric := 0;
       Exit;
   end;
   FiltraItens; //O Filtra itens chama tbm o aplicardescontos
   //AplicaDescontos;
   EfetuaCalculoISS;
   RetemIss;
end;

procedure TfrmOrdemMecanica.edValorLiquidoServicoExit(Sender: TObject);
begin
   if xValorTotalServico <> edValorLiquidoServico.ValueNumeric then
   begin
       If xValorTotalServico > 0
       Then Begin
           edPercentoDescontoServico.ValueNumeric := ((xValorTotalServico  - edValorLiquidoServico.ValueNumeric) * 100) / xValorTotalProduto;
           edValorDescontoServico.ValueNumeric := xValorTotalServico  - edValorLiquidoServico.ValueNumeric;
       End
       Else Begin
           edPercentoDescontoServico.ValueNumeric := 0;
           edValorDescontoServico.ValueNumeric := 0;
       End;
   end
   else begin
       edValorDescontoServico.ValueNumeric := 0;
   end;
   edValorTotalOS.ValueNumeric := edValorLiquidoServico.ValueNumeric + edValorLiquidoProduto.ValueNumeric;
   edValorDescontoOS.ValueNumeric := xValorTotalOS - edValorTotalOS.ValueNumeric;
end;

procedure TfrmOrdemMecanica.edPlacaExit(Sender: TObject);
begin
  if edPlaca.Text = '' then
  begin
    pkCodigoVeiculo := -999;
    edPlaca.Text := '';
    edVeiculo.Text := '';
    edPlaca02.Text := '';
    edPlaca03.Text := '';
    edVeiculo.Text := '';
  end;
end;

procedure TfrmOrdemMecanica.edPlacaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (edPlaca.SelLength > 0) and not (KEY = 8) and not (KEY = 13) then
    edPlaca.Text := '';
  if key = 13 then
  begin
    if edPlaca.Text <> '' then
      PesquisaCodigoEquipamento(edPlaca.Text, true);
  end;

end;

procedure TfrmOrdemMecanica.edPlacaKeyPress(Sender: TObject;
  var Key: Char);
var
  xPlacaLimpa: string;
begin
  xPlacaLimpa := Trim(UpperCase(StringReplace(StringReplace(edPlaca.Text, '-',
    '', [rfReplaceAll]), ' ', '', [rfReplaceAll])));

  if (Length(xPlacaLimpa) = 4) and not (Key = #8) and not (Key = #13) and not
    (Key = #27) then
  begin
    if not (Key in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[1] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[2] in ['a'..'z', 'A'..'Z'])
      and (xPlacaLimpa[3] in ['a'..'z', 'A'..'Z']) then // PADRÃO ANTIGO ABC 1234
    begin
      edPlaca.Text := xPlacaLimpa[1] + xPlacaLimpa[2] + xPlacaLimpa[3] + '-' +
        xPlacaLimpa[4];
      edPlaca.SelStart := 5;
    end;
  end;

  if (Length(xPlacaLimpa) = 7) and not (Key = #8) and not (Key = #13) and not
    (Key = #27) then
    Key := #0;
end;


function TfrmOrdemMecanica.FechaOrd(CODPEDIDO: string; DTFECH: string): Boolean;
var
  ATUFINANC: Boolean; //controle financeiro foram efetivados
  XVLRDESP: Real; //O VLR DAS DESPESAS É DIV POR DOIS ENTRE PROD E SERV.
  //Edmar - 02/03/2015 - Variaveis auxiliares que armazenam os valores que devem ser subtraidos
  //ao valor total de produto ou de serviço no momento de lançar o valor no caixa ou a cta receber
  XVLR_PROD_OS, XVLR_SERV_OS: Real;
  XVLR_FINALPROD, XVLR_FINALSERV: Real;
  XVLR_RATEIO, XPARTES_RATEIO: Real;
begin
{
  FechaOrd := True;
  ATUFINANC := True;
  XVLR_PROD_OS := 0;
  XVLR_SERV_OS := 0;

  //pkCodigoOrdem := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;

  DMServ.IBT.CommitRetaining;
  FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(pkCodigoOrdem),
    '');
  if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM',
    DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '') = True then
  begin

    XVLRDESP := DMServ.TOrd.FIELDBYNAME('TOTDESP').AsCurrency / 2;

    FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

    //***********************************************//
    // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **//
    //***********************************************//
    FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE',
      DMServ.TOrd.FIELDBYNAME('COD_CLIENTE').AsString, '');
    if xGeraFinanceiro then
    begin
      if CBPagamento.Text = 'Crédito' then
      begin
        DMServ.Alx.Close;
        DMServ.Alx.SQL.Clear;
        DMServ.Alx.SQL.Add(' SELECT VWCLIENTE.COD_CLIENTE, VWCLIENTE.COD_PESSOA, PESSOA.VLRCREDITO CREDITO FROM VWCLIENTE ');
        DMServ.Alx.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = VWCLIENTE.COD_PESSOA ');
        DMServ.Alx.SQL.Add(' WHERE (VWCLIENTE.COD_CLIENTE = :CLIENTE) AND (PESSOA.VLRCREDITO IS NOT NULL) AND (PESSOA.VLRCREDITO > 0) ');
        DMServ.Alx.ParamByName('CLIENTE').AsInteger :=
          DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger;
        DMServ.Alx.Open;

        if not DMServ.Alx.IsEmpty then
        begin
          try
            DMServ.TAlx1.Close;
            DMServ.TAlx1.SQL.Clear;
            if DMServ.Alx.FieldByName('CREDITO').AsCurrency <=
              DMServ.TOrd.FieldByName('TOTORD').AsCurrency then
            begin
              DMServ.TAlx1.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = 0 WHERE (PESSOA.COD_PESSOA = :PESSOA) ')
            end
            else
            begin
              DMServ.TAlx1.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = PESSOA.VLRCREDITO - :VALOR_ORDEM WHERE (PESSOA.COD_PESSOA = :PESSOA) ');
              DMServ.TAlx1.ParamByName('VALOR_ORDEM').AsCurrency :=
                DMServ.TOrd.FieldByName('TOTORD').AsCurrency;
            end;
            DMServ.TAlx1.ParamByName('PESSOA').AsInteger :=
              DMServ.Alx.FieldByName('COD_PESSOA').AsInteger;
            DMServ.TAlx1.ExecSQL;
          except
          end;
        end;
      end;
      XVLR_FINALPROD := ((DMServ.TOrd.FieldByName('TOTORD').AsCurrency -
        (DMServ.TOrd.FieldByName('TOTSERV').Value + XVLRDESP) - XVLR_SERV_OS -
        XVLR_PROD_OS) + XVLRDESP);
      XVLR_FINALSERV := ((DMServ.TOrd.FieldByName('TOTORD').AsCurrency -
        DMServ.TOrd.FieldByName('TOTPROD').Value - XVLR_PROD_OS -
        XVLR_SERV_OS) + XVLRDESP);

      if XVLR_FINALPROD > 0 then
        XVLR_FINALPROD := XVLR_FINALPROD
      else
        XVLR_FINALSERV := XVLR_FINALSERV;

      if CBPagamento.Text = 'Multiplo' then
      begin
        try
          StrToDate(EdDtFech.Text);
        except
          MessageDlg('Por favor, verifique a data de fechamento. Ela não passou na validação', mtWarning, [mbOK], 0);
          EdDtFech.SetFocus;
        end;
        if FecConta('ORDEM', pkCodigoOrdem, 0,
          DMServ.TOrd.FieldByName('TOTPROD').AsCurrency - XVLR_PROD_OS,
          DMServ.TOrd.FieldByName('TOTSERV').AsCurrency - XVLR_SERV_OS,
            XCOD_CONTA, XCOD_CONTASERV, StrToDate(EdDtFech.Text)) = True then
          ATUFINANC := True
        else
          ATUFINANC := False;
      end
      else
      begin
        if FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG',
          IntToStr(pkCodigoFormaPagamento), '') = True then
        begin
          if DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA'
            then
          begin
            if CBPagamento.Text = 'Cheque' then
            begin
              if LancChEnt(XCOD_CONTA, XCOD_CONTASERV, 'Fech. Ordem' +
                DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' +
                DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '',
                XVLR_FINALPROD, XVLR_FINALSERV, '', '', 0, '', '', 'ORDEM',
                IntToStr(pkCodigoOrdem)) = True then
                ATUFINANC := True
              else //informa que a finalização do financeiro falhou
                ATUFINANC := False;
            end;
            if CBPagamento.Text = 'Cartão' then
            begin
              if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,
                XCOD_CONTA, '(Produtos) Fech. Ordem Serv. ' +
                DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' +
                DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALPROD,
                'TOTPROD', StrToInt(CodPedido), 'ORDSERV',
                StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',
                DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date()))
                = True then
                ATUFINANC := True
              else
              begin //informa que a finalização do financeiro falhou
                ATUFINANC := False;
                Exit;
              end;
              if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,
                XCOD_CONTA, '(Serviços) Fech. Ordem Serv. ' +
                DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' +
                DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALSERV,
                'TOTSERV', StrToInt(CodPedido), 'ORDSERV',
                StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',
                DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date()))
                  = TRUE then
                ATUFINANC := True
              else
                ATUFINANC := False;
            end;

            if CBPagamento.Text = 'Pix' then
            begin
              if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,
                XCOD_CONTA, '(Produtos) Fech. Ordem Serv. ' +
                DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' +
                DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALPROD,
                'TOTPROD', StrToInt(CodPedido), 'ORDSERV',
                StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. Pix. ', 'S',
                DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date()))
                = True then
                ATUFINANC := True
              else
              begin //informa que a finalização do financeiro falhou
                ATUFINANC := False;
                Exit;
              end;

              if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,
                XCOD_CONTA, '(Serviços) Fech. Ordem Serv. ' +
                DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' +
                DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALSERV,
                'TOTSERV', StrToInt(CodPedido), 'ORDSERV',
                StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. Pix. ', 'S',
                DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date()))
                = TRUE then
                ATUFINANC := True
              else
                ATUFINANC := False;
            end;

            if (CBPagamento.Text <> 'Cheque') and (CBPagamento.Text <> 'Cartão')
              and (CBPagamento.Text <> 'Pix') then
            begin
              if (DMServ.TOrd.FieldByName('TOTPROD').Value) > 0 then
              begin
                if LanCaixa(-1, DateToStr(Date()), XCOD_CONTA,
                  '(Produtos) Fech. Ordem Serv. ' +
                  DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' +
                  DMPESSOA.WCliente.FieldByName('NOME').AsString,
                  XVLR_FINALPROD, 'ORDSERV', StrToInt(CodPedido),
                    CBPagamento.Text, 'E',
                  DMServ.TOrd.FieldByName('NUMERO').AsString,
                  StrToDate(EdDtFech.Text), '1') = True then
                  ATUFINANC := True
                else //informa que a finalização do financeiro falhou
                  ATUFINANC := False;
              end;
              if (DMServ.TOrd.FieldByName('TOTSERV').Value + XVLRDESP) > 0 then
              begin
                if LanCaixa(-1, DateToStr(Date()), XCOD_CONTASERV,
                  '(Serviços) Fech. Ordem Serv. ' +
                  DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' +
                  DMPESSOA.WCliente.FieldByName('NOME').AsString,
                  XVLR_FINALSERV,
                  'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E',
                  DMServ.TOrd.FieldByName('NUMERO').AsString,
                  StrToDate(EdDtFech.Text), '1') = True then
                  ATUFINANC := True
                else
                  ATUFINANC := False;
              end;
            end;
          end
          else
          begin //Não é à vista
            if LancConta('ORDEM', StrToInt(CodPedido),
              DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger,
              CBPagamento.Text,
              XVLR_FINALPROD, XVLR_FINALSERV, XCOD_CONTA, XCOD_CONTASERV, -1,
              'Fech. Ordem de Serviço ' +
              DMServ.TOrd.FieldByName('NUMERO').AsString,
                pkCodigoFormaPagamento,
              DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(),
              0,
              EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString) =
              True then
              ATUFINANC := True
            else
              ATUFINANC := False;
          end;
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
    if ATUFINANC = True then
    begin //então tenta-se confirmar operação
      try
        If RefiltraOrdem = True
        Then Begin
           FechaOrdemServicoFinal;
           DMServ.IBT.CommitRetaining;
           DMBANCO.IBT.CommitRetaining;
           DMCAIXA.IBT.CommitRetaining;
           MDO.Transac.CommitRetaining;
           Mensagem('INFORMAÇÃO AO USUÁRIO',
                       'ORDEM DE SERVIÇO FECHADA COM SUCESSO!', '', 1, 1, false, 'a');
        End;
        FiltraOrdem;
      except
        MessageDlg('Ocorreram problemas ao fechar a ordem de serviço. Reinicie o sistema e verifique os lançamentos no financeiro', mtError, [mbOK], 0);
      end;
    end
    else
    begin
      MessageDlg('Ocorreram problemas ao fechar a ordem de serviço. Reinicie o sistema e verifique os lançamentos no financeiro', mtError, [mbOK], 0);
      FechaOrd := False;
    end;
  end
  else
  begin //else de filtragem de pedido
    FechaOrd := false;
  end;
  }
end;

procedure TfrmOrdemMecanica.BitBtn7Click(Sender: TObject);
begin
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE',
    IntToStr(pkCodigoCliente), '');
  if AbrirForm(TFCadEquipamento, FCadEquipamento, 1) = 'Selected' then
  begin
    pkCodigoVeiculo := DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
    edPlaca.Text := DMPESSOA.TEquip.FieldByName('PLACA').AsString;
    edVeiculo.Text := DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
    // busca o cliente q esta atrelado ao equipamento
    FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE',
      DMPESSOA.TEquip.FieldByName('COD_CLIENTE').AsString, '');
    if not DMPESSOA.WCliente.IsEmpty then
    begin
      if DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString = '1' then
        MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS',
          mtWarning, [mbOK], 0);

      pkCodigoCliente := DMPESSOA.WCliente.FieldByname('COD_CLIENTE').AsInteger;
      edCodCliente.Text :=
        DMPESSOA.WCliente.FieldByname('cod_interno').AsString;
      edCliente.Text := DMPESSOA.WCliente.FieldByname('nome').AsString;
      if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
        DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '') = True then
      begin
        edHistoricoCliente.Text :=
          DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString;
        edHistoricoCliente.Visible := True;
      end
      else
      begin
        edHistoricoCliente.Text := '';
        edHistoricoCliente.Visible := False;
      end;
    end
    else
    begin
      pkCodigoCliente := -999;
      edCodCliente.Text := '';
      edCliente.Text := '';
      edHistoricoCliente.Text := '';
    end;

  end
  else
  begin
    if pkCodigoVeiculo = -999 then
    begin
      edPlaca.Text := '';
      edVeiculo.Text := '';
      edPlaca.SetFocus;
    end;
  end;
  XLiberaDados := '';
  edPlacaExit(Sender);
end;

procedure TfrmOrdemMecanica.BitBtn5Click(Sender: TObject);
var
  cds: TClientDataSet;
  txtPlaca: String;
begin
   inherited;
   txtPlaca := edPlaca.Text;
   cds := GetPlacaInfo(Trim(edPlaca.Text));
   edPlaca.Text := txtPlaca;
   try
       if edPlaca.Text <> '' then
           PesquisaCodigoEquipamento(edPlaca.Text, true);
           
       edPlaca.Text := txtPlaca;
       if pkCodigoCliente > 0 then
       begin
           if pkCodigoVeiculo <= 0 then
           begin
               if MessageDlg('Cadastrar o veículo ' + edPlaca.Text + '/' +
                   cds.FieldByNAme('MARCAMODELO').Value + '  para a pessoa ' +
                   edCliente.Text + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                   pkCodigoVeiculo := MDO.InsertNewEquipamento;
                   MDO.AjustaNewEquipamento(pkCodigoVeiculo,
                   pkCodigoCliente, cds.FieldByNAme('MARCAMODELO').Value,
                       cds.FieldByNAme('MARCA').Value, cds.FieldByNAme('MODELO').Value,
                       cds.FieldByNAme('ANO').Value, cds.FieldByNAme('COR').Value,
                       cds.FieldByNAme('CHASSI').Value, edPlaca.Text, Null, Null, 1,
                       Null);
                   if edPlaca.Text <> '' then
                   begin
                       PesquisaCodigoEquipamento(edPlaca.Text, true);
                       pkCodigoVeiculo :=
                       DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
                   end;
               end;
           end;
       end
       else begin
           MessageDlg('Selecione o cliente para poder cadastrar o veículo',
                   mtInformation, [mbOK], 0);
           btnAbreCliente.SetFocus;
       end;
   finally
       cds.Free;
   end;
end;

procedure TfrmOrdemMecanica.edCodClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_return then
  begin
    if FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '',
      ' COD_INTERNO=' + #39 + edCodCliente.Text + #39) = True then
    begin //CASO CONSEGUIU SELECIONAR CLIENTE
      pkCodigoCliente := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
      edCliente.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
      edCodCliente.Text :=
        DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
      if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
        DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '') = True then
      begin
        edHistoricoCliente.Text :=
          DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString;
        edHistoricoCliente.Visible := True;
      end
      else
      begin
        edHistoricoCliente.Text := '';
        edHistoricoCliente.Visible := false;
      end;
    end
    else
    begin //CASO NÃO CONSEGUIU SELECIONAR CLIENTE
      pkCodigoCliente := -999;
      edCliente.Text := '';
      edCodCliente.Text := '';
      edHistoricoCliente.Text := '';
    end;
  end;
end;

procedure TfrmOrdemMecanica.btnAbreClienteClick(Sender: TObject);
begin
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');
  if AbrirForm(TFCliente, FCliente, 1) = 'Selected' then
  begin
    if DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString = '1' then
      MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS',
        mtWarning, [mbOK], 0);
    pkCodigoCliente := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
    edCodCliente.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
    edCliente.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
    DMPESSOA.TCliente.Close;
    DMPESSOA.TCliente.SQL.Clear;
    DMPESSOA.TCliente.SQL.Add(' Select * from cliente where cliente.cod_cliente=:Codigo ');
    DMPESSOA.TCliente.ParamByName('Codigo').AsInteger :=
      DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
    DMPESSOA.TCliente.Open;
    if not DMPESSOA.TCliente.IsEmpty then
    begin
      edHistoricoCliente.Text :=
        DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString;
      edHistoricoCliente.Visible := True;
    end
    else
    begin
      edHistoricoCliente.Text := '';
      edHistoricoCliente.Visible := False;
    end;
  end
  else
  begin
    if pkCodigoCliente = -999 then
    begin
      edCodCliente.Text := '';
      edCliente.Text := '';
      edHistoricoCliente.Text := '';
    end;
  end;
end;

procedure TfrmOrdemMecanica.edCodVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_return then
  begin
    if FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO',
      Trim(edCodVendedor.Text), '') = True then
    begin //CASO CONSEGUIU SELECIONAR CLIENTE
      pkCodigoVendedor :=
        DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
      edVendedor.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      edCodVendedor.Text :=
        DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;

      // busca a comissão do funcionario
      DMPESSOA.TALX.Close;
      DMPESSOA.TALX.SQL.Clear;
      DMPESSOA.TALX.SQL.Add(' SELECT FUNCARGO.COMISSAO_VVPRO FROM FUNCARGO ');
      DMPESSOA.TALX.SQL.Add(' WHERE FUNCARGO.COD_FUNCIONARIO = :VENDEDOR ');
      DMPESSOA.TALX.ParamByName('VENDEDOR').AsInteger := XCOD_VENDEDOR;
      DMPESSOA.TALX.Open;

      xAliqComiss := DMPESSOA.TALX.FieldByName('COMISSAO_VVPRO').AsCurrency;
    end
    else
    begin //CASO NÃO CONSEGUIU SELECIONAR CLIENTE
      pkCodigoVendedor := -999;
      edVendedor.Text := '';
      edCodVendedor.Text := '';

      xAliqComiss := 0;
    end;
  end;
end;


procedure TfrmOrdemMecanica.btnGravarClick(Sender: TObject);
begin
   try
       //ApagarOrdemVazia;
       RefreshOrdem;       
       If pkCodigoOrdem = -999
       Then Begin
           if ValidaDadosInsereOrdemServico = True then
           begin
               if xStateOrdem = 'NOVO' then
               begin
                   if IncrementaNumeroOS = True then
                   begin
                       InsereDadosInsereOrdemServico;
                       If GravaOrdemServico = True
                       Then Begin
                           AtivaPainelConsulta(true);
                           LimpaCamposCadastro;
                           xStateOrdem := '';
                       End;
                       ValidaOSDuplicada;

                   end;
               end;
           end;
       End
       Else Begin
           if MDO.QConsulta.FieldByName('status').AsString = xStatusOrdemAberto then
           begin
               if ValidaDadosInsereOrdemServico = True then
                   if ValidaOSNumeroDuplicado = True then
                       If GravaOrdemServico = True
                       Then Begin
                           AtivaPainelConsulta(true);
                           LimpaCamposCadastro;
                           xStateOrdem := '';
                       End;
           end;
       End;
       FiltraOrdem;
  Except
  end;
end;

procedure TfrmOrdemMecanica.btnInsereProdutoLocalizeClick(Sender: TObject);
var
  aux: string;
begin
  aux := FMenu.TIPOAUX;
  FMenu.TIPOAUX := 'PEDVENDA';
  //abre formulario de produto para seleção
  if AbrirForm(TFProduto, FProduto, 1) = 'Selected' then
  begin
    //Depois de selecionado escreve nas labels o produto
    EscreveLabelsPROD;
    edInsereProdutoQuantidade.ValueNumeric := 1;
    edValorDescontoServicoExit(sender);
  end
  else
  begin
    LimpaCamposPesquisaProduto;
  end;
  FMenu.TIPOAUX := aux;
end;

procedure TfrmOrdemMecanica.edInsereProdutoQuantidadeExit(Sender: TObject);
begin
  edInsereProdutoValorTotal.ValueNumeric :=
    edInsereProdutoQuantidade.ValueNumeric *
    edInsereProdutoValorUnitario.ValueNumeric;
end;

procedure TfrmOrdemMecanica.edInsereProdutoValorUnitarioExit(
  Sender: TObject);
begin
  edInsereProdutoValorTotal.ValueNumeric :=
    edInsereProdutoQuantidade.ValueNumeric *
    edInsereProdutoValorUnitario.ValueNumeric;
end;

procedure TfrmOrdemMecanica.edInsereProdutoValorTotalExit(Sender: TObject);
begin
  edInsereProdutoValorUnitario.ValueNumeric :=
    edInsereProdutoValorTotal.ValueNumeric /
    edInsereProdutoQuantidade.ValueNumeric;
end;

procedure TfrmOrdemMecanica.edInsereProdutoDescricaoEnter(Sender: TObject);
begin
  DMESTOQUE.WSimilar.Close;
  DMESTOQUE.WSimilar.SQL.Clear;
  DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO ='
    + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
  DMESTOQUE.WSimilar.Open;
end;

procedure TfrmOrdemMecanica.edInsereProdutoDescricaoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var
  str: string;
begin
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
  end;

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
      if (DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'NC') then
      begin
        if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT',
          UpperCase(edInsereProdutoDescricao.Text), '') = True then
        begin
          EscreveLabelsPROD;
          edInsereProdutoQuantidade.Text := '1,00';
        end
        else
        begin
          if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE',
            UpperCase(edInsereProdutoDescricao.Text), '') = True then
          begin
            EscreveLabelsPROD;
            edInsereProdutoQuantidade.Text := '1,00';
          end
          else
          begin
            if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA',
              UpperCase(edInsereProdutoDescricao.Text), '') = True then
            begin
              EscreveLabelsPROD;
              edInsereProdutoQuantidade.Text := '1,00';
            end
            else
            begin
              if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'DESCRICAO',
                UpperCase(edInsereProdutoDescricao.Text), '') = True then
              begin
                EscreveLabelsPROD;
                edInsereProdutoQuantidade.Text := '1,00';
              end
              else
              begin
                LimpaCamposPesquisaProduto;
              end;
            end;
          end;
        end;
      end;
    end
    else
    begin
      str := edInsereProdutoDescricao.Text;
      if str[1] = '.' then
      begin
        edInsereProdutoDescricao.Text := TiraCaracterEmPosicao(str, 1);
        FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '',
          ' (COD_LOJA=' + FMenu.LCODLOJA.Caption +
          ') AND (upper(CODFABRICANTE) like upper(' + #39 +
          edInsereProdutoDescricao.Text + '%'
          + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 +
          ') ORDER BY DESCRICAO');
      end
      else
      begin
        FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '',
          ' (COD_LOJA=' + FMenu.LCODLOJA.Caption +
          ') AND (upper(DESCRICAO) like upper(' + #39 +
          edInsereProdutoDescricao.Text + '%' + #39
          + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 +
          ') ORDER BY DESCRICAO');
      end;
    end;
  end;
  if Key = Vk_F2 then
  begin
    DMESTOQUE.WSimilar.Close;
    DMESTOQUE.WSimilar.SQL.Clear;
    DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR where (vwsimilar.descricao like upper(' + #39 + edInsereProdutoDescricao.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO='
      + #39 + 'S' + #39 + ')');
    DMESTOQUE.WSimilar.Open;
    pkCodigoEstoque := StrToInt(DBGrid1.Columns[0].Field.Text);
    edInsereProdutoQuantidade.Text := '1,00';
  end;
end;

procedure TfrmOrdemMecanica.edInsereProdutoDescricaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  PListaProdutos.Top := 84;
  PListaProdutos.Left := 0;
  PListaProdutos.Visible := True;
  PListaProdutos.BringToFront;

  if Length(edInsereProdutoDescricao.Text) = 1 then
    edInsereProdutoDescricaoEnter(sender);

  if (Key = VK_ESCAPE) or (edInsereProdutoDescricao.Text = '') then
  begin
    edInsereProdutoDescricaoEnter(sender);

    PListaProdutos.Visible := False;
    PListaProdutos.SendToBack;
    edInsereProdutoDescricao.Text := '';
    lPesquisa.Caption := 'Pesquisa:';

    xPesquisaDesc := False;
    xPesquisaCtrlInt := False;
    xPesquisaCodFabr := False;

    LimpaCamposPesquisaProduto;

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
      edInsereProdutoDescricao.Text := '';
      edInsereProdutoQuantidade.Text := '1,00';
    end
    else
      MessageDlg('ATENÇÃO!' + #13 + #10 +
        'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

    edInsereProdutoDescricaoEnter(sender);
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

  if DMESTOQUE.WSimilar.Locate('DESCRICAO', edInsereProdutoDescricao.Text,
    [loCaseInsensitive,
      loPartialKey]) then
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

    DMESTOQUE.WSimilar.Locate('DESCRICAO', edInsereProdutoDescricao.Text,
      [loCaseInsensitive, loPartialKey]);

    lPesquisa.Caption := 'Descrição:';
    XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

    Exit;
  end;

  if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', edInsereProdutoDescricao.Text,
    [loCaseInsensitive, loPartialKey]) then
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

    DMESTOQUE.WSimilar.Locate('CODFABRICANTE', edInsereProdutoDescricao.Text,
      [loCaseInsensitive, loPartialKey]);

    lPesquisa.Caption := 'Cod. Fabricante:';
    XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

    Exit;
  end;

  if DMESTOQUE.WSimilar.Locate('CONTRINT', edInsereProdutoDescricao.Text,
    [loCaseInsensitive, loPartialKey]) then
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

    DMESTOQUE.WSimilar.Locate('CONTRINT', edInsereProdutoDescricao.Text,
      [loCaseInsensitive, loPartialKey]);

    lPesquisa.Caption := 'Ctrl. Interno:';
    XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

    Exit;
  end;

  XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
  lPesquisa.Caption := 'Fora de Pesquisa';
end;

procedure TfrmOrdemMecanica.btnInsereProdutoClick(Sender: TObject);
var
  ResultadoValidacoes: Boolean;
begin
  ResultadoValidacoes := True;

  if ((edInsereProdutoValorTotal.ValueNumeric /
    edInsereProdutoQuantidade.ValueNumeric) <
    DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency) then
  begin
    if Mensagem('A T E N Ç Ã O !',
      'O Produto está com o Valor abaixo da margem de segurança. Deseja continuar?',
      '', 2, 3, False, 'c') = 2 then
    begin
      FMenu.TIPOREL := 'VERIFICMARGEM';
      if ControlAccess('MARGEMSEG', '') = False then
      begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
        if Mensagem('A T E N Ç Ã O !', 'Usuário sem permissão.' + #13 +
          'Deseja solicitar a senha de um administrador?', '', 2, 3, False, 'c')
            = 2 then
        begin
          AbrirForm(TFSENHA, FSENHA, 0);
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

  //Verifica se a Margem de Seguranca do produto foi obedecida
  if XLIBMARGEMSEG = False then
  begin
    if ControlAccess('MARGEMSEG', '') = False then
      Mensagem('OPÇÃO BLOQUEADA',
        'Você não obteve permissão para vender este produto abaixo da margem de segurança!',
        '', 1, 1, False, 'a');
    edInsereProdutoValorUnitario.SetFocus;
    ResultadoValidacoes := False;
  end;
  if ValidaDadosInsereProdutoOrdemServico = False then
    ResultadoValidacoes := False;

  if ResultadoValidacoes = True then
  begin
    If ValidaDadosInsereProdutoDuplicadoLista = False
    Then Begin
       if xStateOrdem = 'NOVO' then
       begin
           if IncrementaNumeroOS = True then
           begin
               InsereDadosInsereOrdemServico;
               ValidaOSDuplicada;
           end;
       end;
       RefreshOrdem;
       if MDO.QConsulta.FieldByName('STATUS').AsString = xStatusOrdemAberto then
       begin
           InsereDadosProduto;
           xStateOrdem := 'EDIT';
           FiltraItens;
       end
       else
       begin
           MessageDlg(xMsgOrdemFechada, mtWarning, [mbOK], 0);
           btnCancelar.Click;
       end;

       edInsereProdutoDescricao.SetFocus;
    End;
  end;
end;

procedure TfrmOrdemMecanica.btnRemoveProdutoClick(Sender: TObject);
var
   xTmpCodigoItem: Integer;
begin
  if MessageDlg('Remover o item da listagem?' + #13 + #10 + 'Código: ' +
    MDO.Query1.FieldByName('contrint').AsString + #13 + #10 +
    'Item: ' + MDO.Query1.FieldByName('descricao').AsString, mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
  begin
    xTmpCodigoItem := -999;
    DMESTOQUE.WSimilar.Close;
    DMESTOQUE.WSimilar.SQL.Clear;
    DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where vwsimilar.cod_estoque=:Codigo');
    DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := MDO.Query1.FieldByName('cod_estoque').AsString;
    DMESTOQUE.WSimilar.Open;
    if not DMESTOQUE.WSimilar.IsEmpty then
    begin
      EscreveLabelsPROD;
      xTmpCodigoItem := MDO.Query1.FieldByName('cod_itprodord').AsInteger;
      edInsereProdutoQuantidade.ValueNumeric := 1;
      edInsereProdutoCusto.ValueNumeric         := MDO.Query1.FieldByName('VALCOMP').AsCurrency;
      edInsereProdutoQuantidade.ValueNumeric    := MDO.Query1.FieldByName('qtd').AsCurrency;
      edInsereProdutoValorUnitario.ValueNumeric := MDO.Query1.FieldByName('vlrunit').AsCurrency;
      edInsereProdutoValorTotal.ValueNumeric    := MDO.Query1.FieldByName('total').AsCurrency;
      edValorDescontoServicoExit(sender);
    end
    else
    begin
      MessageDlg('ATENÇÃO!' + #13 + #10 +
        'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);
    end;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' delete FROM itprodord WHERE itprodord.cod_itprodord = :Codigo ');
    MDO.Query.ParamByName('Codigo').AsInteger := xTmpCodigoItem;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
    Auditoria(IntToStr(pkCodigoOrdem), 'Remove Produto OS', 'Tela de cadastro',
              'Número: ' + edNumero.Text +
              '; Cliente: ' + edCliente.Text +
              '; Produto: ' + lInsereProdutoSelecionado.Caption +
              '; Quantidade: ' + edInsereProdutoQuantidade.Text +
              '; Vlr. Unitário: ' + FormatFloat('0.00',  edInsereProdutoValorUnitario.ValueNumeric)  +
              '; Vlr. Total: ' + FormatFloat('0.00', edInsereProdutoValorTotal.ValueNumeric));

    FiltraItens;
  end;
end;

procedure TfrmOrdemMecanica.DBGrid1CellClick(Column: TColumn);
begin
  XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
end;

procedure TfrmOrdemMecanica.DBGrid1DblClick(Sender: TObject);
begin
  DMESTOQUE.WSimilar.Close;
  DMESTOQUE.WSimilar.SQL.Clear;
  DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where vwsimilar.cod_estoque=:Codigo');
  DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
  DMESTOQUE.WSimilar.Open;
  if not DMESTOQUE.WSimilar.IsEmpty then
  begin
    EscreveLabelsPROD;
    PListaProdutos.Visible := False;
    edInsereProdutoQuantidade.Text := '1,00';
    If pInsereProdutoValorCusto.Visible = True Then
       edInsereProdutoCusto.SetFocus
    Else
       edInsereProdutoQuantidade.SetFocus;
  end
  else
  begin
    MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito',
      mtWarning, [mbOK], 0);
  end;
  //edInsereProdutoDescricao(sender);
end;

procedure TfrmOrdemMecanica.edInsereServicoQuantidadeExit(Sender: TObject);
begin
  edInsereServicoValorTotal.ValueNumeric :=
    edInsereServicoQuantidade.ValueNumeric *
    edInsereServicoValorUnitario.ValueNumeric;
end;

procedure TfrmOrdemMecanica.edInsereServicoValorTotalExit(Sender: TObject);
begin
  edInsereServicoValorUnitario.ValueNumeric :=
    edInsereServicoValorTotal.ValueNumeric /
    edInsereServicoQuantidade.ValueNumeric;
end;

procedure TfrmOrdemMecanica.PesquisaCodigoEquipe(codigo: string);
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
      lInsereServicoResponsavel.Caption :=
        DMServ.Alx.FieldByname('descricao').AsString;
      //RetornaComissao(DMServ.Alx.fieldbyname('cod_responsavel').AsInteger);
      //LimpaGradeMultiplosVendedores('SERV');
      //InsereMultiploVendedor(XCOD_VENDEDOR, 'SERV');
      btnInsereServico.SetFocus;
    end
    else
    begin
      lInsereServicoResponsavel.Caption := '';
      edInsereServicoCodigoResponsavel.SelectAll;
    end;
  end;
end;

procedure TfrmOrdemMecanica.edInsereServicoCodigoResponsavelExit(
  Sender: TObject);
begin
  if edInsereServicoCodigoResponsavel.Text <> '' then
  begin
    PesquisaCodigoEquipe(edInsereServicoCodigoResponsavel.Text);
    pkCodigoResponsavel := DMServ.Alx.fieldbyname('Cod_Equipe').AsInteger;
  end
  else
  begin
    edInsereServicoCodigoResponsavel.Text := '';
    pkCodigoResponsavel := -999;
  end;
end;

procedure TfrmOrdemMecanica.btnInsereResponsavelClick(Sender: TObject);
begin
  if AbrirForm(TFCadEquipe, FCadEquipe, 1) = 'Selected' then
  begin
    pkCodigoResponsavel := DMPESSOA.TALX1.fieldbyname('Cod_Equipe').AsInteger;
    edInsereServicoCodigoResponsavel.Text :=
      DMPESSOA.TALX1.fieldbyname('Cod_Equipe').AsString;
    lInsereServicoResponsavel.Caption :=
      DMPESSOA.TALX1.fieldbyname('descricao').AsString;
    btnInsereResponsavel.SetFocus;
    //RetornaComissao(DMPESSOA.TALX1.fieldbyname('cod_responsavel').AsInteger);
    //LimpaGradeMultiplosVendedores('SERV');
    //InsereMultiploVendedor(XCOD_VENDEDOR, 'SERV');
  end
  else
  begin
    pkCodigoResponsavel := -999;
    edInsereServicoCodigoResponsavel.Text := '';
    lInsereServicoResponsavel.Caption := ''
  end;
end;

procedure TfrmOrdemMecanica.edInsereServicoCodigoResponsavelKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if edInsereServicoCodigoResponsavel.Text <> '' then
    begin
      PesquisaCodigoEquipe(edInsereServicoCodigoResponsavel.Text);
      pkCodigoResponsavel := DMServ.Alx.fieldbyname('Cod_Equipe').AsInteger;
    end
    else
    begin
      edInsereServicoCodigoResponsavel.Text := '';
      pkCodigoResponsavel := -999;
    end;
  end;
end;

procedure TfrmOrdemMecanica.btnInsereServicoClick(Sender: TObject);
var
  ResultadoValidacoes: Boolean;
begin
  ResultadoValidacoes := True;

  if edInsereServicoDescricao.Text = '' then
  begin
    MessageDlg('Informe o Serviço para ser adicionado a lista', mtWarning,
      [mbOK], 0);
    ResultadoValidacoes := False;
    edInsereServicoDescricao.SetFocus
  end;
  if edInsereServicoQuantidade.ValueNumeric <= 0 then
  begin
    MessageDlg('Informe a quantidade de serviço ser adicionado a lista',
      mtWarning, [mbOK], 0);
    ResultadoValidacoes := False;
    edInsereServicoQuantidade.SetFocus;
  end;
  if edInsereServicoValorUnitario.ValueNumeric <= 0 then
  begin
    MessageDlg('Informe o valor unitário do serviço ser adicionado a lista',
      mtWarning, [mbOK], 0);
    ResultadoValidacoes := False;
    edInsereServicoValorUnitario.SetFocus;
  end;
  if edInsereServicoValorTotal.ValueNumeric <= 0 then
  begin
    MessageDlg('Informe o valor total do serviço ser adicionado a lista',
      mtWarning, [mbOK], 0);
    ResultadoValidacoes := False;
    edInsereServicoValorTotal.SetFocus;
  end;
  if pkCodigoResponsavel <= 0 then
  begin
    MessageDlg('Informe o responsável pela execução do serviço ser adicionado a lista', mtWarning, [mbOK], 0);
    ResultadoValidacoes := False;
    edInsereServicoCodigoResponsavel.SetFocus;
  end;

  if ResultadoValidacoes = True then
  begin
    if xStateOrdem = 'NOVO' then
    begin
      if IncrementaNumeroOS = True then
      begin
        InsereDadosInsereOrdemServico;
        ValidaOSDuplicada;
      end;
    end;
    RefreshOrdem;
    if MDO.QConsulta.FieldByName('STATUS').AsString = xStatusOrdemAberto then
    begin
      InsereDadosServico;
      xStateOrdem := 'EDIT';
      FiltraItens;
    end
    else
    begin
      MessageDlg(xMsgOrdemFechada, mtWarning, [mbOK], 0);
      btnCancelar.Click;
    end;
    edInsereServicoDescricao.SetFocus;
  end;
end;

procedure TfrmOrdemMecanica.btnRemoveServicoClick(Sender: TObject);
begin
  if MessageDlg('Remover o item da listagem?' + #13 + #10 + 'Serviços: ' +
    MDO.Query2.FieldByName('despesa').AsString
    , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    edInsereServicoDescricao.Text := MDO.Query2.FieldByName('despesa').AsString;
    edInsereServicoQuantidade.ValueNumeric :=
      MDO.Query2.FieldByName('qtd').AsCurrency;
    edInsereServicoValorUnitario.ValueNumeric :=
      MDO.Query2.FieldByName('vlrfinal').AsCurrency;
    edInsereServicoValorTotal.ValueNumeric :=
      MDO.Query2.FieldByName('VLRTOTFIN').AsCurrency;
    edInsereServicoCodigoResponsavel.Text := MDO.Query2.FieldByName('cod_equipe').AsString;
    lInsereServicoResponsavel.Caption := MDO.Query2.FieldByName('descricao').AsString;
    pkCodigoResponsavel := MDO.Query2.FieldByName('cod_equipe').AsInteger;
    edInsereServicoDescricao.SetFocus;

    If Trim(MDO.Query2.FieldByName('UNIDADE').AsString) = '1'
    Then Begin
       cbTerceiros.Checked := true;
       edInsereServicoCustoTerceirizacao.ValueNumeric := MDO.Query2.FieldByName('VLRREAL').AsCurrency;
    End
    else Begin
       cbTerceiros.Checked := False;
       edInsereServicoCustoTerceirizacao.ValueNumeric := 0;
    End;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' delete from despadic where despadic.cod_despadic = :Codigo ');
    MDO.Query.ParamByName('Codigo').AsInteger :=
      MDO.Query2.FieldByName('cod_despadic').AsInteger;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
    Auditoria(IntToStr(pkCodigoOrdem), 'Remove Serviço OS', 'Tela de cadastro',
              'Número: ' + edNumero.Text +
              '; Cliente: ' + edCliente.Text +
              '; Serviço: ' + edInsereServicoDescricao.Text +
              '; Responsável: ' + lInsereServicoResponsavel.Caption +
              '; Quantidade: ' + edInsereServicoQuantidade.Text +
              '; Vlr. Unitário: ' + FormatFloat('0.00',  edInsereServicoValorUnitario.ValueNumeric)  +
              '; Vlr. Total: ' + FormatFloat('0.00', edInsereServicoValorTotal.ValueNumeric));

    FiltraItens;
  end;
end;

procedure TfrmOrdemMecanica.TravarPaines(oi: boolean);
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

procedure TfrmOrdemMecanica.FinalizarPopulaComponentes;
begin
  try
  {
    if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG',
      DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '') = True then
    begin
      pkCodigoFormaPagamento :=
        DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
      FrmFormPag.EDCodigo.Text :=
        DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
      FrmFormPag.EdDescricao.Text :=
        DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
    end
    else
    begin
      pkCodigoFormaPagamento := -1;
      FrmFormPag.EDCodigo.Text := '';
      FrmFormPag.EdDescricao.Text := '';
    end;
    if (Pos('CARTÃO', UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) or
      (Pos('CARTAO', UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) then
      CBPagamento.Text := 'Cartão';
    if (Pos('PIX', UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) or (Pos('PIX',
      UpperCase(FrmFormPag.EdDescricao.Text)) <> 0) then
      CBPagamento.Text := 'Pix';
    XCOD_CONTA := -1;
    FrmConta.EdDescricao.Text := '';
    FrmConta.EDCodigo.Text := '';
    XCOD_CONTASERV := -1;
    FrmContaServ.EdDescricao.Text := '';
    FrmContaServ.EDCodigo.Text := '';
    if DMServ.TOrd.FieldByName('DTFECH').AsString <> '' then
      EdDtFech.Text := DMServ.TOrd.FieldByName('DTFECH').AsString
    else
      EdDtFech.Text := DateToStr(Date());

    if DMServ.TOrd.FieldByName('HRENTREGA').AsString <> '' then
      EdHoraFech.Text := DMServ.TOrd.FieldByName('HRENTREGA').AsString
    else
      EdHoraFech.Text := TimeToStr(time());

    CBGeraFinanceiro.Checked := False;
    CBGeraFinanceiro.Visible := False;
    CBPagamento.Text := 'Carteira';

    FrmFormPag.EDCodigo.SetFocus;
    FrmConta.EDCodigo.SetFocus;
    FrmFormPag.Refresh;
    FrmConta.Refresh;
    FrmContaServ.Refresh;
    FPFinanceiro.Refresh;
    FrmFormPag.EDCodigo.SetFocus;
    }
  except
  end;
end;

procedure TfrmOrdemMecanica.FinalizarVerificaCreditoCliente;
begin
  try
    DMServ.Alx.Close;
    DMServ.Alx.SQL.Clear;
    DMServ.Alx.SQL.Add(' SELECT PESSOA.VLRCREDITO CREDITO FROM VWCLIENTE ');
    DMServ.Alx.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = VWCLIENTE.COD_PESSOA ');
    DMServ.Alx.SQL.Add(' WHERE (VWCLIENTE.COD_CLIENTE = :CLIENTE) AND (PESSOA.VLRCREDITO IS NOT NULL) AND (PESSOA.VLRCREDITO > 0) ');
    DMServ.Alx.ParamByName('CLIENTE').AsInteger :=
      DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger;
    DMServ.Alx.Open;

    XVLR_CREDITO_OS := DMServ.Alx.FieldByName('CREDITO').AsCurrency;

  except
  end;
end;

procedure TfrmOrdemMecanica.ChamaMetodoFechamento;
var
  xContinua: Boolean;
begin
   try
       xContinua := True;

       if ControlAccess('FECHORD', 'M') = False then
           Exit;

       pkCodigoOrdem := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;
       RefreshOrdem;

       if xPermiteFechar = false then
       begin
           MessageDlg('Esta ordem de serviço já se encontra em processo de fechamento.', mtInformation, [mbOK], 0);
           xContinua := False;
       end;

       if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(pkCodigoOrdem),
                       '') = True then
       begin
           if DMServ.TOrd.FieldByName('TOTORD').AsCurrency = 0 then
           begin
               Mensagem('OPÇÃO BLOQUEADA',
                       'Esta ordem não contém produto ou serviços. Por isso não pode ser fechada!',
                       '', 1, 1, False, 'i');
               xContinua := False;
           end;
       end;

       if xContinua = True then
       begin
           if MessageDlg('Finalizar a Ordem de Serviço selecionada?' + #13 + #10 +
                           'Número: ' + DMServ.WOrdem.FieldByName('numero').AsString + #13 + #10 +
                           'Cliente: ' + DMServ.WOrdem.FieldByName('cliente').AsString + #13 + #10
                           + 'Valor: ' + FormatFloat('#,###0.000',
                           DMServ.WOrdem.FieldByName('TOTAL').AsCurrency), mtConfirmation, [mbYes,
                           mbNo], 0) = mrYes then
           begin
               FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

               If xTipoPagamentoOS = 'TELA PAGAMENTOS' Then
                   FechaOSTelaPagamentos
               Else
                   FechaOSTelaFormaPagamentos;
           End;

           if xResultadoPagamento = 'SUCESSO'
           Then Begin
               pkTmpCodigoOrdem := pkCodigoOrdem;

               If RefiltraOrdem = True
               Then Begin
                   FechaOrdemServicoFinal;
                   DMServ.IBT.CommitRetaining;
                   DMBANCO.IBT.CommitRetaining;
                   DMCAIXA.IBT.CommitRetaining;
                   MDO.Transac.CommitRetaining;
                   FiltraOrdem;

                   If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
                       or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
                       or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
                       or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
                       or ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')))
                   Then Begin
                       FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
                       FMenu.TIPOREL := 'NF';
                       If Mensagem('C O N F I R M A Ç Ã O', 'Abrir tela de Nota Fiscal?', '', 2, 3, False, 'c') = 2
                       Then Begin

                           Auditoria(IntToStr(pkCodigoOrdem), 'Abre Nota Fiscal', 'Tela de consulta',
                               'Número: ' + DmServ.WOrdem.FieldByName('NUMERO').AsString +
                               '; Data OS: ' + DmServ.WOrdem.FieldByName('DTABERT').AsString +
                               '; Cliente: ' + DmServ.WOrdem.FieldByName('CLIENTE').AsString +
                               '; Veículo: ' + DmServ.WOrdem.FieldByName('PLACA').AsString + ' : ' + DmServ.WOrdem.FieldByName('EQUIPAMENTO').AsString +
                               '; Forma Pagamento: ' + DmServ.WOrdem.FieldByName('FORMAPAG').AsString +
                               '; Tipo Fechamento: ' + DMMACS.TLoja.FieldByName('FORMAFECHAMENTOOS').AsString +
                               '; Tipo Pagamento: ' + DmServ.WOrdem.FieldByName('TIPOPAG').AsString +
                               '; Valor Produtos: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TPROD').AsCurrency)  +
                               '; Valor Serviços: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TSERV').AsCurrency)  +
                               '; Valor OS: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TOTAL').AsCurrency)) ;

                           AbreFiscal;

                           //Forçamos o fechamento porque esta reabrindo após passar pelo fiscal
                           pkCodigoOrdem := pkTmpCodigoOrdem;
                           If RefiltraOrdem = True
                           Then Begin
                               FechaOrdemServicoFinal;
                               DMServ.IBT.CommitRetaining;
                               DMBANCO.IBT.CommitRetaining;
                               DMCAIXA.IBT.CommitRetaining;
                               MDO.Transac.CommitRetaining;
                               FiltraOrdem;
                           End;
                       end;
                   end;
                   If FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', IntToStr(pkTmpCodigoOrdem), '')=True
                   Then Begin
                       Comprovantemeiapgina1.Click;
                       FiltraOrdem;
                   End;
               End;
               If FiltraTabela(DMServ.WORDEM, 'VWORDEM', 'COD_ORDEM', IntToStr(pkTmpCodigoOrdem), '')=True
               Then Begin
                   If DMServ.WOrdem.FieldByName('STATUS').AsString = 'ABERTO'
                   Then Begin
                       //Forçamos o fechamento porque esta reabrindo após passar pelo fiscal
                       pkCodigoOrdem := pkTmpCodigoOrdem;
                       If RefiltraOrdem = True
                       Then Begin
                           FechaOrdemServicoFinal;
                           DMServ.IBT.CommitRetaining;
                           DMBANCO.IBT.CommitRetaining;
                           DMCAIXA.IBT.CommitRetaining;
                           MDO.Transac.CommitRetaining;
                           FiltraOrdem;
                       End;
                   End;
               End;
               pkCodigoOrdem := -999;
           End
           Else Begin
               pkTmpCodigoOrdem := pkCodigoOrdem;

               Auditoria(IntToStr(pkCodigoOrdem), 'Fechamento Canc./Abort.', 'Tela de consulta',
                           'Número: ' + DmServ.WOrdem.FieldByName('NUMERO').AsString +
                           '; Data OS: ' + DmServ.WOrdem.FieldByName('DTABERT').AsString +
                           '; Cliente: ' + DmServ.WOrdem.FieldByName('CLIENTE').AsString +
                           '; Veículo: ' + DmServ.WOrdem.FieldByName('PLACA').AsString + ' : ' + DmServ.WOrdem.FieldByName('EQUIPAMENTO').AsString +
                           '; Forma Pagamento: ' + DmServ.WOrdem.FieldByName('FORMAPAG').AsString +
                           '; Tipo Fechamento: ' + DMMACS.TLoja.FieldByName('FORMAFECHAMENTOOS').AsString +
                           '; Tipo Pagamento: ' + DmServ.WOrdem.FieldByName('TIPOPAG').AsString +
                           '; Valor Produtos: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TPROD').AsCurrency)  +
                           '; Valor Serviços: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TSERV').AsCurrency)  +
                           '; Valor OS: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TOTAL').AsCurrency)) ;

               RefreshOrdem;
               AjustarAndamentoOrdem(xStatusAndamentoTerminado, True);
               FiltraOrdem;
           End;
       End;
   except
       MessageDlg('Ocorreu uma falha durante o processo. Ferifique o resultado das ações.', mtWarning, [mbOK], 0);
   end;
end;

procedure TfrmOrdemMecanica.BtnFechaPedClick(Sender: TObject);
begin
   { TODO : Testar fechamentos de OS com forma de pagamento e tela de pagamento }
   ChamaMetodoFechamento;
End;

procedure TfrmOrdemMecanica.FechaOSTelaPagamentos;
begin
   try
       if AjustarAndamentoOrdem(xStatusAndamentoFinalizado, True) = True then
       begin
           FinalizarVerificaCreditoCliente;

           Auditoria(IntToStr(pkCodigoOrdem), 'Comanda Fechamento TP OS', 'Tela de consulta',
               'Número: ' + DmServ.WOrdem.FieldByName('NUMERO').AsString +
               '; Data OS: ' + DmServ.WOrdem.FieldByName('DTABERT').AsString +
               '; Cliente: ' + DmServ.WOrdem.FieldByName('CLIENTE').AsString +
               '; Veículo: ' + DmServ.WOrdem.FieldByName('PLACA').AsString + ' : ' + DmServ.WOrdem.FieldByName('EQUIPAMENTO').AsString +
               '; Forma Pagamento: ' + DmServ.WOrdem.FieldByName('FORMAPAG').AsString +
               '; Tipo Fechamento: ' + DMMACS.TLoja.FieldByName('FORMAFECHAMENTOOS').AsString +
               '; Tipo Pagamento: ' + DmServ.WOrdem.FieldByName('TIPOPAG').AsString +
               '; Valor Produtos: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TPROD').AsCurrency)  +
               '; Valor Serviços: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TSERV').AsCurrency)  +
               '; Valor OS: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TOTAL').AsCurrency)) ;

           IniciaPagamento('ORDEM', DmServ.WOrdem.FieldByName('COD_ORDEM').AsInteger);
       End
       Else Begin
           MessageDlg(xMsgOrdemFechadaFinalizada, mtWarning, [mbOK], 0);
           FiltraOrdem;
       End;
   except

   end;
end;

procedure TfrmOrdemMecanica.FechaOSTelaFormaPagamentos;
begin
   try
       if AjustarAndamentoOrdem(xStatusAndamentoFinalizado, True) = True then
       begin
           //FinalizarVerificaCreditoCliente;

           Auditoria(IntToStr(pkCodigoOrdem), 'Comanda Fechamento FP OS', 'Tela de consulta',
               'Número: ' + DmServ.WOrdem.FieldByName('NUMERO').AsString +
               '; Data OS: ' + DmServ.WOrdem.FieldByName('DTABERT').AsString +
               '; Cliente: ' + DmServ.WOrdem.FieldByName('CLIENTE').AsString +
               '; Veículo: ' + DmServ.WOrdem.FieldByName('PLACA').AsString + ' : ' + DmServ.WOrdem.FieldByName('EQUIPAMENTO').AsString +
               '; Forma Pagamento: ' + DmServ.WOrdem.FieldByName('FORMAPAG').AsString +
               '; Tipo Fechamento: ' + DMMACS.TLoja.FieldByName('FORMAFECHAMENTOOS').AsString +
               '; Tipo Pagamento: ' + DmServ.WOrdem.FieldByName('TIPOPAG').AsString +
               '; Valor Produtos: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TPROD').AsCurrency)  +
               '; Valor Serviços: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TSERV').AsCurrency)  +
               '; Valor OS: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TOTAL').AsCurrency)) ;

           IniciaFechamento('ORDEM', DmServ.WOrdem.FieldByName('COD_ORDEM').AsInteger);
       End
       Else Begin
           MessageDlg(xMsgOrdemFechadaFinalizada, mtWarning, [mbOK], 0);
           FiltraOrdem;
       End;
   except

   end;
end;

procedure TfrmOrdemMecanica.btnAtualizaDadosCadastroClick(Sender: TObject);
begin
  FiltraItens;
end;

procedure TfrmOrdemMecanica.FrmContaBTNOPENClick(Sender: TObject);
var
  Oper: Char;
begin
  inherited;
  Oper := 'C';

  // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
  XTIPO_CONTA := 'C';

  //LIBERA TODAS OS ESTADOS PARA CONSUTA
  filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = ' +
    FMenu.LCODEMPRESA.Caption + ') AND (NATUREZA = ' + #39 + Oper + #39 +
    ') AND (TIPO=' + #39 + 'N' + #39 + ') ORDER BY CLASSIFICACAO');

  if AbrirForm(TFConsPlnCta, FConsPlnCta, 1) = 'Selected' then
  begin
    XCOD_CONTA := DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
  end;
end;

procedure TfrmOrdemMecanica.Iniciado1Click(Sender: TObject);
begin
  RefreshOrdem;
  AjustarAndamentoOrdem(xStatusAndamentoIniciado, false);
  FiltraOrdem;
end;

procedure TfrmOrdemMecanica.Paralizado1Click(Sender: TObject);
begin
  RefreshOrdem;
  AjustarAndamentoOrdem(xStatusAndamentoParalizado, false);
  FiltraOrdem;
end;

procedure TfrmOrdemMecanica.erminado1Click(Sender: TObject);
begin
  RefreshOrdem;
  AjustarAndamentoOrdem(xStatusAndamentoTerminado, false);
  FiltraOrdem;
end;

procedure TfrmOrdemMecanica.btnRelatorioClick(Sender: TObject);
var
  lPoint: TPoint;
begin
  GetCursorPos(lPoint);
  MenuRelatorios.Popup(lPoint.x, lPoint.y);
end;

procedure TfrmOrdemMecanica.ListagemdeOrdensdeServio1Click(
  Sender: TObject);
begin
  if ControlAccess('RELABERTORD', 'M') = False then
    Exit;

  FMenu.TIPOREL := '';
  AbrirForm(TFRelOrdemMecanica, FRelOrdemMecanica, 0);
end;

procedure TfrmOrdemMecanica.CancelaFechamento1Click(Sender: TObject);
begin
   pkCodigoOrdem := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;

   RefreshOrdem;

   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');
   FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '');

   if ((DMServ.WOrdem.FieldByName('numfiscal').AsString <> '0') and (DMServ.WOrdem.FieldByName('numfiscal').AsString <> '')) or (DMServ.TFiscOrd.FieldByName('NFSE_STATUSGERAL').AsString = '1') then
   begin
       Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta O.S. Passou por uma impressão fiscal e não pode mais ter seu fechamento cancelado.', '', 1, 1, False, 'a');
       Exit;
   end;

   if ControlAccess('CANCPEDFECH', 'M') = False then
       Exit;

   if MDO.QConsulta.FieldByName('STATUS').AsString = xStatusOrdemFechado
   Then Begin
       if MessageDlg('Cancelar Fechamento da Ordem de Serviço selecionada?' + #13 +
                       #10 + 'Número: ' + DMServ.WOrdem.FieldByName('numero').AsString + #13 + #10 +
                       'Cliente: ' + DMServ.WOrdem.FieldByName('cliente').AsString + #13 + #10 +
                       'Valor: ' + FormatFloat('#,###0.000',
                       DMServ.WOrdem.FieldByName('TOTAL').AsCurrency), mtConfirmation, [mbYes,
                       mbNo], 0) = mrYes
       then begin
           If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '') = True
           Then Begin
               If DMServ.TOrd.FieldByName('FORMAFECHAMENTOOS').AsString = 'FORMA PAGAMENTO' Then
                   CancelaFechamento
               Else
                   CancelaFechamentoOrdemServico;


               FiltraOrdem;
           End
           Else Begin
               MessageDlg('Ordem de Serviço não foi localizada para cancelamento', mtInformation, [mbOK], 0);
           End
       End;
   end;
end;

procedure TfrmOrdemMecanica.btnOrcamentoClick(Sender: TObject);
var
  XSUCCESS: Boolean;
  XDESCERRO: string;
  XCODNEWORDEM: Integer;
  XEncontrado: Boolean;
begin
   FMenu.SelectedForm := True;
   If AbrirForm(TFORCAMENTOMAC, FORCAMENTOMAC, 1) = 'Selected' then
       XEncontrado := True;

   if XEncontrado = True then
   begin
    if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente importar o orçamento'
      + #13 + 'Nº ' + DMSAIDA.WOrc.FieldByName('NUMORC').AsString + '?', '', 2,
        3,
      False, 'c') = 2 then
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

           FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
           //AUTODETERMINA IMPORTAÇÃO COMO SUCESSO
           XSUCCESS := True;
           XDESCERRO := '';
           try
               LimpaCamposCadastro;
               LimpaCamposPesquisaProduto;
               LimpaCamposItemServico;

               if FiltraTabela(DMMacs.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = True then
               begin
                   IncrementaNumeroOS;
                   edNumero.Text := IntToStr(xNumeroOS);
               end;

               pkCodigoOrdem            := -999;
               pkCodigoEstoque          := -999;
               pkCodigoResponsavel      := -999;

               pkCodigoVendedor := -999;

               DMPESSOA.TALX1.Close;
               DMPESSOA.TALX1.SQL.Clear;
               DMPESSOA.TALX1.SQL.Add(' select vwfuncionario.cod_func as CodigoFuncionario from vwfuncionario ');
               DMPESSOA.TALX1.SQL.Add('     left join usuario on vwfuncionario.cod_func = usuario.cod_funcionario ');
               DMPESSOA.TALX1.SQL.Add('     where usuario.codusuario = :codigo ');
               DMPESSOA.TALX1.ParamByName('codigo').AsString := FMenu.LCODUSUARIO.Caption;
               DMPESSOA.TALX1.Open;

               If not DMPESSOA.TALX1.IsEmpty
               Then Begin
                   pkCodigoVendedor := DMPESSOA.TALX1.FieldByName('CodigoFuncionario').AsInteger;
               End
               Else Begin
                   pkCodigoVendedor := -999;
               End;

               pkCodigoCliente         := DMSAIDA.WOrc.FieldByNAme('cod_cliente').AsInteger;
               pkCodigoVeiculo         := DMSAIDA.TOrc.FieldByNAme('cod_equipamento').AsInteger;

               InsereDadosInsereOrdemServico;
               XCODNEWORDEM := pkCodigoOrdem;
               xStateOrdem := 'NOVO';
               Auditoria(IntToStr(pkCodigoOrdem), 'Nova Ordem', 'Importando Orçamento',
                   '; Número Orçamento: ' + DMSAIDA.WOrc.FieldByNAme('numorc').AsString +
                   '; Cliente ' + DMSAIDA.WOrc.FieldByNAme('nomecli').AsString +
                   '; Valor: ' + DMSAIDA.WOrc.FieldByNAme('vlrtotal').AsString +
                   '; Data: ' + DMSAIDA.WOrc.FieldByNAme('dtabert').AsString);

               MDO.Transac.CommitRetaining;
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' update ordem set ');
               MDO.Query.SQL.Add('     ordem.observacao    = :Observacao, ');
               MDO.Query.SQL.Add('     ordem.totord        = :TotalOrdem, ');
               MDO.Query.SQL.Add('     ordem.totprod       = :TotalProduto, ');
               MDO.Query.SQL.Add('     ordem.totserv       = :TotalServico, ');
               MDO.Query.SQL.Add('     ordem.totdesp       = :TotalDespesa, ');
               MDO.Query.SQL.Add('     ordem.descprod      = :DescontoProduto, ');
               MDO.Query.SQL.Add('     ordem.descserv      = :DescontoServico ');
               MDO.Query.SQL.Add('     Where ordem.cod_ordem = :Codigo ');
               MDO.Query.ParamByName('Observacao').AsString        := DMSAIDA.TOrc.FieldByName('OBS').AsString;
               MDO.Query.ParamByName('TotalOrdem').AsCurrency      := DMSAIDA.TOrc.FieldByName('VLRTOTAL').AsCurrency;
               MDO.Query.ParamByName('TotalProduto').AsCurrency    := DMSAIDA.TOrc.FieldByName('VLRPROD').AsCurrency;
               MDO.Query.ParamByName('TotalServico').AsCurrency    := DMSAIDA.TOrc.FieldByName('VLRSERV').AsCurrency;
               MDO.Query.ParamByName('TotalDespesa').AsCurrency    := DMSAIDA.TOrc.FieldByName('VLRDESP').AsCurrency;
               MDO.Query.ParamByName('DescontoProduto').AsCurrency := DMSAIDA.TOrc.FieldByName('DESCPROD').AsCurrency;
               MDO.Query.ParamByName('DescontoServico').AsCurrency := DMSAIDA.TOrc.FieldByName('DESCSERV').AsCurrency;
               MDO.Query.ParamByName('Codigo').AsInteger           := pkCodigoOrdem;
               MDO.Query.ExecSQL;
               MDO.Transac.CommitRetaining;


               AtivaPainelConsulta(false);

               if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(pkCodigoOrdem), '') = False
               Then Begin
                   Mensagem('INFORMAÇÃO', 'A Ordem inserida foi perdida. Reinicie o sistema!', '', 1, 1, false, 'i');
                   exit
               end;

               FiltraItens;
               //edPlaca.SetFocus;
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
               If DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString = 'MECANICA' then
                   DMESTOQUE.ALX.SQL.Add('select * From despadic Where (despadic.gerador=' + #39 + 'ORCMEC' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)')
               Else
                   DMESTOQUE.ALX.SQL.Add('select * From despadic Where (despadic.gerador=' + #39 + 'ORCAMENTO' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
               DMESTOQUE.ALX.ParamByName('COD_GERADOR').AsString := DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
               DMESTOQUE.ALX.Open;
               //Percorre os itens de Despesas do orçamento importando para ordem
               DMESTOQUE.ALX.First;
               While not DMESTOQUE.ALX.Eof do
               Begin
                   Try
                       If DMESTOQUE.Alx.FieldByName('COD_EQUIPE').AsString = ''
                       Then Begin
                           DMPESSOA.TALX1.Close;
                           DMPESSOA.TALX1.SQL.Clear;
                           DMPESSOA.TALX1.SQL.Add(' SELECT EQUIPE.COD_EQUIPE, EQUIPE.DESCRICAO, EQUIPE.COD_RESPONSAVEL, EQUIPE.OBSERVACAO, FUNCIONARIO.COD_FUNC, ');
                           DMPESSOA.TALX1.SQL.Add(' FUNCIONARIO.COD_PESSOA, PESSOA.COD_PESSOA, PESSOA.NOME ');
                           DMPESSOA.TALX1.SQL.Add(' FROM EQUIPE LEFT JOIN FUNCIONARIO ON EQUIPE.COD_RESPONSAVEL = FUNCIONARIO.COD_FUNC ');
                           DMPESSOA.TALX1.SQL.Add(' LEFT JOIN PESSOA ON FUNCIONARIO.COD_PESSOA = PESSOA.COD_PESSOA ');
                           DMPESSOA.TALX1.SQL.Add(' WHERE (FUNCIONARIO.ATIVO = ''0'') OR (FUNCIONARIO.ATIVO IS NULL) ');
                           DMPESSOA.TALX1.Open;
                           If Not DMPESSOA.TALX1.IsEmpty Then
                               pkCodigoResponsavel := DMPESSOA.TALX1.FieldByName('COD_EQUIPE').AsInteger
                           Else
                               pkCodigoResponsavel := -999;

                       End
                       Else Begin
                           If DMESTOQUE.Alx.FieldByName('COD_EQUIPE').AsInteger > 0 Then
                               pkCodigoResponsavel := DMESTOQUE.Alx.FieldByName('COD_EQUIPE').AsInteger
                           Else
                               pkCodigoResponsavel := -999;
                       End;
                       EdInsereServicoDescricao.Text := DMESTOQUE.ALX.FieldByName('DESPESA').AsString;
                       EdInsereServicoQuantidade.ValueNumeric := DMESTOQUE.ALX.FieldByName('QTD').AsCurrency;
                       EdInsereServicoValorUnitario.ValueNumeric := DMESTOQUE.ALX.FieldByName('VLRFINAL').AsCurrency;
                       EdInsereServicoValorTotal.ValueNumeric := DMESTOQUE.ALX.FieldByName('VLRTOTFIN').AsCurrency;
                       cbTerceiros.Checked := false;

                       InsereDadosServico;
                   except
                       MessageDlg('O ITEM NÃO PODE SER INSERIDO. VERIFIQUE!' + #13 + 'Erro: 1348', mtWarning, [mbOK], 0);
                       FiltraItens;
                       Exit;
                   end;
                   DMESTOQUE.ALX.Next;
               end;
           except
               XSUCCESS := False;
               XDESCERRO := XDESCERRO + ' em importar despesas;';
           end;

           /////////////////////////////////////////////////////
           //FILTRA PRODUTOS DE ORÇAMENTO PARA SEREM IMPORTADOS
           /////////////////////////////////////////////////////
           try
               DMESTOQUE.TSlave.Close;
               DMESTOQUE.TSlave.SQL.Clear;
               DMESTOQUE.TSlave.SQL.Add('Select itprodorC.cod_itprodorC, itprodorC.cod_orcamento, itprodorc.cod_estoque,  itprodorc.qtd, itprodorc.vlrtotal AS TOTAL, ');
               DMESTOQUE.TSlave.SQL.Add('itprodorc.desconto, itprodorc.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, subproduto.cod_cst, ');
               DMESTOQUE.TSlave.sql.Add(' subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS PRIMCOD, subproduto.' +
               DMMACS.TLoja.FieldByName('CODPRODREL2').AsString + ' AS SEGCOD ');
               DMESTOQUE.TSlave.SQL.Add('From itprodorc left Join estoque on itprodorc.cod_estoque = estoque.cod_estoque ');
               DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
               DMESTOQUE.TSlave.SQL.Add('Where itprodorc.cod_orcamento = :CODORDEM ');
               DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString :=
               DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString;
               DMESTOQUE.TSlave.Open;
               //Percorre os itens de produto do orçamento importando para pedido
               DMESTOQUE.TSlave.First;
               while not DMESTOQUE.TSlave.Eof do
               begin
                   If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '') = False
                   Then Begin
                       Mensagem('OPÇÃO BLOQUEADA', 'Não foi possível encontrar a tabela estoque para o produto:' + #13
                               + DMESTOQUE.TSlave.FieldByName('descricao').AsString, '', 1, 1, False, 'a');
                       XSUCCESS := False;
                       Exit;
                   end;

                   //Verifica se o desconto dado no produto é superior ao permitido
                   If DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency = 0 then
                   Begin //Se não ha restrições de desconto do produto em empresa procura em produto
                       if (DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency > DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency) then
                       begin
                           If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c') = 2 then
                           Begin
                               if ControlAccess('DESCPMAIOR', '') = False then
                               Begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
                                   XSUCCESS := False;
                               end;
                           end
                           else begin
                               XSUCCESS := False;
                           end;
                       end;
                   end
                   Else begin
                       if (DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency > DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency) then
                       begin
                           If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c') = 2 then
                           Begin
                               If ControlAccess('DESCPMAIOR', '') = False then
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
                               FiltraItens;
                               Exit;
                           end;
                       end;
                   end;

                   If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('cod_estoque').AsString, '')
                   Then Begin
                       pkCodigoEstoque := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
                       pkCodigoCst     := DMESTOQUE.TSlave.FieldByName('COD_CST').AsInteger;

                       EdInsereProdutoQuantidade.ValueNumeric := DMESTOQUE.TSlave.FieldByName('qtd').AsCurrency;
                       edInsereProdutoValorUnitario.ValueNumeric := DMESTOQUE.TSlave.FieldByName('vlrunit').AsCurrency;
                       edInsereProdutoValorTotal.ValueNumeric := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;

                       InsereDadosProduto;
                   end
                   Else Begin
                       MessageDlg('Falha ao adicionar item de produto.'+#13+#10+'Não foi localizado estoque para o item de orçamento.', mtWarning, [mbOK], 0);
                   End;
                   DMESTOQUE.TSlave.Next;
               end;
           except
               XSUCCESS := False;
               XDESCERRO := ' em importar produtos'
           end;
           if XSUCCESS = True then
           begin
               AtivaPainelConsulta(true);
               FiltraOrdem;
               MessageDlg('Orçamento importado com o número ' + IntToStr(xNumeroOS) + ' e disponível para consulta,', mtInformation, [mbOK], 0);
           end
           else begin
               Mensagem('OPÇÃO BLOQUEADA',
                       'Ocorreram problemas ao importar orçamento. Verifique as informações!', 'Problemas '
                       + XDESCERRO, 1, 1, True, 'a');
           end;
       end
       else begin
           Mensagem('INFORMAÇÃO!',
                   'Não foi possivel importar o orçamento solicitado! A tabela de orçamento não localizou registro. Tente reiniciar o sistema!',
                   '', 1, 1, False, 'a');
           Exit;
       end;
    End;
   end;
end;

procedure TfrmOrdemMecanica.RecuperarDadosdeNFecomachave1Click(
  Sender: TObject);
var
  XChaveNfe: string;
begin
  inherited;
  if FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem',
    DMServ.WOrdem.FieldByName('cod_ordem').AsString, '') = True then
  begin
    if DMServ.TFiscOrd.FieldByName('nfestatus').AsInteger = 2 then
    begin
      if Mensagem('Confirmação do usuário',
        'Deseja realmente Retornar os dados para a Ordem de Número ' +
        DMServ.WOrdem.FieldByName('numero').AsString + '?', '', 2, 3, False, 'c') = 2
          then
      begin
        if InputQuery('Chave de Acesso',
          'Informe a Chave de Acesso da NFe para recuperar os Dados', XChaveNfe)
            =
          True then
        begin
          if DMServ.TFiscOrd.FieldByName('MODELONF').AsString = '65' then
            XEmiteNFCe := True
          else
            XEmiteNFCe := False;
          FMzrNfe := TFMzrNFe.Create(FMzrNfe);
          //cria o formulario de transmissão da Nfe
        //Function TFMzrNfe.SetInFiscal(NomePeriodo: String; CodigoPedido: Integer; CodigoDestinatario: Integer; tipopedido: String; tipoacao: String; tipoemissao: Integer; Cfop: String; NatOperacao: String; FormPagamento: String; NumFiscal: Integer; DtEmissao: TDate; CodigoIbge: String; Municipio: String; Uf: String; BaseIcms, VlrIcm, VlrIpi, BaseIcmsSt, VlrIcmsSt, VlrProduto, VlrFrete, VlrSeguro, Desconto, VlrOutros, VlrNotaFiscal: Real): Boolean;
          FMzrNfe.SetInFiscal(XChaveNfe,
            DMServ.WOrdem.FieldByName('cod_ordem').AsInteger,
            DMServ.WOrdem.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'RETORNADADOS',
              1,
            '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0);
          FMzrNfe.ShowModal;
        end;
      end;

    end
    else
    begin
      MessageDlg('Os dados não podem ser recuperados devido ao fato que a OS esta marcada como NFe enviada e homologada'
        + #13 + #10 + 'NFeStatus = 1 ou 3', mtWarning, [mbOK], 0);
    end;
  end;

end;

procedure TfrmOrdemMecanica.InutilizarNumeraodeNFe1Click(Sender: TObject);
begin
  if Mensagem('CONFIRMAÇÃO DO USUÁRIO',
    'Deseja realmente Inutilizar Numeração de Nota Fiscal Eletrônica ?', '', 2,
      3,
    False, 'c') = 2 then
  begin
    FMzrNfe := TFMzrNFe.Create(FMzrNfe);
    //cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', DMServ.WOrdem.FieldByName('cod_ordem').AsInteger,
      DMServ.WOrdem.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'INUTILIZAR', 1, '',
        '',
      '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.ShowModal;
  end;

end;

procedure TfrmOrdemMecanica.CancelarNFe1Click(Sender: TObject);
begin
  if DMServ.WOrdem.FieldByName('STATUS').AsString = 'CANCELADO' then
  begin
    MessageDlg('NFe já cancelada', mtWarning, [mbOK], 0);
  end
  else
  begin
    if DMServ.WOrdem.FieldByName('numfiscal').AsString = '' then
    begin
      MessageDlg('Documento fiscal da Ordem ' +
        DMServ.WOrdem.FieldByName('NUMERO').AsString + ' não foi emitido corretamente.',
        mtWarning, [mbOK], 0);
      Exit;
    end;
    if Mensagem('CONFIRMAÇÃO DO USUÁRIO',
      'Deseja realmente cancelar a Nota Fiscal Eletrônica Nº ' +
      DMServ.WOrdem.FieldByName('numfiscal').AsString + '?', '', 2, 3, False, 'c') = 2
        then
    begin
      if FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM',
        DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, ' AND (MODELONF = ''65'')')
          then
        XEmiteNFCe := True
      else
        XEmiteNFCe := False;
      FMzrNfe := TFMzrNFe.Create(FMzrNfe);
      //cria o formulario de transmissão da Nfe
      FMzrNfe.SetInFiscal('', DMServ.WOrdem.FieldByName('cod_ordem').AsInteger,
        DMServ.WOrdem.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'CANCELAR', 1, '',
          '',
        '', DMServ.WOrdem.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0,
          0,
        0, 0, 0, 0, 0, 0, 0, 0, 0);
      FMzrNfe.ShowModal;
    end;
  end;

end;

procedure TfrmOrdemMecanica.EnviarCartadeCorreoEletrnica1Click(
  Sender: TObject);
begin
  IniciaCCe(DMServ.WOrdem.FieldByName('cod_ordem').AsInteger, 'ORDEM');
end;

procedure TfrmOrdemMecanica.ReenviarNFe1Click(Sender: TObject);
begin
  //AbrirForm(TFSENHA, FSENHA, 0);
  //repassa resultado da tela de autenticação de senha para as variáveis de controle
  PCadastro.SendToBack;
  PCadastro.Visible := False;
  XAlxResult := True;
  if XAlxResult = True then
  begin
    if DMServ.WOrdem.FieldByName('STATUS').AsString = 'ABERTO' then
    begin
      Mensagem('OPÇÃO BLOQUEADA',
        'PARA EFETUAR A IMPRESSÃO FISCAL O PEDIDO DEVE ESTAR FECHADO.' + #13 +
        'Antes de fechar confira todas as informações do pedido.', '', 1, 1,
          False,
        'a');
      Exit;
    end;
    if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM',
      DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '') = True then
    begin
      if Mensagem('A T E N Ç Ã O',
        'DESEJA IMPRIMIR O DOCUMENTO FISCAL PARA O PEDIDO:' + #13 + 'Nº ' +
        DMServ.WOrdem.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2
          then
      begin
        FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA',
          FMenu.LCODCAIXA.Caption, '');

        if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
            then
        begin
          DMServ.TFiscOrd.Close;
          DMServ.TFiscOrd.SQL.Clear;
          DMServ.TFiscOrd.SQL.Add(' Select * from docfisord where docfisord.cod_ordem=:Codigo ');
          DMServ.TFiscOrd.ParamByName('Codigo').AsInteger :=
            DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
          DMServ.TFiscOrd.Open;
          if not DMServ.TFiscOrd.IsEmpty then
          begin
            if (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger = 1) or
              (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger = 3) then
            begin
              //Se Documento Fiscal Enviado ou Cancelado
              MessageDlg('Esta O.S já gerou uma Nota Fiscal Eletrônica enviada e recebida pelo sefaz. Sendo assim não pode mais ser transmitida.', mtWarning, [mbOK], 0);
              Exit;
            end;
          end;

          //REIMPRIME NOTA FISCAL
          FMenu.TIPOREL := 'RNF';
          if MessageDlg('Impressora NF Pronta?', mtConfirmation, [mbYes, mbNo],
            0) = mryes then
          begin
            FMenu.TIPOREL := 'NF';
            pkTmpCodigoOrdem := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
            AbreFiscal;
            Registra('ORDEM DE SERVIÇO', 'NF',
              DMServ.WOrdem.FieldByName('dtabert').AsString, 'Nº ' +
              DMServ.WOrdem.FieldByName('NUMERO').AsString, 'Valor: ' +
              DMServ.WOrdem.FieldByName('total').AsString);
          end;
        end;
        FiltraOrdem;
      end;
    end;
  end;

end;

procedure TfrmOrdemMecanica.ReenviarNFSe1Click(Sender: TObject);
begin
  {PCadastro.SendToBack;
    PCadastro.Visible := False;}
  if DMServ.WOrdem.FieldByName('STATUS').AsString = 'ABERTO' then
  begin
    Mensagem('OPÇÃO BLOQUEADA',
      'PARA EFETUAR A IMPRESSÃO FISCAL O PEDIDO DEVE ESTAR FECHADO.' + #13 +
      'Antes de fechar confira todas as informações do pedido.', '', 1, 1,
        False,
      'a');
    Exit;
  end;

  if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM',
    DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '') = True then
  begin
    if Mensagem('A T E N Ç Ã O',
      'DESEJA IMPRIMIR O DOCUMENTO FISCAL PARA O PEDIDO:' + #13 + 'Nº ' +
      DMServ.WOrdem.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2 then
    begin
      FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA',
        FMenu.LCODCAIXA.Caption,
        '');

      if DMMACS.TLoja.FieldByName('SERVNFE').AsString = '0' then
      begin
        DMServ.TFiscOrd.Close;
        DMServ.TFiscOrd.SQL.Clear;
        DMServ.TFiscOrd.SQL.Add(' Select * from docfisord where docfisord.cod_ordem=:Codigo ');
        DMServ.TFiscOrd.ParamByName('Codigo').AsInteger :=
          DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
        DMServ.TFiscOrd.Open;

        if not DMServ.TFiscOrd.IsEmpty then
        begin
          if (DMServ.TFiscOrd.FieldByName('NFSE_STATUSGERAL').AsString = '1')
            then
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

        if MessageDlg('Impressora NF Pronta?', mtConfirmation, [mbYes, mbNo], 0)
          = mryes then
        begin
          pkTmpCodigoOrdem := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;        
          AbreFiscal;
          Registra('ORDEM DE SERVIÇO', 'NF',
            DMServ.WOrdem.FieldByName('dtabert').AsString, 'Nº ' +
            DMServ.WOrdem.FieldByName('NUMERO').AsString, 'Valor: ' +
            DMServ.WOrdem.FieldByName('total').AsString);
        end;
      end;
    end
    else
      Mensagem('A T E N Ç Ã O',
        'Sua empresa não está autorizada a emitir nota fiscal de serviço.', '',
          2,
        3, False, 'I');
  end;

end;

procedure TfrmOrdemMecanica.ReenviarNFCeemContingncia1Click(
  Sender: TObject);
begin
  // verifica se o pedido está mesmo em contingencia
  if DMServ.WOrdem.FieldByName('FISCO').AsString = 'CONT' then
  begin
    FMzrNfe := TFMzrNFe.Create(FMzrNfe);
    //cria o formulario de transmissão da Nfe
    FMzrNfe.SetRetransmissaoNFCe(DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger,
      'ORDEM', DMServ.WOrdem.FieldByName('NUMFISCAL').AsInteger);
    FMzrNfe.ShowModal;
  end
  else
  begin
    Mensagem('OPÇÃO BLOQUEADA',
      'Apenas NFCe em contingência pode ser reimpresso.', '', 1, 1, False, 'a');
  end;

end;

procedure TfrmOrdemMecanica.VisualizarDanfe1Click(Sender: TObject);
begin
   pkCodigoOrdem := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;
   RefreshOrdem;

   
  //Filtra se o pedido tem serviço cadastrado
  if (FiltraTabela(DMSAIDA.TAlx, 'DESPADIC', 'COD_GERADOR',
    IntToStr(DMServ.WOrdem.FieldByName('cod_ordem').AsInteger), '')) = True then
  begin
    if DMMACS.TLoja.FieldByName('SERVNFE').AsString <> '1' then
      XServicoOp := True;

  end;
  FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
  FMzrNfe.SetInFiscal('', DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger, 0, 'ORDEM',
    '', 1, '', '', '', 0, 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  FMzrNfe.DanfeVisualizar;
  FMzrNfe := nil;

end;

procedure TfrmOrdemMecanica.ConsultarStatusdaNFenoSefaz1Click(
  Sender: TObject);
begin
  FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
  FMzrNfe.SetInFiscal('', DMServ.WOrdem.FieldByName('cod_ordem').AsInteger,
    DMServ.WOrdem.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'CONSULTAR', 1, '', '',
    '', DMServ.WOrdem.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0,
      0,
    0, 0, 0, 0, 0, 0, 0, 0);
  FMzrNfe.ShowModal;

end;

procedure TfrmOrdemMecanica.ConsultarStatusServioSefaz1Click(
  Sender: TObject);
begin
  FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
  FMzrNfe.SetInFiscal('', 0, 0, 'ORDEM', 'STATUSSERV', 1, '', '', '', 0, DATE(),
    '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  FMzrNfe.ShowModal;

end;

procedure TfrmOrdemMecanica.EfetuardevoluodeNFe1Click(Sender: TObject);
begin
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE',
    DMServ.WOrdem.FieldByname('COD_CLIENTE').AsString, '');

  if not FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_PESSOA',
    DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '') then
  begin
    //se não estiver, dá uma mensagem para o usuario informando que deve cadastra-lo como cliente antes de devolver
    MessageDlg('O cliente ' + DMPESSOA.WCliente.FieldByName('NOME').AsString +
      ' deve estar cadastrado como fornecedor para efetuar a devolução da NF-e.',
      mtWarning, [mbOK], 0);

    Exit;
  end;

  FMenu.XCOD_CLIENTE_DEVOLUCAO :=
    DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString;
  FMenu.XNUM_FISCAL_DEVOLUCAO :=
    DMServ.WOrdem.FieldByName('NUMFISCAL').AsString;
  FMenu.XCOD_PK_DEVOLVIDO := DMServ.WOrdem.FieldByName('COD_ORDEM').AsString;

  FMenu.XTABELA_DEVOLUCAO := 'ORDEM';

  AbrirForm(TFDevolucao, FDevolucao, 0);

end;

procedure TfrmOrdemMecanica.ListarNFescontidasnoSefaz1Click(
  Sender: TObject);
begin
  AbrirForm(TFListaNfe, FListaNfe, 0);
end;

procedure TfrmOrdemMecanica.CancelarNFSe1Click(Sender: TObject);
begin
  DMESTOQUE.Alx5.Close;
  DMESTOQUE.Alx5.SQL.Clear;
  DMESTOQUE.Alx5.SQL.Add('select docfisord.nfse_numerodocumento from docfisord where docfisord.cod_ordem = :ordem');
  DMESTOQUE.Alx5.ParamByName('ordem').AsInteger :=
    DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
  DMESTOQUE.Alx5.Open;

  if DMESTOQUE.Alx5.IsEmpty then
  begin
    Mensagem('A T E N Ç Ã O ',
      'Essa Nfse ainda não foi gerada. Escolha uma ordem válida.', '', 1, 1,
        false,
      'A');
    Exit;
  end
  else
  begin
    if Mensagem('A T E N Ç Ã O', 'DESEJA REALMENTE CANCELAR A NFS-E DE NÚMERO '
      + DMESTOQUE.Alx5.FieldByName('nfse_numerodocumento').AsString, '', 2, 3,
      False, 'c') = 2 then
      FMzrNFSe.CancelarNFSe(DMESTOQUE.Alx5.FieldByName('nfse_numerodocumento').AsString);
  end;

end;

procedure TfrmOrdemMecanica.VisualizarNFSe1Click(Sender: TObject);
begin
  FMzrNFSe := TFMzrNFSe.Create(FMzrNFSe);

  FMzrNFSe.VisualizaNfse(DMServ.WOrdem.FieldByName('cod_ordem').AsInteger);

end;

procedure TfrmOrdemMecanica.Consultar1Click(Sender: TObject);
begin
  DMESTOQUE.Alx5.Close;
  DMESTOQUE.Alx5.SQL.Clear;
  DMESTOQUE.Alx5.SQL.Add('select docfisord.nfse_numerodocumento from docfisord where docfisord.cod_ordem = :ordem');
  DMESTOQUE.Alx5.ParamByName('ordem').AsInteger :=
    DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
  DMESTOQUE.Alx5.Open;

  if DMESTOQUE.Alx5.IsEmpty then
  begin
    Mensagem('A T E N Ç Ã O ',
      'Essa Nfse ainda não foi gerada. Escolha uma ordem válida.', '', 1, 1,
        false,
      'A');
    Exit;
  end
  else if not
    FMzrNFSe.ConsultaNfse(DMESTOQUE.Alx5.FieldByName('nfse_numerodocumento').AsString) then
    Mensagem('A T E N Ç Ã O ',
      'Essa Nfse ainda não foi gerada. Escolha uma ordem válida', '', 1, 1,
        false,
      'A')
  else
    Mensagem('I N F O R M A Ç Ã O', 'A Nfse está ativa no servidor.', '', 1, 1,
      false, 'I');

  Exit;

end;

procedure TfrmOrdemMecanica.RecuperarDadosdeNFSe1Click(Sender: TObject);
var
  xNumNfse: string;
begin
  inherited;
  //Edmar - 26/03/2014 - Se for equiplano a mensagem é outra
  if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'EQUIPLANO' then
  begin
    if InputQuery('Número documento',
      'Informe o número RPS da NFS-e que deseja retornar', xNumNfse) = True then
    begin
      FMzrNFSe.RetornaDadosNfse(DMServ.WOrdem.FieldByName('cod_ordem').AsString,
        xNumNfse);
    end;
  end
  else
  begin
    if InputQuery('Número documento',
      'Informe o número da NFS-e que deseja retornar', xNumNfse) = True then
    begin
      FMzrNFSe.RetornaDadosNfse(DMServ.WOrdem.FieldByName('cod_ordem').AsString,
        xNumNfse);
    end;
  end;

end;

procedure TfrmOrdemMecanica.EnviarXMLdeNFSeporEmail1Click(Sender: TObject);
begin
  //Edmar - 01/04/2015 - Cria o formulário de NFS-e
  FMzrNFSe := TFMzrNFSe.Create(FMzrNFSe);

  FMzrNFSe.ReenviaPdfXml(DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger);
  FMzrNFSe.ShowModal;

end;

procedure TfrmOrdemMecanica.EnviarXMLdeNFeporEmail1Click(Sender: TObject);
var
  Xcfop: string;
begin
  inherited;
  XSafeXmlDist := True;
  //Paulo 13/01/2011: Gera Nfe distribuição base no pedido selecionado
  //Seta os dados para chamar a função
  FiltraTabela(DMMACS.TPeriodoFiscal, 'PERIODOFISCAL', 'FECHADO', 'N', '');
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM',
    IntToStr(DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger), '');
  FiltraTabela(DMServ.Alx, 'DOCFISORD', 'COD_ORDEM',
    IntToStr(DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP',
    IntToStr(DMServ.Alx.FieldByName('COD_CFOP').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx1, 'CFOP', 'COD_CFOP',
    IntToStr(DMServ.Alx.FieldByName('COD_CFOP1').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx2, 'CFOP', 'COD_CFOP',
    IntToStr(DMServ.Alx.FieldByName('COD_CFOP2').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx3, 'VWCLIENTE', 'COD_CLIENTE',
    IntToStr(DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx4, 'CIDADE', 'COD_CIDADE',
    IntToStr(DMESTOQUE.Alx3.FieldByName('COD_CIDADE').AsInteger), '');
  FiltraTabela(DMESTOQUE.Alx5, 'ESTADO', 'COD_ESTADO',
    IntToStr(DMESTOQUE.Alx4.FieldByName('COD_ESTADO').AsInteger), '');

  if DMServ.Alx.FieldByName('MODELONF').AsString = '65' then
    XEmiteNFCe := True
  else
    XEmiteNFCe := False;

  Xcfop := DMESTOQUE.Alx.FieldByName('CFOP').AsString + '/' +
    DMESTOQUE.Alx1.FieldByName('CFOP').AsString + '/' +
    DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
  XXmlNfe := DMServ.Alx.FieldByName('NFEXML').AsString;
  XNfeRecibo := DMServ.Alx.FieldByName('NFERECIBO').AsString;
  XNfeTipoAmbiente := DMServ.Alx.FieldByName('NFEAMBIENTE').AsInteger;
  XUfLocal := 'PR';
  XNfeChave := DMServ.Alx.FieldByName('NFECHAVE').AsString;
  XSetInPeriodoFiscal :=
    DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;

  FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe

  FMzrNfe.SetInFiscal(XSetInPeriodoFiscal,
    DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger,
    DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger, 'ORDEM', 'EMITIR', 1, Xcfop,
    DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString,
    DMServ.WOrdem.FieldByName('FORMAPAG').AsString,
    StrToInt(DMServ.Alx.FieldByName('NUMDOCFIS').AsString),
    DMServ.WOrdem.FieldByName('DTABERT').AsDateTime,
    IntToStr(DMESTOQUE.Alx4.FieldByName('COD_IBGE').AsInteger),
    DMESTOQUE.Alx4.FieldByName('NOME').AsString,
    DMESTOQUE.Alx5.FieldByName('UF_ESTADO').AsString,
    DMServ.Alx.FieldByName('BASEICMS').AsFloat,
    DMServ.Alx.FieldByName('VLRICMS').AsFloat,
    DMServ.Alx.FieldByName('VLRTOTIPI').AsFloat,
    DMServ.Alx.FieldByName('BASCALSUBS').AsFloat,
    DMServ.Alx.FieldByName('VLRICMSUBS').AsFloat,
    DMServ.Alx.FieldByName('VLRTOTPROD').AsFloat,
    DMServ.Alx.FieldByName('VLRFRETE').AsFloat,
    DMServ.Alx.FieldByName('VLRSEG').AsFloat,
    DMServ.Alx.FieldByName('VLRDESCONTO').AsFloat,
    DMServ.Alx.FieldByName('VLROUTRASDESP').AsFloat,
    DMServ.Alx.FieldByName('VLRTOTDOCNF').AsFloat,
    DMServ.Alx.FieldByName('valortotaltributa').AsFloat);
  FMzrNfe.ShowModal;
end;

procedure TfrmOrdemMecanica.EnviarXMLdeCancelamentoporEmail1Click(
  Sender: TObject);
begin
  FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
  FMzrNfe.SetInFiscal('', DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger,
    DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger, 'ORDEM', 'XMLCANCELAMENTO', 0,
      '',
    '', '', 0, Date(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  FMzrNfe.ShowModal;

end;

procedure TfrmOrdemMecanica.Comprovantemeiapgina1Click(Sender: TObject);
var
  objRelatorioOrdemServico : TRelatorioOrdemServico;
begin
  objRelatorioOrdemServico := TRelatorioOrdemServico.Create(Self);
  try
    //FILTRA CLIENTE PARA ENCONTRAR PESSOA
    if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
      DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '') = False then
    begin
      MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
      Exit;
    end;

    //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
    if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
      DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '') = False then
    begin
      MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK],
        0);
      Exit;
    end;

    objRelatorioOrdemServico.ImprimirComprovanteMeiaPagina(DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsInteger);
  finally
    objRelatorioOrdemServico.Destroy;
  end;
end;

procedure TfrmOrdemMecanica.Comprovantepginainteira1Click(Sender: TObject);
var
  objRelatorioOrdemServico : TRelatorioOrdemServico;
begin
  objRelatorioOrdemServico := TRelatorioOrdemServico.Create(Self);
  try
    //FILTRA CLIENTE PARA ENCONTRAR PESSOA
    if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
      DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '') = False then
    begin
      MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
      Exit;
    end;

    //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
    if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
      DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '') = False then
    begin
      MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK],
        0);
      Exit;
    end;

    objRelatorioOrdemServico.ImprimirComprovantePaginaInteira(DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsInteger);
  finally
    objRelatorioOrdemServico.Destroy;
  end;
end;

procedure TfrmOrdemMecanica.Cupomnofiscal1Click(Sender: TObject);
var
  objRelatorioOrdemServico : TRelatorioOrdemServico;
begin
  objRelatorioOrdemServico := TRelatorioOrdemServico.Create(Self);
  try
    //FILTRA CLIENTE PARA ENCONTRAR PESSOA
    if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
      DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '') = False then
    begin
      MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
      Exit;
    end;

    //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
    if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
      DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '') = False then
    begin
      MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK],
        0);
      Exit;
    end;

    objRelatorioOrdemServico.ImprimirCupomNaoFiscal(DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsInteger);
  finally
    objRelatorioOrdemServico.Destroy;
  end;
end;

procedure TfrmOrdemMecanica.Auditoriadeusurio1Click(Sender: TObject);
begin
   FiltraRegistraRelatorio('ORDEM MECANICA', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString);
end;

procedure TfrmOrdemMecanica.ermodecontratao1Click(Sender: TObject);
begin
  FMenu.TIPOREL := 'ORDST';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
  FMenu.TIPOREL := '';
end;

procedure TfrmOrdemMecanica.Serviosporequipe1Click(Sender: TObject);
begin
  AbrirForm(TFRelEquipe, FRelEquipe, 0);
end;

procedure TfrmOrdemMecanica.DBGridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (DMServ.WOrdem.FieldByName('STATUS').AsString = 'ABERTO') or
       (DMServ.WOrdem.FieldByName('FISCO').AsString = 'NFE2') then
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

   if (DMServ.WOrdem.FieldByName('STATUS').AsString <> 'ABERTO') and
       (DMServ.WOrdem.FieldByName('STATUSNFSE').AsString = '3') then
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

procedure TfrmOrdemMecanica.BitBtn11Click(Sender: TObject);
var
  lPoint: TPoint;
begin
   GetCursorPos(lPoint);
   RefreshOrdem;
   If pkCodigoOrdem = -999
   Then Begin
       If MessageDlg('A Ordem de Serviço ainda não foi salva. Deseja salvar agora?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
       Then Begin
           if ValidaDadosInsereOrdemServico = True then
           begin
               if xStateOrdem = 'NOVO' then
               begin
                   if IncrementaNumeroOS = True then
                   begin
                       InsereDadosInsereOrdemServico;
                       GravaOrdemServico;
                       ValidaOSDuplicada;
                   end;
               end;
           end;
       End
       Else Begin
           if MDO.QConsulta.FieldByName('status').AsString = xStatusOrdemAberto then
           begin
               if ValidaDadosInsereOrdemServico = True then
                   if ValidaOSNumeroDuplicado = True then
                       GravaOrdemServico;
           end;
       End;
   End
   Else Begin
       if MDO.QConsulta.FieldByName('status').AsString = xStatusOrdemAberto then
       begin
           if ValidaDadosInsereOrdemServico = True then
               if ValidaOSNumeroDuplicado = True then
                   GravaOrdemServico;
       end;
   End;

   DMServ.IBT.CommitRetaining;
   pmImpressaoInterna.Popup(lPoint.x, lPoint.y);
end;

procedure TfrmOrdemMecanica.MenuItem2Click(Sender: TObject);
var
  objRelatorioOrdemServico : TRelatorioOrdemServico;
begin
   objRelatorioOrdemServico := TRelatorioOrdemServico.Create(Self);
   try 
       if FiltraTabela(DMServ.WOrdem, 'vwordem', 'cod_ordem', IntToStr(pkCodigoOrdem), '') = True
       Then Begin
           //FILTRA CLIENTE PARA ENCONTRAR PESSOA
           if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
               DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '') = False then
           begin
               MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
               Exit;
           end;

           //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
           if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
               DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '') = False then
           begin
               MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
               Exit;
           end;

           objRelatorioOrdemServico.ImprimirComprovanteMeiaPagina(DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsInteger);
       End
       Else Begin
           MessageDlg('Ordem de serviço sem informações para impressão', mtWarning, [mbOK], 0);
       End;
  finally
    objRelatorioOrdemServico.Destroy;
  end;


end;

procedure TfrmOrdemMecanica.MenuItem3Click(Sender: TObject);
var
  objRelatorioOrdemServico : TRelatorioOrdemServico;
begin
   objRelatorioOrdemServico := TRelatorioOrdemServico.Create(Self);
   try
       if FiltraTabela(DMServ.WOrdem, 'vwordem', 'cod_ordem', IntToStr(pkCodigoOrdem), '') = True
       Then Begin
           //FILTRA CLIENTE PARA ENCONTRAR PESSOA
           if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
               DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '') = False then
           begin
               MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
               Exit;
           end;

           //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
           if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
               DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '') = False then
           begin
               MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
               Exit;
           end;

           objRelatorioOrdemServico.ImprimirComprovantePaginaInteira(DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsInteger);
       End
       Else Begin
           MessageDlg('Ordem de serviço sem informações para impressão', mtWarning, [mbOK], 0);
       End;
   finally
       objRelatorioOrdemServico.Destroy;
   end;
end;

procedure TfrmOrdemMecanica.MenuItem5Click(Sender: TObject);
var
  objRelatorioOrdemServico : TRelatorioOrdemServico;
begin
   objRelatorioOrdemServico := TRelatorioOrdemServico.Create(Self);
   try
       if FiltraTabela(DMServ.WOrdem, 'vwordem', 'cod_ordem', IntToStr(pkCodigoOrdem), '') = True
       Then Begin
           //FILTRA CLIENTE PARA ENCONTRAR PESSOA
           if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
               DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '') = False then
           begin
               MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
               Exit;
           end;

           //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
           if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
               DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '') = False then
           begin
               MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
               Exit;
           end;

           objRelatorioOrdemServico.ImprimirCupomNaoFiscal(DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsInteger);

       End
       Else Begin
           MessageDlg('Ordem de serviço sem informações para impressão', mtWarning, [mbOK], 0);
       End;
  finally
    objRelatorioOrdemServico.Destroy;
  end;
end;

procedure TfrmOrdemMecanica.DuplicarOrdemdeServio1Click(Sender: TObject);
begin
   MessageDlg('em desenvolvimento...', mtWarning, [mbOK], 0);
   { TODO : Desenvolver funcionalidade para duplicar OS }MessageDlg('em desenvolvimento...', mtWarning, [mbOK], 0);

end;

procedure TfrmOrdemMecanica.cbTerceirosClick(Sender: TObject);
begin
   If cbTerceiros.Checked
   Then Begin
       lbCustoTerceirizacao.Visible                    := True;
       edInsereServicoCustoTerceirizacao.Visible       := True;
       edInsereServicoCustoTerceirizacao.ValueNumeric  := 0;
       edInsereServicoCustoTerceirizacao.SetFocus;
   End
   Else Begin
       edInsereServicoCustoTerceirizacao.ValueNumeric  := 0;
       lbCustoTerceirizacao.Visible                    := False;
       edInsereServicoCustoTerceirizacao.Visible       := False;
   End;
end;

procedure TfrmOrdemMecanica.pcItensChange(Sender: TObject);
begin
   If pcItens.ActivePageIndex = 0 Then
       edInsereProdutoDescricao.SetFocus;
   If pcItens.ActivePageIndex = 1 Then
       edInsereServicoDescricao.SetFocus;
   If pcItens.ActivePageIndex = 2 Then
       edObservacao.SetFocus;
   If pcItens.ActivePageIndex = 3 Then
       edProblemaReclamado.SetFocus;
end;

procedure TfrmOrdemMecanica.ListarpagamentosRealizados1Click(
  Sender: TObject);
begin
   ListarPagamentosRealizados('ORDEM', DmServ.WOrdem.FieldByName('COD_ORDEM').AsInteger);
//   vamos testar esta funcionalidade
end;

procedure TfrmOrdemMecanica.LaudoTcnico1Click(Sender: TObject);
var
  objRelatorioOrdemServico : TRelatorioOrdemServico;
begin
  objRelatorioOrdemServico := TRelatorioOrdemServico.Create(Self);
  try
    //FILTRA CLIENTE PARA ENCONTRAR PESSOA
    if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
      DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '') = False then
    begin
      MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
      Exit;
    end;

    //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
    if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
      DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '') = False then
    begin
      MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK],
        0);
      Exit;
    end;

    objRelatorioOrdemServico.ImprimirLaudoPaginaInteira(DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsInteger);
  finally
    objRelatorioOrdemServico.Destroy;
  end;
end;

procedure TfrmOrdemMecanica.edFiltroNumeroOrdemKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
       FiltraOrdemCampo('NumeroOrdem');

   if key = #27 then
       FiltraOrdemCampo('');

end;

procedure TfrmOrdemMecanica.edFiltroNumeroNfeKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
       FiltraOrdemCampo('NumeroNFe');

   if key = #27 then
       FiltraOrdemCampo('');
end;

procedure TfrmOrdemMecanica.edFiltroNumeroNfseKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
       FiltraOrdemCampo('NumeroNFSe');

   if key = #27 then
       FiltraOrdemCampo('');
end;

procedure TfrmOrdemMecanica.edFiltroPlacaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
       FiltraOrdemCampo('Placa');

   if key = #27 then
       FiltraOrdemCampo('');
end;

procedure TfrmOrdemMecanica.edFiltroVeiculoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
       FiltraOrdemCampo('Veiculo');

   if key = #27 then
       FiltraOrdemCampo('');
end;

procedure TfrmOrdemMecanica.edFiltroClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
       FiltraOrdemCampo('Cliente');

   if key = #27 then
       FiltraOrdemCampo('');
end;

procedure TfrmOrdemMecanica.BitBtn4Click(Sender: TObject);
begin
   If AbrirForm(TFFormPag, FFormPag, 1) = 'Selected' then
   begin
       pkCodigoPagamento := DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       edPagamentoCodigo.Text := DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       edPagamentoDescricao.Text := DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   end
   else begin
       pkCodigoPagamento := -999;
       edPagamentoCodigo.Text := '';
       edPagamentoDescricao.Text := '';
   end;
end;

procedure TfrmOrdemMecanica.edPagamentoCodigoExit(Sender: TObject);
begin
   if edPagamentoCodigo.Text <> '' then
   begin
       PesquisaCodigoPagamento(edPagamentoCodigo.Text);
   end
   else Begin
       pkCodigoPagamento := -999;
       edPagamentoCodigo.Text := '';
       edPagamentoDescricao.Text := '';
   end;
end;
procedure TfrmOrdemMecanica.PesquisaCodigoPagamento(codigo: string);
begin
  // letras maiusculas
  codigo := Trim(UpperCase(codigo));

  if codigo <> '' then
  begin
    //seleciona a forma de pagamento
    if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', codigo, '') =
      true then
    begin
      pkCodigoPagamento := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
      edPagamentoCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
      edPagamentoDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
    end
    else
    begin
       pkCodigoPagamento := -999;
       edPagamentoCodigo.Text := '';
       edPagamentoDescricao.Text := '';
    end;
  end;
end;


procedure TfrmOrdemMecanica.edPagamentoCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_return then
   begin
       if edPagamentoCodigo.Text <> '' then
       begin
           PesquisaCodigoPagamento(edPagamentoCodigo.Text);
       end
       else Begin
           pkCodigoPagamento := -999;
           edPagamentoCodigo.Text := '';
           edPagamentoDescricao.Text := '';
       End;           
   end;
end;

procedure TfrmOrdemMecanica.edPercentoDescontoProdutoExit(Sender: TObject);
begin
   edValorDescontoProduto.ValueNumeric := (xValorTotalProduto * edPercentoDescontoProduto.ValueNumeric)/100;
   edValorDescontoProdutoExit(sender);
end;

procedure TfrmOrdemMecanica.edPercentoDescontoServicoExit(Sender: TObject);
begin
   edValorDescontoServico.ValueNumeric := (xValorTotalServico * edPercentoDescontoServico.ValueNumeric)/100;
   edValorDescontoServicoExit(sender);
end;

procedure TfrmOrdemMecanica.Sinttico1Click(Sender: TObject);
begin
  FMenu.TIPOREL := 'SINTETICO';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TfrmOrdemMecanica.Analtico1Click(Sender: TObject);
begin
  FMenu.TIPOREL := 'ANALITICO';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TfrmOrdemMecanica.Serviosporequipe011Click(Sender: TObject);
begin
  AbrirForm(TFRelEquipe, FRelEquipe, 0);
end;

procedure TfrmOrdemMecanica.Serviosporequipe021Click(Sender: TObject);
begin
  FMenu.TIPOREL := 'EQUIPE';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
  FMenu.TIPOREL := '';
end;

procedure TfrmOrdemMecanica.Serviosporclassificao1Click(Sender: TObject);
begin
  FMenu.TIPOREL := 'RELSERVICOCLASSIFICACAO';
  DMBANCO.TAlx.Close;
  DMBANCO.TAlx.SQL.Clear;
  DMBANCO.TAlx.SQL.Add('SELECT * FROM CAIXA where caixa.cod_loja=:CODLOJA');
  DMBANCO.TAlx.ParamByName('CODLOJA').AsInteger :=
    StrToInt(FMenu.LCODLOJA.Caption);
  DMBANCO.TAlx.Open;
  AbrirForm(TFRelData, FRelData, 0);
end;

procedure TfrmOrdemMecanica.ServiosporclassificaoGrfico1Click(
  Sender: TObject);
begin
  FMenu.TIPOREL := 'RELSERVICOCLASSIFICACAOGRAFICO';
  DMBANCO.TAlx.Close;
  DMBANCO.TAlx.SQL.Clear;
  DMBANCO.TAlx.SQL.Add('SELECT * FROM CAIXA where caixa.cod_loja=:CODLOJA');
  DMBANCO.TAlx.ParamByName('CODLOJA').AsInteger :=
    StrToInt(FMenu.LCODLOJA.Caption);
  DMBANCO.TAlx.Open;
  AbrirForm(TFRelData, FRelData, 0);
end;

procedure TfrmOrdemMecanica.Extrato1Click(Sender: TObject);
begin
  FMenu.TIPOREL := 'EXTRATO_OS';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TfrmOrdemMecanica.ProdutosvendidoscomCusto1Click(
  Sender: TObject);
begin
  FMenu.TIPOREL := 'RELATORIODEVENDADEPRODUTOCUSTO';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TfrmOrdemMecanica.ProdutosvendidoscomcustodeNFe1Click(
  Sender: TObject);
begin
  FMenu.TIPOREL := 'RELATORIODEVENDADEPRODUTOCUSTONFE';
  AbrirForm(TFRelMecanica, FRelMecanica, 0);
end;

procedure TfrmOrdemMecanica.LaudoTcnico2Click(Sender: TObject);
var
  objRelatorioOrdemServico : TRelatorioOrdemServico;
begin
   objRelatorioOrdemServico := TRelatorioOrdemServico.Create(Self);
   try
       if FiltraTabela(DMServ.WOrdem, 'vwordem', 'cod_ordem', IntToStr(pkCodigoOrdem), '') = True
       Then Begin
           if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdem.FieldByNAme('COD_CLIENTE').AsString, '') = False then
           begin
               MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
               Exit;
           end;

           if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '') = False then
           begin
               MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
               Exit;
           end;

           objRelatorioOrdemServico.ImprimirLaudoPaginaInteira(DMSERV.WOrdem.FieldByNAme('COD_ORDEM').AsInteger);
       End;
   finally
       objRelatorioOrdemServico.Destroy;
   end; 
end;

procedure TfrmOrdemMecanica.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //botão GRAVAR
   if Key = vk_f5 then
       if PCadastro.Visible then
           BtnGravar.Click;

   //botão CANCELAR
   if Key = vk_f7 then
       if PCadastro.Visible then
           BtnCancelar.Click;

   //botão novo
   if Key = vk_f4 then
       if PConsulta.Visible then
           BtnNovo.Click;

   //botão consultar
   if Key = vk_f6 then
       if PConsulta.Visible then
           BtnConsultar.Click;
           
    If Key=VK_F12
    Then Begin
        If Mensagem('Logoff de Usuário', 'Tem certeza que deseja efetuar logoff de ' +FMenu.EdUsuario.Text, '', 2, 3, false, 'c')=2 Then
            AbrirForm(TFLogoff1, FLogoff1, 1);
    End;

end;

procedure TfrmOrdemMecanica.Adiantamento;
begin
   try
       begin

           Auditoria(IntToStr(pkCodigoOrdem), 'Comanda Fechamento FP OS', 'Tela de consulta',
               'Número: ' + DmServ.WOrdem.FieldByName('NUMERO').AsString +
               '; Data OS: ' + DmServ.WOrdem.FieldByName('DTABERT').AsString +
               '; Cliente: ' + DmServ.WOrdem.FieldByName('CLIENTE').AsString +
               '; Veículo: ' + DmServ.WOrdem.FieldByName('PLACA').AsString + ' : ' + DmServ.WOrdem.FieldByName('EQUIPAMENTO').AsString +
               '; Forma Pagamento: ' + DmServ.WOrdem.FieldByName('FORMAPAG').AsString +
               '; Tipo Fechamento: ' + DMMACS.TLoja.FieldByName('FORMAFECHAMENTOOS').AsString +
               '; Tipo Pagamento: ' + DmServ.WOrdem.FieldByName('TIPOPAG').AsString +
               '; Valor Produtos: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TPROD').AsCurrency)  +
               '; Valor Serviços: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TSERV').AsCurrency)  +
               '; Valor OS: ' + FormatFloat('0.00', DmServ.WOrdem.FieldByName('TOTAL').AsCurrency)) ;

           LancarAdiantamentos('ORDEM', DmServ.WOrdem.FieldByName('COD_ORDEM').AsInteger);
       End
   except

   end;
end;

procedure TfrmOrdemMecanica.ChamaAdiantamento;
var
  xContinua: Boolean;
begin
   try
       xContinua := True;

       if ControlAccess('FECHORD', 'M') = False then
           Exit;
       pkCodigoOrdem := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;
       RefreshOrdem;
//       if xPermiteFechar = false then
//       begin
//           MessageDlg('Esta ordem de serviço já se encontra em processo de fechamento.', mtInformation, [mbOK], 0);
//           xContinua := False;
//       end;
       if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(pkCodigoOrdem),
                       '') = True then
       begin
           if DMServ.TOrd.FieldByName('TOTORD').AsCurrency = 0 then
           begin
               Mensagem('OPÇÃO BLOQUEADA',
                       'Esta ordem não contém produto ou serviços. Por isso não pode ser fechada!',
                       '', 1, 1, False, 'i');
               xContinua := False;
           end;
       end;
       if xContinua = True then
       begin
           if MessageDlg('Lançar adiantamento a Ordem de Serviço selecionada?' + #13 + #10 +
                           'Número: ' + DMServ.WOrdem.FieldByName('numero').AsString + #13 + #10 +
                           'Cliente: ' + DMServ.WOrdem.FieldByName('cliente').AsString + #13 + #10
                           + 'Valor: ' + FormatFloat('#,###0.000',
                           DMServ.WOrdem.FieldByName('TOTAL').AsCurrency), mtConfirmation, [mbYes,
                           mbNo], 0) = mrYes then
           begin
               FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
               Adiantamento;
           End;
       End;
   except
       MessageDlg('Ocorreu uma falha durante o processo. Ferifique o resultado das ações.', mtWarning, [mbOK], 0);
   end;
end;

procedure TfrmOrdemMecanica.LanarAntecipao1Click(Sender: TObject);
var antecipa:TfrmAntecipa;
begin
   ChamaAdiantamento;
end;

end.
