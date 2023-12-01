{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE ON}
{$WARN UNSAFE_CODE ON}
{$WARN UNSAFE_CAST ON}
unit UPadraoFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, EditFloat,
  ColorEditFloat, Mask, ColorMaskEdit, ComCtrls, Grids, DBGrids,
  FashionPanel, IBQuery, Printers, Winspool, frxClass, NFe_Util_2G_TLB,
  TFlatEditUnit, TFlatComboBoxUnit, TFlatButtonUnit, TFlatPanelUnit;

type
  TFPadraoFiscal = class(TFPadrao)
    Panel1: TPanel;
    Shape1: TShape;
    EdNumeroFiscal: TColorEditFloat;
    Label1: TLabel;
    BtnProcuraPessoa: TBitBtn;
    Shape5: TShape;
    Label2: TLabel;
    EdDtEmissao: TColorMaskEdit;
    Shape6: TShape;
    Label3: TLabel;
    EdDtsaidaEntrada: TColorMaskEdit;
    Shape7: TShape;
    Label4: TLabel;
    EdHoraSaida: TColorMaskEdit;
    Shape8: TShape;
    LCfop: TLabel;
    Label6: TLabel;
    PageControl1: TPageControl;
    LBFatura: TTabSheet;
    TabSheet10: TTabSheet;
    DbGridServicos: TDBGrid;
    PErro: TPanel;
    FashionPanel1: TFashionPanel;
    SpeedButton1: TSpeedButton;
    MErros: TMemo;
    Label30: TLabel;
    LNatOp: TLabel;
    Shape35: TShape;
    cbsaida: TCheckBox;
    cbentrada: TCheckBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    LPeriodoFiscal: TLabel;
    BtnImprimir: TButton;
    Shape37: TShape;
    BtnAlterarPeriodo: TBitBtn;
    Shape38: TShape;
    Label32: TLabel;
    PComplementar: TPanel;
    Shape41: TShape;
    Label33: TLabel;
    EdNumNFe: TEdit;
    EdClienteNfe: TEdit;
    EdValorNfe: TColorEditFloat;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    BtnLoteOk: TBitBtn;
    BtnCancelaLote: TBitBtn;
    LbFaturaNF: TMemo;
    TabSheet9: TTabSheet;
    DBGridConsumo: TDBGrid;
    DbGridProdutos: TDBGrid;
    Label38: TLabel;
    cbRetIss: TComboBox;
    Shape42: TShape;
    Label40: TLabel;
    edConfins: TColorEditFloat;
    Shape43: TShape;
    Label39: TLabel;
    edIss: TColorEditFloat;
    Shape44: TShape;
    Label41: TLabel;
    edPis: TColorEditFloat;
    lbErro: TLabel;
    btnSetaPadrao: TButton;
    PChaveAcesso: TPanel;
    btnInsereChave: TBitBtn;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    Shape9: TShape;
    EdBaseICMS: TColorEditFloat;
    Label7: TLabel;
    EdVlrIcms: TColorEditFloat;
    Shape10: TShape;
    Label8: TLabel;
    EdBaseICMSST: TColorEditFloat;
    Shape11: TShape;
    Label9: TLabel;
    EdVlrIcmsST: TColorEditFloat;
    Shape12: TShape;
    Shape13: TShape;
    Label10: TLabel;
    EdVlrFrete: TColorEditFloat;
    CBFreteNF: TCheckBox;
    Shape14: TShape;
    EdVlrSeguro: TColorEditFloat;
    Label11: TLabel;
    EdVlrOutrasDesp: TShape;
    EdOutrasDespesas: TColorEditFloat;
    Label12: TLabel;
    Shape16: TShape;
    Label13: TLabel;
    EdVlrIpi: TColorEditFloat;
    Shape40: TShape;
    Label34: TLabel;
    EdDesconto: TColorEditFloat;
    Shape36: TShape;
    Label31: TLabel;
    EdVlrIss: TColorEditFloat;
    Shape21: TShape;
    Label29: TLabel;
    EdVlrServicos: TColorEditFloat;
    Shape15: TShape;
    Shape33: TShape;
    Label26: TLabel;
    Shape31: TShape;
    EdTotalProdutos: TColorEditFloat;
    Shape32: TShape;
    Label27: TLabel;
    EdTotalNotaFiscal: TColorEditFloat;
    Label14: TLabel;
    Shape17: TShape;
    LTransportadora: TLabel;
    Shape20: TShape;
    LTranspCpfCnpj: TLabel;
    Shape18: TShape;
    LTranspEndereco: TLabel;
    Shape19: TShape;
    LTranspMunicipio: TLabel;
    BtnProcuraTransp: TBitBtn;
    BitBtn1: TBitBtn;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Shape34: TShape;
    Shape22: TShape;
    EdFreteConta: TEdit;
    EdPlacaVeiculo: TEdit;
    Label18: TLabel;
    Shape23: TShape;
    Label19: TLabel;
    Shape24: TShape;
    EdUFVeiculo: TEdit;
    Shape25: TShape;
    EdQuantidadeVeiculo: TColorEditFloat;
    Label20: TLabel;
    Label21: TLabel;
    Shape26: TShape;
    EdEspecieVeiculo: TEdit;
    Shape27: TShape;
    EdMarcaVeiculo: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Shape28: TShape;
    EdNumVeiculo: TEdit;
    Label24: TLabel;
    EdPesoBrutoVeiculo: TColorEditFloat;
    Shape29: TShape;
    Label25: TLabel;
    Shape30: TShape;
    EdPesoLiquidoVeiculo: TColorEditFloat;
    EdChaveNFE: TFlatEdit;
    Label28: TLabel;
    TabSheet4: TTabSheet;
    MDadosAdicionais: TMemo;
    MReservadosFisco: TMemo;
    Label42: TLabel;
    Label43: TLabel;
    Shape45: TShape;
    Label44: TLabel;
    cbTipoDocumento: TFlatComboBox;
    PFalha: TPanel;
    ShErro: TShape;
    EdErro: TEdit;
    TabSheet1: TTabSheet;
    edNumeroDi: TFlatEdit;
    Label45: TLabel;
    edDtRegistroDi: TDateTimePicker;
    Label46: TLabel;
    edDtDesembDi: TDateTimePicker;
    Label47: TLabel;
    Label48: TLabel;
    cbTipoTransporte: TComboBox;
    Label49: TLabel;
    edValorAfrmm: TColorEditFloat;
    cbFormaImportacao: TComboBox;
    Label50: TLabel;
    Label51: TLabel;
    edCnpjAdqDi: TFlatEdit;
    Label52: TLabel;
    edUfAdqDi: TFlatEdit;
    edCodigoExportador: TFlatEdit;
    Label53: TLabel;
    GroupBox1: TGroupBox;
    edNumAdicao: TFlatEdit;
    Label54: TLabel;
    edCodFabricanteAdicao: TFlatEdit;
    Label55: TLabel;
    edDescontoAdicao: TColorEditFloat;
    Label56: TLabel;
    edDrawback: TFlatEdit;
    Label57: TLabel;
    btnInsereAdicao: TBitBtn;
    btnRemoveAdicao: TBitBtn;
    gridAdicao: TDBGrid;
    LNomePessoa: TLabel;
    PDadosConsumidor: TPanel;
    Label62: TLabel;
    Label59: TLabel;
    edCpfConsumidor: TFlatEdit;
    Label61: TLabel;
    edNomeConsumidor: TFlatEdit;
    BtnConfirmarConsumidor: TButton;
    BtnCancelarConsumidor: TButton;
    pNfce: TPanel;
    pConsumidor: TFlatPanel;
    Label60: TLabel;
    LCpfConsumidor: TLabel;
    Label58: TLabel;
    LNomeConsumidor: TLabel;
    BtnInformarConsumidor: TFlatButton;
    comCpf: TCheckBox;
    semCpf: TCheckBox;
    pNfe: TPanel;
    Shape2: TShape;
    LCpfCnpj: TLabel;
    Shape4: TShape;
    LInscEstadual: TLabel;
    Shape3: TShape;
    LUF: TLabel;
    LMunicipio: TLabel;
    Shape39: TShape;
    LCodIbge: TLabel;
    pRateioValores: TPanel;
    Label63: TLabel;
    CbLiTxtRateio: TCheckBox;
    BtnOkRateio: TButton;
    BtnCancelarRateio: TButton;
    btnRateio: TBitBtn;
    Label64: TLabel;
    btnProcuaCfop: TBitBtn;
    btnContingencia: TBitBtn;
    cbOperacaoInterna: TCheckBox;
    TabSheet5: TTabSheet;
    Shape46: TShape;
    Label65: TLabel;
    edPISRetido: TColorEditFloat;
    Shape47: TShape;
    edBCPrevidenciaRetido: TColorEditFloat;
    Label67: TLabel;
    Label66: TLabel;
    Shape48: TShape;
    edCofinsRetido: TColorEditFloat;
    Shape49: TShape;
    Label68: TLabel;
    edCsllRetido: TColorEditFloat;
    Shape50: TShape;
    Label69: TLabel;
    edBCRetido: TColorEditFloat;
    Shape51: TShape;
    Label70: TLabel;
    edIrrfRetido: TColorEditFloat;
    Shape52: TShape;
    Label71: TLabel;
    edValorPrevidenciaRetido: TColorEditFloat;
    cbDeduzirRetencoes: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure BtnProcuraPessoaClick(Sender: TObject);
    procedure EdErroClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdFreteContaKeyPress(Sender: TObject; var Key: Char);
    procedure EdBaseICMSSTExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBFreteNFClick(Sender: TObject);
    procedure EdVlrFreteExit(Sender: TObject);
    procedure BtnProcuraTranspClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure EdVlrIcmsExit(Sender: TObject);
    procedure PCDadosAdicionaisChange(Sender: TObject);
    procedure PCReservadosFiscoChange(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure PCDadosAdicionaisExit(Sender: TObject);
    procedure PCReservadosFiscoExit(Sender: TObject);
    procedure EdDtsaidaEntradaExit(Sender: TObject);
    procedure BtnAlterarPeriodoClick(Sender: TObject);
    procedure EdNumeroFiscalExit(Sender: TObject);
    procedure BtnAbreLoteClick(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure BtnCancelaLoteClick(Sender: TObject);
    procedure BtnLoteOkClick(Sender: TObject);
    procedure EdNumNFeExit(Sender: TObject);
    procedure EdPlacaVeiculoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPlacaVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure DbGridServicosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DbGridServicosDblClick(Sender: TObject);
    procedure cbRetIssExit(Sender: TObject);
    procedure btnSetaPadraoClick(Sender: TObject);
    procedure btnInsereChaveClick(Sender: TObject);
    procedure EdOutrasDespesasExit(Sender: TObject);
    procedure cbTipoDocumentoChange(Sender: TObject);
    procedure btnInsereAdicaoClick(Sender: TObject);
    procedure btnRemoveAdicaoClick(Sender: TObject);
    procedure edNumAdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInformarConsumidorClick(Sender: TObject);
    procedure edCpfConsumidorExit(Sender: TObject);
    procedure BtnConfirmarConsumidorClick(Sender: TObject);
    procedure BtnCancelarConsumidorClick(Sender: TObject);
    procedure comCpfClick(Sender: TObject);
    procedure semCpfClick(Sender: TObject);
    procedure btnRateioClick(Sender: TObject);
    procedure CbLiTxtRateioClick(Sender: TObject);
    procedure BtnOkRateioClick(Sender: TObject);
    procedure BtnCancelarRateioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProcuaCfopClick(Sender: TObject);
    procedure btnContingenciaClick(Sender: TObject);
    procedure cbOperacaoInternaClick(Sender: TObject);
    procedure cbDeduzirRetencoesClick(Sender: TObject);
  private
    { Private declarations }
    //Função que chama todas as demais atualizando os dados na tela
    function Atualiza: Boolean;
    //Função para inicializar variáveis
    function InicializaVar: Boolean;
    //Função para iniciar as variaveis de uf de origem e destino
        //Function InicializaVarUF: Boolean;
    //Função Utilizada para registrar no memo de falhas os erros e falhas na validação
    function RegistraFalha(Texto: string): Boolean;
    //Função utilizada para escrever Pessoa (Cliente/Fornecedor)
    function EscrevePessoa: Boolean;
    //Função utilizada para escrever todos os itens de produto
    function EscreveItensProduto: Boolean;
    //Função utilizada para escrever todos os itens de Serviço/Desepesas adicionais
    function EscreveItensServ: Boolean;
    //Função para validar os serviços (Despesas adicionais)
    function ValidaDespadic: Boolean;
    //Função para validar os produtos
    function ValidaProdutos: Boolean;
    //Função para verificar a configuração dos cfops em loja para produtos
    function VerificaCfopProdutoLoja: Boolean;
    //Função para validar os CFOP de produtos conforme localização de comercialização e CST
    function ValidaCfopProdutos: Boolean;
    //Função para Atualizar o cst/csosn de acordo com o situação e operação ocorrida
   //	     Function AtualizaCstCsosn: Boolean;
       //Função Utilizada para atualizar aliquota e valor total da tributação para cada item na nota
    function AtualizaValorTotalTributacaoItem: Boolean;
    //Função para validar C.S.T. dos produtos
    function ValidaCstProdutos: Boolean;
    //Função para Escrever os CFOPS usados na NF
    function EscreveCfops: Boolean;
    // Função para validar dados fiscais da empresa
    function ValidaDadosEmpresa: boolean;
    //Função utilizada para validar os dados reservados ao fisco
    function ValidaReservadoFisco: Boolean;
    //Função utilizada para validar os dados adicionais
    function ValidaDadosAdicionais: Boolean;
    //Função utilizada para Selecionar as tabelas Master (pedido de venda, pedido de compra e ordem)
    function SelecionaTabelasPedidos: Boolean;
    //Função para validar UN dos produtos
    function ValidaUNProdutos: Boolean;
    //Função para validar NCM dos produtos
    function ValidaNCMProdutos: Boolean;
    //função para validar a presença do ANP
    function ValidaAnpProdutos: Boolean;
    // Função para validar a numeração da NF
    function ValidaNumNf: boolean;
    //Função utilizada para Calcular e dividir o desconto proporcialmente da NF entre todos os produtos
    function CalcDescProdutosNf: Boolean;
    //Função utilizada para Calcular e dividir o desconto proporcialmente da NF entre os serviços
    function CalcDescServicosNf: Boolean;
    //Função utilizada para Calcular e total da Nota Fiscal
    function CalcTotalNF: Boolean;
    //Função utilizada para Calcular Impostos da NF
    function CalcImpostosNF: Boolean;
    Function CalcBCRetencaoPisCofins: Boolean;
    //Função utilizada para Calcular Impostos de cada item de produto da NF
    function CalcImpostosProdutosNF: Boolean;
    //Edmar - 19/01/2016 - Função para calcular o icms de uf de destino da NFe
    function CalcImpostoIcmsUfDestino: Boolean;
    //Função utilizada para Calcular Icms Substituição Tributária Industrias do Simples
 //		 Function CalculoIcmsSubstituicaoInsustriasSimples: Boolean;
    //Função utilizada para Calcular Icms Substituição Tributária para empresas normais
    function CalculoIcmsSubstituicaoEmpresaNormal: Boolean;
    //funcção utilizada em pedido de compra para zerar os icms negatrivos
    function ZeraIcmsNegativosProdutosNF: Boolean;

    //Função utilizada para efetuar calculo de rateio de Substituição Tributária entre os Itens de entrada
    function RateioStEntrada: Boolean;
    //Função utilizada para efetuar o rateio de valor e base icms para pedidos de compra
    function RateioValorBaseIcms: Boolean;
    //Função utilizada para efetuar o rateio de diferimento de icms entre os itens tributados
    function RateioDiferimento: Boolean;
    //Função utilizada para limpar os labels e edits de transportadora
    procedure LimpaLabelTransp;
    //Função utilizada para limpar os valores de edits de impostos
    procedure LimpaValoresImpostos;
    //Função utilizada para localizar o codigo (chave primaria) do periodo para lançar os documentos fiscais
    function BuscaPeriodoFiscal: Boolean;
    //Função utilizada para enviar nota fiscal para impressão
    function ImpNf: Boolean;
    //Função utilizada para enviar nota fiscal eletronica para o servidor da receita
    function ImpNfe: Boolean;
    //Função utilizada para devolver o proximo numero da nota fiscal de saida que seja valido
    function NfProxnumero: Integer;
    //Função para retornar o próximo numero fiscal válido a impressão
    function NfProxnumeroNF: Integer;
    //Função utilizada para setar configurações de impressora
    function NFSetImpressora: Boolean;
    //Imprime cabeçalho em Nota Fiscal
    function NFCabecalho: Boolean;
    //Seleciona e Imprime a Fatura de Nf da Ordem de Serviço
    function NFFatura(XTipoOp: Integer): Boolean;
    //Imprime Produtos em Nota Fiscal de Ordem de Serviço
    function NFProdutos: Boolean;
    //Imprime Despesas em Nota Fiscal
    function NFDespesas: Boolean;
    //Imprime Impostos marcados com x em Nota Fiscal
    function NFImpostosX: Boolean;
    //Imprime Impostos calculados em Nota Fiscal
    function NFImpostos: Boolean;
    //Imprime Transportador em Nota Fiscal
    function NFTransportadora: Boolean;
    //Imprime Dados Adicionais em Nota Fiscal
    function NFDadosAdicionais: Boolean;
    //Imprime Dados de Reservado ao fisco
    function NFReservadoFisco: Boolean;
    //Função Utilizada para imprimir determinado campo
    function ImpCampo(XCampo: string; XValor: string; XTipoCampo: Char):
      Boolean;
    //Função Utilizada para calcular as medias de base e valor de icmssubstituição tributária, tendo como base operações de entrada
    function CalcMediaSubstituicaoTributaria(CodigoEstoque: Integer): Boolean;
    //Procedure utilizada para setar a pagina (papel) atual um novo tamanho
    procedure SetPrinterPage_9x(Largura, Altura: LongInt);
    //Uma procedure diferente para mudar o tamanho do papel em tprinter
    procedure SetPrinterPage_Xp(PaperSize, Comp, Alt: integer);
    //função complementar da Verifica impressora Online
    function VerImpressoraONLINE: Cardinal;
    //Função para remover quebras de linhas dos memos de dados adicionais (enter)
    function RemoveQuebraLinha(sString: string): string;
    //função para ler a impressora corrente
    function GetCurrentPrinterHandle: THandle;
    //Paulo 05/03/2011: Mostra a fatura
    function MostraFatura: Boolean;
    //Paulo 23/09/2011: Função utilizada para escrever todos os itens de Produtos de Consumo
    function EscreveItensConsumo: Boolean;
    //Paulo 23/09/2011: Função para validar os CFOP de produtos consumo conforme localização de comercialização e CST
    function ValidaCfopConsumo: Boolean;
    //Edmar - 05/12/2013 - Função utilizada para validar serviços da Nfse
    function validaNfse: boolean;
    //Edmar - 12/12/2013 - Função usada para enviar Nfe
    function enviaNfe: Boolean;
    //Edmar - 12/12/2013 - Função usada para enviar Nfse
    function enviaNfse: Boolean;
    //Edmar - 22/01/2014 - Função usada para verificar se o cliente possui e-mail
    function VerificarEmailTomador(xCodGerador: string): boolean;
    //Edmar - 12/03/2015 - função auxiliar pra fazer dados de devolução
    function ValidaDevolucao: Boolean;
    //Edmar - 06/05/2015 - função auxiliar para fazer o rateio do frete do item
    function RateioFrete: Boolean;
    //Edmar - 07/05/2015 - função auxiliar para fazer o rateio das despesas acessórias do produtos
    function RateioOutDespesas: Boolean;
    //Edmar - 06/11/2015 - função auxiliar para fazer o rateio dos valores de ICMS
    function RateioIcms: Boolean;
    //Edmar - 06/11/2015 - função auxiliar pra fazer o rateio dos valores de ICMS ST
    function RateioIcmsSt: Boolean;
    //Edmar - 06/11/2015 - função auxiliar pra fazer o rateio dos valores de IPI
    function RateioIpi: Boolean;
    //Edmar - 11/06/2015 - função auxiliar para atualizar o tipo do cliente
    function AtualizaClienteConsumidor: Boolean;
    //Edmar - 14/08/2015 - Função para validar os dados da importação
    function ValidaDadosImportacao: Boolean;
    //Edmar - 26/11/2015 - Valida os dados do estrangeiro(info. gerais e endereço)
    function ValidaDadosEstrangeiro: Boolean;
    //Edmar - 14/08/2015
    function FiltraAdicaoImportacao: Boolean;
    //Edmar - 14/08/2015
    function LimpaCamposAdicao: Boolean;
    //Edmar - 14/08/2015 - função verifica se algum item está com cst 101 e altera para 102
    function VerificaCsosnNFCe: Boolean;
    //
    procedure InfoAdicionaisUfDestino;
    //Edmar - 14/10/2016 - Atualiza o valor de ST e atualiza CST do Item
    procedure CalcDiferencialST;
    //Edmar - 05/12/2016 - Recalcula o valor de ISS
    procedure CalcISSServico;

  public
    { Public declarations }
        //XUfOrigem, XUfDestino: String; //Armazena UF de Origem (Estado da Empresa Usuário) e UF Destino (Estado do cliente ou do fornecedor)
    XCodCstST: Integer;
    xValorTotal, xValorIss: Double;
    XTipo: string;
      //esta tela é publica para vendas compras e ordens, este campo define se é PEDV PEDC ou ORDEM
  end;

var
  FPadraoFiscal: TFPadraoFiscal;
  XCod_Pedido: Integer;
    // Armazena temporariamente qual o código (chave primária) do pedido de venda, pedido de compra ou Ordem de serviço sendo trabalhada
  XCod_Pessoa: Integer;
    //Armazena temporariamente o código (chave Primária) do cliente ou fornecedor
  XCod_Transp: Integer;
    // Armazena temporariamente a chave primaria da transportadora
  XValidado, xPrimeiraVez, xPartiuCheckBox: Boolean;
    //Variavel para controle do formulario, se ela se apresentar verdadeira significa que todas as informações estão Ok
  XCFOP_OP, XCFOP_ST, XCFOP_SERV, XCFOP_MATCONSUMO, XCFOP_PERSONALIZADO: Boolean;
    //Variáveis para controlar se foram encontradas cfops de operação própria, de substituição e/ ou serviços, e/ou materias de consumo próprio
  XCfopManual: Boolean;
    //Marcador para controlar se o cfop foi alterado manualmente, se true, desconciderar o cfop retornado pelo sistema e pegar sempre o que o usuario buscou
  XEmpresaTributaST, XEmpresaInustria, XClientedoSimples,
    {XClienteConsumidorFinal,}XClienteIE: Boolean;
    //Variavel de controle para determinar se a empresa usuaria do sistema tributa icms de substituição tributária nos impostos da nota ou não
  XCstReducao: Boolean;
    // Variável para controlar se existe item com codigo de substituição tributária com redução na base de calculo
  //Variáveis para armazenar os Cfops de Entrada
  XCFOPINTDEVPROPRIA, XCFOPEXTDEVPROPRIA, XCFOPINTSTPC, XCFOPEXTSTPC,
    XCFOPINTPC, XCFOPEXTPC, XCFOPMATCONSUMO, XCFOPMATCONSUMOEXT, XCFOPFRETEINT,
    XCFOPFRETEEXT: string;
  //Variáveis para armazena os cfop de saida
  XCFOPINTERNO, XCFOPEXTERNO, XCFOPINTERNOCST, XCFOPEXPERTOCST,
    XCFOPINTSIMPREMESSA, XCFOPEXTSIMPREMESSA: string;
  //Edmar - 23/09/2014 - Armaze o cfop especifico para o produto
  XCFOPPERSONALIZADO: string;
  //Variáveis para armazena os cfop de Serviços
  XCfopIntServ, XCfopExtServ: string;
  //Variaveis que definem qual cfop será usado realmente na Nota, disponibilizamos 3 cfops, XCFOP1 = Produto St, XCFOP2 = Produto Op, XCFOP3 = Serviços
  XCFOP1, XCFOP2, XCFOP3: string;
  XCod_Cfop1, XCod_Cfop2, XCod_Cfop3: Integer;
    //Seleciona os codigos chave primaria para os cfops
  //Variaveis vinda do estado
  XTxtProtocolo: string;
  //Variavel para armazenar chave primária de cst do estado de destino
    //XCSTInterestadual: Integer;
  XMvaEstado, XAlqIntDestinatario, XAliqExtDestinatario, XAliqIcms,
    XAuxBaseIcmsSubstituicao, XAuxVlrIcmsSubstituicao, XAuxIcmsOp: Real;
  //Variaveis Totoalizadoras para produtos
  XTotalProdSemDesc, XTotalProdComDesc: Real;
  //Variaveis Totoalizadoras para servicos
  XAliqIss, XTotalServSemDesc, XTotalServComDesc, xValorTotalServico: Real;
  //Variáveis Totalizadores para NF
  XTotalNF: Real;
  //Variavel de Total de Impostos
  XVlrBaseIcmsOp, XVlrBaseIcmsSt, XVlrIcmsOp, XVlrIcmsSt, XvlrIpi,
    XVlrAliquotaTotTributa: Real;
  XValorTotalAproxTributacaoEstadual, XValorTotalAproxTributacaoNacional,
    XAliqTotTribEstadual, XAliqTotTribNacional: Real;
  //Variáveis abaixo para controle de credito de icms
  XOperacaoCreditoIcms: Boolean;
  XAliquotaCreditoIcms, XValorCreditoIcms: Real;

  //Variáveis para armazenar temporariamente a media de base e valor de icms substituição tributária para casos em que o icms st não é calculado na nf devendo ser apenas incluida em dados adicionais
  XMediaBaseST, XMediaValorST: Real;
  //Variaveis para armazenar temporariamente o nome das tabelas para uso generico
  XTabItemProd, XTabFiscal: TIbQuery;
  //Variavel para pegar o Código do periodo para inserir no documento fiscal
  XCod_Perido_Fiscal: Integer;
  XCFOPOUTROS1, XNomePeriodoFiscal: string;
  XDtIniPeriodo, XDtFimPeriodo: TDate;
  XQTDPAG: Integer;
    //Variavel que determina a quantidade de paginas a serem impressas na nota
  XNUMLIN, XQTDITEMIMPPAG, XQTDPAGIMP: Integer;
    //Variavel para controle de linhas para impressão da nota fiscal
  XDadosAdicionaisReimp: Boolean;
    //Variavel para controlar os dados adicionais em caso de reimpressão... garante que os dados adicionais virão da tabela de documentos fiscais apenas quando ativar o formulario e não possibilitando a edição dos mesmos
  XCuponProx: string; //Paulo 10/08/2010 PAra controle do cupom fiscal
  XAlx, XConta: Integer; //Paulo 10/08/2010 PAra controle do cupom fiscal
  XImpLig: Boolean;
    //Paulo 23/08/2010: Para verificar se a impressora esta ligada
  XNumECF: string;
    //Variável utilizada para armazenar numero do cupom fiscal, caso seja a reimpressão de um cupom fiscal para NFe, se não for esta variavel fica em branco
  XEstadoIsentoST: Boolean;
  XFaturaNF, XNatOp: string;
    //Paulo 11/11/2010: Para a natOp de ordem aparecer com o nome do serviço
  XServicoOp: Boolean; //Paulo 11/11/2010: Para controle na elaboração do xml
  XChaveFiscalNFeXml: string;
    //Jônatas 29/07/2013 - Armazena a chave da NFe para passar de um form pro outro
  XAtualizaNota: Integer;
    //Jônatas 31/07/2013 - Verifica se foi pressionado o botão de atualizar(BitBtn2) para controle do edit DtsaidaEntrada
  XrefNfe, XNumNFeComp, XNFeChaveComp: string;
    //Paulo 01/12/2010: Para armazenar a chave da nfe que será feito o complemento
  XEstrangeiro: Boolean;
  XCepPessoa: string;
  XCodDocFisEstrangeiro: Integer;
  xOrgaoMunicipalEstadual, xOrgaoFederal, xEmpresaRetemImpostos : Boolean;
  xBCRetencaoImpostos, xBCRetencaoPisCofins, xAliqRetemPis, xAliqRetemCofins, xAliqRetemIRRF, xAliqRetemCsll: Real;
  xValorRetencaoImpostos, xValorTotalRetencao, xValorRetencaoPis, xValorRetencaoCofins, xValorRetencaoCsll, xValorRetencaoIrrf: Real;

implementation

uses Alxor32, UDMSaida, UDmServ, UDMEntrada, UDMMacs, Math, UFORNECEDOR,
  UCliente, UDMEstoque, UMenu, UDMPessoa, UDMGEOGRAFIA, UFiscal,
  AlxMessage, UDMCaixa, UDMConta, UPeriodoFiscal, USenha, DB,
  UMzrNfe, UCadCFOP, UPedidoPadrao, Alxorprn, UnitDeclaracoes,
  UValidacaoNFe, UPedCompra, UOrdemMec, UFServico, UMzrNFSe,
  UEscolhaServico, ComObj, UMDO, StrUtils, DateUtils;

{$R *.dfm}

function TFPadraoFiscal.GetCurrentPrinterHandle: THandle;
var
  Device, Driver, Port: array[0..255] of char;
  hDeviceMode: THandle;
begin
  Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
  if not OpenPrinter(@Device, Result, nil) then
    RaiseLastWin32Error;
end;

//Função para remover quebras de linhas dos memos de dados adicionais (enter)

Function TFPadraoFiscal.CalcBCRetencaoPisCofins: Boolean;
Begin
   xBCRetencaoPisCofins := 0;
   If XTipo = 'PEDC'
   Then Begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add(' select Sum(itenspedc.valortotal) as total, Sum(itenspedc.descnf) as desconto, Sum(itenspedc.valorfrete) as frete, Sum(itenspedc.valordesp) as despesa from itenspedc where itenspedc.cod_pedcompra = :codigo ');
        DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx.Open;
        If Not DMESTOQUE.Alx.IsEmpty
        Then Begin
            xBCRetencaoPisCofins := DMESTOQUE.Alx.FieldByName('total').AsCurrency +
                                    DMESTOQUE.Alx.FieldByName('frete').AsCurrency +
                                    DMESTOQUE.Alx.FieldByName('despesa').AsCurrency -
                                    DMESTOQUE.Alx.FieldByName('desconto').AsCurrency;
        End;
    End;
    If XTipo = 'ORDEM'
    Then Begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add(' select Sum(itprodord.total) as total, Sum(itprodord.descnf) as desconto, Sum(itprodord.valorfrete) as frete, Sum(itprodord.valordesp) as despesa from itprodord  where itprodord.cod_ordem = :codigo ');
        DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx.Open;
        If Not DMESTOQUE.Alx.IsEmpty
        Then Begin
            xBCRetencaoPisCofins := DMESTOQUE.Alx.FieldByName('total').AsCurrency +
                                    DMESTOQUE.Alx.FieldByName('frete').AsCurrency +
                                    DMESTOQUE.Alx.FieldByName('despesa').AsCurrency -
                                    DMESTOQUE.Alx.FieldByName('desconto').AsCurrency;
        End;
    End;
    If XTipo = 'PEDV'
    Then Begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add(' select Sum(itenspedven.valortotal) as total, Sum(itenspedven.descnf) as desconto, Sum(itenspedven.valorfrete) as frete, Sum(itenspedven.valordesp) as despesa from itenspedven  where itenspedven.cod_pedven = :CODIGO');
        DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx.Open;
        If Not DMESTOQUE.Alx.IsEmpty
        Then Begin
            xBCRetencaoPisCofins := DMESTOQUE.Alx.FieldByName('total').AsCurrency +
                                    DMESTOQUE.Alx.FieldByName('frete').AsCurrency +
                                    DMESTOQUE.Alx.FieldByName('despesa').AsCurrency -
                                    DMESTOQUE.Alx.FieldByName('desconto').AsCurrency;
        End;

    End; 
End;

function TFPadraoFiscal.RemoveQuebraLinha(sString: string): string;
var
  i: Integer;
  s: string;
begin
  //  #13#10
  for i := 1 to Length(sString) do
  begin
    if (Copy(sString, i, 1) = chr(13)) or (Copy(sString, i, 1) = chr(10)) then
      s := s + ' '
    else
      s := s + Copy(sString, i, 1);
  end;
  Result := s;
end;
//função complementar da Verifica impressora Online

function TFPadraoFiscal.VerImpressoraONLINE: Cardinal;
var
  hPrinter: THandle;
  pInfo: PPrinterInfo2;
  bytesNeeded: DWORD;
begin
  hprinter := GetCurrentPrinterHandle;
  try
    Winspool.GetPrinter(hPrinter, 2, nil, 0, @bytesNeeded);
    pInfo := AllocMem(bytesNeeded);
    try
      Winspool.GetPrinter(hPrinter, 2, pInfo, bytesNeeded, @bytesNeeded);
      Result := pInfo^.Status;
    finally
      FreeMem(pInfo);
    end;
  finally
    ClosePrinter(hPrinter);
  end;
end;

//Procedure utilizada para setar a pagina (papel) atual um novo tamanho

procedure TFPadraoFiscal.SetPrinterPage_9x(Largura, Altura: LongInt);
var
  Device: array[0..255] of char;
  Driver: array[0..255] of char;
  Port: array[0..255] of char;
  hDMode: THandle;
  PDMode: PDEVMODE;
begin
  Printer.GetPrinter(Device, Driver, Port, hDMode);
  if hDMode <> 0 then
  begin
    pDMode := GlobalLock(hDMode);
    if pDMode <> nil then
    begin
      pDMode^.dmFields := pDMode^.dmFields or DM_PAPERSIZE;
      pDMode^.dmPaperSize := DMPAPER_USER;
      pDMode^.dmPaperWidth := Largura;
      pDMode^.dmPaperLength := Altura;
      GlobalUnlock(hDMode);
    end;
    GLobalFree(hDMode);
  end;
end;

//Uma procedure diferente para mudar o tamanho do papel em tprinter

procedure SetPrinterPage_Xp(PaperSize, Comp, Alt: integer);
var
  ADevice, ADriver, APort: array[0..255] of char;
  DeviceMode: THandle;
  M: PDevMode;
  s: string;
begin
  // Força o uso de Printer. Se esta linha for removida, a primeira
  // invocação falha. Bug da VCL
  S := Printer.Printers[Printer.PrinterIndex];
  // Pega dados da impressora atual
  Printer.GetPrinter(ADevice, ADriver, APort, DeviceMode);
  // Pega um ponteiro para DEVMODE
  M := GlobalLock(DeviceMode);
  try
    if M <> nil then
    begin
      // Muda tamanho do papel
      M^.dmFields := DM_PAPERSIZE;
      if PaperSize = DMPAPER_USER then
        M^.dmFields := M^.dmFields or DM_PAPERLENGTH or DM_PAPERWIDTH;
      M^.dmPaperLength := Alt;
      M^.dmPaperWidth := Comp;
      M^.dmPaperSize := PaperSize; //
      // Atualiza
      Printer.SetPrinter(ADevice, ADriver, APort, DeviceMode);
    end;
  finally
    GlobalUnlock(DeviceMode);
  end;
end;

//Paulo 01/12/2010: Para selecionar a chave da nota que será feito o complemento
procedure TFPadraoFiscal.BtnLoteOkClick(Sender: TObject);
begin
  inherited;
  XNFeChaveComp := DMSAIDA.TAlx.FieldByName('CHAVE').AsString;
  XNumNFeComp := DMSAIDA.TAlx.FieldByName('NUMFISCAL').AsString;

  PComplementar.SendToBack;
  PComplementar.Visible := False;
end;

procedure TFPadraoFiscal.BtnCancelaLoteClick(Sender: TObject);
begin
  inherited;
  PComplementar.SendToBack;
  PComplementar.Visible := False;
  EdNumNFe.Text := '';
  EdClienteNfe.text := '';
  EdValorNfe.ValueNumeric := 0.00;
end;

procedure TFPadraoFiscal.Panel1Exit(Sender: TObject);
begin
  inherited;
  if PComplementar.Visible = False then
end;

//Função Utilizada para calcular as medias de base e valor de icmssubstituição tributária, tendo como base operações de entrada

function TFPadraoFiscal.CalcMediaSubstituicaoTributaria(CodigoEstoque: Integer):
  Boolean;
begin
  try
    Result := True;
    if CodigoEstoque <> 0 then
    begin
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' select  Sum(itenspedc.qtdeprod) as Quantidade, Sum(itenspedc.vlricmssubs) as VlrSubstituicao, Sum(itenspedc.baseicmssubs) As BaseSubstituicao from itenspedc where (itenspedc.cod_estoque=:Codigo) ');
      DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := CodigoEstoque;
      DMESTOQUE.Alx.Open;
      if not DMESTOQUE.Alx.IsEmpty then
      begin
        if DMESTOQUE.Alx.FieldByName('Quantidade').AsCurrency > 0 then
        begin
          XMediaBaseST :=
            DMESTOQUE.Alx.FieldByName('BaseSubstituicao').AsCurrency /
            DMESTOQUE.Alx.FieldByName('Quantidade').AsCurrency;
          XMediaValorST :=
            DMESTOQUE.Alx.FieldByName('VlrSubstituicao').AsCurrency /
            DMESTOQUE.Alx.FieldByName('Quantidade').AsCurrency;
        end
        else
        begin
          XMediaBaseST :=
            DMESTOQUE.Alx.FieldByName('BaseSubstituicao').AsCurrency;
          XMediaValorST :=
            DMESTOQUE.Alx.FieldByName('VlrSubstituicao').AsCurrency;
        end;
      end
      else
      begin
        XMediaBaseST := 0;
        XMediaValorST := 0;
      end;
    end
    else
    begin
      XMediaBaseST := 0;
      XMediaValorST := 0;
    end;
  except
    Result := False;
  end;
end;
//Função Utilizada para imprimir determinado campo

function TFPadraoFiscal.ImpCampo(XCampo: string; XValor: string; XTipoCampo:
  Char): Boolean;
var
  LinhaImp: string;
  XValorMoeda: Real;
  I: Integer;
begin
  //Localiza o campo a ser impresso
  if FiltraTabela(DMMACS.TNF, 'NF', 'CAMPO', XCampo, '') = True then
  begin
    if XTipoCampo = 'S' then
    begin
      XValor := XValor;
      if DMMACS.TNF.FieldByName('ALINHAR').AsString = 'D' then
      begin
        for I := Length(XValor) to DMMACS.TNF.FieldByName('TAMANHO').AsInteger
          do
          if DMMACS.TNF.FieldByName('ALINHAR').AsString = 'D' then
            XValor := ' ' + XValor;

        LinhaImp := XValor;
      end
      else
      begin
        LinhaImp := XValor;
      end;
    end;
    if XTipoCampo = 'M' then
    begin
      try
        if XValor = '' then
          XValor := '0';
        XValorMoeda := StrToFloat(TiraPonto(XValor));
      except
        XValorMoeda := 0;
      end;
      XValor := FormatFloat('0.00', XValorMoeda);
      for I := Length(XValor) to DMMACS.TNF.FieldByName('TAMANHO').AsInteger do
        if DMMACS.TNF.FieldByName('ALINHAR').AsString = 'D' then
          XValor := ' ' + XValor
        else
          XValor := XValor + ' ';

      LinhaImp := XValor;
    end;
    Printer.Canvas.Font.Size := DMMACS.TNF.FieldByName('FONTE').AsInteger;
    try
      Printer.Canvas.TextOut(DMMACS.TNF.FieldByName('COLUNA').AsInteger,
        DMMACS.TNF.FieldByName('LINHA').AsInteger + XNUMLIN, LinhaImp);
    except

    end;
  end;
end;

//Imprime Transportador em Nota Fiscal

function TFPadraoFiscal.NFTransportadora: Boolean;
begin
  try
    ImpCampo('Nome Transp.', LTransportadora.Caption, 'S');
    ImpCampo('Frete por Conta', EdFreteConta.Text, 'S');
    ImpCampo('Placa Veiculo', EdPlacaVeiculo.Text, 'S');
    ImpCampo('UF Veiculo', EdUFVeiculo.Text, 'S');
    ImpCampo('CPF/CNPJ Transp.', LTranspCpfCnpj.Caption, 'S');
    ImpCampo('Endereco Transp.', LTranspEndereco.Caption, 'S');
    ImpCampo('Municipio Transp.', LTranspMunicipio.Caption, 'S');
    ImpCampo('UF Transp.', EdUFVeiculo.Text, 'S');
    //    	ImpCampo('IE Transp.', LI DMPESSOA.TALX1.FieldByName('insc_est').AsString, 'S');
    ImpCampo('Quant. Transp.', EdQuantidadeVeiculo.Text, 'S');
    ImpCampo('Especie Transp.', EdEspecieVeiculo.Text, 'S');
    ImpCampo('Marca Transp.', EdMarcaVeiculo.Text, 'S');
    ImpCampo('Numero Transp.', EdNumVeiculo.Text, 'S');
    ImpCampo('Peso Bruto Transp.', EdPesoBrutoVeiculo.Text, 'S');
    ImpCampo('Peso Liquido Transp.', EdPesoLiquidoVeiculo.Text, 'S');
  except
    RegistraFalha('   Falha: Erro ao imprimir transportadora');
    Result := False;
  end;
end;

//Imprime Impostos marcados com x em Nota Fiscal

function TFPadraoFiscal.NFImpostosX: Boolean;
begin
  ImpCampo('Base ICMS', 'X,XX', 'S');
  ImpCampo('Vlr. ICMS', 'X,XX', 'S');
  ImpCampo('Base ICMS Subs.', 'X,XX', 'S');
  ImpCampo('Vlr. ICMS Subs.', 'X,XX', 'S');
  ImpCampo('Vlr. Tot. Prod.', 'X,XX', 'S');
  ImpCampo('Vlr. Frete', 'X,XX', 'S');
  ImpCampo('Vlr. Seguro', 'X,XX', 'S');
  ImpCampo('Outras Desp.', 'X,XX', 'S');
  ImpCampo('Vlr Tot. IPI', 'X,XX', 'S');
  ImpCampo('Vlr. Tot. Prod.', 'X,XX', 'S');
  ImpCampo('Vlt Tot. NF', 'X,XX', 'S');

  // 13/03/2009: se em empresa estiver setado o ISS imprimir campos  relacionados
  if (XTipo = 'ORDEM') then
  begin
    ImpCampo('Vlr. ISS', 'X,XX', 'S');
    ImpCampo('Vlr. Tot. Serv.', 'X,XX', 'S');
  end;
end;
//Imprime Produtos em Nota Fiscal

function TFPadraoFiscal.NfProdutos: Boolean;
begin
  Result := True;
  try
    //IMPRIME PRODUTOS DA NF
    while not DMESTOQUE.TSlave.Eof do
    begin
      ImpCampo('Cód. Produto', DMESTOQUE.TSlave.FieldByName('CODIGO').AsString,
        'S');
      ImpCampo('Produto', DMESTOQUE.TSlave.FieldByName('PRODUTO').AsString,
        'S');
      ImpCampo('Desc. Prod.', DMESTOQUE.TSlave.FieldByName('DESCONTO').AsString,
        'M');
      ImpCampo('CFOP Prod.', DMESTOQUE.TSlave.FieldByName('CFOP').AsString,
        'S');
      ImpCampo('S.T. Prod.',
        DMESTOQUE.TSlave.FieldByName('COD_SIT_TRIB').AsString, 'S');
      ImpCampo('Unid. Prod.', DMESTOQUE.TSlave.FieldByName('UNIDADE').AsString,
        'S');
      ImpCampo('Quant. Prod.',
        DMESTOQUE.TSlave.FieldByName('QUANTIDADE').AsString, 'M');
      ImpCampo('Vlr. Unit. Prod.',
        DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsString, 'M');
      ImpCampo('Vlt. Tot. Prod.', DMESTOQUE.TSlave.FieldByName('TOTAL').AsString,
        'M');
      ImpCampo('Aliq. ICMS Prod.', DMESTOQUE.TSlave.FieldByName('ICMS').AsString,
        'M');
      XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
      XQTDITEMIMPPAG := XQTDITEMIMPPAG + 1;
      DMESTOQUE.TSlave.Next;
      if XQTDITEMIMPPAG = DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger then
        Exit;
    end;
  except
    Result := False;
  end;
end;

//Função utilizada para devolver o proximo numero da nota fiscal de saida que seja valido
function TFPadraoFiscal.NfProxnumeroNF: Integer;
var
  XMaiorNumPV, XMaiorNumPC, XMaiorNumOS: Integer;
begin
  try
    Result := -1; //Posiciona para Nf numero 01
    XMaiorNumPV := 0;
    XMaiorNumPC := 0;
    XMaiorNumOS := 0;

    //procura maior numero por tabela
    //VENDA
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    if ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or
      (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) then
      //Nota fiscal normal
      DMMACS.TALX.SQL.Add(' select max(docfissaida.numdocfisint) as numero from docfissaida where (docfissaida.nfestatus is null) and (docfissaida.tipodocfis=''2'') ');
    if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
    begin
      //Nota fiscal eletronica
      //MODO SCAN / MODO NORMAL
      if DMMACS.TLoja.FieldByName('MODODEEMISSAONFE').AsString = 'SCAN' then
        DMMACS.TALX.SQL.Add(' select max(docfissaida.numdocfisint) as numero from docfissaida  where (docfissaida.NFESERIE=''999'') and (docfissaida.tipodocfis=''3'') and ((docfissaida.nfestatus=''1'') or (docfissaida.nfestatus=''3'')  or (docfissaida.nfestatus=''4''))')
      else
      begin
        DMMACS.TALX.SQL.Add(' SELECT MAX(DOCFISSAIDA.NUMDOCFISINT) AS NUMERO FROM DOCFISSAIDA ');
        DMMACS.TALX.SQL.Add(' WHERE ((DOCFISSAIDA.NFESERIE <> ''999'') OR (DOCFISSAIDA.NFESERIE IS NULL)) ');
        DMMACS.TALX.SQL.Add(' AND ((DOCFISSAIDA.NFESTATUS = ''1'') OR (DOCFISSAIDA.NFESTATUS = ''3'')  OR (DOCFISSAIDA.NFESTATUS = ''4'')) ');
        //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
        //é consumidor final ou não. busca de modelos diferentes conforme o caso
        if XEmiteNFCe then
        begin
          DMMACS.TALX.SQL.Add(' AND (DOCFISSAIDA.MODELONF = ''65'') AND (DOCFISSAIDA.NFESERIE = :SERIE) ');
          DMMACS.TALX.ParamByName('SERIE').AsString :=
            DMMACS.TEmpresa.FieldByName('NFCESERIE').AsString;
        end
        else
        begin
          DMMACS.TALX.SQL.Add(' AND (DOCFISSAIDA.MODELONF = ''55'') AND (DOCFISSAIDA.NFESERIE = :SERIE) ');
          DMMACS.TALX.ParamByName('SERIE').AsString :=
            DMMACS.TEmpresa.FieldByName('NFESERIE').AsString;
        end;
      end;
    end;
    DMMACS.TALX.SQL.Text;
    DMMACS.TALX.Open;
    if DMMACS.TALX.FieldByName('NUMERO').AsString <> '' then
      XMaiorNumPV := DMMACS.TALX.FieldByName('NUMERO').AsInteger
    else
      XMaiorNumPV := 0;

    //ORDEM DE SERVIÇO
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    if ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or
      (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) then
      //Nota fiscal normal
      DMMACS.TALX.SQL.Add('  select max(docfisord.numdocfisint) as numero from docfisord where (docfisord.nfestatus is null) and (docfisord.tipodocfis=''2'') ');
    if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
    begin
      //Nota fiscal eletronica
        //MODO SCAN / MODO NORMAL
      if DMMACS.TLoja.FieldByName('MODODEEMISSAONFE').AsString = 'SCAN' then
        DMMACS.TALX.SQL.Add(' select max(docfisord.numdocfisint) as numero from docfisord  where (docfisord.NFESERIE=''999'') and (docfisord.tipodocfis=''3'') and ((docfisord.nfestatus=''1'') or (docfisord.nfestatus=''3'')  or (docfisord.nfestatus=''4''))')
      else
      begin
        DMMACS.TALX.SQL.Add(' SELECT MAX(DOCFISORD.NUMDOCFISINT) AS NUMERO FROM DOCFISORD ');
        DMMACS.TALX.SQL.Add(' WHERE ((DOCFISORD.NFESERIE <> ''999'') OR (DOCFISORD.NFESERIE IS NULL)) AND (DOCFISORD.TIPODOCFIS = ''3'') ');
        DMMACS.TALX.SQL.Add(' AND ((DOCFISORD.NFESTATUS = ''1'') OR (DOCFISORD.NFESTATUS = ''3'')  OR (DOCFISORD.NFESTATUS = ''4'')) ');
        //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
        //é consumidor final ou não. busca de modelos diferentes conforme o caso
        if XEmiteNFCe then
        begin
          DMMACS.TALX.SQL.Add(' AND (DOCFISORD.MODELONF = ''65'') AND (DOCFISORD.NFESERIE = :SERIE) ');
          DMMACS.TALX.ParamByName('SERIE').AsString :=
            DMMACS.TEmpresa.FieldByName('NFCESERIE').AsString;
        end
        else
        begin
          DMMACS.TALX.SQL.Add(' AND (DOCFISORD.MODELONF = ''55'') AND (DOCFISORD.NFESERIE = :SERIE) ');
          DMMACS.TALX.ParamByName('SERIE').AsString :=
            DMMACS.TEmpresa.FieldByName('NFESERIE').AsString;
        end;
      end;
    end;
    DMMACS.TALX.Open;
    if DMMACS.TALX.FieldByName('numero').AsString <> '' then
      XMaiorNumOS := DMMACS.TALX.FieldByName('numero').AsInteger
    else
      XMaiorNumOS := 0;

    //PEDCOMPRA
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    if ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or
      (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) then
      DMMACS.TALX.SQL.Add(' select max(docfis.numdocfiscint) as numero from docfis where (docfis.EMISSAOPROPRIA=''1'') and (docfis.nfestatus is null)');
    if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
    begin
      //MODO SCAN / MODO NORMAL
      if DMMACS.TLoja.FieldByName('MODODEEMISSAONFE').AsString = 'SCAN' then
      begin
        DMMACS.TALX.SQL.Add('  select max(docfis.numdocfiscint) as numero from docfis where (docfis.NFESERIE=''999'') and (docfis.EMISSAOPROPRIA=''1'') and (docfis.tipodocfis=''3'') and ((docfis.nfestatus=''1'') or (docfis.nfestatus=''3'')  or (docfis.nfestatus=''4'')) ');
      end
      else
      begin
        DMMACS.TALX.SQL.Add(' SELECT MAX(DOCFIS.NUMDOCFISCINT) AS NUMERO FROM DOCFIS ');
        DMMACS.TALX.SQL.Add(' WHERE ((DOCFIS.NFESERIE <> ''999'') OR (DOCFIS.NFESERIE IS NULL)) AND (DOCFIS.EMISSAOPROPRIA = ''1'') ');
        DMMACS.TALX.SQL.Add(' AND (DOCFIS.TIPODOCFIS = ''3'') AND ((DOCFIS.NFESTATUS = ''1'') OR (DOCFIS.NFESTATUS = ''3'') OR (DOCFIS.NFESTATUS = ''4'')) ');
        //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
        //é consumidor final ou não. busca de modelos diferentes conforme o caso
        if XEmiteNFCe then
        begin
          DMMACS.TALX.SQL.Add(' AND (DOCFIS.MODELONF = ''65'') AND (DOCFIS.NFESERIE = :SERIE) ');
          DMMACS.TALX.ParamByName('SERIE').AsString :=
            DMMACS.TEmpresa.FieldByName('NFCESERIE').AsString;
        end
        else
        begin
          DMMACS.TALX.SQL.Add(' AND (DOCFIS.MODELONF = ''55'') AND (DOCFIS.NFESERIE = :SERIE) ');
          DMMACS.TALX.ParamByName('SERIE').AsString :=
            DMMACS.TEmpresa.FieldByName('NFESERIE').AsString;
        end;
      end;
    end;
    DMMACS.TALX.Open;
    if DMMACS.TALX.FieldByName('numero').AsString <> '' then
      XMaiorNumPC := DMMACS.TALX.FieldByName('numero').AsInteger
    else
      XMaiorNumPC := 0;

    //MAIOR NUMERO
    if XMaiorNumPV > XMaiorNumPC then
      Result := XMaiorNumPV
    else
      Result := XMaiorNumPC;

    if XMaiorNumOS > Result then
      Result := XMaiorNumOS;

    //VALIDA SEQUENCIA DE NOTAS
    if Result > 1 then
    begin
      //Saida
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      if ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or
        (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) then
        DMMACS.TALX.SQL.Add(' select docfissaida.numdocfisint as numero from docfissaida where (docfissaida.numdocfisint=:numero) and (docfissaida.nfestatus is null) and (docfissaida.tipodocfis=''2'')');
      if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
        or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
        or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
      begin
        DMMACS.TALX.SQL.Add(' SELECT DOCFISSAIDA.NUMDOCFISINT AS NUMERO FROM DOCFISSAIDA ');
        DMMACS.TALX.SQL.Add(' WHERE (DOCFISSAIDA.NUMDOCFISINT=:NUMERO) AND (DOCFISSAIDA.TIPODOCFIS=''3'') ');
        DMMACS.TALX.SQL.Add(' AND ((DOCFISSAIDA.NFESTATUS=''1'') OR (DOCFISSAIDA.NFESTATUS=''3'') OR (DOCFISSAIDA.NFESTATUS=''4'')) ');
        //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
        //é consumidor final ou não. busca de modelos diferentes conforme o caso
        if XEmiteNFCe then
        begin
          DMMACS.TALX.SQL.Add(' AND (DOCFISSAIDA.MODELONF = ''65'') AND (DOCFISSAIDA.NFESERIE = :SERIE) ');
          DMMACS.TALX.ParamByName('SERIE').AsString :=
            DMMACS.TEmpresa.FieldByName('NFCESERIE').AsString;
        end
        else
        begin
          DMMACS.TALX.SQL.Add(' AND (DOCFISSAIDA.MODELONF = ''55'') AND (DOCFISSAIDA.NFESERIE = :SERIE) ');
          DMMACS.TALX.ParamByName('SERIE').AsString :=
            DMMACS.TEmpresa.FieldByName('NFESERIE').AsString;
        end;
      end;
      DMMACS.TALX.ParamByName('numero').AsInteger := Result;
      DMMACS.TALX.Open;
      if DMMACS.TALX.IsEmpty then
      begin
        //ORDEM DE SERVIÇOS
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        if ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or
          (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) then
          DMMACS.TALX.SQL.Add(' select docfisord.numdocfisint as numero from docfisord where (docfisord.numdocfisint=:numero) and (docfisord.nfestatus is null) and (docfisord.tipodocfis=''2'')');
        if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
            then
        begin
          DMMACS.TALX.SQL.Add(' SELECT DOCFISORD.NUMDOCFISINT AS NUMERO FROM DOCFISORD WHERE (DOCFISORD.NUMDOCFISINT=:NUMERO) AND (DOCFISORD.TIPODOCFIS=''3'') ');
          //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
          //é consumidor final ou não. busca de modelos diferentes conforme o caso
          if XEmiteNFCe then
          begin
            DMMACS.TALX.SQL.Add(' AND (DOCFISORD.MODELONF = ''65'') AND (DOCFISORD.NFESERIE = :SERIE) ');
            DMMACS.TALX.ParamByName('SERIE').AsString :=
              DMMACS.TEmpresa.FieldByName('NFCESERIE').AsString;
          end
          else
          begin
            DMMACS.TALX.SQL.Add(' AND (DOCFISORD.MODELONF = ''55'') AND (DOCFISORD.NFESERIE = :SERIE) ');
            DMMACS.TALX.ParamByName('SERIE').AsString :=
              DMMACS.TEmpresa.FieldByName('NFESERIE').AsString;
          end;
        end;
        DMMACS.TALX.ParamByName('numero').AsInteger := Result;
        DMMACS.TALX.Open;
        if DMMACS.TALX.IsEmpty then
        begin
          //PEDIDO DE COMPRA
          DMMACS.TALX.Close;
          DMMACS.TALX.SQL.Clear;
          if ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or
            (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) then
            DMMACS.TALX.SQL.Add(' select docfis.numdocfiscint as numero from docfis where docfis.numdocfiscint=:numero and (docfis.nfestatus is null)');
          if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
            or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
            or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
              then
          begin
            DMMACS.TALX.SQL.Add(' SELECT DOCFIS.NUMDOCFISCINT AS NUMERO FROM DOCFIS ');
            DMMACS.TALX.SQL.Add(' WHERE (DOCFIS.NUMDOCFISCINT=:NUMERO) AND (DOCFIS.TIPODOCFIS = ''3'') ');
            DMMACS.TALX.SQL.Add(' AND ((DOCFIS.NFESTATUS = ''1'') OR (DOCFIS.NFESTATUS = ''3'')  OR (DOCFIS.NFESTATUS = ''4'')) ');
            //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
            //é consumidor final ou não. busca de modelos diferentes conforme o caso
            if XEmiteNFCe then
            begin
              DMMACS.TALX.SQL.Add(' AND (DOCFIS.MODELONF = ''65'') AND (DOCFIS.NFESERIE = :SERIE) ');
              DMMACS.TALX.ParamByName('SERIE').AsString :=
                DMMACS.TEmpresa.FieldByName('NFCESERIE').AsString;
            end
            else
            begin
              DMMACS.TALX.SQL.Add(' AND (DOCFIS.MODELONF = ''55'') AND (DOCFIS.NFESERIE = :SERIE) ');
              DMMACS.TALX.ParamByName('SERIE').AsString :=
                DMMACS.TEmpresa.FieldByName('NFESERIE').AsString;
            end;
          end;
          DMMACS.TALX.ParamByName('numero').AsInteger := Result;
          DMMACS.TALX.Open;
          if (DMMACS.TALX.IsEmpty) and (Result <> 1) then
            RegistraFalha('Falha na sequência de numeração das Notas Fiscais. o número '
              + IntToStr(result) + ' não foi impresso/enviado');

        end;
      end;
    end;
    Result := Result + 1; //Incrementa numeração
  except
    Result := 1;
  end;
end;

//Função utilizada para devolver o proximo numero da nota fiscal de saida que seja valido

function TFPadraoFiscal.NfProxnumero: Integer;
begin
  Result := -1;
  try
    //Numeração específica para ECF
    if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') and (XTipo =
      'PEDV') then
    begin
      EdNumeroFiscal.Enabled := False;
      if (XImpLig = true) then
      begin
        for XConta := 1 to 6 do
          XCuponProx := XCuponProx + ' ';
        Bematech_FI_NumeroCupom(XCuponProx);
        XAlx := StrToInt(XCuponProx);
        XCuponProx := IntToStr(XAlx + 1);
        NfProxnumero := StrToInt(XCuponProx);
      end
      else
      begin
        RegistraFalha('ECF: Impressora de cupom fiscal desligada. Lique e clique em atualizar');
      end;
    end
    else
    begin
      EdNumeroFiscal.Enabled := True;
      if (FMenu.TIPOAUX <> 'ECF') and (FMenu.TIPOREL = 'RNF') and
        ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or
        (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') or
        (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') or
        (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') or
        (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) then
      begin
        //Se o tipo for de reimpressão para nota fiscal normal e eletronica, pegamos o numero corrente da nota caso não encontre busca proximo numero
        if XTipo = 'PEDV' then
        begin
          DMMACS.TALX.Close;
          DMMACS.TALX.SQL.Clear;
          DMMACS.TALX.SQL.Add(' select * from docfissaida where docfissaida.cod_pedido=:codigo ');
          DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
          DMMACS.TALX.Open;
          if (DMMACS.TALX.IsEmpty) or
            (DMMACS.TALX.FieldByName('numdocfis').AsString = '') then
            Result := NfProxnumeroNF
              //Caso o documento ainda não tenha numeração o sistema busca o próximo
          else
            Result := DMMACS.TALX.FieldByName('numdocfis').AsInteger;
              //Respassa o numero atual;
        end;
        if XTipo = 'PEDC' then
        begin
          DMMACS.TALX.Close;
          DMMACS.TALX.SQL.Clear;
          DMMACS.TALX.SQL.Add(' select * from docfis where docfis.cod_pedido=:codigo ');
          DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
          DMMACS.TALX.Open;
          if (DMMACS.TALX.IsEmpty) or
            (DMMACS.TALX.FieldByName('numdocfis').AsString = '') then
            Result := NfProxnumeroNF
              //Caso o documento ainda não tenha numeração o sistema busca o próximo
          else
            Result := DMMACS.TALX.FieldByName('numdocfis').AsInteger;
              //Respassa o numero atual;
        end;

        if XTipo = 'ORDEM' then
        begin
          DMMACS.TALX.Close;
          DMMACS.TALX.SQL.Clear;
          DMMACS.TALX.SQL.Add('  select * from docfisord where docfisord.cod_ordem=:codigo ');
          DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
          DMMACS.TALX.Open;
          if DMMACS.TALX.IsEmpty then
            Result := NfProxnumeroNF
              //Caso o documento ainda não tenha numeração o sistema busca o próximo
          else
            Result := DMMACS.TALX.FieldByName('numdocfis').AsInteger;
              //Respassa o numero atual;
        end;
      end;
      if (FMenu.TIPOREL <> 'RNF') and
        ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or
        (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') or
        (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') or
        (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')) then
        Result := NfProxnumeroNF;
          //Caso o documento ainda não tenha numeração o sistema busca o próximo
      if ((FMenu.TIPOAUX = 'ECF') and
        (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
        or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
        or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')) then
      begin
        //O Sistema irá impremir um nota derivada de ecf (de um pedido que já gerou ecf)
        Result := NfProxnumeroNF;
      end;
    end;
  except
    Result := -1;
  end;
end;

//Uma procedure diferente para mudar o tamanho do papel em tprinter

procedure TFPadraoFiscal.SetPrinterPage_Xp(PaperSize, Comp, Alt: integer);
var
  ADevice, ADriver, APort: array[0..255] of char;
  DeviceMode: THandle;
  M: PDevMode;
  s: string;
begin
  // Força o uso de Printer. Se esta linha for removida, a primeira
  // invocação falha. Bug da VCL
  S := Printer.Printers[Printer.PrinterIndex];
  // Pega dados da impressora atual
  Printer.GetPrinter(ADevice, ADriver, APort, DeviceMode);
  // Pega um ponteiro para DEVMODE
  M := GlobalLock(DeviceMode);
  try
    if M <> nil then
    begin
      // Muda tamanho do papel
      M^.dmFields := DM_PAPERSIZE;
      if PaperSize = DMPAPER_USER then
        M^.dmFields := M^.dmFields or DM_PAPERLENGTH or DM_PAPERWIDTH;
      M^.dmPaperLength := Alt;
      M^.dmPaperWidth := Comp;
      M^.dmPaperSize := PaperSize; //
      // Atualiza
      Printer.SetPrinter(ADevice, ADriver, APort, DeviceMode);
    end;
  finally
    GlobalUnlock(DeviceMode);
  end;
end;

//Função utilizada para setar configurações de impressora

function TFPadraoFiscal.NFSetImpressora: Boolean;
begin
  Result := True;
  try
    if not (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') then
    begin
      //Seleciona impressora padrão
      if (PadraoImp(DMMACS.TLoja.FieldByName('NFIMP').AsString) = False) or
        (DMMACS.TLoja.FieldByName('NFIMP').AsString = '') then
        FMenu.PrintDialog1.Execute;
      //SETA TAMANHO DA FOLHA
      if (DMMACS.TLoja.FieldByName('NFTAMPAPCOL').AsInteger > 0) and
        (DMMACS.TLoja.FieldByName('NFTAMPAPLIN').AsInteger > 0) then
      begin
        if (GetWindowsVersion = 'Windows XP') or (GetWindowsVersion =
          'Windows 2000') or (GetWindowsVersion = 'Windows NT') then
          SetPrinterPage_Xp(DMPAPER_USER,
            DMMACS.TLoja.FieldByName('NFTAMPAPCOL').AsInteger,
            DMMACS.TLoja.FieldByName('NFTAMPAPLIN').AsInteger)
        else
          SetPrinterPage_9x(DMMACS.TLoja.FieldByName('NFTAMPAPCOL').AsInteger,
            DMMACS.TLoja.FieldByName('NFTAMPAPLIN').AsInteger);
      end;

      //SETA IMPRESSORA PADRAO
      if (PadraoImp(DMMACS.TLoja.FieldByName('NFIMP').AsString) = False) or
        (DMMACS.TLoja.FieldByName('NFIMP').AsString = '') then
      begin
        FMenu.PrintDialog1.Execute;
      end;
      //Se a impressora estiver sendo usada
      if Printer.Printing then
      begin
        Mensagem('ATENÇÃO', 'A impressora esta sendo usada!', '', 1, 1, False,
          'a');
        Result := False;
      end;
      if (GetWindowsVersion = 'Windows XP') then
      begin
        if VerImpressoraONLINE > 0 then
        begin
          Mensagem('ATENÇÃO',
            'IMPRESSORA OFF-LINE. Por favor, verifique a impressora!', '', 1, 1,
            False, 'a');
          Result := False;
        end;
      end;
    end
    else
    begin
      Result := True;
    end;
  except
    Result := False;
  end;
end;
//Imprime cabeçalho em Nota Fiscal

function TFPadraoFiscal.NFCabecalho: Boolean;
begin
  Result := True;
  try
    //Seleciona informações ainda necessárias
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    if FMenu.XNotaEntrada = True then
      DMPESSOA.TALX.SQL.Add(' select * from vwfornec left join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa where vwfornec.cod_fornec=:codigo')
    else
      DMPESSOA.TALX.SQL.Add(' select * from vwcliente  left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa where vwcliente.cod_cliente=:codigo ');
    DMPESSOA.TALX.ParamByName('codigo').AsInteger := XCod_Pessoa;
    DMPESSOA.TALX.Open;

    if FMenu.XNotaEntrada = True then
    begin
      ImpCampo('X - Entrada', 'X', 'S');
        //Se for apenas impressão marca apenas com X
    end
    else
    begin
      if FMenu.TIPOREL = 'RNF' then
        ImpCampo('X - Saida', '.X.', 'S')
          //Se for reimpressão marca com os pontinhos para sabermos
      else
        ImpCampo('X - Saida', 'X', 'S');
          //Se for apenas impressão marca apenas com X
    end;

    ImpCampo('Numero', EdNumeroFiscal.Text, 'S');
    ImpCampo('Natureza', LNatOp.Caption, 'S');
    ImpCampo('CFOP', LCfop.Caption, 'S');
    ImpCampo('Nome', LNomePessoa.Caption, 'S');
    ImpCampo('CPF/CNPJ', LCpfCnpj.Caption, 'S');
    ImpCampo('Data Emissao', EdDtEmissao.Text, 'S');
    ImpCampo('Endereco', DMPESSOA.TALX.FieldByName('ENDERECO').AsString, 'S');
    ImpCampo('Bairro', DMPESSOA.TALX.FieldByName('BAIRRO').AsString, 'S');
    ImpCampo('CEP', DMPESSOA.TALX.FieldByName('CEP').AsString, 'S');
    ImpCampo('Data Saida', EdDtsaidaEntrada.Text, 'S');
    ImpCampo('Municipio', LMunicipio.Caption, 'S');
    ImpCampo('Fone', DMPESSOA.TALX.FieldByName('TELREL').AsString, 'S');
    ImpCampo('UF', LUF.Caption, 'S');
    ImpCampo('IE', LInscEstadual.Caption, 'S');
    ImpCampo('Hora Saida', EdHoraSaida.Text, 'S');
  except
    Result := False;
  end;
end;

//Seleciona e Imprime a Fatura de Nf da Ordem de Serviço

function TFPadraoFiscal.NFFatura(XTipoOp: Integer): Boolean;
var
  I, XCod_tmp: Integer;
begin
  I := 1;
  XCod_tmp := 1;
  Result := True;
  try
    //prepara a tabela tmp
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('delete from tmp');
    DMMACS.TMP.ExecSQL;
    DMMACS.Transaction.CommitRetaining;

    if (XTipo = 'PEDV') then
      if (FMenu.XSimplesRemessa = True) or (FMenu.XRemessaGarantia = true) or
        (FMenu.XDevolucao = True) or (FMenu.XOutrosFisc = True) then
        Exit; //Devoluções e remessas de garantia não devem imprimir o faturamento

    //prepara a tabela tmp
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('select * from tmp');
    DMMACS.TMP.Open;

    if (XTipo = 'ORDEM') then
    begin
      //filtra wordem
      DMServ.WOrdem.Close;
      DMServ.WOrdem.SQL.Clear;
      DMServ.WOrdem.SQL.Add('select * from vwordem where vwordem.cod_ordem=:codigo');
      DMServ.WOrdem.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMServ.WOrdem.Open;

      FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM',
        IntToStr(XCod_Pedido), '');

      //VERIFICA SE A FORMA DE PAGAMENTO EH MULTIPLO
      if DMServ.WOrdem.FieldByName('TIPOPAG').AsString <> 'Multiplo' then
      begin
        if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Pagamentos' then
        begin
          // Tratamento para fechamentos do tipo pagamento
          // Todo pagamento realizado nessa condição passa pelo contas a receber
          // quando dinheiro ou d-cartão é lançado direto no cta. receber, logo, é à vista
          // com exceção dos movimentos bancários que vão para o MOVBANCO e também são à vista
          // nos outros casos são parcelas que estão abertas e neste caso é à prazo
          DMCONTA.TParcCR.Close;
          DMCONTA.TParcCR.SQL.Clear;
          DMCONTA.TParcCR.SQL.Add(' SELECT PARCELACR.* FROM PARCELACR ');
          DMCONTA.TParcCR.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
          DMCONTA.TParcCR.SQL.Add(' WHERE (CTARECEBER.COD_GERADOR = :COD_GERADOR) AND (CTARECEBER.TIPOGERADOR = ''ORDEM'') ');
          DMCONTA.TParcCR.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
          DMCONTA.TParcCR.Open;
          DMCONTA.TParcCR.First;

          while not DMCONTA.TParcCR.Eof do
          begin
            DMMACS.TMP.Insert;
            DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
            if ((DMCONTA.TParcCR.FieldByName('COBRANCA').AsString = 'Carteira')
              and
              (DMCONTA.TParcCR.FieldByName('FECH').AsString = 'S'))
              or (DMCONTA.TParcCR.FieldByName('COBRANCA').AsString =
                'D - Cartão') then
              DMMACS.TMP.FieldByName('DESC1').AsString := 'À VISTA'
            else
              DMMACS.TMP.FieldByName('DESC1').AsString :=
                DMCONTA.TParcCR.FieldByName('DTVENC').AsString;

            DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
              DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
            DMMACS.TMP.Post;

            XCod_tmp := XCod_tmp + 1;
            DMCONTA.TParcCR.Next;
          end;

          DMCAIXA.TAlx.Close;
          DMCAIXA.TAlx.SQL.Clear;
          DMCAIXA.TAlx.SQL.Add(' SELECT MOVBANCO.VALOR, MOVBANCO.DTVENC FROM MOVBANCO ');
          DMCAIXA.TAlx.SQL.Add(' WHERE (MOVBANCO.COD_GERADOR = :COD_GERADOR) AND (MOVBANCO.TIPOGERADOR = ''ORDEM'') ');
          DMCAIXA.TAlx.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
          DMCAIXA.TAlx.Open;
          DMCAIXA.TAlx.First;

          while not DMCAIXA.TAlx.Eof do
          begin
            DMMACS.TMP.Insert;
            DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
            DMMACS.TMP.FieldByName('DESC1').AsString := 'À VISTA';
            DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
              DMCAIXA.TAlx.FieldByName('VALOR').AsCurrency;
            DMMACS.TMP.Post;

            XCod_tmp := XCod_tmp + 1;
            DMCAIXA.TAlx.Next;
          end;
        end
        else
        begin
          //Tenta encontras a Forma de pagamento
          if DMServ.WOrdem.FieldByName('formapag').AsString = 'À VISTA' then
          begin
            DMMACS.TMP.Insert;
            DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
            DMMACS.TMP.FieldByName('DESC1').AsString := 'À VISTA';
            //Edmar - 26/06/2015 - Comentado para trazer apenas o valor da fatura referente aos produtos
            //pois é essa a informação que vai aparecer na DANFE
            {If DMMACS.TLoja.FieldByName('SERVNFE').AsString <> '1'
                Then Begin
                DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMServ.TFiscOrd.FieldByName('VLRTOTDOCNF').AsCurrency;
            End
            Else Begin}
               //filtra wordem
            DMCAIXA.TLanCaixa.Close;
            DMCAIXA.TLanCaixa.SQL.Clear;
            DMCAIXA.TLanCaixa.SQL.Add(' select * from lancaixa where (lancaixa.cod_gerador=:CODIGO) and (lancaixa.tipogerador=''ORDSERV'') and (lancaixa.historico like ''(Produtos)%'')');
            DMCAIXA.TLanCaixa.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMCAIXA.TLanCaixa.Open;
            if not DMCAIXA.TLanCaixa.IsEmpty then
              DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
                DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency;
            //End;
            DMMACS.TMP.Post;
            XCod_tmp := XCod_tmp + 1;
          end
          else
          begin
            //filtra contas a receber
            DMCONTA.TCtaR.Close;
            DMCONTA.TCtaR.SQL.Clear;
            DMCONTA.TCtaR.SQL.Add('select * from ctareceber where (ctareceber.cod_gerador=:CodGerador) and (ctareceber.tipogerador=' + #39 + 'ORD' + #39 + ')');
            DMCONTA.TCtaR.ParamByName('CodGerador').AsInteger := XCod_Pedido;
            DMCONTA.TCtaR.Open;
            if not DMCONTA.TCtaR.IsEmpty then
            begin
              //seleciona as parcelas do ctas a receber
              DMCONTA.TParcCR.Close;
              DMCONTA.TParcCR.SQL.Clear;
              DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.cod_ctareceber=:ctareceber');
              DMCONTA.TParcCR.ParamByName('ctareceber').AsInteger :=
                DMCONTA.TCtaR.fieldbyname('cod_ctareceber').AsInteger;
              DMCONTA.TParcCR.Open;
              if not DMCONTA.TParcCR.IsEmpty then
              begin
                //percorre todas as tabelas capturando valor e vencimento
                DMCONTA.TParcCR.First;
                while not DMCONTA.TParcCR.Eof do
                begin
                  DMMACS.TMP.Insert;
                  DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                  DMMACS.TMP.FieldByName('DESC1').AsString :=
                    DMCONTA.TParcCR.FieldByName('dtvenc').AsString;
                  if DMMACS.TLoja.FieldByName('SERVNFE').AsString <> '1' then
                    DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
                      DMCONTA.TParcCR.FieldByName('valor').AsCurrency
                  else
                    DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
                      DMCONTA.TParcCR.FieldByName('valorprod').AsCurrency;
                  DMMACS.TMP.Post;
                  XCod_tmp := XCod_tmp + 1;
                  DMCONTA.TParcCR.Next;
                end;
              end;
            end;
          end;
        end;
      end
      else
      begin
        //LOCALIZA EM CAIXA ALGUMA ENTRADA
        DMCAIXA.TAlx.Close;
        DMCAIXA.TAlx.SQL.Clear;
        DMCAIXA.TAlx.SQL.Add('SELECT lancaixa.valor FROM lancaixa WHERE (lancaixa.cod_gerador=:CODIGO) AND (lancaixa.tipogerador=' + #39 + 'ORDEMENT' + #39 + ')');
        DMCAIXA.TAlx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
        DMCAIXA.TAlx.Open;
        if not DMCAIXA.TAlx.IsEmpty then
        begin
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
          DMMACS.TMP.FieldByName('DESC1').AsString := 'Entrada';
          DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
            DMCAIXA.TAlx.FieldByName('valor').AsCurrency;
          DMMACS.TMP.Post;
          XCod_tmp := XCod_tmp + 1;
        end;
        //LOCALIZA CONTAS A PRAZO
        DMCAIXA.TAlx.Close;
        DMCAIXA.TAlx.SQL.Clear;
        DMCAIXA.TAlx.SQL.Add(' SELECT parcelacr.valor, parcelacr.dtvenc FROM parcelacr ');
        DMCAIXA.TAlx.SQL.Add(' LEFT JOIN ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
        DMCAIXA.TAlx.SQL.Add(' WHERE (ctareceber.cod_gerador=:Codigo) and (ctareceber.tipogerador=' + #39'ORD' + #39 + ')');
        DMCAIXA.TAlx.ParamByName('codigo').AsInteger := XCod_Pedido;
        DMCAIXA.TAlx.Open;
        if not DMCAIXA.TAlx.IsEmpty then
        begin
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
          DMMACS.TMP.FieldByName('DESC1').AsString :=
            DMCAIXA.TAlx.FieldByName('dtvenc').AsString;
          DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
            DMCAIXA.TAlx.FieldByName('valor').AsCurrency;
          DMMACS.TMP.Post;
          XCod_tmp := XCod_tmp + 1;
        end;
        //LOCALIZA CHEQUES
        DMCAIXA.TAlx.Close;
        DMCAIXA.TAlx.SQL.Clear;
        DMCAIXA.TAlx.SQL.Add(' SELECT movbanco.valor, movbanco.dtvenc FROM movbanco ');
        DMCAIXA.TAlx.SQL.Add(' LEFT join chequerec ON movbanco.cod_movbanco = chequerec.cod_movbanco ');
        DMCAIXA.TAlx.SQL.Add(' where (movbanco.tipogerador=' + #39 + 'ORDEM' +
          #39 + ') and (movbanco.cod_gerador=cod_gerador) ');
        DMCAIXA.TAlx.ParamByName('codigo').AsInteger := XCod_Pedido;
        DMCAIXA.TAlx.Open;
        if not DMCAIXA.TAlx.IsEmpty then
        begin
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
          DMMACS.TMP.FieldByName('DESC1').AsString :=
            DMCAIXA.TAlx.FieldByName('dtvenc').AsString;
          DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
            DMCAIXA.TAlx.FieldByName('valor').AsCurrency;
          DMMACS.TMP.Post;
          XCod_tmp := XCod_tmp + 1;
        end;
      end;
    end;

    if (XTipo = 'PEDV') then
    begin
      //filtra wpedv
      DMSAIDA.WPedV.Close;
      DMSAIDA.WPedV.SQL.Clear;
      DMSAIDA.WPedV.SQL.Add(' select * from vwpedv where vwpedv.cod_pedvenda=:codigo ');
      DMSAIDA.WPedV.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMSAIDA.WPedV.Open;

      if DMSAIDA.WPedV.FieldByName('COBRANCA').AsString = 'Pagamentos' then
      begin
        // Tratamento para fechamentos do tipo pagamento
        // Todo pagamento realizado nessa condição passa pelo contas a receber
        // quando dinheiro ou d-cartão é lançado direto no cta. receber, logo, é à vista
        // com exceção dos movimentos bancários que vão para o MOVBANCO e também são à vista
        // nos outros casos são parcelas que estão abertas e neste caso é à prazo
        DMCONTA.TParcCR.Close;
        DMCONTA.TParcCR.SQL.Clear;
        DMCONTA.TParcCR.SQL.Add(' SELECT PARCELACR.* FROM PARCELACR ');
        DMCONTA.TParcCR.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
        DMCONTA.TParcCR.SQL.Add(' WHERE (CTARECEBER.COD_GERADOR = :COD_GERADOR) AND (CTARECEBER.TIPOGERADOR = ''PEDVENDA'') ');
        DMCONTA.TParcCR.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
        DMCONTA.TParcCR.Open;
        DMCONTA.TParcCR.First;

        while not DMCONTA.TParcCR.Eof do
        begin
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
          if ((DMCONTA.TParcCR.FieldByName('COBRANCA').AsString = 'Carteira')
            and
            (DMCONTA.TParcCR.FieldByName('FECH').AsString = 'S'))
            or (DMCONTA.TParcCR.FieldByName('COBRANCA').AsString = 'D - Cartão')
              then
            DMMACS.TMP.FieldByName('DESC1').AsString := 'À VISTA'
          else
            DMMACS.TMP.FieldByName('DESC1').AsString :=
              DMCONTA.TParcCR.FieldByName('DTVENC').AsString;

          DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
            DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
          DMMACS.TMP.Post;

          XCod_tmp := XCod_tmp + 1;
          DMCONTA.TParcCR.Next;
        end;

        DMCAIXA.TAlx.Close;
        DMCAIXA.TAlx.SQL.Clear;
        DMCAIXA.TAlx.SQL.Add(' SELECT MOVBANCO.VALOR, MOVBANCO.DTVENC FROM MOVBANCO ');
        DMCAIXA.TAlx.SQL.Add(' WHERE (MOVBANCO.COD_GERADOR = :COD_GERADOR) AND (MOVBANCO.TIPOGERADOR = ''PEDVENDA'') ');
        DMCAIXA.TAlx.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
        DMCAIXA.TAlx.Open;
        DMCAIXA.TAlx.First;

        while not DMCAIXA.TAlx.Eof do
        begin
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
          DMMACS.TMP.FieldByName('DESC1').AsString := 'À VISTA';
          DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
            DMCAIXA.TAlx.FieldByName('VALOR').AsCurrency;
          DMMACS.TMP.Post;

          XCod_tmp := XCod_tmp + 1;
          DMCAIXA.TAlx.Next;
        end;
      end
      else
      begin
        //Tenta encontras a Forma de pagamento
        if DMSAIDA.WPedV.FieldByName('formpag').AsString = 'À VISTA' then
        begin
          //Paulo 11/03/2011: Filtra os lançamento de caixa
          DMCAIXA.TLanCaixa.Close;
          DMCAIXA.TLanCaixa.SQL.Clear;
          DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa lc where lc.cod_gerador=:CODGERADOR and lc.tipogerador = ''PEDVENDA''');
          DMCAIXA.TLanCaixa.ParamByName('CODGERADOR').AsInteger := XCod_Pedido;
          DMCAIXA.TLanCaixa.Open;

          if not DMCAIXA.TLanCaixa.IsEmpty then
          begin
            DMMACS.TMP.Insert;
            DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
            DMMACS.TMP.FieldByName('DESC1').AsString := 'À VISTA';
            DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
              DMCAIXA.TLanCaixa.FieldByName('valor').AsCurrency;
            DMMACS.TMP.Post;
            XCod_tmp := XCod_tmp + 1;
          end;
        end
        else
        begin
          //filtra contas a receber
          DMCONTA.TCtaR.Close;
          DMCONTA.TCtaR.SQL.Clear;
          DMCONTA.TCtaR.SQL.Add('select * from ctareceber where (ctareceber.cod_gerador=:CodGerador) and (ctareceber.tipogerador=' + #39 + 'PEDVENDA' + #39 + ')');
          DMCONTA.TCtaR.ParamByName('CodGerador').AsInteger := XCod_Pedido;
          DMCONTA.TCtaR.Open;
          if not DMCONTA.TCtaR.IsEmpty then
          begin
            //seleciona as parcelas do ctas a receber
            DMCONTA.TParcCR.Close;
            DMCONTA.TParcCR.SQL.Clear;
            DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.cod_ctareceber=:ctareceber');
            DMCONTA.TParcCR.ParamByName('ctareceber').AsInteger :=
              DMCONTA.TCtaR.fieldbyname('cod_ctareceber').AsInteger;
            DMCONTA.TParcCR.Open;

            if not DMCONTA.TParcCR.IsEmpty then
            begin
              //percorre todas as tabelas capturando valor e vencimento
              DMCONTA.TParcCR.First;
              while not DMCONTA.TParcCR.Eof do
              begin
                DMMACS.TMP.Insert;
                DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                DMMACS.TMP.FieldByName('DESC1').AsString :=
                  DMCONTA.TParcCR.FieldByName('dtvenc').AsString;
                DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
                  DMCONTA.TParcCR.FieldByName('valor').AsCurrency;
                DMMACS.TMP.Post;
                XCod_tmp := XCod_tmp + 1;
                DMCONTA.TParcCR.Next;
              end;
            end;
          end;
        end;
      end;
    end;

    if (XTipo = 'PEDC') then
    begin
      DMCONTA.TAlx.Close;
      DMCONTA.TAlx.SQL.Clear;
      DMCONTA.TAlx.SQL.Add('SELECT * FROM IMPNFEFINANC');
      DMCONTA.TAlx.Open;
      //276170
      //Edmar - 07/04/2014 - Se não estiver vazio, popula TMP com as informaçoes da fatura
      if not DMCONTA.TAlx.IsEmpty then
      begin
        while not DMCONTA.TAlx.Eof do
        begin
          DMMACS.TMP.Close;
          DMMACS.TMP.SQL.Clear;
          DMMACS.TMP.SQL.Add('INSERT INTO TMP (COD_TMP, TMP.DESC1, TMP.VLR1) VALUES (:COD, :DESC, :VLR)');
          DMMACS.TMP.ParamByName('COD').AsInteger :=
            DMCONTA.TAlx.FieldByName('COD_IMPNFEFINANC').AsInteger;
          DMMACS.TMP.ParamByName('DESC').AsString :=
            DMCONTA.TAlx.FieldByName('DT_VENCIMENTO').AsString;
          DMMACS.TMP.ParamByName('VLR').AsCurrency :=
            DMCONTA.TAlx.FieldByName('VLR_PARCELA').AsCurrency;
          DMMACS.TMP.ExecSQL;
          //                   DMMACS.TMP.Transaction.CommitRetaining;
          DMMACS.Transaction.CommitRetaining;
          DMCONTA.TAlx.Next;
        end;
      end
      else
      begin //Edmar - 07/04/2014 - Se estiver vazio, popula com À VISTA
        DMMACS.TMP.Close;
        DMMACS.TMP.SQL.Clear;
        DMMACS.TMP.SQL.Add('INSERT INTO TMP (COD_TMP, TMP.DESC1, TMP.VLR1) VALUES (:COD, :DESC, :VLR)');
        DMMACS.TMP.ParamByName('COD').AsInteger := 1;
        DMMACS.TMP.ParamByName('DESC').AsString := 'À VISTA';
        DMMACS.TMP.ParamByName('VLR').AsCurrency := XTotalNF;
        DMMACS.TMP.ExecSQL;
        DMMACS.Transaction.CommitRetaining;
      end;
    end;

    //seleciona as faturas a serem impressas
    DMCONTA.IBT.CommitRetaining;
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('select * from tmp');
    DMMACS.TMP.Open;

    if XTipoOp = 0 then
    begin
      DMMACS.TMP.First;
      while not DMMACS.TMP.Eof do
      begin
        ImpCampo('Fat. Vencimento 0' + IntToStr(I),
          DMMACS.TMP.FieldByName('DESC1').AsString, 'S');
        ImpCampo('Fat. Valor 0' + IntToStr(I),
          DMMACS.TMP.FieldByName('VLR1').AsString, 'M');
        DMMACS.TMP.Next;
        I := I + 1;
      end;
    end;
  except
    Result := False;
  end;
end;

//Imprime Despesas em Nota Fiscal

function TFPadraoFiscal.NFDespesas: Boolean;
begin
  Result := True;
  try
    if XTipo = 'ORDEM' then
    begin
      //IMPRIME Despesas DA NF
      while not DMESTOQUE.TSlaveServ.Eof do
      begin
        ImpCampo('Desc. Desp.',
          DMESTOQUE.TSlaveServ.FieldByName('SERVICO').AsString, 'S');
        ImpCampo('Vlr. Desc. Desp.',
          DMESTOQUE.TSlaveServ.FieldByName('DESCONTO').AsString, 'M');
        ImpCampo('Qnt. Desp.', DMESTOQUE.TSlaveServ.FieldByName('QTD').AsString,
          'M');
        ImpCampo('Vlr. Unit. Desp.',
          DMESTOQUE.TSlaveServ.FieldByName('VLRUNIT').AsString, 'M');
        ImpCampo('Vlt. Tot. Desp.',
          DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsString, 'M');

        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINDESP').AsInteger;
        XQTDITEMIMPPAG := XQTDITEMIMPPAG + 1;

        DMESTOQUE.TSlaveServ.Next;

        if XQTDITEMIMPPAG = DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger
          then
          Exit;
      end;
    end;
  except
    Result := False;
  end;
end;

//Imprime Impostos calculados em Nota Fiscal

function TFPadraoFiscal.NFImpostos: Boolean;
begin
  Result := True;
  try
    ImpCampo('Base ICMS', EdBaseICMS.Text, 'M');
    ImpCampo('Vlr. ICMS', EdVlrIcms.Text, 'M');
    ImpCampo('Base ICMS Subs.', EdBaseICMSST.Text, 'M');
    ImpCampo('Vlr. ICMS Subs.', EdVlrIcmsST.Text, 'M');
    ImpCampo('Vlr. Frete', EdVlrFrete.Text, 'M');
    ImpCampo('Vlr. Seguro', EdVlrSeguro.Text, 'M');
    ImpCampo('Outras Desp.', EdOutrasDespesas.Text, 'M');
    ImpCampo('Vlr Tot. IPI', EdVlrIpi.Text, 'M');
    ImpCampo('Vlt Tot. NF', EdTotalNotaFiscal.Text, 'M');

    //verifica e imprime decontos para produtos
    if XTotalProdSemDesc <> XTotalProdComDesc then
      ImpCampo('Linha Desc. Produto', 'Desconto em produtos R$ ' +
        FormatFloat('0.00', (XTotalProdSemDesc - XTotalProdComDesc)), 'S');

    ImpCampo('Vlr. Tot. Prod.', EdTotalProdutos.Text, 'M');

    //verifica desconto para serviço
    if XTotalServSemDesc <> XTotalServComDesc then
      ImpCampo('Linha Desc. Serviço', 'Desconto em serviço R$ ' +
        FormatFloat('0.00', (XTotalServSemDesc - XTotalServComDesc)), 'S');

    ImpCampo('Vlr. Tot. Serv.', EdVlrServicos.Text, 'M');

    if (EdVlrIss.ValueNumeric > 0) then
    begin
      //se houver iss para mprimir
      ImpCampo('Vlr. ISS', EdVlrIss.Text, 'M');
    end;
  except
    Result := False;
  end;
end;

//Imprime Dados Adicionais em Nota Fiscal

function TFPadraoFiscal.NFDadosAdicionais: Boolean;
var
  XAuxLinAdic: Integer;
  XLinhaTexto: string;
begin
  Result := True;
  try
    //IMPRIME TODAS AS LINHAS DE DADOS ADICIONAIS
    if MDadosAdicionais.Text <> '' then
    begin
      for XAuxLinAdic := 0 to MDadosAdicionais.Lines.Count do
      begin
        XLinhaTexto := '';
        XLinhaTexto := MDadosAdicionais.Lines[XAuxLinAdic];
        ImpCampo('Dados Adicionais', XLinhaTexto, 'S');
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
      end;
    end;

    //IMPRIME NUMERO DA NOTA FISCAL NO RODAPE DA NOTA
    ImpCampo('Nº NF Rodapé', EdNumeroFiscal.Text, 'S');
  except
    RegistraFalha('   Falha: erro ao imprimir dados adicionais');
    Result := False;
  end;
end;

//Imprime Dados de Reservado ao fisco

function TFPadraoFiscal.NFReservadoFisco: Boolean;
var
  XAuxLinAdic: Integer;
  XLinhaTexto: string;
begin
  Result := True;
  try
    //IMPRIME TODAS AS LINHAS DE Reservado ao fisco
    if MReservadosFisco.Text <> '' then
    begin
      for XAuxLinAdic := 0 to MReservadosFisco.Lines.Count do
      begin
        XLinhaTexto := '';
        XLinhaTexto := Trim(MReservadosFisco.Lines[XAuxLinAdic]);
        ImpCampo('Reservado ao Fisco', XLinhaTexto, 'S');
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
      end;
    end;
  except
    RegistraFalha('   Falha: erro ao imprimir dados de reservado ao fisco');
    Result := False;
  end;
  // 	ImpCampo('Reservado ao Fisco', 'teste', 'S')
end;

//Função utilizada para enviar nota fiscal para impressão

function TFPadraoFiscal.ImpNfe: Boolean;
var
  XImpNfeFormPagamento: string;
begin
  Result := True;
  try
    //Localiza forma de pagamento
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    if XTipo = 'ORDEM' then
      DMMACS.TALX.SQL.Add(' SELECT vwordem.formapag as pagamento FROM vwordem WHERE vwordem.cod_ordem=:CODIGO ');
    if XTipo = 'PEDV' then
      DMMACS.TALX.SQL.Add(' select vwpedv.formpag as pagamento  From vwpedv Where vwpedv.cod_pedvenda=:Codigo ');
    if XTipo = 'PEDC' then
    begin
      DMMACS.TALX.SQL.Add(' Select vwpedc.formpag as pagamento  From vwpedc Where vwpedc.cod_pedcomp=:Codigo ');
      if FMenu.XNotaEntrada = True then
      begin
        FMenu.TIPOREL := '';
        FMenu.TIPOAUX := 'ENTNFPROP';
        FMenu.XNotaEntrada := True;
      end
    end;
    DMMACS.TALX.ParamByName('Codigo').AsInteger := XCod_Pedido;
    DMMACS.TALX.Open;
    if DMMACS.TALX.IsEmpty then
      XImpNfeFormPagamento := 'À VISTA'
    else
      XImpNfeFormPagamento := DMMACS.TALX.FieldByName('pagamento').AsString;

    //Edmar - 22/07/2018 - Alimenta a variável que vai controlar se a NFe é uma operação interna ou não
    xOperacaoInterna := cbOperacaoInterna.Checked;

    FMzrNfe := TFMzrNFe.Create(FMzrNfe);
      //cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal(XNomePeriodoFiscal, XCod_Pedido, XCod_Pessoa, XTipo,
      'EMITIR', 1, LCfop.Caption, LNatOp.Caption, XImpNfeFormPagamento,
      EdNumeroFiscal.ValueInteger, StrToDate(EdDtEmissao.Text), LCodIbge.caption,
      LMunicipio.Caption, LUF.Caption, EdBaseICMS.ValueNumeric,
      EdVlrIcms.ValueNumeric, EdVlrIpi.ValueNumeric, EdBaseICMSST.ValueNumeric,
      EdVlrIcmsST.ValueNumeric, EdTotalProdutos.ValueNumeric,
      EdVlrFrete.ValueNumeric, EdVlrSeguro.ValueNumeric, EdDesconto.ValueNumeric,
      EdOutrasDespesas.ValueNumeric, EdTotalNotaFiscal.ValueNumeric,
      XValorTotalAproxTributacaoNacional);
    FMzrNfe.ShowModal;

  except
    Result := False;
  end;
end;

//Função utilizada para enviar nota fiscal para impressão

function TFPadraoFiscal.ImpNf: Boolean;
begin
  Result := True;
  try
    if Mensagem('Confirmação do usuário', 'Impressora pronta', '', 2, 3, False,
      'c') = 2 then
    begin
      //Paulo 11/08/2010: busca o numero do cupom
      if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') then
      begin
        if (XImpLig = true) then
        begin
          for XConta := 1 to 6 do
            XCuponProx := XCuponProx + ' ';
          Bematech_FI_NumeroCupom(XCuponProx);
          XAlx := StrToInt(XCuponProx);
          XCuponProx := IntToStr(XAlx + 1);
          EdNumeroFiscal.Text := XCuponProx;
        end;
      end;
      //Verifica numeração da nota fiscal
      // Efetua busca na tabela de documentos de ordem de serviço
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' select docfisord.numdocfis from docfisord where docfisord.numdocfis=:numero and docfisord.cod_ordem <> :codordem');
      DMESTOQUE.Alx.ParamByName('numero').AsString := ednumerofiscal.Text;
      DMESTOQUE.Alx.ParamByName('codordem').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      // Efetua busca na tabela de documentos de Pedido de Venda
      DMESTOQUE.Alx1.Close;
      DMESTOQUE.Alx1.SQL.Clear;
      DMESTOQUE.Alx1.SQL.Add(' select docfissaida.numdocfis from docfissaida where docfissaida.numdocfis=:numero and docfissaida.cod_pedido <> :codped');
      DMESTOQUE.Alx1.ParamByName('numero').AsString := EdNumeroFiscal.Text;
      DMESTOQUE.Alx1.ParamByName('codped').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx1.Open;
      if (not DMESTOQUE.Alx.IsEmpty) or (not DMESTOQUE.Alx1.IsEmpty) then
      begin
        //Foi encontrado o numero como sendo já impresso
        if Mensagem('Confirmação do usuário', 'O Numero ' + EdNumeroFiscal.Text +
          ' já foi impresso. O Sistema pode utilizar o próximo numero disponivel?' + #13
          + 'Número Disponível: ' + IntToStr(NfProxnumero) + #13 +
          'Clique em Sim para utilizar o Número: ' + IntToStr(NfProxnumero) +
          ' ou Não para usar o Número: ' + EdNumeroFiscal.Text, '', 2, 3, False,
          'c') = 2 then
        begin
          EdNumeroFiscal.Text := IntToStr(NfProxnumero);
        end;
      end;
      //Paulo 10/08/2010: Mostrar o Número do Cupom fiscal
      if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') then
      begin
        if (XImpLig = true) then
        begin
          for XConta := 1 to 6 do
            XCuponProx := XCuponProx + ' ';
          Bematech_FI_NumeroCupom(XCuponProx);
          XAlx := StrToInt(XCuponProx);
          XCuponProx := IntToStr(XAlx + 1);
          EdNumeroFiscal.Text := XCuponProx;
        end;
      end;
      //Defini impressora para NF e seta as configurações
      if NFSetImpressora = True then
      begin
        //ALEX: 09/03/2009 - VERIFICA SE O NUMERO DA NOTA FISCAL NÃO ESTA VAZIA
        if EdNumeroFiscal.ValueNumeric <= 0 then
        begin
          Mensagem('ATENÇÃO',
            'O Número da Nota Fiscal não foi atribuído pelo sistema.', '', 1, 1,
            false, 'a');
          if Mensagem('CONFIRMAÇÃO',
            'Deseja atribuir uma nova numeração para a nota fiscal e continuar a impressão?' + #13
            + 'Número Disponível: ' + IntToStr(NfProxnumero), '', 1, 1, false, 'a')
            = 2 then
          begin
            EdNumeroFiscal.Text := IntToStr(NfProxnumero)
          end
          else
          begin
            Result := False;
            Exit;
          end;
        end
        else
        begin
          //Paulo 04/08/2010: Para impressão caso seja ECF
          if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') then
          begin
            if (XImpLig = true) then
            begin
              ECF(XCod_Pedido, 'PEDVENDA');
            end;
          end;

          if (XImpLig = false) then
          begin
            //INICIA IMPRESSÃO
            Printer.BeginDoc;
            //Posiciona Itens de impressão no inicio da pagina
            DMESTOQUE.TSlave.First;
            DMESTOQUE.TSlaveServ.First;
            XQTDPAGIMP := 1;
              //Inicializa variavel para controle da qtd de paginas impressas
            while XQTDPAGIMP <= XQTDPAG do
              // Enquanto a quantidade de paginas impressas for menos ou igual a quantidade de paginas que devem ser impressas
            begin
              XNUMLIN := 0;
                //Variavel utilizada para incremento de linhas na impressão... quando houver casos de várias linhas no mesmo bloco

              //CABEÇALHO
              if NFCabecalho = False then
                Result := False;

              //FATURA
              if XTipo = 'ORDEM' then
                NFFatura(0);

              //PRODUTOS
              XNUMLIN := DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
              XQTDITEMIMPPAG := 0;
              if NFProdutos = False then
                Result := False;

              if XTipo = 'ORDEM' then
              begin
                //DESPESAS ADICIONAIS
                if not DMESTOQUE.TSlaveServ.IsEmpty then
                begin
                  XQTDITEMIMPPAG := 0;
                  XNUMLIN := 0;
                  if NFDespesas = False then
                    Result := False;
                end;
              end;

              //controle para final de pagina
              XNUMLIN := 0;
              if XQTDPAGIMP <> XQTDPAG then
              begin
                NFImpostosX; //se não for a ultima pagina o sistema imprime XXXX nos valores de impostos
              end
              else
              begin
                //Se ultima pagina sistema imprime os impostos
                if NFImpostos = False then
                  Result := False;
              end;

              //Transportadora
              XNUMLIN := 0;
              if NFTransportadora = False then
                Result := False;

              //Dados Adicionais
              XNUMLIN := 0;
              if NFDadosAdicionais = False then
                Result := False;

              //Dados Fiscais
              XNUMLIN := 0;
              if XQTDPAGIMP = XQTDPAG then
              begin
                if NFReservadoFisco = False then
                  Result := False;

              end;
              //Incrementa paginas impressas e caso seja necessário envia comando para nova pagina de impressão
              XQTDPAGIMP := XQTDPAGIMP + 1;
              if XQTDPAGIMP <= XQTDPAG then
                Printer.NewPage;
            end;
            //FINALIZA IMPRESSÃO
            Printer.EndDoc;
          end;
        end;
      end;
    end
    else
    begin
      RegistraFalha('   Impressão: é preciso logar com o caixa para verificar o tipo de impressão');
      Result := False;
      Exit;
    end;
  except
    RegistraFalha('   Impressão: falha desconhecida');
    Result := False;
  end;
end;
//Função utilizada para validar os dados adicionais

function TFPadraoFiscal.ValidaDadosAdicionais: Boolean;
var
  XQTDITEM, XQTDDESP: Integer;
  XQtdPagDesp: Integer;
begin
  Result := True;
  if XTipo = 'PEDC' then
  begin
    if FMenu.XNotaEntrada = True then
    begin
      MDadosAdicionais.Lines.Clear;
      MDadosAdicionais.Lines.Text :=
        DMENTRADA.TFiscPC.FieldByName('OBS').AsString;
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' Select count(itenspedc.cod_itenspedc) as quant from itenspedc where itenspedc.cod_pedcompra=:codigo ');
      DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      XQTDITEM := DMESTOQUE.Alx.FieldByName('quant').AsInteger;
      if DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger > 0 then
      begin
        XQTDPAG := (Round(XQTDITEM /
          DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger));
      end
      else
      begin
        XQTDPAG := 0;
        RegistraFalha('   Configurações de nota: O número de itens de produtos a serem impressos na nota fiscal, não foi devidamente configurado ');
      end;
      if XQTDPAG < (XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger)
        then
      begin
        XQTDPAG := XQTDPAG + 1;
      end;
      //ADICIONA O CAMPO DESCRITO NO DADOS ADICIONAIS DE CONFIGURAÇÃO DE LOJA
      // Texto comentado e inserido em reservados ao fisco MDadosAdicionais.Lines.Text:=DMMACS.TLoja.FieldByName('NFDADOSADIC').AsString;
      Exit; //pedidos de compra não geram dados adicionais
    end
    else
    begin
      Exit; //pedidos de compra não geram dados adicionais
    end;
  end;
  try
    MDadosAdicionais.Lines.Clear;
    ///////////////////////
    // DADOS ADICIONAIS
    //se não for remessa de garantia nem devolução, efetua os cálculos abaixo

    /////////////////////////////////////////////////////////////////
    // CONTROLA A INSEREÇÃO DE NUMERO DE PAGINAS NECESSÁRIAS NA NOTA
    ////////////////////////////////////////////////////////////////
    //seleciona quantidade de itens a serem impressos para verificar da quantidade de paginas
    XQtdPagDesp := 0;
    XQTDPAG := 1;
    XQTDPAGIMP := 0;
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    if XTipo = 'PEDV' then
      DMESTOQUE.Alx.SQL.Add(' Select count(itenspedven.cod_itenspedven) as quant from itenspedven where itenspedven.cod_pedven=:codigo ');
    if XTipo = 'ORDEM' then
      DMESTOQUE.Alx.SQL.Add(' Select count(itprodord.cod_itprodord) as quant from itprodord where itprodord.cod_ordem=:codigo ');
    if XTipo = 'PEDC' then
      DMESTOQUE.Alx.SQL.Add(' Select count(itenspedc.cod_itenspedc) as quant from itenspedc where itenspedc.cod_pedcompra=:codigo ');
    DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
    DMESTOQUE.Alx.Open;
    XQTDITEM := DMESTOQUE.Alx.FieldByName('quant').AsInteger;
    XQTDDESP := 0;
    //Define numero de paginas para produtos
    if DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger > 0 then
    begin
      XQTDPAG := (Round(XQTDITEM /
        DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger));
    end
    else
    begin
      XQTDPAG := 0;
      RegistraFalha('   Configurações de nota: O número de itens de produtos a serem impressos na nota fiscal, não foi devidamente configurado ');
    end;
    if XQTDPAG < (XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger)
      then
    begin
      XQTDPAG := XQTDPAG + 1;
    end;

    if XTipo = 'ORDEM' then
    begin
      //Define numero de paginas para serviços/despesas
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' Select count(despadic.COD_DESPADIC) as QUANT from despadic where (despadic.GERADOR=''ORDEM'') AND (despadic.COD_gerador=:codigo) ');
      DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      XQTDDESP := DMESTOQUE.Alx.FieldByName('quant').AsInteger;
      if DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger > 0 then
      begin
        XQtdPagDesp := (Round(XQTDDESP /
          DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger));
        if XQtdPagDesp < (XQTDDESP /
          DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger) then
        begin
          XQtdPagDesp := XQtdPagDesp + 1;
        end;
      end
      else
      begin
        XQtdPagDesp := 0;
        RegistraFalha('   Configurações de nota: O número de itens de produtos a serem impressos na nota fiscal, não foi devidamente configurado ');
      end;

      //Se numero de paginas de despesas for superior a de produtos... a quantidade de pagina de serviços passa a ser o total de paginas a ser impresso
      if XQtdPagDesp > XQTDPAG then
        XQTDPAG := XQtdPagDesp;
    end;

    ///////////////////////////////////////////
    // FIM DE CONTROLE DE NUMERACAO DE PAGINA
    ///////////////////////////////////////////

    if (FMenu.TIPOREL <> 'RNF') then
    begin
      If edPISRetido.ValueNumeric > 0 Then
           MDadosAdicionais.Lines.Add('Valor Pis Retido de: ' + FormatFloat('0.00', edPISRetido.ValueNumeric) + ' R$');
      If edCofinsRetido.ValueNumeric > 0 Then
           MDadosAdicionais.Lines.Add('Valor Cofins Retido de: ' + FormatFloat('0.00', edCofinsRetido.ValueNumeric) + ' R$');
      If edCsllRetido.ValueNumeric > 0 Then
           MDadosAdicionais.Lines.Add('Valor CSLL Retido de: ' + FormatFloat('0.00', edCsllRetido.ValueNumeric) + ' R$');
      If edIrrfRetido.ValueNumeric > 0 Then
           MDadosAdicionais.Lines.Add('Valor IRRF Retido de: ' + FormatFloat('0.00', edIrrfRetido.ValueNumeric) + ' R$');
      If edValorPrevidenciaRetido.ValueNumeric > 0 Then
           MDadosAdicionais.Lines.Add('Valor Previdência Retido de: ' + FormatFloat('0.00', edValorPrevidenciaRetido.ValueNumeric) + ' R$');

      //Caso não seja reimpressão
      if xtipo = 'ORDEM' then
      begin
        ////////////////////////
        // DADOS ADICIONAIS 02
        ////////////////////////
        //IMPRIME DADOS DO VEICULO SELECIONADO
        if DMMACS.TLoja.FieldByName('NFIMPDADOSVEICULO').AsString = '1' then
        begin
          DMPESSOA.TEquip.Close;
          DMPESSOA.TEquip.SQL.Clear;
          DMPESSOA.TEquip.SQL.Add(' SELECT * FROM equipamento WHERE equipamento.cod_equipamento=:CODIGO ');
          DMPESSOA.TEquip.ParamByName('CODIGO').AsInteger :=
            DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger;
          DMPESSOA.TEquip.Open;
          if not DMPESSOA.TEquip.IsEmpty then
          begin
            MDadosAdicionais.Lines.Text := 'Placa: ' +
              DMPESSOA.TEquip.FieldByName('PLACA').AsString + ' - Frota: ' +
              DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString + ' - Km Atual:' +
              DMServ.TOrd.FieldByName('TOTKM').AsString;
          end;
        end;
        //Angelo - 07/08/2015 - Observação da ordem de locação
        if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'LOCAÇÃO' then
        begin
          MDO.QConsulta.Close;
          MDO.QConsulta.SQL.Clear;
          MDO.QConsulta.SQL.Add('SELECT ORDEM.OBSERVACAO FROM ORDEM WHERE ORDEM.COD_ORDEM=:ORDEM');
          MDO.QConsulta.ParamByName('ORDEM').AsInteger := XCod_Pedido;
          MDO.QConsulta.Open;
          MDO.QConsulta.First;
          if ((not MDO.QConsulta.Eof) and
            (MDO.QConsulta.FieldByName('OBSERVACAO').AsString <> '')) then
            MDadosAdicionais.Lines.Text := MDadosAdicionais.Lines.Text +
              MDO.QConsulta.FieldByName('OBSERVACAO').AsString;
        end;
      end;
      ////////////////////////
      // DADOS ADICIONAIS 01
      ///////////////////////

      //ADICIONA O CAMPO DESCRITO NO DADOS ADICIONAIS DE CONFIGURAÇÃO DE LOJA
      //Texto transferido para a parte do reservado ao fisco...MDadosAdicional01.Lines.Text:=DMMACS.TLoja.FieldByName('NFDADOSADIC').AsString;
      //ADICIONA OBSERVAÇÃO NORMAL DA ORDEM
      if (xtipo = 'ORDEM') and (DMMACS.TLoja.FieldByName('NFIMPOBS').AsString =
        '1') then
        MDadosAdicionais.Lines.Add(DMServ.TOrd.FieldByName('OBSERVACAO').AsString);

    end
    else
    begin
      //Efetua este procedimento apenas quando o formulario é ativado
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      if XTipo = 'PEDV' then
        DMMACS.TALX.SQL.Add(' select * from docfissaida where docfissaida.cod_pedido=:codigo ');
      if XTipo = 'ORDEM' then
        DMMACS.TALX.SQL.Add(' select * from docfisord where docfisord.cod_ordem=:codigo ');
      DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMMACS.TALX.Open;
      //Caso seja reimpressao o sistema vai pegar os dados adicionais antigos que já estão gravado na tabela
      if XDadosAdicionaisReimp = True then
      begin
        if DMMACS.TALX.IsEmpty then
        begin
          //Caso não tenha retornado valores pede para o usuario informar manualmente
          MessageDlg('O Sistema não capturou os dados adicionais da Nota, por favor informe manualmente', mtWarning, [mbOK], 0);
        end
        else
        begin
          //insere as informações antigas
          MDadosAdicionais.Lines.Text :=
            DMMACS.TALX.FieldByName('dadosad01').AsString;
          //Reimpressão de ECF para NFe
          if ((FMenu.TIPOAUX = 'ECF') and
            ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') or
            (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') or
            (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe'))) and
            (XNumECF <> '') then
            if DMSAIDA.TPedV.FieldByName('FISCO').AsString <> 'NFE2' then
              MDadosAdicionais.Lines.Add('Cfe cupom fiscal n° ' + XNumECF);
                //Se for reimpressão de ECF para nfe devemos adicionar o numero do cupom referente na nf
        end;
        XDadosAdicionaisReimp := False;
      end
      else
      begin
        //ADICIONA TODOS OS MEMOS DE DADOS ADICIONAIS PARA O DADOS ADICIONAL PRINCIPAL
        //insere as informações antigas
        MDadosAdicionais.Lines.Text :=
          DMMACS.TALX.FieldByName('dadosad01').AsString;
        //If ((FMenu.TIPOAUX = 'ECF') And (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')) And (XNumECF <> '') Then
        if ((FMenu.TIPOAUX = 'ECF') and
          ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') or
          (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') or
          (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe'))) and
          (XNumECF <> '') then
          MDadosAdicionais.Lines.Add('Cfe cupom fiscal n° ' + XNumECF);
            //Se for reimpressão de ECF para nfe devemos adicionar o numero do cupom referente na nf

      end;
    end;
  except
    RegistraFalha('   Dados Adicionais: Os dados adicionais não foram gerados de acordo');
    Result := False;
  end;
end;

//Função utilizada para validar os dados reservados ao fisco

function TFPadraoFiscal.ValidaReservadoFisco: Boolean;
begin
  Result := True;
  try
    MReservadosFisco.Lines.Clear;
    if (XTipo = 'PEDV') or (XTipo = 'ORDEM') then
    begin
      if (FMenu.XSimplesRemessa = True) or (FMenu.XRemessaGarantia = True) or
        (FMenu.XDevolucao = True) or (FMenu.XOutrosFisc = True) then
        Exit; // Se for remessa garantia ou devolução sai da validação
      //Verifica se ocorreu casos de substituição tributária
      if XCFOP_ST = True then
      begin
        MReservadosFisco.Lines.Text := XTxtProtocolo;
        //DE EMPRESA SIMPLE PARA SIMPLES
        if (FMenu.XTributaEmpresa = 'SIMPLES')
          {//And (FMenu.XTributaCliente = 'SIMPLES')} then
        begin
          //para estao de Destino e Origem Iguais
           //If XUfOrigem = XUfDestino Then
          if cbOperacaoInterna.Checked then
            MReservadosFisco.Lines.Add(FMenu.XDecreto)
          else
            MReservadosFisco.Lines.Add(XTxtProtocolo); ////Para fora do Estado
        end;
        //DE EMPRESA SIMPLE PARA NORMAL
        if (FMenu.XTributaEmpresa = 'SIMPLES')
          {//And (FMenu.XTributaCliente = 'NORMAL')} then
        begin
          //para estao de Destino e Origem Iguais
            //If XUfOrigem = XUfDestino Then
          if cbOperacaoInterna.Checked then
            MReservadosFisco.Lines.Add(FMenu.XDecreto)
          else
            MReservadosFisco.Lines.Add(XTxtProtocolo);
        end;
        //DE EMPRESA NORMAL
        if (FMenu.XTributaEmpresa = 'NORMAL') then
        begin
          //para estao de Destino e Origem Iguais
              //If XUfOrigem = XUfDestino Then
          if cbOperacaoInterna.Checked then
            MReservadosFisco.Lines.Add(FMenu.XDecreto)
          else
            MReservadosFisco.Lines.Add(XTxtProtocolo);
        end;
        if ((XTipo = 'PEDV') and (XEmpresaInustria = True)) or ((XTipo = 'PEDV')
          and (FMenu.XTributaEmpresa = 'NORMAL')) and (not
          cbOperacaoInterna.Checked {XUfOrigem <> XUfDestino}) then
        begin
          MReservadosFisco.Lines.Clear;
          MReservadosFisco.Lines.Add(XTxtProtocolo); ////Para fora do Estado
        end
        else
        begin
          MReservadosFisco.Lines.Add('Base de Cálculo ICMS S.T. R$ ' +
            FloatToStr(XVlrBaseIcmsSt));
          MReservadosFisco.Lines.Add('Valor de ICMS S.T. R$ ' +
            FloatToStr(XVlrIcmsSt));
        end;
      end;
      //Alex 27/06/2014: Verifica se o cst utilizado permite credito de icms
      if XOperacaoCreditoIcms = True then
      begin
        MReservadosFisco.Lines.Add('PERMITE APROVEITAMENTO DE CRÉDITO DE ICMS DE ' +
          FormatFloat('0.00', XAliquotaCreditoIcms) +
          '% NO VALOR APROXIMADO DE R$ ' +
          FormatFloat('0.00', XValorCreditoIcms) +
          ' NOS TERMOS DO ART. 23 DA LC 123/2006');
      end;
    end;
    MReservadosFisco.Lines.Add(DMMACS.TLoja.FieldByName('NFDADOSADIC').AsString);
    //        MReservadosFisco.Lines.Add('Tributos totais estimados nesta nota fiscal (Lei 12.741/2012): ' + FormatFloat('0.00', XVlrAliquotaTotTributa) + '% R$ ' + FormatFloat('0.00', XValorTotalAproxTributacao) + '. Com base no IBPT');
    MReservadosFisco.Lines.Add('Tributos aproximados (Lei 12.741/2012): ' +
      FormatFloat('0.00', XAliqTotTribNacional) + '% R$ ' + FormatFloat('0.00',
      XValorTotalAproxTributacaoNacional) + ' Federal e ' + FormatFloat('0.00',
      XAliqTotTribEstadual) + '% R$ ' + FormatFloat('0.00',
      XValorTotalAproxTributacaoEstadual) + ' Estadual  Fonte: IBPT');
    //Paulo 15/12/2010: Adiciona obs fiscal dos produtos
    if (XTipo = 'ORDEM') or (XTipo = 'PEDV') then
    begin
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      if XTipo = 'PEDV' then
      begin
        DMESTOQUE.Alx.SQL.Add(' select distinct(subproduto.obsfiscal) from subproduto');
        DMESTOQUE.Alx.SQL.Add(' left join estoque on estoque.cod_subprod = subproduto.cod_subproduto');
        DMESTOQUE.Alx.SQL.Add(' left join itenspedven on itenspedven.cod_estoque = estoque.cod_estoque ');
        DMESTOQUE.Alx.SQL.Add(' where itenspedven.cod_pedven=:codigo and subproduto.obsfiscal <> ''''');
      end;
      if XTipo = 'ORDEM' then
      begin
        DMESTOQUE.Alx.SQL.Add(' select distinct(subproduto.obsfiscal)  from subproduto ');
        DMESTOQUE.Alx.SQL.Add(' left join estoque on estoque.cod_subprod = subproduto.cod_subproduto');
        DMESTOQUE.Alx.SQL.Add(' left join itprodord on itprodord.cod_estoque = estoque.cod_estoque');
        DMESTOQUE.Alx.SQL.Add(' where itprodord.cod_ordem=:codigo and subproduto.obsfiscal <> ''''');
      end;

      DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      DMESTOQUE.Alx.First;
      while not DMESTOQUE.alx.Eof do
      begin
        MReservadosFisco.Lines.Add(DMESTOQUE.Alx.FieldByName('obsfiscal').AsString);
        DMESTOQUE.Alx.Next;
      end;
    end;
  except
    Result := False;
    RegistraFalha('   Reservados ao Fisco: Falha ao gerar reservados ao fisco');
  end;
end;
//Função utilizada para efetuar o rateio de valor e base icms para pedidos de compra

function TFPadraoFiscal.RateioValorBaseIcms: Boolean;
var
  XRatPercentual, XRatVlrTotProd, XTotRegistros, XVlrDiferencaBase,
    XVlrRateioBase, XVlrDiferencaValor, XVlrRateioValor, XVlrInserido: Real;
begin
  Result := True;
  try
    if (EdBaseICMS.ValueNumeric = XVlrBaseIcmsOp) and (EdVlrIcms.ValueNumeric =
      XVlrIcmsOp) then
    begin
      MessageDlg('Existem produtos com redução na base de cálculo de Icms. Verifique a base', mtInformation, [mbOK], 0);
      EdBaseICMS.ReadOnly := False;
      EdVlrIcms.ReadOnly := False;
    end
    else
    begin
      XRatPercentual := 0;
      XRatVlrTotProd := 0;
      XTotRegistros := 0;
      XVlrDiferencaBase := 0;
      XVlrDiferencaValor := 0;
      XVlrDiferencaValor := 0;
      XVlrRateioValor := 0;

      //verifica os totais a serem rateados de valor e de base de icms
      if EdBaseICMS.ValueNumeric < XVlrBaseIcmsOp then
      begin //CASO A BASE DE ICMS TENHA SIDO DIMINUIDA
        XVlrDiferencaBase := XVlrBaseIcmsOp - EdBaseICMS.ValueNumeric;
      end;
      if EdBaseICMS.ValueNumeric > XVlrBaseIcmsOp then
      begin //CASO A BASE DE ICMS TENHA SIDO ACRESCIDA
        XVlrDiferencaBase := EdBaseICMS.ValueNumeric - XVlrBaseIcmsOp;
      end;
      if EdVlrIcms.ValueNumeric < XVlrIcmsOp then
      begin // CASO O VALOR  DE ICMS TENHA SIDO DIMINUIDO
        XVlrDiferencaValor := XVlrIcmsOp - EdVlrIcms.ValueNumeric;
      end;
      if EdVlrIcms.ValueNumeric > XVlrIcmsOp then
      begin // CASO O VALOR TENHA SIDO ACRESCIDO
        XVlrDiferencaValor := EdVlrIcms.ValueNumeric - XVlrIcmsOp;
      end;

      //Verifica se o total de item com redução na base
      DMENTRADA.TAlx.Close;
      DMENTRADA.TAlx.SQL.Clear;
      DMENTRADA.TAlx.SQL.Add('  Select Sum(itenspedc.valortotal) as TOTALBASE, sum(itenspedc.descnf) AS descnf   from itenspedc ');
      DMENTRADA.TAlx.SQL.Add('   left join cst ON itenspedc.cod_cst = cst.cod_cst ');
      DMENTRADA.TAlx.SQL.Add('    where ((cst.substituicao<>''1'') OR (cst.substituicao IS NULL)) AND (itenspedc.cod_pedcompra=:Pedido) ');
      DMENTRADA.TAlx.ParamByName('Pedido').AsInteger := XCod_Pedido;
      DMENTRADA.TAlx.Open;
      XRatVlrTotProd := DMENTRADA.TAlx.FieldByName('TOTALBASE').AsCurrency -
        DMENTRADA.TAlx.FieldByName('descnf').AsCurrency;
      XVlrRateioBase := XVlrDiferencaBase;
      XVlrRateioValor := XVlrDiferencaValor;

      if XRatVlrTotProd > 0 then
      begin
        //Filtra Itens do Pedido com redução na base
        DMENTRADA.TItemPC.Close;
        DMENTRADA.TItemPC.SQL.Clear;
        DMENTRADA.TItemPC.SQL.Add('  Select * from itenspedc ');
        DMENTRADA.TItemPC.SQL.Add('   left join cst on itenspedc.cod_cst = cst.cod_cst ');
        DMENTRADA.TItemPC.SQL.Add('   where (cst.substituicao<>''1'') AND (itenspedc.cod_pedcompra=:Pedido) ');
        DMENTRADA.TItemPC.ParamByName('Pedido').AsInteger := XCod_Pedido;
        DMENTRADA.TItemPC.Open;
        DMENTRADA.TItemPC.Last;
        XTotRegistros := DMENTRADA.TItemPC.RecordCount;
        DMENTRADA.TItemPC.First;
        while not DMENTRADA.TItemPC.Eof do
        begin
          if DMENTRADA.TItemPC.RecNo = DMENTRADA.TItemPC.RecordCount then
          begin
            //Se for a ultima linha aplica-se toda a diferença restante de valores

            DMENTRADA.TItemPC.Edit;
            //CASO A BASE DE ICMS TENHA SIDO DIMINUIDA
            if EdBaseICMS.ValueNumeric < XVlrBaseIcmsOp then
              DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency :=
                DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency -
                XVlrDiferencaBase;

            //CASO A BASE DE ICMS TENHA SIDO ACRESCIDA
            if EdBaseICMS.ValueNumeric > XVlrBaseIcmsOp then
              DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency :=
                DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency +
                XVlrDiferencaBase;

            // CASO O VALOR  DE ICMS TENHA SIDO DIMINUIDO
            if EdVlrIcms.ValueNumeric < XVlrIcmsOp then
              DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency :=
                DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency -
                XVlrDiferencaValor;

            // CASO O VALOR TENHA SIDO ACRESCIDO
            if EdVlrIcms.ValueNumeric > XVlrIcmsOp then
              DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency :=
                DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency +
                XVlrDiferencaValor;

            DMENTRADA.TItemPC.Post;
          end
          else
          begin
            //Se não for ultima linha aplica se a diferença proporcional
            //Verifica o percentual que equivale o total do item para o total geral de redução

            XRatPercentual :=
              ((DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency -
              DMENTRADA.TItemPC.FieldByName('descnf').AsCurrency) * 100) /
              XRatVlrTotProd;

            DMENTRADA.TItemPC.Edit;
            //CASO A BASE DE ICMS TENHA SIDO DIMINUIDA
            if EdBaseICMS.ValueNumeric < XVlrBaseIcmsOp then
            begin
              XVlrInserido := (XVlrRateioBase * XRatPercentual) / 100;
              DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency :=
                DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency -
                (XVlrRateioBase * XRatPercentual) / 100;
            end;

            //CASO A BASE DE ICMS TENHA SIDO ACRESCIDA
            if EdBaseICMS.ValueNumeric > XVlrBaseIcmsOp then
            begin
              XVlrInserido := (XVlrRateioBase * XRatPercentual) / 100;
              DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency :=
                DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency +
                (XVlrRateioBase * XRatPercentual) / 100;
            end;
            //repassa os valores inseridos para suas variaveis que guardam a diferença
            XVlrDiferencaBase := XVlrDiferencaBase - XVlrInserido;
            // CASO O VALOR  DE ICMS TENHA SIDO DIMINUIDO
            if EdVlrIcms.ValueNumeric < XVlrIcmsOp then
            begin
              XVlrInserido := (XVlrRateioValor * XRatPercentual) / 100;
              DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency :=
                DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency -
                (XVlrRateioValor * XRatPercentual) / 100;
            end;

            // CASO O VALOR TENHA SIDO ACRESCIDO
            if EdVlrIcms.ValueNumeric > XVlrIcmsOp then
            begin
              XVlrInserido := (XVlrRateioValor * XRatPercentual) / 100;
              DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency :=
                DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency +
                (XVlrRateioValor * XRatPercentual) / 100;
            end;

            DMENTRADA.TItemPC.Post;
          end;
          //repassa os valores inseridos para suas variaveis que guardam a diferença
          XVlrDiferencaValor := XVlrDiferencaValor - XVlrInserido;
          DMENTRADA.TItemPC.Next;
        end;
        try
          DMENTRADA.IBT.CommitRetaining;
          EscreveItensProduto;
        except
          DMENTRADA.IBT.RollbackRetaining;
          Result := False;
          RegistraFalha('   Falha: Falha ao efetuar rateio de Valor e Base de Icms')
        end;
      end;
    end;
  except
    Result := False;
    RegistraFalha('   Falha: Falha ao efetuar rateio de Valor e Base de Icms')
  end;
end;

//Função utilizada para efetuar o rateio de diferimento de icms entre os itens tributados

function TFPadraoFiscal.RateioDiferimento: Boolean;
var
  XRatDiferValor, XRatSaldoVlr, XRatVlrTotProd, XRatPercentual, XRatVlrDiminuir:
    Real;
  XTotRegistros: Integer;
begin
  Result := True;
  try
    if (EdVlrIcms.ValueNumeric <> XVlrIcmsOp) then
    begin
      XRatDiferValor := 0;
      XRatSaldoVlr := 0;
      XRatPercentual := 0;
      XRatVlrDiminuir := 0;
      if EdVlrIcms.ValueNumeric < XVlrIcmsOp then
      begin
        XRatDiferValor := XVlrIcmsOp - EdVlrIcms.ValueNumeric;
        XRatSaldoVlr := XVlrIcmsOp - EdVlrIcms.ValueNumeric;
      end;
      //Verifica se o total de item com redução na base
      DMENTRADA.TAlx.Close;
      DMENTRADA.TAlx.SQL.Clear;
      DMENTRADA.TAlx.SQL.Add(' Select Sum(itenspedc.valortotal) as TOTALBASE from itenspedc ');
      DMENTRADA.TAlx.SQL.Add('  where (exists(select * from cst where (cst.cod_cst = itenspedc.cod_cst) and (cst.SUBSTITUICAO<>''1''))) AND (itenspedc.cod_pedcompra=:Pedido) ');
      DMENTRADA.TAlx.ParamByName('Pedido').AsInteger := XCod_Pedido;
      DMENTRADA.TAlx.Open;
      XRatVlrTotProd := DMENTRADA.TAlx.FieldByName('TOTALBASE').AsCurrency;
      if XRatVlrTotProd > 0 then
      begin
        //Filtra Itens do Pedido com redução na base
        DMENTRADA.TItemPC.Close;
        DMENTRADA.TItemPC.SQL.Clear;
        DMENTRADA.TItemPC.SQL.Add(' Select * from itenspedc ');
        DMENTRADA.TItemPC.SQL.Add('  where (exists(select * from cst where (cst.cod_cst = itenspedc.cod_cst) and (cst.SUBSTITUICAO<>''1''))) AND (itenspedc.cod_pedcompra=:Pedido) order by itenspedc.valortotal ');
        DMENTRADA.TItemPC.ParamByName('Pedido').AsInteger := XCod_Pedido;
        DMENTRADA.TItemPC.Open;
        DMENTRADA.TItemPC.Last;
        XTotRegistros := DMENTRADA.TItemPC.RecordCount;
        DMENTRADA.TItemPC.First;
        while not DMENTRADA.TItemPC.Eof do
        begin
          //Verifica o percentual que equivale o total do item para o total geral de redução
          XRatPercentual :=
            (DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency * 100) /
            XRatVlrTotProd;
          if XRatDiferValor <> 0 then
          begin
            XRatVlrDiminuir := (XRatDiferValor * XRatPercentual) / 100;
            DMENTRADA.TItemPC.Edit;
            if XTotRegistros = DMENTRADA.TItemPC.RecNo then
              DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency :=
                DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency - XRatSaldoVlr
            else
              DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency :=
                DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency -
                XRatVlrDiminuir;
            DMENTRADA.TItemPC.Post;
            XRatSaldoVlr := XRatSaldoVlr - XRatVlrDiminuir;
          end;
          DMENTRADA.TItemPC.Next;
        end;
        try
          DMENTRADA.IBT.CommitRetaining;
          EscreveItensProduto;
        except
          DMENTRADA.IBT.RollbackRetaining;
          Result := False;
          RegistraFalha('   Falha: Falha ao efetuar rateio Diferimento de Icms')
        end;
      end
      else
      begin
        Result := False;
        RegistraFalha('   Rateio de Diferimento de Icms: Total de produtos Tributados retornou zero ');
      end;
    end;
  except
    Result := False;
    RegistraFalha('   Falha: Falha ao efetuar rateio Diferimento de Icms');
  end;
end;
//Função utilizada para localizar o codigo (chave primaria) do periodo para lançar os documentos fiscais

function TFPadraoFiscal.BuscaPeriodoFiscal: Boolean;
begin
  Result := True;
  LPeriodoFiscal.Caption := 'Período Fiscal Não Definido';
  XNomePeriodoFiscal := '';
  try
    //Sql para localizar todos os periodos fiscais em aberto
    DMMACS.TPeriodoFiscal.Close;
    DMMACS.TPeriodoFiscal.SQL.Clear;
    DMMACS.TPeriodoFiscal.SQL.Add(' Select * from periodofiscal where (periodofiscal.fechado=''N'')');
    DMMACS.TPeriodoFiscal.Open;
    DMMACS.TPeriodoFiscal.Last;
    if DMMACS.TPeriodoFiscal.RecordCount > 1 then
    begin
      LPeriodoFiscal.Caption := 'Período Fiscal Não Definido';
      XNomePeriodoFiscal := '';
      Result := False;
      RegistraFalha('   Período Fiscal: Foi encontrado mais de um período fiscal em aberto');
    end
    else
    begin
      if not DMMACS.TPeriodoFiscal.IsEmpty then
      begin
        XCod_Perido_Fiscal :=
          DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
        LPeriodoFiscal.Caption := 'Período Fiscal: ' +
          DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
        XNomePeriodoFiscal :=
          DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
        //Repassa os Intervalos de data
        try
          XDtIniPeriodo :=
            DMMACS.TPeriodoFiscal.FieldByName('DTINICIAL').AsDateTime;
          XDtFimPeriodo :=
            DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsDateTime;
        except
          Result := False;
          RegistraFalha('   Período Fiscal: Falha ao identificar o intervalo de datas no período, procure suporte técnico');
        end;
      end
      else
      begin
        LPeriodoFiscal.Caption := 'Período Fiscal Não Definido';
        XNomePeriodoFiscal := '';
        Result := False;
        RegistraFalha('   Período Fiscal: Não foi encontrado período fiscal, inicialize o período fiscal');
      end;
    end;
  except
    Result := False;
    RegistraFalha('   Período Fiscal: Falha ao inserir a nota fiscal dentro de um período fiscal. Verifique suporte técnico');
  end;
end;

//Função utilizada para efetuar calculo de rateio de Substituição Tributária entre os Itens de entrada

function TFPadraoFiscal.RateioStEntrada: Boolean;
var
  XRateioVlrProduto, XRateioBaseIcmsSt, XRateioVlrIcmSt, XRateioSaldoVlrIcmsSt,
    XRateioSaldoBaseIcmsSt, XRateioPercento: Real;
begin
  Result := True;
  EdBaseICMSST.ReadOnly := False;
  EdVlrIcmsST.ReadOnly := False;
  if XImportNfe = 0 then
  begin //Jônatas 04/10/2013 - se for importação XML, não é pra mostrar a mensagem. 0 = manual, 1=importação
    if XCFOP_ST = True then
    begin
      //Sql para descobrir todos os itens com Substituição Tributária
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' Select Sum(itenspedc.valortotal) as TOTAL from itenspedc ');
      DMESTOQUE.Alx.SQL.Add(' Left join cst on itenspedc.cod_cst=cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' Where (cst.substituicao=''1'') and (itenspedc.cod_pedcompra=:codigo) ');
      DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      if not DMESTOQUE.Alx.IsEmpty then
      begin
        //Repassa o valor total de produtos somados para a variável em questão
        XRateioVlrProduto := DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency;
        //Repassa os valores de totais as variaveis
        XVlrBaseIcmsSt := EdBaseICMSST.ValueNumeric;
        XVlrIcmsSt := EdVlrIcmsST.ValueNumeric;
        //Seleciona todos os itens de pedido com ST para efetuar rateio
        DMENTRADA.TItemPC.Close;
        DMENTRADA.TItemPC.SQL.Clear;
        DMENTRADA.TItemPC.SQL.Add(' Select * from itenspedc ');
        DMENTRADA.TItemPC.SQL.Add('  where (exists(select * from cst where (cst.cod_cst = itenspedc.cod_cst) and (cst.substituicao=''1''))) AND (itenspedc.cod_pedcompra=:Pedido) ');
        DMENTRADA.TItemPC.ParamByName('pedido').AsInteger := XCod_Pedido;
        DMENTRADA.TItemPC.Open;
        if not DMENTRADA.TItemPC.IsEmpty then
        begin
          XRateioBaseIcmsSt := EdBaseICMSST.ValueNumeric;
          XRateioVlrIcmSt := EdVlrIcmsST.ValueNumeric;
          XRateioSaldoVlrIcmsSt := XRateioVlrIcmSt;
          XRateioSaldoBaseIcmsSt := XRateioBaseIcmsSt;
          DMENTRADA.TItemPC.Last;
          DMENTRADA.TItemPC.First;
          while not DMENTRADA.TItemPC.Eof do
          begin
            //Descobre percentual para rateio
            XRateioPercento :=
              (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency * 100) /
              XRateioVlrProduto;
            if (EdBaseICMSST.ValueNumeric <= 0) then
            begin
              DMENTRADA.TItemPC.Edit;
              DMENTRADA.TItemPC.FieldByName('baseicmssubs').AsCurrency := 0;
              DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency := 0;
              DMENTRADA.TItemPC.Post;
            end
            else
            begin
              if DMENTRADA.TItemPC.RecNo = DMENTRADA.TItemPC.RecordCount then
              begin
                DMENTRADA.TItemPC.Edit;
                DMENTRADA.TItemPC.FieldByName('baseicmssubs').AsCurrency :=
                  XRateioSaldoBaseIcmsSt;
                DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency :=
                  XRateioSaldoVlrIcmsSt;
                DMENTRADA.TItemPC.Post;
              end
              else
              begin
                DMENTRADA.TItemPC.Edit;
                DMENTRADA.TItemPC.FieldByName('baseicmssubs').AsCurrency :=
                  (XRateioBaseIcmsSt * XRateioPercento) / 100;
                DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency :=
                  (XRateioVlrIcmSt * XRateioPercento) / 100;
                DMENTRADA.TItemPC.Post;
              end;
              XRateioSaldoVlrIcmsSt := XRateioSaldoVlrIcmsSt -
                DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency;
              XRateioSaldoBaseIcmsSt := XRateioSaldoBaseIcmsSt -
                DMENTRADA.TItemPC.FieldByName('baseicmssubs').AsCurrency;
            end;
            DMENTRADA.TItemPC.Next;
          end;
        end;

      end;
      try
        DMENTRADA.IBT.CommitRetaining;
      except
        DMENTRADA.IBT.RollbackRetaining;
        Result := False;
        RegistraFalha('   Falha: Falha ao efetuar ratrio de Substituição tributária aos itens')
      end;
      //Efetua nova filtragem e escrita dos produtos na tela após rateio
      EscreveItensProduto;
    end;
  end
  else
  begin
    //Alex - Se tiver importando deveremos apenas repassar aos edits os valores
      //Sql para descobrir todos os itens com Substituição Tributária
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add(' Select Sum(itenspedc.baseicmssubs) as BCST, Sum(itenspedc.vlricmssubs) as VST from itenspedc');
    DMESTOQUE.Alx.SQL.Add(' Where (itenspedc.cod_pedcompra=:codigo) ');
    DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
    DMESTOQUE.Alx.Open;
    if not DMESTOQUE.Alx.IsEmpty then
    begin
      XVlrBaseIcmsSt := DMESTOQUE.Alx.FieldByName('BCST').AsCurrency;
      XVlrIcmsSt := DMESTOQUE.Alx.FieldByName('VST').AsCurrency;
      EdBaseICMSST.ValueNumeric := XVlrBaseIcmsSt;
      EdVlrIcmsST.ValueNumeric := XVlrIcmsSt;
    end;
  end;
end;

//funcção utilizada em pedido de compra para zerar os icms negatrivos
function TFPadraoFiscal.ZeraIcmsNegativosProdutosNF: Boolean;
begin
  Result := True;
  try
    //seta todas as bases de icms e aliquota para 0
    DMENTRADA.TAlx.Close;
    DMENTRADA.TAlx.SQL.Clear;
    DMENTRADA.TAlx.SQL.Add(' update itenspedc set itenspedc.baseicms=0, itenspedc.vlricms=0 where (itenspedc.baseicms<0) or (itenspedc.vlricms<0) and (itenspedc.cod_pedcompra=:codigo) ');
    DMENTRADA.TAlx.ParamByName('codigo').AsInteger := XCod_Pedido;
    DMENTRADA.TAlx.ExecSQL;
    DMENTRADA.IBT.CommitRetaining;
  except
    Result := False
  end;
end;

//Função utilizada para Calcular Icms Substituição Tributária Industrias do Simples
{Function TFPadraoFiscal.CalculoIcmsSubstituicaoInsustriasSimples: Boolean;
Begin
 Try
      Result:=True;
      //Calcula somente fora do estado os caso a empresa esteja marcado como industria, ai calculamos dentro e fora do estado
      If (XUfOrigem <> XUfDestino) or (XEmpresaInustria=True)
      Then Begin
          DMSAIDA.TItemPV.Edit;
          If XMvaEstado>1 Then
             DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := (XTabItemProd.FieldByName('valortotal').AsCurrency - XTabItemProd.FieldByName('descnf').AsCurrency)+((XTabItemProd.FieldByName('valortotal').AsCurrency - XTabItemProd.FieldByName('descnf').AsCurrency) * XMvaEstado) / 100
          Else
             DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := (XTabItemProd.FieldByName('valortotal').AsCurrency - XTabItemProd.FieldByName('descnf').AsCurrency);
          If (XUfOrigem <> XUfDestino) and (XClienteConsumidorFinal=True) and (XClienteIE=True)
          Then Begin
             //Quando Cliente Fora do Estado, consumidor final com IE a base de calculo ST deve ficar como abaixo
             DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := (XTabItemProd.FieldByName('valortotal').AsCurrency - XTabItemProd.FieldByName('descnf').AsCurrency);
          End;
          If (XUfOrigem = XUfDestino) and (XClienteConsumidorFinal=False)
          Then Begin
             //Dentro do Estado Cliente Revenda (Vlr Créd. Icms aplicado sobre DAS), (BC ST = V. PRODUTOS * MVA), ( VLR ST = (BC ST*ALIQ INTERNA)-(PRODUTOS*ALIQ INTERNA)
             DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := ((XTabItemProd.FieldByName('baseicmssubs').AsCurrency * XAlqIntDestinatario) / 100)-(((XTabItemProd.FieldByName('valortotal').AsCurrency - XTabItemProd.FieldByName('descnf').AsCurrency) * XAlqIntDestinatario) / 100);
          End
          Else Begin
             If (XUfOrigem <> XUfDestino) and (XClienteConsumidorFinal=True) and (XClienteIE=True)
             Then Begin
                 //Fora do Estado Cliente consumidor final com Inscrição Estadual (BC ST = PRODUTOS * MVA), ( VLR ST = BC ST * (ALIQ INTERNA - ALIQ INTERESTADUAL))
                 DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := ((XTabItemProd.FieldByName('baseicmssubs').AsCurrency * (XAlqIntDestinatario-XAliqExtDestinatario)) / 100);
             End
             Else Begin
                 If (XUfOrigem <> XUfDestino) and (XClienteConsumidorFinal=False)
                 Then Begin
                     //Fora do Estado Cliente Revenda (Não calcula ST),
                     DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := ((XTabItemProd.FieldByName('baseicmssubs').AsCurrency * (XAlqIntDestinatario)) / 100)-(((XTabItemProd.FieldByName('valortotal').AsCurrency - XTabItemProd.FieldByName('descnf').AsCurrency) * XAliqExtDestinatario) / 100);
                 End;
             End;
          End;
          DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
          If (XCSTInterestadual > 0) and (Fmenu.XTributaEmpresa = 'NORMAL') Then
              DMSAIDA.TItemPV.FieldByName('COD_CST').AsInteger := XCSTInterestadual;
          DMSAIDA.TItemPV.FieldByName('APLICARST').AsString := '1';
          DMSAIDA.TItemPV.Post;
      End;
      //Alex 01/08/2014: Se o estado for isento ele zera os valores substituidos
      If XEstadoIsentoST = true Then
      Begin
          DMSAIDA.TItemPV.Edit;
          DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := 0;
          DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := 0;
          DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
          DMSAIDA.TItemPV.FieldByName('APLICARST').AsString := '0';
          DMSAIDA.TItemPV.Post;
      End;
      //Alex 27/06/2014: Se o cst ou csosn permitir aproveitamento de crédito
      If DMESTOQUE.Alx1.FieldByName('APROVEITACREDITO').AsString='1'
      Then Begin
          DMSAIDA.TItemPV.Edit;
          DMSAIDA.TItemPV.FieldByName('ICMSCREDALIQ').AsCurrency := XAliqIcms;
          DMSAIDA.TItemPV.FieldByName('ICMSCREDVALOR').AsCurrency := ((DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency - DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency) * XAliqIcms) / 100;
          {If DMSAIDA.TItemPV.FieldByName('ICMSCREDVALOR').AsCurrency <=  DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency Then
             DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency-DMSAIDA.TItemPV.FieldByName('ICMSCREDVALOR').AsCurrency
          Else
             DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency:=0;
          }
          {DMSAIDA.TItemPV.Post;
          XOperacaoCreditoIcms:=	True;
          XAliquotaCreditoIcms:=XAliqIcms ;
          XValorCreditoIcms:=XValorCreditoIcms + DMSAIDA.TItemPV.FieldByName('ICMSCREDVALOR').AsCurrency;
      End;
   Except
    Result:=False;
   End;
End; }

//Função utilizada para Calcular Icms Substituição Tributária para empresas normais
function TFPadraoFiscal.CalculoIcmsSubstituicaoEmpresaNormal: Boolean;
begin
  try
    Result := True;
    //SIMPLES P NORMAL
    //Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
    if (Fmenu.XTributaEmpresa = 'SIMPLES') and (Fmenu.XTributaCliente = '1')
      then
    begin
      //Calcula somente fora do estado
         //If XUfOrigem <> XUfDestino
      if not cbOperacaoInterna.Checked then
      begin
        DMSAIDA.TItemPV.Edit;
        DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency :=
          (XTabItemProd.FieldByName('valortotal').AsCurrency -
          XTabItemProd.FieldByName('descnf').AsCurrency) +
          (((DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency -
          XTabItemProd.FieldByName('descnf').AsCurrency) * XMvaEstado) / 100);
        DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency :=
          (XTabItemProd.FieldByName('baseicmssubs').AsCurrency *
          XAlqIntDestinatario) / 100;
        DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
        if XCSTInterestadual > 0 then
          DMSAIDA.TItemPV.FieldByName('COD_CST').AsInteger := XCSTInterestadual;
        DMSAIDA.TItemPV.FieldByName('APLICARST').AsString := '1';
        DMSAIDA.TItemPV.Post;
      end;
    end;
    //NORMAL P NORMAL
    // - 14/04/2009: alterado para a mercescan
    if (Fmenu.XTributaEmpresa = 'NORMAL') then
    begin
      //Calcula somente fora do estado
       //If XUfOrigem <> XUfDestino
      if not cbOperacaoInterna.Checked then
      begin
        //////////////////////////////////
        // FORMULA PARA CALCULO COM MVA //
           //////////////////////////////////
           //Base de Cálculo = valor da mercadoria +frete + seguro + impostos e outros encargos transferíveis;
          //Base de Calculo Substituição = Base de Cálculo + (Base de Cálculo * MVA%)
          //Valor do Icms OP = Base de Cálculo * Aliquota Interestadua do Estado de Destino
          //Valor do Icms ST = (Base de Calculo Substituição * Aliquota Interna do estado de Destino) - Valor do Icms OP
        //Efetua Calculos em variáveis
           //BASE//
        XAuxBaseIcmsSubstituicao := 0;
        //removo o desconto
        XAuxBaseIcmsSubstituicao :=
          (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency -
          DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency);
        //Aplica Mva
        XAuxBaseIcmsSubstituicao := XAuxBaseIcmsSubstituicao +
          ((XAuxBaseIcmsSubstituicao * XMvaEstado) / 100);
        //VALOR ICMS SUBSTITUIÇÃO
        XAuxVlrIcmsSubstituicao := 0;
        XAuxIcmsOp := 0;
        //Calcula Valor do icms operação propria para descontar do Substituido
        XAuxIcmsOp := (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency -
          DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency);
        XAuxIcmsOp := (XAuxIcmsOp * XAliqExtDestinatario) / 100;
        XAuxVlrIcmsSubstituicao := ((XAuxBaseIcmsSubstituicao *
          XAlqIntDestinatario)) / 100;
        //Desconta do valor de icms substituição o que já foi pago como icms operação propria   EdTotalProdutos.ValueNumeric*XAliqExtDestinatario)/100);
        XAuxVlrIcmsSubstituicao := XAuxVlrIcmsSubstituicao - XAuxIcmsOp;
        //Fim de calculo em variaveis
        DMSAIDA.TItemPV.Edit;
          // TOTAL PRODUTOS - DESCONTO + (((TOTAL PRODUTOS - DESCONTO) * XMvaEstado)/100);
        DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency :=
          XAuxBaseIcmsSubstituicao;
        DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency :=
          XAuxVlrIcmsSubstituicao;
        DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
        DMSAIDA.TItemPV.FieldByName('COD_CST').AsInteger := XCSTInterestadual;
        DMSAIDA.TItemPV.FieldByName('APLICARST').AsString := '1';
        DMSAIDA.TItemPV.Post;
      end;
    end;
    //If XUfOrigem = XUfDestino
    if cbOperacaoInterna.Checked then
    begin
      if
        CalcMediaSubstituicaoTributaria(DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsInteger) = True then
      begin
        DMSAIDA.TItemPV.Edit;
        DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := XMediaBaseST *
          DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency;
        DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := XMediaValorST *
          DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency;
        DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := 0;
        DMSAIDA.TItemPV.FieldByName('APLICARST').AsString := '0';
        DMSAIDA.TItemPV.Post;
      end;
    end;
    //Paulo 26/10/2010 - 158: Se o estado for isento ele zera os valores substituidos
    if XEstadoIsentoST = true then
    begin
      DMSAIDA.TItemPV.Edit;
      DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := 0;
      DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := 0;
      DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
      DMSAIDA.TItemPV.FieldByName('APLICARST').AsString := '0';
      DMSAIDA.TItemPV.Post;
    end;
  except
    Result := False;
  end;
end;

//Função utilizada para Calcular Impostos de cada item de produto da NF
function TFPadraoFiscal.CalcImpostosProdutosNF: Boolean;
var
  XAuxBaseIcmsSubstituicao, XAuxVlrIcmsSubstituicao, XAuxIcmsOp: Real;
begin
  Result := True;
  if XTipo = 'PEDV' then
  begin
    //Se for devolução ou remessa para garantia o sistema deve pular o calculo de impostos
    if (FMenu.XSimplesRemessa = True) or (FMenu.XRemessaGarantia = True)
      {Or (FMenu.XDevolucao = True)} or (FMenu.XOutrosFisc = True) or
      (FMenu.TIPOAUX = 'ECF') or (FMenu.XComplementacao = True) then
      Exit
    else
    begin
      {if FMenu.XDevolucao = True then//Edmar - 16/03/2015 - Se for devolução, zera os impostos dos itens
        begin
         Try
             //seta todas as bases de icms e aliquota para 0
                DMSAIDA.TAlx.Close;
                DMSAIDA.TAlx.SQL.Clear;
                DMSAIDA.TAlx.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.BASEICMS = 0, ITENSPEDVEN.VLRICMS = 0, ITENSPEDVEN.ALIQICMS = 0, ');
                DMSAIDA.TAlx.SQL.Add(' ITENSPEDVEN.VLRICMSSUBS = 0, ITENSPEDVEN.BASEICMSSUBS = 0 WHERE (ITENSPEDVEN.COD_PEDVEN=:CODIGO) ');
                DMSAIDA.TAlx.ParamByName('codigo').AsInteger := XCod_Pedido;
                DMSAIDA.TAlx.ExecSQL;
                DMSAIDA.IBT.CommitRetaining;
                Exit;
            Except
             RegistraFalha('   Falha cálculo icms: Falha ao recalcular icms dos produtos');
                Result := False;
                Exit;
            End;
        end;}
    end;
  end;
  try
    //Define Sql para selecionar os itens (Itens de Pedido de compra não passam por este prodesso)
    if XTipo = 'PEDV' then
    begin
      try
        //Se o processo for operação de venda normal
        if ((FMenu.XRemessaGarantia = false) and (FMenu.XSimplesRemessa = False)
          and (fmenu.XDevolucao = False) and (fmenu.XOutrosFisc = False) and
          (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'ECF')) and
          (DMMACS.TEmpresa.FieldByName('CONTICMS').AsString <> '1') and
          (FMenu.XComplementacao = False) then
        begin
          //seta todas as bases de icms e aliquota para 0
          DMSAIDA.TAlx.Close;
          DMSAIDA.TAlx.SQL.Clear;
          DMSAIDA.TAlx.SQL.Add(' UpDate itenspedven set itenspedven.baseicms=0, itenspedven.vlricms=0, itenspedven.aliqicms=0 where (itenspedven.cod_pedven=:codigo)  and (itenspedven.reducbaseicms=0) ');
          DMSAIDA.TAlx.ParamByName('codigo').AsInteger := XCod_Pedido;
          DMSAIDA.TAlx.ExecSQL;
          DMSAIDA.IBT.CommitRetaining;
        end;
      except
        RegistraFalha('   Falha cálculo icms: Falha ao recalcular icms dos produtos');
        Result := False;
      end;
      DMSAIDA.TItemPV.Close;
      DMSAIDA.TItemPV.SQL.Clear;
      DMSAIDA.TItemPV.SQL.Add(' select * from itenspedven ');
      DMSAIDA.TItemPV.SQL.Add('  left join cst ON itenspedven.cod_cst = cst.cod_cst WHERE itenspedven.cod_pedven=:codigo ');
      DMSAIDA.TItemPV.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMSAIDA.TItemPV.Open;
    end;
    if XTipo = 'ORDEM' then
    begin
      try
        //seta todas as bases de icms e aliquota para 0
        DMServ.Alx.Close;
        DMServ.Alx.SQL.Clear;
        DMServ.Alx.SQL.Add(' UpDate itprodord set itprodord.baseicms=0, itprodord.vlricms=0, itprodord.aliqicms=0 where (itprodord.cod_ordem=:codigo) ');
        DMServ.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
        DMServ.Alx.ExecSQL;
        DMServ.IBT.CommitRetaining;
      except
        RegistraFalha('   Falha cálculo icms: Falha ao recalcular icms dos produtos');
        Result := False;
      end;
      DMServ.TPOrd.Close;
      DMServ.TPOrd.SQL.Clear;
      DMServ.TPOrd.SQL.Add(' select * from itprodord ');
      DMServ.TPOrd.SQL.Add('   left join cst ON itprodord.cod_cst = cst.cod_cst where (itprodord.cod_ordem=:codigo) ');
      DMServ.TPOrd.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMServ.TPOrd.Open;
    end;

    //Seleciona total de itens com substituição tributária
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    if XTipo = 'PEDV' then
    begin
      DMESTOQUE.Alx1.SQL.Add(' select sum(itenspedven.valortotal) as TOTAL, SUM(itenspedven.descnf) as DESNF from  itenspedven ');
      DMESTOQUE.Alx1.SQL.Add('  left join cst on itenspedven.cod_cst = cst.cod_cst ');
      DMESTOQUE.Alx1.SQL.Add('  where (itenspedven.cod_pedven=:Codigo)  and (cst.substituicao=''1'')');
    end;
    if XTipo = 'ORDEM' then
    begin
      DMESTOQUE.Alx1.SQL.Add(' select sum(itprodord.total) as TOTAL, SUM(itprodord.descnf) as DESNF from itprodord ');
      DMESTOQUE.Alx1.SQL.Add(' left join cst on itprodord.cod_cst = cst.cod_cst ');
      DMESTOQUE.Alx1.SQL.Add(' where (itprodord.cod_ordem=:Codigo)  and (cst.substituicao=''1'')')
    end;
    DMESTOQUE.Alx1.ParamByName('CODIGO').AsInteger := XCod_Pedido;
    DMESTOQUE.Alx1.Open;

    if not DMESTOQUE.Alx1.IsEmpty then
    begin
      XVlrBaseIcmsSt := DMESTOQUE.Alx1.FieldByName('TOTAL').AsCurrency -
        DMESTOQUE.Alx1.FieldByName('DESNF').AsCurrency;
    end;
    //INICIA CONTROL PARA PEDIDO DE VENDA
    if XTipo = 'PEDV' then
    begin
      DMSAIDA.TItemPV.First;
      while not DMSAIDA.TItemPV.Eof do
      begin
        DMESTOQUE.Alx1.Close;
        DMESTOQUE.Alx1.SQL.Clear;
        DMESTOQUE.Alx1.SQL.Add('  SELECT CST.SUBSTITUICAO, CST.APROVEITACREDITO, ESTOQUE.MEDIABASEICMST, ESTOQUE.MEDIAVLRICMST, ');
        DMESTOQUE.Alx1.SQL.Add('  ESTOQUE.IPI_VND, ESTOQUE.PMC, ESTOQUE.MVA, ESTOQUE.REDUCBASE, SUBPRODUTO.CLASSIFICACAO, CFOP.NAOGERAST, CFOP.NAOGERAICMSOP ');
        DMESTOQUE.Alx1.SQL.Add('  FROM ITENSPEDVEN ');
        DMESTOQUE.Alx1.SQL.Add('  LEFT JOIN ESTOQUE ON ITENSPEDVEN.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ');
        DMESTOQUE.Alx1.SQL.Add('  LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
        DMESTOQUE.Alx1.SQL.Add('  LEFT JOIN CST ON ITENSPEDVEN.COD_CST = CST.COD_CST ');
        DMESTOQUE.Alx1.SQL.Add('  LEFT JOIN CFOP ON ITENSPEDVEN.CFOP = CFOP.CFOP ');
        DMESTOQUE.Alx1.SQL.Add('  WHERE ITENSPEDVEN.COD_ITENSPEDVEN = :CODIGO ');
        DMESTOQUE.Alx1.ParamByName('CODIGO').AsInteger :=
          {XTabItemProd}DMSAIDA.TItemPV.FieldByName('cod_itenspedven').AsInteger;
        DMESTOQUE.Alx1.SQL.Text;
        DMESTOQUE.Alx1.Open;
        if not DMESTOQUE.Alx1.IsEmpty then
        begin
          DMSAIDA.TItemPV.Edit;
          DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := 0;
          DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := 0;
          DMSAIDA.TItemPV.Post;
          if (DMESTOQUE.Alx1.FieldByName('SUBSTITUICAO').AsString = '1')
            and ((DMESTOQUE.Alx1.FieldByName('NAOGERAST').AsString = '0') or
              (DMESTOQUE.Alx1.FieldByName('NAOGERAST').AsString = '')) then
          begin
            //As funções abaixo chamam funcções especificas para cada tipo de empresa e são implementadas apenas para vendas
            if (XEmpresaInustria = True) then
            begin
              //CalculoIcmsSubstituicaoInsustriasSimples;
              CalculoIcmsSubstituicaoIndustriasSimples(DMSAIDA.TItemPV, XTipo);
            end
            else
            begin
              CalculoIcmsSubstituicaoEmpresaNormal;
            end;
          end
          else
          begin
            //Se item não for de substituição
            //SIMPLES P SIMPLES ITEM DE SUBSTITUIÇÃO
            if ((Fmenu.XTributaEmpresa = 'NORMAL')) and
              (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'ECF') and
              (DMESTOQUE.TCST.FieldByName('ISENTA').AsString <> '1') and
              (DMMACS.TEmpresa.FieldByName('CONTICMS').AsString <> '1')
              and ((DMESTOQUE.Alx1.FieldByName('NAOGERAICMSOP').AsString = '0')
                or (DMESTOQUE.Alx1.FieldByName('NAOGERAICMSOP').AsString = ''))
                then
            begin
              DMSAIDA.TItemPV.Edit;
              DMSAIDA.TItemPV.FieldByName('ALIQICMS').AsCurrency := XAliqIcms;
              //A Parte de Redução de base de calculo abaixo, foi removido, pq estamos reduzindo direto na tela do pedido
              //If DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency > 0 Then
              //    DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency := DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency - (((DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency - DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency) * DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency) / 100)
              //Else
              if DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency = 0 then
                DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency :=
                  DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency -
                  DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency;
              DMSAIDA.TItemPV.FieldByName('VLRICMS').AsCurrency :=
                (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency * XAliqIcms) /
                100;
              DMSAIDA.TItemPV.Post;
            end;
            //Alex 27/06/2014: Se o cst ou csosn permitir aproveitamento de crédito
            {If DMESTOQUE.Alx1.FieldByName('APROVEITACREDITO').AsString='1'
            Then Begin
                DMSAIDA.TItemPV.Edit;
                DMSAIDA.TItemPV.FieldByName('ICMSCREDALIQ').AsCurrency := XAliqIcms;
                DMSAIDA.TItemPV.FieldByName('ICMSCREDVALOR').AsCurrency := ((DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency - DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency) * XAliqIcms) / 100;
                DMSAIDA.TItemPV.Post;
XOperacaoCreditoIcms:=	True;
XAliquotaCreditoIcms:=XAliqIcms ;
                XValorCreditoIcms:=XValorCreditoIcms + DMSAIDA.TItemPV.FieldByName('ICMSCREDVALOR').AsCurrency;
            End;}
          end;
          //Alex 27/06/2014: Se o cst ou csosn permitir aproveitamento de crédito
          if DMESTOQUE.Alx1.FieldByName('APROVEITACREDITO').AsString = '1' then
          begin
            DMSAIDA.TItemPV.Edit;
            DMSAIDA.TItemPV.FieldByName('ICMSCREDALIQ').AsCurrency := XAliqIcms;
            DMSAIDA.TItemPV.FieldByName('ICMSCREDVALOR').AsCurrency :=
              ((DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency -
              DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency) * XAliqIcms) /
              100;
            DMSAIDA.TItemPV.Post;
            XOperacaoCreditoIcms := True;
            XAliquotaCreditoIcms := XAliqIcms;
            XValorCreditoIcms := XValorCreditoIcms +
              DMSAIDA.TItemPV.FieldByName('ICMSCREDVALOR').AsCurrency;
          end;
        end;
        DMSAIDA.TItemPV.Next;
      end;
      DMSAIDA.IBT.CommitRetaining;
    end;
    //INICIA CONTROL PARA PEDIDO DE VENDA
    if XTipo = 'ORDEM' then
    begin
      DMServ.TPOrd.First;
      while not DMServ.TPOrd.Eof do
      begin
        DMESTOQUE.Alx1.Close;
        DMESTOQUE.Alx1.SQL.Clear;
        DMESTOQUE.Alx1.SQL.Add('  SELECT CST.SUBSTITUICAO,  CST.APROVEITACREDITO, ESTOQUE.MEDIABASEICMST, ESTOQUE.MEDIAVLRICMST,  ');
        DMESTOQUE.Alx1.SQL.Add('  ESTOQUE.IPI_VND, ESTOQUE.PMC, ESTOQUE.MVA, ESTOQUE.REDUCBASE, SUBPRODUTO.CLASSIFICACAO, CFOP.NAOGERAST, CFOP.NAOGERAICMSOP  ');
        DMESTOQUE.Alx1.SQL.Add('  FROM ITPRODORD  ');
        DMESTOQUE.Alx1.SQL.Add('  LEFT JOIN ESTOQUE ON ITPRODORD.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE  ');
        DMESTOQUE.Alx1.SQL.Add('  LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO  ');
        DMESTOQUE.Alx1.SQL.Add('  LEFT JOIN CST ON ITPRODORD.COD_CST = CST.COD_CST  ');
        DMESTOQUE.Alx1.SQL.Add('  LEFT JOIN CFOP ON CFOP.CFOP = ITPRODORD.CFOP  ');
        DMESTOQUE.Alx1.SQL.Add('  WHERE ITPRODORD.COD_ITPRODORD = :CODIGO  ');
        DMESTOQUE.Alx1.ParamByName('CODIGO').AsInteger :=
          {XTabItemProd}DMServ.TPOrd.FieldByName('cod_itprodord').AsInteger;
        DMESTOQUE.Alx1.SQL.Text;
        DMESTOQUE.Alx1.Open;

        if not DMESTOQUE.Alx1.IsEmpty then
        begin
          DMServ.TPOrd.Edit;
          DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := 0;
          DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := 0;
          DMServ.TPOrd.Post;
          if (DMESTOQUE.Alx1.FieldByName('SUBSTITUICAO').AsString = '1')
            and ((DMESTOQUE.Alx1.FieldByName('NAOGERAST').AsString = '0') or
              (DMESTOQUE.Alx1.FieldByName('NAOGERAST').AsString = '')) then
          begin
            //SIMPLES P NORMAL
            //Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
            if (XEmpresaInustria = True) or (Fmenu.XTributaEmpresa = 'SIMPLES')
              and (Fmenu.XTributaCliente = '1') then
            begin
              //Calcula somente fora do estado
              if ({XUfOrigem <> XUfDestino} not cbOperacaoInterna.Checked) or
                (XEmpresaInustria = True) then
              begin
                DMServ.TPOrd.Edit;
                if XMvaEstado > 1 then
                  DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency :=
                    (DMServ.TPOrd.FieldByName('TOTAL').AsCurrency -
                    DMServ.TPOrd.FieldByName('descnf').AsCurrency) +
                    (((DMServ.TPOrd.FieldByName('TOTAL').AsCurrency -
                    DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XMvaEstado) /
                    100)
                else
                  DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency :=
                    (DMServ.TPOrd.FieldByName('TOTAL').AsCurrency -
                    DMServ.TPOrd.FieldByName('descnf').AsCurrency);
                DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency :=
                  (DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency *
                  XAliqInternaEstDest) / 100;
                DMServ.TPOrd.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
                if (XCSTInterestadual > 0) and (Fmenu.XTributaEmpresa = 'NORMAL')
                  then
                  DMServ.TPOrd.FieldByName('COD_CST').AsInteger :=
                    XCSTInterestadual;
                DMServ.TPOrd.FieldByName('APLICARST').AsString := '1';

                if (DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency = 0) then
                begin
                  DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := 0;
                  DMServ.TPOrd.FieldByName('APLICARST').AsString := '0';
                end;

                DMServ.TPOrd.Post;
              end;
              //Alex 27/06/2014: Se o cst ou csosn permitir aproveitamento de crédito
              if DMESTOQUE.Alx1.FieldByName('APROVEITACREDITO').AsString = '1'
                then
              begin
                DMServ.TPOrd.Edit;
                DMServ.TPOrd.FieldByName('ICMSCREDALIQ').AsCurrency :=
                  XAliqIcms;
                DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency :=
                  ((DMServ.TPOrd.FieldByName('VALORTOTAL').AsCurrency -
                  DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XAliqIcms) /
                  100;
                if DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency <=
                  DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency then
                  DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency :=
                    DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency -
                    DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency
                else
                  DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := 0;
                DMServ.TPOrd.Post;
                XOperacaoCreditoIcms := True;
                XAliquotaCreditoIcms := XAliqIcms;
                XValorCreditoIcms := XValorCreditoIcms +
                  DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency;
              end;
            end;

            //NORMAL P NORMAL
            // - 14/04/2009: alterado para a mercescan
            //Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
            if (Fmenu.XTributaEmpresa = 'NORMAL') and (Fmenu.XTributaCliente =
              '1') then
            begin
              //Calcula somente fora do estado
              //If XUfOrigem <> XUfDestino
              if not cbOperacaoInterna.Checked then
              begin
                DMServ.TPOrd.Edit;
                DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency :=
                  (DMServ.TPOrd.FieldByName('TOTAL').AsCurrency -
                  DMServ.TPOrd.FieldByName('descnf').AsCurrency) +
                  (((DMServ.TPOrd.FieldByName('TOTAL').AsCurrency -
                  DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XMvaEstado) /
                  100);
                DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency :=
                  ((DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency *
                  XAlqIntDestinatario) / 100) -
                  DMServ.TPOrd.FieldByName('vlricms').AsCurrency;
                DMServ.TPOrd.FieldByName('APLICARST').AsString := '1';
                DMServ.TPOrd.Post;
              end;
            end;
            //If XUfOrigem = XUfDestino
            if cbOperacaoInterna.Checked then
            begin
              if
                CalcMediaSubstituicaoTributaria(DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsInteger) = True then
              begin
                DMServ.TPOrd.Edit;
                DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency :=
                  XMediaBaseST * DMServ.TPOrd.FieldByName('qtd').AsCurrency;
                DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency :=
                  XMediaValorST * DMServ.TPOrd.FieldByName('qtd').AsCurrency;
                DMServ.TPOrd.FieldByName('APLICARST').AsString := '0';
                DMServ.TPOrd.Post;
              end
              else
              begin
                DMServ.TPOrd.Edit;
                DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := 0;
                DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := 0;
                DMServ.TPOrd.FieldByName('APLICARST').AsString := '0';
                DMServ.TPOrd.Post;
              end;
            end;
            //Quando p produto for de substituição tributária sua base de icms e seu valor de icms devem ser zerados
            DMServ.TPOrd.Edit;
            DMServ.TPOrd.FieldByName('ALIQICMS').AsCurrency := 0;
            DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency := 0;
            DMServ.TPOrd.FieldByName('VLRICMS').AsCurrency := 0;
            DMServ.TPOrd.Post;
          end
          else
          begin
            //Se item não for de substituição
            //SIMPLES P SIMPLES ITEM DE SUBSTITUIÇÃO
            if (Fmenu.XTributaEmpresa = 'NORMAL')
              and ((DMESTOQUE.Alx1.FieldByName('NAOGERAICMSOP').AsString = '0')
                or (DMESTOQUE.Alx1.FieldByName('NAOGERAICMSOP').AsString = ''))
                then
            begin
              DMServ.TPOrd.Edit;
              DMServ.TPOrd.FieldByName('ALIQICMS').AsCurrency := XAliqIcms;
              DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency :=
                DMServ.TPOrd.FieldByName('TOTAL').AsCurrency -
                DMServ.TPOrd.FieldByName('descnf').AsCurrency;
              DMServ.TPOrd.FieldByName('VLRICMS').AsCurrency :=
                ((DMServ.TPOrd.FieldByName('TOTAL').AsCurrency -
                DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XAliqIcms) / 100;
              DMServ.TPOrd.Post;
            end;
            //Alex 27/06/2014: Se o cst ou csosn permitir aproveitamento de crédito
            if DMESTOQUE.Alx1.FieldByName('APROVEITACREDITO').AsString = '1'
              then
            begin
              DMServ.TPOrd.Edit;
              DMServ.TPOrd.FieldByName('ICMSCREDALIQ').AsCurrency := XAliqIcms;
              DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency :=
                ((DMServ.TPOrd.FieldByName('TOTAL').AsCurrency -
                DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XAliqIcms) / 100;
              DMServ.TPOrd.Post;
              XOperacaoCreditoIcms := True;
              XAliquotaCreditoIcms := XAliqIcms;
              XValorCreditoIcms := XValorCreditoIcms +
                DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency;
            end;
          end;
        end;
        DMServ.TPOrd.Next;
      end;
      DMServ.IBT.CommitRetaining;
    end;
  except
    RegistraFalha('   Item de Produto: Falha ao calcular impostos para algum item de Produto da NF');
    Result := False;
  end;
end;

//Função utilizada para Calcular Impostos da NF

function TFPadraoFiscal.CalcImpostosNF: Boolean;
begin
  //Inicializa Variaveis
  XVlrBaseIcmsOp := 0;
  XVlrIcmsOp := 0;
  XvlrIpi := 0;
  //Para pedido de compra apenas somamos os valores do itens
  if XTipo = 'PEDC' then
  begin
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add(' select sum(itenspedc.baseicms) as baseicms, sum(itenspedc.vlricms) as vlricms, sum(itenspedc.vlripi) as vlripi from itenspedc where itenspedc.cod_pedcompra=:codigo ');
    DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := XCod_Pedido;
    DMESTOQUE.Alx.Open;
    if not DMESTOQUE.Alx.IsEmpty then
    begin
      //If DMMACS.TEmpresa.FieldByName('TIPOEMPRESANF').AsString='SIMPLES' Then
      XVlrBaseIcmsOp := DMESTOQUE.Alx.FieldByName('baseicms').AsCurrency;
      {Else
       XVlrBaseIcmsOp := DMESTOQUE.Alx.FieldByName('baseicms').AsCurrency + EdVlrFrete.ValueNumeric + EdVlrSeguro.ValueNumeric;}
      if XVlrBaseIcmsOp < 0 then
        XVlrBaseIcmsOp := 0;
      XVlrIcmsOp := DMESTOQUE.Alx.FieldByName('vlricms').AsCurrency;
      XvlrIpi := DMESTOQUE.Alx.FieldByName('vlripi').AsCurrency;
      EdBaseICMS.ValueNumeric := XVlrBaseIcmsOp;
      EdVlrIcms.ValueNumeric := XVlrIcmsOp;
      EdVlrIpi.ValueNumeric := XvlrIpi;
    end;
  end;
  //Calculo para ordem de serviços
  if XTipo = 'ORDEM' then
  begin
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('  select sum(itprodord.baseicms) as baseicms, sum(itprodord.vlricms) as vlricms, sum(itprodord.vlripi) as vlripi, sum(itprodord.baseicmssubs) as BaseST, sum(itprodord.vlricmssubs) as ValorST from itprodord where itprodord.cod_ordem=:codigo ');
    DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := XCod_Pedido;
    DMESTOQUE.Alx.Open;
    if not DMESTOQUE.Alx.IsEmpty then
    begin
      XVlrBaseIcmsSt := DMESTOQUE.Alx.FieldByName('BaseST').AsCurrency;
      XVlrIcmsSt := DMESTOQUE.Alx.FieldByName('ValorST').AsCurrency;
      XVlrBaseIcmsOp := DMESTOQUE.Alx.FieldByName('baseicms').AsCurrency;
        //+ EdVlrFrete.ValueNumeric + EdVlrSeguro.ValueNumeric;
      XVlrIcmsOp := DMESTOQUE.Alx.FieldByName('vlricms').AsCurrency;
      XvlrIpi := DMESTOQUE.Alx.FieldByName('vlripi').AsCurrency;
      EdBaseICMS.ValueNumeric := XVlrBaseIcmsOp;
      EdVlrIcms.ValueNumeric := XVlrIcmsOp;
      EdVlrIpi.ValueNumeric := XvlrIpi;
      //If XUfOrigem <> XUfDestino
      if not cbOperacaoInterna.Checked then
      begin
        EdVlrIcmsST.ValueNumeric := XVlrIcmsSt;
        EdBaseICMSST.ValueNumeric := XVlrBaseIcmsSt;
      end
      else
      begin
        EdVlrIcmsST.Text := '';
        EdBaseICMSST.Text := '';
      end;
    end;
    if (DMMACS.TLoja.FieldByName('SERVNFE').AsString <> '1') or
      (DMMACS.TLoja.FieldByName('SERVNFE').AsString = '') then
    begin
      if XTotalServComDesc <> 0 then
      begin
        EdVlrIss.ValueNumeric := DMServ.TOrd.FieldByName('TOTISS').AsCurrency;
        EdVlrServicos.ValueNumeric :=
          DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;
        if DMServ.TOrd.FieldByName('RT_ISS').AsString = '1' then
          cbRetIss.Text := 'SIM'
        else
          cbRetIss.Text := 'NÃO';
        // recalcula valor do ISS
        CalcISSServico;
      end;
    end;
  end;
  //Calculo para pedido de venda
  if XTipo = 'PEDV' then
  begin
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('  select sum(itenspedven.baseicms) as baseicms, sum(itenspedven.vlricms) as vlricms, sum(itenspedven.vlripi) as vlripi, sum(itenspedven.baseicmssubs) as BaseST, sum(itenspedven.vlricmssubs) as ValorST, sum(itenspedven.descnf) as DESCNF ');
    DMESTOQUE.Alx.SQL.Add('          from itenspedven where itenspedven.cod_pedven=:codigo');
    DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := XCod_Pedido;
    DMESTOQUE.Alx.Open;
    if not DMESTOQUE.Alx.IsEmpty then
    begin
      XVlrBaseIcmsSt := DMESTOQUE.Alx.FieldByName('BaseST').AsCurrency;
      XVlrIcmsSt := DMESTOQUE.Alx.FieldByName('ValorST').AsCurrency;
      XVlrBaseIcmsOp := DMESTOQUE.Alx.FieldByName('baseicms').AsCurrency;
        //+ EdVlrFrete.ValueNumeric + EdVlrSeguro.ValueNumeric;
      XVlrIcmsOp := DMESTOQUE.Alx.FieldByName('vlricms').AsCurrency;
      XvlrIpi := DMESTOQUE.Alx.FieldByName('vlripi').AsCurrency;
      EdBaseICMS.ValueNumeric := XVlrBaseIcmsOp;
      EdVlrIcms.ValueNumeric := XVlrIcmsOp;
      EdVlrIpi.ValueNumeric := XvlrIpi;

      //Paulo 26/10/2010 - 158: Se o estado for isento ele zera os valores substituidos
      if XEstadoIsentoST = true then
      begin
        XVlrBaseIcmsSt := 0;
        XVlrIcmsSt := 0;
      end;

      if (fmenu.XSimplesRemessa = False) and (fmenu.XRemessaGarantia = False)
        and (FMenu.XDevolucao = False) and (FMenu.XOutrosFisc = False)
        {//And (FMenu.XComplementacao = False)} then
      begin
        if ({XUfOrigem <> XUfDestino} not cbOperacaoInterna.Checked) or
          (XEmpresaInustria = True) then
        begin
          EdVlrIcmsST.ValueNumeric := XVlrIcmsSt;
          EdBaseICMSST.ValueNumeric := XVlrBaseIcmsSt;
        end
        else
        begin
          EdVlrIcmsST.Text := '';
          EdBaseICMSST.Text := '';
        end;
      end;
    end;
    if XTotalServComDesc <> 0 then
    begin
      EdVlrIss.ValueNumeric := (xValorTotalServico * XAliqIss) / 100;
      if cbRetIss.Text = 'SIM' then
        EdVlrServicos.ValueNumeric := xValorTotalServico - EdVlrIss.ValueNumeric
      else
        EdVlrServicos.ValueNumeric := xValorTotalServico;
    end;
    //Verifica Caso Especial de Empresa Normal para Fora do estado
    if ((Fmenu.XTributaEmpresa = 'NORMAL') or (XEmpresaInustria = True) and
      (DMMACS.TEmpresa.FieldByName('CONTICMS').AsString <> '1')) then
    begin
      //Calcula somente fora do estado
       //If (XUfOrigem <> XUfDestino)
      if not cbOperacaoInterna.Checked then
      begin
        //EdBaseICMS.ValueNumeric := EdTotalProdutos.ValueNumeric;
        //EdVlrIcms.ValueNumeric := ((EdTotalProdutos.ValueNumeric * XAliqExtDestinatario) / 100);
        EdBaseICMS.ValueNumeric := XVlrBaseIcmsOp;
        EdVlrIcms.ValueNumeric := XVlrIcmsOp;
      end;
    end;
  end;

  if XTipo <> 'PEDC' then
  begin
    if (fmenu.XSimplesRemessa = False) and (fmenu.XRemessaGarantia = False) and
      (FMenu.XDevolucao = False) and (FMenu.XOutrosFisc = False) then
    begin
      //VERIFICA AS CONDIÇÕES DE CADASTRO DA EMPRESA... DEPENDENDO DO ENQUADRAMENTO ELAS NÃO TOTALIZARAM NO CORPO DA NOTA ICMS OU ICMS ST
      if XEmpresaTributaST = False then
      begin
        {XVlrBaseIcmsSt:=0; //este trecho foi comentado pq eh necessário haver a base e valor mesmo que seja no sistema de rateio pela compra
        XVlrIcmsSt:=0;
        EdVlrIcmsST.ValueNumeric:=0;
        EdBaseICMSST.ValueNumeric:=0;}
      end;
      //SE A EMPRESA FOR OPTANTE DO SIMPLES NÃO IMPRIME BASE NEM VALOR DE ICMS
      if (FMenu.XTributaEmpresa = 'SIMPLES') and (XEmpresaInustria = False) then
      begin
        XVlrBaseIcmsOp := 0;
        XVlrIcmsOp := 0;
        EdBaseICMS.ValueNumeric := 0;
        EdVlrIcms.ValueNumeric := 0;
      end;
    end
    else
    begin
      EdVlrIcms.ValueNumeric := XVlrIcmsOp;
      EdVlrIcmsST.ValueNumeric := XVlrIcmsSt;
      EdBaseICMS.ValueNumeric := XVlrBaseIcmsOp;
      EdBaseICMSST.ValueNumeric := XVlrBaseIcmsSt;
    end;
  end;

  if (fmenu.XSimplesRemessa) or (fmenu.XRemessaGarantia) {or (FMenu.XDevolucao)}
    then
  begin
    EdVlrIcms.ValueNumeric := 0;
    EdVlrIcmsST.ValueNumeric := 0;
    EdBaseICMS.ValueNumeric := 0;
    EdBaseICMSST.ValueNumeric := 0;
  end;
end;

//Função utilizada para limpar os valores de edits de impostos

procedure TFPadraoFiscal.LimpaValoresImpostos;
begin
  EdBaseICMS.ValueNumeric := 0;
  EdVlrIcms.ValueNumeric := 0;
  EdBaseICMSST.ValueNumeric := 0;
  EdVlrIcmsST.ValueNumeric := 0;
  EdVlrFrete.ValueNumeric := 0;
  EdVlrSeguro.ValueNumeric := 0;
  EdOutrasDespesas.ValueNumeric := 0;
  EdVlrIpi.ValueNumeric := 0;
  EdTotalProdutos.ValueNumeric := 0;
  EdDesconto.ValueNumeric := 0;
  EdTotalNotaFiscal.ValueNumeric := 0;
  EdVlrIss.ValueNumeric := 0;
  EdVlrServicos.ValueNumeric := 0;
  edPISRetido.ValueNumeric := 0;
  edCofinsRetido.ValueNumeric := 0;
  edCsllRetido.ValueNumeric := 0;
  edBCRetido.ValueNumeric := 0;
  edIrrfRetido.ValueNumeric := 0;
  edBCPrevidenciaRetido.ValueNumeric := 0;
  edValorPrevidenciaRetido.ValueNumeric := 0;
end;
//Função utilizada para limpar os labels e edits de transportadora

procedure TFPadraoFiscal.LimpaLabelTransp;
begin
  LTransportadora.Caption := '';
  LTranspCpfCnpj.Caption := '';
  LTranspEndereco.Caption := '';
  LTranspMunicipio.Caption := '';
  EdFreteConta.Text := '1';
  EdPlacaVeiculo.Text := '';
  EdUFVeiculo.Text := '';

  EdQuantidadeVeiculo.ValueNumeric := 0;
  EdEspecieVeiculo.Text := '';
  EdMarcaVeiculo.Text := '';
  EdNumVeiculo.Text := '';
  EdPesoBrutoVeiculo.ValueNumeric := 0;
  EdPesoLiquidoVeiculo.ValueNumeric := 0;
end;

// Função para validar a numeração da NF

function TFPadraoFiscal.ValidaNumNf: boolean;
begin
  //Valida Numero fiscal para não ser em branco
  if (EdNumeroFiscal.ValueInteger = 0) and
    (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'ECF') then
  begin
    XValidado := False;
    RegistraFalha('   Número Fiscal: É necessário informar o numero fiscal para prosseguir');
  end;

  if XTipo = 'PEDC' then
  begin
    DMMACS.TALX.close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('  Select * from docfis ');
    DMMACS.TALX.SQL.Add('  left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp ');
    DMMACS.TALX.SQL.Add('  where (docfis.cod_pedido<>:Codigo) and (docfis.numdocfis=:NUMFISCAL) and (pedcompra.cod_fornec=:FORNECEDOR) ');
    DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
    DMMACS.TALX.ParamByName('FORNECEDOR').AsInteger := XCod_Pessoa;
    DMMACS.TALX.ParamByName('NUMFISCAL').AsString := EdNumeroFiscal.Text;
    DMMACS.TALX.Open;
    if not DMMACS.TALX.IsEmpty then
    begin
      XValidado := False;
      RegistraFalha('   Número Fiscal: Existe outra nota fiscal para este mesmo fornecedor com esta numeração. Clique em Atualizar e após substitua a numeração por um número válido');
    end;
  end;
  if ((XTipo = 'PEDV') or (XTipo = 'ORDEM') or (FMenu.XNotaEntrada = True)) and
    ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or
    (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') or
    (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') or
    (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')) then
  begin
    //Saida
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') then
      DMMACS.TALX.SQL.Add(' select docfissaida.numdocfisint as numero from docfissaida where (docfissaida.numdocfisint=:numero) and (docfissaida.tipodocfis=''2'')');
    if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
      DMMACS.TALX.SQL.Add(' select docfissaida.numdocfisint as numero from docfissaida where (docfissaida.numdocfisint=:numero) and (docfissaida.tipodocfis=''3'') and ((docfissaida.nfestatus=''1'') or (docfissaida.nfestatus=''3'')  or (docfissaida.nfestatus=''4''))');
    DMMACS.TALX.ParamByName('numero').AsInteger := EdNumeroFiscal.ValueInteger -
      1;
    DMMACS.TALX.Open;
    if DMMACS.TALX.IsEmpty then
    begin
      //ORDEM DE SERVIÇOS
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') then
        DMMACS.TALX.SQL.Add(' select docfisord.numdocfisint as numero from docfisord where (docfisord.numdocfisint=:numero)  and (docfisord.tipodocfis=''2'')');
      if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
        or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
        or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
        DMMACS.TALX.SQL.Add(' select docfisord.numdocfisint as numero from docfisord where (docfisord.numdocfisint=:numero) and (docfisord.tipodocfis=''3'')');
      DMMACS.TALX.ParamByName('numero').AsInteger := EdNumeroFiscal.ValueInteger
        - 1;
      DMMACS.TALX.Open;
      if DMMACS.TALX.IsEmpty then
      begin
        //PEDIDO DE COMPRA
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') then
          DMMACS.TALX.SQL.Add(' select docfis.numdocfisCint as numero from docfis where docfis.numdocfisCint=:numero');
        if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
            then
          DMMACS.TALX.SQL.Add(' select docfis.numdocfisCint as numero from docfis where (docfis.numdocfisCint=:numero) and (docfis.tipodocfis=''1'') and ((docfis.nfestatus=''1'') or (docfis.nfestatus=''3'')  or (docfis.nfestatus=''4'')) ');
        DMMACS.TALX.ParamByName('numero').AsInteger :=
          EdNumeroFiscal.ValueInteger - 1;
        DMMACS.TALX.Open;
        if (DMMACS.TALX.IsEmpty) and (EdNumeroFiscal.ValueInteger <> 1) then
          RegistraFalha('Falha na sequência de numeração das Notas Fiscais. o número '
            + IntToStr(EdNumeroFiscal.ValueInteger - 1) +
            ' não foi impresso/enviado');

      end;
    end;
  end;
end;

// Função para validar dados fiscais da empresa

function TFPadraoFiscal.ValidaDadosEmpresa: boolean;
begin
  Result := True;
  DMMACS.Transaction.CommitRetaining;
  //FILTRA EMPRESA PARA INICIALIZAR VALORES, EM NENHUM MOMENTO MAIS DEVE SER FILTRADA A LOJA DENTRO DO FISCAL
  if FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA',
    FMenu.LCODEMPRESA.Caption, '') = False then
  begin
    RegistraFalha('  Empresa não cadastrada no sistema');
    Result := False;
    Exit;
  end;
  //FILTRA LOJA PARA INICIALIZAR VALORES, EM NENHUM MOMENTO MAIS DEVE SER FILTRADA A LOJA DENTRO DO FISCAL
  if FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')
    = False then
  begin
    Result := False;
    RegistraFalha('  Loja não cadastrada no sistema');
    Exit;
  end;
  //VERIFICA O TIPO DO ENQUADRAMENTO DA EMPRESA
  if DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString = '' then
  begin
    Result := false;
    RegistraFalha('  Empresa: Tipo da empresa não cadastrado');
  end
  else
  begin
    //VERIFICA SE A EMPRESA CADASTRADA É OPTANDE DO SIMPLES
    if DMMACS.TEmpresa.FieldByName('TIPOEMPRESANF').AsString = 'SIMPLES' then
      Fmenu.XTributaEmpresa := 'SIMPLES'
    else
      Fmenu.XTributaEmpresa := 'NORMAL';

    //VERIFICA SE A EMPRESA calcula substituição tributária
    if DMMACS.TEmpresa.FieldByName('NCI').AsString = '1' then
      XEmpresaTributaST := True
    else
      XEmpresaTributaST := False;

    // - 30/03/2009: se empresa for industria
    if DMMACS.TEmpresa.FieldByName('INDUSTRIA').AsString = '1' then
      XEmitIndustria := True
    else
      XEmitIndustria := False;
  end;
  //verifica se a empresa esta com o CRT cadastrado
  if DMMACS.TEmpresa.FieldByName('CRT').AsString = '' then
  begin
    Result := false;
    RegistraFalha('  Empresa: CRT não cadastrado');
  end;
  //verifica se a empresa esta com o Valor total aproximado dos tributos devidamente preenchidos
  if DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency = 0 then
  begin
    Result := false;
    RegistraFalha('  Empresa: Valor Total Aproximado das Tributações não cadastrado');
  end;
    If DMMACS.TEmpresa.FieldByName('RETEM_IMPOSTOS').AsString = 'S'
    Then Begin
       xEmpresaRetemImpostos  := True;

       xAliqRetemPis       := DMMACS.TEmpresa.FieldByName('ALIQ_RETEM_PIS').AsCurrency;
       xAliqRetemCofins    := DMMACS.TEmpresa.FieldByName('ALIQ_RETEM_COFINS').AsCurrency;
       xAliqRetemIRRF      := DMMACS.TEmpresa.FieldByName('ALIQ_RETEM_IRRF').AsCurrency;
       xAliqRetemCsll      := DMMACS.TEmpresa.FieldByName('ALIQ_RETEM_CSLL').AsCurrency;
    End
    Else Begin
       xEmpresaRetemImpostos := False;
    End;  
end;

//Função para Escrever os CFOPS usados na NF

function TFPadraoFiscal.EscreveCfops: Boolean;
begin
  //Inicializa Valores de CFOP em branco que significa que não foi encontrado
  Result := True;
  XCFOP1 := '';
  XCFOP2 := '';
  XCFOP3 := '';
  Lcfop.Caption := '';
  LNatOp.Caption := '';

  //Verificações apenas para pedido de venda e ordens de serviço

  if (XTipo = 'PEDV') or (XTipo = 'ORDEM') then
  begin
    if FMenu.TIPOAUX = 'ECF' then
    begin
      XCFOP1 := '5929'; //Cfop para reimpressão de ecf
      LNatOp.Caption := 'Venda com Cupom Fiscal';
    end
    else
    begin
      //Verificação para Cfop de Operação Própria
      if XCFOP_OP = True then
      begin
        //If XUfOrigem <> XUfDestino Then
        if not cbOperacaoInterna.Checked then
          XCFOP1 := XCFOPEXTERNO
        else
          XCFOP1 := XCFOPINTERNO;
      end;
      //Verificação para Cfop de Subst. Tributária
      if XCFOP_ST = True then
      begin
        //If XUfOrigem <> XUfDestino Then
        if not cbOperacaoInterna.Checked then
          XCFOP2 := XCFOPEXPERTOCST
        else
          XCFOP2 := XCFOPINTERNOCST;
      end;
      //Verificação para Cfop de Serviços
      if XCFOP_SERV = True then
      begin
        //If XUfOrigem <> XUfDestino Then
        if not cbOperacaoInterna.Checked then
          XCFOP3 := XCfopExtServ
        else
          XCFOP3 := XCfopIntServ;
      end;

      if XCFOP_PERSONALIZADO then
      begin
        XCFOP3 := XCFOPPERSONALIZADO
      end;
    end;
  end;
  //Verificações apenas para pedido de compra
  if (XTipo = 'PEDC') then
  begin
    //Verificação para Cfop de Operação Própria
    if XCFOP_OP = True then
    begin
      //If XUfOrigem <> XUfDestino Then
      if not cbOperacaoInterna.Checked then
        XCFOP1 := XCFOPEXTPC
      else
        XCFOP1 := XCFOPINTPC;
    end;
    //Verificação para Cfop de  de Subst. Tributária
    if XCFOP_ST = True then
    begin
      //If XUfOrigem <> XUfDestino Then
      if not cbOperacaoInterna.Checked then
        XCFOP2 := XCFOPEXTSTPC
      else
        XCFOP2 := XCFOPINTSTPC;
    end;
    //Verifica para entradas de devolução com nota fiscal propria
  end;
  //Escreve Cfops Verificadas, manter nesta ordem para garantir que a prioridade de impressão seja para venda com substituição tributaria, venda normal e por ultimo serviços
  if XCFOP3 <> '' then
  begin
    LCfop.Caption := XCFOP3;
    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP3, '') = True then
      LNatOp.Caption := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
  end;
  if XCFOP1 <> '' then
  begin
    if (XCFOP3 <> '') then
      LCfop.Caption := XCFOP1 + '/' + LCfop.Caption
    else
      LCfop.Caption := XCFOP1;

    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP1, '') = True then
      LNatOp.Caption := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
  end;
  if XCFOP2 <> '' then
  begin
    if (XCFOP3 <> '') or (XCFOP3 <> '') then
      LCfop.Caption := XCFOP2 + '/' + LCfop.Caption
    else
      LCfop.Caption := XCFOP2;

    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP2, '') = True then
      LNatOp.Caption := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
  end;
  if (XCFOP1 <> '') and (XCFOP2 <> '') and (XCFOP3 = '') then
  begin
    LCfop.Caption := XCFOP2 + '/' + XCFOP1;
  end;

  //Valida se informações foram preenchidas
  if Lcfop.Caption = '' then
  begin
    RegistraFalha('   CFOP: Cfop não inserida a NF, ocorreu falha ao validar cfops necessárias, verifique as configurações em loja para CFOP');
    Result := False;
  end;

  if LNatOp.Caption = '' then
  begin
    RegistraFalha('   CFOP: Natureza de operação não registrada, possivel problema esteja no cadastro de CFOP. Verifique no cadastro se o CFOP informado possui descrição');
    Result := False;
  end;
  if FMenu.TIPOAUX <> 'ECF' then
  begin
    //Apos termos as cfops selecionadas iremos buscar o codigo chave primaria de cada uma
    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP1, '') = True then
      XCod_Cfop1 := DMESTOQUE.TCfop.FieldByName('COD_CFOP').AsInteger
    else
      XCod_Cfop1 := -1;
    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP2, '') = True then
      XCod_Cfop2 := DMESTOQUE.TCfop.FieldByName('COD_CFOP').AsInteger
    else
      XCod_Cfop2 := -1;
    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP3, '') = True then
      XCod_Cfop3 := DMESTOQUE.TCfop.FieldByName('COD_CFOP').AsInteger
    else
      XCod_Cfop3 := -1;

    //Verifica se não foi encontrado codigo de chave primaria para cfop informado na tela
    if not (FMenu.XOutrosFisc = true) then
      //Paulo 19/07/2010:para tipo de operação outros
      if ((XCFOP1 <> '') and (XCod_Cfop1 = -1)) or ((XCFOP2 <> '') and
        (XCod_Cfop2 = -1)) or ((XCFOP3 <> '') and (XCod_Cfop3 = -1)) then
      begin
        Result := False;
        RegistraFalha('   CFOP: Não foi localizado em banco de dados cfop correspondente. Reinicie o aplicativo');
      end;
  end;
end;

//Função Utilizada para registrar no memo de falhas os erros e falhas na validação

function TFPadraoFiscal.RegistraFalha(Texto: string): Boolean;
begin
  Result := True;
  try
    PFalha.Visible := True;
    PFalha.BringToFront;
    EdErro.Visible := True;
    ShErro.Visible := True;
    EdErro.Text :=
      'Falha Crítica na validação. Nota Fiscal inválida. [Para detalhes clique aqui...]';
    MErros.Lines.Add(Texto);
  except
    Result := False;
  end;
end;

//Função para verificar a configuração dos cfops em loja para produtos
function TFPadraoFiscal.VerificaCfopProdutoLoja: Boolean;
begin
  Result := True;
  //Paulo 21/07/2010: Somente para outros
  XCFOPOUTROS1 := DMEstoque.TCFOP.fieldByName('CFOP').AsString;

  //Paulo 01/12/2011: Verifica se a loja está configurada para cfop de entrada de emissão própria
  if (FMenu.XOutrosEnt = True) then
  begin
    //Edmar - 08/05/2015 - Se for outras entradas e uma devolução, busca o CFOP de devolução de venda
    if FMenu.XDevolucao then
    begin
      if (DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsInteger <> 0) or
        (DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsInteger <> 0) then
      begin
        //if XUfOrigem <> XUfDestino Then
        if not cbOperacaoInterna.Checked then
        begin
          FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsString, '');
          XCFOPOUTROS1 := DMESTOQUE.Alx.FieldByName('CFOP').AsString;
        end
        else
        begin
          FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsString, '');
          XCFOPOUTROS1 := DMESTOQUE.Alx.FieldByName('CFOP').AsString;
        end;
      end;
    end
    else
    begin
      if FMenu.XOutrosEntPropria then
      begin
        if (DMMACS.TLoja.FieldByName('CFOPINTOUTEMISSAOPROP').AsInteger <> 0) or
          (DMMACS.TLoja.FieldByName('CFOPEXTOUTEMISSAOPROP').AsInteger <> 0) then
        begin
          //if XUfOrigem <> XUfDestino Then
          if not cbOperacaoInterna.Checked then
          begin
            FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP',
              DMMACS.TLoja.FieldByName('CFOPEXTOUTEMISSAOPROP').AsString, '');
            XCFOPOUTROS1 := DMESTOQUE.Alx.FieldByName('CFOP').AsString;
          end
          else
          begin
            FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP',
              DMMACS.TLoja.FieldByName('CFOPINTOUTEMISSAOPROP').AsString, '');
            XCFOPOUTROS1 := DMESTOQUE.Alx.FieldByName('CFOP').AsString;
          end;
        end;
      end
      else
      begin
        if (DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsInteger <> 0) or
          (DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsInteger <> 0) then
        begin
          //if XUfOrigem <> XUfDestino Then
          if not cbOperacaoInterna.Checked then
          begin
            FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP',
              DMMACS.TLoja.FieldByName('EMISSAOPROPFORA').AsString, '');
            XCFOPOUTROS1 := DMESTOQUE.Alx.FieldByName('CFOP').AsString;
          end
          else
          begin
            FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP',
              DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsString, '');
            XCFOPOUTROS1 := DMESTOQUE.Alx.FieldByName('CFOP').AsString;
          end;
        end;
      end;
    end;
  end;

  try
    //ENTRADAS
    if (FMenu.XOutrosEnt = False) then
    begin
      //Entrada: Interno S.T.
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('CFOPINTSTPC').AsString, '') = False then
      begin
        RegistraFalha('  Loja não configurada para CFOP interno de Entradas com Substituição Tributária');
        Result := False;
      end
      else
      begin
        XCFOPINTSTPC := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
      end;
      //Entrada: Interno Operação Propria
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('CFOPINTPC').AsString, '') = False then
      begin
        RegistraFalha('  Loja não configurada para CFOP interno de Entradas com Icms de Operação Própria');
        Result := False;
      end
      else
      begin
        XCFOPINTPC := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
      end;

      //Entradas: Externo S.T.
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('CFOPEXTSTPC').AsString, '') = False then
      begin
        RegistraFalha('  Loja não configurada para CFOP Externo de Entradas com Substituição Tributária');
        Result := False;
      end
      else
      begin
        XCFOPEXTSTPC := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
      end;
      //Entradas: Externo O.P.
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('CFOPEXTPC').AsString, '') = False then
      begin
        RegistraFalha('  Loja não configurada para CFOP Externo de Entradas com Substituição Tributária');
        Result := False;
      end
      else
      begin
        XCFOPEXTPC := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
      end;

      //Entradas: Produtos de consumo próprio
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('CFOPMATCONSUMO').AsString, '') = False then
      begin
        RegistraFalha('  Loja não configurada para CFOP de entrada de materiais de uso e consumo ');
        Result := False;
      end
      else
      begin
        XCFOPMATCONSUMO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
      end;

      //Entradas: Produtos de consumo próprio Externos
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('CFOPMATCONSUMOEXT').AsString, '') = False then
      begin
        RegistraFalha('  Loja não configurada para CFOP de entrada de materiais de uso e consumo de fora do estado');
        Result := False;
      end
      else
      begin
        XCFOPMATCONSUMOEXT := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
      end;

      //Entradas: Produtos de fretes interno
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('CFOPFRETEINT').AsString, '') = False then
      begin
        RegistraFalha('  Loja não configurada para CFOP de entrada de frete de uso e consumo de dentro do estado');
        Result := False;
      end
      else
      begin
        XCFOPFRETEINT := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
      end;

      //Entradas: Produtos de fretes Externo
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('CFOPFRETEEXT').AsString, '') = False then
      begin
        RegistraFalha('  Loja não configurada para CFOP de entrada de frete de uso e consumo de fora do estado');
        Result := False;
      end
      else
      begin
        XCFOPFRETEEXT := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
      end;
      //Entradas de devolução de venda com uso de nota de entrada própria para dentro do estado
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsString, '') = False
        then
      begin
        RegistraFalha('  Loja não configurada para CFOP de entrada de devolução de venda de mercadoria para dentro do estado');
        Result := False;
      end
      else
      begin
        XCFOPINTDEVPROPRIA := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
      end;
      //Entradas de devolução de venda com uso de nota de entrada própria para fora do estado
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsString, '') = False then
      begin
        RegistraFalha('  Loja não configurada para CFOP de entrada de devolução de venda de mercadoria para fora do estado');
        Result := False;
      end
      else
      begin
        XCFOPEXTDEVPROPRIA := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
      end;
    end;

    //Paulo 20/07/2010: para outras entradas
    if (FMenu.XOutrosEnt) then
    begin
      //Entradas: Interno
      XCFOPINTPC := XCFOPOUTROS1;
      //Entradas: Externo
      XCFOPEXTPC := XCFOPOUTROS1;
      //Entradas: st interno
      XCFOPINTSTPC := XCFOPOUTROS1;
      //Entradas: st externo
      XCFOPEXTSTPC := XCFOPOUTROS1;
      //Entradas: consumo interno
      XCFOPMATCONSUMO := XCFOPOUTROS1;
      //Entradas: Consumo Externo
      XCFOPMATCONSUMOEXT := XCFOPOUTROS1;
      //Entradas: Produtos de fretes interno
      XCFOPFRETEINT := XCFOPOUTROS1;
    end;

    if FMenu.TIPOAUX = 'ECF' then
    begin
      XCFOPINTERNO := '5929';
      XCFOPEXTERNO := '5929';
    end
    else
    begin
      //SAIDAS
      if (FMenu.XRemessaGarantia = False) and (FMenu.XDevolucao = False) and
        (FMenu.XSimplesRemessa = False)
        and (FMenu.XOutrosFisc = False) and (FMenu.XNotaEntrada = False) and
          (FMenu.XComplementacao = False)
        and (FMenu.XNfceReferenciada = False) then
      begin
        //Saídas: Interno S.T.
        if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
          DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsString, '') = False then
        begin
          RegistraFalha('  Loja não configurada para CFOP interno de Entradas com Substituição Tributária');
          Result := False;
        end
        else
        begin
          XCFOPINTERNOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
        end;
        //Saidas: Interno Operação Propria
        if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
          DMMACS.TLoja.FieldByName('CFOPINTERNO').AsString, '') = False then
        begin
          RegistraFalha('  Loja não configurada para CFOP interno de Entradas com Icms de Operação Própria');
          Result := False;
        end
        else
        begin
          XCFOPINTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
        end;
        //Saidas: Externo S.T.
        if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
          DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsString, '') = False then
        begin
          RegistraFalha('  Loja não configurada para CFOP Externo de Entradas com Substituição Tributária');
          Result := False;
        end
        else
        begin
          XCFOPEXPERTOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
        end;

        //Saidas Externo OP
        if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
          DMMACS.TLoja.FieldByName('CFOPEXTERNO').AsString, '') = False then
        begin
          RegistraFalha('  Loja não configurada para CFOP Externo de Entradas com Substituição Tributária');
          Result := False;
        end
        else
        begin
          XCFOPEXTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
        end;
      end
      else
      begin
        //OUTRAS SAIDAS
        //DEVOLUÇÕES
        if FMenu.XDevolucao = True then
        begin
          //Saídas: Interno S.T.
          if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('CFOPINTDEVOLUCST').AsString, '') = False
            then
          begin
            RegistraFalha('  Loja não configurada para CFOP interno de Devolução com Substituição Tributária');
            Result := False;
          end
          else
          begin
            XCFOPINTERNOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          end;
          //Saidas: Interno Operação Propria
          if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('CFOPINTDEVOLUC').AsString, '') = False then
          begin
            RegistraFalha('  Loja não configurada para CFOP interno de Devolucao com Icms de Operação Própria');
            Result := False;
          end
          else
          begin
            XCFOPINTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          end;
          //Saidas: Externo S.T.
          if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('CFOPEXTDEVOLUCST').AsString, '') = False
            then
          begin
            RegistraFalha('  Loja não configurada para CFOP Externo de Devolução com Substituição Tributária');
            Result := False;
          end
          else
          begin
            XCFOPEXPERTOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          end;

          //Saidas Externo OP
          if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('CFOPEXTDEVOLUC').AsString, '') = False then
          begin
            RegistraFalha('  Loja não configurada para CFOP Externo de Devolução com Icms de Operação Própria');
            Result := False;
          end
          else
          begin
            XCFOPEXTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          end;
        end;
        //REMESSA GARANTIA
        if FMenu.XRemessaGarantia = True then
        begin
          //Saídas: Interno S.T.
          if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('CFOPINTGARANTIA').AsString, '') = False then
          begin
            RegistraFalha('  Loja não configurada para CFOP interno de Devolução com Substituição Tributária');
            Result := False;
          end
          else
          begin
            XCFOPINTERNOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          end;
          //Saidas: Interno Operação Propria
          if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('CFOPINTGARANTIA').AsString, '') = False then
          begin
            RegistraFalha('  Loja não configurada para CFOP interno de Devolucao com Icms de Operação Própria');
            Result := False;
          end
          else
          begin
            XCFOPINTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          end;
          //Saidas: Externo S.T.
          if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('CFOPEXTGARANTIA').AsString, '') = False then
          begin
            RegistraFalha('  Loja não configurada para CFOP Externo de Devolução com Substituição Tributária');
            Result := False;
          end
          else
          begin
            XCFOPEXPERTOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          end;

          //Saidas Externo OP
          if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('CFOPEXTGARANTIA').AsString, '') = False then
          begin
            RegistraFalha('  Loja não configurada para CFOP Externo de Devolução com Icms de Operação Própria');
            Result := False;
          end
          else
          begin
            XCFOPEXTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          end;
        end;
        //SIMPLES REMESSA
        if FMenu.XSimplesRemessa = True then
        begin
          //Saídas: Interno S.T.
          if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('CFOPINTSIMPREMESSA').AsString, '') = False
            then
          begin
            RegistraFalha('  Loja não configurada para CFOP interno de Simples Remessa');
            Result := False;
          end
          else
          begin
            XCFOPINTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            XCFOPINTERNOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          end;
          //Saidas: Interno Operação Propria
          if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
            DMMACS.TLoja.FieldByName('CFOPEXTSIMPREMESSA').AsString, '') = False
            then
          begin
            RegistraFalha('  Loja não configurada para CFOP Externo de Simples Remessa');
            Result := False;
          end
          else
          begin
            XCFOPEXTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            XCFOPEXPERTOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          end;
        end;

        //OUTRAS OPERAÇÕES
        if (FMenu.XOutrosFisc = True)
          or (FMenu.TIPOAUX = 'ENTNFPROP')
          or (FMenu.XComplementacao = True)
          or (FMenu.XNfceReferenciada) then
        begin
          //Saídas: Interno
          XCFOPINTERNO := XCFOPOUTROS1;
          //Saídas: Externo
          XCFOPEXTERNO := XCFOPOUTROS1;
          //saídas: Interno cst
          XCFOPINTERNOCST := XCFOPOUTROS1;
          //Saídas: Externo
          XCFOPEXPERTOCST := XCFOPOUTROS1;
        end;
      end;
    end;
    //Cfop utilizado para impressão de notas fiscais de entrada quando ocorreu uma devolução de venda e é usado nota fiscal propria para emissão da entrada
    if (FMenu.XNotaEntrada = True) and (FMenu.TIPOAUX <> 'ENTNFPROP') then
    begin
      XCFOPINTPC := XCFOPINTDEVPROPRIA;
      XCFOPINTSTPC := XCFOPINTDEVPROPRIA;
      XCFOPEXTPC := XCFOPEXTDEVPROPRIA;
      XCFOPEXTSTPC := XCFOPEXTDEVPROPRIA;
    end;
  except

    RegistraFalha('  CFOP: Erro ao verificar CFOPs em loja');
    Result := False;
  end;

end;
//Função para validar NCM dos produtos

function TFPadraoFiscal.ValidaNCMProdutos: Boolean;
begin
  Result := True;
  try
    //Verifica se impressão de NFe
    if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'NFe') and
      (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') and
      (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'NFe-NFCe') then
      Exit; //Se não for NFe sai da função
    if XTipo = 'PEDV' then
    begin
      //SQL para verificar algum item sem codigo para substituição tributária
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' SELECT SUBPRODUTO.CONTRINT, SUBPRODUTO.NCM, NCM.CEST, NCM.ATIVO, SUBPRODUTO.DESCRICAO, CST.SUBSTITUICAO ');
      DMESTOQUE.Alx.SQL.Add(' FROM ITENSPEDVEN ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN VWSIMILAR ON ITENSPEDVEN.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = VWSIMILAR.COD_SUBPRODUTO ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN CST ON CST.COD_CST = ITENSPEDVEN.COD_CST ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN NCM ON NCM.NCM = SUBPRODUTO.NCM ');
      DMESTOQUE.Alx.SQL.Add(' WHERE (ITENSPEDVEN.COD_PEDVEN = :CODIGO) ');
      DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
    end;
    if XTipo = 'ORDEM' then
    begin
      //SQL para verificar algum item sem codigo para substituição tributária
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' SELECT SUBPRODUTO.CONTRINT, SUBPRODUTO.NCM, NCM.CEST, NCM.ATIVO, SUBPRODUTO.DESCRICAO, CST.SUBSTITUICAO ');
      DMESTOQUE.Alx.SQL.Add(' FROM ITPRODORD ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN VWSIMILAR ON ITPRODORD.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN SUBPRODUTO ON VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN CST ON CST.COD_CST = ITPRODORD.COD_CST ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN NCM ON NCM.NCM = SUBPRODUTO.NCM ');
      DMESTOQUE.Alx.SQL.Add(' WHERE (ITPRODORD.COD_ORDEM = :CODIGO) ');
      DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
    end;
    if XTipo = 'PEDC' then
    begin
      //SQL para verificar algum item sem codigo para substituição tributária
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' SELECT SUBPRODUTO.CONTRINT, SUBPRODUTO.NCM, NCM.CEST, NCM.ATIVO, SUBPRODUTO.DESCRICAO, CST.SUBSTITUICAO ');
      DMESTOQUE.Alx.SQL.Add(' FROM ITENSPEDC ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN VWSIMILAR ON ITENSPEDC.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN SUBPRODUTO ON VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN CST ON CST.COD_CST = ITENSPEDC.COD_CST ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN NCM ON NCM.NCM = SUBPRODUTO.NCM ');
      DMESTOQUE.Alx.SQL.Add(' WHERE (ITENSPEDC.COD_PEDCOMPRA = :CODIGO) AND ((ITENSPEDC.CONSUMO IS NULL) OR (ITENSPEDC.CONSUMO <> ''1'')) ');
      DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
    end;
    {Edmar - 18/11/2015 - Comentado para fazer a validação correta do NCM}
    if not (DMESTOQUE.Alx.IsEmpty)
      {And Not (DMESTOQUE.Alx.FieldByName('NCM').AsString = '')} then
    begin
      DMESTOQUE.Alx.First;
      while not DMESTOQUE.Alx.Eof do
      begin
        if Length(Trim(DMESTOQUE.Alx.FieldByName('NCM').AsString)) < 8 then
        begin
          Result := False;
          RegistraFalha(' 4149 - NCM Inválido (Tamanho < 8) para: ' +
            DMESTOQUE.Alx.FieldByName('contrint').AsString + '-' +
            DMESTOQUE.Alx.FieldByName('descricao').AsString);
        end
        else
        begin
          if FiltraTabela(DMESTOQUE.TNcm, 'NCM', 'NCM',
            DMESTOQUE.Alx.FieldByName('ncm').AsString, '') = False then
          begin
            Result := False;
            RegistraFalha(' 4155 - NCM não encontrado para: ' +
              DMESTOQUE.Alx.FieldByName('contrint').AsString + '-' +
              DMESTOQUE.Alx.FieldByName('descricao').AsString);
          end
          else
          begin
            {//Edmar - 07/12/2015 - Se encontrou o NCM, valida se o cst é de substituição e se foi informado CEST válido no NCM
            if (DMESTOQUE.Alx.FieldByName('SUBSTITUICAO').AsString = '1') AND
             ((DMESTOQUE.Alx.FieldByName('CEST').AsString = '') OR (Length(DMESTOQUE.Alx.FieldByName('CEST').AsString) < 7)) then
            begin
             RegistraFalha(' 4171 - Produto de ST com CEST inválido: ' + DMESTOQUE.Alx.FieldByName('contrint').AsString + '-' + DMESTOQUE.Alx.FieldByName('descricao').AsString);
            end;}

            //Edmar - 18/12/2015 - Se o NCM não estiver marcado como ativo barra o envio
            if DMESTOQUE.Alx.FieldByName('ATIVO').AsString <> '1' then
            begin
              Result := False;
              RegistraFalha(' 4177 - NCM inativo para o produto: ' +
                DMESTOQUE.Alx.FieldByName('contrint').AsString + '-' +
                DMESTOQUE.Alx.FieldByName('descricao').AsString +
                '. Por favor atualize sua tabela de NCM!');
            end;
          end;
        end;
        DMESTOQUE.Alx.Next;
      end;
    end;
  except
    Result := False;
  end;
end;

function TFPadraoFiscal.ValidaAnpProdutos: Boolean;
begin
  try
    if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'NFe') and
      (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') and
      (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'NFe-NFCe') then
      Exit; //Se não for NFe sai da função
    //se for pedido de compra não faz verificação de ANP
    if XTipo = 'PEDC' then
      Exit;

    if XTipo = 'PEDV' then
    begin
      //SQL para verificar algum item sem codigo para substituição tributária
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' SELECT SUBPRODUTO.DESCRICAO, SUBPRODUTO.CONTRINT, SUBPRODUTO.ANP, ');
      DMESTOQUE.Alx.SQL.Add(' SUBPRODUTO.DESCRICAO_ANP, CFOPINT.CFOP CFOPINT, CFOPEXT.CFOP CFOPEXT ');
      DMESTOQUE.Alx.SQL.Add(' FROM ITENSPEDVEN ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN VWSIMILAR ON ITENSPEDVEN.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = VWSIMILAR.COD_SUBPRODUTO ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN CFOP CFOPINT ON CFOPINT.COD_CFOP = SUBPRODUTO.COD_CFOPDENTROESTADO ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN CFOP CFOPEXT ON CFOPEXT.COD_CFOP = SUBPRODUTO.COD_CFOPFORAESTADO ');
      DMESTOQUE.Alx.SQL.Add(' WHERE (ITENSPEDVEN.COD_PEDVEN = :CODIGO) AND (ANP <> '''') ');
    end;
    if XTipo = 'ORDEM' then
    begin
      //SQL para verificar algum item sem codigo para substituição tributária
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' SELECT SUBPRODUTO.DESCRICAO, SUBPRODUTO.CONTRINT, SUBPRODUTO.ANP, ');
      DMESTOQUE.Alx.SQL.Add(' SUBPRODUTO.DESCRICAO_ANP, CFOPINT.CFOP CFOPINT, CFOPEXT.CFOP CFOPEXT ');
      DMESTOQUE.Alx.SQL.Add(' FROM ITPRODORD ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN VWSIMILAR ON ITPRODORD.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN SUBPRODUTO ON VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN CFOP CFOPINT ON CFOPINT.COD_CFOP = SUBPRODUTO.COD_CFOPDENTROESTADO ');
      DMESTOQUE.Alx.SQL.Add(' LEFT JOIN CFOP CFOPEXT ON CFOPEXT.COD_CFOP = SUBPRODUTO.COD_CFOPFORAESTADO ');
      DMESTOQUE.Alx.SQL.Add(' WHERE (ITPRODORD.COD_ORDEM = :CODIGO) AND (ANP <> '''') ');
    end;
    DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
    DMESTOQUE.Alx.Open;

    if not DMESTOQUE.Alx.IsEmpty then
    begin
      DMESTOQUE.Alx.First;
      while not DMESTOQUE.Alx.Eof do
      begin
        //verifica se tem a descrição da anp
        if DMESTOQUE.Alx.FieldByName('DESCRICAO_ANP').AsString = '' then
        begin
          //escreve no painel
          Result := False;
          RegistraFalha(' 4442 - Produto [' +
            DMESTOQUE.Alx.FieldByName('descricao').AsString +
            '] do tipo combustível sem descrição da ANP.');
        end;
        //verifica se existe cfop personalizado 5656 ou 6656
        if ({XUfOrigem = XUfDestino}cbOperacaoInterna.Checked) and
          (DMESTOQUE.Alx.FieldByName('CFOPINT').AsString <> '5656') then
        begin
          //escreve no painel
          Result := False;
          RegistraFalha(' 4449 - Produto [' +
            DMESTOQUE.Alx.FieldByName('descricao').AsString +
            '] do tipo combustível não possui CFOP correto 5656');
        end;
        if ({XUfOrigem <> XUfDestino} not cbOperacaoInterna.Checked) and
          (DMESTOQUE.Alx.FieldByName('CFOPEXT').AsString <> '6656') then
        begin
          //escreve no painel
          Result := False;
          RegistraFalha(' 4455 - Produto [' +
            DMESTOQUE.Alx.FieldByName('descricao').AsString +
            '] do tipo combustível não possui CFOP correto 6656');
        end;
        DMESTOQUE.Alx.Next;
      end;
    end;
  except
    Result := False;
  end;
end;

//Função para validar UN dos produtos

function TFPadraoFiscal.ValidaUNProdutos: Boolean;
begin
  Result := True;
  try
    //SQL para verificar algum item sem codigo para substituição tributária
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    if XTipo = 'ORDEM' then
    begin
      DMESTOQUE.Alx.SQL.Add('  select subproduto.cod_unidvenda AS UN from itprodord ');
      DMESTOQUE.Alx.SQL.Add('   left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('   left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
      DMESTOQUE.Alx.SQL.Add('   left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
      DMESTOQUE.Alx.SQL.Add('   Where ((unidade.sigla_unid='''') or (unidade.sigla_unid is null))  and (itprodord.cod_ordem=:codigo) ');
    end;
    if XTipo = 'PEDV' then
    begin
      DMESTOQUE.Alx.SQL.Add(' select subproduto.cod_unidvenda AS UN, subproduto.NCM from itenspedven ');
      DMESTOQUE.Alx.SQL.Add('  left join vwsimilar on itenspedven.cod_estoque = vwsimilar.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('  left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
      DMESTOQUE.Alx.SQL.Add('  left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
      DMESTOQUE.Alx.SQL.Add('  Where ((unidade.sigla_unid='''') or (unidade.sigla_unid is null))  and (itenspedven.cod_pedven=:codigo) ');
    end;
    if XTipo = 'PEDC' then
    begin
      DMESTOQUE.Alx.SQL.Add('  select subproduto.cod_unidvenda AS UN from itenspedc ');
      DMESTOQUE.Alx.SQL.Add('  left join vwsimilar on itenspedc.cod_estoque = vwsimilar.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('  left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
      DMESTOQUE.Alx.SQL.Add('  left join unidade on subproduto.cod_unidcompra = unidade.cod_unidade ');
      DMESTOQUE.Alx.SQL.Add('  Where ((unidade.sigla_unid='''') or (unidade.sigla_unid is null))  and (itenspedc.cod_pedcompra=:codigo) ');
    end;
    DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
    DMESTOQUE.Alx.Open;
    if not (DMESTOQUE.Alx.IsEmpty) and not
      (DMESTOQUE.Alx.FieldByName('UN').AsString = '') then
    begin
      RegistraFalha('  U.N.: Foram encontrado(s) produto(s) sem Sigla de Unidade');
      DMESTOQUE.Alx.First;
      while not DMESTOQUE.Alx.Eof do
      begin
        RegistraFalha('     - Produto: ' +
          DMESTOQUE.Alx.FieldByName('contrint').AsString + ' ' +
          DMESTOQUE.Alx.FieldByName('descricao').AsString);
        DMESTOQUE.Alx.Next;
      end;
      RegistraFalha('  Verifique o U.N. para cada um destes produtos no cadastro de produtos');
      Result := False;
    end;
  except
    Result := False;
  end;
end;
//Função para validar C.S.T. dos produtos

function TFPadraoFiscal.ValidaCstProdutos: Boolean;
begin
  Result := True;
  try
    //SQL para verificar algum item sem codigo para substituição tributária
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    if XTipo = 'ORDEM' then
    begin
      DMESTOQUE.Alx.SQL.Add(' select vwsimilar.contrint, vwsimilar.descricao from itprodord ');
      DMESTOQUE.Alx.SQL.Add(' left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itprodord.cod_cst =cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' Where ((cst.cod_sit_trib='''') or (cst.cod_sit_trib is null))  and (itprodord.cod_ordem=:codigo) and ((itprodord.impressonfse<>''0'') or (itprodord.impressonfse is null)) ');
    end;
    if XTipo = 'PEDV' then
    begin
      DMESTOQUE.Alx.SQL.Add(' select vwsimilar.contrint, vwsimilar.descricao from itenspedven ');
      DMESTOQUE.Alx.SQL.Add(' left join vwsimilar on itenspedven.cod_estoque = vwsimilar.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedven.cod_cst =cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' Where ((cst.cod_sit_trib='''') or (cst.cod_sit_trib is null))  and (itenspedven.cod_pedven=:codigo) ');
    end;
    if XTipo = 'PEDC' then
    begin
      DMESTOQUE.Alx.SQL.Add(' select vwsimilar.contrint, vwsimilar.descricao from itenspedc ');
      DMESTOQUE.Alx.SQL.Add(' left join vwsimilar on itenspedc.cod_estoque = vwsimilar.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedc.cod_cst =cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' Where ((cst.cod_sit_trib='''') or (cst.cod_sit_trib is null))  and (itenspedc.cod_pedcompra=:codigo) ');
    end;
    DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
    DMESTOQUE.Alx.Open;
    if not DMESTOQUE.Alx.IsEmpty then
    begin
      RegistraFalha('  C.S.T.: Foram encontrado(s) produto(s) sem código de substituição tributária');
      DMESTOQUE.Alx.First;
      while not DMESTOQUE.Alx.Eof do
      begin
        RegistraFalha('     - Produto: ' +
          DMESTOQUE.Alx.FieldByName('contrint').AsString + ' ' +
          DMESTOQUE.Alx.FieldByName('descricao').AsString);
        DMESTOQUE.Alx.Next;
      end;
      RegistraFalha('  Verifique o C.S.T. para cada um destes produtos no cadastro de produtos');
      RegistraFalha('  Após apague e insirá novamente o item na lista de produtos do pedido');
      Result := False;
    end;
  except
    Result := False;
  end;
end;

//Função Utilizada para atualizar aliquota e valor total da tributação para cada item na nota

function TFPadraoFiscal.AtualizaValorTotalTributacaoItem: Boolean;
var
  //    XAliqAplicada: Real;
  XOrigemNacional: Boolean;
  //    XAuxTotal: Real;
  xAuxTotalEstadual, xAuxTotalNacional: Real;
  xAliqEstadual, xAliqNacional: Real;
begin
  try
    Result := True;
    //        XAliqAplicada := 0;
    xAuxTotalNacional := 0;
    xAuxTotalEstadual := 0;

    DMESTOQUE.TSlave.First;
    while not DMESTOQUE.TSlave.Eof do
    begin
      //Verifica se o item é importado ou nacional
      if copy(DMESTOQUE.TSlave.FieldByName('COD_SIT_TRIB').AsString, 0, 1) = '0'
        then
        XOrigemNacional := True
      else
        XOrigemNacional := False;
      //Seleciona o ncm do item em questão
      DMESTOQUE.TNcm.Close;
      DMESTOQUE.TNcm.SQL.Clear;
      DMESTOQUE.TNcm.SQL.Add(' Select * from ncm where ncm.ncm=:ncm');
      DMESTOQUE.TNcm.ParamByName('ncm').AsString :=
        DMESTOQUE.TSlave.FieldByName('ncm').AsString;
      DMESTOQUE.TNcm.Open;

      if (not DMESTOQUE.TNcm.IsEmpty) then
      begin
        //Edmar - 17/12/2014 - Trecho comentado pois não tem distinção
        //de nacional e importado.
    //se encontrou ncm vamos verificar as aliquotas da tabela ncm
        {
        If XOrigemNacional = True then
        begin
         If DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTANAC').AsCurrency > 0 Then
            XAliqAplicada := DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTANAC').AsCurrency
           Else
            XAliqAplicada := DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency; // caso não tenha aliquota nacional na tabela ncm para este item, pegamos a aliquota da tabela empresa

        End
        Else Begin
            If DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTAIMP').AsCurrency > 0 Then
                XAliqAplicada := DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTAIMP').AsCurrency
            Else
                XAliqAplicada := DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency; // caso não tenha aliquota importado na tabela ncm para este item, pegamos a aliquota da tabela empresa

        End;
        }

     //Se o ncm possui a aliquota nacional, usa ela. senão usa o que está cadastrado na empresa
        if DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTANAC').AsCurrency > 0 then
          xAliqNacional :=
            DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTANAC').AsCurrency
        else
          xAliqNacional :=
            DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency;

        //Se o ncm possui a aliquota estadual, usa ela. senão usa o que está cadastrado na empresa
        if DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTAEST').AsCurrency > 0 then
          xAliqEstadual :=
            DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTAEST').AsCurrency
        else
          xAliqEstadual :=
            DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
      end
      else
      begin
        //se não econtrou item de ncm para o produto, pegamos a aliquota da tabela empresa
        xAliqNacional :=
          DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
        xAliqEstadual :=
          DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
      end;
      {
      If (xAliqEstadual <= 0) then
      begin
      //caso a aliquota estadual não tenha sido encontrado, paramos o processo e avisamos que o retorno é falso ou incompleto
          Result := False;
          RegistraFalha('   Valor Total das Tributações: xAliqEstadual<=0');
          Exit;
      End;

      If (xAliqNacional <= 0) then
      begin
       //caso a aliquota nacional não tenha sido encontrado, paramos o processo e avisamos que o retorno é falso ou incompleto
          Result := False;
          RegistraFalha('   Valor Total das Tributações: xAliqNacional<=0');
          Exit;
      End;
      }
      //Com a aliquota correta encontrada, aplicamos ao item da nota
      if XTipo = 'PEDV' then
      begin
        if FiltraTabela(DMSAIDA.TItemPV, 'itenspedven', 'cod_itenspedven',
          DMESTOQUE.TSlave.FieldByName('CodigoItem').AsString, '') then
        begin
          DMSAIDA.TItemPV.Edit;
          DMSAIDA.TItemPV.FieldByName('VALORTOTALTRIBUTA').AsCurrency :=
            (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency * xAliqNacional)
            / 100;
          DMSAIDA.TItemPV.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency :=
            (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency * xAliqEstadual)
            / 100;
          //                    DMSAIDA.TItemPV.FieldByName('ALIQUOTATOTALTRIBUTA').AsCurrency := XAliqAplicada;
          DMSAIDA.TItemPV.Post;
          xAuxTotalNacional := xAuxTotalNacional +
            DMSAIDA.TItemPV.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
          xAuxTotalEstadual := xAuxTotalEstadual +
            DMSAIDA.TItemPV.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency;
        end
        else
        begin
          RegistraFalha('   Valor Total das Tributações: Falha ao ataulizar Item:'
            + DMESTOQUE.TSlave.FieldByName('contrint').AsString);
        end;
      end;
      if XTipo = 'PEDC' then
      begin
        if FiltraTabela(DMENTRADA.TItemPC, 'itenspedc', 'cod_itenspedc',
          DMESTOQUE.TSlave.FieldByName('CodigoItem').AsString, '') then
        begin
          DMENTRADA.TItemPC.Edit;
          DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTA').AsCurrency :=
            (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency *
            xAliqNacional) / 100;
          DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency
            := (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency *
            xAliqEstadual) / 100;
          //                    DMENTRADA.TItemPC.FieldByName('ALIQUOTATOTALTRIBUTA').AsCurrency := XAliqAplicada;
          DMENTRADA.TItemPC.Post;
          xAuxTotalNacional := xAuxTotalNacional +
            DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
          xAuxTotalEstadual := xAuxTotalEstadual +
            DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency;
        end
        else
        begin
          RegistraFalha('   Valor Total das Tributações: Falha ao ataulizar Item:'
            + DMESTOQUE.TSlave.FieldByName('contrint').AsString);
        end;
      end;
      if XTipo = 'ORDEM' then
      begin
        if FiltraTabela(DMServ.TPOrd, 'itprodord', 'cod_itprodord',
          DMESTOQUE.TSlave.FieldByName('CodigoItem').AsString, '') then
        begin
          DMServ.TPOrd.Edit;
          DMServ.TPOrd.FieldByName('VALORTOTALTRIBUTA').AsCurrency :=
            (DMServ.TPOrd.FieldByName('total').AsCurrency * xAliqNacional) / 100;
          DMServ.TPOrd.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency :=
            (DMServ.TPOrd.FieldByName('total').AsCurrency * xAliqEstadual) / 100;
          //                    DMServ.TPOrd.FieldByName('ALIQUOTATOTALTRIBUTA').AsCurrency := XAliqAplicada;
          DMServ.TPOrd.Post;
          xAuxTotalNacional := xAuxTotalNacional +
            DMServ.TPOrd.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
          xAuxTotalEstadual := xAuxTotalEstadual +
            DMServ.TPOrd.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency;
        end
        else
        begin
          RegistraFalha('   Valor Total das Tributações: Falha ao atualizar Item:'
            + DMESTOQUE.TSlave.FieldByName('contrint').AsString);
        end;
      end;
      DMESTOQUE.TSlave.Next;
    end;

    XValorTotalAproxTributacaoNacional := xAuxTotalNacional;
    XValorTotalAproxTributacaoEstadual := xAuxTotalEstadual;

    if XTipo = 'PEDV' then
      DMSAIDA.IBT.CommitRetaining;
    if XTipo = 'PEDC' then
      DMENTRADA.IBT.CommitRetaining;
    if XTipo = 'ORDEM' then
      DMServ.IBT.CommitRetaining;
  except
    Result := False;
    RegistraFalha('   Valor Total das Tributações: Falha ao atualizar valores');
  end;
end;

//Função para Atualizar o cst/csosn de acordo com o situação e operação ocorrida
{Function TFPadraoFiscal.AtualizaCstCsosn: Boolean;
Begin
 Result := True;
   Try
    //OS ITENS DEVEM ESTAR CADASTRADOS COM CST <> DE CST COM ST PARA SOMENTE FAZER A CONVERSÃO CASO OCORRAM OS CASOS <> DO ABAIXO
    If ((XUfOrigem=XUfDestino) and (XClienteConsumidorFinal=True)) OR ((XUfOrigem<>XUfDestino) and (XClienteIE=False)  and (XClienteConsumidorFinal=True)) Then
           Exit;// se venda dentro do estado para consumidor final ou cliente sem inscrição estadual não alteramos os cst
       //COMANDOS PARA PEDIDO DE VENDA
       If XTipo = 'PEDV'
       Then Begin
        DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add(' update itenspedven set itenspedven.cod_cst=:cst Where itenspedven.cod_pedven=:pedido ');
           DMSAIDA.TAlx.ParamByName('Pedido').AsInteger := XCod_Pedido;
           DMSAIDA.TAlx.ParamByName('cst').AsInteger := XCodCstST;
   DMSAIDA.TAlx.ExecSQL;
           DMSAIDA.IBT.CommitRetaining;
       End;
       //COMANDOS PARA PEDIDO DE VENDA
       If XTipo = 'ORDEM'
       Then Begin
            DMSAIDA.TAlx.Close;
            DMSAIDA.TAlx.SQL.Clear;
            DMSAIDA.TAlx.SQL.Add(' update itprodord set itprodord.cod_cst=:cst Where itprodord.cod_ordem=:pedido ');
            DMSAIDA.TAlx.ParamByName('Pedido').AsInteger := XCod_Pedido;
            DMSAIDA.TAlx.ParamByName('cst').AsInteger := XCodCstST;
      DMSAIDA.TAlx.ExecSQL;
            DMSAIDA.IBT.CommitRetaining;
       End;

 Except
    Result := False;
   End;
End; }

//Função para validar os CFOP de produtos conforme localização de comercialização e CST
function TFPadraoFiscal.ValidaCfopProdutos: Boolean;
begin
  Result := True;

  try
    //CONTROLE PARA ALTERAÇÃO DE CFOPS
         //COMANDOS PARA PEDIDO DE VENDA
    if XTipo = 'PEDV' then
    begin
      DMSAIDA.TItemPV.Close;
      DMSAIDA.TItemPV.SQL.Clear;
      DMSAIDA.TItemPV.SQL.Add(' select * from itenspedven where (itenspedven.cod_pedven=:Pedido) ');
      DMSAIDA.TItemPV.ParamByName('Pedido').AsInteger := XCod_Pedido;
      DMSAIDA.TItemPV.Open;
      if not DMSAIDA.TItemPV.IsEmpty then
      begin
        DMSAIDA.TItemPV.First;
        while not DMSAIDA.TItemPV.Eof do
        begin
          DMESTOQUE.TCST.Close;
          DMESTOQUE.TCST.SQL.Clear;
          DMESTOQUE.TCST.SQL.Add(' select * from cst where (cst.cod_cst = :cst)');
          DMESTOQUE.TCST.ParamByName('cst').AsString :=
            DMSAIDA.TItemPV.FieldByName('cod_cst').AsString;
          DMESTOQUE.TCST.Open;
          if not DMESTOQUE.TCST.IsEmpty then
          begin
            //Edmar - 24/09/2014 - Filtra VWSIMLAR buscando o codigo do subproduto
            FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE',
              DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsString, '');
            //Edmar - 24/09/2014 - Filtra SUBPRODUTO buscando o cfop do produto
            FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO',
              DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');

            //Edmar - 24/09/2014 - Testa se o produto possui cfop especifico
            if (DMESTOQUE.TSubProd.FieldByName('cod_cfopforaestado').AsString <>
              '') and
              (DMESTOQUE.TSubProd.FieldByName('cod_cfopdentroestado').AsString <>
                '-1') then
            begin //se possuir faz o cfop correto dependendo o estado destino
              DMSAIDA.TItemPV.Edit;
              //If XUfOrigem <> XUfDestino Then
              if not cbOperacaoInterna.Checked then
                FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
                  DMESTOQUE.TSubProd.FieldByName('cod_cfopforaestado').AsString,
                  '')
              else
                FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
                  DMESTOQUE.TSubProd.FieldByName('cod_cfopdentroestado').AsString,
                  '');

              if XCFOPPERSONALIZADO <>
                DMESTOQUE.TCFOP.FieldByName('CFOP').AsString then
                XCFOPPERSONALIZADO :=
                  DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;

              DMSAIDA.TItemPV.FieldByName('CFOP').AsString :=
                DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
              DMSAIDA.TItemPV.Post;
            end
            else
            begin //se não possuir cfop especifico faz o procedimento padrão
              if DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString = '1' then
              begin
                DMSAIDA.TItemPV.Edit;
                //If XUfOrigem <> XUfDestino Then
                if not cbOperacaoInterna.Checked then
                  DMSAIDA.TItemPV.FieldByName('CFOP').AsString := XCFOPEXPERTOCST
                else
                  DMSAIDA.TItemPV.FieldByName('CFOP').AsString :=
                    XCFOPINTERNOCST;
                DMSAIDA.TItemPV.Post;
              end
              else
              begin
                DMSAIDA.TItemPV.Edit;
                //If XUfOrigem <> XUfDestino Then
                if not cbOperacaoInterna.Checked then
                  DMSAIDA.TItemPV.FieldByName('CFOP').AsString := XCFOPEXTERNO
                else
                  DMSAIDA.TItemPV.FieldByName('CFOP').AsString := XCFOPINTERNO;
                DMSAIDA.TItemPV.Post;
              end;
            end;
          end
          else
          begin
            Result := False;
            RegistraFalha('   CFOP: Item de venda sem C.S.T ');
          end;
          DMSAIDA.TItemPV.Next;
        end;
        try
          DMSAIDA.IBT.CommitRetaining;
        except
          Result := False;
          RegistraFalha('   CFOP: Falha na transação ao atualizar cfop dos itens de produtos relacionados');
        end;
      end;
    end;
    //COMANDOS PARA PEDIDO DE COMPRA
    if XTipo = 'PEDC' then
    begin
      DMENTRADA.TItemPC.Close;
      DMENTRADA.TItemPC.SQL.Clear;
      DMENTRADA.TItemPC.SQL.Add(' select * from itenspedc where (itenspedc.cod_pedcompra=:Pedido) ');
      DMENTRADA.TItemPC.ParamByName('Pedido').AsInteger := XCod_Pedido;
      DMENTRADA.TItemPC.Open;
      if not DMENTRADA.TItemPC.IsEmpty then
      begin
        DMENTRADA.TItemPC.First;
        while not DMENTRADA.TItemPC.Eof do
        begin
          //Seleciona subproduto para verificar se o item é um item de consumo proprio ou não
          DMESTOQUE.Alx5.Close;
          DMESTOQUE.Alx5.SQL.Clear;
          DMESTOQUE.Alx5.SQL.Add(' select subproduto.usoconsumo from estoque ');
          DMESTOQUE.Alx5.SQL.Add(' left join  subproduto on estoque.cod_subprod=subproduto.cod_subproduto ');
          DMESTOQUE.Alx5.SQL.Add(' where estoque.cod_estoque=:cod_estoque ');
          DMESTOQUE.Alx5.ParamByName('cod_estoque').AsString :=
            DMENTRADA.TItemPC.FieldByName('cod_estoque').AsString;
          DMESTOQUE.Alx5.Open;

          DMESTOQUE.TCST.Close;
          DMESTOQUE.TCST.SQL.Clear;
          DMESTOQUE.TCST.SQL.Add(' select * from cst where (cst.cod_cst = :cst)');
          DMESTOQUE.TCST.ParamByName('cst').AsString :=
            DMENTRADA.TItemPC.FieldByName('cod_cst').AsString;
          DMESTOQUE.TCST.Open;
          if not DMESTOQUE.TCST.IsEmpty then
          begin
            //Edmar - 24/09/2014 - Filtra VWSIMLAR buscando o codigo do subproduto
            FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE',
              DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsString, '');
            //Edmar - 24/09/2014 - Filtra SUBPRODUTO buscando o cfop do produto
            FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO',
              DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');

            //Edmar - 24/09/2014 - Testa se o produto possui cfop especifico
            if (DMESTOQUE.TSubProd.FieldByName('cod_cfopforaestado').AsString <>
              '') and
              (DMESTOQUE.TSubProd.FieldByName('cod_cfopdentroestado').AsString <>
                '-1') then
            begin //se possuir faz o cfop correto dependendo o estado destino
              DMENTRADA.TItemPC.Edit;
              //if XUfOrigem <> XUfDestino Then
              if not cbOperacaoInterna.Checked then
                FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
                  DMESTOQUE.TSubProd.FieldByName('cod_cfopforaestado').AsString,
                  '')
              else
                FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
                  DMESTOQUE.TSubProd.FieldByName('cod_cfopdentroestado').AsString,
                  '');

              if XCFOPPERSONALIZADO <>
                DMESTOQUE.TCFOP.FieldByName('CFOP').AsString then
                XCFOPPERSONALIZADO :=
                  DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;

              DMENTRADA.TItemPC.FieldByName('CFOP').AsString :=
                DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
              DMENTRADA.TItemPC.Post;
            end
            else
            begin //se não possuir cfop especifico faz o procedimento padrão
              if (DMESTOQUE.Alx5.FieldByName('usoconsumo').AsString = '1') or
                (DMESTOQUE.Alx5.FieldByName('usoconsumo').AsString = '2') then
              begin
                if (DMESTOQUE.Alx5.FieldByName('usoconsumo').AsString = '1')
                  then
                begin
                  //CASO O ITEM SEJA DE CONSUMO PROPRIA DA EMPRESA, RECEBE CFOP DIFERENCIADO
                  DMENTRADA.TItemPC.Edit;
                  //If XUfOrigem <> XUfDestino Then
                  if not cbOperacaoInterna.Checked then
                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString :=
                      XCFOPMATCONSUMOEXT
                  else
                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString :=
                      XCFOPMATCONSUMO;
                  DMENTRADA.TItemPC.Post;
                end;

                if (DMESTOQUE.Alx5.FieldByName('usoconsumo').AsString = '2')
                  then
                begin
                  //CASO O ITEM SEJA DE CONSUMO PROPRIA DA EMPRESA, RECEBE CFOP DIFERENCIADO
                  DMENTRADA.TItemPC.Edit;
                  //If XUfOrigem <> XUfDestino Then
                  if not cbOperacaoInterna.Checked then
                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString :=
                      XCFOPFRETEEXT
                  else
                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString :=
                      XCFOPFRETEINT;
                  DMENTRADA.TItemPC.Post;
                end;
              end
              else
              begin
                //CASO NÃO SEJA ITEM DE CONSUMO PROPRIO DA EMPRESA, RECEBE CFOP DE ENTRADA NORMAL
                if DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString = '1'
                  then
                begin
                  DMENTRADA.TItemPC.Edit;
                  //If XUfOrigem <> XUfDestino Then
                  if not cbOperacaoInterna.Checked then
                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString :=
                      XCFOPEXTSTPC
                  else
                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString :=
                      XCFOPINTSTPC;
                  DMENTRADA.TItemPC.Post;
                end
                else
                begin
                  DMENTRADA.TItemPC.Edit;
                  //If XUfOrigem <> XUfDestino Then
                  if not cbOperacaoInterna.Checked then
                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPEXTPC
                  else
                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString :=
                      XCFOPINTPC;
                  DMENTRADA.TItemPC.Post;
                end;
              end;
            end;
          end
          else
          begin
            Result := False;
            RegistraFalha('   CFOP: Item de compra sem C.S.T ');
          end;
          //Aproveitamos este laço de retição para atualizarmos o valor aproximado de tributos para o item
          if XValorTotalAproxTributacaoNacional > 0 then
          begin
            DMENTRADA.TItemPC.Edit;
            DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTA').AsCurrency :=
              (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency *
              XValorTotalAproxTributacaoNacional) / 100;
            DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency
              := (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency *
              XValorTotalAproxTributacaoEstadual) / 100;
            DMENTRADA.TItemPC.Post;
          end;

          DMENTRADA.TItemPC.Next;
        end;
        try
          DMENTRADA.IBT.CommitRetaining;
        except
          Result := False;
          RegistraFalha('   CFOP: Falha na transação ao atualizar cfop dos itens de produtos relacionados');
        end;
      end;
    end;
    //COMANDOS PARA ORDENS DE SERVIÇO
    if XTipo = 'ORDEM' then
    begin
      DMServ.TPOrd.Close;
      DMServ.TPOrd.SQL.Clear;
      DMServ.TPOrd.SQL.Add(' select * from itprodord where (itprodord.cod_ordem=:Pedido) and ((itprodord.impressonfse<>''0'') or (itprodord.impressonfse is null)) ');
      DMServ.TPOrd.ParamByName('Pedido').AsInteger := XCod_Pedido;
      //DMServ.TPOrd.ParamByName('impressonfse').AsString := '0';
      DMServ.TPOrd.Open;
      if not DMServ.TPOrd.IsEmpty then
      begin
        DMServ.TPOrd.First;
        while not DMServ.TPOrd.Eof do
        begin
          DMESTOQUE.TCST.Close;
          DMESTOQUE.TCST.SQL.Clear;
          DMESTOQUE.TCST.SQL.Add(' select * from cst where (cst.cod_cst = :cst)');
          DMESTOQUE.TCST.ParamByName('cst').AsString :=
            DMServ.TPOrd.FieldByName('cod_cst').AsString;
          DMESTOQUE.TCST.Open;
          if not DMESTOQUE.TCST.IsEmpty then
          begin
            //Edmar - 23/09/2014 - Filtra VWSIMLAR buscando o codigo do subproduto
            FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE',
              DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsString, '');
            //Edmar - 23/09/2014 - Filtra SUBPRODUTO buscando o cfop do produto
            FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO',
              DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');

            //Edmar - 23/09/2014 - Testa se o produto possui cfop especifico
            if (DMESTOQUE.TSubProd.FieldByName('cod_cfopforaestado').AsString <>
              '') and
              (DMESTOQUE.TSubProd.FieldByName('cod_cfopdentroestado').AsString <>
                '-1') then
            begin //se possuir faz o cfop correto dependendo o estado destino
              DMServ.TPOrd.Edit;
              //If XUfOrigem <> XUfDestino Then
              if not cbOperacaoInterna.Checked then
                FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
                  DMESTOQUE.TSubProd.FieldByName('cod_cfopforaestado').AsString,
                  '')
              else
                FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
                  DMESTOQUE.TSubProd.FieldByName('cod_cfopdentroestado').AsString,
                  '');

              if XCFOPPERSONALIZADO <>
                DMESTOQUE.TCFOP.FieldByName('CFOP').AsString then
                XCFOPPERSONALIZADO :=
                  DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;

              DMServ.TPOrd.FieldByName('CFOP').AsString :=
                DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
              DMServ.TPOrd.Post;
            end
            else
            begin //se não possuir cfop especifico faz o procedimento padrão
              if DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString = '1' then
              begin
                DMServ.TPOrd.Edit;
                //If XUfOrigem <> XUfDestino Then
                if not cbOperacaoInterna.Checked then
                  DMServ.TPOrd.FieldByName('CFOP').AsString := XCFOPEXPERTOCST
                else
                  DMServ.TPOrd.FieldByName('CFOP').AsString := XCFOPINTERNOCST;
                DMServ.TPOrd.Post;
              end
              else
              begin
                DMServ.TPOrd.Edit;
                //If XUfOrigem <> XUfDestino Then
                if not cbOperacaoInterna.Checked then
                  DMServ.TPOrd.FieldByName('CFOP').AsString := XCFOPEXTERNO
                else
                  DMServ.TPOrd.FieldByName('CFOP').AsString := XCFOPINTERNO;
                DMServ.TPOrd.Post;
              end;
            end;
          end
          else
          begin
            Result := False;
            RegistraFalha('   CFOP: Item de venda sem C.S.T ');
          end;
          DMServ.TPOrd.Next;
        end;
        try
          DMServ.IBT.CommitRetaining;
        except
          DMServ.IBT.RollbackRetaining;
          Result := False;
          RegistraFalha('   CFOP: Falha na transação ao atualizar cfop dos itens de produtos relacionados');
        end;
      end;
    end;
  except
    RegistraFalha('   CFOP: Falha ao atualizar cfop dos itens de produtos relacionados');
    RegistraFalha('      Este problema somente pode ser solucionado por meio de intervenção técnica');
    Result := False;
    exit;
  end;
  try
    //CONTROLE PARA VERIFICAÇÃO DA EXISTENCIA DE CFOPS
         //COMANDOS PARA PEDIDO DE VENDA
    if XTipo = 'PEDV' then
    begin
      //Verifica CFOP  para substituição tributaria
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      {
      DMESTOQUE.Alx.SQL.Add(' select count(itenspedven.cod_itenspedven) as CONT from itenspedven ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedven.cod_cst =cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' where (cst.substituicao=''1'') and (itenspedven.cod_pedven=:codigo) ');
      }
      DMESTOQUE.Alx.SQL.Add(' select count(itenspedven.cod_itenspedven) as CONT from itenspedven ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedven.cod_cst = cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' left join estoque on estoque.cod_estoque = itenspedven.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
      DMESTOQUE.Alx.SQL.Add(' where (cst.substituicao=''1'') and (itenspedven.cod_pedven=:codigo) ');
      DMESTOQUE.Alx.SQL.Add(' and ((subproduto.cod_cfopdentroestado is null) OR (subproduto.cod_cfopdentroestado = ''-1'')) ');
      DMESTOQUE.Alx.SQL.Add(' and ((subproduto.cod_cfopforaestado is null) OR (subproduto.cod_cfopforaestado = ''-1'')) ');
      DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      if DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 then
        XCFOP_ST := True
      else
        XCFOP_ST := False;

      //Verifica CFOP  para icms operação propria
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      {
      DMESTOQUE.Alx.SQL.Add(' select count(itenspedven.cod_itenspedven) as CONT from itenspedven ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedven.cod_cst =cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' where ((cst.substituicao<>''1'') or (cst.substituicao is null)) and (itenspedven.cod_pedven=:codigo) ');
      }
      DMESTOQUE.Alx.SQL.Add(' select count(itenspedven.cod_itenspedven) as CONT from itenspedven ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedven.cod_cst =cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' left join estoque on estoque.cod_estoque = itenspedven.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
      DMESTOQUE.Alx.SQL.Add(' where ((cst.substituicao<>''1'') or (cst.substituicao is null)) and (itenspedven.cod_pedven=:codigo) ');
      DMESTOQUE.Alx.SQL.Add(' and ((subproduto.cod_cfopdentroestado is null) OR (subproduto.cod_cfopdentroestado = ''-1'')) ');
      DMESTOQUE.Alx.SQL.Add(' and ((subproduto.cod_cfopforaestado is null) OR (subproduto.cod_cfopforaestado = ''-1'')) ');
      DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      if DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 then
        XCFOP_OP := True
      else
        XCFOP_OP := False;

      //Edmar - 24/09/2014 - Verifica se o produto possui CFOP personalizada
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('  select count(itenspedven.cod_itenspedven) as CONT  from itenspedven ');
      DMESTOQUE.Alx.SQL.Add('  left join estoque on estoque.cod_estoque = itenspedven.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('  left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
      DMESTOQUE.Alx.SQL.Add('  where (subproduto.cod_cfopdentroestado is not null) and (subproduto.cod_cfopdentroestado <> -1) ');
      DMESTOQUE.Alx.SQL.Add('  and (subproduto.cod_cfopforaestado is not null) and (subproduto.cod_cfopforaestado <> -1) ');
      DMESTOQUE.Alx.SQL.Add('  and (itenspedven.cod_pedven=:codigo) ');
      DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      if DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 then
        XCFOP_PERSONALIZADO := True
      else
        XCFOP_PERSONALIZADO := False;
    end;
    //COMANDOS PARA ORDEM DE SERVIÇOS
    if XTipo = 'ORDEM' then
    begin
      //Verifica CFOP  para substituição tributaria
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      {
      DMESTOQUE.Alx.SQL.Add('   select count(itprodord.cod_itprodord) as CONT from itprodord ');
      DMESTOQUE.Alx.SQL.Add('   left join cst on itprodord.cod_cst = cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add('   where (cst.substituicao=''1'') and (itprodord.cod_ordem=:codigo) ');
      }
      DMESTOQUE.Alx.SQL.Add(' select count(itprodord.cod_itprodord) as CONT from itprodord ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itprodord.cod_cst = cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' left join estoque on estoque.cod_estoque = itprodord.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
      DMESTOQUE.Alx.SQL.Add(' where (cst.substituicao=''1'') and (itprodord.cod_ordem = :codigo) ');
      DMESTOQUE.Alx.SQL.Add(' and ((subproduto.cod_cfopdentroestado is null) OR (subproduto.cod_cfopdentroestado = ''-1'')) ');
      DMESTOQUE.Alx.SQL.Add(' and ((subproduto.cod_cfopforaestado is null) OR (subproduto.cod_cfopforaestado = ''-1'')) ');

      DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      if DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 then
        XCFOP_ST := True
      else
        XCFOP_ST := False;

      //Verifica CFOP  para icms operação propria
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      {
      DMESTOQUE.Alx.SQL.Add('   select count(itprodord.cod_itprodord) as CONT from itprodord ');
      DMESTOQUE.Alx.SQL.Add('   left join cst on itprodord.cod_cst =cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add('   where ((cst.substituicao<>''1'') or (cst.substituicao is null)) and (itprodord.cod_ordem=:codigo) ');
      }
      DMESTOQUE.Alx.SQL.Add(' select count(itprodord.cod_itprodord) as CONT from itprodord ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itprodord.cod_cst =cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' left join estoque on estoque.cod_estoque = itprodord.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
      DMESTOQUE.Alx.SQL.Add(' where ((cst.substituicao <> ''1'') or (cst.substituicao is null)) and (itprodord.cod_ordem= :codigo) ');
      DMESTOQUE.Alx.SQL.Add(' and ((subproduto.cod_cfopdentroestado is null) OR (subproduto.cod_cfopdentroestado = ''-1'')) ');
      DMESTOQUE.Alx.SQL.Add(' and ((subproduto.cod_cfopforaestado is null) OR (subproduto.cod_cfopforaestado = ''-1'')) ');
      DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      if DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 then
        XCFOP_OP := True
      else
        XCFOP_OP := False;

      //Edmar - 23/09/2014 - Verifica se o produto possui CFOP personalizada
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('  select count(itprodord.cod_itprodord) as CONT  from itprodord ');
      DMESTOQUE.Alx.SQL.Add('  left join estoque on estoque.cod_estoque = itprodord.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('  left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
      DMESTOQUE.Alx.SQL.Add('  where (subproduto.cod_cfopdentroestado is not null) and (subproduto.cod_cfopdentroestado <> -1) ');
      DMESTOQUE.Alx.SQL.Add('  and (subproduto.cod_cfopforaestado is not null) and (subproduto.cod_cfopforaestado <> -1) ');
      DMESTOQUE.Alx.SQL.Add('  and (itprodord.cod_ordem = :codigo) ');
      DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      if DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 then
        XCFOP_PERSONALIZADO := True
      else
        XCFOP_PERSONALIZADO := False;
    end;
    //COMANDOS PARA PEDIDO DE COMPRA
    if XTipo = 'PEDC' then
    begin
      //Verifica CFOP  para substituição tributaria
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' select count(itenspedc.cod_itenspedc) as CONT from itenspedc ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedc.cod_cst =cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' where (cst.substituicao=''1'') and (itenspedc.cod_pedcompra=:codigo) ');
      DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      if DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 then
        XCFOP_ST := True
      else
        XCFOP_ST := False;

      //Verifica CFOP  para icms operação propria
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' select count(itenspedc.cod_itenspedc) as CONT from itenspedc ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedc.cod_cst =cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' where ((cst.substituicao<>''1'') or (cst.substituicao is null)) and (itenspedc.cod_pedcompra=:codigo) ');
      DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      if DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 then
        XCFOP_OP := True
      else
        XCFOP_OP := False;
    end;
    //COMANDOS PARA ORDENS DE SERVIÇO
  except
    RegistraFalha('   CFOP: Falha ao selecionar cfops');
    Result := False;
  end;
  try
    //CONTROLE PARA VERIFICAÇÃO DA EXISTENCIA DE CST COM REDUÇÃO NA BASE DE CALCULO
         //COMANDOS PARA PEDIDO DE COMPRA
    if XTipo = 'PEDC' then
    begin
      //Verifica CFOP  para substituição tributaria
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' select count(itenspedc.cod_itenspedc) as CONT from itenspedc ');
      DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedc.cod_cst =cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add(' where (cst.REDUCAO=''1'') and (itenspedc.cod_pedcompra=:codigo) ');
      DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;
      if DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 then
        XCstReducao := True
      else
        XCstReducao := False;
    end;
  except
    RegistraFalha('   CST: Falha ao selecionar CST');
    Result := False;
  end;
end;

//Função para validar os produtos

function TFPadraoFiscal.ValidaProdutos: Boolean;
begin
  Result := True;

  //Verifica UN (unidades de venda e compra) para produtos
  if ValidaUNProdutos = False then
    Result := False;

  //Verifica CST para produtos
  if ValidaCstProdutos = False then
    Result := False;

  //Verificações de Configuração de CFOP
  if VerificaCfopProdutoLoja = False then
    Result := False;

  //Verificações de Configuração de CFOP
  if ValidaCfopProdutos = False then
    Result := False;

  //Valida NCM
  if ValidaNCMProdutos = False then
    Result := False;

  if ValidaAnpProdutos = False then
    Result := False;

end;

//Função para validar os serviços (Despesas adicionais)

function TFPadraoFiscal.ValidaDespadic: Boolean;
begin
  Result := True;
  try
    XCfopIntServ := '';
    XCfopExtServ := '';
    //13/03/2009: se em empresa estiver setado o ISS imprimir campos  relacionados
    if (DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency <= 0) then
    begin
      RegistraFalha('  Empresa não configurada com aliquota de ISS');
      Result := False;
      Exit;
    end;
    //verifica se a loja possui as devidas configurações de cfop para serviços
    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
      DMMACS.TLoja.FieldByName('CFOPINTSERV').AsString, '') = False then
    begin
      RegistraFalha('  Loja não configurada para CFOP interno de Serviços');
      Result := False;
      Exit;
    end
    else
    begin
      XCfopIntServ := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
    end;
    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
      DMMACS.TLoja.FieldByName('CFOPEXTSERV').AsString, '') = False then
    begin
      RegistraFalha('  Loja não configurada para CFOP externo de Serviços');
      Result := False;
      Exit;
    end
    else
    begin
      XCfopExtServ := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
    end;

    try
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('update despadic set despadic.cfop=:cfop, despadic.ALIQISSQN=:ALIQ');
      DMESTOQUE.Alx.SQL.Add('Where (despadic.gerador=' + #39 + XTipo + #39 +
        ') AND (despadic.cod_gerador=:COD_GERADOR)');
      DMESTOQUE.Alx.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.ParamByName('ALIQ').AsCurrency :=
        DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency;
      //Efetua tratamento das cfops de serviço conforme origem do cliente ou fornecedor
       //If XUfOrigem <> XUfDestino Then
      if not cbOperacaoInterna.Checked then
        DMESTOQUE.Alx.ParamByName('cfop').AsString := XCfopExtServ
          //como as duas ufs são diferentes aplica - se o cfop para outros estados
      else
        DMESTOQUE.Alx.ParamByName('cfop').AsString := XCfopIntServ;
          //como as duas ufs são iguais aplica - se o cfop para dentro do estado
      DMESTOQUE.Alx.ExecSQL;
      DMESTOQUE.TransacEstoque.CommitRetaining;
      XAliqIss := DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency;
    except
      DMESTOQUE.TransacEstoque.RollbackRetaining;
      Result := False;
      RegistraFalha('  Ocorreu falha ao atualizar Cfops dos serviços');
    end;
  except
    RegistraFalha('  - Erro ao validar CFOPs de serviços');
    Result := False;
  end;
end;

//Função para inicializar variáveis

function TFPadraoFiscal.InicializaVar: Boolean;
var
  SaidaEntrada: string;
begin
  Result := True;
  try
    if BuscaPeriodoFiscal = False then
      Result := False;

    xEnvioContingencia := False;
    //Inicializa variáveis de controle de CFOP (para verifica se cfop foi encontrada ou não)
    XCfopManual := False;
    XCFOP_OP := False;
    XCFOP_ST := False;
    XCFOP_SERV := False;
    //Inicializa Variaveis de Impostos
    XVlrBaseIcmsOp := 0;
    XVlrIcmsSt := 0;
    XVlrIcmsOp := 0;
    XVlrIcmsSt := 0;
    XvlrIpi := 0;
    XCod_Transp := -1;

    FMenu.XChaveNFe := '';
    //XEmiteNFCe := False;
    XCepPessoa := '';

    if XTipo = 'PEDC' then
      XCod_Pedido := DMENTRADA.WPedc.FieldByName('cod_pedcomp').AsInteger;
    if XTipo = 'PEDV' then
      XCod_Pedido := DMSAIDA.WPedv.FieldByName('cod_pedvenda').AsInteger;
    if XTipo = 'ORDEM' then
      XCod_Pedido := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;

    if EscrevePessoa = False then
      XValidado := False;

    //Inicializa checkbox de entrada saida
    cbentrada.Checked := False;
    cbentrada.Checked := False;
    //Inicializa os edits de substituição como somente leitura, ja que posteriormente ele poderá ser editavel
    EdBaseICMSST.ReadOnly := True;
    //EdVlrIcmsST.ReadOnly:=True;
    //Inicializa o codigo do pedido de acordo com a tabela correta e a view selecionada
    if XTipo = 'PEDC' then
    begin
      XCod_Pedido := DMENTRADA.WPedc.FieldByName('cod_pedcomp').AsInteger;
      XTabItemProd := DMENTRADA.TItemPC;
      XTabFiscal := DMENTRADA.TFiscPC;
      cbentrada.Checked := True; //Marca Nf como entrada

      //Paulo 08/03/2012: Calcula base sbstituida
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' select sum(itenspedc.BASEICMSSUBS) as valorBaseSt from itenspedc where itenspedc.cod_pedcompra=:codigo ');
      DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;

      //Repassa valores dos pedidos para a NF
      EdVlrIcmsST.ValueNumeric :=
        DMENTRADA.TPedC.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency;
      EdBaseICMSST.ValueNumeric :=
        DMESTOQUE.Alx.FieldByName('valorBaseSt').AsCurrency;
      EdVlrFrete.ValueNumeric :=
        DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency;
      CBFreteNF.Checked := True;
      EdOutrasDespesas.ValueNumeric :=
        DMENTRADA.TPedC.FieldByName('VLROUTROS').AsCurrency;
    end;
    if XTipo = 'PEDV' then
    begin
      XCod_Pedido := DMSAIDA.WPedv.FieldByName('cod_pedvenda').AsInteger;
      if ((FMenu.TIPOAUX = 'ECF') and
        ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
        or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
        or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')))
          then
        if DMSAIDA.WPedv.FieldByName('FISCO').AsString <> 'NFE2' then
          XNumECF := DMSAIDA.WPedv.FieldByName('NUMFISCAL').AsString
            //Se for primeira tentativa de reimpressão de ecf
        else
          XNumECF := DMSAIDA.TPedV.FieldByName('NUMECF').AsString
            //Se não for primeira tentativa de reimpressão de ecf
      else
        XNumECF := '';
          //Se não for reimpressão de ECF para nfe devemos zerar ou limpar o numero de ecf
      //DETERMINA O PROXIMO NUMERO FISCAL A SER IMPRESSO
      EdNumeroFiscal.Text := IntToStr(NfProxnumero);
      EdVlrIcmsST.ValueNumeric :=
        DMSAIDA.TPedV.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency;
      EdBaseICMSST.ValueNumeric :=
        DMSAIDA.TPedV.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency;
      EdVlrFrete.ValueNumeric :=
        DMSAIDA.TPedV.FieldByName('VLRFRETE').AsCurrency;
      CBFreteNF.Checked := True;
      EdOutrasDespesas.ValueNumeric :=
        DMSAIDA.TPedV.FieldByName('VLROUTROS').AsCurrency;
      EdVlrIpi.ValueNumeric := DMSAIDA.TPedV.FieldByName('VLRIPI').AsCurrency;

      XTabFiscal := DMSAIDA.TFiscPV;
      XTabItemProd := DMSAIDA.TItemPV;
      cbsaida.Checked := True; //Marca Nf como saida
      //Verifica se a empresa usuária é industria para assim aplicar os calculos corretos
      if DMMACS.TEmpresa.FieldByName('INDUSTRIA').AsString = '1' then
        XEmpresaInustria := True
      else
        XEmpresaInustria := False;

    end;
    if XTipo = 'ORDEM' then
    begin
      XCod_Pedido := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
      //DETERMINA O PROXIMO NUMERO FISCAL A SER IMPRESSO
      EdNumeroFiscal.Text := IntToStr(NfProxnumero);
      EdNumeroFiscal.Enabled := True;
      XTabItemProd := DMServ.TPOrd;
      XTabFiscal := DMServ.TFiscOrd;
      cbsaida.Checked := True; //Marca Nf como saida
    end;

    //inicializa datas
    EdDtEmissao.Text := DateToStr(Date());
    if XTipo = 'PEDC' then
    begin
      DMENTRADA.TPedC.Close;
      DMENTRADA.TPedC.SQL.Clear;
      DMENTRADA.TPedC.SQL.Add(' Select * from pedcompra where pedcompra.cod_pedcomp=:codigo ');
      DMENTRADA.TPedC.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMENTRADA.TPedC.Open;
      if not DMENTRADA.TPedC.IsEmpty then
      begin
        if XAtualizaNota <> 1 then
          //Jônatas 31/07/2013 - manter a data do edit DtSaidaEntrada para não ter que trocar toda vez que atualizar
          EdDtsaidaEntrada.Text :=
            DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsString;
        EdNumeroFiscal.Text :=
          DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString;
        if FMenu.XNotaEntrada = True then
          EdNumeroFiscal.Text := IntToStr(NfProxnumero);
        EdVlrFrete.ValueNumeric :=
          DMENTRADA.TPedC.FieldByName('vlrfrete').AsCurrency;
        CBFreteNF.Checked := True;
        if DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency > 0 then
        begin
          EdVlrFrete.ValueNumeric :=
            DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency;
          CBFreteNF.Checked := True;
        end;
        //Paulo 12/05/2011: Se não for NFe poder mudar a númeração
        if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'NFe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
            then
          EdNumeroFiscal.Enabled := True;
      end
      else
      begin
        if XAtualizaNota <> 1 then
          //Jônatas 31/07/2013 - manter a data do edit DtSaidaEntrada para não ter que trocar toda vez que atualizar
          EdDtsaidaEntrada.Text := DateToStr(Date());
      end;
      if XImportNfe = 1 then
        EdDtEmissao.Text := (Copy(FMenu.XDTREF, 9, 2)) + '/' +
          (Copy(FMenu.XDTREF, 6, 2)) + '/' + (Copy(FMenu.XDTREF, 1, 4));
    end
    else
    begin
      EdDtsaidaEntrada.Text := DateToStr(Date());
    end;
    EdHoraSaida.Text := TimeToStr(Time());
    //EscrevePessoa;
   //Se o numero fiscal retornado for -1 houve falha na inserção do numero fiscal
    if EdNumeroFiscal.Text = '-1' then
    begin
      EdNumeroFiscal.Text := IntToStr(NfProxnumero);
      MessageDlg('Verique se o Sistema capturou corretamente a numeração',
        mtWarning, [mbOK], 0);
    end;

    //Edmar - 14/05/2015 - atribui a aliquota do icms para o calculos dos icms dos produtos
    XAliqIcms := DMMACS.TEmpresa.FieldByName('ICMS').AsCurrency;

    //Valida Codigo do pedido
    if XCod_Pedido <= 0 then
      RegistraFalha('  Cabeçalho: Pedido sem código, tente gravar o pedido e consultar novamente');
  except
    RegistraFalha('  FALHA CRÍTICA AO INICIALIZAR VARIÁVEIS. Reinicie o sistema, se o problema persistir chame suporte técnico no sistema');
  end;
end;

//Função que chama todas as demais atualizando os dados na tela

function TFPadraoFiscal.Atualiza: Boolean;
{var
  xUtil_NFSe_DLL: OleVariant;}
begin
  //Inicializa variavel de controle geral de validação como True, indicando que a validação ocorreu com sucesso
    //prepara memo de erros
  if FMenu.XTIPOBOLTO = 'PEDC' then
    XTipo := 'PEDC';
  if FMenu.XTIPOBOLTO = 'PEDV' then
    XTipo := 'PEDV';
  XValidado := True;
  ShErro.Visible := False;
  PErro.Visible := False;
  EdErro.Visible := False;
  MErros.Clear;
  MErros.Lines.Add('Falhas: ');

  //Limpa edits de transportadora
  LimpaLabelTransp;
  //Limpa edits de valores de impostos
  LimpaValoresImpostos;

  if InicializaVarUF(XCod_Pedido, XTipo) = False then
  begin
    RegistraFalha('   Cabeçalho: Empresa Usuária do sistema se apresenta com irregularidade de UF');

    if DMMACS.TALX.IsEmpty then
      RegistraFalha('   Cabeçalho: Cliente/Fornecedor se apresenta com irregularidade de UF');

    if XUf = '' then
      RegistraFalha('   Cabeçalho: Cliente/Fornecedor se apresenta com irregularidade de UF');

    XValidado := False;
  end;

  //verifica dados da empresa
  if ValidaDadosEmpresa = False then
    Result := False;

  if EscrevePessoa = False then
    XValidado := False;

  if DMMACS.TLoja.FieldByName('SERVNFE').AsString = '0' then
  begin
    if (xExisteServ) and (XTipo = 'ORDEM') then
    begin
      //Edmar - 05/12/2013 - Valida serviços da nfse
      if not validaNfse then
        XValidado := false;
    end;
  end;

  {If InicializaVar = False Then
      XValidado := False;}

  if XEmiteNFCe then
    XUfDestino := XUfOrigem;

  // Atualiza cst ou csosn dos itens se necessário
  if XEmpresaInustria = True then
    AtualizaCstCsosn(XCod_Pedido, XTipo);

  //Valida Dados de Produto
  XValorCreditoIcms := 0;
  if ValidaProdutos = False then
  begin
    XValidado := False;
    Result := False;
  end;

  //Calcula Impostos individualmente para cada item
  if XTipo <> 'PEDC' then
  begin
    //Pedidos de compra possuem tratamento diferente para os itens
    CalcDescProdutosNf;

    //Paulo 10/03/2011: Se não permitir serviços não escreve os itens de serviço
    if DMMACS.TLoja.FieldByName('SERVNFE').AsString = '0' then
      CalcDescServicosNf;

    If fmenu.XDevolucao = False then
    Begin
       if CalcImpostosProdutosNF = False then
           Result := False;

       if CalcImpostoIcmsUfDestino = false then
           Result := false;

       CalcDiferencialST;
    End;
  end
  else
  begin
    ZeraIcmsNegativosProdutosNF;
  end;

  //Rateio de Substituição Tributária
  if XTipo = 'PEDC' then
  begin
    //Calcula Impostos totais para a NF, importante neste momento para verificar a base de icms
    CalcDescProdutosNf;
    CalcImpostosNF;
    if RateioStEntrada = False then
      Result := False;

    //Paulo 23/09/2011: Escreve os itens de produtos
    EscreveItensConsumo;
    if (XEstrangeiro) then
    begin
      if not ValidaDadosImportacao then
        Result := False;
    end;
  end
  else
    FiltraAdicaoImportacao;

  if FMenu.TIPOREL <> 'NFSE' then
  begin
    if EscreveItensProduto = False then
      XValidado := False;
    if AtualizaValorTotalTributacaoItem = False then
      XValidado := False;
    //Repetimos o escreve itens para pegar as alterações feitas na atualização do AtualizaValorTotalTributacaoItem
    if EscreveItensProduto = False then
      XValidado := False;
  end;

  //Paulo 10/03/2011: Se não permitir serviços não escreve os itens de serviço
  if (DMMACS.TLoja.FieldByName('SERVNFE').AsString <> '1') or
    (DMMACS.TLoja.FieldByName('SERVNFE').AsString = '') then
  begin
    if EscreveItensServ = False then
      XValidado := False;
  end;

  if EscreveCfops = False then
    XValidado := False;
  //Calcula Impostos totais para a NF
  if CalcImpostosNF = False then
    Result := False;

  CalcBCRetencaoPisCofins;

  //chama função que efetua o somatorio de todas as variaveis principais para obter o calculo total da NF
  if CalcTotalNF = False then
    Result := False;

  if (XImpLig = false) then
  begin
    ValidaDadosAdicionais;
    InfoAdicionaisUfDestino;
  end;

  if ValidaReservadoFisco = False then
    XValidado := False;

  if not ValidaDevolucao then
    XValidado := False;

  if XFlagNfe = 1 then
  begin
    EdNumeroFiscal.Text := IntToStr(XNumfiscNFe);
    EdNumeroFiscal.Enabled := False;
    XFlagNfe := 0;
  end;

  //Edmar - 10/06/2014 - Testa se emite NFS-e e é ordem de serviço e faz teste da DLL
  if (DMMACS.TLoja.FieldByName('GERANFSE').AsString = '1') and (XTipo = 'ORDEM')
    then
  begin
    try
      //Edmar - 10/06/2014 - Tenta instanciar a DLL
        //xUtil_NFSe_DLL := CreateOleObject('NFSe_Util.util');

      if not FileExists('NFSe_Util.dll') then
        RegistraFalha('  Para envio da NFS-e é necessário que a DLL esteja registrada. Contate o suporte!');

    except //Edmar - 10/06/2014 - Se der erro quer dizer que ela não existe
    end;
  end;
  //Edmar - 06/05/2015 - Processa o valor do frete proporcionalmente aos itens
  if not RateioFrete then
    RegistraFalha(' Falha ao calcular o rateio do Frete.');

  //Edmar - 07/05/2015 - Processa o valor das despesas proporcionalmente aos itens
  if not RateioOutDespesas then
    RegistraFalha(' Falha ao calcular o rateio de Outras Despesas Acessórias.');

  if DMMACS.TEmpresa.FieldByName('VALOR_MAX_NFCE').AsString <> '' then
  begin
    if (AnsiContainsText(Trim(LNomePessoa.Caption), 'CONSUMIDOR')) and
      (EdTotalNotaFiscal.ValueNumeric >
      DMMACS.TEmpresa.FieldByName('VALOR_MAX_NFCE').AsCurrency) then
    begin
      RegistraFalha(' - Falha: A NFC-e excedeu o valor máximo (R$' +
        DMMACS.TEmpresa.FieldByName('VALOR_MAX_NFCE').AsString +
        '). Favor selecionar um Cliente válido.');
    end;
  end;

  if XEmiteNFCe then
  begin

  end;

  //Paulo 05/03/2011: Mostra a fatura
  MostraFatura;

  //Edmar - 29/10/2015 - Verifica se vai mostrar o botão de rateio
  if (FMenu.XSimplesRemessa = True) or (FMenu.XRemessaGarantia = True) or
    (FMenu.XDevolucao = True)
    or (FMenu.XOutrosFisc = True) or (FMenu.XOutrosEnt = True) or
      (FMenu.XNfceReferenciada = True) then
  begin
    EdVlrIpi.ReadOnly := False;
    EdBaseICMSST.ReadOnly := False;
    btnRateio.Visible := True;
  end
  else
  begin
    EdVlrIpi.ReadOnly := True;
    EdBaseICMSST.ReadOnly := True;
    btnRateio.Visible := False;
  end;
end;

//Função utilizada para escrever todos os itens de Serviço/Desepesas adicionais

function TFPadraoFiscal.EscreveItensServ: Boolean;
var
  xdesc: double;
begin

  Result := True;

  try
    if CalcDescServicosNf = False then
      Result := False;
    if ValidaDespadic = True then
    begin
      DMESTOQUE.TSlaveServ.Close;
      DMESTOQUE.TSlaveServ.SQL.Clear;
      DMESTOQUE.TSlaveServ.SQL.Add(' Select docfisord.vlrtotserv, despadic.descnf, despadic.cod_despadic CodigoDespesa, despadic.despesa as servico,despadic.cst , despadic.nfse_status STATUS, despadic.nfse_codservico CodigoServicoNfse,');
      DMESTOQUE.TSlaveServ.SQL.Add(' despadic.cfop, despadic.qtd,despadic.unidade UN, despadic.desconto Desconto, despadic.vlrfinal AS ValorUnit, despadic.vlrtotfin as Total, servico_nfse.descricao DescricaoServico, docfisord.nfse_numerodocumento NumDoc, ');
      DMESTOQUE.TSlaveServ.SQL.Add(' ordem.totserv, ordem.descserv, despadic.vlrfinal from despadic ');
      DMESTOQUE.TSlaveServ.SQL.Add('left join servico_nfse on servico_nfse.num_servico = despadic.nfse_codservico');
      DMESTOQUE.TSlaveServ.SQL.Add('left join docfisord on docfisord.cod_ordem = despadic.cod_gerador ');
      DMESTOQUE.TSlaveServ.SQL.Add('left join ordem on ordem.cod_ordem = docfisord.cod_ordem ');
      DMESTOQUE.TSlaveServ.SQL.Add('Where (despadic.gerador=' + #39 + XTipo + #39
        + ') AND (despadic.cod_gerador=:COD_GERADOR)');
      DMESTOQUE.TSlaveServ.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
      DMESTOQUE.TSlaveServ.Open;

      if not DMESTOQUE.TSlaveServ.IsEmpty then
      begin
        XCFOP_SERV := True;
        if DMMACS.TLoja.FieldByName('IMPEDIRSERVICOS').AsString = '1' then
        begin
          XValidado := False;
          RegistraFalha('Serviços: Existe uma configuração em loja que impede a existência de serviços nesta NF');
        end;
      end;
    end
    else
    begin
      Result := False;
    end;
    DbGridServicos.DataSource := DMESTOQUE.DSSlaveServ;

  except
    Result := False;
  end;

end;

//Paulo 23/09/2011: Função utilizada para escrever todos os itens de Produtos de Consumo

function TFPadraoFiscal.EscreveItensConsumo;
begin
  DMESTOQUE.TRel.Close;
  DMESTOQUE.TRel.SQL.Clear;
  DMESTOQUE.TRel.SQL.Add('Select despadic.despesa as consumo,despadic.cst ,despadic.cfop, despadic.qtd,despadic.unidade, despadic.desconto, despadic.vlrfinal AS vlrunit, despadic.vlrtotfin as TOTAL from despadic ');
  DMESTOQUE.TRel.SQL.Add('Where (despadic.gerador=''CONSUMOPC'') AND (despadic.cod_gerador=:COD_GERADOR)');
  DMESTOQUE.TRel.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
  DMESTOQUE.TRel.Open;

  DbGridConsumo.DataSource := DMESTOQUE.DRel;

  if ValidaCfopConsumo = true then
    Result := True
  else
    Result := False;
end;

//Função utilizada para Calcular e total da Nota Fiscal

function TFPadraoFiscal.CalcTotalNF: Boolean;
var
  XFrete: Real;
begin
  //Insere numero do documento fiscal
  if XTipo = 'PEDC' then
  begin
    //EdNumeroFiscal.Text:=DMENTRADA.TPedC.FieldByName('numfiscal').AsString;
    if FMenu.XNotaEntrada = True then
      EdNumeroFiscal.Text := IntToStr(NfProxnumero);
  end;
  if CBFreteNF.Checked = True then
    XFrete := EdVlrFrete.ValueNumeric
  else
    XFrete := 0;
  //Soma todas as Variáveis
  if (XTipo = 'PEDC') then
  begin
    XTotalNF := XTotalProdComDesc + XTotalServComDesc + XVlrIcmsSt + XFrete +
      XvlrIpi + EdOutrasDespesas.ValueNumeric //Se for pedido de compra soma o St
  end
  else
  begin
    //Caso esteja marcado para ignorar o uso de serviços executa a segunda condição
        {If (DMMACS.TLoja.FieldByName('SERVNFE').AsString <> '1') Or (DMMACS.TLoja.FieldByName('SERVNFE').AsString = null) Then //Jônatas 16/08/2013 - Mudado pra OR e =null
            XTotalNF := EdVlrIcmsST.ValueNumeric + XTotalProdComDesc + XTotalServComDesc + XFrete + XvlrIpi + EdOutrasDespesas.ValueNumeric //se for venda não soma st
        Else}
    XTotalNF := EdVlrIcmsST.ValueNumeric + XTotalProdComDesc + XFrete + XvlrIpi
      + EdOutrasDespesas.ValueNumeric; //se for venda não soma st
  end;
  //XVlrAliquotaTotTributa := (100 * XValorTotalAproxTributacao) / XTotalProdSemDesc; { TODO : Jônatas 16/08/2013 - Caso não haja produtos dá erro de divisão por 0 }

  try
    XAliqTotTribEstadual := (100 * XValorTotalAproxTributacaoEstadual) /
      XTotalProdSemDesc;
    XAliqTotTribNacional := (100 * XValorTotalAproxTributacaoNacional) /
      XTotalProdSemDesc;
  except
  end;

    if xEmpresaRetemImpostos = True
    Then Begin
       xBCRetencaoImpostos := XTotalNF - XTOTIPI - XTOTST;
       If (xOrgaoMunicipalEstadual) or (xOrgaoFederal)
       Then Begin
           xValorRetencaoIrrf          := (xBCRetencaoImpostos * xAliqRetemIRRF)/100;
           edBCRetido.ValueNumeric     := xBCRetencaoImpostos;
           edIrrfRetido.ValueNumeric   := xValorRetencaoIrrf;
       End;

       If xOrgaoFederal
       Then Begin
           xValorRetencaoCsll      := (xBCRetencaoImpostos * xAliqRetemCsll)/100;
           xValorRetencaoPis       := (xBCRetencaoImpostos * xAliqRetemPis)/100;
           xValorRetencaoCofins    := (xBCRetencaoImpostos * xAliqRetemCofins)/100;

           edPISRetido.ValueNumeric    := xValorRetencaoPis;
           edCsllRetido.ValueNumeric   := xValorRetencaoCsll;
           edCofinsRetido.ValueNumeric := xValorRetencaoCofins;
       End;
       xValorTotalRetencao := xValorRetencaoIrrf + xValorRetencaoCsll + xValorRetencaoPis + xValorRetencaoCofins;
       If cbDeduzirRetencoes.Checked = true Then
           XTotalNF := XTotalNF - xValorTotalRetencao
    End; 


  EdTotalNotaFiscal.ValueNumeric := XTotalNF;
end;

//Função utilizada para Selecionar as tabelas Master (pedido de venda, pedido de compra e ordem)

function TFPadraoFiscal.SelecionaTabelasPedidos: Boolean;
begin
  Result := True;
  if XTipo = 'PEDV' then
  begin
    if FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA',
      IntToStr(XCod_Pedido), '') = False then
    begin
      Result := False;
      RegistraFalha('  Seleção: Falha ao selecionar dados do pedido de venda');
    end;
  end;
  if XTipo = 'PEDC' then
  begin
    if FiltraTabela(DMENTRADA.TPedC, 'pedcompra', 'cod_pedcomp',
      IntToStr(XCod_Pedido), '') = False then
    begin
      Result := False;
      RegistraFalha('  Seleção: Falha ao selecionar dados do pedido de compra');
    end;
  end;
  if XTipo = 'ORDEM' then
  begin
    if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCod_Pedido), '')
      = False then
    begin
      Result := False;
      RegistraFalha('  Seleção: Falha ao selecionar dados do pedido de ordem');
    end;
    //Filtra se o pedido tem serviço cadastrado
    if (FiltraTabela(DMSAIDA.TAlx, 'DESPADIC', 'COD_GERADOR',
      IntToStr(XCod_Pedido), '')) = True then
    begin
      XServicoOp := True;
    end;
  end;
end;

//Função utilizada para Calcular e dividir o desconto proporcialmente da NF entre os serviços

function TFPadraoFiscal.CalcDescServicosNf: Boolean;
var
  XTotalDescont, XPercDesconto, xValorTotalDesconto: Real;
begin
  Result := True;
  try
    XTotalServSemDesc := 0;
    XTotalServComDesc := 0;
    xValorTotalDesconto := 0;
    xValorTotalServico := 0;
    if XTipo = 'ORDEM' then
    begin
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select despadic.cod_despadic, despadic.vlrtotfin, despadic.vlrfinal, despadic.qtd from despadic where (despadic.GERADOR=''ORDEM'') AND (DESPADIC.COD_GERADOR=:Codigo)  AND ((despadic.nfse_status<>' + '1' + ') or (despadic.nfse_status is null))');
      DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;

      DMESTOQUE.Alx.First;
      while not DMESTOQUE.Alx.Eof do
      begin
        XTotalDescont := 0;
        XTotalServSemDesc := DMESTOQUE.Alx.fieldbyName('vlrfinal').AsCurrency *
          DMESTOQUE.Alx.fieldbyName('qtd').AsCurrency;
        XTotalServComDesc := DMESTOQUE.Alx.fieldbyName('vlrtotfin').AsCurrency;

        XTotalDescont := XTotalServSemDesc - XTotalServComDesc;

        DMESTOQUE.Alx1.Close;
        DMESTOQUE.alx1.SQL.Clear;
        DMESTOQUE.Alx1.SQL.Add('update despadic set despadic.descnf = :desc where cod_despadic = :cod');
        DMESTOQUE.Alx1.ParamByName('desc').AsCurrency := XTotalDescont;
        DMESTOQUE.Alx1.ParamByName('cod').AsString :=
          DMESTOQUE.Alx.FieldByName('cod_despadic').AsString;

        DMESTOQUE.Alx1.ExecSQL;
        //           DMESTOQUE.Alx1.Transaction.CommitRetaining;
        DMESTOQUE.TransacEstoque.CommitRetaining;

        DMESTOQUE.Alx.Next;

        xValorTotalDesconto := xValorTotalDesconto + XTotalDescont;

        xValorTotalServico := xValorTotalServico + XTotalServComDesc;
      end;

      DMESTOQUE.Alx1.Close;
      DMESTOQUE.alx1.SQL.Clear;
      DMESTOQUE.Alx1.SQL.Add('update docfisord set docfisord.vlrdesconto = :desc where docfisord.cod_ordem = :ord');
      DMESTOQUE.Alx1.ParamByName('desc').AsCurrency := xValorTotalDesconto;
      DMESTOQUE.Alx1.ParamByName('ord').AsInteger := XCod_Pedido;

      DMESTOQUE.Alx1.ExecSQL;
      //        DMESTOQUE.Alx1.Transaction.CommitRetaining;
      DMESTOQUE.TransacEstoque.CommitRetaining;

      //Edmar - 24/12/2013 - Trecho comentado para ajustar o calculos do desconto da nfse
        {//Soma Total de Serviços Para NF sem os descontos
          DMESTOQUE.Alx.Close;
          DMESTOQUE.Alx.SQL.Clear;
          DMESTOQUE.Alx.SQL.Add('  Select sum(despadic.VLRTOTFIN) as TOTAL from despadic where (despadic.GERADOR=''ORDEM'') AND (DESPADIC.COD_GERADOR=:Codigo)');
          DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
          DMESTOQUE.Alx.Open;
          If Not DMESTOQUE.Alx.IsEmpty
              Then Begin
              XTotalServSemDesc := DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency;
              XTotalServComDesc := DMServ.tOrd.FieldByName('totserv').AsCurrency; //Verifica o Total de produto para a nota com desconto;
              EdVlrServicos.ValueNumeric := XTotalServComDesc;
          End;

       //Verifica diferença entre o total de produtos sem descontos para o com descontos para ratear diferença entre os produtos
          If XTotalServSemDesc <> XTotalServComDesc
              Then Begin
              CalcPercent(0, XTotalServSemDesc - XTotalServComDesc, XTotalServSemDesc, 'D');
              XPercDesconto := AlxPercento;
              XTotalDescont := XTotalServSemDesc - XTotalServComDesc;
              DMESTOQUE.TDesp.Close;
              DMESTOQUE.TDesp.sql.Clear;
              DMESTOQUE.TDesp.SQL.Add(' Select * from despadic where (despadic.gerador=''ORDEM'') and (COD_GERADOR=:CODIGO) order BY despadic.VLRTOTFIN');
              DMESTOQUE.TDesp.ParamByName('codigo').AsInteger := XCod_Pedido;
              DMESTOQUE.TDesp.Open;
              DMESTOQUE.TDesp.Last;
              DMESTOQUE.TDesp.First;
              While Not DMESTOQUE.TDesp.Eof Do
              Begin
                  If DMESTOQUE.TDesp.RecNo = DMESTOQUE.TDesp.RecordCount
                      Then Begin
                      DMESTOQUE.TDesp.Edit;
                      DMESTOQUE.TDesp.FieldByName('DESCNF').AsCurrency := XTotalDescont;
                      DMESTOQUE.TDesp.Post;
                  End
                  Else Begin
                      DMESTOQUE.TDesp.Edit;
                      DMESTOQUE.TDesp.FieldByName('DESCNF').AsCurrency := (DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency * XPercDesconto) / 100;
                      DMESTOQUE.TDesp.Post;
                  End;
                  XTotalDescont := XTotalDescont - DMESTOQUE.TDesp.FieldByName('DESCNF').AsCurrency;
                  DMESTOQUE.TDesp.Next;
              End;
              Try
                  DMESTOQUE.TransacEstoque.CommitRetaining;
              Except
                  DMESTOQUE.TransacEstoque.RollbackRetaining;
                  Result := False;
                  RegistraFalha('   Falha ao calcular desconto proporcional da nota aos serviços');
              End;
          End;}
      CalcTotalNF;
    end;
  except
    Result := False;
    RegistraFalha('   Falha ao calcular desconto proporcional da nota aos serviços');
  end;
end;

//Função utilizada para Calcular e dividir o desconto proporcialmente da NF entre todos os produtos

function TFPadraoFiscal.CalcDescProdutosNf: Boolean;
var
  XTotalDescont, XPercDesconto: Real;
  XDiferencaValores: Real;
  XVLR_COM_DESCONTO, XVLR_SEM_DESCONTO: Real;
begin
  XTotalDescont := 0;
  //Soma Total de Produtos Para NF sem os descontos
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  if XTipo = 'PEDV' then
  begin
    DMESTOQUE.Alx.SQL.Add(' Select sum(itenspedven.valortotal) as TOTAL from itenspedven where itenspedven.cod_pedven=:codigo ');
  end;
  if XTipo = 'ORDEM' then
  begin
    DMESTOQUE.Alx.SQL.Add('  Select sum(itprodord.total) as TOTAL from itprodord where (itprodord.cod_ordem=:codigo) and ((itprodord.impressonfse<>''0'') or (itprodord.impressonfse is null))  ');
  end;

  if XTipo = 'PEDC' then
  begin
    DMESTOQUE.Alx.SQL.Add(' Select sum(itenspedc.valortotal) as TOTAL from itenspedc where itenspedc.cod_pedcompra=:codigo ');
    //Verifica o Total de produto para a nota com desconto;
    XTotalProdComDesc := DMENTRADA.TPedC.FieldByName('valor').AsCurrency;
  end;

  DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
  DMESTOQUE.Alx.Open;
  if not DMESTOQUE.Alx.IsEmpty then
  begin
    if XTipo = 'PEDV' then
      XTotalProdComDesc := DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency -
        DMSAIDA.TPedV.FieldByName('descmoe').AsCurrency;
        //Verifica o Total de produto para a nota com desconto;
    if XTipo = 'ORDEM' then
      XTotalProdComDesc := DMServ.tOrd.FieldByName('totprod').AsCurrency;
        //Verifica o Total de produto para a nota com desconto;
    if ((XTipo = 'ORDEM') and (DMMacs.TLoja.FieldByName('ATIVIDADE').AsString =
      'LOCAÇÃO')) then
      XTotalProdComDesc := 0;

    if XTipo = 'PEDC' then
      XTotalProdComDesc := DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency -
        DMENTRADA.TPedC.FieldByName('descmoe').AsCurrency;
        //Verifica o Total de produto para a nota com desconto;

    XTotalProdSemDesc := DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency;
    EdTotalProdutos.ValueNumeric := XTotalProdSemDesc;
    EdDesconto.ValueNumeric := XTotalDescont;
  end;

  //Verifica diferença entre o total de produtos sem descontos para o com descontos para ratear diferença entre os produtos
  if ((XTotalProdSemDesc <> XTotalProdComDesc) and
    (DMMacs.TLoja.FieldByName('ATIVIDADE').AsString <> 'LOCAÇÃO')) then
  begin
    CalcPercent(0, XTotalProdSemDesc - XTotalProdComDesc, XTotalProdSemDesc,
      'D');
    XPercDesconto := AlxPercento;
    XTotalDescont := XTotalProdSemDesc - XTotalProdComDesc;
    //EdDesconto.ValueNumeric:=XTotalDescont;
    EdDesconto.ValueNumeric := XTotalDescont;
    if XTipo = 'PEDV' then
    begin
      DMSAIDA.TItemPV.Close;
      DMSAIDA.TItemPV.sql.Clear;
      DMSAIDA.TItemPV.SQL.Add(' Select * from itenspedven where itenspedven.cod_pedven=:codigo order by itenspedven.valortotal ');
      DMSAIDA.TItemPV.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMSAIDA.TItemPV.Open;
      DMSAIDA.TItemPV.Last;
      DMSAIDA.TItemPV.First;
      while not DMSAIDA.TItemPV.Eof do
      begin
        if DMSAIDA.TItemPV.RecNo = DMSAIDA.TItemPV.RecordCount then
        begin
          DMSAIDA.TItemPV.Edit;
          DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency := XTotalDescont;
          DMSAIDA.TItemPV.Post;
          if (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency > 0) and
            (XTotalDescont > 0) then
          begin
            if (fmenu.XSimplesRemessa = false) and (fmenu.XRemessaGarantia =
              false) and (FMenu.XDevolucao = false) and (FMenu.XOutrosFisc = false)
              then
            begin
              DMSAIDA.TItemPV.Edit;
              DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency :=
                DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency -
                XTotalDescont;
              DMSAIDA.TItemPV.FieldByName('vlricms').AsCurrency :=
                (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency *
                DMSAIDA.TItemPV.FieldByName('aliqicms').AsCurrency) / 100;
              DMSAIDA.TItemPV.Post;
            end;
          end;
        end
        else
        begin
          DMSAIDA.TItemPV.Edit;
          DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency :=
            (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency * XPercDesconto)
            / 100;
          DMSAIDA.TItemPV.Post;
          if (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency > 0) and
            (DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency > 0) then
          begin
            DMSAIDA.TItemPV.Edit;
            DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency :=
              DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency -
              DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency;
            DMSAIDA.TItemPV.FieldByName('vlricms').AsCurrency :=
              (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency *
              DMSAIDA.TItemPV.FieldByName('aliqicms').AsCurrency) / 100;
            DMSAIDA.TItemPV.Post;
          end;
        end;
        XTotalDescont := XTotalDescont -
          DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency;
        DMSAIDA.TItemPV.Next;
      end;
      try
        DMSAIDA.IBT.CommitRetaining;
      except
        DMSAIDA.IBT.RollbackRetaining;
        Result := False;
        RegistraFalha('   Falha ao calcular desconto proporcional da nota aos produtos');
      end;
    end;
    if XTipo = 'ORDEM' then
    begin
      DMServ.TPOrd.Close;
      DMServ.TPOrd.sql.Clear;
      DMServ.TPOrd.SQL.Add(' Select * from itprodord where (itprodord.cod_ordem=:codigo) and ((itprodord.impressonfse<>''0'') or (itprodord.impressonfse is null)) order by itprodord.total ');
      DMServ.TPOrd.ParamByName('codigo').AsInteger := XCod_Pedido;
      //DMServ.TPOrd.ParamByName('impressonfse').AsString := '0';
      DMServ.TPOrd.Open;
      DMServ.TPOrd.Last;
      DMServ.TPOrd.First;
      while not DMServ.TPOrd.Eof do
      begin
        if DMServ.TPOrd.RecNo = DMServ.TPOrd.RecordCount then
        begin
          DMServ.TPOrd.Edit;
          DMServ.TPOrd.FieldByName('DESCNF').AsCurrency := XTotalDescont;
          DMServ.TPOrd.Post;
          if (DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency > 0) and
            (DMServ.TPOrd.FieldByName('DESCNF').AsCurrency > 0) then
          begin
            DMServ.TPOrd.Edit;
            DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency :=
              DMServ.TPOrd.FieldByName('total').AsCurrency -
              DMServ.TPOrd.FieldByName('DESCNF').AsCurrency;
            DMServ.TPOrd.FieldByName('vlricms').AsCurrency :=
              (DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency *
              DMServ.TPOrd.FieldByName('aliqicms').AsCurrency) / 100;
            DMServ.TPOrd.Post;
          end;
        end
        else
        begin
          DMServ.TPOrd.Edit;
          DMServ.TPOrd.FieldByName('DESCNF').AsCurrency :=
            (DMServ.TPOrd.FieldByName('total').AsCurrency * XPercDesconto) / 100;
          DMServ.TPOrd.Post;
          if (DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency > 0) and
            (DMServ.TPOrd.FieldByName('DESCNF').AsCurrency > 0) then
          begin
            DMServ.TPOrd.Edit;
            DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency :=
              DMServ.TPOrd.FieldByName('total').AsCurrency -
              DMServ.TPOrd.FieldByName('DESCNF').AsCurrency;
            DMServ.TPOrd.FieldByName('vlricms').AsCurrency :=
              (DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency *
              DMServ.TPOrd.FieldByName('aliqicms').AsCurrency) / 100;
            DMServ.TPOrd.Post;
          end;
        end;
        XTotalDescont := XTotalDescont -
          DMServ.TPOrd.FieldByName('DESCNF').AsCurrency;
        DMServ.TPOrd.Next;
      end;
      try
        DMSAIDA.IBT.CommitRetaining;
      except
        DMSAIDA.IBT.RollbackRetaining;
        Result := False;
        RegistraFalha('   Falha ao calcular desconto proporcional da nota aos produtos');
      end;
    end;

    if XTipo = 'PEDC' then
    begin
      DMENTRADA.TItemPC.Close;
      DMENTRADA.TItemPC.sql.Clear;
      DMENTRADA.TItemPC.SQL.Add('  Select * from  itenspedc where itenspedc.cod_pedcompra=:codigo order by itenspedc.valortotal ');
      DMENTRADA.TItemPC.ParamByName('codigo').AsInteger := XCod_Pedido;
      DMENTRADA.TItemPC.Open;
      DMENTRADA.TItemPC.Last;
      DMENTRADA.TItemPC.First;
      while not DMENTRADA.TItemPC.Eof do
      begin
        if DMENTRADA.TItemPC.RecNo = DMENTRADA.TItemPC.RecordCount then
        begin
          DMENTRADA.TItemPC.Edit;
          DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency := XTotalDescont;
          DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency :=
            DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency -
            ((DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency * XPercDesconto)
            / 100);
          DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency :=
            DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency - XTotalDescont;
          DMENTRADA.TItemPC.Post;
        end
        else
        begin
          DMENTRADA.TItemPC.Edit;
          DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency :=
            (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency *
            XPercDesconto) / 100;
          DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency :=
            DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency -
            ((DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency * XPercDesconto)
            / 100);
          DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency :=
            DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency -
            ((DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency * XPercDesconto)
            / 100);
          DMENTRADA.TItemPC.Post;
        end;
        if (DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency < 0) or
          (DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency < 0) then
        begin
          DMENTRADA.TItemPC.Edit;
          DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency := 0;
          DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency := 0;
          DMENTRADA.TItemPC.Post;
        end;
        XTotalDescont := XTotalDescont -
          DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency;
        DMENTRADA.TItemPC.Next;
      end;
      try
        DMENTRADA.IBT.CommitRetaining;
      except
        DMENTRADA.IBT.RollbackRetaining;
        Result := False;
        RegistraFalha('   Falha ao calcular desconto proporcional da nota aos produtos');
      end;
    end;
  end
  else
  begin
    // só recalcula o desconto se não está importando o xml da nf-e
    if XImportNfe = 0 then
    begin
      //Edmar - 30/10/2015 - Quando o valor de produto com e sem desconto for o mesmo,
      //verifica se não foi informado um desconto diretamente no produto
      //
      //soma todos os itens (valor total e unitario * quantidade)
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      if XTipo = 'PEDV' then //PEDIDO DE VENDA
        DMESTOQUE.Alx.SQL.Add(' SELECT SUM(ITENSPEDVEN.VALORTOTAL) VLR_COM_DESCONTO, SUM(ITENSPEDVEN.VALUNIT * ITENSPEDVEN.QTDEPROD) VLR_SEM_DESCONTO FROM ITENSPEDVEN WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ')
      else if ((XTipo = 'ORDEM') and
        (DMMacs.TLoja.FieldByName('ATIVIDADE').AsString <> 'LOCAÇÃO')) then
        //ORDEM DE SERVIÇO
        DMESTOQUE.Alx.SQL.Add(' SELECT SUM(ITPRODORD.TOTAL) VLR_COM_DESCONTO,        SUM(ITPRODORD.VLRUNIT * ITPRODORD.QTD) VLR_SEM_DESCONTO FROM ITPRODORD WHERE ITPRODORD.COD_ORDEM = :PEDIDO ')
      else //PEDIDO DE COMPRA
        DMESTOQUE.Alx.SQL.Add(' SELECT SUM(ITENSPEDC.VALORTOTAL) VLR_COM_DESCONTO,   SUM(ITENSPEDC.VALUNIT * ITENSPEDC.QTDEPROD) VLR_SEM_DESCONTO FROM ITENSPEDC WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
      DMESTOQUE.Alx.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      DMESTOQUE.Alx.Open;

      XVLR_COM_DESCONTO := StrToFloat(FormatFloat('#0.00',
        DMESTOQUE.Alx.FieldByName('VLR_COM_DESCONTO').AsCurrency));
      //Se o caso for de uma venda com 4 casas após a virgula na quantidade, não permitimos passar com os descontos (somente para vendas)
      if (DMMACS.TLoja.FieldByName('USAR4CASASQTD').AsString = '1') then
      begin
        XVLR_SEM_DESCONTO := XVLR_COM_DESCONTO
      end
      else
      begin
        XVLR_SEM_DESCONTO := StrToFloat(FormatFloat('#0.00',
          DMESTOQUE.Alx.FieldByName('VLR_SEM_DESCONTO').AsCurrency));
      end;

      //verifica se há divergencia
      if XVLR_COM_DESCONTO <> XVLR_SEM_DESCONTO then
      begin
        XDiferencaValores := XVLR_SEM_DESCONTO - XVLR_COM_DESCONTO;
        if XDiferencaValores < 0 then
          XDiferencaValores := 0;
        try
          //pega o valor de desconto dado, atualiza o pedido com esse valor de desconto e chama a função
          //novamente para que ele possa separar os descontos entre os produtos
          //e atualiza também o valor total do item
          MDO.Query.Close;
          MDO.Query.SQL.Clear;

          MDO.QAlx1.Close;
          MDO.QAlx1.SQL.Clear;
          if XTipo = 'PEDV' then //PEDIDO DE VENDA
          begin
            MDO.Query.SQL.Add(' UPDATE PEDVENDA SET PEDVENDA.DESCONTO = (:VLR_DESCONTO * 100) / (PEDVENDA.VALOR + :VLR_DESCONTO), PEDVENDA.DESCMOE = :VLR_DESCONTO WHERE PEDVENDA.COD_PEDVENDA = :PEDIDO ');
            MDO.QAlx1.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.VALORTOTAL = (ITENSPEDVEN.VALUNIT * ITENSPEDVEN.QTDEPROD) WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
          end;

          if ((XTipo = 'ORDEM') and
            (DMMacs.TLoja.FieldByName('ATIVIDADE').AsString <> 'LOCAÇÃO')) then
            //ORDEM DE SERVIÇO
          begin
            MDO.Query.SQL.Add(' UPDATE ORDEM SET ORDEM.DESCONTO = :VLR_DESCONTO WHERE ORDEM.COD_ORDEM = :PEDIDO ');
            MDO.QAlx1.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.TOTAL = (ITPRODORD.VLRUNIT * ITPRODORD.QTD), ITPRODORD.DESCONTO = 0 WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
          end;

          if XTipo = 'PEDC' then //PEDIDO DE COMPRA
          begin
            MDO.Query.SQL.Add(' UPDATE PEDCOMPRA SET PEDCOMPRA.DESCONTO = (:VLR_DESCONTO * 100) / (PEDCOMPRA.VALOR + :VLR_DESCONTO), PEDCOMPRA.DESCMOE = :VLR_DESCONTO WHERE PEDCOMPRA.COD_PEDCOMP = :PEDIDO ');
            MDO.QAlx1.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.VALORTOTAL = (ITENSPEDC.VALUNIT * ITENSPEDC.QTDEPROD) WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
          end;
          MDO.Query.ParamByName('VLR_DESCONTO').AsCurrency := XDiferencaValores;
          MDO.Query.ParamByName('PEDIDO').AsCurrency := XCod_Pedido;
          MDO.Query.ExecSQL;

          MDO.QAlx1.ParamByName('PEDIDO').AsCurrency := XCod_Pedido;
          MDO.QAlx1.ExecSQL;

          MDO.Transac.CommitRetaining;

          //dá um filtra tabela para atualiza o desconto na venda
          if XTipo = 'PEDV' then //PEDIDO DE VENDA
            FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA',
              IntToStr(XCod_Pedido), '');
          if XTipo = 'ORDEM' then
            FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM',
              IntToStr(XCod_Pedido), '');
          if XTipo = 'PEDC' then //PEDIDO DE COMPRA
            FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP',
              IntToStr(XCod_Pedido), '');

          CalcDescProdutosNf;
        except
          on E: Exception do
          begin
            Result := False;
            RegistraFalha('Não foi possível calcular o desconto dos Produtos:' +
              #10#13 + E.Message);
          end;
        end;
      end
      else
      begin
        try
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          //se tudo falhar apenas zera os valores de DESCNF que pode ficar algum valor.
          if XTipo = 'PEDV' then //PEDIDO DE VENDA
            MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.DESCNF = 0 WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');

          if ((XTipo = 'ORDEM') and
            (DMMacs.TLoja.FieldByName('ATIVIDADE').AsString <> 'LOCAÇÃO')) then
            //ORDEM DE SERVIÇO
            MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.DESCNF = 0 WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');

          if XTipo = 'PEDC' then //PEDIDO DE COMPRA
            MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.DESCNF = 0 WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
          MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
          MDO.Query.ExecSQL;

          MDO.Transac.CommitRetaining;
        except
          on E: Exception do
          begin
            Result := False;
            RegistraFalha('Não foi possível calcular o desconto dos Produtos:' +
              #10#13 + E.Message);
          end;
        end;
      end;
    end;
  end;

  CalcTotalNF;
end;

//Função utilizada para escrever todos os itens de produto
function TFPadraoFiscal.EscreveItensProduto: Boolean;
begin
  Result := True;
  try
    if DMMACS.TLoja.FieldByName('CODPRODREL1').AsString = '' then
    begin
      RegistraFalha('   - Informe o Código 1 de produtos para relatórios em loja');
      Result := False;
      Exit;
    end;
    //Verifica Total de Produtos e descontos do mesmo
    //seleciona Produtos
    DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;

    if XTipo = 'PEDV' then
    begin
      DMESTOQUE.TSlave.SQL.Add(' SELECT ITENSPEDVEN.COD_ITENSPEDVEN AS CODIGOITEM, SUBPRODUTO.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +
        ' AS CODIGO, SUBPRODUTO.CONTRINT, SUBPRODUTO.CODBARRA, VWSIMILAR.DESCRICAO AS PRODUTO, ITENSPEDVEN.DESCPRO AS DESCONTO, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITENSPEDVEN.DESCNF AS DESCONTONF, ITENSPEDVEN.CFOP, NCM.CEST, SUBPRODUTO.NCM, ITENSPEDVEN.REDUCBASE, ITENSPEDVEN.BASEICMSSUBS, ITENSPEDVEN.VLRICMSSUBS, ITENSPEDVEN.IPNMVA, CST.COD_SIT_TRIB, UNIDADE.SIGLA_UNID AS UNIDADE, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITENSPEDVEN.QTDEPROD AS QUANTIDADE, itenspedven.qtd4casas, ITENSPEDVEN.VALUNIT AS VLRUNIT, ITENSPEDVEN.ALIQUOTATOTALTRIBUTA, SUBPRODUTO.COD_SUBPRODUTO, CST.APROVEITACREDITO, ITENSPEDVEN.ICMSCREDALIQ, ITENSPEDVEN.ICMSCREDVALOR, SUBPRODUTO.ANP, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITENSPEDVEN.ALIQ_DEVOLVIDO, ITENSPEDVEN.VALORFRETE, ITENSPEDVEN.VALORDESP, SUBPRODUTO.NCM, ITENSPEDVEN.VALORTOTAL AS TOTAL, ITENSPEDVEN.ALIQIPI, ITENSPEDVEN.VLRIPI, ITENSPEDVEN.ALIQICMS AS ICMS, ITENSPEDVEN.BASEICMS, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITENSPEDVEN.APLICARST, ITENSPEDVEN.VLRICMS, SUBPRODUTO.GERARPISCOFINS, CST.SUBSTITUICAO,  ITENSPEDVEN.VALORTOTALTRIBUTA, SUBPRODUTO.DESCRICAO_ANP, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITENSPEDVEN.ALIQFCPDESTINO, ITENSPEDVEN.ALIQINTICMS, ITENSPEDVEN.ALIQEXTICMS, ITENSPEDVEN.ALIQPROVPARTILHA, ITENSPEDVEN.NUMPEDCOMPRANFE, ITENSPEDVEN.NUMITEMPEDCOMPRANFE, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITENSPEDVEN.VLRICMSFCP, ITENSPEDVEN.VLRICMSINTDEST, ITENSPEDVEN.VLRICMSINTREMET, ITENSPEDVEN.BASEICMSUFDEST, ');
      DMESTOQUE.TSlave.SQL.Add('     itenspedven.baseicms AS nbcicms, itenspedven.aliqicms as nALIQICMS, itenspedven.vlricms AS nVLRICMS, itenspedven.baseicmssubs AS nBCICMSST, itenspedven.vlricms AS nVLRICMSST, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ESTOQUE.COMPALIQST, ESTOQUE.COMPVLRST, ESTOQUE.COMPVLRBCST, ESTOQUE.COMPVLRICMS, SUBPRODUTO.CODIGOBENEFICIOFISCAL,  subproduto.retem_pis_cofins ');
      DMESTOQUE.TSlave.SQL.Add(' FROM ITENSPEDVEN ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN VWSIMILAR ON ITENSPEDVEN.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN SUBPRODUTO ON VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN ESTOQUE ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN CST ON ITENSPEDVEN.COD_CST = CST.COD_CST ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN NCM ON SUBPRODUTO.NCM = NCM.NCM ');
      DMESTOQUE.TSlave.SQL.Add(' WHERE ITENSPEDVEN.COD_PEDVEN=:CODIGO ');
    end;
    if XTipo = 'ORDEM' then
    begin
      DMESTOQUE.TSlave.SQL.Add(' SELECT ITPRODORD.COD_ITPRODORD AS CODIGOITEM, SUBPRODUTO.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +
        ' AS CODIGO, SUBPRODUTO.CONTRINT, SUBPRODUTO.CODBARRA, VWSIMILAR.DESCRICAO AS PRODUTO, ITPRODORD.DESCONTO, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITPRODORD.CFOP, ITPRODORD.VALORTOTALTRIBUTA, NCM.CEST, SUBPRODUTO.NCM, CST.COD_SIT_TRIB, UNIDADE.SIGLA_UNID AS UNIDADE,ITPRODORD.DESCNF AS DESCONTONF, ITPRODORD.QTD AS QUANTIDADE, ITPRODORD.QTD4CASAS, ITPRODORD.VLRUNIT AS VLRUNIT, ');
      DMESTOQUE.TSlave.SQL.Add(' 	SUBPRODUTO.GERARPISCOFINS, CST.SUBSTITUICAO, SUBPRODUTO.COD_SUBPRODUTO, SUBPRODUTO.ANP, ITPRODORD.ICMSCREDALIQ, ITPRODORD.ICMSCREDVALOR, ITPRODORD.VALORFRETE, ITPRODORD.VALORDESP, SUBPRODUTO.NCM, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITPRODORD.TOTAL AS TOTAL, ITPRODORD.ALIQIPI, ITPRODORD.VLRIPI, ITPRODORD.ALIQICMS AS ICMS,  ITPRODORD.BASEICMS, ITPRODORD.VLRICMS, ITPRODORD.REDUCBASEICMS AS REDUCBASE, ITPRODORD.APLICARST, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITPRODORD.ALIQUOTATOTALTRIBUTA, CST.APROVEITACREDITO, ITPRODORD.BASEICMSSUBS, ITPRODORD.VLRICMSSUBS, SUBPRODUTO.DESCRICAO_ANP, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITPRODORD.ALIQFCPDESTINO, ITPRODORD.ALIQINTICMS, ITPRODORD.ALIQEXTICMS, ITPRODORD.ALIQPROVPARTILHA, ITPRODORD.NUMPEDCOMPRANFE, ITPRODORD.NUMITEMPEDCOMPRANFE, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITPRODORD.VLRICMSFCP, ITPRODORD.VLRICMSINTDEST, ITPRODORD.VLRICMSINTREMET, ITPRODORD.BASEICMSUFDEST, ');
      DMESTOQUE.TSlave.SQL.Add(' 	itprodord.baseicms AS nbcicms, itprodord.aliqicms as nALIQICMS, itprodord.vlricms AS nVLRICMS, itprodord.baseicmssubs AS nBCICMSST, itprodord.vlricms AS nVLRICMSST, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ESTOQUE.COMPALIQST, ESTOQUE.COMPVLRST, ESTOQUE.COMPVLRBCST, ESTOQUE.COMPVLRICMS, SUBPRODUTO.CODIGOBENEFICIOFISCAL,  subproduto.retem_pis_cofins ');
      DMESTOQUE.TSlave.SQL.Add(' FROM ITPRODORD ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN VWSIMILAR ON ITPRODORD.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN SUBPRODUTO ON VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN ESTOQUE ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN CST ON ITPRODORD.COD_CST = CST.COD_CST ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN NCM ON SUBPRODUTO.NCM = NCM.NCM ');
      DMESTOQUE.TSlave.SQL.Add(' WHERE (ITPRODORD.COD_ORDEM=:CODIGO) AND ((ITPRODORD.IMPRESSONFSE<>''0'') OR (ITPRODORD.IMPRESSONFSE IS NULL)) ');
    end;
    if XTipo = 'PEDC' then
    begin
      DMESTOQUE.TSlave.SQL.Add(' SELECT ITENSPEDC.COD_ITENSPEDC AS CODIGOITEM, SUBPRODUTO.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +
        ' AS CODIGO, SUBPRODUTO.CONTRINT, SUBPRODUTO.CODBARRA, ');
      DMESTOQUE.TSlave.SQL.Add(' 	SUBPRODUTO.NCM, ITENSPEDC.REDUCBASEICMS AS REDUCBASE, ITENSPEDC.BASEICMSSUBS, ITENSPEDC.VLRICMSSUBS, CST.COD_SIT_TRIB, UNIDADE.SIGLA_UNID AS UNIDADE, SUBPRODUTO.NCM, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITENSPEDC.VLRICMS, ITENSPEDC.QTD4CASAS, SUBPRODUTO.GERARPISCOFINS, ITENSPEDC.VALORTOTALTRIBUTA, ITENSPEDC.QTDEPROD AS QUANTIDADE, ITENSPEDC.VALUNIT AS VLRUNIT, SUBPRODUTO.ANP, NCM.CEST, ');
      DMESTOQUE.TSlave.SQL.Add(' 	VWSIMILAR.DESCRICAO AS PRODUTO, ITENSPEDC.DESCPRO AS DESCONTO, ITENSPEDC.CFOP, ITENSPEDC.BASECALCII, ITENSPEDC.OUTDESPII, ITENSPEDC.VALORII, ITENSPEDC.VALORIOF, SUBPRODUTO.DESCRICAO_ANP, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITENSPEDC.ALIQUOTATOTALTRIBUTA, SUBPRODUTO.COD_SUBPRODUTO, CST.APROVEITACREDITO, ITENSPEDC.ALIQ_DEVOLVIDO,  ITENSPEDC.VALORFRETE, ITENSPEDC.VALORDESP, ITENSPEDC.NUMPEDCOMPRANFE, ITENSPEDC.NUMITEMPEDCOMPRANFE, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ITENSPEDC.VALORTOTAL AS TOTAL, ITENSPEDC.DESCNF AS DESCONTONF, ITENSPEDC.ALIQIPI, ITENSPEDC.VLRIPI, ITENSPEDC.ALIQICMS AS ICMS, ITENSPEDC.BASEICMS, ');
      DMESTOQUE.TSlave.SQL.Add(' 	itenspedc.baseicms AS nbcicms, itenspedc.aliqicms as nALIQICMS, itenspedc.vlricms AS nVLRICMS, itenspedc.baseicmssubs AS nBCICMSST, itenspedc.vlricms AS nVLRICMSST, ');
      DMESTOQUE.TSlave.SQL.Add(' 	ESTOQUE.COMPALIQST, ESTOQUE.COMPVLRST, ESTOQUE.COMPVLRBCST, ESTOQUE.COMPVLRICMS, SUBPRODUTO.CODIGOBENEFICIOFISCAL,  subproduto.retem_pis_cofins ');
      DMESTOQUE.TSlave.SQL.Add(' FROM ITENSPEDC ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN VWSIMILAR ON ITENSPEDC.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN SUBPRODUTO ON VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN ESTOQUE ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN CST ON ITENSPEDC.COD_CST = CST.COD_CST ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
      DMESTOQUE.TSlave.SQL.Add(' 	LEFT JOIN NCM ON SUBPRODUTO.NCM = NCM.NCM ');
      DMESTOQUE.TSlave.SQL.Add(' WHERE ITENSPEDC.COD_PEDCOMPRA=:CODIGO AND ((ITENSPEDC.CONSUMO IS NULL) OR (ITENSPEDC.CONSUMO <> 1)) ');
    end;
    DMESTOQUE.TSlave.ParamByName('codigo').AsInteger := XCod_Pedido;
    {if (XTipo='ORDEM') Then
      DMESTOQUE.TSlave.ParamByName('impressonfse').AsString := '0';}

    DMESTOQUE.TSlave.Open;

    DbGridProdutos.DataSource := DMESTOQUE.DSSlave;
  except
    RegistraFalha('   - Erro ao selecionar os itens de produtos');
    Result := False;
  end;
end;

//Paulo 23/09/2011: Função para validar os CFOP de produtos consumo conforme localização de comercialização e CST

function TFPadraoFiscal.ValidaCfopConsumo: Boolean;
begin
  Result := True;
  DMENTRADA.TItemPC.Close;
  DMENTRADA.TItemPC.SQL.Clear;
  DMENTRADA.TItemPC.SQL.Add(' select * from itenspedc');
  DMENTRADA.TItemPC.SQL.Add('left join despadic on itenspedc.cod_estoque = despadic.cod_despadic ');
  DMENTRADA.TItemPC.SQL.Add('where (itenspedc.cod_pedcompra=:Pedido)and(despadic.cod_gerador =:gerador)');
  DMENTRADA.TItemPC.SQL.Add('and(despadic.gerador = ''CONSUMOPC'')');
  DMENTRADA.TItemPC.ParamByName('Pedido').AsInteger := XCod_Pedido;
  DMENTRADA.TItemPC.ParamByName('GERADOR').AsInteger := XCod_Pedido;
  DMENTRADA.TItemPC.Open;
  if not DMENTRADA.TItemPC.IsEmpty then
  begin
    DMENTRADA.TItemPC.First;
    while not DMENTRADA.TItemPC.Eof do
    begin
      DMESTOQUE.TCST.Close;
      DMESTOQUE.TCST.SQL.Clear;
      DMESTOQUE.TCST.SQL.Add(' select * from cst where (cst.cod_cst = :cst)');
      DMESTOQUE.TCST.ParamByName('cst').AsString :=
        DMENTRADA.TItemPC.FieldByName('cod_cst').AsString;
      DMESTOQUE.TCST.Open;
      if not DMESTOQUE.TCST.IsEmpty then
      begin
        DMENTRADA.TItemPC.Edit;
        //If XUfOrigem <> XUfDestino Then
        if not cbOperacaoInterna.Checked then
          DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPMATCONSUMOEXT
        else
          DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPMATCONSUMO;
        DMENTRADA.TItemPC.Post;
      end
      else
      begin
        Result := False;
        RegistraFalha('   CFOP: Item de compra sem C.S.T ');
      end;
      DMENTRADA.TItemPC.Next;
    end;
    try
      DMENTRADA.IBT.CommitRetaining;
    except
      Result := False;
      RegistraFalha('   CFOP: Falha na transação ao atualizar cfop dos itens de produtos relacionados');
    end;
  end;
end;

//Função utilizada para escrever Pessoa (Cliente/Fornecedor)
function TFPadraoFiscal.EscrevePessoa: Boolean;
begin
  Result := True;
  try
    //SELECIONA O CODIGO DO CLIENTE OU FORNECEDOR DE ACORDO COM A TABELA DE COMPRA, VENDA OU ORDEM
    if XTipo = 'PEDV' then
      XCod_Pessoa := DMSAIDA.WPedV.FieldByName('COD_CLIENTE').AsInteger;

    if XTipo = 'ORDEM' then
      XCod_Pessoa := DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;

    if XTipo = 'PEDC' then
      XCod_Pessoa := DMENTRADA.WPedc.FieldByName('COD_FORNEC').AsInteger;

    //SELECIONA O CLIENTE OU FORNECEDOR DE ACORDO COM O CODIGO DA PESSOA
    if (XTipo = 'PEDV') or (XTipo = 'ORDEM') then
    begin
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' SELECT VWCLIENTE.NOME, PESSOAJ.COD_PESSOAJ, PESSOAJ.RAZAO_SOCIAL, VWCLIENTE.CPFCNPJ, CIDADE.UFEMBARQUE,   pessoaj.orgao_municipal_estadual, pessoaj.orgao_federal, ');
      DMMACS.TALX.SQL.Add(' CLIENTE.CONTRIBICMS, CLIENTE.SUFRAMA, PESSOAJ.INDUSTRIA, VWCLIENTE.CIDADE, VWCIDADE.UF, CIDADE.LOCALEMBARQUE, ');
      DMMACS.TALX.SQL.Add(' CIDADE.COD_IBGE, PESSOA.CEP, PESSOAJ.INSC_EST, PESSOA.EMAILPADRAO, CLIENTE.CREDENCIAL AS CADPRO, CLIENTE.CONSUMIDOR, ');
      DMMACS.TALX.SQL.Add(' CLIENTE.SIMPLESNACIONAL, PESSOA.ESTRANGEIRO, ESTADO.CODBACEN CODPAIS, ESTADO.NOMEPAIS, PESSOA.ENDERECO, PESSOA.BAIRRO, ');
      if (XTipo = 'PEDV') then
        DMMACS.TALX.SQL.Add(' PEDVENDA.NOMECLI NOMECLIPED, PEDVENDA.CPFCNPJ CPFCNPJPED ')
      else
        DMMACS.TALX.SQL.Add(' ORDEM.NOMECLI NOMECLIPED, ORDEM.CPFCNPJ CPFCNPJPED ');
      DMMACS.TALX.SQL.Add(' FROM VWCLIENTE ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOA ON VWCLIENTE.COD_PESSOA = PESSOA.COD_PESSOA ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOA.COD_PESSOA=PESSOAJ.COD_PESSOA ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN CLIENTE ON VWCLIENTE.COD_CLIENTE=CLIENTE.COD_CLIENTE ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN VWCIDADE ON VWCLIENTE.COD_CIDADE = VWCIDADE.COD_CIDADE ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN CIDADE ON VWCLIENTE.COD_CIDADE = CIDADE.COD_CIDADE ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN ESTADO ON CIDADE.COD_ESTADO = ESTADO.COD_ESTADO ');
      if (XTipo = 'PEDV') then
        DMMACS.TALX.SQL.Add(' LEFT JOIN PEDVENDA ON VWCLIENTE.COD_CLIENTE = PEDVENDA.COD_CLIENTE AND PEDVENDA.COD_PEDVENDA = :VENDA ')
      else
        DMMACS.TALX.SQL.Add(' LEFT JOIN ORDEM ON VWCLIENTE.COD_CLIENTE = ORDEM.COD_CLIENTE AND ORDEM.COD_ORDEM = :VENDA ');
      DMMACS.TALX.SQL.Add(' WHERE VWCLIENTE.COD_CLIENTE = :CODIGO ');
      DMMACS.TALX.ParamByName('CODIGO').AsInteger := XCod_Pessoa;
      DMMACS.TALX.ParamByName('VENDA').AsInteger := XCod_Pedido;
      DMMACS.TALX.Open;

      if not DMMACS.TALX.IsEmpty then
      begin
        //verifica se o cliente é contribuinte de ICMS (
       {Edmar - 10/03/2015 - Troca a marcação do cliente ser contribuiente de ICMS para numeração padrão
        1 - Contribuiente
        2 - Isento
        9 - Não Contribuinte
        If DMMACS.TALX.FieldByName('CONTRIBICMS').AsString = '1'
        Then Begin
         Fmenu.XTributaCliente := 'NORMAL';
        End
        Else Begin
         Fmenu.XTributaCliente := 'SIMPLES';}

        Fmenu.XTributaCliente :=
          DMMACS.TALX.FieldByName('CONTRIBICMS').AsString;
        XCepPessoa := DMMACS.TALX.FieldByName('CEP').AsString;
        //Outra variável para controlar se o cliente é do simples ou não
        if DMMACS.TALX.FieldByName('SIMPLESNACIONAL').AsString = 'S' then
          XClientedoSimples := True
        else
          XClientedoSimples := False;

        //Outra variável para controlar se o cliente é do simples ou não
        if DMMACS.TALX.FieldByName('insc_est').AsString <> '' then
          XClienteIE := True
        else
        begin
          XClienteIE := False;

          // - 14/04/2009: verificar se cliente possui codigo SUFRAMA
          if Length(DMMACS.TALX.FieldByName('SUFRAMA').AsString) > 0 then
            XDestSuframa := True
          else
            XDestSuframa := False;
        end;

        //Edmar - 10/06/2015 - Verifica se o cliente é consumidor final
        if DMMACS.TALX.FieldByName('CONSUMIDOR').AsString = 'S' then
          XClienteConsumidorFinal := True
        else
          XClienteConsumidorFinal := False;

        // - 30/03/2009: se destinatario for empresa
        if DMMACS.TALX.FieldByName('INDUSTRIA').AsString = '1' then
          XDestIndustria := True
        else
          XDestIndustria := False;

        //Edmar - 11/03/2015 - Valida se o cliente é contribuinte de ICMS e se foi informado IE
        if (Fmenu.XTributaCliente = '1') and (XClienteIE = False) then
        begin
          RegistraFalha('  Destinatário: É obrigatório informar a inscrição estadual do cliente.');
          XValidado := False;
        end;

        if (Fmenu.XTributaCliente = '2') and (XClienteIE = True) then
        begin
          RegistraFalha('  Destinatário: O Cliente é isento de ICMS. Neste caso não deve-se informar sua inscrição estadual.');
          XValidado := False;
        end;

        if xPrimeiraVez then
          XEmiteNFCe := XClienteConsumidorFinal;
        xPrimeiraVez := False;

        //Edmar - 01/07/2015 - Se o tipo do cupom for NFe, o cliente não é consumidor final
        if DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe' then
          XEmiteNFCe := False;

        //Edmar - 01/07/2015 - se o tipo do cupom fo NFCe, marca o cliente como consumidor
        if DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe' then
          XEmiteNFCe := True;

        //Edmar - 24/02/2015 - Se for operação de venda especial (remessa, devolução, garantia, etc.)
        //deixa como padrão XEmiteNFCe := False;
        if (FMenu.XDevolucao) or (FMenu.XSimplesRemessa) or
          (FMenu.XRemessaGarantia)
          or (FMenu.XOutrosFisc) or (FMenu.XComplementacao) or
            (FMenu.XNfceReferenciada) then
          XEmiteNFCe := False;
      end;
    end
    else
    begin
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' SELECT VWFORNEC.NOME, VWFORNEC.CPFCNPJ, PESSOAJ.COD_PESSOAJ, PESSOAJ.RAZAO_SOCIAL, VWFORNEC.CIDADE, CIDADE.UFEMBARQUE,   pessoaj.orgao_municipal_estadual, pessoaj.orgao_federal, ');
      DMMACS.TALX.SQL.Add(' VWCIDADE.UF, CIDADE.COD_IBGE, PESSOAJ.INSC_EST, PESSOA.ESTRANGEIRO, ESTADO.CODBACEN CODPAIS, ESTADO.NOMEPAIS, CIDADE.LOCALEMBARQUE, ');
      DMMACS.TALX.SQL.Add(' PESSOA.ENDERECO, PESSOA.BAIRRO, PEDVENDA.NOMECLI NOMECLIPED, PEDVENDA.CPFCNPJ CPFCNPJPED FROM VWFORNEC ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOA ON VWFORNEC.COD_PESSOA = PESSOA.COD_PESSOA ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOA.COD_PESSOA=PESSOAJ.COD_PESSOA ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN VWCIDADE ON VWFORNEC.COD_CIDADE = VWCIDADE.COD_CIDADE ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN CIDADE ON VWFORNEC.COD_CIDADE = CIDADE.COD_CIDADE ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN ESTADO ON CIDADE.COD_ESTADO = ESTADO.COD_ESTADO ');
      DMMACS.TALX.SQL.Add(' LEFT JOIN PEDVENDA ON PEDVENDA.COD_CLIENTE = VWFORNEC.COD_FORNEC ');
      DMMACS.TALX.SQL.Add(' WHERE VWFORNEC.COD_FORNEC = :CODIGO ');
      DMMACS.TALX.ParamByName('CODIGO').AsInteger := XCod_Pessoa;
      DMMACS.TALX.Open;

      XEmiteNFCe := False;
    end;

    //Edmar - 14/08/2015 - Verifica se o cliente é estrangeiro
    if DMMACS.TALX.FieldByName('ESTRANGEIRO').AsString = 'S' then
      XEstrangeiro := True
    else
      XEstrangeiro := False;

    if DMMACS.TALX.IsEmpty then
    begin
      //Se não encontrou o cliente/fornecedor, passar informações em branco
      if (XTipo = 'PEDV') or (XTipo = 'ORDEM') then
      begin
        LNomePessoa.Caption := 'Cliente não selecionado';
        RegistraFalha('  Cabeçalho: A Nota fiscal precisa de um cliente selecionado');
      end
      else
      begin
        LNomePessoa.Caption := 'Fornecedor não selecionado';
        RegistraFalha('  Cabeçalho: A Nota fiscal precisa de um fornecedor selecionado');
      end;
      LCpfCnpj.Caption := '';
      LUF.Caption := '';
      LMunicipio.Caption := '';
      LInscEstadual.Caption := '';
      LCodIbge.Caption := '';
      Result := False;
    end
    else
    begin
            if DMMACS.TALX.FieldByName('orgao_municipal_estadual').AsString = 'S' then
               xOrgaoMunicipalEstadual := True
            Else
               xOrgaoMunicipalEstadual := False;

            if DMMACS.TALX.FieldByName('orgao_federal').AsString = 'S' then
               xOrgaoFederal := True
            Else
               xOrgaoFederal := False;
      //VERIFICA SE O CLIENTE/FORNECEDOR É PESSOA FISICA OU PESSOA JURIDICO SE O COD_PESSOAJ RETORNAR NULO SIGNIFICA QUE É PESSOA FISICA
      if DMMACS.TALX.FieldByName('cod_pessoaj').AsInteger <> 0 then
      begin
        //identificado como pessoa jurídica
        if DMMACS.TALX.FieldByName('razao_social').AsString = '' then
        begin
          //se não foi encontrado razão social para pessoal invalída sistuação
          LNomePessoa.Caption := 'Razão social em branco';
          Result := False;
          RegistraFalha('  Cabeçalho: O Cliente/Fornecedor foi identificado como pessoa Jurídica, Porém o mesmo não possui razão social');
        end
        else
        begin
          //se encontrou pessoa juridica com razão social
          LNomePessoa.Caption := 'Fantasia: ' +
            DMMACS.TALX.FieldByName('nome').AsString + #13#10;
          LNomePessoa.Caption := LNomePessoa.Caption + 'Razão Social: ' +
            DMMACS.TALX.FieldByName('razao_social').AsString;
        end;
      end
      else
      begin
        //            	if (DMMACS.TALX.FieldByName('NOME').AsString = '') AND (XCod_Pessoa <> DMMACS.TLoja.FieldByName('cod_consumidor').AsInteger) then
        if (DMMACS.TALX.FieldByName('NOME').AsString = '') then
        begin
          //se não foi encontrado razão social para pessoal invalída sistuação
          LNomePessoa.Caption := 'Cliente/Fornecedor sem nome';
          Result := False;
          RegistraFalha('  Cabeçalho: O Cliente/Fornecedor foi apresentado sem nome');
        end
        else if XTipo = 'PEDV' then
          LNomePessoa.Caption :=
            ValidaAcentos(DMMACS.TALX.FieldByName('NOMECLIPED').AsString)
        else
          LNomePessoa.Caption :=
            ValidaAcentos(DMMACS.TALX.FieldByName('NOME').AsString);
      end;

      //valida cpf cnpj
      if (XTipo = 'PEDC') or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <>
        'ECF') then
      begin
        //if (DMMACS.TALX.FieldByName('ESTRANGEIRO').AsString <> 'S') AND (XCod_Pessoa <> DMMACS.TLoja.FieldByName('cod_consumidor').AsInteger) then
        if (DMMACS.TALX.FieldByName('ESTRANGEIRO').AsString <> 'S')
          and (not
            (AnsiContainsStr(Trim(UpperCase(DMMACS.TALX.FieldByName('NOMECLIPED').AsString)), 'CONSUMIDOR'))
          and not
            (AnsiContainsStr(Trim(UpperCase(DMMACS.TALX.FieldByName('NOME').AsString)), 'CONSUMIDOR'))) then
        begin
          if
            (ValidaCGC(TirarCarct01(Trim(DMMACS.TALX.FieldByName('CPFCNPJ').AsString))) = False)
            and
              (ValidCPF(TirarCarct01(Trim(DMMACS.TALX.FieldByName('CPFCNPJ').AsString))) = False)
            and not (XEmiteNFCe) then
          begin
            //se não for pedido de venda pode escrever que o cpf/cnpj não passou na validação
            if not (XTipo = 'PEDV') then
            begin
              LCpfCnpj.Caption := 'CPF/CNPJ Inválido';
              Result := False;
              RegistraFalha('  Cabeçalho: CPF/CNPJ Inválido, verifique no cadastro');
            end
            else
            begin
              //se for pedido de venda, valida o cpfcnpj que está na tabela pedvenda
              if
                (ValidaCGC(TirarCarct01(Trim(DMMACS.TALX.FieldByName('CPFCNPJPED').AsString))) = False)
                and
                  (ValidCPF(TirarCarct01(Trim(DMMACS.TALX.FieldByName('CPFCNPJPED').AsString))) = False) then
              begin
                LCpfCnpj.Caption := 'CPF/CNPJ Inválido';
                Result := False;
                RegistraFalha('  Cabeçalho: CPF/CNPJ Inválido, verifique no cadastro');
              end
              else
                LCpfCnpj.Caption :=
                  Trim(DMMACS.TALX.FieldByName('CPFCNPJPED').AsString);
            end;
          end
          else
          begin
            LCpfCnpj.Caption :=
              Trim(DMMACS.TALX.FieldByName('CPFCNPJ').AsString);
          end;
        end
        else
        begin
          if XTipo = 'PEDV' then
            LCpfCnpj.Caption :=
              Trim(DMMACS.TALX.FieldByName('CPFCNPJPED').AsString)
          else
            LCpfCnpj.Caption :=
              Trim(DMMACS.TALX.FieldByName('CPFCNPJ').AsString);

          {if XTipo = 'ORDEM' then
          begin
              pConsumidorNfce.Visible := True;
              pConsumidorNfce.BringToFront;
          end;}
        end;
      end;

      if (Valida_InscEstadual(DMMACS.TALX.FieldByName('insc_est').AsString,
        DMMACS.TALX.FieldByName('UF').AsString) = False) and
        (DMMACS.TALX.FieldByName('insc_est').AsString <> '') and
        (UpperCase(DMMACS.TALX.FieldByName('insc_est').AsString) <> 'ISENTO') then
      begin
        LInscEstadual.Caption := 'Insc. Estadual Inválida';
        Result := False;
        if DMMACS.TALX.FieldByName('UF').AsString <> '' then
          RegistraFalha('  Cabeçalho: Inscrição Estadual inválida. (A I.E. deve ser válida ou em branco)');
      end
      else
      begin
        if DMMACS.TALX.FieldByName('insc_est').AsString = '' then
        begin
          if XTipo <> 'PEDC' then
          begin
            if DMMACS.TALX.FieldByName('CADPRO').AsString = '' then
              LInscEstadual.Caption := 'ISENTO'
            else
              LInscEstadual.Caption :=
                DMMACS.TALX.FieldByName('CADPRO').AsString;
          end
          else
          begin
            LInscEstadual.Caption := 'ISENTO';
          end;
        end
        else
        begin
          if UpperCase(DMMACS.TALX.FieldByName('insc_est').AsString) = 'ISENTO'
            then
          begin
            Result := False;
            RegistraFalha('  6297 - IE deve ser informada corretamente ou vazia (não é permitido letras).');
          end
          else
            LInscEstadual.Caption :=
              DMMACS.TALX.FieldByName('insc_est').AsString;
        end;
      end;

      //Paulo 09/08/2010: Esta parte é para definir a UF e Cidade de acordo com a loja
      if (XTipo = 'PEDV') and (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString =
        'ECF') then
      begin
        if (XImpLig = true) then
        begin
          DMPESSOA.TALX.Close;
          DMPESSOA.TALX.SQL.Clear;
          DMPESSOA.TALX.SQL.Add('select nome from cidade inner join empresa on cidade.cod_cidade = empresa.cod_cidade');
          DMPESSOA.TALX.Open;

          LUF.Caption := XUfOrigem;
          LMunicipio.Caption := DMPESSOA.TALX.FieldByName('NOME').AsString;
        end;
      end;

      if (XTipo = 'PEDC') or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <>
        'ECF') then
      begin
        //Edmar - 11/06/2015 - Só valida o endereço do cliente se não for consumidor final
        //quando NFC-e não é obrigatório informar os dados de endereço
        if not XEmiteNFCe then
        begin
          if (DMMACS.TALX.FieldByName('UF').AsString = '') then
          begin
            LUF.Caption := 'UF não selecionado';
            Result := False;
            RegistraFalha('  6329 - UF não informada para o Cliente.');
          end
          else
            LUF.Caption := DMMACS.TALX.FieldByName('UF').AsString;

          if (DMMACS.TALX.FieldByName('CIDADE').AsString = '') then
          begin
            LMunicipio.Caption := 'Cidade não selecionada';
            Result := False;
            RegistraFalha('  6338 - Cidade não informada para o Cliente.');
          end
          else
            LMunicipio.Caption := DMMACS.TALX.FieldByName('CIDADE').AsString;

          if DMMACS.TALX.FieldByName('ENDERECO').AsString = '' then
          begin
            RegistraFalha('  6345 - Endereço não informado para o Cliente.');
            Result := False;
          end;

          if (DMMACS.TALX.FieldByName('BAIRRO').AsString = '') then
          begin
            RegistraFalha('  6351 - Bairro não informado para o Cliente.');
            Result := False;
          end;

          if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
            or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
            or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
              then
          begin
            if (DMMACS.TALX.FieldByName('COD_IBGE').AsString = '') then
            begin
              LCodIbge.Caption := 'IBGE Inv.';
              Result := False;
              RegistraFalha('  6363 - Código do IBGE não informado para a cidade do Cliente.');
            end
            else
              LCodIbge.Caption := DMMACS.TALX.FieldByName('COD_IBGE').AsString;
          end
          else
            LCodIbge.Caption := '';
        end
        else
        begin
          LCodIbge.Caption := DMMACS.TALX.FieldByName('COD_IBGE').AsString;
          LMunicipio.Caption := DMMACS.TALX.FieldByName('CIDADE').AsString;
          LUF.Caption := DMMACS.TALX.FieldByName('UF').AsString;
        end;
      end;

      if XEstrangeiro then
      begin
        if not ValidaDadosEstrangeiro then
          Result := False;
      end;

      if not xPartiuCheckBox then
      begin
        if XEmiteNFCe or FMenu.XNfceReferenciada then
        begin
          cbOperacaoInterna.Checked := true;
          cbOperacaoInterna.Enabled := false;
        end
        else
        begin
          //
          if XUfOrigem <> XUfDestino then
          begin
            cbOperacaoInterna.Checked := False;
            cbOperacaoInterna.Enabled := True;
          end
          else
          begin
            cbOperacaoInterna.Checked := true;
            cbOperacaoInterna.Enabled := false;
          end;
        end;
      end;

      //Edmar - 07/10/2015 - Verifica se está emitindo nfc-e ou nf-e e mostra painel correspondente
      if XEmiteNFCe then
      begin
        cbTipoDocumento.Text := 'NFC-e';
        ///
        pNfce.Visible := True;
        pNfce.BringToFront;
        //
        pNfe.Visible := False;
        pNfe.SendToBack;
        //Edmar - 08/10/2015 - Sendo NFC-e, verifica se um cliente foi informado
        if not (AnsiContainsStr(Trim(UpperCase(LNomePessoa.Caption)),
          'CONSUMIDOR')) then
        begin
          //se foi informado, marca a caixa de "C/ CPF" e informa o nome e o cpf nos campos
          comCpf.Checked := True;
          semCpf.Checked := False;
        end
        else
        begin
          //se não foi informado, marca a caixa de "S/ CPF" e informa apenas o nome
          semCpf.Checked := True;
          comCpf.Checked := False;
        end;
      end
      else
      begin
        cbTipoDocumento.Text := 'NF-e';
        ///
        pNfe.Visible := True;
        pNfe.BringToFront;
        //
        pNfce.Visible := False;
        pNfce.SendToBack;
      end;

      if (XEmiteNFCe) and
        (((DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1) and
          (DMMACS.TLoja.FieldByName('CSC_NFCEPROD').AsString = ''))
        or
        ((DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 2) and
          (DMMACS.TLoja.FieldByName('CSC_NFCEHOMO').AsString = ''))) then
      begin
        RegistraFalha('  Cabeçalho: Para emitir NFC-e, é necessário informar o CSC (código de segurança do contribuiente) no cadastro Loja.');
        Result := False;
      end;

      if (XEmiteNFCe) and
        (((DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1) and
          (DMMACS.TLoja.FieldByName('IDCSC_NFCEPROD').AsString = ''))
        or
        ((DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 2) and
          (DMMACS.TLoja.FieldByName('IDCSC_NFCEHOMO').AsString = ''))) then
      begin
        RegistraFalha('  Cabeçalho: Para emitir NFC-e, é necessário informar o Id do CSC (código de segurança do contribuiente) no cadastro Loja.');
        Result := False;
      end;
    end;
  except
    Result := False;
  end;
end;

procedure TFPadraoFiscal.FormActivate(Sender: TObject);
var
  UtilNfe: NFe_Util_2G_Interface;
begin
  inherited;
  //Edmar - 09/10/2015 - garante que o fiscal vai ter um tipo
  if XTipo = '' then
    XTipo := FMenu.XTipoFiscal;
  //Edmar - 30/03/2015 - Instancia o objeto da nfe para não haver problemas com a dll de serviço
  try
    UtilNfe := CoUtil.Create;
  except
  end;

  DMMACS.TEmpresa.Open;
  //Edmar - 12/12/2013 - Inicializa as variaveis
  InicializaVar;
  xExisteProd := true;
  xExisteServ := true;

  //Edmar - 14/02/2014 - Testa se é reimpressão da nfse e ativa a aba de serviços ou de produtos
  if FMenu.TIPOREL = 'NFSE' then
    PageControl1.ActivePage := TabSheet10
  else
    PageControl1.ActivePage := LBFatura;

  //Edmar 12/12/2013 - Testa se há produtos na nota
  try
    if XTipo = 'ORDEM' then
    begin
      DMESTOQUE.Alx1.Close;
      DMESTOQUE.Alx1.SQL.Clear;
      DMESTOQUE.Alx1.SQL.Add('select * from itprodord where (itprodord.cod_ordem = :cod_ordem) and ((itprodord.impressonfse<>''0'') or (itprodord.impressonfse is null)) ');
      DMESTOQUE.Alx1.ParamByName('cod_ordem').AsInteger := XCod_Pedido;
      //DMESTOQUE.Alx1.ParamByName('impressonfse').AsString := '0';
      DMESTOQUE.Alx1.Open;
      if DMESTOQUE.Alx1.IsEmpty then
      begin
        xExisteProd := false;
      end;
    end;
  except
    Showmessage('Erro ao verificar produtos para tela do fiscal.');
    xExisteProd := false;
  end;

  //Edmar - 09/12/2013 - Testa se há serviços na nota
  try
    DMESTOQUE.Alx2.Close;
    DMESTOQUE.Alx2.SQL.Clear;
    DMESTOQUE.Alx2.SQL.Add('select * from despadic where (despadic.GERADOR=''ORDEM'') AND (DESPADIC.COD_GERADOR=:Codigo) AND ((despadic.nfse_status<>''1'') or (despadic.nfse_status is null))');
    DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := XCod_Pedido;
    DMESTOQUE.Alx2.Open;
    if DMESTOQUE.Alx2.IsEmpty then
      xExisteServ := false;
  except
    showmessage('Erro ao verificar serviços para tela do fiscal.');
    xExisteServ := false;
  end;

  edIss.Text := DMMACS.TEmpresa.fieldbyName('issqn').AsString;

  //Edmar - 05/12/2013 - Limpa e popula combo box reter iss
  cbRetIss.Clear;
  cbRetIss.Items.Add('SIM');
  cbRetIss.Items.Add('NÃO');
  cbRetIss.Text := 'NÃO';

  PComplementar.SendToBack;
  PComplementar.Visible := False;
  //Paulo 15/12/2011:para tipo de operação entrada outros
    {if ((FMenu.XOutrosEnt = True) OR (FMenu.XOutrosEntPropria))
     AND (((DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsInteger = 0) OR (DMMACS.TLoja.FieldByName('EMISSAOPROPFORA').AsInteger = 0))
      AND ((DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsInteger = 0) OR (DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsInteger = 0))) then
     AbrirForm(TFCadCFOP, FCadCFOP, 1); }

   //Paulo 22/07/2010:para tipo de operação outros
  if ((FMenu.XOutrosEnt) and  ((DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsInteger = 0)
       or (DMMACS.TLoja.FieldByName('EMISSAOPROPFORA').AsInteger = 0))
       or ((DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsInteger = 0)
       or (DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsInteger = 0)))
       or (FMenu.XOutrosEntPropria
       and ((DMMACS.TLoja.FieldByName('CFOPINTOUTEMISSAOPROP').AsInteger = 0)
       or  (DMMACS.TLoja.FieldByName('CFOPEXTOUTEMISSAOPROP').AsInteger = 0))) then
  begin
    MessageDlg('Informe CFOP', mtInformation, [mbOK], 0);
    AbrirForm(TFCadCFOP, FCadCFOP, 1);
  end;

  if (FMenu.XComplementacao) or (FMenu.XOutrosFisc) or (FMenu.XNfceReferenciada)
  then Begin
       MessageDlg('Informe CFOP para outros tipos de documento', mtInformation, [mbOK], 0);
       AbrirForm(TFCadCFOP, FCadCFOP, 1);
  End;

  //PAulo 01/12/2010: Somente para Complemento, usuario informa dados da nota que será feito o complemento
  if (FMenu.XComplementacao = True) then
  begin
    MessageDlg('Notas Fiscais Complementares possuem regras específicas, inclusive na questão dos produtos inseridos a NFe.'
      + #13 + #10 + 'Consulte o manual do contribuinte em caso de dúvidas.',
      mtWarning, [mbOK], 0);
    PComplementar.BringToFront;
    PComplementar.Visible := True;
  end;

  //Edmar - 21/06/2016 - Quando houver uma nfc-e referenciada também mostra o painel pra selecionar
  // o pedido
  if FMenu.XNfceReferenciada then
  begin
    Label33.Caption :=
      'Informe o número fiscal da NFC-e que deseja referenciar.';
    PComplementar.BringToFront;
    PComplementar.Visible := True;
  end;

  if FMenu.LCODUSUARIO.Caption = '111522' then
    BtnImprimir.Visible := True
  else
    BtnImprimir.Visible := False;

  if (FMenu.TIPOREL = 'RNF') or (FMenu.TIPOREL = 'NFSE') then
    XDadosAdicionaisReimp := True;

  Top := 0;
  XServicoOp := False;
  XImpLig := False;
  //Paulo 23/08/2010: PAra verificar se a impressora está ligada ou conectada
  if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') then
  begin
    XAlx := Bematech_FI_VerificaImpressoraLigada();
    if (XAlx <> 1) then
    begin
      XImpLig := False;
    end
    else
    begin
      XImpLig := True;
    end;
  end;

  Atualiza;
end;

procedure TFPadraoFiscal.BtnProcuraPessoaClick(Sender: TObject);
begin
  inherited;
  if XTipo = 'PEDC' then
  begin
    AbrirForm(TFFornecedor, FFornecedor, 1);
    if ((FMenu.TIPOAUX = 'ECF')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) then
    begin
      //Paulo 07/06/2011:Este é um caso de reimpressão de de um cupom fiscal como NFe, assim o sistema irá assimilar o cliente selecionado como cliente do pedido em questão (Usado quando necessário substituir o cliente "Consumidor" tipicamente utilizado no caso de ECF para um cliente cadastrado para ser usado em NFe)
      if
        MessageDlg('Você solicitou a alteração do Cliente para o pedido atual. Deseja prosseguir a alteração?'
        + #13 + #10 + 'Cliente: ' +
        DMPESSOA.WFornecedor.FieldByName('NOME').AsString, mtConfirmation, [mbYes,
        mbNo], 0) = MrYes then
      begin
        DMENTRADA.TPedC.Edit;
        DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger :=
          DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
        DMENTRADA.TPedC.Post;
        DMENTRADA.IBT.CommitRetaining;
        XCod_Pessoa := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
        FiltraTabela(DMENTRADA.WPedc, 'VWPEDC', 'COD_PEDCOMP',
          IntToStr(DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger), '');

      end;
    end;
    EscrevePessoa;
  end
  else
  begin
    AbrirForm(TFCliente, FCliente, 1);
    if ((FMenu.TIPOAUX = 'ECF')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) then
    begin
      //Este é um caso de reimpressão de de um cupom fiscal como NFe, assim o sistema irá assimilar o cliente selecionado como cliente do pedido em questão (Usado quando necessário substituir o cliente "Consumidor" tipicamente utilizado no caso de ECF para um cliente cadastrado para ser usado em NFe)
      if
        MessageDlg('Você solicitou a alteração do Cliente para o pedido atual. Deseja prosseguir a alteração?'
        + #13 + #10 + 'Cliente: ' +
        DMPESSOA.WCliente.FieldByName('NOME').AsString, mtConfirmation, [mbYes,
        mbNo], 0) = MrYes then
      begin
        if XTipo = 'PEDV' then
        begin
          DMSAIDA.TPedV.Edit;
          DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger :=
            DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
          DMSAIDA.TPedV.FieldByName('NOMECLI').AsString :=
            DMPESSOA.WCliente.FieldByName('NOME').AsString;
          DMSAIDA.TPedV.FieldByName('CPFCNPJ').AsString :=
            DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
          DMSAIDA.TPedV.Post;
          DMSAIDA.IBT.CommitRetaining;
          XCod_Pessoa := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
          FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA',
            DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString, '');
        end
        else
        begin
          DMServ.TOrd.Edit;
          DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger :=
            DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
          DMServ.TOrd.FieldByName('NOMECLI').AsString :=
            DMPESSOA.WCliente.FieldByName('NOME').AsString;
          DMServ.TOrd.FieldByName('CPFCNPJ').AsString :=
            DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
          DMServ.TOrd.Post;
          DMServ.IBT.CommitRetaining;
          XCod_Pessoa := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
          FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM',
            IntToStr(XCod_Pedido), '');
        end;
      end;
    end;
    EscrevePessoa;
  end;
  Atualiza;
end;

procedure TFPadraoFiscal.EdErroClick(Sender: TObject);
begin
  inherited;
  PErro.Visible := True;
  PErro.BringToFront;
end;

procedure TFPadraoFiscal.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  PErro.Visible := False;
end;

procedure TFPadraoFiscal.EdFreteContaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (Key <> '1') and (Key <> '2') and (Key <> '9') and (Key <> #8) then
    Key := #0;
end;

procedure TFPadraoFiscal.EdBaseICMSSTExit(Sender: TObject);
begin
  inherited;
  if XTipo = 'PEDC' then
  begin
    if RateioStEntrada = False then
      RegistraFalha('   Falha rateio Substituição Tributária');
    //Paulo 14/12/2011: Calcula os impostos e o total da nota
    CalcImpostosNF;
    CalcTotalNF;
  end;
end;

procedure TFPadraoFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FMenu.TIPOREL := ''; //marca para garantir que não haverá reimpressão
  EdChaveNFE.Text := '';
  inherited;
  try
    Action := caFree;
    FPadrao := nil;
  except
  end;
end;

procedure TFPadraoFiscal.CBFreteNFClick(Sender: TObject);
begin
  inherited;
  //Efetua calculo do total da nota
  CalcTotalNF
end;

procedure TFPadraoFiscal.EdVlrFreteExit(Sender: TObject);
begin
  inherited;
  //Efetua calculo do total da nota
  CalcImpostosNF;
  CalcTotalNF;
  //Edmar - 06/05/2015 - Processa o valor do frete proporcionalmente aos itens
  if not RateioFrete then
    RegistraFalha(' Falha ao calcular o rateio do Frete.');
end;

procedure TFPadraoFiscal.BtnProcuraTranspClick(Sender: TObject);
begin
  inherited;
  FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' ORDER BY NOME');
    //LIBERA TODOS OS REGISTROS PARA CONSULTA
  if AbrirForm(TFFornecedor, FFornecedor, 1) = 'Selected' then
  begin
    XCod_Transp := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
    LTransportadora.Caption :=
      DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
    LTranspCpfCnpj.Caption :=
      DMPESSOA.WFornecedor.FieldByName('cpfcnpj').AsString;
    LTranspEndereco.Caption :=
      DMPESSOA.WFornecedor.FieldByName('endereco').AsString;
    LTranspMunicipio.Caption :=
      DMPESSOA.WFornecedor.FieldByName('cidade').AsString;
  end
  else
  begin
    XCOD_TRANSP := -1;
    LimpaLabelTransp;
  end;
end;

procedure TFPadraoFiscal.BitBtn1Click(Sender: TObject);
begin
  inherited;
  XCod_Transp := -1;
  LimpaLabelTransp;
end;

procedure TFPadraoFiscal.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XAtualizaNota := 1;
    //Jônatas 31/07/2013 - manter a data do edit DtSaidaEntrada para não ter que trocar toda vez que atualizar
  OnActivate(sender);
  XAtualizaNota := 0;
    //Jônatas 31/07/2013 - manter a data do edit DtSaidaEntrada para não ter que trocar toda vez que atualizar
end;

procedure TFPadraoFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = Vk_f9 then
    Atualiza;

  if Key = VK_f5 then
    BitBtn3Click(sender);
end;

procedure TFPadraoFiscal.BitBtn3Click(Sender: TObject);
var
  FMzrNfse: TFMzrNFSe;
  xTexto: string;
begin
  inherited;
  DMESTOQUE.Alx2.Open;
  //Valida quando a data e o período
  EdDtsaidaEntrada.OnExit(sender);
    // Efetua o tratamento do intervalo de datas { TODO : verificar a atualização do campo dtsaidaentrada para saber o porque de não ficar ok }
  if XImportNfe <> 1 then
  begin
    if (StrToDate(EdDtEmissao.Text) < XDtIniPeriodo) or
      (StrToDate(EdDtEmissao.Text) > XDtFimPeriodo) then
    begin
      XValidado := False;
      RegistraFalha('   Período Fiscal: A Data de Saída/Entrada deve ficar no intervalo permitido pelo período Fiscal ('
        + DateToStr(XDtIniPeriodo) + ' - ' + DateToStr(XDtFimPeriodo));
    end;
  end;

  //Edmar - 07/01/2014 - Testa se deve mostrar os serviços no fiscal
  if (DMMACS.TLoja.FieldByName('GERANFSE').AsString = '1') then
  begin
    //Valida NF quanto ao numero
    ValidaNumNf;
    if FMenu.TIPOREL <> 'NFSE' then
    begin
      if xExisteProd then
      begin
        //Edmar - 11/03/2014 - Testa se é pedido de compra e não mostra mensagem de confirmação
        if (XTipo = 'PEDC') or (XTipo = 'PEDV') then
          enviaNfe
        else
        begin
          if Mensagem('CONFIRMAÇÃO NF-e',
            'Deseja enviar a nota fiscal de produtos?', '', 2, 3, false, 'c') = 2
            then
            enviaNfe;
        end;
      end;
    end;
    //Edmar - 06/12/2013 - Testa se existe serviços e for ordem inicia o envio da nfse
    if (xExisteServ) and (XTipo = 'ORDEM') then
    begin
      if Mensagem('CONFIRMAÇÃO NFS-e',
        'Deseja enviar a nota fiscal de serviços?', '', 2, 3, false, 'c') = 2 then
        enviaNfse;
    end;
  end
  else
  begin
    ValidaNumNf;
    if xExisteProd then
      enviaNfe;
  end;
end;

procedure TFPadraoFiscal.EdVlrIcmsExit(Sender: TObject);
begin
  inherited;
  if XTipo = 'PEDC' then
  begin
    if (EdBaseICMS.ValueNumeric <> XVlrBaseIcmsOp) or (EdVlrIcms.ValueNumeric <>
      XVlrIcmsOp) then
    begin
      //Efetua rateio de de icms caso haja redução na base de calculo
      RateioValorBaseIcms
    end;
  end;

  DMESTOQUE.Alx5.Close;
  DMESTOQUE.Alx5.SQL.Clear;
  DMESTOQUE.Alx5.SQL.Add('update empresa set empresa.issqn = :iss');
  DMESTOQUE.Alx5.ParamByName('iss').AsCurrency := edIss.ValueNumeric;

  DMESTOQUE.Alx5.ExecSQL;
  //    dmestoque.alx5.Transaction.CommitRetaining;
  DMESTOQUE.TransacEstoque.CommitRetaining;

end;

procedure TFPadraoFiscal.PCDadosAdicionaisChange(Sender: TObject);
begin
  inherited;
  ValidaDadosAdicionais;
  InfoAdicionaisUfDestino;
end;

procedure TFPadraoFiscal.PCReservadosFiscoChange(Sender: TObject);
begin
  inherited;
  ValidaReservadoFisco;
end;

procedure TFPadraoFiscal.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  //Verifica se o caixa é emitente de nota fiscal
  DMCAIXA.TCaixa.Close;
  DMCAIXA.TCaixa.SQL.Clear;
  DMCAIXA.TCaixa.SQL.Add(' Select * from caixa where caixa.cod_caixa=:codigo ');
  DMCAIXA.TCaixa.ParamByName('codigo').AsString := FMenu.LCODCAIXA.Caption;
  DMCAIXA.TCaixa.Open;
  if not DMCAIXA.TCaixa.IsEmpty then
  begin
    //IMPRIME NOTA FISCAL NORMAL
    if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') then
    begin
      if ImpNf = False then
      begin
        MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!'
          + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
      end;
    end;
    if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
      or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
    begin
      FMenu.TIPOREL := 'NF';
      if ImpNfe = False then
      begin
        MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!'
          + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
      end;
    end;
    if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') then
    begin
      if ImpNf = False then
      begin
        MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!'
          + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
      end;
    end;
  end;
end;

procedure TFPadraoFiscal.PCDadosAdicionaisExit(Sender: TObject);
begin
  inherited;
  //    PCDadosAdicionais.ActivePage := TabSheet1;
end;

procedure TFPadraoFiscal.PCReservadosFiscoExit(Sender: TObject);
begin
  inherited;
  //    PCReservadosFisco.ActivePage := TabSheet5;
end;

procedure TFPadraoFiscal.EdDtsaidaEntradaExit(Sender: TObject);
begin
  inherited;
  if (EdDtsaidaEntrada.Text <> '  /  /    ') then
  begin
    if (StrToDate(EdDtsaidaEntrada.Text) < XDtIniPeriodo) or
      (StrToDate(EdDtsaidaEntrada.Text) > XDtFimPeriodo) then
    begin
      Mensagem('   A T E N Ç Ã O   ',
        'Período Fiscal: A Data de Saída/Entrada deve ficar no intervalo permitido pelo período Fiscal (' +
        DateToStr(XDtIniPeriodo) + ' - ' + DateToStr(XDtFimPeriodo), '', 1, 1,
        false, 'I');
    end;

    if (StrToDate(EdDtEmissao.Text) > StrToDate(EdDtsaidaEntrada.Text)) then
    begin
      XValidado := False;
      RegistraFalha('   A data de saída deve ser maior ou igual a data de emissão.');
    end;
  end;
end;

procedure TFPadraoFiscal.BtnAlterarPeriodoClick(Sender: TObject);
begin
  inherited;
  //AbrirForm(TFSENHA, FSENHA, 0);
  //repassa resultado da tela de autenticação de senha para as variáveis de controle
  //If XAlxResult=True
  //Then Begin
  if AbrirForm(TFPeriodoFiscal, FPeriodoFiscal, 1) = 'Selected' then
  begin
    XCod_Perido_Fiscal :=
      DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
    LPeriodoFiscal.Caption := 'Período Fiscal: ' +
      DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
    XNomePeriodoFiscal :=
      DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
    //Repassa os Intervalos de data
    try
      XDtIniPeriodo :=
        DMMACS.TPeriodoFiscal.FieldByName('DTINICIAL').AsDateTime;
      XDtFimPeriodo := DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsDateTime;
    except
      XValidado := False;
      RegistraFalha('   Período Fiscal: Falha ao identificar o intervalo de datas no período, procure suporte técnico');
    end;
  end;
  //End;
end;

procedure TFPadraoFiscal.EdNumeroFiscalExit(Sender: TObject);
begin
  inherited;
  ValidaNumNf;
end;

procedure TFPadraoFiscal.BtnAbreLoteClick(Sender: TObject);
begin
  inherited;
  if XTipo = 'PEDC' then
  begin
    AbrirForm(TFFornecedor, FFornecedor, 1);

  end
  else
  begin
    AbrirForm(TFCliente, FCliente, 1);
    EdClienteNfe.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
  end;
end;

procedure TFPadraoFiscal.EdNumNFeExit(Sender: TObject);
begin
  inherited;
  if XTipo = 'PEDV' then
  begin
    DMSAIDA.TAlx.Close;
    DMSAIDA.TAlx.SQL.Clear;
    DMSAIDA.TAlx.SQL.Add(' select docfissaida.nfechave AS CHAVE, pedvenda.nomecli, pedvenda.numfiscal, pedvenda.valor ');
    DMSAIDA.TAlx.SQL.Add(' from pedvenda ');
    DMSAIDA.TAlx.SQL.Add(' left join docfissaida on pedvenda.cod_pedvenda=docfissaida.cod_pedido ');
    if FMenu.XNfceReferenciada then
      DMSAIDA.TAlx.SQL.Add(' where (docfissaida.numdocfis = :NUM) and (docfissaida.modelonf = ''65'') ')
    else
      DMSAIDA.TAlx.SQL.Add(' where (docfissaida.numdocfis = :NUM) and (docfissaida.modelonf = ''55'') ');
    DMSAIDA.TAlx.ParamByName('NUM').AsString := EdNumNFe.Text;
    DMSAIDA.TAlx.Open;

    if DMSAIDA.TAlx.FieldByName('CHAVE').AsString = '' then
    begin
      DMSAIDA.TAlx.Close;
      DMSAIDA.TAlx.SQL.Clear;
      DMSAIDA.TAlx.SQL.Add(' select docfisord.nfechave AS CHAVE, vwcliente.nome as nomecli, ordem.numfiscal, ordem.totord as VALOR');
      DMSAIDA.TAlx.SQL.Add(' from ordem ');
      DMSAIDA.TAlx.SQL.Add(' left join docfisord on ordem.cod_ordem=docfisord.cod_ordem ');
      DMSAIDA.TAlx.SQL.Add(' left join vwcliente on ordem.cod_cliente=vwcliente.cod_cliente ');
      if FMenu.XNfceReferenciada then
        DMSAIDA.TAlx.SQL.Add(' where (docfisord.numdocfis= :NUM) and (docfisord.modelonf = ''65'') ')
      else
        DMSAIDA.TAlx.SQL.Add(' where (docfisord.numdocfis= :NUM) and (docfisord.modelonf = ''55'') ');
      DMSAIDA.TAlx.ParamByName('NUM').AsString := EdNumNFe.Text;
      DMSAIDA.TAlx.Open;

      if DMSAIDA.TAlx.FieldByName('CHAVE').AsString = '' then
        MessageDlg('A Chave da Nota Fiscal não foi encontrada. Sem ela a NFe não será aceita no Sefaz. 	'
          + #13 + 'Comunique o Suporte para corrigir o problema', mtWarning,
          [mbOK], 0)
      else
      begin
        EdClienteNfe.Text := DMSAIDA.TAlx.FieldByName('nomecli').AsString;
        EdValorNfe.ValueNumeric := DMSAIDA.TAlx.FieldByName('valor').AsFloat;
      end;
    end
    else
    begin
      EdClienteNfe.Text := DMSAIDA.TAlx.FieldByName('nomecli').AsString;
      EdValorNfe.ValueNumeric := DMSAIDA.TAlx.FieldByName('valor').AsFloat;
    end;
  end;
end;

//Paulo 05/03/2011: Mostra a fatura

function TFPadraoFiscal.MostraFatura: Boolean;
var
  i, XCod_aux: Integer;
  XvlrParcProd: Real;
begin
  {

         DMMACS.TLoja.Edit;
         DMMACS.TLoja.FieldByName('tmp1').AsString:='';
         DMMACS.TLoja.Post;

         //prepara a tabela tmp
         DMMACS.TMP.Close;
         DMMACS.TMP.SQL.Clear;
         DMMACS.TMP.SQL.Add('delete from tmp');
         DMMACS.TMP.ExecSQL;
         DMMACS.Transaction.CommitRetaining;
         DMMACS.TMP.Close;
         DMMACS.TMP.SQL.Clear;
         DMMACS.TMP.SQL.Add('select * from tmp');
         DMMACS.TMP.Open;

         ////Paulo 05/03/2011:imprimi fatura para ped venda
         If (XTipo='PEDV') and ((FMenu.XSimplesRemessa=False) or (FMenu.XRemessaGarantia=False) or (FMenu.XDevolucao=False))
         Then Begin
             i:=1;
             XCod_aux:=1;

             //filtra wpedv
             DMSAIDA.WPedV.Close;
             DMSAIDA.WPedV.SQL.Clear;
             DMSAIDA.WPedV.SQL.Add(' select * from vwpedv where vwpedv.cod_pedvenda=:codigo ');
             DMSAIDA.WPedV.ParamByName('codigo').AsInteger:=XCod_Pedido;
             DMSAIDA.WPedV.Open;

             //Tenta encontras a Forma de pagamento
             If DMSAIDA.WPedV.FieldByName('formpag').AsString='À VISTA'
             Then Begin
                 //Paulo 11/03/2011: Filtra os lançamento de caixa
                 DMCAIXA.TLanCaixa.Close;
                 DMCAIXA.TLanCaixa.SQL.Clear;
                 DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa lc where lc.cod_gerador=:CODGERADOR and lc.tipogerador = ''ORDSERV''');
                 DMCAIXA.TLanCaixa.ParamByName('CODGERADOR').AsInteger:= XCod_Pedido;
                 DMCAIXA.TLanCaixa.Open;

                 //Paulo 11/03/2011: Caso não foi gerado financeiro não mostra nada
                 if (XFat = True)or (DMCAIXA.TLanCaixa.IsEmpty) then
                 begin
                     LbFaturaNF.Caption:='';
                     Exit;
                 end;
                 //Paulo 05/03/2011: Seleciona dados do dofissaida
                 DMESTOQUE.Alx1.Close;
                 DMESTOQUE.Alx1.SQL.Clear;
                 DMESTOQUE.Alx1.SQL.Add('Select valor from pedvenda');
                 DMESTOQUE.Alx1.SQL.Add('where pedvenda.cod_pedvenda = :codped');
                 DMESTOQUE.Alx1.ParamByName('CODPED').AsInteger:=XCod_Pedido;
                 DMESTOQUE.Alx1.Open;

                 DMMACS.TMP.Insert;
                 DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_aux;
                 DMMACS.TMP.FieldByName('DESC1').AsString:='À VISTA';
                 DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.Alx1.FieldByName('valor').AsCurrency;
                 DMMACS.TMP.Post;
                 XCod_aux:=XCod_aux+1;
             End
             Else Begin
                 //filtra contas a receber
                 DMCONTA.TCtaR.Close;
                 DMCONTA.TCtaR.SQL.Clear;
                 DMCONTA.TCtaR.SQL.Add('select * from ctareceber where (ctareceber.cod_gerador=:CodGerador) and (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+')');
                 DMCONTA.TCtaR.ParamByName('CodGerador').AsInteger:= XCod_Pedido;
                 DMCONTA.TCtaR.Open;
                 If Not DMCONTA.TCtaR.IsEmpty
                 Then Begin
                     //seleciona as parcelas do ctas a receber
                     DMCONTA.TParcCR.Close;
                     DMCONTA.TParcCR.SQL.Clear;
                     DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.cod_ctareceber=:ctareceber');
                     DMCONTA.TParcCR.ParamByName('ctareceber').AsInteger:=DMCONTA.TCtaR.fieldbyname('cod_ctareceber').AsInteger;
                     DMCONTA.TParcCR.Open;
                     If Not DMCONTA.TParcCR.IsEmpty
                     Then Begin
                         //percorre todas as tabelas capturando valor e vencimento
                         DMCONTA.TParcCR.First;
                         While not DMCONTA.TParcCR.Eof do
                         Begin
                             DMMACS.TMP.Insert;
                             DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_aux;
                             DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TParcCR.FieldByName('dtvenc').AsString;
                             DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMCONTA.TParcCR.FieldByName('valor').AsCurrency;
                             DMMACS.TMP.Post;
                             XCod_aux:=XCod_aux+1;
                             DMCONTA.TParcCR.Next;
                         End;
                     End;
                 End;
             End;

             //seleciona as faturas a serem impressas
             DMCONTA.IBT.CommitRetaining;
             DMMACS.TMP.Close;
             DMMACS.TMP.SQL.Clear;
             DMMACS.TMP.SQL.Add('select * from tmp');
             DMMACS.TMP.Open;
             i:=1;
             //Reapassa dados da fatura para o campo tmp1 de loja
             If not DMMACS.TMP.IsEmpty
             Then Begin
                 DMMACS.TMP.First;
                 While not DMMACS.TMP.Eof do
                 Begin
                     DMMACS.TLoja.Edit;
                     If i=5
                     Then Begin
                         DMMACS.TLoja.FieldByName('tmp1').AsString:=DMMACS.TLoja.FieldByName('tmp1').AsString+'  '+DMMACS.TMP.FieldByName('DESC1').AsString+' - R$'+FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency)+#13;
                         i:=0;
                     End
                     Else Begin
                         If i=1 Then
                             DMMACS.TLoja.FieldByName('tmp1').AsString:=DMMACS.TLoja.FieldByName('tmp1').AsString+DMMACS.TMP.FieldByName('DESC1').AsString+' - R$'+FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency)
                         Else
                             DMMACS.TLoja.FieldByName('tmp1').AsString:=DMMACS.TLoja.FieldByName('tmp1').AsString+'  '+DMMACS.TMP.FieldByName('DESC1').AsString+' - R$'+FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency);

                     End;
                     i:=i+1;
                     DMMACS.TLoja.Post;
                     DMMACS.TMP.Next;
                 End;

             End;
         End;
         //Paulo 05/03/2011:imprimi fatura para ordem de serviço
         If XTipo='ORDEM'	Then
         Begin
             I:=1;
             XCod_aux:=1;

          //filtra wordem
          DMServ.WOrdem.Close;
          DMServ.WOrdem.SQL.Clear;
          DMServ.WOrdem.SQL.Add(' select * from vwordem where vwordem.cod_ordem=:codigo ');
          DMServ.WOrdem.ParamByName('codigo').AsInteger:=XCod_Pedido;
          DMServ.WOrdem.Open;

             //Tenta encontrar a Forma de pagamento
             If DMServ.WOrdem.FieldByName('formapag').AsString='À VISTA'
             Then Begin

                 //Paulo 11/03/2011: Caso não foi gerado financeiro não mostra nada
                 if XFatOrd = True then
                 begin
                     LbFaturaNF.Caption:='';
                     Exit;
                 end;
                 //Paulo 05/03/2011: Seleciona dados do ordem
                 DMESTOQUE.Alx1.Close;
                 DMESTOQUE.Alx1.SQL.Clear;
                 DMESTOQUE.Alx1.SQL.Add('Select totord,totserv from ordem');
                 DMESTOQUE.Alx1.SQL.Add('where ordem.cod_ordem = :codped');
                 DMESTOQUE.Alx1.ParamByName('CODPED').AsInteger:=XCod_Pedido;
                 DMESTOQUE.Alx1.Open;

                 DMMACS.TMP.Insert;
                 DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_aux;
                 DMMACS.TMP.FieldByName('DESC1').AsString:='À VISTA';
                 //Paulo 10/03/2011: Se não permitir serviços não escreve os itens de serviço
                 If DMMACS.TLoja.FieldByName('SERVNFE').AsString='0' then
                     DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.Alx1.FieldByName('totord').AsCurrency
                 else
                     DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.Alx1.FieldByName('totord').AsCurrency - DMESTOQUE.Alx1.FieldByName('totserv').AsCurrency;
                 DMMACS.TMP.Post;
                 XCod_aux:=XCod_aux+1;
             End
             Else Begin
                 //filtra contas a receber
                 DMCONTA.TCtaR.Close;
                 DMCONTA.TCtaR.SQL.Clear;
                 DMCONTA.TCtaR.SQL.Add('select * from ctareceber where (ctareceber.cod_gerador=:CodGerador) and (ctareceber.tipogerador='+#39+'ORD'+#39+')');
                 DMCONTA.TCtaR.ParamByName('CodGerador').AsInteger:= XCod_Pedido;
                 DMCONTA.TCtaR.Open;

                 //Paulo 05/03/2011: Filtra os lançamento de caixa caso for pgto multiplo
                 DMCAIXA.TLanCaixa.Close;
                 DMCAIXA.TLanCaixa.SQL.Clear;
                 DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa lc where (lc.cod_gerador=:CODGERADOR) and (lc.tipogerador=''ORD'' )');
                 DMCAIXA.TLanCaixa.ParamByName('CODGERADOR').AsInteger:= XCod_Pedido;
                 DMCAIXA.TLanCaixa.Open;

                 If Not DMCONTA.TCtaR.IsEmpty
                 Then Begin
                     If (DMMACS.TLoja.FieldByName('SERVNFE').AsString='1') then
                     begin
                         DMESTOQUE.Alx1.Close;
                         DMESTOQUE.Alx1.SQL.Clear;
                         DMESTOQUE.Alx1.SQL.Add('Select totord,totserv from ordem');
                         DMESTOQUE.Alx1.SQL.Add('where ordem.cod_ordem = :codped');
                         DMESTOQUE.Alx1.ParamByName('CODPED').AsInteger:=XCod_Pedido;
                         DMESTOQUE.Alx1.Open;
                     end;
                     //seleciona as parcelas do ctas a receber
                     DMCONTA.TParcCR.Close;
                     DMCONTA.TParcCR.SQL.Clear;
                     DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.cod_ctareceber=:ctareceber');
                     DMCONTA.TParcCR.ParamByName('ctareceber').AsInteger:=DMCONTA.TCtaR.fieldbyname('cod_ctareceber').AsInteger;
                     DMCONTA.TParcCR.Open;
                     If Not DMCONTA.TParcCR.IsEmpty
                     Then Begin
                          //percorre todas as tabelas capturando valor e vencimento
                         DMCONTA.TParcCR.First;
                         While not DMCONTA.TParcCR.Eof do
                         Begin
                             If DMMACS.TLoja.FieldByName('SERVNFE').AsString<>'1' then
                             begin
                                 DMMACS.TMP.Insert;
                                 DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_aux;
                                 DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TParcCR.FieldByName('dtvenc').AsString;
                                 DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMCONTA.TParcCR.FieldByName('valor').AsCurrency;
                                 DMMACS.TMP.Post;
                             end;

                             XCod_aux:=XCod_aux+1;
                             DMCONTA.TParcCR.Next;
                         End;
                          //Paulo 14/03/2011: Calcula o valor as parcelas sem os valores de serviços
                         If DMMACS.TLoja.FieldByName('SERVNFE').AsString='1' then
                         begin
                            XvlrParcProd:= DMESTOQUE.Alx1.FieldByName('totserv').AsCurrency/(XCod_aux-1);
                            For I:= 1 to XCod_aux-1 do
                            Begin
                                DMMACS.TMP.Insert;
                                DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_aux;
                                DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TParcCR.FieldByName('dtvenc').AsString;
                                DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMCONTA.TParcCR.FieldByName('valor').AsCurrency - XvlrParcProd;
                                DMMACS.TMP.Post;
                            end;
                         end;
                     End;

                 End;
                 If Not DMCAIXA.TLanCaixa.IsEmpty
                 Then Begin
                     DMCAIXA.TLanCaixa.First;
                     While not DMCAIXA.TLanCaixa.Eof do
                     Begin
                         DMMACS.TMP.Insert;
                         DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_aux;
                         DMMACS.TMP.FieldByName('DESC1').AsString:=DMCAIXA.TLanCaixa.FieldByName('dtlanc').AsString;
                         DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMCAIXA.TLanCaixa.FieldByName('valor').AsCurrency;
                         DMMACS.TMP.Post;
                         XCod_aux:=XCod_aux+1;
                         DMCAIXA.TLanCaixa.Next;
                     end;

                 end

             End;
  }
  NFFatura(1);
  //seleciona as faturas a serem impressas
  DMCONTA.IBT.CommitRetaining;
  DMMACS.TMP.Close;
  DMMACS.TMP.SQL.Clear;
  DMMACS.TMP.SQL.Add('select * from tmp');
  DMMACS.TMP.Open;
  i := 1;
  LbFaturaNF.Lines.Clear;
  LbFaturaNF.Lines.Text := 'Fatura: ';
  //Reapassa dados da fatura para o campo tmp1 de loja
  if not DMMACS.TMP.IsEmpty then
  begin
    DMMACS.TMP.First;
    while not DMMACS.TMP.Eof do
    begin
      if I = 6 then
      begin
        LbFaturaNF.Lines.Text := LbFaturaNF.Lines.Text + '  ' +
          DMMACS.TMP.FieldByName('DESC1').AsString + ' - R$' + FormatFloat('0.00',
          DMMACS.TMP.FieldByName('VLR1').AsCurrency);
        LbFaturaNF.Lines.Add('');
        I := 0;
      end
      else
      begin
        if I = 1 then
          LbFaturaNF.Lines.Text := LbFaturaNF.Lines.Text +
            DMMACS.TMP.FieldByName('DESC1').AsString + ' - R$' +
            FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency)
        else
          LbFaturaNF.Lines.Text := LbFaturaNF.Lines.Text + '  ' +
            DMMACS.TMP.FieldByName('DESC1').AsString + ' - R$' +
            FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency);
      end;
      I := I + 1;
      DMMACS.TMP.Next;
    end;
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  end;
  //      LbFaturaNF.Caption:='Fatura: '+DMMACS.TLoja.FieldByName('tmp1').AsString;
end;

procedure TFPadraoFiscal.EdPlacaVeiculoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Length(EdPlacaVeiculo.Text) = 3) and not (KEY = 8) then
  begin
    EdPlacaVeiculo.Text := EdPlacaVeiculo.Text + '-';
    EdPlacaVeiculo.SelStart := 4;
  end;
end;

procedure TFPadraoFiscal.EdPlacaVeiculoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  // EdPlacaVeiculoKeyPress(Sender, Key);

  if not (key in ['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) then
    Key := #0
  else
  begin // ['A'..'Z','a'..'z'
    if Length(EdPlacaVeiculo.Text) < 4 then
      if not (key in ['a'..'z', 'A'..'Z', #8, #13]) then
        Key := #0;
    if (Length(EdPlacaVeiculo.Text) > 3) then
      if not (key in ['0'..'9', #8, #13]) then
        Key := #0
  end;

  EdPlacaVeiculo.Repaint;
end;

function TFPadraoFiscal.validaNfse: boolean;
begin
  Result := true;
  lbErro.Visible := false;

  if XImportNfe <> 1 then
  begin
    //Edmar - 05/12/2013 - Seleciona todos os serviços daquela ordem
    DMServ.TAlx3.Close;
    DMServ.TAlx3.SQL.Clear;
    DMServ.TAlx3.SQL.Add('select despadic.cod_gerador, despadic.nfse_codservico from despadic where despadic.cod_gerador = :codord');
    DMServ.TAlx3.ParamByName('codord').AsInteger := XCod_Pedido;
    DMServ.TAlx3.Open;
    DMServ.TAlx3.First;
    //Edmar - 28/02/2014 - Se for ISS faz as seguintes validações
    if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'ISS' then
    begin
      if DMMACS.TEmpresa.FieldByName('nfse_codtributacaomunicipal').AsString = ''
        then
      begin
        Result := false;
        RegistraFalha('   Erro: Informar o código de tributação do município');
        lbErro.Visible := true;
      end;

      if DMMACS.TEmpresa.FieldByName('nfse_descricaocnae').AsString = '' then
      begin
        Result := false;
        RegistraFalha('   Erro: Informar a descrição da empresa junto ao CNAE');
        lbErro.Visible := true;
      end;

      if DMMACS.TEmpresa.FieldByName('nfse_codigocnae').AsString = '' then
      begin
        Result := false;
        RegistraFalha('   Erro: Informar o código da empresa junto ao CNAE');
        lbErro.Visible := true;
      end;
    end
    else
    begin
      try
        //Edmar - 07/04/2014 - Valida se o CEP foi informado (apenas para a EQUIPLANO)
        if XCepPessoa = '' then
        begin
          Result := False;
          RegistraFalha('   Erro: É necessário informar o CEP do cliente');
          lbErro.Visible := true;
        end;
      except
        BitBtn2.Click;
      end;
    end;

    if DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = '' then
    begin
      Result := false;
      RegistraFalha('   Erro: Informar o tipo da tributação da empresa junto ao município');
      lbErro.Visible := true;
    end;

    if DMMACS.TEmpresa.FieldByName('insc_mun').AsString = '' then
    begin
      Result := false;
      RegistraFalha('   Erro: Informe uma inscrição municipal válida para a Empresa');
      lbErro.Visible := true;
    end;

    if DMMACS.TEmpresa.FieldByName('tipoempresa').AsString = '' then
    begin
      Result := false;
      RegistraFalha('   Erro: Informe o tipo da empresa');
      lbErro.Visible := true;
    end;

    if not
      VerificarEmailTomador(DMServ.TAlx3.FieldByName('cod_gerador').AsString) then
    begin
      Result := False;
      RegistraFalha('   Erro: É necessário informar o e-mail do tomador para enviar a Nfse');
      lbErro.Visible := true;
    end;

    while not DMServ.TAlx3.Eof do
    begin
      //Edmar - 05/12/2013 - Teste se o serviço possui um serviço linkado
      if DMServ.TAlx3.FieldByName('nfse_codservico').AsString = '' then
      begin
        Result := false;
        RegistraFalha('   Erro: Existem serviços que não possuem serviços atribuidos');
        lbErro.Visible := true;
      end;
      DMServ.TAlx3.Next;
    end;
    //Angelo - 07/08/2015 - Inscrição municipal não é um requisito necessário!
    {
    if DMServ.TOrd.FieldByName('RT_ISS').AsString = '1' then
    begin
        DMServ.TAlx3.Close;
        DMServ.TAlx3.SQL.Clear;
        DMServ.TAlx3.SQL.Add('select pessoaj.insc_mun from ordem ');
        DMServ.TAlx3.SQL.Add('left join cliente on cliente.cod_cliente = ordem.cod_cliente ');
        DMServ.TAlx3.SQL.Add('left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa ');
        DMServ.TAlx3.SQL.Add('left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa ');
        DMServ.TAlx3.SQL.Add('where ordem.cod_ordem = :ordem ');
        DMServ.TAlx3.ParamByName('ordem').AsInteger := XCod_Pedido;
        DMServ.TAlx3.Open;

        if DMServ.TAlx3.FieldByName('insc_mun').AsString = '' then
        begin
            Result := false;
            RegistraFalha('   Erro: É necessário informar a inscrição municipal para o cliente');
            lbErro.Visible := true;
        end;
    end; }
  end;
end;

procedure TFPadraoFiscal.DbGridServicosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  try
    if DMESTOQUE.TSlaveServ.FieldByName('DescricaoServico').AsString = '' then
      DbGridServicos.Canvas.Font.Color := clRed;

    DbGridServicos.Canvas.FillRect(Rect);
    DbGridServicos.DefaultDrawDataCell(Rect,
      DbGridServicos.Columns[datacol].Field, State);
  except
  end;
end;

procedure TFPadraoFiscal.DbGridServicosDblClick(Sender: TObject);
begin
  inherited;
  AbrirForm(TFEscolhaServico, FEscolhaServico, 1);
  if FMenu.xServico <> '' then
  begin
    try
      DMServ.Alx.Close;
      dmserv.Alx.SQL.Clear;
      DMServ.Alx.SQL.Add('update despadic set despadic.nfse_codservico = :codser where despadic.cod_despadic = :coddesp');
      DMServ.alx.ParamByName('codser').AsString := FMenu.xServico;
      try
        DMServ.Alx.ParamByName('coddesp').AsString :=
          DMESTOQUE.TSlaveServ.fieldbyname('CodigoDespesa').AsString;
      except
        MessageDlg('Atualize o Banco de dados para corrigir uma falha:' + #13 +
          #10 + 'Campo Codigo da Despesa (serviço) não encontrado.', mtWarning,
          [mbOK], 0);
      end;

      DMServ.Alx.ExecSQL;
      //       	DMServ.Alx.Transaction.CommitRetaining;
      DMServ.IBT.CommitRetaining;
    except
      //			DMServ.Alx.Transaction.RollbackRetaining;
      DMServ.IBT.RollbackRetaining;
    end;
    Atualiza;
  end;
end;

function TFPadraoFiscal.enviaNfe: Boolean;
begin
  if XValidado = True then
  begin
    {FMenu.XDevolucao := False;
    FMenu.XOutrosEnt := False;}
    try
      //Edmar - 20/03/2015 - Se for NF-e de devolução, passa o chave do campo para a variavel auxiliar
      if FMenu.XOutrosEnt or FMenu.XDevolucao then
        FMenu.XChaveNFe := EdChaveNFE.Text;
      EdChaveNFE.Text := '';
      //            PCDadosAdicionais.ActivePage := TabSheet1;
      //            PCReservadosFisco.ActivePage := TabSheet5;
      if (FMenu.XComplementacao = True) then
      begin
        MDadosAdicionais.Text := '';
        MDadosAdicionais.Text := 'NOTA FISCAL COMPLEMENTAR REFERENTE A NFE ' +
          XNumNFeComp + ' CHAVE ' + XNFeChaveComp + '';
      end;

      if (XTipo = 'PEDV') or (XTipo = 'ORDEM') then
      begin
        XCpfConsumidor := Trim(LCpfConsumidor.Caption);
        XNomeConsumidor := Trim(LNomeConsumidor.Caption);
        //
        XNFCeComCpf := comCpf.Checked;
        //Edmar - 08/10/2015 - Se for NF-e, por padrão ele vai enviar com CPF
        if not XEmiteNFCe then
          XNFCeComCpf := True;

        if (XEmiteNFCe) and (XNFCeComCpf) and (Trim(LCpfConsumidor.Caption) = '')
          then
        begin
          MessageDlg('Você está enviando uma NFC-e com CPF. Porém não foi informado nenhum CPF válido. Corrija e tente novamente.', mtError, [mbOK], 0);
          Exit;
        end;
      end
      else
        XNFCeComCpf := True;

      //Edmar - 27/11/2015 - Verifica CSOSN da venda se estiver fazendo NFC-e
      //ou o cliente não for contribuiente de ICMS
      if (XEmiteNFCe) or ((Fmenu.XTributaCliente = '9') and (not XEmiteNFCe))
        then
      begin
        if FMenu.XDevolucao = False then
          if not VerificaCsosnNFCe then
            Exit;
      end;

      if XTipo = 'PEDC' then
      begin
        DMENTRADA.TPedC.Edit;
        DMENTRADA.TPedC.FieldByName('FISCO').AsString := 'NF';
        DMENTRADA.TPedC.FieldByName('numfiscal').AsString :=
          EdNumeroFiscal.Text;
        if FMenu.XDevolucao then
          DMENTRADA.TPedC.FieldByName('NUMDEV').AsString := 'DEV'
        else if FMenu.XOutrosEnt = True then
          DMENTRADA.TPedC.FieldByName('NUMDEV').AsString := 'OUT';
        {if FMenu.XOutrosEnt = true then
             DMENTRADA.TPedC.FieldByName('NUMDEV').AsString := 'OUT';}
        if EdVlrFrete.ValueNumeric > 0 then
          DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency :=
            EdVlrFrete.ValueNumeric
        else
          DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency := 0;

        //Repassa valores para a tabela de pedidos
        DMENTRADA.TPedC.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency :=
          EdVlrIcmsST.ValueNumeric;
        DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency :=
          EdVlrFrete.ValueNumeric;
        DMENTRADA.TPedC.FieldByName('VLROUTROS').AsCurrency :=
          EdOutrasDespesas.ValueNumeric;
        DMENTRADA.TPedC.FieldByName('VLRIPI').AsCurrency :=
          EdVlrIpi.ValueNumeric;

        DMENTRADA.TPedC.Post;

        DMENTRADA.TFiscPC.Close;
        DMENTRADA.TFiscPC.SQL.Clear;
        DMENTRADA.TFiscPC.SQL.Add(' Select * from docfis where docfis.cod_pedido=:Codigo ');
        DMENTRADA.TFiscPC.ParamByName('Codigo').AsInteger := XCod_Pedido;
        DMENTRADA.TFiscPC.Open;
        if DMENTRADA.TFiscPC.IsEmpty then
          InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC')
            //INSERE NOVO DOCUMENTO FISCAL
        else
          DMENTRADA.TFiscPC.Edit;

        //Marca no fiscal caso seja uma nota de emissão propria, se for uma nota de devolução é emissão propria da empresa
        if FMenu.XNotaEntrada = True then
          DMENTRADA.TFiscPC.FieldByName('EMISSAOPROPRIA').AsString := '1'
        else
          DMENTRADA.TFiscPC.FieldByName('EMISSAOPROPRIA').AsString := '0';

        XTabFiscal.FieldByName('NUMDOCFIS').AsString := EdNumeroFiscal.Text;
        XTabFiscal.FieldByName('NFECHAVE').AsString := XChaveFiscalNFeXml;
          //Jônatas 26/07/2013 - Grava a chave da NFe
        XTabFiscal.FieldByName('TIPODOCFIS').AsString := '3';
          //Jônatas 01/08/2013 - Inserir o tipo de documento fiscal(3=NFe)
        if XEmiteNFCe then
          XTabFiscal.FieldByName('MODELONF').AsString := '65'
        else
          XTabFiscal.FieldByName('MODELONF').AsString := '55';
        XTabFiscal.FieldByName('numdocfiscint').AsInteger :=
          EdNumeroFiscal.ValueInteger;
        XTabFiscal.FieldByName('COD_PEDIDO').AsInteger := XCod_Pedido;
        XTabFiscal.FieldByName('obs').AsString :=
          RemoveQuebraLinha(TiraAcentos(MDadosAdicionais.Text));

        //salva as informações de importação se o cliente for estrangeiro
        if XEstrangeiro then
        begin
          DMENTRADA.TFiscPC.FieldByName('NUMERODIIMP').AsString :=
            edNumeroDi.Text;
          DMENTRADA.TFiscPC.FieldByName('DATADIIMP').AsDateTime :=
            edDtRegistroDi.DateTime;
          DMENTRADA.TFiscPC.FieldByName('DATADESEMBARQUEIMP').AsDateTime :=
            edDtDesembDi.DateTime;
          DMENTRADA.TFiscPC.FieldByName('TIPOTRANSPORTEIMP').AsInteger :=
            cbTipoTransporte.ItemIndex + 1;
          DMENTRADA.TFiscPC.FieldByName('VALORAFRMMIMP').AsCurrency :=
            edValorAfrmm.ValueNumeric;
          DMENTRADA.TFiscPC.FieldByName('FORMAIMPORTACAOIMP').AsInteger :=
            cbFormaImportacao.ItemIndex + 1;
          DMENTRADA.TFiscPC.FieldByName('CNPJADQTENCIMP').AsString :=
            edCnpjAdqDi.Text;
          DMENTRADA.TFiscPC.FieldByName('UFADQTENCIMP').AsString :=
            edUfAdqDi.Text;
          DMENTRADA.TFiscPC.FieldByName('CODEXPORTADORIMP').AsString :=
            edCodigoExportador.Text;
        end;
      end;

      if XTipo = 'PEDV' then
      begin
        DMSAIDA.TPedV.Edit;
        //Efetua controles para marcações de tipo de impressão
        if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') then
        begin
          DMSAIDA.TPedV.FieldByName('FISCO').AsString := 'ECF';
        end
        else
        begin
          if XEmiteNFCe then
          begin
            DMSAIDA.TPedV.FieldByName('FISCO').AsString := 'NFCe';
            if XNFCeComCpf then
            begin
              DMSAIDA.TPedV.FieldByName('NOMECLI').AsString :=
                Copy(XNomeConsumidor, 0, 50);
              DMSAIDA.TPedV.FieldByName('CPFCNPJ').AsString := XCpfConsumidor;
            end;
          end
          else
            DMSAIDA.TPedV.FieldByName('FISCO').AsString := 'NF';
        end;

        DMSAIDA.TPedV.FieldByName('numfiscal').AsString := EdNumeroFiscal.Text;
        DMSAIDA.TPedV.FieldByName('NUMECF').AsString := XNumECF;
        DMSAIDA.TPedV.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency :=
          EdVlrIcmsST.ValueNumeric;
        DMSAIDA.TPedV.FieldByName('VLRFRETE').AsCurrency :=
          EdVlrFrete.ValueNumeric;
        DMSAIDA.TPedV.FieldByName('VLROUTROS').AsCurrency := EdOutrasDespesas.ValueNumeric;

        DMSAIDA.TPedV.FieldByName('VLRIPI').AsCurrency := EdVlrIpi.ValueNumeric;
        if FMenu.XDevolucao = True then
          DMSAIDA.TPedV.FieldByName('TIPO').AsString := 'DEV';
        if FMenu.XRemessaGarantia = True then
          DMSAIDA.TPedV.FieldByName('TIPO').AsString := 'GAR';
        if FMenu.XSimplesRemessa = True then
          DMSAIDA.TPedV.FieldByName('TIPO').AsString := 'REM';
        if FMenu.XOutrosFisc = True then
          DMSAIDA.TPedV.FieldByName('TIPO').AsString := 'OUT';

        DMSAIDA.TPedV.Post;

        DMSAIDA.TFiscPV.Close;
        DMSAIDA.TFiscPV.SQL.Clear;
        DMSAIDA.TFiscPV.SQL.Add('  Select * from docfissaida where docfissaida.cod_pedido=:Codigo ');
        DMSAIDA.TFiscPV.ParamByName('Codigo').AsInteger := XCod_Pedido;
        DMSAIDA.TFiscPV.Open;
        if DMSAIDA.TFiscPV.IsEmpty then
          InserReg(DMSAIDA.TFiscPV, 'docfissaida', 'cod_docfisc')
            //INSERE NOVO DOCUMENTO FISCAL
        else
          DMSAIDA.TFiscPV.Edit;
        XTabFiscal.FieldByName('numdocfis').AsString := EdNumeroFiscal.Text;
        XTabFiscal.FieldByName('numdocfisint').AsString := EdNumeroFiscal.Text;
        XTabFiscal.FieldByName('COD_PEDIDO').AsInteger := XCod_Pedido;
        XTabFiscal.FieldByName('NFEVRETPIS').AsCurrency := edPISRetido.ValueNumeric;
        XTabFiscal.FieldByName('NFEVRETCOFINS').AsCurrency := edCofinsRetido.ValueNumeric;
        XTabFiscal.FieldByName('NFEVRETCSLL').AsCurrency := edCsllRetido.ValueNumeric;
        XTabFiscal.FieldByName('NFEVBCIRRF').AsCurrency := edBCRetido.ValueNumeric;
        XTabFiscal.FieldByName('NFEVIRRF').AsCurrency := edIrrfRetido.ValueNumeric;
        XTabFiscal.FieldByName('NFEVBCRETPREV').AsCurrency := edBCPrevidenciaRetido.ValueNumeric;
        XTabFiscal.FieldByName('NFEVRETPREV').AsCurrency := edValorPrevidenciaRetido.ValueNumeric;
        XTabFiscal.FieldByName('RESERVFISC01').AsString :=
          RemoveQuebraLinha(MReservadosFisco.Text);
        XTabFiscal.FieldByName('dadosad01').AsString :=
          RemoveQuebraLinha(TiraAcentos(MDadosAdicionais.Text));
        if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') then
          XTabFiscal.FieldByName('TIPOIMPFISC').AsString := 'NF';
        if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFE')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
            then
          XTabFiscal.FieldByName('TIPOIMPFISC').AsString := 'NFE';
      end;
      if XTipo = 'ORDEM' then
      begin
        if not DMESTOQUE.TSlaveServ.IsEmpty then
        begin
          XServicoOp := True;
        end;
        DMServ.TOrd.Edit;
        if XEmiteNFCe then
        begin
          DMServ.TOrd.FieldByName('FISCO').AsString := 'NFCe';
          if XNFCeComCpf then
          begin
            DMServ.TOrd.FieldByName('NOMECLI').AsString := XNomeConsumidor;
            DMServ.TOrd.FieldByName('CPFCNPJ').AsString := XCpfConsumidor;
          end
          else
          begin
            DMServ.TOrd.FieldByName('NOMECLI').AsString := 'CONSUMIDOR';
            DMServ.TOrd.FieldByName('CPFCNPJ').AsString := '';
          end;
        end
        else
          DMServ.TOrd.FieldByName('FISCO').AsString := 'NF';
        DMServ.TOrd.FieldByName('NUMFISCAL').AsString := EdNumeroFiscal.Text;
        DMServ.TOrd.Post;

        DMServ.TFiscOrd.Close;
        DMServ.TFiscOrd.SQL.Clear;
        DMServ.TFiscOrd.SQL.Add('  Select * from docfisord where docfisord.cod_ordem=:Codigo ');
        DMServ.TFiscOrd.ParamByName('Codigo').AsInteger := XCod_Pedido;
        DMServ.TFiscOrd.Open;
        if DMServ.TFiscOrd.IsEmpty then
          InserReg(DMServ.TFiscOrd, 'docfisord', 'cod_docfiscord')
            //INSERE NOVO DOCUMENTO FISCAL
        else
          DMServ.TFiscOrd.Edit;
        XTabFiscal.FieldByName('numdocfis').AsString := EdNumeroFiscal.Text;
        XTabFiscal.FieldByName('numdocfisint').AsString := EdNumeroFiscal.Text;
        XTabFiscal.FieldByName('COD_ORDEM').AsInteger := XCod_Pedido;
        XTabFiscal.FieldByName('dadosad01').AsString :=
          RemoveQuebraLinha(TiraAcentos(MDadosAdicionais.Text));
        XTabFiscal.FieldByName('VLRTOTSERV').AsCurrency :=
          EdVlrServicos.ValueNumeric;
        XTabFiscal.FieldByName('VLRTOTISS').AsCurrency := EdVlrIss.ValueNumeric;

        XTabFiscal.FieldByName('RESERVFISC01').AsString :=
          RemoveQuebraLinha(MReservadosFisco.Text);
      end;
      //Define Tipo de Operação Fiscal
      if (XTipo = 'PEDV') and (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString =
        'ECF') then
      begin
        XTabFiscal.FieldByName('TIPODOCFIS').AsString := '1'; //ecf
        XTabFiscal.FieldByName('SERIE').AsString := 'ECF';
      end
      else
      begin
        if DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF' then
        begin
          XTabFiscal.FieldByName('TIPODOCFIS').AsString := '2';
            //Nota Fiscal Normal
          XTabFiscal.FieldByName('MODELONF').AsString := '1';
            //Nota Fiscal Eletronica
        end;
        if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
          or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
            then
        begin
          XTabFiscal.FieldByName('TIPODOCFIS').AsString := '3';
            //Nota Fiscal Eletronica

          if XEmiteNFCe then
            XTabFiscal.FieldByName('MODELONF').AsString := '65'
          else
            XTabFiscal.FieldByName('MODELONF').AsString := '55';
              //Nota Fiscal Eletronica
        end;
      end;

      if XEmiteNFCe then
      begin
        XTabFiscal.FieldByName('SERIE').AsString :=
          DMMACS.TEmpresa.FieldByName('NFCESERIE').AsString;
        XTabFiscal.FieldByName('NFESERIE').AsString :=
          DMMACS.TEmpresa.FieldByName('NFCESERIE').AsString;
      end
      else
      begin
        XTabFiscal.FieldByName('SERIE').AsString :=
          DMMACS.TEmpresa.FieldByName('NFESERIE').AsString;
        XTabFiscal.FieldByName('NFESERIE').AsString :=
          DMMACS.TEmpresa.FieldByName('NFESERIE').AsString;
      end;

      XTabFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger :=
        XCod_Perido_Fiscal;
      XTabFiscal.FieldByName('DTEMISSAO').AsString := EdDtEmissao.Text;
      if (EdDtsaidaEntrada.Text = '  /  /    ') then
        XTabFiscal.FieldByName('DTENTSAID').AsString := ''
      else
        XTabFiscal.FieldByName('DTENTSAID').AsString := EdDtsaidaEntrada.Text;
      if (EdHoraSaida.Text = '  :  :  ') then
        XTabFiscal.FieldByName('HORASAID').AsString := ''
      else
        XTabFiscal.FieldByName('HORASAID').AsString := EdHoraSaida.Text;
      XTabFiscal.FieldByName('COD_CFOP').AsInteger := XCod_Cfop1;
      XTabFiscal.FieldByName('COD_CFOP1').AsInteger := XCod_Cfop2;
      XTabFiscal.FieldByName('COD_CFOP2').AsInteger := XCod_Cfop3;
      XTabFiscal.FieldByName('COD_TRANSP').AsInteger := XCod_Transp;
      //Edmar - 18/06/2015 - busca os valores do documento fiscal da propria tela
      //não mais das variavéis auxiliares
      XTabFiscal.FieldByName('BASEICMS').AsCurrency := EdBaseICMS.ValueNumeric;
        //XVlrBaseIcmsOp;
      XTabFiscal.FieldByName('VLRICMS').AsCurrency := EdVlrIcms.ValueNumeric;
        //XVlrIcmsOp;
      XTabFiscal.FieldByName('BASCALSUBS').AsCurrency :=
        EdBaseICMSST.ValueNumeric; //XVlrBaseIcmsSt;
      XTabFiscal.FieldByName('VLRICMSUBS').AsCurrency :=
        EdVlrIcmsST.ValueNumeric; //XVlrIcmsSt;
      XTabFiscal.FieldByName('VLRDESCONTO').AsCurrency :=
        EdDesconto.ValueNumeric;
      XTabFiscal.FieldByName('VLRTOTPROD').AsCurrency :=
        EdTotalProdutos.ValueNumeric;
      XTabFiscal.FieldByName('VLRTOTDOCNF').AsCurrency :=
        EdTotalNotaFiscal.ValueNumeric; //XTotalNF;
      XTabFiscal.FieldByName('VALORTOTALTRIBUTA').AsCurrency :=
        XValorTotalAproxTributacaoNacional;
      XTabFiscal.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency :=
        XValorTotalAproxTributacaoEstadual;
      XTabFiscal.FieldByName('ALIQUOTATOTALTRIBUTA').AsCurrency :=
        XVlrAliquotaTotTributa;
      //Verifica Caso Especial de Empresa Normal para Fora do estado
      // - 14/04/2009: alterado para a mercescan
      if (Fmenu.XTributaEmpresa = 'NORMAL') then
      begin
        //Calcula somente fora do estado
         //If XUfOrigem <> XUfDestino
        if not cbOperacaoInterna.Checked then
        begin
          XTabFiscal.FieldByName('BASEICMS').AsCurrency :=
            EdBaseICMS.ValueNumeric;
          XTabFiscal.FieldByName('VLRICMS').AsCurrency :=
            EdVlrIcms.ValueNumeric;
          XTabFiscal.FieldByName('BASCALSUBS').AsCurrency :=
            EdBaseICMSST.ValueNumeric;
          XTabFiscal.FieldByName('VLRICMSUBS').AsCurrency :=
            EdVlrIcmsST.ValueNumeric;
          XTabFiscal.FieldByName('VLRTOTDOCNF').AsCurrency :=
            EdTotalNotaFiscal.ValueNumeric;
        end;
      end;
      XTabFiscal.FieldByName('VLRFRETE').AsCurrency := EdVlrFrete.ValueNumeric;
      XTabFiscal.FieldByName('FRETECONTA').AsString := EdFreteConta.Text;
      XTabFiscal.FieldByName('VLRSEG').AsCurrency := EdVlrSeguro.ValueNumeric;
      XTabFiscal.FieldByName('VLRTOTIPI').AsCurrency := XvlrIpi;
      XTabFiscal.FieldByName('VLROUTRASDESP').AsCurrency :=
        EdOutrasDespesas.ValueNumeric;
      if CBFreteNF.Checked = True then
        XTabFiscal.FieldByName('FRETECOMP').AsString := '1'
      else
        XTabFiscal.FieldByName('FRETECOMP').AsString := '0';
      XTabFiscal.FieldByName('NUMCONHEC').AsString := EdNumVeiculo.Text;
      XTabFiscal.FieldByName('VLROUTRASDESP').AsCurrency :=
        EdOutrasDespesas.ValueNumeric;
      XTabFiscal.FieldByName('QUANTFRETE').AsCurrency :=
        EdQuantidadeVeiculo.ValueNumeric;
      XTabFiscal.FieldByName('ESPECIEFRETE').AsString := EdEspecieVeiculo.Text;
      XTabFiscal.FieldByName('MARCAFRETE').AsString := EdMarcaVeiculo.Text;
      XTabFiscal.FieldByName('PLACA').AsString := EdPlacaVeiculo.Text;
      XTabFiscal.FieldByName('UFPLACA').AsString := EdUFVeiculo.Text;
      XTabFiscal.FieldByName('PESOBRUTO').AsCurrency :=
        EdPesoBrutoVeiculo.ValueNumeric;
      XTabFiscal.FieldByName('PESOLIQ').AsCurrency :=
        EdPesoLiquidoVeiculo.ValueNumeric;
      XTabFiscal.Post;

      if XTipo = 'PEDC' then
        DMENTRADA.IBT.CommitRetaining;
      if XTipo = 'PEDV' then
        DMSAIDA.IBT.CommitRetaining;
      if XTipo = 'ORDEM' then
        DMServ.IBT.CommitRetaining;

      //IMPRESSÃO NOTA FISCAL
      if (XTipo = 'PEDV') or (XTipo = 'ORDEM') or (FMenu.XNotaEntrada = True)
        then
      begin
        //Verifica se o caixa é emitente de nota fiscal
        DMCAIXA.TCaixa.Close;
        DMCAIXA.TCaixa.SQL.Clear;
        DMCAIXA.TCaixa.SQL.Add(' Select * from caixa where caixa.cod_caixa=:codigo ');
        DMCAIXA.TCaixa.ParamByName('codigo').AsString :=
          FMenu.LCODCAIXA.Caption;
        DMCAIXA.TCaixa.Open;
        if not DMCAIXA.TCaixa.IsEmpty then
        begin
          //IMPRIME NOTA FISCAL NORMAL
          if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') then
          begin
            if ImpNf = False then
            begin
              MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!'
                + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
            end;
          end;
          //Paulo 04/08/2010:IMPRIME CUPOM FISCAL
          if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') then
          begin
            if ImpNf = False then
            begin
              MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!'
                + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
            end;
          end;
          if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
            or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
            or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
              then
          begin
            if ImpNfe = False then
            begin
              MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!'
                + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
            end;
          end;
        end;
      end;
      EdChaveNFE.Text := '';
      Close;
    except
      Mensagem('OPÇÃO BLOQUEADA',
        'Erro ao gravar a Nota Fiscal. Reinicie o aplicativo.', '', 1, 1, False,
        'a');
    end;
  end
  else
  begin
    MessageDlg('O Sistema não pode salvar os dados fiscais com validação negativa:'
      + #13 + #10 + MErros.Lines.Text + #13 + #10 + #13 + #10 +
      'Após corrigir os problemas abaixo, clique no botão atualizar.', mtError,
      [mbOK], 0);
  end;
end;

function TFPadraoFiscal.enviaNfse: Boolean;
var
  xDadAdc, xDadAdcImp: string;
  xI: integer;
  xValorTributacao: Real;
begin
  if xValidado then
  begin
    //if FMenu.TIPOREL <> 'NFSE' then
    //begin
    try
      //Paulo 17/04/2012: Salva dados no docfisord
      DMServ.TFiscOrd.Close;
      DMServ.TFiscOrd.SQL.Clear;
      DMServ.TFiscOrd.SQL.Add('  Select * from docfisord where docfisord.cod_ordem=:Codigo ');
      DMServ.TFiscOrd.ParamByName('Codigo').AsInteger := XCod_Pedido;
      DMServ.TFiscOrd.Open;
      if DMServ.TFiscOrd.IsEmpty then
        InserReg(DMServ.TFiscOrd, 'docfisord', 'cod_docfiscord')
          //INSERE NOVO DOCUMENTO FISCAL
      else
        DMServ.TFiscOrd.Edit;

      //XTabFiscal.FieldByName('numdocfis').AsString := EdNumeroFiscal.Text;
      XTabFiscal.FieldByName('NUMDOCANT').AsString := 'NFSE';
      XTabFiscal.FieldByName('COD_ORDEM').AsInteger := XCod_Pedido;
      XTabFiscal.FieldByName('VLRTOTSERV').AsCurrency :=
        EdVlrServicos.ValueNumeric;
      XTabFiscal.FieldByName('VLRTOTISS').AsCurrency := EdVlrIss.ValueNumeric;
      XTabFiscal.FieldByName('VLRTOTDOCNF').AsCurrency :=
        EdTotalNotaFiscal.ValueNumeric;
      XTabFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger :=
        XCod_Perido_Fiscal;
      XTabFiscal.FieldByName('DTEMISSAO').AsString := EdDtEmissao.Text;
      XTabFiscal.FieldByName('DTENTSAID').AsString := EdDtsaidaEntrada.Text;
      XTabFiscal.FieldByName('HORASAID').AsString := EdHoraSaida.Text;
      XTabFiscal.FieldByName('DADOSAD01').AsString :=
        RemoveQuebraLinha(TiraAcentos(MDadosAdicionais.Text));
      XTabFiscal.FieldByName('NFSE_STATUSGERAL').AsString := '3';
        //atribui status geral Nfse (3 - erro, 1 - enviada)
      if cbRetIss.Text = 'SIM' then
        //Edmar - 20/12/2013 - Testa se deve ou não reter o ISS
        XTabFiscal.FieldByName('RETER_ISS').AsString := '1'
      else
        XTabFiscal.FieldByName('RETER_ISS').AsString := '2';

      DMServ.TOrd.Edit;
      DMServ.TOrd.FieldByName('STATUSNFSE').AsString := '3';
      DMServ.TOrd.FieldByName('TOTSERV').AsCurrency :=
        EdVlrServicos.ValueNumeric;
      DMServ.TOrd.FieldByName('TOTISS').AsCurrency := EdVlrIss.ValueNumeric;
      DMServ.TOrd.Post;

      DMServ.IBT.CommitRetaining;
    except
      DMServ.IBT.RollbackRetaining;
    end;
    //end;

    xValorTributacao := (EdVlrServicos.ValueNumeric *
      DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTANFSE').AsCurrency) / 100;
    xDadAdcImp := 'Valor Aproximado da Tributação de ' +
      DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTANFSE').AsString + '%. R$ ' +
      FormatFloat('######0.00', xValorTributacao);

    XTabFiscal.Edit;
    XTabFiscal.FieldByName('IMPOSTONFSE').AsString := xDadAdcImp;
    XTabFiscal.Post;
    DMServ.IBT.CommitRetaining;

    FMenu.xValorPis := edPis.ValueNumeric;
    FMenu.xValorConfins := edConfins.ValueNumeric;
    FMenu.xReterIss := cbRetIss.Text;
    FMenu.xValorISS := EdVlrIss.ValueNumeric;

    if MDadosAdicionais.Text <> '' then
    begin
      for xI := 0 to MDadosAdicionais.Lines.Count do
      begin
        xDadAdc := xDadAdc + MDadosAdicionais.Lines[xI];
      end;
    end;

    //Application.CreateForm(TFMzrNFSe, FMzrNfse);

    //Edmar - 28/03/2014 - Se estiver retendo ISS soma o valor do ISS no valor liquido dos serviços para retornar
    // o valor total dos serviços depois do desconto.
    // senão, só atribui o valor dos serviços no valor total pois esse é o valor real após ter dado o desconto na OS.
    if cbRetIss.Text = 'SIM' then
      xValorTotalServico := EdVlrServicos.ValueNumeric + EdVlrIss.ValueNumeric
    else
      xValorTotalServico := EdVlrServicos.ValueNumeric;

    FMzrNFSe := TFMzrNFSe.Create(FMzrNFSe);
      //cria o formulario de transmissão da Nfe

    if xDadAdcImp = '' then
    begin
      XTabFiscal.Open;
      xDadAdcImp := XTabFiscal.FieldByName('IMPOSTONFSE').AsString;
    end;

    XSetCodigoDestinatario :=
      DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
    XSetCodigoPedido := XCod_Pedido;
    FMzrNFSe.Inicia(StrToInt(EdNumeroFiscal.Text),
      DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger, XCod_Pedido,
      LPeriodoFiscal.Caption, xValorTotalServico, EdVlrServicos.ValueNumeric,
      xValorTotalServico, xDadAdcImp, xDadAdc, 'IMP');
    FMzrNFSe.ShowModal;
    Close;
  end
  else
    Mensagem('OPÇÃO BLOQUEADA',
      'O Sistema não pode salvar os dados fiscais com validação negativa. Verifique o roda-pé em vermelho',
      '', 1, 1, False, 'A');
end;

procedure TFPadraoFiscal.cbRetIssExit(Sender: TObject);
begin
  inherited;
  if (DMServ.TOrd.FieldByName('RT_ISS').AsString = '1') then
  begin
    if (cbRetIss.Text = 'SIM') then
      EdVlrServicos.ValueNumeric := DMServ.tOrd.FieldByName('totserv').AsCurrency
    else
      EdVlrServicos.ValueNumeric := DMServ.tOrd.FieldByName('totserv').AsCurrency
        + EdVlrIss.ValueNumeric;
  end
  else
  begin
    if (cbRetIss.Text = 'SIM') then
      EdVlrServicos.ValueNumeric := DMServ.tOrd.FieldByName('totserv').AsCurrency
        - EdVlrIss.ValueNumeric
    else
      EdVlrServicos.ValueNumeric :=
        DMServ.tOrd.FieldByName('totserv').AsCurrency;
  end;

  {
  if cbRetIss.Text = 'SIM' then
      EdVlrServicos.ValueNumeric := DMServ.tOrd.FieldByName('totserv').AsCurrency - EdVlrIss.ValueNumeric //xValorTotalServico - EdVlrIss.ValueNumeric
  else
      EdVlrServicos.ValueNumeric := DMServ.tOrd.FieldByName('totserv').AsCurrency;//xValorTotalServico;
  }
end;

procedure TFPadraoFiscal.btnSetaPadraoClick(Sender: TObject);
var
  xServicoPadrao: string;
begin
  inherited;
  //Edmar - 07/01/2014 - Seleciona o numero do serviço padrão
  DMServ.Alx.Close;
  DMServ.Alx.SQL.Clear;
  DMServ.Alx.SQL.Add('select servico_nfse.num_servico from servico_nfse where servico_nfse.padrao = ''1'' and servico_nfse.ativo = ''1''');
  DMServ.Alx.Open;

  if not DMServ.Alx.IsEmpty then
    xServicoPadrao := DMServ.Alx.FieldByName('num_servico').AsString
  else
    Mensagem(' A V I S O ',
      'Não existe nenhum serviço marcado como padrão. Verifique.', '', 1, 1, False,
      'a');

  try
    DMESTOQUE.TSlaveServ.First;

    while not DMESTOQUE.TSlaveServ.Eof do
    begin
      DMServ.Alx.Close;
      DMServ.Alx.SQL.Clear;
      DMServ.Alx.SQL.Add('update despadic set despadic.nfse_codservico = :codser where despadic.cod_despadic = :coddesp');
      DMServ.alx.ParamByName('codser').AsString := xServicoPadrao;
      DMServ.Alx.ParamByName('coddesp').AsString :=
        DMESTOQUE.TSlaveServ.fieldbyname('CodigoDespesa').AsString;

      DMServ.Alx.ExecSQL;
      //  	DMServ.Alx.Transaction.CommitRetaining;
      DMServ.IBT.CommitRetaining;

      DMESTOQUE.TSlaveServ.Next;
    end;
  except
    //  	DMServ.Alx.Transaction.RollbackRetaining;
    DMServ.IBT.RollbackRetaining;
  end;
  Atualiza;
end;

function TFPadraoFiscal.VerificarEmailTomador(xCodGerador: string): boolean;
begin
  Result := true;
  //Edmar - 22/01/2014 - Verifica se é equiplano a administradora
  if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'EQUIPLANO' then
  begin
    //Edmar - 22/01/2014 - Recupera email do cliente
    DMServ.TAlx2.Close;
    DMServ.talx2.SQL.Clear;
    DMServ.TAlx2.SQL.Add(' select pessoa.emailpadrao from ordem ');
    DMServ.TAlx2.SQL.Add(' left join cliente on cliente.cod_cliente = ordem.cod_cliente ');
    DMServ.TAlx2.SQL.Add(' left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa ');
    DMServ.TAlx2.SQL.Add(' left join email on email.cod_pessoa = pessoa.cod_pessoa ');
    DMServ.TAlx2.SQL.Add(' where ordem.cod_ordem = :ORDEM ');
    DMServ.TAlx2.ParamByName('ordem').AsInteger := XCod_Pedido;
    DMServ.TAlx2.Open;

    if (DMServ.TAlx2.FieldByName('emailpadrao').AsString = '') then
      Result := false;
  end;
end;

function TFPadraoFiscal.ValidaDevolucao: Boolean;
begin
  Result := True;

  //Edmar - 12/03/2015 - se a nf for de devolução
  if {FMenu.XOutrosEnt OR}FMenu.XDevolucao then
  begin
    {EdChaveNFE.Visible := True;
       btnInsereChave.Visible := True;}
    PChaveAcesso.Visible := True;
    {
    //Edmar - 18/03/2015 - busca a chave de acesso da devolução pelo pedido de venda, se houver
if (XTipo = 'PEDV') then
    begin
        if (EdChaveNFE.Text = '') or (EdChaveNFE.Text = '0') then//apenas se não foi selecionado antes
        begin
            DMENTRADA.TAlx.Close;
            DMENTRADA.TAlx.SQL.Clear;
            DMENTRADA.TAlx.SQL.Add(' SELECT PEDCOMPRA.CHAVENFEXML CHAVE FROM PEDVENDA ');
            DMENTRADA.TAlx.SQL.Add(' LEFT JOIN PEDCOMPRA ON PEDVENDA.COD_PC_DEV = PEDCOMPRA.COD_PEDCOMP ');
            DMENTRADA.TAlx.SQL.Add(' WHERE PEDVENDA.COD_PEDVENDA = :VENDA ');
            DMENTRADA.TAlx.ParamByName('VENDA').AsInteger := XCod_Pedido;
            DMENTRADA.TAlx.Open;

            //repassa a chave de acesso que retornou
            EdChaveNFE.Text := DMENTRADA.TAlx.FieldByName('CHAVE').AsString;
        end;

        //busca se o mesmo possui um pedido de compra referenciado
        DMSAIDA.TAlx.Close;
        DMSAIDA.TAlx.SQL.Clear;
        DMSAIDA.TAlx.SQL.Add(' SELECT PEDVENDA.COD_PC_DEV FROM PEDVENDA ');
        DMSAIDA.TAlx.SQL.Add(' LEFT JOIN PEDCOMPRA ON PEDVENDA.COD_PC_DEV = PEDCOMPRA.COD_PEDCOMP ');
        DMSAIDA.TAlx.SQL.Add(' WHERE PEDVENDA.COD_PEDVENDA = :VENDA ');
        DMSAIDA.TAlx.ParamByName('VENDA').AsInteger := XCod_Pedido;
        DMSAIDA.TAlx.Open;

        //se for igual a vazio significa que não possui
        if DMSAIDA.TAlx.FieldByName('COD_PC_DEV').AsString = '' then
        begin
            //printa mensagem no rodapé e retorna falso
            RegistraFalha('  Pedido: A devolução não possuí um pedido de compra referenciado.');
            Result := False;
        end;
    end;  }

    //busca a chave de acesso da devolução pelo pedido de compra, se houver
    if {(FMenu.XOutrosEnt) AND }(XTipo = 'PEDC') then
    begin
      if (EdChaveNFE.Text = '') or (EdChaveNFE.Text = '0') then
        //apenas se a chave não foi selecionada
      begin
        //busca pela chave no docfis de saida (pedido venda)
        DMSAIDA.TAlx.Close;
        DMSAIDA.TAlx.SQL.Clear;
        DMSAIDA.TAlx.SQL.Add(' SELECT DOCFISSAIDA.NFECHAVE CHAVE FROM PEDCOMPRA ');
        DMSAIDA.TAlx.SQL.Add(' LEFT JOIN DOCFISSAIDA ON PEDCOMPRA.COD_PK_DEV = DOCFISSAIDA.COD_PEDIDO ');
        DMSAIDA.TAlx.SQL.Add(' WHERE PEDCOMPRA.COD_PEDCOMP = :PEDIDO ');
        DMSAIDA.TAlx.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
        DMSAIDA.TAlx.Open;

        //repassa a chave de acesso que retornou
        EdChaveNFE.Text := DMSAIDA.TAlx.FieldByName('CHAVE').AsString;

        //se não achou nada no docfis de saida
        if (EdChaveNFE.Text = '') or (EdChaveNFE.Text = '0') then
        begin
          //busca no docfis de ordem (ordem de serviço)
          DMServ.Alx.Close;
          DMServ.Alx.SQL.Clear;
          DMServ.Alx.SQL.Add(' SELECT DOCFISORD.NFECHAVE CHAVE FROM PEDCOMPRA ');
          DMServ.Alx.SQL.Add(' LEFT JOIN DOCFISORD ON PEDCOMPRA.COD_PK_DEV = DOCFISORD.COD_ORDEM ');
          DMServ.Alx.SQL.Add(' WHERE PEDCOMPRA.COD_PEDCOMP = :PEDIDO ');
          DMServ.Alx.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
          DMServ.Alx.Open;

          //repassa a chave de acesso que retornou
          EdChaveNFE.Text := DMServ.Alx.FieldByName('CHAVE').AsString;
        end;
      end;

      //busca se o mesmo possui um pedido de venda referenciado
      DMENTRADA.TAlx.Close;
      DMENTRADA.TAlx.SQL.Clear;
      DMENTRADA.TAlx.SQL.Add(' SELECT PEDCOMPRA.COD_PK_DEV FROM PEDCOMPRA ');
      DMENTRADA.TAlx.SQL.Add(' WHERE PEDCOMPRA.COD_PEDCOMP = :COMPRA ');
      DMENTRADA.TAlx.ParamByName('COMPRA').AsInteger := XCod_Pedido;
      DMENTRADA.TAlx.Open;

      //Edmar - 20/03/2015 - FILTRA BUSCANDO NO PEDIDO DE VENDA E NA ORDEM DE SERVIÇO A FK DO PEDIDO QUE GEROU A DEVOLUÇÃO
      //SE NÃO ACHOU NADA EM NENHUM DOS DOIS, REGISTRA FALHA NO RODAPÉ
      if not FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA',
        DMENTRADA.TAlx.FieldByName('COD_PK_DEV').AsString, '') and
        not FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM',
          DMENTRADA.TAlx.FieldByName('COD_PK_DEV').AsString, '') then
      begin
        //printa mensagem no rodapé e retorna falso
        RegistraFalha('  Pedido: A devolução não possuí um pedido de venda ou ordem de serviço referenciado.');
        Result := False;
      end;
    end;

    //verifica se a chave de acesso de devolução está selecionada
    if (EdChaveNFE.Text = '') or (EdChaveNFE.Text = '0') then
    begin
      //printa mensagem no rodapé e retorna falso
      RegistraFalha('  Pedido: Não foi localizado a chave de acesso da devolução. Por favor insira manualmente.');
      btnInsereChave.SetFocus;
      Result := False;
    end;

    //Edmar - 18/03/2015 - joga na função para validar a chave de acesso
    if not ValidarChaveNFe(EdChaveNFE.Text) then
    begin
      //printa mensagem no rodapé e retorna falso
      RegistraFalha('  Pedido: A Chave de Acesso não passou na validação. Verifique!');
      Result := False;
    end;
  end;
end;

procedure TFPadraoFiscal.btnInsereChaveClick(Sender: TObject);
var
  xXChave: string;
begin
  inherited;
  EdChaveNFE.Text := '';
  //Edmar - 18/03/2015 - abre janela para informar a chave de devolução
  InputQuery('Chave NF-e',
    'Por favor, informe a chave de acesso da NF-e que gerou esta devolução.',
    xXChave);

  EdChaveNFE.Text := xXChave;
  FMenu.XChaveNFe := xXChave;

  OnActivate(sender);
end;

function TFPadraoFiscal.RateioFrete: Boolean;
var
  XValorTotalProdutos, xValorFreteDif: Real;
begin
  Result := True;
  if EdVlrFrete.ValueNumeric > 0 then
  begin
    //Edmar - 06/05/2015 - Busca o valor total dos produtos.
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    if XTipo = 'PEDV' then
      DMMACS.TALX.SQL.Add(' SELECT SUM(ITENSPEDVEN.VALORTOTAL) TOTAL FROM ITENSPEDVEN WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
    if XTipo = 'ORDEM' then
      DMMACS.TALX.SQL.Add(' SELECT SUM(ITPRODORD.TOTAL) TOTAL FROM ITPRODORD WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
    if XTipo = 'PEDC' then
      DMMACS.TALX.SQL.Add(' SELECT SUM(ITENSPEDC.VALORTOTAL) TOTAL FROM ITENSPEDC WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
    DMMACS.TALX.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
    DMMACS.TALX.Open;
    //
    XValorTotalProdutos := DMMACS.TALX.FieldByName('TOTAL').AsCurrency;

    try
      //Agora atualiza o valor do frete da cada item.
         //Divide o valor total do item com o valor total dos produtos pra recuperar o percetual do item em relação ao total dos produtos
         //E multiplica pelo valor do frete. Assim busca o valor total do frete, proporcionalmente, daquele item.
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      if XTipo = 'PEDV' then
        MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.VALORFRETE = (ITENSPEDVEN.VALORTOTAL / :VALORTOTALPROD) * :FRETE WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
      if XTipo = 'ORDEM' then
        MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.VALORFRETE = (ITPRODORD.TOTAL / :VALORTOTALPROD) * :FRETE WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
      if XTipo = 'PEDC' then
        MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.VALORFRETE = (ITENSPEDC.VALORTOTAL / :VALORTOTALPROD) * :FRETE WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
      MDO.Query.ParamByName('VALORTOTALPROD').AsCurrency := XValorTotalProdutos;
      MDO.Query.ParamByName('FRETE').AsCurrency := EdVlrFrete.ValueNumeric;
      MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;

      //Edmar - 29/06/2017 - Soma o valor total do frete rateado aos produtos
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      if XTipo = 'PEDV' then
        DMMACS.TALX.SQL.Add(' SELECT SUM(ITENSPEDVEN.VALORFRETE) TOTAL_FRETE FROM ITENSPEDVEN WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
      if XTipo = 'ORDEM' then
        DMMACS.TALX.SQL.Add(' SELECT SUM(ITPRODORD.VALORFRETE) TOTAL_FRETE FROM ITPRODORD WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
      if XTipo = 'PEDC' then
        DMMACS.TALX.SQL.Add(' SELECT SUM(ITENSPEDC.VALORFRETE) TOTAL_FRETE FROM ITENSPEDC WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
      DMMACS.TALX.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      DMMACS.TALX.Open;

      xValorFreteDif := 0;

      //Edmar - 29/06/2017 - Se o valor total rateado for diferente do valor original
      if DMMACS.TALX.FieldByName('TOTAL_FRETE').AsCurrency <>
        EdVlrFrete.ValueNumeric then
      begin
        //Edmar - 29/06/2017 - Recupera essa diferença de valores
        if EdVlrFrete.ValueNumeric >
          DMMACS.TALX.FieldByName('TOTAL_FRETE').AsFloat then
          xValorFreteDif := EdVlrFrete.ValueNumeric -
            DMMACS.TALX.FieldByName('TOTAL_FRETE').AsFloat
        else
          xValorFreteDif := DMMACS.TALX.FieldByName('TOTAL_FRETE').AsFloat -
            EdVlrFrete.ValueNumeric;

        //Edmar - 29/06/2017 - Atualiza um item com essa diferença pra bater o valor original de frete
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        if XTipo = 'PEDV' then
          MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.VALORFRETE = ITENSPEDVEN.VALORFRETE + :DIFF WHERE ITENSPEDVEN.COD_ITENSPEDVEN = :CODIGO ');
        if XTipo = 'ORDEM' then
          MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.VALORFRETE = ITPRODORD.VALORFRETE + :DIFF WHERE ITPRODORD.COD_ITPRODORD = :CODIGO ');
        if XTipo = 'PEDC' then
          MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.VALORFRETE = ITENSPEDC.VALORFRETE + :DIFF WHERE ITENSPEDC.COD_ITENSPEDC = :CODIGO ');
        MDO.Query.ParamByName('DIFF').AsCurrency := xValorFreteDif;
        MDO.Query.ParamByName('CODIGO').AsString :=
          DMESTOQUE.TSlave.FieldByName('CODIGOITEM').AsString;
        MDO.Query.ExecSQL;

        MDO.Transac.CommitRetaining;
      end;

      EscreveItensProduto;
    except
      MDO.Transac.RollbackRetaining;
      Result := False;
    end;
  end
  else
  begin
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    if XTipo = 'PEDV' then
      MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.VALORFRETE = 0 WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
    if XTipo = 'ORDEM' then
      MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.VALORFRETE = 0 WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
    if XTipo = 'PEDC' then
      MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.VALORFRETE = 0 WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
    MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
  end;
end;

function TFPadraoFiscal.RateioOutDespesas: Boolean;
var
  XValorTotalProdutos, xValorDespesasDiff: Real;
begin
  Result := True;

  if EdOutrasDespesas.ValueNumeric > 0 then
  begin
    //Edmar - 06/05/2015 - Busca o valor total dos produtos.
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    if XTipo = 'PEDV' then
      DMMACS.TALX.SQL.Add(' SELECT SUM(ITENSPEDVEN.VALORTOTAL) TOTAL FROM ITENSPEDVEN WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
    if XTipo = 'ORDEM' then
      DMMACS.TALX.SQL.Add(' SELECT SUM(ITPRODORD.TOTAL) TOTAL FROM ITPRODORD WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
    if XTipo = 'PEDC' then
      DMMACS.TALX.SQL.Add(' SELECT SUM(ITENSPEDC.VALORTOTAL) TOTAL FROM ITENSPEDC WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
    DMMACS.TALX.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
    DMMACS.TALX.Open;
    //
    XValorTotalProdutos := DMMACS.TALX.FieldByName('TOTAL').AsCurrency;

    try
      //Agora atualiza o valor do frete da cada item.
      //Divide o valor total do item com o valor total dos produtos pra recuperar o percetual do item em relação ao total dos produtos
      //E multiplica pelo valor do frete. Assim busca o valor total do frete, proporcionalmente, daquele item.
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      if XTipo = 'PEDV' then
        MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.VALORDESP = (ITENSPEDVEN.VALORTOTAL / :VALORTOTALPROD) * :OUTDESP WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
      if XTipo = 'ORDEM' then
        MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.VALORDESP = (ITPRODORD.TOTAL / :VALORTOTALPROD) * :OUTDESP WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
      if XTipo = 'PEDC' then
        MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.VALORDESP = (ITENSPEDC.VALORTOTAL / :VALORTOTALPROD) * :OUTDESP WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
      MDO.Query.ParamByName('VALORTOTALPROD').AsCurrency := XValorTotalProdutos;
      MDO.Query.ParamByName('OUTDESP').AsCurrency :=
        EdOutrasDespesas.ValueNumeric;
      MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;

      //Edmar - 25/11/2015 - Soma todas as despesas para não passar valores incorretos para a sefaz(arredondamentos de centavos)
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add(' SELECT SUM(VALORDESP) TOTAL_DESPESA FROM ');
      if XTipo = 'PEDV' then
        MDO.QConsulta.SQL.Add(' ITENSPEDVEN WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
      if XTipo = 'ORDEM' then
        MDO.QConsulta.SQL.Add(' ITPRODORD WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
      if XTipo = 'PEDC' then
        MDO.QConsulta.SQL.Add(' ITENSPEDC WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
      MDO.QConsulta.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      MDO.QConsulta.Open;

      xValorDespesasDiff := 0;

      //Edmar - 29/06/2017 - Se o valor total rateado for diferente do valor original
      if MDO.QConsulta.FieldByName('TOTAL_DESPESA').AsCurrency <>
        EdOutrasDespesas.ValueNumeric then
      begin
        //Edmar - 29/06/2017 - Recupera essa diferença de valores
        if EdOutrasDespesas.ValueNumeric >
          MDO.QConsulta.FieldByName('TOTAL_DESPESA').AsFloat then
          xValorDespesasDiff := EdOutrasDespesas.ValueNumeric -
            MDO.QConsulta.FieldByName('TOTAL_DESPESA').AsFloat
        else
          xValorDespesasDiff :=
            MDO.QConsulta.FieldByName('TOTAL_DESPESA').AsFloat -
            EdOutrasDespesas.ValueNumeric;

        //Edmar - 29/06/2017 - Atualiza um item com essa diferença pra bater o valor original de frete
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        if XTipo = 'PEDV' then
          MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.VALORDESP = ITENSPEDVEN.VALORDESP + :DIFF WHERE ITENSPEDVEN.COD_ITENSPEDVEN = :CODIGO ');
        if XTipo = 'ORDEM' then
          MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.VALORDESP = ITPRODORD.VALORDESP + :DIFF WHERE ITPRODORD.COD_ITPRODORD = :CODIGO ');
        if XTipo = 'PEDC' then
          MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.VALORDESP = ITENSPEDC.VALORDESP + :DIFF WHERE ITENSPEDC.COD_ITENSPEDC = :CODIGO ');
        MDO.Query.ParamByName('DIFF').AsCurrency := xValorDespesasDiff;
        MDO.Query.ParamByName('CODIGO').AsString :=
          DMESTOQUE.TSlave.FieldByName('CODIGOITEM').AsString;
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;
      end;

      EscreveItensProduto;
    except
      MDO.Transac.RollbackRetaining;
      Result := False;
    end;
  end
  else
  begin
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    if XTipo = 'PEDV' then
      MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.VALORDESP = 0 WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
    if XTipo = 'ORDEM' then
      MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.VALORDESP = 0 WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
    if XTipo = 'PEDC' then
      MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.VALORDESP = 0 WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
    MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
  end;
end;

procedure TFPadraoFiscal.EdOutrasDespesasExit(Sender: TObject);
begin
  inherited;
  //Efetua calculo do total da nota
  CalcImpostosNF;
  CalcTotalNF;

  //Edmar - 07/05/2015 - Processa o valor das despesas proporcionalmente aos itens
  if not RateioOutDespesas then
    RegistraFalha(' Falha ao calcular o rateio de Outras Despesas Acessórias.');
end;

procedure TFPadraoFiscal.cbTipoDocumentoChange(Sender: TObject);
begin
  inherited;
  //Edmar - 10/06/2015 - Ao mudar o texto do combo box, altera também o check box de consumidor final
  if UpperCase(cbTipoDocumento.Text) = 'NF-E' then
    XEmiteNFCe := False
  else if UpperCase(cbTipoDocumento.Text) = 'NFC-E' then
    XEmiteNFCe := True;

  //AtualizaClienteConsumidor;
  BitBtn2.Click;
end;

function TFPadraoFiscal.AtualizaClienteConsumidor: Boolean;
begin
  //Edmar - 11/06/2015 - Só atualiza o tipo do cliente caso a operação seja PV ou OS
  if (XTipo = 'PEDV') or (XTipo = 'ORDEM') then
  begin
    try
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' UPDATE CLIENTE SET CLIENTE.CONSUMIDOR = :CONSUMIDOR WHERE CLIENTE.COD_CLIENTE = :COD_CLIENTE ');
      if XEmiteNFCe then
        MDO.Query.ParamByName('CONSUMIDOR').AsString := 'S'
      else
        MDO.Query.ParamByName('CONSUMIDOR').AsString := 'N';
      MDO.Query.ParamByName('COD_CLIENTE').AsInteger := XCod_Pessoa;
      MDO.Query.ExecSQL;

      MDO.Transac.CommitRetaining;

      BitBtn2.Click;
    except
      on E: Exception do
      begin
        ShowMessage('Não foi possível atualizar o Cliente. Reinicie o sistema e tente novamente.'
          + #13#10 + E.Message);
        MDO.Transac.RollbackRetaining;
      end;
    end;
  end;
end;

//Edmar - 14/08/2015 - Valida se os dados de importação foram informados
function TFPadraoFiscal.ValidaDadosImportacao: Boolean;
begin
  Result := True;
  FiltraAdicaoImportacao;

  if edNumeroDi.Text = '' then
  begin
    RegistraFalha('  Para importação é necessário informar o número do DI.');
    Result := False;
  end;

  if cbTipoTransporte.Text = '' then
  begin
    RegistraFalha('	 Para importação é necessário selecionar o Tipo do Transporte utilizado.');
    Result := False;
  end
  else
  begin
    if (cbTipoTransporte.Text = 'Marítima') and (edValorAfrmm.ValueNumeric = 0)
      then
    begin
      RegistraFalha('  Para importação marítima, é necessário informar o valor do AFRMM.');
      Result := False;
    end;
  end;

  if cbFormaImportacao.Text = '' then
  begin
    RegistraFalha('	 Para importação é necessário selecionar a Forma de Importação utilizada.');
    Result := False;
  end;

  if edCodigoExportador.Text = '' then
  begin
    RegistraFalha('  Para importação é necessário informar o Código do Exportador.');
    Result := False;
  end;
end;

procedure TFPadraoFiscal.btnInsereAdicaoClick(Sender: TObject);
begin
  inherited;
  //Edmar - 14/08/2015 - Valida se as informações obrigatórias foram informadas
  if edNumAdicao.Text = '' then
  begin
    ShowMessage('É necessário informar o Número da Adição da DI.');
    Exit;
  end;

  if edCodFabricanteAdicao.Text = '' then
  begin
    ShowMessage('É necessário informar o Código do Fabricante da DI.');
    Exit;
  end;

  //se passou pela validação, insere uma nova adição
  try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' INSERT INTO ADICAOIMPORTACAO (NUMADICAO, CODIGOFABRICANTE, DESCONTOADICAO, NUMDRAWBACK, COD_PEDIDO) ');
    MDO.Query.SQL.Add(' VALUES (:NUMADICAO, :CODFABR, :DESCONTO, :DRAWBACK, :COD_PEDIDO) ');
    MDO.Query.ParamByName('NUMADICAO').AsString := edNumAdicao.Text;
    MDO.Query.ParamByName('CODFABR').AsString := edCodFabricanteAdicao.Text;
    MDO.Query.ParamByName('DESCONTO').AsCurrency :=
      edDescontoAdicao.ValueNumeric;
    MDO.Query.ParamByName('DRAWBACK').AsString := edDrawback.Text;
    MDO.Query.ParamByName('COD_PEDIDO').AsInteger := XCod_Pedido;
    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;

    FiltraAdicaoImportacao;
    LimpaCamposAdicao;
  except
    on e: Exception do
    begin
      MDO.Transac.RollbackRetaining;
      ShowMessage(e.Message);
    end;
  end;
end;

function TFPadraoFiscal.FiltraAdicaoImportacao: Boolean;
begin
  FiltraTabela(DMENTRADA.TAdicaoImp, 'ADICAOIMPORTACAO', 'COD_PEDIDO',
    IntToStr(XCod_Pedido), '');
  if (DMENTRADA.TAdicaoImp.IsEmpty) and (XTipo = 'PEDC') then
    RegistraFalha('  É necessário informar ao menos uma Adição da Declaração de Importação');
end;

procedure TFPadraoFiscal.btnRemoveAdicaoClick(Sender: TObject);
begin
  inherited;
  //Edmar - 14/08/2015 - Realiza a remoção da adição
  try
    if not DMENTRADA.TAdicaoImp.IsEmpty then
    begin
      //repassa os valores para os campos
      edNumAdicao.Text :=
        DMENTRADA.TAdicaoImp.FieldByName('NUMADICAO').AsString;
      edCodFabricanteAdicao.Text :=
        DMENTRADA.TAdicaoImp.FieldByName('CODIGOFABRICANTE').AsString;
      edDescontoAdicao.ValueNumeric :=
        DMENTRADA.TAdicaoImp.FieldByName('DESCONTOADICAO').AsCurrency;
      edDrawback.Text :=
        DMENTRADA.TAdicaoImp.FieldByName('NUMDRAWBACK').AsString;

      //remove a remoção da adição
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' DELETE FROM ADICAOIMPORTACAO WHERE COD_ADICAO = :ADICAO ');
      MDO.Query.ParamByName('ADICAO').AsInteger :=
        DMENTRADA.TAdicaoImp.FieldByName('COD_ADICAO').AsInteger;
      MDO.Query.ExecSQL;

      MDO.Transac.CommitRetaining;

      FiltraAdicaoImportacao;
    end;
  except
    on e: Exception do
    begin
      MDO.Transac.RollbackRetaining;
      ShowMessage(e.Message);
    end;
  end;
end;

function TFPadraoFiscal.LimpaCamposAdicao: Boolean;
begin
  //
  edNumAdicao.Text := '';
  edCodFabricanteAdicao.Text := '';
  edDescontoAdicao.ValueNumeric := 0;
  edDrawback.Text := '';
end;

procedure TFPadraoFiscal.edNumAdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_ESCAPE then
    LimpaCamposAdicao;
end;

procedure TFPadraoFiscal.BtnInformarConsumidorClick(Sender: TObject);
begin
  inherited;
  //
  PDadosConsumidor.Visible := True;
  PDadosConsumidor.BringToFront;

  edCpfConsumidor.Text := LCpfConsumidor.Caption;
  edNomeConsumidor.Text := LNomeConsumidor.Caption;
  edCpfConsumidor.SetFocus;
end;

procedure TFPadraoFiscal.edCpfConsumidorExit(Sender: TObject);
var
  XNomeConsumidor: string;
begin
  inherited;
  if edCpfConsumidor.Text = '' then
    Exit;

  //Edmar - 20/08/2015 - Ao sair do campo busca o cpf, depois de validar,
  //para verificar se esse cpf já não está cadastrado ou em outra ordem
  if not ValidCPF(edCpfConsumidor.Text) then
  begin
    if not ValidaCGC(edCpfConsumidor.Text) then
    begin
      ShowMessage('O CPF ou CNPJ não passou na validação. Por favor verifique.');
      Exit;
    end;
  end;

  //busca primeiro em PESSOA
  XNomeConsumidor := '';
  if not FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'CPFCNPJ',
    edCpfConsumidor.Text, '') then
  begin
    if FiltraTabela(DMServ.TAlx1, 'ORDEM', 'CPFCNPJ', edCpfConsumidor.Text, '')
      then
      XNomeConsumidor := DMServ.TAlx1.FieldByName('NOMECLI').AsString;
  end
  else
    XNomeConsumidor := DMPESSOA.TPessoa.FieldByName('NOME').AsString;

  if XNomeConsumidor <> '' then
    edNomeConsumidor.Text := XNomeConsumidor;
end;

procedure TFPadraoFiscal.BtnConfirmarConsumidorClick(Sender: TObject);
begin
  if (Trim(edCpfConsumidor.Text) <> '') or
    (AnsiContainsText(UpperCase(Trim(edNomeConsumidor.Text)), 'CONSUMIDOR')) then
  begin
    if Trim(edCpfConsumidor.Text) <> '' then
    begin
      if ValidCPF(edCpfConsumidor.Text) or ValidaCGC(edCpfConsumidor.Text) then
      begin
        LCpfConsumidor.Caption := edCpfConsumidor.Text;
        LNomeConsumidor.Caption := edNomeConsumidor.Text;
      end;
    end
    else
    begin
      LCpfConsumidor.Caption := '';
      LNomeConsumidor.Caption := edNomeConsumidor.Text;
    end;
  end;

  BtnCancelarConsumidor.Click;
end;

procedure TFPadraoFiscal.BtnCancelarConsumidorClick(Sender: TObject);
begin
  inherited;
  PDadosConsumidor.Visible := False;
  PDadosConsumidor.SendToBack;
end;

procedure TFPadraoFiscal.comCpfClick(Sender: TObject);
begin
  inherited;
  //se foi informado, marca a caixa de "C/ CPF" e informa o nome e o cpf nos campos
  if comCpf.Checked then
  begin
    LCpfConsumidor.Caption := LCpfCnpj.Caption;
    Label60.Caption := 'CPF:';
    if FiltraTabela(DMPESSOA.TALX1, 'PESSOA', 'CPFCNPJ', LCpfConsumidor.Caption,
      '') then
      LNomeConsumidor.Caption := ' ' +
        DMPESSOA.TALX1.FieldByName('NOME').AsString
    else
      LNomeConsumidor.Caption := LNomePessoa.Caption;

    //
    semCpf.Checked := False;
  end;
end;

procedure TFPadraoFiscal.semCpfClick(Sender: TObject);
begin
  inherited;
  if semCpf.Checked then
  begin
    LCpfConsumidor.Caption := '';
    Label60.Caption := '';
    LNomeConsumidor.Caption := ' CONSUMIDOR';
    //
    comCpf.Checked := False;
  end;
end;

procedure TFPadraoFiscal.btnRateioClick(Sender: TObject);
begin
  inherited;
  //
  RateioOutDespesas;
  RateioFrete;
  //dá a mensagem para o usuário confirmar a operação
  pRateioValores.Visible := True;
  pRateioValores.BringToFront;
end;

function TFPadraoFiscal.RateioIcms: Boolean;
var
  xValorDiff: Real;
begin
  try
    if EdVlrIcms.ValueNumeric > 0 then
    begin
      if EdBaseICMS.ValueNumeric = 0 then
        EdBaseICMS.ValueNumeric := EdTotalProdutos.ValueNumeric;

      //SET BASE DE CALCULO
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      if XTipo = 'PEDV' then
      begin //PEDIDO DE VENDA
        MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ');
        MDO.Query.SQL.Add(' ITENSPEDVEN.BASEICMS = (ITENSPEDVEN.VALORTOTAL / :TOTALPRODUTOS) * :BASEICMS ');
        MDO.Query.SQL.Add(' WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
      end
      else if XTipo = 'ORDEM' then
      begin //ORDEM DE SERVIÇO
        MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ');
        MDO.Query.SQL.Add(' ITPRODORD.BASEICMS = (ITPRODORD.TOTAL / :TOTALPRODUTOS) * :BASEICMS ');
        MDO.Query.SQL.Add(' WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
      end
      else
      begin //PEDIDO DE COMPRA
        MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ');
        MDO.Query.SQL.Add(' ITENSPEDC.BASEICMS = (ITENSPEDC.VALORTOTAL / :TOTALPRODUTOS) * :BASEICMS ');
        MDO.Query.SQL.Add(' WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
      end;
      MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      MDO.Query.ParamByName('TOTALPRODUTOS').AsCurrency :=
        EdTotalProdutos.ValueNumeric;
      MDO.Query.ParamByName('BASEICMS').AsCurrency := EdBaseICMS.ValueNumeric;
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;

      //Edmar - 24/06/2019 - Normaliza os valores caso o total da base seja diferente do esperado
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add(' SELECT SUM(BASEICMS) TOTAL_BASEICMS FROM ');
      if XTipo = 'PEDV' then
        MDO.QConsulta.SQL.Add(' ITENSPEDVEN WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
      if XTipo = 'ORDEM' then
        MDO.QConsulta.SQL.Add(' ITPRODORD WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
      if XTipo = 'PEDC' then
        MDO.QConsulta.SQL.Add(' ITENSPEDC WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
      MDO.QConsulta.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      MDO.QConsulta.Open;

      xValorDiff := 0;

      //Edmar - 29/06/2017 - Se o valor total rateado for diferente do valor original
      if MDO.QConsulta.FieldByName('TOTAL_BASEICMS').AsCurrency <>
        EdBaseICMS.ValueNumeric then
      begin
        //Edmar - 29/06/2017 - Recupera essa diferença de valores
        if EdBaseICMS.ValueNumeric >
          MDO.QConsulta.FieldByName('TOTAL_BASEICMS').AsFloat then
          xValorDiff := EdBaseICMS.ValueNumeric -
            MDO.QConsulta.FieldByName('TOTAL_BASEICMS').AsFloat
        else
          xValorDiff := MDO.QConsulta.FieldByName('TOTAL_BASEICMS').AsFloat -
            EdBaseICMS.ValueNumeric;

        //Edmar - 29/06/2017 - Atualiza um item com essa diferença pra bater o valor original de frete
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        if XTipo = 'PEDV' then
          MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.BASEICMS = ITENSPEDVEN.BASEICMS + :DIFF WHERE ITENSPEDVEN.COD_ITENSPEDVEN = :CODIGO ');
        if XTipo = 'ORDEM' then
          MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.BASEICMS = ITPRODORD.BASEICMS + :DIFF WHERE ITPRODORD.COD_ITPRODORD = :CODIGO ');
        if XTipo = 'PEDC' then
          MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.BASEICMS = ITENSPEDC.BASEICMS + :DIFF WHERE ITENSPEDC.COD_ITENSPEDC = :CODIGO ');
        MDO.Query.ParamByName('DIFF').AsCurrency := xValorDiff;
        MDO.Query.ParamByName('CODIGO').AsString :=
          DMESTOQUE.TSlave.FieldByName('CODIGOITEM').AsString;
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;
      end;

      //calcula o valor e a aliquota de icms
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      if XTipo = 'PEDV' then
      begin //PEDIDO DE VENDA
        MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ');
        MDO.Query.SQL.Add(' ITENSPEDVEN.VLRICMS = (ITENSPEDVEN.VALORTOTAL / :TOTALPRODUTOS) * :VALORICMS, ');
        MDO.Query.SQL.Add(' ITENSPEDVEN.ALIQICMS =  (((ITENSPEDVEN.VALORTOTAL / :TOTALPRODUTOS) * :VALORICMS) * 100) / ITENSPEDVEN.BASEICMS ');
        MDO.Query.SQL.Add(' WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
      end
      else if XTipo = 'ORDEM' then
      begin //ORDEM DE SERVIÇO
        MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ');
        MDO.Query.SQL.Add(' ITPRODORD.VLRICMS = (ITPRODORD.VALORTOTAL / :TOTALPRODUTOS) * :VALORICMS, ');
        MDO.Query.SQL.Add(' ITPRODORD.ALIQICMS = (((ITPRODORD.VALORTOTAL / :TOTALPRODUTOS) * :VALORICMS) * 100) / ITPRODORD.BASEICMS ');
        MDO.Query.SQL.Add(' WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
      end
      else
      begin //PEDIDO DE COMPRA
        MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ');
        MDO.Query.SQL.Add(' ITENSPEDC.VLRICMS = (ITENSPEDC.VALORTOTAL / :TOTALPRODUTOS) * :VALORICMS, ');
        MDO.Query.SQL.Add(' ITENSPEDC.ALIQICMS = (((ITENSPEDC.VALORTOTAL / :TOTALPRODUTOS) * :VALORICMS) * 100) / ITENSPEDC.BASEICMS ');
        MDO.Query.SQL.Add(' WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
      end;
      MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      MDO.Query.ParamByName('VALORICMS').AsCurrency := EdVlrIcms.ValueNumeric;
      MDO.Query.ParamByName('TOTALPRODUTOS').AsCurrency :=
        EdTotalProdutos.ValueNumeric;
      MDO.Query.ExecSQL;

      MDO.Transac.CommitRetaining;

      //Edmar - 24/06/2019 - Normaliza os valores caso valor do icms seja diferente do esperado
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add(' SELECT SUM(VLRICMS) TOTAL_ICMS FROM ');
      if XTipo = 'PEDV' then
        MDO.QConsulta.SQL.Add(' ITENSPEDVEN WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
      if XTipo = 'ORDEM' then
        MDO.QConsulta.SQL.Add(' ITPRODORD WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
      if XTipo = 'PEDC' then
        MDO.QConsulta.SQL.Add(' ITENSPEDC WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
      MDO.QConsulta.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      MDO.QConsulta.Open;

      xValorDiff := 0;

      //Edmar - 29/06/2017 - Se o valor total rateado for diferente do valor original
      if MDO.QConsulta.FieldByName('TOTAL_ICMS').AsCurrency <>
        EdVlrIcms.ValueNumeric then
      begin
        //Edmar - 29/06/2017 - Recupera essa diferença de valores
        if EdVlrIcms.ValueNumeric >
          MDO.QConsulta.FieldByName('TOTAL_ICMS').AsFloat then
          xValorDiff := EdVlrIcms.ValueNumeric -
            MDO.QConsulta.FieldByName('TOTAL_ICMS').AsFloat
        else
          xValorDiff := MDO.QConsulta.FieldByName('TOTAL_ICMS').AsFloat -
            EdVlrIcms.ValueNumeric;

        //Edmar - 29/06/2017 - Atualiza um item com essa diferença pra bater o valor original de frete
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        if XTipo = 'PEDV' then
          MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.VLRICMS = ITENSPEDVEN.VLRICMS + :DIFF WHERE ITENSPEDVEN.COD_ITENSPEDVEN = :CODIGO ');
        if XTipo = 'ORDEM' then
          MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.VLRICMS = ITPRODORD.VLRICMS + :DIFF WHERE ITPRODORD.COD_ITPRODORD = :CODIGO ');
        if XTipo = 'PEDC' then
          MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.VLRICMS = ITENSPEDC.VLRICMS + :DIFF WHERE ITENSPEDC.COD_ITENSPEDC = :CODIGO ');
        MDO.Query.ParamByName('DIFF').AsCurrency := xValorDiff;
        MDO.Query.ParamByName('CODIGO').AsString :=
          DMESTOQUE.TSlave.FieldByName('CODIGOITEM').AsString;
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;
      end;
    end
    else
    begin
      MDO.QAlx1.Close;
      MDO.QAlx1.SQL.Clear;
      if XTipo = 'PEDV' then //PEDIDO DE VENDA
        MDO.QAlx1.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.BASEICMS = 0, ITENSPEDVEN.VLRICMS = 0, ITENSPEDVEN.ALIQICMS = 0 WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
      if XTipo = 'ORDEM' then //ORDEM DE SERVIÇO
        MDO.QAlx1.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.BASEICMS = 0, ITPRODORD.VLRICMS = 0, ITPRODORD.ALIQICMS = 0 WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
      if XTipo = 'PEDC' then //PEDIDO DE COMPRA
        MDO.QAlx1.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.BASEICMS = 0, ITENSPEDC.VLRICMS = 0, ITENSPEDC.ALIQICMS = 0 WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO');
      MDO.QAlx1.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      MDO.QAlx1.ExecSQL;

      MDO.Transac.CommitRetaining;
    end;

    EscreveItensProduto;
  except
    on E: Exception do
    begin
      MessageDlg('Não foi possível atualizar os valores de ICMS ' + #13#10 +
        E.Message, mtWarning, [mbOK], 0);
    end;
  end;
end;

function TFPadraoFiscal.RateioIcmsSt: Boolean;
begin
  try
    if EdVlrIcmsST.ValueNumeric < 0 then
    begin
      MessageDlg('Não é possível realizar o cálculo com valor de ICMS ST menor que zero.', mtWarning, [mbOK], 0);
      Exit;
    end;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    if XTipo = 'PEDV' then
    begin //PEDIDO DE VENDA
      MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ');
      MDO.Query.SQL.Add('     ITENSPEDVEN.VLRICMSSUBS = (ITENSPEDVEN.VALORTOTAL / (SELECT SUM(ITENSPEDVEN.VALORTOTAL) TOTAL ');
      MDO.Query.SQL.Add('                                                      FROM ITENSPEDVEN ');
      MDO.Query.SQL.Add('                                                      LEFT JOIN CST ON CST.COD_CST = ITENSPEDVEN.COD_CST ');
      MDO.Query.SQL.Add('                                                      WHERE (ITENSPEDVEN.COD_PEDVEN = :PEDIDO) AND (CST.SUBSTITUICAO = ''1''))) ');
      MDO.Query.SQL.Add('                                                      * :VALORST, ');
      MDO.Query.SQL.Add('     ITENSPEDVEN.BASEICMSSUBS = (ITENSPEDVEN.VALORTOTAL / (SELECT SUM(ITENSPEDVEN.VALORTOTAL) TOTAL ');
      MDO.Query.SQL.Add('                                                      FROM ITENSPEDVEN ');
      MDO.Query.SQL.Add('                                                      LEFT JOIN CST ON CST.COD_CST = ITENSPEDVEN.COD_CST ');
      MDO.Query.SQL.Add('                                                      WHERE (ITENSPEDVEN.COD_PEDVEN = :PEDIDO) AND (CST.SUBSTITUICAO = ''1''))) ');
      MDO.Query.SQL.Add('                                                      * :VALORBCST, ');
      MDO.Query.SQL.Add('     ITENSPEDVEN.APLICARST = ''1'' ');
      MDO.Query.SQL.Add(' WHERE (ITENSPEDVEN.COD_PEDVEN = :PEDIDO) AND EXISTS (SELECT CST.COD_CST ');
      MDO.Query.SQL.Add('                                                      FROM CST ');
      MDO.Query.SQL.Add('                                                      LEFT JOIN ITENSPEDVEN ITEM ON ITEM.COD_CST = CST.COD_CST ');
      MDO.Query.SQL.Add('                                                      WHERE (CST.SUBSTITUICAO = ''1'') AND (ITEM.COD_ITENSPEDVEN = ITENSPEDVEN.COD_ITENSPEDVEN)) ');
    end
    else if XTipo = 'ORDEM' then
    begin //ORDEM DE SERVIÇO
      MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ');
      MDO.Query.SQL.Add('     ITPRODORD.VLRICMSSUBS = (ITPRODORD.TOTAL / (SELECT SUM(ITPRODORD.TOTAL) TOTAL ');
      MDO.Query.SQL.Add('                                                 FROM ITPRODORD ');
      MDO.Query.SQL.Add('                                                 LEFT JOIN CST ON CST.COD_CST = ITPRODORD.COD_CST ');
      MDO.Query.SQL.Add('                                                 WHERE (ITPRODORD.COD_ORDEM = :PEDIDO) AND (CST.SUBSTITUICAO = ''1''))) * :VALORST, ');
      MDO.Query.SQL.Add('     ITPRODORD.BASEICMSSUBS = (ITPRODORD.TOTAL / (SELECT SUM(ITPRODORD.TOTAL) TOTAL ');
      MDO.Query.SQL.Add('                                                  FROM ITPRODORD ');
      MDO.Query.SQL.Add('                                                  LEFT JOIN CST ON CST.COD_CST = ITPRODORD.COD_CST ');
      MDO.Query.SQL.Add('                                                  WHERE (ITPRODORD.COD_ORDEM = :PEDIDO) AND (CST.SUBSTITUICAO = ''1''))) * :VALORBCST ');
      MDO.Query.SQL.Add(' WHERE (ITPRODORD.COD_ORDEM = :PEDIDO) AND EXISTS (SELECT CST.COD_CST ');
      MDO.Query.SQL.Add('                                                   FROM CST ');
      MDO.Query.SQL.Add('                                                   LEFT JOIN ITPRODORD ITEM ON ITEM.COD_CST = CST.COD_CST ');
      MDO.Query.SQL.Add('                                                   WHERE (CST.SUBSTITUICAO = ''1'') AND (ITEM.COD_ITPRODORD = ITPRODORD.COD_ITPRODORD)) ');
    end
    else
    begin //PEDIDO DE COMPRA
      MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ');
      MDO.Query.SQL.Add('     ITENSPEDC.VLRICMSSUBS = (ITENSPEDC.VALORTOTAL / (SELECT SUM(ITENSPEDC.VALORTOTAL) TOTAL ');
      MDO.Query.SQL.Add('                                                      FROM ITENSPEDC ');
      MDO.Query.SQL.Add('                                                      LEFT JOIN CST ON CST.COD_CST = ITENSPEDC.COD_CST ');
      MDO.Query.SQL.Add('                                                      WHERE (ITENSPEDC.COD_PEDCOMPRA = :PEDIDO) AND (CST.SUBSTITUICAO = ''1''))) * :VALORST, ');
      MDO.Query.SQL.Add('     ITENSPEDC.BASEICMSSUBS = (ITENSPEDC.VALORTOTAL / (SELECT SUM(ITENSPEDC.VALORTOTAL) TOTAL ');
      MDO.Query.SQL.Add('                                                      FROM ITENSPEDC ');
      MDO.Query.SQL.Add('                                                      LEFT JOIN CST ON CST.COD_CST = ITENSPEDC.COD_CST ');
      MDO.Query.SQL.Add('                                                      WHERE (ITENSPEDC.COD_PEDCOMPRA = :PEDIDO) AND (CST.SUBSTITUICAO = ''1''))) * :VALORBCST ');
      MDO.Query.SQL.Add(' WHERE (ITENSPEDC.COD_PEDCOMPRA = :PEDIDO) AND EXISTS (SELECT CST.COD_CST ');
      MDO.Query.SQL.Add('                                                       FROM CST ');
      MDO.Query.SQL.Add('                                                       LEFT JOIN ITENSPEDC ITEM ON ITEM.COD_CST = CST.COD_CST ');
      MDO.Query.SQL.Add('                                                       WHERE (CST.SUBSTITUICAO = ''1'') AND (ITEM.COD_ITENSPEDC = ITENSPEDC.COD_ITENSPEDC)) ');
    end;
    MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
    MDO.Query.ParamByName('VALORST').AsCurrency := EdVlrIcmsST.ValueNumeric;
    MDO.Query.ParamByName('VALORBCST').AsCurrency := EdBaseICMSST.ValueNumeric;
    MDO.Query.ExecSQL;

    if EdVlrIcmsST.ValueNumeric = 0 then
    begin
      MDO.QAlx1.Close;
      MDO.QAlx1.SQL.Clear;
      if XTipo = 'PEDV' then //PEDIDO DE VENDA
        MDO.QAlx1.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.BASEICMSSUBS = 0 WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ')
      else if XTipo = 'ORDEM' then //ORDEM DE SERVIÇO
        MDO.QAlx1.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.BASEICMSSUBS = 0 WHERE ITPRODORD.COD_ORDEM = :PEDIDO ')
      else //PEDIDO DE COMPRA
        MDO.QAlx1.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.BASEICMSSUBS = 0 WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO');
      MDO.QAlx1.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      MDO.QAlx1.ExecSQL;
    end;

    MDO.Transac.CommitRetaining;
  except
    on E: Exception do
    begin
      MessageDlg('Não foi possível atualizar os valores de ICMS ST ' + #13#10 +
        E.Message, mtWarning, [mbOK], 0);
    end;
  end;
end;

function TFPadraoFiscal.RateioIpi: Boolean;
begin
  try
    if EdVlrIpi.ValueNumeric < 0 then
    begin
      MessageDlg('Não é possível realizar o cálculo com valor de IPI menor que zero.', mtWarning, [mbOK], 0);
      Exit;
    end;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    if XTipo = 'PEDV' then
    begin //PEDIDO DE VENDA
      MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ');
      MDO.Query.SQL.Add(' ITENSPEDVEN.VLRIPI  = (ITENSPEDVEN.VALORTOTAL / (SELECT SUM(ITENSPEDVEN.VALORTOTAL) TOTAL FROM ITENSPEDVEN WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO)) * :VALORIPI, ');
      MDO.Query.SQL.Add(' ITENSPEDVEN.ALIQIPI = (ITENSPEDVEN.VLRIPI * 100) / ITENSPEDVEN.VALORTOTAL ');
      MDO.Query.SQL.Add(' WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
    end
    else if XTipo = 'ORDEM' then
    begin //ORDEM DE SERVIÇO
      MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ');
      MDO.Query.SQL.Add(' ITPRODORD.VLRIPI  = (ITPRODORD.TOTAL / (SELECT SUM(ITPRODORD.TOTAL) TOTAL FROM ITPRODORD WHERE ITPRODORD.COD_ORDEM = :PEDIDO)) * :VALORIPI, ');
      MDO.Query.SQL.Add(' ITPRODORD.ALIQIPI = (ITPRODORD.VLRIPI * 100) / ITPRODORD.TOTAL ');
      MDO.Query.SQL.Add(' WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
    end
    else
    begin //PEDIDO DE COMPRA
      MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ');
      MDO.Query.SQL.Add(' ITENSPEDC.VLRIPI  = (ITENSPEDC.VALORTOTAL / (SELECT SUM(ITENSPEDC.VALORTOTAL) TOTAL FROM ITENSPEDC WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO)) * :VALORIPI, ');
      MDO.Query.SQL.Add(' ITENSPEDC.ALIQIPI = (ITENSPEDC.VLRIPI * 100) / ITENSPEDC.VALORTOTAL ');
      MDO.Query.SQL.Add(' WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');
    end;
    MDO.Query.ParamByName('VALORIPI').AsCurrency := EdVlrIpi.ValueNumeric;
    MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;
  except
    on E: Exception do
    begin
      MessageDlg('Não foi possível atualizar os valores de IPI ' + #13#10 +
        E.Message, mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TFPadraoFiscal.CbLiTxtRateioClick(Sender: TObject);
begin
  inherited;
  BtnOkRateio.Enabled := CbLiTxtRateio.Checked;
end;

procedure TFPadraoFiscal.BtnOkRateioClick(Sender: TObject);
begin
  inherited;
  //adiciona na tabela registro a ação feita pelo usuário
  Registra('FISCAL', 'AUTORIZAÇÃO', DateToStr(Date()),
    'RATEIO DE IMPOSTO PROPORCIONAL', 'RATEIO');

  RateioIcms;
  RateioIcmsSt;
  RateioIpi;

  CalcImpostosNF;
  CalcTotalNF;

  BtnCancelarRateioClick(sender);
  EscreveItensProduto;
end;

procedure TFPadraoFiscal.BtnCancelarRateioClick(Sender: TObject);
begin
  inherited;
  pRateioValores.Visible := False;
  pRateioValores.SendToBack;
end;

function TFPadraoFiscal.VerificaCsosnNFCe: Boolean;
begin
  //
  try
    Result := True;
    //
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    if XTipo = 'ORDEM' then
    begin
      MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.COD_CST = (SELECT CST.COD_CST FROM CST WHERE CST.COD_SIT_TRIB = ''102'') ');
      MDO.Query.SQL.Add(' WHERE (ITPRODORD.COD_CST = (SELECT CST.COD_CST FROM CST WHERE CST.COD_SIT_TRIB = ''101'')) AND (ITPRODORD.COD_ORDEM = :PEDIDO) ');
    end;
    if XTipo = 'PEDV' then
    begin
      MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.COD_CST = (SELECT CST.COD_CST FROM CST WHERE CST.COD_SIT_TRIB = ''102'') ');
      MDO.Query.SQL.Add(' WHERE (ITENSPEDVEN.COD_CST = (SELECT CST.COD_CST FROM CST WHERE CST.COD_SIT_TRIB = ''101'')) AND (ITENSPEDVEN.COD_PEDVEN = :PEDIDO) ');
    end;
    if XTipo = 'PEDC' then
    begin
      MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.COD_CST = (SELECT CST.COD_CST FROM CST WHERE CST.COD_SIT_TRIB = ''102'') ');
      MDO.Query.SQL.Add(' WHERE (ITENSPEDC.COD_CST = (SELECT CST.COD_CST FROM CST WHERE CST.COD_SIT_TRIB = ''101'')) AND (ITENSPEDC.COD_PEDCOMPRA = :PEDIDO) ');
    end;
    MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;

    EscreveItensProduto;
    if not ValidaCstProdutos then
    begin
      RegistraFalha(' CSOSN 102 não foi encontrado na base de dados. Contate o suporte.');
      Result := False;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      RegistraFalha('  Falha ao atribuir CSOSN/CST para NFC-e: ' + E.Message);
    end;
  end;
end;

//Edmar - 26/11/2015 - VALIDAÇÕES PARA CLIENTE ESTRANGEIRO
function TFPadraoFiscal.ValidaDadosEstrangeiro: Boolean;
begin
  Result := True;

  if ((DMMACS.TALX.FieldByName('CODPAIS').AsString = '') or
    (DMMACS.TALX.FieldByName('NOMEPAIS').AsString = '')) then
  begin
    Result := False;
    RegistraFalha('  8771 - Nome e Código Bacen do País não informado.');
  end;

  //se venda (apenas para exportação)
  if (XTipo = 'PEDV') or (XTipo = 'ORDEM') then
  begin
    if ((DMMACS.TALX.FieldByName('UFEMBARQUE').AsString = '') or
      (DMMACS.TALX.FieldByName('LOCALEMBARQUE').AsString = '')) then
    begin
      Result := False;
      RegistraFalha('  8777 - UF e/ou Local de Embarque não informado.');
    end;
  end;

  if DMMACS.TALX.FieldByName('COD_IBGE').AsString <> '9999999' then
  begin
    Result := False;
    RegistraFalha('  8783 - Código do IBGE para Exportação/Importação diferente de 9999999.');
  end;

  if Trim(UpperCase(DMMACS.TALX.FieldByName('CIDADE').AsString)) <> 'EXTERIOR'
    then
  begin
    Result := False;
    RegistraFalha('  8789 - Município para Exportação/Importação diferente de EXTERIOR.');
  end;

  if Trim(UpperCase(DMMACS.TALX.FieldByName('UF').AsString)) <> 'EX' then
  begin
    Result := False;
    RegistraFalha('  8795 - UF para Exportação/Importação diferente de EX.');
  end;

  if
    (TiraCaracter(TiraCaracter(Trim(DMMACS.TALX.FieldByName('CPFCNPJ').AsString),
    '-'), '/') = '')
    and
      (TiraCaracter(TiraCaracter(Trim(DMMACS.TALX.FieldByName('CPFCNPJPED').AsString), '-'), '/') = '') then
  begin
    Result := False;
    RegistraFalha('  8802 - É preciso informar o Id Estrangeiro do Cliente.');
  end;
end;

function TFPadraoFiscal.CalcImpostoIcmsUfDestino: Boolean;
var
  xAliqInternaDestino: Real;
  xAliqExternaOrigem: Real;
begin
  Result := True;

  try
    //Edmar - 19/01/2016 - Zera todos os valores de ICMS
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    if XTipo = 'PEDV' then
      MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ');
    if XTipo = 'ORDEM' then
      MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ');

    MDO.Query.SQL.Add(' ALIQFCPDESTINO = 0, ALIQINTICMS = 0, ALIQEXTICMS = 0, ALIQPROVPARTILHA = 0, ');
    MDO.Query.SQL.Add(' VLRICMSFCP = 0, VLRICMSINTDEST = 0, VLRICMSINTREMET = 0 ');

    if XTipo = 'PEDV' then
      MDO.Query.SQL.Add(' WHERE (ITENSPEDVEN.COD_PEDVEN = :CODIGO) AND (ITENSPEDVEN.CFOP <> ''5656'' and ITENSPEDVEN.CFOP <> ''6656'') ');
    if XTipo = 'ORDEM' then
      MDO.Query.SQL.Add(' WHERE (ITPRODORD.COD_ORDEM = :CODIGO) AND (ITPRODORD.CFOP <> ''5656'' and ITPRODORD.CFOP <> ''6656'') ');

    MDO.Query.ParamByName('CODIGO').AsInteger := XCod_Pedido;
    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;
  except
    MDO.Transac.RollbackRetaining;
  end;

  //Edmar - 20/01/2016 - só calcula quando for operação
  //interestadual para consumidor final não contribuinte.
  // NÃO CALCULAR QUANDO O ITEM FOR COMBUSTIVEL
  if ({XUfOrigem <> XUfDestino} not cbOperacaoInterna.Checked) and
    (XClienteConsumidorFinal)
    and ((FMenu.XTributaCliente = '') or (FMenu.XTributaCliente = 'N')
    or (FMenu.XTributaCliente = '0') or (FMenu.XTributaCliente = '9')) then
  begin
    xAliqInternaDestino := RecuperaAliqInternaIcms(XUfDestino);
    xAliqExternaOrigem := RecuperaAliqInterestadual(XUfOrigem, XUfDestino);

    if (xAliqInternaDestino - xAliqExternaOrigem) > 0 then
    begin
      try
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        if XTipo = 'PEDV' then
          MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ');
        if XTipo = 'ORDEM' then
          MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ');

        MDO.Query.SQL.Add(' ALIQFCPDESTINO = :ALIQ_FCP, ');
        MDO.Query.SQL.Add(' ALIQINTICMS = :ALIQ_INT, ');
        MDO.Query.SQL.Add(' ALIQEXTICMS = :ALIQ_EXT, ');
        MDO.Query.SQL.Add(' ALIQPROVPARTILHA = :ALIQ_PROV_DESTINO, ');
        if XTipo = 'PEDV' then
        begin
          MDO.Query.SQL.Add(' BASEICMSUFDEST = VALORTOTAL, ');
          MDO.Query.SQL.Add(' VLRICMSFCP = VALORTOTAL * (:ALIQ_FCP / 100), ');
          MDO.Query.SQL.Add(' VLRICMSINTDEST = (VALORTOTAL * ((:ALIQ_INT - :ALIQ_EXT) / 100)) * (:ALIQ_PROV_DESTINO / 100), ');
          MDO.Query.SQL.Add(' VLRICMSINTREMET = (VALORTOTAL * ((:ALIQ_INT - :ALIQ_EXT) / 100)) * ((100 - :ALIQ_PROV_DESTINO) / 100) ');
        end;

        if XTipo = 'ORDEM' then
        begin
          MDO.Query.SQL.Add(' BASEICMSUFDEST = TOTAL, ');
            // + ((TOTAL / ((100 - :ALIQ_INT) / 100)) * (:ALIQ_INT / 100)), ');
          MDO.Query.SQL.Add(' VLRICMSFCP = TOTAL * (:ALIQ_FCP / 100), ');
          MDO.Query.SQL.Add(' VLRICMSINTDEST = (TOTAL * ((:ALIQ_INT - :ALIQ_EXT) / 100)) * (:ALIQ_PROV_DESTINO / 100), ');
          MDO.Query.SQL.Add(' VLRICMSINTREMET = (TOTAL * ((:ALIQ_INT - :ALIQ_EXT) / 100)) * ((100 - :ALIQ_PROV_DESTINO) / 100) ');
        end;

        if XTipo = 'PEDV' then
          MDO.Query.SQL.Add(' WHERE (ITENSPEDVEN.COD_PEDVEN = :PEDIDO) AND (ITENSPEDVEN.CFOP <> ''5656'' and ITENSPEDVEN.CFOP <> ''6656'') ');
        if XTipo = 'ORDEM' then
          MDO.Query.SQL.Add(' WHERE (ITPRODORD.COD_ORDEM = :PEDIDO) AND (ITPRODORD.CFOP <> ''5656'' and ITPRODORD.CFOP <> ''6656'') ');

        MDO.Query.ParamByName('ALIQ_FCP').AsCurrency := 2;

        MDO.Query.ParamByName('ALIQ_INT').AsCurrency := xAliqInternaDestino;
          //aliq. fixa do estado de destino
        MDO.Query.ParamByName('ALIQ_EXT').AsCurrency := xAliqExternaOrigem;
          //aliq. interestadual entre a origem e o destino

        //Edmar - 19/01/2016 - Verifica o ano de competencia e passa a aliq.
        //correspondente: 40% em 2016; 60% em 2017; 80% em 2018; 100% a partir de 2019.
        if YearOf(Date) = 2016 then
          MDO.Query.ParamByName('ALIQ_PROV_DESTINO').AsCurrency := 40;

        if YearOf(Date) = 2017 then
          MDO.Query.ParamByName('ALIQ_PROV_DESTINO').AsCurrency := 60;

        if YearOf(Date) = 2018 then
          MDO.Query.ParamByName('ALIQ_PROV_DESTINO').AsCurrency := 80;

        if YearOf(Date) >= 2019 then
          MDO.Query.ParamByName('ALIQ_PROV_DESTINO').AsCurrency := 100;

        MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;

        MDO.Query.ExecSQL;

        MDO.Transac.CommitRetaining;
      except
        on E: Exception do
        begin
          MDO.Transac.RollbackRetaining;
          Result := False;
          MessageDlg('O cálculo do ICMS da UF de destino não ocorreu. ' + #13#10
            + E.Message, mtWarning, [mbOK], 0);
        end;
      end;
    end;
  end;
end;

procedure TFPadraoFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  xPrimeiraVez := True;
  xPartiuCheckBox := False;
end;

//Edmar - 20/01/2016 - função para adicionar as informações adicionais referente
//ao icms da uf de destino
procedure TFPadraoFiscal.InfoAdicionaisUfDestino;
var
  xInfoAdcUfDestino: string;
begin
  //
  if ({XUfOrigem <> XUfDestino} not cbOperacaoInterna.Checked) and
    (XClienteConsumidorFinal)
    and ((FMenu.XTributaCliente = '') or (FMenu.XTributaCliente = 'N')
    or (FMenu.XTributaCliente = '0') or (FMenu.XTributaCliente = '9'))
    and (XTipo <> 'PEDC') then
  begin
    try
      xInfoAdcUfDestino := '';

      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      if XTipo = 'PEDV' then
      begin
        MDO.QConsulta.SQL.Add(' SELECT SUM(ITENSPEDVEN.BASEICMSUFDEST) BC, ITENSPEDVEN.ALIQINTICMS, ITENSPEDVEN.ALIQEXTICMS, ');
        MDO.QConsulta.SQL.Add(' ITENSPEDVEN.ALIQPROVPARTILHA, ITENSPEDVEN.ALIQFCPDESTINO, ');
        MDO.QConsulta.SQL.Add(' SUM(ITENSPEDVEN.VLRICMSINTDEST) VLR_DEST, SUM(ITENSPEDVEN.VLRICMSINTREMET) VLR_REMET ');
        MDO.QConsulta.SQL.Add(' FROM ITENSPEDVEN ');
        MDO.QConsulta.SQL.Add(' WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO ');
      end;
      if XTipo = 'ORDEM' then
      begin
        MDO.QConsulta.SQL.Add(' SELECT SUM(ITPRODORD.BASEICMSUFDEST) BC, ITPRODORD.ALIQINTICMS, ITPRODORD.ALIQEXTICMS, ');
        MDO.QConsulta.SQL.Add(' ITPRODORD.ALIQPROVPARTILHA, ITPRODORD.ALIQFCPDESTINO, ');
        MDO.QConsulta.SQL.Add(' SUM(ITPRODORD.VLRICMSINTDEST) VLR_DEST, SUM(ITPRODORD.VLRICMSINTREMET) VLR_REMET ');
        MDO.QConsulta.SQL.Add(' FROM ITPRODORD ');
        MDO.QConsulta.SQL.Add(' WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');
      end;
      MDO.QConsulta.SQL.Add(' GROUP BY ALIQINTICMS, ALIQEXTICMS, ALIQPROVPARTILHA, ALIQFCPDESTINO ');
      MDO.QConsulta.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      MDO.QConsulta.Open;

      if (MDO.QConsulta.FieldByName('VLR_DEST').AsCurrency > 0) or
        (MDO.QConsulta.FieldByName('VLR_REMET').AsCurrency > 0) then
      begin
        xInfoAdcUfDestino := 'VALOR DA BC ICMS UF DESTINO R$ ' +
          FormatFloat('0.00', MDO.QConsulta.FieldByName('BC').AsCurrency) + '; ';
        xInfoAdcUfDestino := xInfoAdcUfDestino + 'ALIQUOTA INTERNA UF DESTINO '
          + FormatFloat('0', MDO.QConsulta.FieldByName('ALIQINTICMS').AsCurrency) +
          '%; ';
        xInfoAdcUfDestino := xInfoAdcUfDestino + 'ALIQUOTA INTERESTADUAL DA UF '
          + FormatFloat('0', MDO.QConsulta.FieldByName('ALIQEXTICMS').AsCurrency) +
          '%; ';
        xInfoAdcUfDestino := xInfoAdcUfDestino +
          'PERCENTUAL PROVISÓRIO DE PARTILHA ' + FormatFloat('0',
          MDO.QConsulta.FieldByName('ALIQPROVPARTILHA').AsCurrency) + '%; ';
        xInfoAdcUfDestino := xInfoAdcUfDestino + 'FUNDO DE COMBATE A PROBREZA '
          + FormatFloat('0',
          MDO.QConsulta.FieldByName('ALIQFCPDESTINO').AsCurrency) + '%; ';
        xInfoAdcUfDestino := xInfoAdcUfDestino +
          'VALOR ICMS INTERESTADUAL UF DESTINO R$ ' + FormatFloat('0.00',
          MDO.QConsulta.FieldByName('VLR_DEST').AsCurrency) + '; ';
        xInfoAdcUfDestino := xInfoAdcUfDestino +
          'VALOR ICMS INTERESTADUAL UF REMETENTE R$ ' + FormatFloat('0.00',
          MDO.QConsulta.FieldByName('VLR_REMET').AsCurrency) + '; ';
      end;
    finally
      MDadosAdicionais.Lines.Add(xInfoAdcUfDestino);
    end;
  end;
end;

// Edmar - 14/10/2016 - Atualiza o valor de ST e atualiza CST do Item
procedure TFPadraoFiscal.CalcDiferencialST;
var
  xAliqUf, xAliqNcm, xDifalSt: Real;
  xCodCst900: Integer;
begin
  // CALCULAR QUANDO FOR FORA DO ESTADO, CONSUMIDOR FINAL
  if ({XUfOrigem <> XUfDestino} not cbOperacaoInterna.Checked) and
    (XClienteConsumidorFinal) then
  begin
    if (XTipo <> 'PEDC') then
    begin
      // busca o ICMS do estado de destino
      xAliqUf := RecuperaAliqInterestadualUF(XUfDestino);

      // busca os itens que possuem CST de substituição tributária
      // CST.DIFERENCIAL_ALIQ
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      if XTipo = 'ORDEM' then
      begin
        MDO.QConsulta.SQL.Add(' SELECT ITPRODORD.COD_ITPRODORD COD_ITEM ');
        MDO.QConsulta.SQL.Add(' FROM ITPRODORD ');
        MDO.QConsulta.SQL.Add(' LEFT JOIN CST ON CST.COD_CST = ITPRODORD.COD_CST ');
        MDO.QConsulta.SQL.Add(' WHERE (CST.SUBSTITUICAO = ''1'') AND (ITPRODORD.COD_ORDEM = :PEDIDO) ');
        MDO.QConsulta.SQL.Add(' AND (CST.DIFERENCIAL_ALIQ = ''1'') ');
      end
      else
      begin
        MDO.QConsulta.SQL.Add(' SELECT ITENSPEDVEN.COD_ITENSPEDVEN COD_ITEM ');
        MDO.QConsulta.SQL.Add(' FROM ITENSPEDVEN ');
        MDO.QConsulta.SQL.Add(' LEFT JOIN CST ON CST.COD_CST = ITENSPEDVEN.COD_CST ');
        MDO.QConsulta.SQL.Add(' WHERE (CST.SUBSTITUICAO = ''1'') AND (ITENSPEDVEN.COD_PEDVEN = :PEDIDO) ');
        MDO.QConsulta.SQL.Add(' AND (CST.DIFERENCIAL_ALIQ = ''1'') ');
      end;
      MDO.QConsulta.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
      MDO.QConsulta.Open;
      MDO.QConsulta.First;

      if xAliqUf = 0 then
      begin
        RegistraFalha('  Não foi encontrada a alíquota interestadual para a ' +
          'UF ' + XUfDestino + ' usada o calculo do DIFAL. ' +
          'Por favor atualize o cadastro do estado de destino.');
      end;

      MDO.QAlx1.Close;
      MDO.QAlx1.SQL.Clear;
      MDO.QAlx1.SQL.Add(' SELECT CST.COD_CST FROM CST WHERE CST.COD_SIT_TRIB = ''900'' ');
      MDO.QAlx1.Open;

      if MDO.QAlx1.IsEmpty then
        RegistraFalha('  Não foi localizado o CST 900. Por favor, realize o cadastro para continuar.')
      else
        xCodCst900 := MDO.QAlx1.FieldByName('COD_CST').AsInteger;

      while not MDO.QConsulta.Eof do
      begin
        // busca o ICMS do NCM do produto
        MDO.QAlx1.Close;
        MDO.QAlx1.SQL.Clear;
        MDO.QAlx1.SQL.Add(' SELECT NCM.ALIQTOTALTRIBUTAEST ALIQ, NCM.NCM ');
        if XTipo = 'ORDEM' then
        begin
          MDO.QAlx1.SQL.Add(' FROM ITPRODORD ');
          MDO.QAlx1.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE = ITPRODORD.COD_ESTOQUE ');
          MDO.QAlx1.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ');
          MDO.QAlx1.SQL.Add(' LEFT JOIN NCM ON NCM.NCM = SUBPRODUTO.NCM ');
          MDO.QAlx1.SQL.Add(' WHERE (ITPRODORD.COD_ITPRODORD = :ITEM) ');
        end
        else
        begin
          MDO.QAlx1.SQL.Add(' FROM ITENSPEDVEN ');
          MDO.QAlx1.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE = ITENSPEDVEN.COD_ESTOQUE ');
          MDO.QAlx1.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ');
          MDO.QAlx1.SQL.Add(' LEFT JOIN NCM ON NCM.NCM = SUBPRODUTO.NCM ');
          MDO.QAlx1.SQL.Add(' WHERE (ITENSPEDVEN.COD_ITENSPEDVEN = :ITEM) ');
        end;
        MDO.QAlx1.ParamByName('ITEM').AsInteger :=
          MDO.QConsulta.FieldByName('COD_ITEM').AsInteger;
        MDO.QAlx1.Open;

        if not MDO.QAlx1.IsEmpty then
          xAliqNcm := MDO.QAlx1.FieldByName('ALIQ').AsCurrency
        else
          xAliqNcm := 0;

        if xAliqNcm = 0 then
        begin
          RegistraFalha('  Não foi encontrada a alíquota estadual do ' +
            'NCM ' + MDO.QAlx1.FieldByName('NCM').AsString +
              ' para o calculo do DIFAL. ' +
            'Por favor atualize o cadastro do seu NCM.');
        end;

        // atualiza a ST do produto, atualiza para CST 900 e o CST 6404
        // quando foram encontradas as aliquotas
        if (xAliqNcm <> 0) and (xAliqUf <> 0) then
        begin
          xDifalSt := xAliqNcm - xAliqUf;
          if xDifalSt > 0 then
          begin
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            if XTipo = 'ORDEM' then
            begin
              MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.COD_CST = :COD_CST, ');
              MDO.Query.SQL.Add(' ITPRODORD.BASEICMSSUBS = ITPRODORD.TOTAL, ');
              MDO.Query.SQL.Add(' ITPRODORD.VLRICMSSUBS = (ITPRODORD.TOTAL * :ALIQ) / 100, ');
              MDO.Query.SQL.Add(' ITPRODORD.APLICARST = ''1'' ');
              MDO.Query.SQL.Add(' WHERE ITPRODORD.COD_ITPRODORD = :ITEM ');
            end
            else
            begin
              MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.COD_CST = :COD_CST, ');
              MDO.Query.SQL.Add(' ITENSPEDVEN.BASEICMSSUBS = ITENSPEDVEN.VALORTOTAL, ');
              MDO.Query.SQL.Add(' ITENSPEDVEN.VLRICMSSUBS = (ITENSPEDVEN.VALORTOTAL * :ALIQ) / 100, ');
              MDO.Query.SQL.Add(' ITENSPEDVEN.APLICARST = ''1'' ');
              MDO.Query.SQL.Add(' WHERE ITENSPEDVEN.COD_ITENSPEDVEN = :ITEM ');
            end;
            MDO.Query.ParamByName('COD_CST').AsInteger := xCodCst900;
            MDO.Query.ParamByName('ALIQ').AsCurrency := xDifalSt;
            MDO.Query.ParamByName('ITEM').AsInteger :=
              MDO.QConsulta.FieldByName('COD_ITEM').AsInteger;

            MDO.Query.ExecSQL;
          end;
        end;
        MDO.QConsulta.Next;
      end;
      MDO.Transac.CommitRetaining;
    end;
  end;
end;

//Edmar - 05/12/2016 - Função para recalcular o valor de ISS dos serviços
//para garantir que está sendo informado o valor correto.
procedure TFPadraoFiscal.CalcISSServico;
var
  xTotalServicoSemDesconto: Real;
begin
  try
    xTotalServicoSemDesconto := xValorTotalServico - (xValorTotalServico *
      (DMServ.TOrd.FieldByName('DESCSERV').AsCurrency / 100));

    EdVlrIss.ValueNumeric := xTotalServicoSemDesconto
      {EdVlrServicos.ValueNumeric} * (edIss.ValueNumeric / 100);
  except
    ShowMessage('Não foi possível recalcular o ISS dos serviços. Por favor confira se o valor de ISS está correto.');
  end;
end;

procedure TFPadraoFiscal.btnProcuaCfopClick(Sender: TObject);
begin
  inherited;
  if AbrirForm(TFCADCFOP, FCADCFOP, 1) = 'Selected' then
  begin
    XCfopManual := True;
    XCFOP_OP := True;
    XCFOP_ST := False;
    XCod_Cfop1 := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
    XCod_Cfop1 := -1;
    XCod_Cfop1 := -1;
    LCfop.Caption := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
    LNatOp.Caption := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
  end;
end;

procedure TFPadraoFiscal.btnContingenciaClick(Sender: TObject);
begin
  inherited;
  //////////////////////////////////////////////////////////////////
  // NF-e em contingência                                         //
  // - siglaWs => SVC-RS                                          //
  // - tpEmissao => 7 (Contingência SVC-RS)                       //
  // - consulta, envio, geração de chave e de xml devem respeitar //
  //   esses parametros                                           //
  //////////////////////////////////////////////////////////////////

  //////////////////////////////////////////////////////////////////
  // NFC-e em contingência                                        //
  // - tpEmissao => 9 (contingencia offline)                      //
  //////////////////////////////////////////////////////////////////

  if Mensagem('CONFIRMAÇÃO',
    'Deseja enviar a nota fiscal em modo de contingência?', '', 2, 3, false, 'c')
    = 2 then
  begin
    xEnvioContingencia := True;
    BitBtn3.Click;
    xEnvioContingencia := False;
  end;
end;

procedure TFPadraoFiscal.cbOperacaoInternaClick(Sender: TObject);
begin
  inherited;
  { ValidaCfopConsumo;
   ValidaCfopProdutos;
   VerificaCfopProdutoLoja;
   EscreveCfops;}
  xPartiuCheckBox := True;
  Atualiza;
  xPartiuCheckBox := False;
end;

procedure TFPadraoFiscal.cbDeduzirRetencoesClick(Sender: TObject);
begin
  inherited;
   Atualiza;      
end;

end.
