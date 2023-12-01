// MMMMMM          MMMMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRRRRRRRRRRRRRRRRRRRR
// MMMMMMM        MMMMMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRRRRRRRRRRRRRRRRRRRR
// MMMMMMMM      MMMMMMMM                ZZZZZZZ       RRRR              RRRR
// MMMM MMMM    MMMM MMMM           ZZZZZZZZZ          RRRRRRRRRRRRRRRRRRRRRR
// MMMM  MMMM  MMMM  MMMM       ZZZZZZZZZ              RRRRRRRRRRRRRRRRRRRRRR
// MMMM   MMMMMMMM   MMMM    ZZZ                       RRRR        RRRRR
// MMMM    MMMMMMM   MMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRR         RRRRR
// MMMM    MMMMMM    MMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRR            RRRRRR
unit UMzrNfe;
    {***************************************************************************}  
    //Unidade de Controle para Nota Fiscal Eletronica
    //CRIA��O      : 10/05/2010
    //CRIADOR      : Alex Arlati Mazur
    //DIREITOS     : Os direitos est�o reservados a Mzr Sistemas
    //LINK         : MZR Zion
    {***************************************************************************}
    //OBSERVA��ES IMPORTANTES
    //URL: A Pasta que contem o executavel do deve conter uma pasta chamada url, e dentro conter um arquivo chamado ws.xml que tamb�m deve estar configurado para os servidores da receita
    //SCHEMAS:
    // STATUS NFE:
    // 1 = NFE Emitida e Recebida com Sucesso, 2 = Nfe Enviada mas n�o recebida com sucesso, 3 = Nfe Cancelada
    // TIPO AMBIENTE:
    // 1 = Produ��o, 2 = Homologa��o

interface                                                                                

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FR_Shape, TDadosNFe, FR_BarC, FR_DSet, FR_DBSet, FR_Class, 
  Buttons, StdCtrls, Mask, ColorMaskEdit, XMLDoc, XMLIntf, EditFloat, DrLabel, jpeg, Clipbrd, NFe_Util_2G_TLB, ShellAPI,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, FashionPanel, IdPOP3, xmldom, msxmldom,
  frxClass, frxDBSet, frxExportPDF, frxBarcode, ComObj, UMdo, IdIOHandler,
  IdIOHandlerSocket, IdSSLOpenSSL, IdServerIOHandler, DateUtils, StrUtils,
  IdExplicitTLSClientServerBase, IdSMTPBase, IdIOHandlerStack, IdSSL, IdAttachment, IdAttachmentFile;

type
  TFMzrNfe = class(TForm)
    LDescTitulo01: TDRLabel;
    PInutilizacao: TPanel;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edAno: TFloatEdit;
    edNumInicial: TFloatEdit;
    edNumFinal: TFloatEdit;
    edJustificativa: TColorMaskEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    btnInutilizar: TBitBtn;
    edCNPJ: TColorMaskEdit;
    btnFechar: TBitBtn;
    BitBtn8: TBitBtn;
    PBotoes01: TPanel;
    BtnFecha01: TSpeedButton;
    FSDanfe: TfrReport;
    FSDBDanfe: TfrDBDataSet;
    frBarCodeObject1: TfrBarCodeObject;
    frShapeObject1: TfrShapeObject;
    tConsultas: TTimer;
    Image1: TImage;
    PAguarde: TPanel;
    Label3: TLabel;
    LBStatusAguarde: TLabel;
    LInformacao: TLabel;
    LAmbiente: TLabel;
    LVersaoDll: TLabel;
    PAdm: TPanel;
    Button1: TButton;
    BitBtn2: TBitBtn;
    Button2: TButton;
    Button3: TButton;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    PErro: TPanel;
    MErro: TMemo;
    SpeedButton1: TSpeedButton;
    LVisualizaFalhas: TLabel;
    Button4: TButton;
    Button5: TButton;
    FSDBServicos: TfrDBDataSet;
    LbValCertificado: TLabel;
    PEnviaXml: TPanel;
    FashionPanel6: TFashionPanel;
    BtnEnviarOk: TBitBtn;
    BtnCancelaEnvio: TBitBtn;
    EdEmail: TEdit;
    Label1: TLabel;
    SMTPxml: TIdSMTP;
    MessXml: TIdMessage;
    MMensagem: TMemo;
    Label2: TLabel;
    IdPOP31: TIdPOP3;
    XDocNfe: TXMLDocument;
    odAnexo: TOpenDialog;
    XMLNFSe: TXMLDocument;
    frxNfe: TfrxReport;
    frxBarCode: TfrxBarCodeObject;
    dataSetEmpresa: TfrxDBDataset;
    frxExportaNfe: TfrxPDFExport;
    dataSetGeral: TfrxDBDataset;
    dataSetProdutos: TfrxDBDataset;
    dataSetTransp: TfrxDBDataset;
    dataSetCfop: TfrxDBDataset;
    dataSetLoja: TfrxDBDataset;
    dataSetCidade: TfrxDBDataset;
    dataSetTmp: TfrxDBDataset;
    dataSetSaida: TfrxDBDataset;
    dataSetPessoaJ: TfrxDBDataset;
    dataSetAlx4: TfrxDBDataset;
    dataSetCFOP2: TfrxDBDataset;
    PFalhasFiscais: TPanel;
    FashionPanel1: TFashionPanel;
    lbDescricaoFalhas: TLabel;
    Label4: TLabel;
    btnFechaFalhas: TBitBtn;
    btnhelp: TBitBtn;
    lbCodigoRejeicao: TLabel;
    Label5: TLabel;
    SSLSocket: TIdSSLIOHandlerSocketOpenSSL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnFecha01Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure LVisualizaFalhasClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BtnEnviarOkClick(Sender: TObject);
    procedure BtnCancelaEnvioClick(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
    procedure btnFechaFalhasClick(Sender: TObject);

  private
    { Private declarations }
    //*************************
    //** A U X I L I A R E S **
    //*************************
       //Procedure para alterar o estado do mouse para indicar processamento
       procedure EstadoMouse(const Estado:Boolean);
       // Procedure utilizada para verificar a existencia e criar o diret�rio conform configura��o
       procedure VerificaDiretorio(const dir: String);
       // Procedure para startar o painel de aguarde
       procedure PainelAguarde(mostrar :Boolean);
       //procedure para controlar o texto do painel de aguarde
       procedure StatusAguarde(str:String);
       // Procedure para processar as informacoes correntes
       procedure Information(texto : string);
       //Procedure que invisibiliza todos os paineis
       Procedure LimpaPaineis;
       //Procedure utilizada para informar a conclus�o do processo
       Procedure ConcluiProcesso(Texto: String);
       //Fun��o para gravar os dados da nfe em banco de dados
       Function GravaInfoBanco : Boolean;
       //Fun��o para gravar os dados da nfe em banco de dados
       Function GravaInfoNFCeBanco(I: Integer) : Boolean;
       //Fun��o para gravar os dados da nfe em banco de dados
		Function GravaCCeBanco(XCceTipoEmissor: String; XCceCarta: WideString; XCceProtocoloNumero: String; XCceData: String; XCceXml: WideString; XCceXmlResposta: String) : Boolean;
       //Fun��o para gravar os dados da nfe em banco de dados Informando que a NFe n�o obteve resultado Positivo no Sefaz
       Function GravaInfoBancoNegativa : Boolean;
       // Fun��o que traz a vers�o da dll flexdoc
       Function GetVersionDll: String;
       // Fun��o generica para ler qualquer tipo de retorno (de acordo com parametro) Retornando XNfeNumRetorno e XMsgGeral
       Function GetGenericRetorno(XParamentro: String; XTextoAnalisar: WideString): Boolean;
       // Fun��o para verificar o numero de retorno da fun��o e retornar o texto equivalente
       Function GetTextoNumeroRetorno(XNumero: String): String;
       // Fun��o para Atualizar memo de erros
       Function NfeAddFalhas(XMsgFalhas: String): Boolean;
       // Fun��o utilizada para consultar se uma numera��o de nota esta gravada em banco como NFe v�lida
       Function NFeConsultaNFeValidoBD(NumNota:String): Integer;
       // Paulo 17/01/2011: Fun��o para verificar o numero de retorno da fun��o e retornar o texto equivalente para xml de distribui��o
       Function GetTextoDistribuicaoRetorno(XNumero: String): String;
       //Paulo 08/07/2011 - Fun��o que retorna a data de vencimento do certificado digital
       Procedure RetornaDataVctoCertificado;
       //Edmar - 25/04/2014 - Fun��o usada para gravar o PDF da nota
       Function GravaPdfNfe: Boolean;
       //Edmar - 13/02/2017 - Busca resultado do envio da NFe
       function BuscaResultadoEnvioNFe: Boolean;

    /////////////////////////////////////////////
    //LOTES: Fun��es para controle de lote fiscal
    /////////////////////////////////////////////
       // ler arquivo resposta a partir do id do lote
       function XmlLoteLerRespostaRetorno(XRetornoLoteEnviado: WideString):Boolean;
		// Fun��o para gravar retorno da consulta ao lote
		Function XmlConsultaGravarRetorno(const retXML:WideString):Boolean;
		// Fun��o para ler retorno da consulta ao lote
		Function XmlConsultaLerRetorno(const XRetornoConsultaLote:WideString):Boolean;

       //////////////////////////////////////////////////////////
       //CANCELAMENTOS: Fun��es auxiliares de cancelamento de Nfe
       //////////////////////////////////////////////////////////
	 	// Fun��o utilizada para ler resposta do cancelamento da Nfe
		function XmlCancelamentoLerResposta(XRetornoCancelamentoNfe: WideString):Boolean;

       //*****************************************************************
       //** I N I C I A L I Z A � � E S - seta/Inicializa as vari�veis  **
       //*****************************************************************
       //Fun��o para setar as vari�veis de controle geral
       Function SetVariaveisGerais: Boolean;
       //Fun��o utilizada para setar os dados principais da  classe dadosfe
       Function SetDadosPrincipal: Boolean;
       //Fun��o utilizada para setar os dados do emitente da Nfe (cliente usario do sistema)
       Function SetDadosEmitente: Boolean;
       //Fun��o utilizada para setar os dados do emitente da Nfe (cliente usario do sistema)
       Function SetDadosDestinatario: Boolean;
       //Fun��o utilizada para setar os dados dos produtos da Nfe
       Function SetDadosProdutos: Boolean;
       //Fun��o utilizada para setar os dados de Total da Nfe
       Function SetDadosTotalNfe: Boolean;
       //Fun��o utilizada para setar os dados de Transporte da Nfe
       Function SetDadosTransporte: Boolean;
       //Fun��o utilizada para setar os dados Adicionais da Nfe
       Function SetDadosAdicionais: Boolean;
       //Fun��o utilizada para setar os dados de exporta��o da Nfe
       Function SetDadosExportacao: Boolean;
       //Fun��o utilizada para validar e setar as infos de autoriza��o da nfe
       function SetDadosAutorizacaoXML: Boolean;
       function SetDadosImpostosRetidos: Boolean;
		//
       Function FiltraDadosImportacaoExportacao: Boolean;
       //Edmar - 27/11/2015 - Fun��o para mostrar o novo painel para mostrar as falhas de NF-e ou NFC-e
       function RejeicaoFiscal(XMsgRejeicao: String; XCodigoRejeicao:String): Boolean;
		//Fun��o utilizada para salvar o numero da nota fiscal nas parcelas de contas a receber
		Function SalvaNumeroFiscalContasReceber(xOS_PV, xNumeroFiscal: String; xCodigo: Integer): Boolean;

    //*********************************************************************************************
    // N F E - P R I O R I T A R I A S: Fun��es/Procedures principais que chamam procedures filhas
    //*********************************************************************************************
       //Procedure na clausula activate do form que inicializa o processo
       Function Inicializa: Boolean;
       //Fun��o que inicializa todo o processo de produ��o e envio de Nfe
       Function ProduzirNfe: Boolean;
       //Fun��o utilizada para transmitir o xml da Nfe
       Function NfeTransmiteXml: Boolean;
       //Fun��o utilizada para transmitir o XML em modo scan
		Function NfeTransmiteXmlScan: Boolean;
       //Fun��o utilizada para armazenar fisicamente a Nfe enviada e recebida com sucesso na pasta definitiva das nfe
       Function NfeGravaNfeEnviada: Boolean;
       //Fun��o para salvar as infos. de contingencia offline
       Function GravaNfceContingencia: Boolean;
       //Fun��o utilizada para armazenar fisicamente a Nfe cancelada e recebida com sucesso na pasta definitiva das nfe
       Function NfeGravaNfeCancelada: Boolean;
       //Fun��o Utilizada para consultar o Status do Servidor
       Function ConsultarStatusServico(const scan:Boolean; out msgerro:String):Boolean;
		//Fun��o utilizada para consultar e listar todas as Nfes do sefaz
       Function NfeListarNotasFiscais: Boolean;
       //Fun��o utilizada para consultar o lote fiscal
       Function NfeConsultarLote(XNfeRecibo: String): Boolean;
       //Fun��o utilizada para consultar o Status da Nfe
       Function NfeConsultarNotaFiscal: Boolean;
       //Fun��o utilizada para consultar e mostrar situa��o da Nfe
       Function NfeConsultarSituacaoNotaFiscal: Boolean;
       //Fun��o utilizada para cancelar a nfe emitida anteriormente
       Function NfeCancelar: Boolean;
       //Fun��o para gravar os dados da nfe em banco de dados
       Function NfeVisualizanoSefaz : Boolean;
       //Fun��o utilizada para cancelar a nfe emitida anteriormente
       Function NfeStatusServ: Boolean;
       //Fun��o utilizado para inutilizar numera��es
       Function NFeInutilizaNumeracao: Boolean;
       //Fun��o utilizada Enviar Carta de Corre��o Eletronica
       Function NfeCCE: Boolean;


    	//*******************************************************************************
    	// XML - N F E  - Fun��es e procedures especificas para o trabalho com xml da Nfe
    	//*******************************************************************************
       //Fun��o para gerar chave de acesso
       Function XmlChaveAcesso(const cUF, ano, mes, CNPJ, modelo, serie, numero, codigoSeguranca:WideString; out cNF, cDV, chaveNFe:Widestring):Boolean;
       //Fun��o para gerar o xml da Nfe atraves do dados j� selecionados
       Function XmlGerar: Boolean;
       //Fun��o que alimenta os dados ca classeTDadosNfe
       Function XmlAlimentaDados: Boolean;
       //Fun��o que gera o Xml a partir dos dados inseridos nas classes
       Function XmlGerarArquivoXml : Boolean;
       //Fun��o utilizada para gerar lote de arquivos xml (adiciona apenas um arquivo por lote)
       function XmlGerarLote(const idLote:String; const nfeIDArray : Array of String):Boolean;
       //Fun��o para abrir o xml para adicionar no lote
       Function XmlAbriradicionaXmlLote(const idNFe:String; out XMLEnviNFe:IXMLNode):Boolean;


    //************************************************
    // VALIDA��ES - Fun��es e procedures de valida��es
    //************************************************
       // Fun��o Utilizada para Validar o arquivo xml
       Function ValidarXML(XmlTemp: WideString; const tipoXML:Integer):Boolean;
       //Fun��o Utilizada para Validar a Nota Fiscal Eletronica
       function ValidarNFe(out nfe:TNFe; out msg:WideString):Boolean;
       // Fun��o Utilizada para assinar o arquivo Xml
       function AssinarXML(const XML:WideString; const TipoNFe:WideString; out XMLAssinado:WideString):Boolean;
       //Fun��o utilizada para validar o ncm do produto junto a tabela ncm no banco de dados
       Function ValidaNcm(XNcm: String): Boolean;
       //Edmar - 12/06/2015 - Fun��o para gerar o QRCode da NFC-e
		Function GeraQRCode(XUrlNFCe, XNomeArquivo: String): String;

  public
    { Public declarations }

		XNfeTextoCartaCorrecaoEletronica: WideString;// Texto descrito na carta de corre��o
           
       //Procedure utilizada para setar inicializa��es feitas atravez da tela do fiscal
       Function SetInFiscal(NomePeriodo: String; CodigoPedido: Integer; CodigoDestinatario: Integer; tipopedido: String; tipoacao: String; tipoemissao: Integer; Cfop: String; NatOperacao: String; FormPagamento: String; NumFiscal: Integer; DtEmissao: TDate; CodigoIbge: String; Municipio: String; Uf: String; BaseIcms, VlrIcm, VlrIpi, BaseIcmsSt, VlrIcmsSt, VlrProduto, VlrFrete, VlrSeguro, Desconto, VlrOutros, VlrNotaFiscal, VlrNotaTotalTributacao: Real): Boolean;
       function SetRetransmissaoNFCe(CodigoPedido: Integer; TipoPedido: String; NumFiscal: Integer): Boolean;
       // Fun��o que retorna o nome do cerfificado digital instalado
       function NfeNomeCertificado(const XOpen:Boolean):String;

    	//***********************************************************************
    	// D A N F E - Fun��es e procedures especificas para o trabalho com danfe
    	//***********************************************************************
    	//Fun��o para visualizar danfe da nfe emitida
    	procedure DanfeVisualizar;
       //Fun��o para visualizar danfe da nfe de entrada emitida
       procedure DanfeEntradaVisualizar;
    	//***********************************************************************
    	// C O N S U L T A S  N F E - Fun��es externas para consul
    	//***********************************************************************
    	//Fun��o para visualizar danfe da nfe emitida
    	Function ReturnListaNfe(XMes, XMesFim: Widestring; XAno: Widestring; XNumInicial: Integer; XNumFinal: Integer): Boolean;
       //Paulo 08/11/2010 - 143:Fun��o respons�vel em gerar e salvar o xml de distribui��o
		Function GeraXMLDistribuicao: Boolean;
       //Alex 26/12/2012:Fun��o para salvar e transmitir Carta de Corre��o Eletronica
       Function CCeGravaDistribui(XCCeXmlDistribuido: WideString): Boolean;
       //Alex 26/12/2012:Fun��o para salvar localmente em tmp o arquivo
       Function CCeGravaLocal(XCCeXmlDistribuido: WideString): Boolean;
       //Alex 14/08/2012 - 143:Fun��o respons�vel em salvar o xml de cancelamento
       Function GeraXMLCancelamento: Boolean;
       //Paulo 15/07/2011: Envia xml de distribui��o para o fornecedor;
       Function EnviaXMLDistribuicao: Boolean;
       //Paulo 29/10/2011: Grava email do cliente
       Procedure GravaEmail(XCodCliente:Integer);
       //PAulo 13/02/2012:Gera todos os xml de distribui��o do periodo
       Procedure BuscaDadosPeriodo(Xtipo: String);
       //Paulo 20/04/2012: Gera Xml para Nota Fiscal de Servi�os
       Function GeraXMLServico: Boolean;
       //Paulo 20/04/2012: Fun��o para desmembrar o c�digo e o sub c�digo do servi�o
       Function DesmembraCodigo(XCodigo: String; Xtipo:String): String;
       //Paulo 23/04/2012: Fun��o para buscar dados do tomador(cliente)
       Function XSetDadosTomador(XSetCodigoTomador:Integer): Boolean;
       //Paulo 23/04/2012: Fun��o para buscar dados do tomador(cliente)
       Function IniciaEnvioNFSe(XNumFiscal:Integer; XSetCodigoTomador:Integer; XCodOrdem:Integer; XPeriodoFiscal:String): Boolean;


  end;

var
  FMzrNfe: TFMzrNfe;

   //*********************************************************************
   //Variaveis de SetinFiscal - passagem da tela fiscal para a tela de Nfe
   //*********************************************************************
   XSetCodigoPedido: Integer;
   XSetInPeriodoFiscal: String;//String contendo o nome do periodo fiscal
   XSetInTipoPedido: String; //define o tipo do pedido PEDV, PEDC, OS
   XSetInTipoAcao:String;//Determina o Tipo de a��o ou processo de Nfe ("EMITIR", "CONSULTAR", "CANCELAR")
   XSetInTipoEmissao: Integer;//controla o tipo de emiss�o 1-normal
   XSetInCfop: String;
   XSetInNatOperacao: String;
   XSetInFormPagamento: String;
   XSetInNumFiscal: Integer;
   XSetDataEmissao: TDate;
   XSetMunicipioIbge: String;
   XSetMunicipioNome: String;
   XSetUfDestino: String;
   XSetCodigoDestinatario: Integer;
   XSetBaseIcms, XSetVlrIcms, XSetVlrIpi, XSetBaseIcmsSt, XSetVlrIcmsSt, XSetVlrProduto, XSetVlrFrete, XSetVlrSeguro, XSetDesconto, XSetVlrII: Real;
   XSetVlrOutros, XSetVlrNotaFiscal, XSetVlrTotalTributacao: Real;
   XSetVlrIcmsUfDest, XSetVlrIcmsUfRemet, XSetVlrFcpUfDest, xSetVlrFcp, xSetVlrTotalIpiDevolvido: Real;

   //Variaveis para controle da fun��o que retorna lista de Nfe do Sefaz
	XSetLstMes, XSetLstFim, XSetLstAno: WideString;
   XSetRefUri: WideString;
   XSetLstNumInicial, XSetLstNumFinal: Integer;
   XSiglaWS: String;

   //*********************************************
   //Varaiveis genericas para controle de retornos
   //*********************************************
   XMsgRetWS: WideString; //Retorno do servidor
   XMsgGeral: WideString; //Armazena mensagens gerais de retorno
   XMsgcabMsg: WideString; //Mensagem de uso geral na passagem de parametros das fun��es
   XMsgDadosMsg: WideString; //Mensagem de uso geral na passagem de parametros das fun��es
   XMsgNumRetorno: String; //Variavel para armazenar o numero do retorno
   XDadosRetornoProtocolo, XDadosRetornoChave, XDadosRetornoNumero: String;//Paulo 03/11/2010 - 163:Para armazenar os dados de retorno

   //*********************
   //Variaveis de controle
   //*********************
   XIndicaProcessoConcluido: Boolean; //True=Tela pode ser fechada com um esc
   XNfeModelo, XMsgGeralString : String;
   XNfeSerie : String;
   XNfeTipoAmbiente: Integer;
   XNFeVersao: String;
   XNFETIPOEMISSAO: STRING; //Define o tipo de emiss�o NOMAL/SCAN
   XNfeNomeCertificado: String;
   XNfeLicenca: String;
   XNfeCodigoSeguranca: String;
   XNfeChave: WideString;
   XNfechaveArray: Array of String; // array com as chaves das nfe
   XTotalProdLista: Integer;
   XNfeDhRecbto, XNfetMed, XNfeRecibo: WideString;
   XNfeXmlAss: WideString;
   XNfeRetornoWS: WideString;
   XNfeResultado: Integer;//Armazena resultado numeros de algumas fun��es da util.dll
   XNfeCodLote: String;//Codigo do lote de arquivos
   XNfeProtocolo: String;//Numero Protocolo
   XNfeStatusServer: String;//atatus de opera��o do servidor SCAN/SEFAZ
   XNfeDir: String;//Diret�rio para armazenar os Xml finais
   XNfeDataConti: String;
   XNfeTextoConti: String;
   XEnviaPdf: String;
   xContemImpostosRetidos: Boolean;


   XUfLocal: String;
   XUfCodigo: String;

   //*********************
   //DADOS NFE
   //*********************
	Util: NFe_Util_2G_Interface;//Classe geral da dll flexdoc
   XDadosNfe : TNFe;   //classe com dados da nfe
   XProcNfe,XNfeDistrib, XXmlNfe, XXmlNfeCancel: WideString;//xml gerada para a Nfe
   XXmlfinal: String;//variavel para controle do xml durante o processo de assinatura valida��o e demais
   XTmpXmlDoc: TXMLDocument; //componente TXMLDocument de uso geral e temporario
   XSafeXmlDist:Boolean;
   XrefNfe, XNumNFeComp: String;//Paulo 01/12/2010: Para armazenar a chave da nfe que ser� feito o complemento
   XTipoProd: Boolean; //Se tru produto � realmente produto e n�o servi�o
   Xemailcli,XXmlDistLocal, XXmlCCeDistricuicao, XPdfLocal: String;
   XEnviaEmal:Boolean;
   XDistribuicaoPeriodo:Boolean;
   XTipoDocumento:Integer;
   //xClienteConsumidorFinal: Integer;
   XUfDestinoOperacao, XUfOrigemOperacao: String;
   XPresencaComprador: Integer;
   XDiferencaTempoUTC: String;
   XURLNFCe: WideString;
   //Edmar - 22/10/2015 - Variavel de controle para impedir a execu��o do Inicializa em FormActivate
   //isso acontece quando n�o est� setado uma impressora padr�o
   XNFCeImp: Boolean;
   //
   XRetransmiteNfce: Boolean;
{
  XNfeConsulta: Boolean; // False = Emitida; True = Consultada - determina se a nota esta sendo consultada ou emitida
  XNfeCodPedido: Integer; // Codigo do pedido a ser trabalhado na NFe
  XNfeTipoPedido: String; // Determina o tipo do pedido a ser trabalhado PEDV = Pedido de venda, PEDC = Pedido de compra, OS = Ordem de Servi�o
  XNfeTipoEmissao: Integer; //1 = NORMAL; 3 = SCAN
  XNfeStatus: Integer;//define status da nota fiscal eletronica (1 NFe enviada para a Receita; 3 NFe Cancelada; 5 and tipoEmissao in [2,4,5] Nfe emitida em conting�ncia
  XNfeTelaAtiva: Boolean; // Define se a tela da Nfe esta ativa
  XNfeTipoAmbiente, XNfeCancelAmbiente: Integer; // Determina o tipo de Ambiente de trabalho de opera��o da Nfe (1-producao, 2-homologacao)
  XNfeNomeCertificado: String; // Define o nome do certificado usado para emitir a nfe
  XNfeLicenca: String; // Define a chave de licen�a da dll flexdoc
  XNfeSerie: String; // Define a Serie de numera��o da Nfe
  XNfeTentativas: Integer; // Vari�vel que efetua a contagem de tentativas
  XNfeInutilizacao: Boolean; // Determina se a Nfe � inutiliza��o
  XNfeCancelamento: Boolean; // Determina se a Nfe � de cancelamento
  XNfeAuxEnvio: Boolean;
  XNfeNrRecibo, XNfeXMLAssinado: String;
  XNfeMsg: WideString;

  //variaveis para controle de log
  XLogAtivo : Boolean;
  XLogNmArquivo, XLogInfo : String;

  //Dados Setados Para o Xml da Nfe
  XSetNfeCfop: String;
  XSetNfeFora: Boolean;
  XSetNfeTamArray: Integer;

  XSetNfeVlrProduto: Real;

  XNfeResult: Boolean; // variavel de controle de sucesso ou fracasso da Nfe

   nfe : TNFe;   //classe com dados da nfe}
implementation

uses UMenu, UDMMacs, UPadrao, Alxor32, UDMSaida, UDMEntrada, 
  UPadraoFiscal, AlxMessage, UValidacaoNFe, UDMEstoque, UDMGEOGRAFIA, UDMPessoa,
  UDMFinanc, UDmServ, DB, Math, UDMConta, UDMCaixa, UPedVenda, PngImage, HTTPApp, WinInet;

{$R *.dfm}

//Fun��o utilizada para salvar o numero da nota fiscal nas parcelas de contas a receber
Function TFMzrNfe.SalvaNumeroFiscalContasReceber(xOS_PV, xNumeroFiscal: String; xCodigo: Integer): Boolean;
Var
xCodigoContaReceber: Integer;
Begin
	Try
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' Select ctareceber.cod_ctareceber as conta from ctareceber where (ctareceber.cod_gerador=:CodigoGerador) ');
		If xOS_PV = 'ORDEM' Then
       	MDO.Query.SQL.Add(' and (ctareceber.tipogerador=''ORD'')');
		If xOS_PV = 'PEDV' Then
       	MDO.Query.SQL.Add(' and (ctareceber.tipogerador=''PEDVENDA'')');
       MDO.Query.ParamByName('CodigoGerador').AsInteger := xCodigo;
		Mdo.Query.Open;

		If not MDO.Query.IsEmpty
       Then Begin
			xCodigoContaReceber := MDO.Query.FieldByName('conta').AsInteger;

           MDO.Query.Close;
       	MDO.Query.SQL.Clear;
       	MDO.Query.SQL.Add(' update parcelacr set parcelacr.numfisc=:Numero where parcelacr.cod_ctareceber = :CodigoCtaReceber ');
           MDO.Query.ParamByName('CodigoCtaReceber').AsInteger := xCodigoContaReceber;
           MDO.Query.ParamByName('Numero').AsString := xNumeroFiscal;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
           Result := true;
		End
		Else Begin
           Result := false;
		End;



	Except

	End;
End;

// Fun��o utilizada para consultar se uma numera��o de nota esta gravada em banco como NFe v�lida
Function TFMzrNfe.NFeConsultaNFeValidoBD(NumNota:String): Integer;
Begin
	Result:=0;
   Try
      	If XSetInTipoPedido='PEDV'
      	Then Begin
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' SELECT DOCFISSAIDA.NUMDOCFIS FROM VWPEDV ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN DOCFISSAIDA ON VWPEDV.COD_PEDVENDA = DOCFISSAIDA.COD_PEDIDO ');
           DMMACS.TALX.SQL.Add(' WHERE (DOCFISSAIDA.NUMDOCFIS=:NUMERO) AND (DOCFISSAIDA.TIPODOCFIS = ''3'') ');
           DMMACS.TALX.SQL.Add(' AND ((DOCFISSAIDA.NFESTATUS = ''1'') OR (DOCFISSAIDA.NFESTATUS = ''3'') OR (DOCFISSAIDA.NFESTATUS = ''4'')) ');
           if not XEmiteNFCe then
           	DMMACS.TALX.SQL.Add(' AND (DOCFISSAIDA.MODELONF = ''55'') ')
           else
           	DMMACS.TALX.SQL.Add(' AND (DOCFISSAIDA.MODELONF = ''65'') ');
			DMMACS.TALX.ParamByName('Numero').AsString:=NumNota;
           DMMACS.TALX.Open;
           If not DMMACS.TALX.IsEmpty Then
               Result:=DMMACS.TALX.RecordCount;
      	End;
      	If XSetInTipoPedido='ORDEM'
      	Then Begin
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' SELECT DOCFISORD.NUMDOCFIS FROM VWORDEM ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN DOCFISORD ON VWORDEM.COD_ORDEM = DOCFISORD.COD_ORDEM ');
           DMMACS.TALX.SQL.Add(' WHERE (DOCFISORD.NUMDOCFIS = :NUMERO) AND (DOCFISORD.TIPODOCFIS = ''3'') ');
           DMMACS.TALX.SQL.Add(' AND ((DOCFISORD.NFESTATUS = ''1'') OR (DOCFISORD.NFESTATUS = ''3'')  OR (DOCFISORD.NFESTATUS = ''4'')) ');
           if not XEmiteNFCe then
           	DMMACS.TALX.SQL.Add(' AND (DOCFISORD.MODELONF = ''55'') ')
           else
           	DMMACS.TALX.SQL.Add(' AND (DOCFISORD.MODELONF = ''65'') ');
			DMMACS.TALX.ParamByName('NUMERO').AsString := NumNota;
           DMMACS.TALX.Open;
           If not DMMACS.TALX.IsEmpty Then
               Result:=DMMACS.TALX.RecordCount;
      	End;
       If XSetInTipoPedido='PEDC'
      	Then Begin
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select docfis.numdocfis ');
           DMMACS.TALX.SQL.Add(' From vwpedc ');
           DMMACS.TALX.SQL.Add(' Left join docfis on vwpedc.COD_PEDCOMP = docfis.cod_pedido');
           DMMACS.TALX.SQL.Add(' where (docfis.numdocfis=:Numero) and (docfis.tipodocfis=''3'') and ((docfis.nfestatus=''1'') or (docfis.nfestatus=''3'')  or (docfis.nfestatus=''4'')) ');
			DMMACS.TALX.ParamByName('Numero').AsString:=NumNota;           
           DMMACS.TALX.Open;
           If not DMMACS.TALX.IsEmpty Then
               Result:=DMMACS.TALX.RecordCount;
      	End;
   Except
   	Result:=-1;
   End;
End;
// Fun��o para Atualizar memo de erros
Function TFMzrNfe.NfeAddFalhas(XMsgFalhas: String): Boolean;
Begin
   LVisualizaFalhas.Visible:=True;
   LVisualizaFalhas.BringToFront;
   MErro.Lines.Add(XMsgFalhas);
End;

// Fun��o para verificar o numero de retorno da fun��o e retornar o texto equivalente
Function TFMzrNfe.GetTextoNumeroRetorno(XNumero: String): String;
Var
	Xcodigo: Integer;
Begin
	Try
       Xcodigo:=StrToInt(XNumero);
   Except
       Result:='';
       Exit;
   End;

	case Xcodigo of
		//C�DIGO E RESULTADO DO PROCESSAMENTO DA SOLICITA��O
		100 : Result:='Autorizado o uso da NF-e';
       101 : Result:='Cancelamento de NF-e homologado';
       102 : Result:='Inutiliza��o de n�mero homologado';
       103 : Result:='Lote recebido com sucesso';
       104 : Result:='Lote processado';
       105 : Result:='Lote em processamento';
       106 : Result:='Lote n�o localizado';
       107 : Result:='Servi�o em Opera��o';
       108 : Result:='Servi�o Paralisado Momentaneamente (curto prazo))';
       109 : Result:='Servi�o Paralisado sem Previs�o';
       110 : Result:='Uso Denegado';
       111 : Result:='Consulta cadastro com uma ocorr�ncia';
       112 : Result:='Consulta cadastro com mais de uma ocorr�ncia';
		//C�DIGO E MOTIVOS DE N�O ATENDIMENTO DA SOLICITA��O');
       201 : Result:='Rejei��o: O numero m�ximo de numera��o de NF-e a inutilizar ultrapassou o limite';
       202 : Result:='Rejei��o: Falha no reconhecimento da autoria ou integridade do arquivo digital';
       203 : Result:='Rejei��o: Emissor n�o habilitado para emiss�o da NF-e';
       204 : Result:='Rejei��o: Duplicidade de NF-e';
       205 : Result:='Rejei��o: NF-e est� denegada na base de dados da SEFAZ';
       206 : Result:='Rejei��o: NF-e j� est� inutilizada na Base de dados da SEFAZ';
       207 : Result:='Rejei��o: CNPJ do emitente inv�lido';
       208 : Result:='Rejei��o: CNPJ do destinat�rio inv�lido';
       209 : Result:='Rejei��o: IE do emitente inv�lida';
       210 : Result:='Rejei��o: IE do destinat�rio inv�lida';
       211 : Result:='Rejei��o: IE do substituto inv�lida';
       212 : Result:='Rejei��o: Data de emiss�o NF-e posterior a data de recebimento';
       213 : Result:='Rejei��o: CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital';
       214 : Result:='Rejei��o: Tamanho da mensagem excedeu o limite estabelecido';
       215 : Result:='Rejei��o: Falha no schema XML';
       216 : Result:='Rejei��o: Chave de Acesso difere da cadastrada';
       217 : Result:='Rejei��o: NF-e n�o consta na base de dados da SEFAZ';
       218 : Result:='Rejei��o: NF-e j� esta cancelada na base de dados da SEFAZ';
       219 : Result:='Rejei��o: Circula��o da NF-e verificada';
       220 : Result:='Rejei��o: NF-e autorizada h� mais de 60 dias';
       221 : Result:='Rejei��o: Confirmado o recebimento da NF-e pelo destinat�rio';
       222 : Result:='Rejei��o: Protocolo de Autoriza��o de Uso difere do cadastrado';
       223 : Result:='Rejei��o: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta';
       224 : Result:='Rejei��o: A faixa inicial � maior que a faixa final';
       225 : Result:='Rejei��o: Falha no Schema XML da NFe';
       226 : Result:='Rejei��o: C�digo da UF do Emitente diverge da UF autorizadora';
       227 : Result:='Rejei��o: Erro na Chave de Acesso - Campo ID';
       228 : Result:='Rejei��o: Data de Emiss�o muito atrasada';
       229 : Result:='Rejei��o: IE do emitente n�o informada';
       230 : Result:='Rejei��o: IE do emitente n�o cadastrada';
       231 : Result:='Rejei��o: IE do emitente n�o vinculada ao CNPJ';
       232 : Result:='Rejei��o: IE do destinat�rio n�o informada';
       233 : Result:='Rejei��o: IE do destinat�rio n�o cadastrada';
       234 : Result:='Rejei��o: IE do destinat�rio n�o vinculada ao CNPJ';
       235 : Result:='Rejei��o: Inscri��o SUFRAMA inv�lida';
       236 : Result:='Rejei��o: Chave de Acesso com d�gito verificador inv�lido';
       237 : Result:='Rejei��o: CPF do destinat�rio inv�lido';
       238 : Result:='Rejei��o: Cabe�alho - Vers�o do arquivo XML superior a Vers�o vigente';
       239 : Result:='Rejei��o: Cabe�alho - Vers�o do arquivo XML n�o suportada';
       240 : Result:='Rejei��o: Cancelamento/Inutiliza��o - Irregularidade Fiscal do Emitente';
       241 : Result:='Rejei��o: Um n�mero da faixa j� foi utilizado';
       242 : Result:='Rejei��o: Cabe�alho - Falha no Schema XML';
       243 : Result:='Rejei��o: XML Mal Formado';
       244 : Result:='Rejei��o: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente';
       245 : Result:='Rejei��o: CNPJ Emitente n�o cadastrado';
       246 : Result:='Rejei��o: CNPJ Destinat�rio n�o cadastrado';
       247 : Result:='Rejei��o: Sigla da UF do Emitente diverge da UF autorizadora';
       248 : Result:='Rejei��o: UF do Recibo diverge da UF autorizadora';
       249 : Result:='Rejei��o: UF da Chave de Acesso diverge da UF autorizadora';
       250 : Result:='Rejei��o: UF diverge da UF autorizadora';
       251 : Result:='Rejei��o: UF/Munic�pio destinat�rio n�o pertence a SUFRAMA';
       252 : Result:='Rejei��o: Ambiente informado diverge do Ambiente de recebimento';
       253 : Result:='Rejei��o: Digito Verificador da chave de acesso composta inv�lida';
       254 : Result:='Rejei��o: NF-e referenciada n�o informada para NF-e complementar';
       255 : Result:='Rejei��o: Informada mais de uma NF-e referenciada para NF-e complementar';
       256 : Result:='Rejei��o: Uma NF-e da faixa j� est� inutilizada na Base de dados da SEFAZ';
       257 : Result:='Rejei��o: Solicitante n�o habilitado para emiss�o da NF-e';
       258 : Result:='Rejei��o: CNPJ da consulta inv�lido';
       259 : Result:='Rejei��o: CNPJ da consulta n�o cadastrado como contribuinte na UF';
       260 : Result:='Rejei��o: IE da consulta inv�lida';
       261 : Result:='Rejei��o: IE da consulta n�o cadastrada como contribuinte na UF';
       262 : Result:='Rejei��o: UF n�o fornece consulta por CPF';
       263 : Result:='Rejei��o: CPF da consulta inv�lido';
       264 : Result:='Rejei��o: CPF da consulta n�o cadastrado como contribuinte na UF';
       265 : Result:='Rejei��o: Sigla da UF da consulta difere da UF do Web Service';
       266 : Result:='Rejei��o: S�rie utilizada n�o permitida no Web Service';
       267 : Result:='Rejei��o: NF Complementar referencia uma NF-e inexistente';
       268 : Result:='Rejei��o: NF Complementar referencia uma outra NF-e Complementar';
       269 : Result:='Rejei��o: CNPJ Emitente da NF Complementar difere do CNPJ da NF Referenciada';
       270 : Result:='Rejei��o: C�digo Munic�pio do Fato Gerador: d�gito inv�lido';
       271 : Result:='Rejei��o: C�digo Munic�pio do Fato Gerador: difere da UF do emitente';
       272 : Result:='Rejei��o: C�digo Munic�pio do Emitente: d�gito inv�lido';
       273 : Result:='Rejei��o: C�digo Munic�pio do Emitente: difere da UF do emitente';
       274 : Result:='Rejei��o: C�digo Munic�pio do Destinat�rio: d�gito inv�lido';
       275 : Result:='Rejei��o: C�digo Munic�pio do Destinat�rio: difere da UF do Destinat�rio';
       276 : Result:='Rejei��o: C�digo Munic�pio do Local de Retirada: d�gito inv�lido';
       277 : Result:='Rejei��o: C�digo Munic�pio do Local de Retirada: difere da UF do Local de Retirada';
       278 : Result:='Rejei��o: C�digo Munic�pio do Local de Entrega: d�gito inv�lido';
       279 : Result:='Rejei��o: C�digo Munic�pio do Local de Entrega: difere da UF do Local de Entrega';
       280 : Result:='Rejei��o: Certificado Transmissor inv�lido';
       281 : Result:='Rejei��o: Certificado Transmissor Data Validade';
       282 : Result:='Rejei��o: Certificado Transmissor sem CNPJ';
       283 : Result:='Rejei��o: Certificado Transmissor - erro Cadeia de Certifica��o';
       284 : Result:='Rejei��o: Certificado Transmissor revogado';
       285 : Result:='Rejei��o: Certificado Transmissor difere ICP-Brasil';
       286 : Result:='Rejei��o: Certificado Transmissor erro no acesso a LCR';
       287 : Result:='Rejei��o: C�digo Munic�pio do FG - ISSQN: d�gito inv�lido';
       288 : Result:='Rejei��o: C�digo Munic�pio do FG - Transporte: d�gito inv�lido';
       289 : Result:='Rejei��o: C�digo da UF informada diverge da UF solicitada';
       290 : Result:='Rejei��o: Certificado Assinatura inv�lido';
       291 : Result:='Rejei��o: Certificado Assinatura Data Validade';
       292 : Result:='Rejei��o: Certificado Assinatura sem CNPJ';
       293 : Result:='Rejei��o: Certificado Assinatura - erro Cadeia de Certifica��o';
       294 : Result:='Rejei��o: Certificado Assinatura revogado';
       295 : Result:='Rejei��o: Certificado Assinatura difere ICP-Brasil';
       296 : Result:='Rejei��o: Certificado Assinatura erro no acesso a LCR';
       297 : Result:='Rejei��o: Assinatura difere do calculado';
       298 : Result:='Rejei��o: Assinatura difere do padr�o do Projeto';
       299 : Result:='Rejei��o: XML da �rea de cabe�alho com codifica��o diferente de UTF-8';
       401 : Result:='Rejei��o: CPF do remetente inv�lido';
       402 : Result:='Rejei��o: XML da �rea de dados com codifica��o diferente de UTF-8';
       403 : Result:='Rejei��o: O grupo de informa��es da NF-e avulsa � de uso exclusivo do Fisco';
       404 : Result:='Rejei��o: Uso de prefixo de namespace n�o permitido';
       405 : Result:='Rejei��o: C�digo do pa�s do emitente: d�gito inv�lido';
       406 : Result:='Rejei��o: C�digo do pa�s do destinat�rio: d�gito inv�lido';
       407 : Result:='Rejei��o: O CPF s� pode ser informado no campo emitente para a NF-e avulsa';
       999 : Result:='Rejei��o: Erro n�o catalogado (informar a mensagem de erro capturado no tratamento da exce��o)';
		//C�DIGO E MOTIVOS DE DENEGA��O DE USO
		301 : Result:=' Uso Denegado : Irregularidade fiscal do emitente';
		302 : Result:=' Uso Denegado : Irregularidade fiscal do destinat�rio';
   End;
End;
// Fun��o generica para ler qualquer tipo de retorno (de acordo com parametro) Retornando XNfeNumRetorno e XMsgGeral
Function TFMzrNfe.GetGenericRetorno(XParamentro: String; XTextoAnalisar: WideString): Boolean;
Var
	XFileRetorno: TextFile;
   XTmpXml: TXMLDocument;
   Resultado: Integer;
Begin
	Result:=True;
   Try
		If (XParamentro<> 'CONSULTANFSCAN') and (XParamentro<> 'ENVIANFESCAN') and (XParamentro<> 'CANCELAR')
       Then Begin
       	XTextoAnalisar:=TirarAcentos(false, XTextoAnalisar);
       	//Abre arquivo em documento xml
       	XTmpXml := TXMLDocument.Create(self);
       	XTmpXml.XML.Text:=XTextoAnalisar{ LoadFromFile('C:\Mzr\Arquivos\NFe\Retorno\TmpRetorno.xml');};
       	XTmpXml.Active:=True;
       End;

		If (XParamentro= 'CONSULTANFSCAN') or (XParamentro= 'RETORNADADOS') or (XParamentro= 'ENVIANFESCAN')  or (XParamentro= 'CANCELAR')
       Then Begin
       	If XParamentro= 'RETORNADADOS'
           Then Begin
               Try
                   //Tratamento de retorno para consulta Status de NFe
                   If XTmpXml.ChildNodes['retConsSitNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['cStat'] <> nil Then
                       XMsgNumRetorno:=XTmpXml.ChildNodes['retConsSitNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['cStat'].Text;
                   If XTmpXml.ChildNodes['retConsSitNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['nProt'] <> nil Then
                       XMsgGeral:=XTmpXml.ChildNodes['retConsSitNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['nProt'].Text;
                   If XTmpXml.ChildNodes['retConsSitNFe'].ChildNodes['infProt'].ChildNodes['chNFe'] <> nil Then
                   	XDadosRetornoChave:=XTmpXml.ChildNodes['retConsSitNFe'].ChildNodes['infProt'].ChildNodes['chNFe'].Text;
                   //O erro abaixo indica que a NFe enviada teve seu uso denegado, assim � feito tratamento para recuperar o motivo
                   If XMsgNumRetorno='302'
                   Then Begin
                       If XTmpXml.ChildNodes['retConsSitNFe'].ChildNodes['infProt'].ChildNodes['xMotivo'] <> nil Then
                           NfeAddFalhas('      '+XTmpXml.ChildNodes['retConsSitNFe'].ChildNodes['infProt'].ChildNodes['xMotivo'].Text);
                   End
               Except
                     NfeAddFalhas('- Falha ao ler retorno de Status da Nfe '+IntToStr(XSetInNumFiscal));
                     NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
                     Result:=False;
               End;
           End
           Else Begin
               XMsgNumRetorno:=Trim(copy(XTextoAnalisar, 0, 4));
               Try
                   Resultado:=StrToInt(XMsgNumRetorno);
               Except
                   Resultado:=100000;
               End;
               If (Resultado >=5001) and (Resultado <=5017) Then
                   MessageDlg('5001 - 5017 - Falha na tentativa de consumir o WS (problema de conex�o/rede)'+#13+XMsgRetWS, mtWarning, [mbOK], 0);
               If (Resultado >=5101) and (Resultado <=5105) Then
                   MessageDlg('5101 - 5105 - falha no tratamento do XML de resposta do WS (problema na resposta do WS)'+#13+XMsgRetWS, mtWarning, [mbOK], 0);
               If (Resultado >=5201) and (Resultado <=5206) Then
                   MessageDlg('5201 - 5206 - falha na recupera��o da URL do WS desejado (problema no arquivo de configura��o da URL)'+#13+XMsgRetWS, mtWarning, [mbOK], 0);
               If (Resultado >=6101) and (Resultado <=6103) Then
                   MessageDlg('6101 - 6103 - falha no tratamento dos p�rametros da chamada da DLL'+#13+XMsgRetWS, mtWarning, [mbOK], 0);
               XMsgGeral:=XTextoAnalisar;
           End;
       End;
		If XParamentro= 'INUTILIZA'
       Then Begin
       	Try
       		//Tratamento de retorno para consulta Status de NFe
           	If XTmpXml.ChildNodes['retInutNFe'].ChildNodes['infInut'].ChildNodes['cStat'] <> nil Then
               		XMsgNumRetorno:=XTmpXml.ChildNodes['retInutNFe'].ChildNodes['infInut'].ChildNodes['cStat'].Text;
           	If XTmpXml.ChildNodes['retInutNFe'].ChildNodes['infInut'].ChildNodes['cMotivo'] <> nil Then
               		XMsgGeral:=XTmpXml.ChildNodes['retInutNFe'].ChildNodes['infInut'].ChildNodes['xMotivo'].Text;
           Except
                 NfeAddFalhas('- Falha ao ler retorno de Status da Nfe '+IntToStr(XSetInNumFiscal));
                 NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
                 Result:=False;
           End;
       End;
       XTmpXml.Free;
   Except
       XTmpXml.Free;
       Result:=False;
   End;
End;
// Fun��o que traz a vers�o da dll flexdoc
Function TFMzrNfe.GetVersionDll: String;
var
   Util:NFe_Util_2G_Interface;
begin
   Result:='';
   Util := CoUtil.Create;
   Result:=Util.versao;
   If XNFeVersao='2.00' Then
   	Result:=copy(Util.versao, 10, 8)
   Else
   	Result:=copy(Util.versao, 0, 35);
   Result:=Result+' MZR Sistema homologado para emiss�o de Nota Fiscal Eletr�nica';
end;

// Fun��o que retorna o nome do cerfificado digital instalado
function TFMzrNfe.NfeNomeCertificado(const XOpen:Boolean):String;
var
	i:integer;
	mensagem,nome:WideString;
    ///  2. PegaNomeCertificado: Seleciona ou confirma a exit�ncia de um certificado para o nome informado.
    ///
    ///     Entrada: Nome do titular
    ///                se n�o informado busca certificado do reposit�rio;
    ///                se informado confirma a exist�ncia.
    ///
    ///    Retornos:
    ///
    ///        PegaNomeCertificado: c�digo do resultado
    ///
    ///         5401 Foi selecionado um Certificado com o nome informado
    ///         5402 Foi Selecinado o certificado de [{0:0}] na caixa de di�logo de escolha do certificado digital
    ///         5403 Erro: Falha ao acessar certificado digital [{0:0}]
    ///         5404 Erro: Nenhum certificado digital selecionado 
    ///         5405 Erro: Nenhum certificado v�lido foi encontrado com o nome [{0:0}] informado
    ///
    ///        Nome               : Nome do titular do Certificado
    ///
    ///        msgResultado       : Literal da mensagem do resultado
begin
   if (XNfeNomeCertificado = '') or (XOpen = True)
   then begin
       nome := '';
       Util := CoUtil.Create;
       i:= Util.PegaNomeCertificado(nome, mensagem);
       if i > 5402
       then Begin
           MessageDlg( 'Ocorreu uma falha no acesso ao reposit�rio de certificados digitais...'+#13+#13+mensagem, mtInformation, [mbOk], 0)
       End
       else begin
       	XNfeNomeCertificado := nome;
       end;
   	Result := XNfeNomeCertificado;   // volta o nome do certificado
   End;
end;

//Fun��o para gerar chave de acesso
Function TFMzrNfe.XmlChaveAcesso(const cUF, ano, mes, CNPJ, modelo, serie, numero, codigoSeguranca:WideString; out cNF, cDV, chaveNFe:Widestring):Boolean;
var
    i: Integer;
    Util:NFe_Util_2G_Interface;
    msgResultado: WideString;
begin
   Util := CoUtil.Create;
   cNF:='';
   cDV:='';

   i := Util.CriaChaveNFe2G(cUF, ano, mes, CNPJ, modelo, serie, numero, xTipoEmissao, codigoSeguranca, msgResultado, cNF, cDV, chaveNFe);

   if i <> 5601 then
   begin
       ShowMessage('Erro na cria��o da chave: '+msgResultado);
       Result := False;
       Exit;
   end;

   Result := True;
end;
//Procedure para setar as vari�veis de controle geral
Function TFMzrNfe.SetVariaveisGerais: Boolean;
var
  aTime: TTimeZoneInformation;
  hora: TTime;
  TimeZoneInfo: TTimezoneinformation;
  R: Word;
  Minutes: Integer;
  Sign: string;
  TimeZone: TTimeZoneInformation;
  Minutos: Integer;
begin   
   Result:=True;
   Try
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '/');
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '(');
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, ')');
       verificaDiretorio('C:\Mzr\Arquivos\NFe\NfeEnviada\'+XSetInPeriodoFiscal);

       If XSetInTipoPedido='PEDC' Then
			XEmiteNFCe := False;

       if XSetInTipoAcao = 'RETRANSMITENFCE' then
       begin
           // busca o xml da nfe pra envio
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;

           if XSetInTipoPedido = 'PEDV' then
           begin
               DMMACS.TALX.SQL.Add(' SELECT DOCFISSAIDA.NFEXML, NFECHAVE FROM DOCFISSAIDA ');
               DMMACS.TALX.SQL.Add(' WHERE DOCFISSAIDA.COD_PEDIDO = :CODIGO ');
           end;

           if XSetInTipoPedido = 'ORDEM' then
           begin
               DMMACS.TALX.SQL.Add(' SELECT DOCFISORD.NFEXML, NFECHAVE FROM DOCFISORD ');
               DMMACS.TALX.SQL.Add(' WHERE DOCFISORD.COD_ORDEM = :CODIGO ');
           end;
           
           DMMACS.TALX.ParamByName('CODIGO').AsInteger := XSetCodigoPedido;
           DMMACS.TALX.Open;

           XXmlNfe := DMMACS.TALX.FieldByName('NFEXML').AsString;
           XNfeChave := DMMACS.TALX.FieldByName('NFECHAVE').AsString;
       end;           

		If (XSetInTipoAcao<>'STATUSSERV') and (XSetInTipoAcao<>'INUTILIZAR')
       Then Begin
       	//Se n�o for consulta de Status do servidor
           //filtra dados do fiscal
           If (XSetInTipoAcao<>'RETURNLISTA') AND (XSetInTipoAcao<>'CCE')
           Then Begin
               DMESTOQUE.Alx1.Close;
               DMESTOQUE.Alx1.SQL.Clear;
               If XSetInTipoPedido='PEDV' Then
                   DMESTOQUE.Alx1.SQL.Add(' select docfissaida.dadosad01 AS ADICIONAL, docfissaida.reservfisc01 AS FISCO FROM docfissaida where docfissaida.cod_pedido=:CODIGO ');
               If XSetInTipoPedido='PEDC' Then
                   DMESTOQUE.Alx1.SQL.Add('  select docfis.obs AS ADICIONAL FROM docfis where docfis.cod_pedido=:CODIGO ');
               If XSetInTipoPedido='ORDEM' Then
                   DMESTOQUE.Alx1.SQL.Add(' select docfisord.dadosad01 AS ADICIONAL, docfisord.reservfisc01 AS FISCO FROM docfisord where docfisord.cod_ordem=:CODIGO ');
               DMESTOQUE.Alx1.ParamByName('CODIGO').AsInteger:=XSetCodigoPedido;
               DMESTOQUE.Alx1.Open;
               If DMESTOQUE.Alx1.IsEmpty
               Then Begin
                   MessageDlg('O Documento fiscal n�o foi encontrado no sistema.', mtWarning, [mbOK], 0);
                   Result:=False;
                   Exit;
               End;
           End;
       End;
       If XSetInTipoAcao='EMITIR' Then
       	XSetRefUri := 'infNFe';

       if XEmiteNFCe then
       begin
           XSiglaWS := 'pr';
           if xEnvioContingencia then
               xTipoEmissao := '9'
           else
               xTipoEmissao := '1';
       end
       else begin
           if xEnvioContingencia then
           begin
               XSiglaWS := 'SVC-RS';
               xTipoEmissao := '7';
           end
           else begin
       	    XSiglaWS := 'PR';
               xTipoEmissao := '1';
           end
       end;

       //Define a vers�o da NFe em trabalho
       XNFeVersao := DMMACS.TLoja.FieldByName('NFEVERSAO').AsString;       

       //Le a vers�o da dll
       LVersaoDll.Caption:=GetVersionDll;
       LVersaoDll.BringToFront;

       //Define o ambiente em que eh emitido a Nfe : 1 - homologa��o 2 - produ��o
       If DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger in [1..2] Then
           XNfeTipoAmbiente:=DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger
       Else
           XNfeTipoAmbiente:=2;

       if XEmiteNFCe then
       	XNfeModelo := '65'
       else
          	XNfeModelo := '55'; //Padrao Nfe
               
       XUfCodigo := '41'; //Seta estado de origem da Nfe

       // XNFETIPOEMISSAO := DMMACS.TLoja.FieldByName('MODODEEMISSAONFE').AsString; //NORMAL OU SCAN
       if xEnvioContingencia then
           XNFETIPOEMISSAO := 'CONTING�NCIA'
       else
           XNFETIPOEMISSAO := 'NORMAL';
                  
       XNfeNomeCertificado := DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString; //Define nome certificado
       XNfeLicenca := DMMACS.TLoja.FieldByName('NFELICENSA').AsString;// Define a chave de licen�a da dll flexdoc
       //Define o numero de serie da numera��o da Nfe de acorde com config da empresa
       if (DMMACS.TEmpresa.FieldByName('NFESERIE').AsString <> '')
           and (DMMACS.TEmpresa.FieldByName('NFCESERIE').AsString <> '') then
       begin
           if XEmiteNFCe then
               XNfeSerie := DMMACS.TEmpresa.FieldByName('NFCESERIE').AsString
           else
               XNfeSerie := DMMACS.TEmpresa.FieldByName('NFESERIE').AsString;
       end
       else
           XNfeSerie := '0';
       //Define o codigo do proximo lote fiscal
       if DMMACS.TEmpresa.FieldByName('NFEPROXLOTE').AsString <> '' then
           XNfeCodLote := DMMACS.TEmpresa.FieldByName('NFEPROXLOTE').AsString
       else
           XNfeCodLote := '0';

       DMMACS.TEmpresa.Edit;
       DMMACS.TEmpresa.FieldByName('NFEPROXLOTE').AsString := IntToStr(StrToInt(XNfeCodLote)+1);
       DMMACS.TEmpresa.Post;
       DMMACS.Transaction.CommitRetaining;


       XNfeCodigoSeguranca := 'MZRSISCON'; //Padrao Nfe

       //Seta uf local
       FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('cod_cidade').AsString, '');
       XUfLocal:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString;
       if XUfLocal = '' then
           XUfLocal := 'PR';

       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;       
       //busca de diferentes view's dependendo a entidade que est� sendo trabalhada no momento
       if (XSetInTipoPedido='PEDV') or (XSetInTipoPedido='ORDEM') then
       begin
           DMMACS.TALX.SQL.Add(' SELECT VWCIDADE.UF, CLIENTE.CONSUMIDOR FROM VWCLIENTE ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN VWCIDADE ON VWCLIENTE.COD_CIDADE = VWCIDADE.COD_CIDADE ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN CLIENTE ON VWCLIENTE.COD_CLIENTE = CLIENTE.COD_CLIENTE ');
           DMMACS.TALX.SQL.Add(' WHERE VWCLIENTE.COD_CLIENTE = :CODIGO ');
           DMMACS.TALX.ParamByName('CODIGO').AsInteger:=XSetCodigoDestinatario;
           DMMACS.TALX.Open;
           //verifica se o cliente � consumidor final
           {if DMMACS.TALX.FieldByName('CONSUMIDOR').AsString = 'S' then
               xClienteConsumidorFinal := 1
           else
               xClienteConsumidorFinal := 0;}
       end
       else begin
           DMMACS.TALX.SQL.Add(' Select VWCIDADE.UF FROM VWFORNEC ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN VWCIDADE ON VWFORNEC.COD_CIDADE = VWCIDADE.COD_CIDADE ');
           DMMACS.TALX.SQL.Add(' WHERE VWFORNEC.COD_FORNEC = :CODIGO ');
           DMMACS.TALX.ParamByName('CODIGO').AsInteger:=XSetCodigoDestinatario;
           DMMACS.TALX.Open;
       end;

       //XUfDestinoOperacao := DMMACS.TALX.FieldByName('UF').AsString;
       XUfDestinoOperacao := XUfDestino;
       if XUfDestinoOperacao = '' then
       	XUfDestinoOperacao := 'PR';

		if FMenu.XComplementacao then
       	XPresencaComprador := 0
       else
       	XPresencaComprador := 1;

       //busca a diferen�a do tempo UTC 
		{GetTimeZoneInformation(aTime);
		hora:=(Atime.Bias/1440);
		if Atime.Bias > 0 then
			XDiferencaTempoUTC := (FormatDateTime('-hh:mm', hora))
		else
			XDiferencaTempoUTC := (FormatDateTime('+hh:mm', hora));}

       {R := GetTimezoneInformation(TimeZoneInfo);
       if R in [TIME_ZONE_ID_UNKNOWN, TIME_ZONE_ID_STANDARD, TIME_ZONE_ID_DAYLIGHT] then
       begin
           Minutes := (TimeZoneInfo.Bias + TimeZoneInfo.DaylightBias) * -1;
           if Minutes < 0 then
               Sign := '-'
           else
               Sign := '+';

           XDiferencaTempoUTC := Sign + FormatDateTime('hh:MM', IncMinute(0, Minutes));
       end
       else
           XDiferencaTempoUTC := '-03:00';}
       
       GetTimeZoneInformation(TimeZone);
		Minutos := TimeZone.Bias;

		//Se em TIME_ZONE_ID_DAYLIGHT indica que o horario de ver�o esta ativado na m�quina
		if (GetTimezoneInformation(TimeZoneInfo) in [TIME_ZONE_ID_DAYLIGHT]) then
		begin
			//No caso do fusorario de brasilia -3:00 o TimeZone.Bias retorna 180, no caso de hor�rio de ver�o deve ser 120(-02:00) entao desconto 60
			if (Minutos > 0) then
				Minutos := Minutos - 60
			else
				Minutos := Minutos + 60;
       end;
		XDiferencaTempoUTC := FormatFloat('00', Minutos div -60) + ':00';

       if xEnvioContingencia then
       begin
           XNfeDataConti := FormatDateTime('yyyy-mm-dd', Date())+'T'+FormatDateTime('hh:mm:ss', Time())+XDiferencaTempoUTC;
           XNfeTextoConti := 'PROBLEMAS T�CNICOS NOS SERVIDORES DO SEFAZ DE ORIGEM';
       end
       else begin
           XNfeDataConti  := '';
           XNfeTextoConti := '';
       end;
       
       FiltraDadosImportacaoExportacao;
   Except
       Result:=False
   End;
End;
//Fun��o Utilizada para Validar a Nota Fiscal Eletronica
Function TFMzrNfe.ValidarNFe(out nfe:TNFe; out msg:WideString):Boolean;
var
   tam, i, f:Integer;
   ant:Integer;
begin
   Result:=True;
   Try
       Information('Valida dados inseridos para Nfe...'); 
   Except
       Result:=False;
   End;
End;

// Fun��o Utilizada para Validar o arquivo xml
Function TFMzrNfe.ValidarXML(XmlTemp: WideString; const tipoXML:Integer):Boolean;
var
   qtdeErros, i:integer;
   Fentrada:File;
   NumRead:integer;
   S: string;
   buf: char;
     ///  10. ValidaXML:  Valida Schema XML
    ///
    ///    Entradas:
    ///
    ///            XML: Mensagem XML a ser validada
    ///            tipoXML: 0 - cabe�alho (cabecMsg_v1.02)
    ///                     1 - NF-e (nfe_v1.10.xsd)
    ///                     2 - Envio de Lote de NF-e (enviNFe_v1.10.xsd)
    ///                     3 - Retorno Lote de NF-e (retEnviNFe_v1.10.xsd)
    ///                     4 - Busca Resultado de NF-e (consReciNFe_v1.10.xsd)
    ///                     5 - Retorno de Resultado de NF-e (retConsReciNFe_v1.10.xd)
    ///                     6 - Cancelamento de NF-e (cancNFe_v1.07.xsd)
    ///                     7 - Retorno de Cancelamento de NF-e (retCancNFe_v1.07.xsd)
    ///                     8 - Inutilizacao de Numera��o de NF-e (inutNFe_v1.07.xsd)
    ///                     9 - Retorno de Inutiliza��o de NF-e (retInutNFe_v1.07.xsd)
    ///                    10 - Consulta Situa��o de NF-e (consSitNFe_v1.07.xsd)
    ///                    11 - Retorno de Consulta Situa��o de NF-e (retConsSitNFe_v1.07.xsd)
    ///                    12 - Consulta Status de Servi�o (consStatServ_v1.07.xsd)
    ///                    13 - Retorno de Consulta Status de Servi�o (retConsStatServ_v1.07.xsd)
    ///                    14 - Consulta Cadastro de Contribuintes (consCad_v1.01.xsd)
    ///                    15 - Retorno da Consulta Cadastro de Contribuintes (retConsCad_v1.01.xsd)
    ///
    ///    Retornos:
    ///
    ///           ValidaXML: c�digo do resultado Valida��o
    ///                      0 - OK - mensagem XML v�lida
    ///                      1 - Erro: tipoXML %tipoXML%inv�lido (fora do intervalor 0-15)
    ///                      2 - Erro: arquivo de Schema XML %nome do arquivo% n�o localizado
    ///                      3 - Erro: XML mal formado
    ///                      4 - Erro: XML n�o atende Schema XML
    ///                      5 - Erro: n�o previsto
    ///       msgResultado: literal do resultado da chamada do ValidaXML
    ///          qtdeErros: qtde de erros de valida��o
    ///            erroXML: Erros de XML encontrados
    ///
begin
   Result := True;
   Try
       Information('Validando arquivo xml...');
       //Iniciar processo de valida��o de xml
       //Abrir Arquivo xml para valida��o
       // verifica se a resposta do lote existe   41100611019145000150550010000000042577014524-enviaNFe
       if FileExists('C:\Mzr\Arquivos\NFe\TMP\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-enviaNFe.xml')
       then begin
           AssignFile(Fentrada, 'C:\Mzr\Arquivos\NFe\TMP\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-enviaNFe.xml');
           Reset(Fentrada,1);
           S:='';
           for i:= 1 to FileSize(Fentrada) do
           begin
               Blockread(Fentrada,buf,1,NumRead);
               S:=S+buf;
           end;
           CloseFile(Fentrada);
           XmlTemp := S;
           If  XmlTemp <> ''
           then begin
               Util := CoUtil.Create;
               i := Util.ValidaXML(XmlTemp, tipoXML,  XMsgGeral, qtdeErros, XMsgRetWS);
               if i <> 0
               then begin
               	If (Pos('Signature', XMsgRetWS)<=0)
                  	Then Begin
                  	 	//Caso n�o tenha encontrado o erro por falta de assinatura
                      	Result:=False;
                      	NfeAddFalhas('- Falha ao Validar XML: '+XMsgGeral);
                      	If qtdeErros>1
                      	Then Begin
                       	MessageDlg( 'Falha na valida��o XML...'+#13+XMsgGeral+#13+XMsgRetWS, mtError, [mbOk], 0);
                         	Result:=False;
                      	End;
                 	End
                   Else Begin
                   	//Caso tenha encontrado o erro por falta de assinatura, mas tenha encontrado outro erro junto a falta de assinatura
                   	If qtdeErros>1
                      	Then Begin
                       	MessageDlg( 'Falha na valida��o XML...'+#13+XMsgGeral+#13+XMsgRetWS, mtError, [mbOk], 0);
                         	Result:=False;
                      	End;
                   End
               End;
               //Util := nil;
            end;
       End;

       {


       // Cria a vari�vel baseada no TXMLDocument
       XTmpXmlDoc := TXMLDocument.Create(self);


       // verifica se a resposta do lote existe
       if not FileExists(XNfeDir+'TMP\'+XNfeChave+'-enviNFe.xml')
       then begin
           XMsgGeral := 'Mensagem de retorno de lote n�o encontrado!';
           Result := False;
           Exit;
       end;

       // abre o arquivo na variavel
       XTmpXmlDoc.LoadFromFile(XNfeDir+'TMP\'+XNfeChave+'-enviNFe.xml');
       // valida o xml


       if (XTmpXmlDoc.XML.Text <> '') or  (tipoXML >= 0)
       then begin
           qtdeErros:=0;
           Util := CoUtil.Create;
           EstadoMouse(True);
           i:= Util.ValidaXML(XTmpXmlDoc.XML.Text,tipoXML, msg, qtdeErros, RetWS);
           EstadoMouse(False);
           if i <> 0
           then begin
               MessageDlg( 'Falha na valida��o XML...'+ #13+ #13+'Qtde de Erros: '+inttostr( qtdeErros) + #13+RetWS, mtError, [mbOk], 0);
               Result := False;
               Exit;
           end
           else begin
               Result := True;
               Util := nil;
           end;
       end
       else Begin
           Result := False;
       End;
       }
   Except
       Result:=False;
   End;
end;

//Procedure utilizada para informar a conclus�o do processo
Procedure TFMzrNfe.ConcluiProcesso(Texto: String);
Begin
 	EstadoMouse(False);
   XIndicaProcessoConcluido:=True;
   PAguarde.Visible:=False;
   FMzrNfe.Repaint;
   Information(Texto);
End;
//Fun��o que de acordo com os parametros passados retorna todas as Nfe Armazenadas no Sefaz
Function TFMzrNfe.ReturnListaNfe(XMes, XMesFim: Widestring; XAno: Widestring; XNumInicial: Integer; XNumFinal: Integer): Boolean;
Begin
   Result := True;
   Try
		XSetInTipoAcao:='RETURNLISTA';
		XSetLstMes:=XMes;
       XSetLstFim:=XMesFim;
       XSetLstAno:=XAno;
       XSetLstNumInicial:=XNumInicial;
       XSetLstNumFinal:=XNumFinal;
   Except
   	Result:=False;
   End;
End;

//Procedure utilizada para setar inicializa��es feitas atravez da tela do fiscal
Function TFMzrNfe.SetInFiscal(NomePeriodo: String; CodigoPedido: Integer; CodigoDestinatario: Integer; tipopedido: String; tipoacao: String; tipoemissao: Integer; Cfop: String; NatOperacao: String; FormPagamento: String; NumFiscal: Integer; DtEmissao: TDate; CodigoIbge: String; Municipio: String; Uf: String; BaseIcms, VlrIcm, VlrIpi, BaseIcmsSt, VlrIcmsSt, VlrProduto, VlrFrete, VlrSeguro, Desconto, VlrOutros, VlrNotaFiscal, VlrNotaTotalTributacao: Real): Boolean;
Begin
   Result := True;
   Try
       XSetInPeriodoFiscal:=NomePeriodo;
       XSetCodigoPedido:=CodigoPedido;
       XSetInTipoAcao:=tipoacao;
       XSetInTipoPedido:=tipopedido;
       XSetInTipoEmissao:=tipoemissao;
       XSetInCfop:=Cfop;
       XSetInNatOperacao:=NatOperacao;
       XSetInFormPagamento:=FormPagamento;
       XSetInNumFiscal:=NumFiscal;
       XSetMunicipioIbge:=CodigoIbge;
       XSetMunicipioNome:=Municipio;
       XSetUfDestino:=Uf;
       XSetCodigoDestinatario:=CodigoDestinatario;
       XSetBaseIcms:=BaseIcms;
       XSetVlrIcms:=VlrIcm;
       XSetVlrIpi:=VlrIpi;
       XSetBaseIcmsSt:=BaseIcmsSt;
       XSetVlrIcmsSt:=VlrIcmsSt;
       XSetVlrProduto:=VlrProduto;
       XSetVlrFrete:=VlrFrete;
       XSetVlrSeguro:=VlrSeguro;
       XSetDesconto:=Desconto;
       XSetVlrOutros:=VlrOutros;
       XSetVlrNotaFiscal:=VlrNotaFiscal;
       XSetVlrTotalTributacao:=VlrNotaTotalTributacao;
       XRetransmiteNfce := False;
   Except
       Result:=False;
   End;
End;

Function TFMzrNfe.SetRetransmissaoNFCe(CodigoPedido: Integer; TipoPedido: String; NumFiscal: Integer): Boolean;
begin
   Result := True;
   
   try
       XSetCodigoPedido := CodigoPedido;
       XSetInTipoAcao := 'RETRANSMITENFCE';
       XSetInTipoPedido := TipoPedido;
       XSetInNumFiscal := NumFiscal;
       XEmiteNFCe := True;
   except
       Result := True;
   end;
end;

//Procedure que invisibiliza todos os paineis
Procedure TFMzrNfe.LimpaPaineis;
Begin
   PBotoes01.Visible:=False;
   PInutilizacao.Visible:=False;
   BitBtn8.Visible:=False;
   PAguarde.BringToFront;
   Information('Processando...');
End;

//Fun��o utilizada para setar os dados Adicionais da Nfe
Function TFMzrNfe.SetDadosAdicionais: Boolean; 	
Begin
   Result:=True;
   Try
       Information('Adicionando dados adicionais da Nfe...');

       //busca dados adicionais na tabela que foi selecionada no setdadostransporte
       If not DMMACS.TALX.IsEmpty
       Then Begin
       	If FMenu.XNotaEntrada = False Then
           	XDadosNfe.InfAdicionais := DMESTOQUE.ALX1.FieldByName('FISCO').AsString+DMESTOQUE.ALX1.FieldByName('ADICIONAL').AsString
           Else
           	XDadosNfe.InfAdicionais := DMESTOQUE.ALX1.FieldByName('ADICIONAL').AsString;

          
           ValidaTam(XDadosNfe.InfAdicionais, 0, 2000);
           XDadosNfe.InfAdicionaisFisco := '';
       End;
   Except
       result:=False;
   End;
End;

function TFMzrNfe.SetDadosExportacao: Boolean;
begin
   Result:=True;
	try
       FiltraDadosImportacaoExportacao;   
   	XDadosNfe.Exportacao := TExportacao.Create;
       XDadosNfe.Exportacao.UFEmbarque := DMMACS.TALX.FieldByName('UFEMBARQUE').AsString;
       XDadosNfe.Exportacao.LocalEmbarque := DMMACS.TALX.FieldByName('LOCALEMBARQUE').AsString;
       XDadosNfe.Exportacao.LocalDespacho := '';        
   except
   	Result := False;
   end;
end;

function TFMzrNfe.SetDadosImpostosRetidos: Boolean;
begin
   Result:=True;
	try
      	If XSetInTipoPedido='PEDV'
      	Then Begin
           MDO.Transac.CommitRetaining;
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           mdo.QConsulta.SQL.Add(' SELECT DOCFISSAIDA.NFEVRETPIS, DOCFISSAIDA.NFEVRETCOFINS, DOCFISSAIDA.NFEVRETCSLL, ');
           mdo.QConsulta.SQL.Add(' DOCFISSAIDA.NFEVBCIRRF, DOCFISSAIDA.NFEVIRRF, DOCFISSAIDA.NFEVBCRETPREV, DOCFISSAIDA.NFEVRETPREV ');
           mdo.QConsulta.SQL.Add(' from DOCFISSAIDA WHERE docfissaida.COD_PEDIDO = :Codigo ');
           mdo.QConsulta.ParamByName('Codigo').AsInteger := XSetCodigoPedido;
           mdo.QConsulta.Open;

           If (MDO.QConsulta.FieldByName('NFEVRETPIS').AsCurrency > 0) or
               (MDO.QConsulta.FieldByName('NFEVRETCOFINS').AsCurrency > 0) or
               (MDO.QConsulta.FieldByName('NFEVRETCSLL').AsCurrency > 0) or
               (MDO.QConsulta.FieldByName('NFEVBCIRRF').AsCurrency > 0) or
               (MDO.QConsulta.FieldByName('NFEVIRRF').AsCurrency > 0) or
               (MDO.QConsulta.FieldByName('NFEVBCRETPREV').AsCurrency > 0) or
               (MDO.QConsulta.FieldByName('NFEVRETPREV').AsCurrency > 0)
           Then Begin
               xContemImpostosRetidos := True;
   	        XDadosNfe.TributoRetido := TTributoRetido.Create;
               XDadosNfe.TributoRetido.VlrRetPIS := MDO.QConsulta.FieldByName('NFEVRETPIS').AsCurrency;
               XDadosNfe.TributoRetido.VlrRetCOFINS := MDO.QConsulta.FieldByName('NFEVRETCOFINS').AsCurrency;
               XDadosNfe.TributoRetido.VlrRetCSLL := MDO.QConsulta.FieldByName('NFEVRETCSLL').AsCurrency;
               XDadosNfe.TributoRetido.VlrBCIRRF := MDO.QConsulta.FieldByName('NFEVBCIRRF').AsCurrency;
               XDadosNfe.TributoRetido.VlrIRRF := MDO.QConsulta.FieldByName('NFEVIRRF').AsCurrency;
               XDadosNfe.TributoRetido.VlrBCRetPrev := MDO.QConsulta.FieldByName('NFEVBCRETPREV').AsCurrency;
               XDadosNfe.TributoRetido.VlrRetPrev := MDO.QConsulta.FieldByName('NFEVRETPREV').AsCurrency;
           End
           Else Begin
               xContemImpostosRetidos := False;
           End;
       End
       Else Begin
           xContemImpostosRetidos := False;
       End;
   except
       xContemImpostosRetidos := False;
   	Result := False;
   end;
end;


function TFMzrNfe.SetDadosAutorizacaoXML: Boolean;
begin
   Result := True;
   
   try
       //if not XEmiteNFCe then
       //begin
           if (DMMACS.TLoja.FieldByName('CNPJ_CONTABILIDADE').AsString <> '') then
           begin
               XDadosNfe.AutXML := TAutXML.Create;
               XDadosNfe.AutXML.CNPJ := Trim(TirarCarct01(DMMACS.TLoja.FieldByName('CNPJ_CONTABILIDADE').AsString));
           end;
       //end;
   except
       Result := False;
   end;
end;

//Fun��o utilizada para setar os dados de Transporte da Nfe
Function TFMzrNfe.SetDadosTransporte: Boolean;
Begin
   Result:=True;
   Try
       Information('Adicionando dados de Transporte da Mercadoria para Nfe...');

       //Cria classe de transporte
       XDadosNfe.Transporte := TTransporte.Create;
       XDadosNfe.Transporte.ModFrete := 1;

       //Seleciona na tabela os dados de transporte
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       If XSetInTipoPedido='PEDC'
       Then Begin
           DMMACS.TALX.SQL.Add(' select  docfis.freteconta, vwfornec.cpfcnpj, pessoaj.insc_est, vwfornec.nome, vwfornec.endereco, ');
           DMMACS.TALX.SQL.Add('         vwcidade.nome as cidade, vwcidade.uf, docfis.placa, docfis.ufplaca, docfis.quantfrete, docfis.especiefrete, ');
           DMMACS.TALX.SQL.Add('         docfis.marcafrete, docfis.numconhec, docfis.pesoliq, docfis.pesobruto  from  docfis ');
           DMMACS.TALX.SQL.Add(' Left join vwfornec on docfis.cod_transp = vwfornec.cod_fornec ');
           DMMACS.TALX.SQL.Add(' left join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa ');
           DMMACS.TALX.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
           DMMACS.TALX.SQL.Add(' left join vwcidade on vwfornec.cod_cidade = vwcidade.cod_cidade ');
           DMMACS.TALX.SQL.Add(' Where docfis.cod_pedido= :Codigo ');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=XSetCodigoPedido;
       End;
       If XSetInTipoPedido='PEDV'
       Then Begin
           DMMACS.TALX.SQL.Add(' select  docfissaida.freteconta, docfissaida.dadosad01 as DadosAdicionais, vwfornec.cpfcnpj, pessoaj.insc_est, vwfornec.nome, vwfornec.endereco, ');
           DMMACS.TALX.SQL.Add('         vwcidade.nome as cidade, vwcidade.uf, docfissaida.placa, docfissaida.ufplaca, docfissaida.quantfrete, docfissaida.especiefrete, ');
           DMMACS.TALX.SQL.Add('         docfissaida.marcafrete, docfissaida.numconhec, docfissaida.pesoliq, docfissaida.pesobruto  from docfissaida ');
           DMMACS.TALX.SQL.Add(' Left join vwfornec on docfissaida.cod_transp = vwfornec.cod_fornec ');
           DMMACS.TALX.SQL.Add(' left join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa ');
           DMMACS.TALX.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
           DMMACS.TALX.SQL.Add(' left join vwcidade on vwfornec.cod_cidade = vwcidade.cod_cidade ');
           DMMACS.TALX.SQL.Add(' Where docfissaida.cod_pedido= :Codigo ');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=XSetCodigoPedido;
       End;
       //Paulo 10/11/2010: - 168: Seleciona dados necess�rios para Ordem de Mec�nica
       If XSetInTipoPedido='ORDEM'
       Then Begin
           DMMACS.TALX.SQL.Add(' select docfisord.freteconta, docfisord.dadosad01 as DadosAdicionais, vwfornec.cpfcnpj, pessoaj.insc_est, vwfornec.nome, vwfornec.endereco,');
           DMMACS.TALX.SQL.Add('vwcidade.nome as cidade, vwcidade.uf, docfisord.placa, docfisord.ufplaca, docfisord.quantfrete, docfisord.especiefrete,');
           DMMACS.TALX.SQL.Add(' docfisord.marcafrete, docfisord.numconhec, docfisord.pesoliq, docfisord.pesobruto  from docfisord');
           DMMACS.TALX.SQL.Add(' Left join vwfornec on docfisord.cod_transp = vwfornec.cod_fornec');
           DMMACS.TALX.SQL.Add('left join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa');
           DMMACS.TALX.SQL.Add('left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa');
           DMMACS.TALX.SQL.Add('left join vwcidade on vwfornec.cod_cidade = vwcidade.cod_cidade');
           DMMACS.TALX.SQL.Add('Where docfisord.cod_ordem= :Codigo');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=XSetCodigoPedido;
       End;



       DMMACS.TALX.Open;

       If not DMMACS.TALX.IsEmpty
       Then Begin
           If DMMACS.TALX.fieldByName('FRETECONTA').AsString = '1' Then
               XDadosNfe.Transporte.ModFrete := 0
           else if DMMACS.TALX.fieldByName('FRETECONTA').AsString = '9' Then
              XDadosNfe.Transporte.ModFrete := 9
           Else
               XDadosNfe.Transporte.ModFrete := 1;

           //Cria classe de Transportador
           XDadosNfe.Transporte.Transportador := TTransportadora.Create;
           If ValidCPF(TirarCarct01( DMMACS.TALX.FieldByName('CPFCNPJ').AsString))=True Then
               XDadosNfe.Transporte.Transportador.CPF := TirarCarct01(DMMACS.TALX.FieldByName('CPFCNPJ').AsString) //cpf do transportador
           Else
               XDadosNfe.Transporte.Transportador.CNPJ := TirarCarct01(DMMACS.TALX.FieldByName('CPFCNPJ').AsString); //cnpj do transportador

           XDadosNfe.Transporte.Transportador.IE := TirarCarct01(DMMACS.TALX.FieldByName('INSC_EST').AsString);
           XDadosNfe.Transporte.Transportador.Nome := ValidaAcentos(DMMACS.TALX.FieldByName('NOME').AsString);
           XDadosNfe.Transporte.Transportador.Endereco := ValidaAcentos(DMMACS.TALX.FieldByName('ENDERECO').AsString);
           XDadosNfe.Transporte.Transportador.Municipio := ValidaAcentos(DMMACS.TALX.FieldByName('CIDADE').AsString);
           XDadosNfe.Transporte.Transportador.UF := DMMACS.TALX.FieldByName('UF').AsString;

           //dados referente ao veiculo
           If Length(DMMACS.TALX.fieldByName('PLACA').AsString) = 8
           Then Begin
               //Cria Classe de Ve�culo
               XDadosNfe.Transporte.Veiculo := TVeiculo.Create;
               XDadosNfe.Transporte.Veiculo.placa := TirarCarct01(DMMACS.TALX.fieldByName('PLACA').AsString);
               XDadosNfe.Transporte.Veiculo.UF := TirarCarct01(DMMACS.TALX.fieldByName('UFPLACA').AsString);
               XDadosNfe.Transporte.Veiculo.RNTC := '';
           End;
           
           //dados referente ao volume de carga
           //Cria Classe
           XDadosNfe.Transporte.Volume := TVolume.Create;
           XDadosNfe.Transporte.Volume.QntVol := DMMACS.TALX.fieldByName('QUANTFRETE').AsCurrency;
           XDadosNfe.Transporte.Volume.Especie := DMMACS.TALX.fieldByName('ESPECIEFRETE').AsString;
           XDadosNfe.Transporte.Volume.Marca := DMMACS.TALX.fieldByName('MARCAFRETE').AsString;
           XDadosNfe.Transporte.Volume.NumeracaoVol := DMMACS.TALX.fieldByName('NUMCONHEC').AsString;
           XDadosNfe.Transporte.Volume.PesoLiquido := DMMACS.TALX.fieldByName('PESOLIQ').AsCurrency;
           XDadosNfe.Transporte.Volume.PesoBruto := DMMACS.TALX.fieldByName('PESOBRUTO').AsCurrency;

           //Edmar - 11/03/2015 - Ao final valida se as informa��es atribuidas a transpotadora est�o corretas
           //estava dando um erro de valida��o pois se n�o informasse os dados da transportadora um ponto vinha no
           //lugar o espa�o vazio e isso n�o passava na valida��o do XML
           if XDadosNfe.Transporte.Transportador.IE = '.' then
				XDadosNfe.Transporte.Transportador.IE := TiraPonto(XDadosNfe.Transporte.Transportador.IE);
               
           if XDadosNfe.Transporte.Transportador.Nome = '.' then
				XDadosNfe.Transporte.Transportador.Nome := TiraPonto(XDadosNfe.Transporte.Transportador.Nome);

           if XDadosNfe.Transporte.Transportador.Endereco = '.' then
				XDadosNfe.Transporte.Transportador.Endereco := TiraPonto(XDadosNfe.Transporte.Transportador.Endereco);

           if XDadosNfe.Transporte.Transportador.Municipio = '.' then
				XDadosNfe.Transporte.Transportador.Municipio := TiraPonto(XDadosNfe.Transporte.Transportador.Municipio);
               
           if XDadosNfe.Transporte.Transportador.UF = '.' then
				XDadosNfe.Transporte.Transportador.UF := TiraPonto(XDadosNfe.Transporte.Transportador.UF);
           //
       End;
   Except
       Result:=False;
   End;
End;
//Fun��o utilizada para setar os dados de Total da Nfe
Function TFMzrNfe.SetDadosTotalNfe: Boolean;
Begin
   Result:=True;
   Try
       //ALEX: COMENTEI O CODIGO ABAIXO DEVIDO AO FATO QUE TODAS AS INFORMA��ES REFERENTES A SERVI�OS EST�O NO MODULO DE NFSE
       {
       Information('Adicionando dados de Total de Servi�os da Nfe...');
       //Cria Subclasse dos totais da nota
       XDadosNfe.TotalIss := TTotalISS.Create;
		XDadosNfe.TotalIss.VServico := 0;
       //XDadosNfe.TotalIss.VServico := XTotalServComDesc; //Total de Servi�os
       XDadosNfe.TotalIss.VBC := 0;
       XDadosNfe.TotalIss.VISS := 0;
       XDadosNfe.TotalIss.VPis := 0;
       XDadosNfe.TotalIss.VCofins := 0;
       }
       Information('Adicionando dados de Total da Nfe...');
       //Cria Subclasse dos totais da nota
       XDadosNfe.Total := TTotalICMS.Create;
       XDadosNfe.Total.VlrBCICMS := XSetBaseIcms; //base de calculo de icms
       XDadosNfe.Total.VlrICMS := XSetVlrIcms; //valor do icms
       XDadosNfe.Total.VlrIPI := XSetVlrIpi; //valor do ipi
       XDadosNfe.Total.VlrBCST := XSetBaseIcmsSt; //base de calculo de icms de ST
       XDadosNfe.Total.VlrtST := XSetVlrIcmsSt; //valor de calculo de icms de ST
       XDadosNfe.Total.VlrProdServ := XSetVlrProduto; //soma do valor total dos produtos
       XDadosNfe.Total.VlrFrete := XSetVlrFrete; //valor de frete direto do pedido de venda
       XDadosNfe.Total.VlrSeguro := XSetVlrSeguro; //valor do seguro
       XDadosNfe.Total.VlrDesconto := XSetDesconto; //valor do desconto direto do pedido de venda
       XDadosNfe.Total.VlrII := XSetVlrII; //dados do imposto de importa��o, zero
       XDadosNfe.Total.VlrPIS := 0; //n�o tributado
       XDadosNfe.Total.VlrCOFINS := 0; // n�o tributado
       XDadosNfe.Total.VlrDespesa := XSetVlrOutros; //outras despesas
       XDadosNfe.Total.VlrTotal := XSetVlrNotaFiscal; //valor total da nota fiscal
       XDadosNfe.Total.VlrTotalTributacao := XSetVlrTotalTributacao; //Valor total das tributa��es
       XDadosNfe.Total.VlrTotalIcmsUfDest := XSetVlrIcmsUfDest;
       XDadosNfe.Total.VlrTotalIcmsUfRemet := XSetVlrIcmsUfRemet;
       XDadosNfe.Total.VlrTotalFcpUfDest := XSetVlrFcpUfDest;
       XDadosNfe.Total.VlrTotalFcp := xSetVlrFcp;
       XDadosNfe.Total.VlrTotalFcpSt := 0;
       XDadosNfe.Total.VlrTotalFcpStRet := 0;
       XDadosNfe.Total.VlrTotalIpiDevolvido := xSetVlrTotalIpiDevolvido;
   Except
       Result := False;
   End
End;

//Fun��o utilizada para validar o ncm do produto junto a tabela ncm no banco de dados
Function TFMzrNfe.ValidaNcm(XNcm: String): Boolean;
Begin
	Result := True;
   Try
     {	//Valida quanto ao tamanho
   	If Length(XNcm)<>8
       Then Begin
           Result:=False;
       End
       Else Begin
           DMESTOQUE.TNcm.Close;
           DMESTOQUE.TNcm.SQL.Clear;
           DMESTOQUE.TNcm.SQL.Add('Select * from ncm where ncm.ncm=:ncm');
           DMESTOQUE.TNcm.ParamByName('ncm').AsString:=XNcm;
           DMESTOQUE.TNcm.Open;
           If DMESTOQUE.TNcm.IsEmpty Then
                 Result:=False;
       End;}
   Except
   	Result:=False;
   End;
End;

//Fun��o utilizada para setar os dados dos produtos da Nfe
Function TFMzrNfe.SetDadosProdutos: Boolean;
Var
   XTamArray1,XTamArray, Aux,J,I: Integer;//variavel para controlar a inser��o de produtos na classe
   XSetDadosVlrTotalProdutos: Real; // Acumula valor total dos produtos
   XVlrProdutos: Real;//Acumula Valor total do item para gerar as bases
   XTmpVlrOutros: Real;//Variavel temporaria para repassar o valor de outros
   xJ: Integer;
   xNcmAux, xCstAux: String;
const
   //armazena os c�digos NCM que incindem FCP
   xCodigosNcmFCP: Array[0..16] of String = ('2201', '2202', '7113', '7114', '2203', '2204', '2205', '2206', '2208',
       '2402', '2403', '3303', '3304', '3305', '3307', '2401', '2499');
Begin
   Result:=True;
   Try
       Information('Adicionando dados de Produtos...');
       
       If XSetVlrOutros>0 Then
           XTmpVlrOutros:=XSetVlrOutros;
       //Todos os produtos necess�rios j� devem estar selecionados em DMESTOQUE.TSlave atrav�s do padr�o fiscal
       //Controla o tamanho da array de acordo com a quantidade de registros de produto
       DMESTOQUE.TSlave.Last;
       XTamArray:=DMESTOQUE.TSlave.RecordCount;

       SetLength(XDadosNfe.Produtos, XTamArray); //set tamanho do array para add os produtos

       //Inicia Processo de inser��o de itens
       DMESTOQUE.TSlave.First;
       XSetDadosVlrTotalProdutos:=0;
       XSetVlrIcmsUfDest := 0;
       XSetVlrIcmsUfRemet := 0;
       XSetVlrFcpUfDest := 0;
       XSetVlrII := 0;
       xSetVlrFcp := 0;
       xSetVlrTotalIpiDevolvido := 0;
       //DMESTOQUE.TDesp.First;

       For I:= 0 to XTamArray-1 do
       Begin
           //Cria item na classe
           XDadosNfe.Produtos[i] := TItem.Create;
           //numero do item
           XDadosNfe.Produtos[i].NmItem := i+1;
           //Cria novo produto na classe
           XDadosNfe.Produtos[i].Produto := TProd.Create;
           //*********************
           //DESCRITIVO DO PRODUTO
           //*********************
           //seta controle interno como codigo principal
           XDadosNfe.Produtos[i].Produto.CodigoProduto := TirarCarct01(DMESTOQUE.TSlave.FieldByName('CONTRINT').AsString); //controle interno do produto
           XDadosNfe.Produtos[i].Produto.CodigoBarra := 'SEM GTIN';{DMESTOQUE.TSlave.FieldByName('CODBARRA').AsString;}
           //Vamos buscar os dados em subproduto para trazer o complemento fiscal do item, caso este tenha
           If FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'cod_subproduto', DMESTOQUE.TSlave.FieldByName('cod_subproduto').AsString, '')
               AND (XNfeTipoAmbiente <> 2) AND not (XEmiteNFCe) then
               XDadosNfe.Produtos[i].Produto.Descricao := ValidaAcentos(DMESTOQUE.TSlave.FieldByName('PRODUTO').AsString) + ' - '+ ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('complementofiscal').AsString) //descri��o do produto + complemento fiscal
           Else
               XDadosNfe.Produtos[i].Produto.Descricao := ValidaAcentos(DMESTOQUE.TSlave.FieldByName('PRODUTO').AsString); //descri��o do produto
           If ValidaNcm(TiraPonto(DMESTOQUE.TSlave.FieldByName('NCM').AsString))=True
           Then Begin
               XDadosNfe.Produtos[i].Produto.CodigoNCM := TiraPonto(DMESTOQUE.TSlave.FieldByName('NCM').AsString); //nomenclatura comum do mercosul
           End
           Else Begin
                NfeAddFalhas('NCM Inv�lido para o produto: '+DMESTOQUE.TSlave.FieldByName('CONTRINT').AsString+' - '+DMESTOQUE.TSlave.FieldByName('PRODUTO').AsString);
               Result:=False;
			End;
           XDadosNfe.Produtos[i].Produto.CodigoBeneficioFiscal := DMESTOQUE.TSlave.FieldByName('CODIGOBENEFICIOFISCAL').AsString;
           XDadosNfe.Produtos[i].Produto.CodigoCEST := TiraPonto(DMESTOQUE.TSlave.FieldByName('CEST').AsString);
           XDadosNfe.Produtos[i].Produto.CFOP := DMESTOQUE.TSlave.FieldByName('CFOP').AsInteger; //CFOP DO ITEM
           XDadosNfe.Produtos[i].Produto.UnidadeComercial := DMESTOQUE.TSlave.FieldByName('UNIDADE').AsString; //sigla da unidade vendida do produto

           //edmar, teste a partir desse if abaixo que controla mandar com 4 ou 2 casas. Lembro que com
           //duas casas sempre vai ser salvo, por�m nem sempre com 4 casas, quando for um item simples,
           //salva com duas casas e deixa 4 casas em branco, quando for com 4 casas salva nos dois campos
           If (DMMACS.TLoja.FieldByName('USAR4CASASQTD').AsString='1')
           Then Begin
               If (DMESTOQUE.TSlave.FieldByName('QTD4CASAS').AsString<>'') and (DMESTOQUE.TSlave.FieldByName('QTD4CASAS').AsString<>'0') and (DMESTOQUE.TSlave.FieldByName('QTD4CASAS').AsString<>'0,0000') Then
                  XDadosNfe.Produtos[i].Produto.QntComercial := DMESTOQUE.TSlave.FieldByName('QTD4CASAS').AsString
               else
                  XDadosNfe.Produtos[i].Produto.QntComercial := DMESTOQUE.TSlave.FieldByName('QUANTIDADE').AsString
           end
           Else Begin
               XDadosNfe.Produtos[i].Produto.QntComercial := DMESTOQUE.TSlave.FieldByName('QUANTIDADE').AsString; //quantidade vendida do produto
           End;
           XDadosNfe.Produtos[i].Produto.ValorUnitario := FormatFloat('0.00', DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency); //valor unitario de venda do produto
           XDadosNfe.Produtos[i].Produto.ValorFrete := DMESTOQUE.TSlave.FieldByName('VALORFRETE').AsCurrency;
           XDadosNfe.Produtos[i].Produto.ValorOutros := DMESTOQUE.TSlave.FieldByName('VALORDESP').AsCurrency;

           If FMenu.XNotaEntrada=False
           Then Begin
               XDadosNfe.Produtos[I].Produto.ValorDesconto := 0; //DMESTOQUE.TSlave.FieldByName('DESCONTONF').AsCurrency; //valor unitario de venda do produto
               XDadosNfe.Produtos[i].Produto.ValorBruto := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;{-DMESTOQUE.TSlave.FieldByName('DESCONTONF').AsCurrency}; //valor total do produto
               XSetDadosVlrTotalProdutos:=XSetDadosVlrTotalProdutos+(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency{-DMESTOQUE.TSlave.FieldByName('DESCONTONF').AsCurrency});//Acumula totalizador
           End
           Else Begin
               XDadosNfe.Produtos[i].Produto.ValorBruto := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency; //valor total do produto
               XSetDadosVlrTotalProdutos:=XSetDadosVlrTotalProdutos+(DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency);//Acumula totalizador
           End;
           XDadosNfe.Produtos[i].Produto.ValorTotalTributo := DMESTOQUE.TSlave.FieldByName('valortotaltributa').AsCurrency; //repassa o valor total das tributa��es para o item
           XDadosNfe.Produtos[i].Produto.AliquotaTotalTributo := DMESTOQUE.TSlave.FieldByName('ALIQUOTATOTALTRIBUTA').AsCurrency; //repassa o valor total das tributa��es para o item
           XDadosNfe.Produtos[i].Produto.GTIN := 'SEM GTIN';{DMESTOQUE.TSlave.FieldByName('CODBARRA').AsString;}
           XDadosNfe.Produtos[i].Produto.NumPedCompra := DMESTOQUE.TSlave.FieldByName('NUMPEDCOMPRANFE').AsString;
           XDadosNfe.Produtos[i].Produto.NumItemPedCompra := DMESTOQUE.TSlave.FieldByName('NUMITEMPEDCOMPRANFE').AsString;
           
           XDadosNfe.Produtos[i].Produto.UnidadeTributavel := XDadosNfe.Produtos[i].Produto.UnidadeComercial; //sigla da unidade tribut�vel do produto
           XDadosNfe.Produtos[i].Produto.QntTributavel :=  XDadosNfe.Produtos[i].Produto.QntComercial; //qtd vendida do produto
           XDadosNfe.Produtos[i].Produto.ValorUnitTribut := XDadosNfe.Produtos[i].Produto.ValorUnitario; //valor unitario do produto
           XDadosNfe.Produtos[i].Produto.ValorDesconto := DMESTOQUE.TSlave.FieldByName('DESCONTONF').AsCurrency;
           //*******************//
           //*DADOS COMBUSTIVEL*//
           //*******************//
           //Edmar - 03/09/2015 - S� informa a tag de combustivel se foi informado o c�digo ANP v�lido
           if Length(Trim(DMESTOQUE.TSlave.FieldByName('ANP').AsString)) > 8 then
           begin
           	XDadosNfe.Produtos[i].Produto.Combutivel := TComb.Create;
           	XDadosNfe.Produtos[i].Produto.Combutivel.CodigoAnp := DMESTOQUE.TSlave.FieldByName('ANP').AsString;
               XDadosNfe.Produtos[i].Produto.Combutivel.DescricaoAnp := DMESTOQUE.TSlave.FieldByName('DESCRICAO_ANP').AsString;
               if XDadosNfe.Destinatario.UF = '' then
                   XDadosNfe.Produtos[i].Produto.Combutivel.UfConsumo := XDadosNfe.Emitente.UF
               else
                   XDadosNfe.Produtos[i].Produto.Combutivel.UfConsumo := XDadosNfe.Destinatario.UF;
       	end;
           //*******************//
           //IMPOSTOS DO PRODUTO//
           //*******************//
           //Cria classe especifica para impostos
           XDadosNfe.Produtos[i].Imposto := TImposto.Create;

           //ICMS - Cria subclasse de impostos de Icms
           XDadosNfe.Produtos[i].Imposto.ICMS := TICMS.Create;
           //Codigo Cst
           XDadosNfe.Produtos[i].Imposto.ICMS.CodigoST := DMESTOQUE.TSlave.FieldByName('cod_sit_trib').AsInteger;
           //Modalidade de determina��o de base de calculo
           XDadosNfe.Produtos[i].Imposto.ICMS.ModDetBC := 0;
           XDadosNfe.Produtos[i].Imposto.ICMS.ModBDST := 0;
           XDadosNfe.Produtos[i].Imposto.ICMS.PercRedBC := DMESTOQUE.TSlave.FieldByName('REDUCBASE').AsCurrency; //percentual de redu��o
           XDadosNfe.Produtos[i].Imposto.ICMS.ValorBC := DMESTOQUE.TSlave.FieldByName('BASEICMS').AsCurrency; //base de calculo icms
           XDadosNfe.Produtos[i].Imposto.ICMS.AliquotaICMS := DMESTOQUE.TSlave.FieldByName('ICMS').AsCurrency; //aliquota icms
           XDadosNfe.Produtos[i].Imposto.ICMS.ValorICMS := DMESTOQUE.TSlave.FieldByName('VLRICMS').AsCurrency; //valor do icms
           XDadosNfe.Produtos[i].Imposto.ICMS.PercRedST := DMESTOQUE.TSlave.FieldByName('REDUCBASE').AsCurrency; //parcentual de redu��o do icms de ST
           //Edmar - 23/03/2015 - outra entradas n�o possuem aproveitamento de credito pois n�o � buscado na query anteriormente
			if not FMenu.XOutrosEnt then
           begin
           	If (DMESTOQUE.TSlave.FieldByName('APROVEITACREDITO').AsString='1')
               Then Begin
                   XDadosNfe.Produtos[i].Imposto.ICMS.ICMS_pCredSN:= DMESTOQUE.TSlave.FieldByName('ICMSCREDALIQ').AsCurrency;
                   XDadosNfe.Produtos[i].Imposto.ICMS.ICMS_vCredICMSSN:= DMESTOQUE.TSlave.FieldByName('ICMSCREDVALOR').AsCurrency;
               End
               Else Begin
                   XDadosNfe.Produtos[i].Imposto.ICMS.ICMS_pCredSN:=0;
                   XDadosNfe.Produtos[i].Imposto.ICMS.ICMS_vCredICMSSN:=0;
               End;
           end
           else begin
           	XDadosNfe.Produtos[i].Imposto.ICMS.ICMS_pCredSN:=0;
           	XDadosNfe.Produtos[i].Imposto.ICMS.ICMS_vCredICMSSN:=0;
           end;

           //Armazena Valores de produto para servir como base
           XVlrProdutos:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency-DMESTOQUE.TSlave.FieldByName('DESCONTONF').AsCurrency;
           If (FMenu.XNotaEntrada=False)
           Then Begin
               If (DMESTOQUE.TSlave.FieldByName('aplicarst').AsString='1')
               Then Begin
                  //Aplica a inser��o de substitui��o tributaria
                  XDadosNfe.Produtos[i].Imposto.ICMS.ModBDST := 4;
                  XDadosNfe.Produtos[i].Imposto.ICMS.ValorBCST := DMESTOQUE.TSlave.FieldByName('BASEICMSSUBS').AsCurrency; // base de calculo icms de ST
                  XDadosNfe.Produtos[i].Imposto.ICMS.ValorST := DMESTOQUE.TSlave.FieldByName('VLRICMSSUBS').AsCurrency; // valor de icms de ST
                  XDadosNfe.Produtos[i].Imposto.ICMS.PercValorST := DMESTOQUE.TSlave.FieldByName('IPNMVA').AsCurrency;
               End
               Else Begin
                   XDadosNfe.Produtos[i].Imposto.ICMS.ValorBCST := 0;
                   XDadosNfe.Produtos[i].Imposto.ICMS.ValorST := 0;
                   XDadosNfe.Produtos[i].Imposto.ICMS.PercValorST := 0;
               End;
           End
           Else Begin
           	if DMESTOQUE.TSlave.FieldByName('VLRICMSSUBS').AsCurrency <> 0 then
               begin
               	XDadosNfe.Produtos[i].Imposto.ICMS.ValorBCST := DMESTOQUE.TSlave.FieldByName('BASEICMSSUBS').AsCurrency; // base de calculo icms de ST
               	XDadosNfe.Produtos[i].Imposto.ICMS.ValorST := DMESTOQUE.TSlave.FieldByName('VLRICMSSUBS').AsCurrency; // valor de icms de ST
               end
               else begin
               	XDadosNfe.Produtos[i].Imposto.ICMS.ValorBCST := 0;
               	XDadosNfe.Produtos[i].Imposto.ICMS.ValorST := 0;
               end;
               XDadosNfe.Produtos[i].Imposto.ICMS.PercValorST := 0;
           End;
           XDadosNfe.Produtos[i].Imposto.ICMS.AliquotaST := DMESTOQUE.TSlave.FieldByName('ICMS').AsCurrency; //aliquota icms

           if (DMESTOQUE.TSlave.FieldByName('cod_sit_trib').AsInteger = 60)
               OR (DMESTOQUE.TSlave.FieldByName('cod_sit_trib').AsInteger = 500) then
           begin
               XDadosNfe.Produtos[i].Imposto.ICMS.AliquotaSTCF := DMESTOQUE.TSlave.FieldByName('COMPALIQST').AsCurrency;
               XDadosNfe.Produtos[i].Imposto.ICMS.ValorSTRet := DMESTOQUE.TSlave.FieldByName('COMPVLRST').AsCurrency * StrToCurr(XDadosNfe.Produtos[i].Produto.QntComercial);
               XDadosNfe.Produtos[i].Imposto.ICMS.ValorBCSTRet := DMESTOQUE.TSlave.FieldByName('COMPVLRBCST').AsCurrency * StrToCurr(XDadosNfe.Produtos[i].Produto.QntComercial);
               XDadosNfe.Produtos[i].Imposto.ICMS.ValorIcmsSubstituto := DMESTOQUE.TSlave.FieldByName('COMPVLRICMS').AsCurrency * StrToCurr(XDadosNfe.Produtos[i].Produto.QntComercial);
           end
           else begin
               XDadosNfe.Produtos[i].Imposto.ICMS.AliquotaSTCF := 0;
               XDadosNfe.Produtos[i].Imposto.ICMS.ValorSTRet := 0;
               XDadosNfe.Produtos[i].Imposto.ICMS.ValorBCSTRet := 0;
               XDadosNfe.Produtos[i].Imposto.ICMS.ValorIcmsSubstituto := 0;
           end;

           //Cria subclasse de impostos de IPI
           XDadosNfe.Produtos[i].Imposto.IPI := TIPI.Create;
           XDadosNfe.Produtos[I].Imposto.IPI.AliquotaIPI:=DMESTOQUE.TSlave.FieldByName('aliqipi').AsCurrency;
           XDadosNfe.Produtos[I].Imposto.IPI.ValorIPI:=DMESTOQUE.TSlave.FieldByName('VLRIPI').AsCurrency;

           //Edmar - 13/03/2015 - Apenas se for devolu��o e o produto tiver ipi
           //que seta a propriedade com o percentual devolvido
           {if (FMenu.XDevolucao) AND (DMESTOQUE.TSlave.FieldByName('ALIQ_DEVOLVIDO').AsCurrency > 0) then
           begin
				XDadosNfe.Produtos[I].Imposto.IPI.AliqDevolvida := DMESTOQUE.TSlave.FieldByName('ALIQ_DEVOLVIDO').AsCurrency;
                                             
               xSetVlrTotalIpiDevolvido := xSetVlrTotalIpiDevolvido + DMESTOQUE.TSlave.FieldByName('VLRIPI').AsCurrency;
           end;}

           //Edmar - 17/08/2015 - Apenas se for nota de entrada informa os valores de II
           if (FMenu.XNotaEntrada) AND (XEstrangeiro) then
           begin
                XDadosNfe.Produtos[i].Imposto.II := TII.Create;
                XDadosNfe.Produtos[i].Imposto.II.ValorBC := DMESTOQUE.TSlave.FieldByName('basecalcii').AsCurrency;
                XDadosNfe.Produtos[i].Imposto.II.OutDespesas := DMESTOQUE.TSlave.FieldByName('outdespii').AsCurrency;
                XDadosNfe.Produtos[i].Imposto.II.ValorII := DMESTOQUE.TSlave.FieldByName('valorii').AsCurrency;
                XDadosNfe.Produtos[i].Imposto.II.ValorIOF := DMESTOQUE.TSlave.FieldByName('valoriof').AsCurrency;

                XSetVlrII := XSetVlrII + DMESTOQUE.TSlave.FieldByName('valorii').AsCurrency;
           end;

           If (DMMACS.TEmpresa.FieldByName('APLICAPISCONFINSSAIDA').AsString='1')
           Then Begin
               //EMPRESA USA SPED
               If (DMESTOQUE.TSlave.FieldByName('gerarpiscofins').AsString='1')
               Then Begin
                   If (FMenu.XNotaEntrada=False)
                   Then Begin
                       //***********************************
                       // PIS  - PARA SPED COM ICMS TRIBUTADO
                       //Cria Classe para Trabalhar com PIS
                       //***********************************
                       XDadosNfe.Produtos[i].Imposto.PIS := TPIS.Create;
                       XDadosNfe.Produtos[i].Imposto.PIS.CodigoPIS := 01; // esta como nao tributado
                       XDadosNfe.Produtos[i].Imposto.PIS.PISOutros := False; // esta como nao tributado
                       XDadosNfe.Produtos[i].Imposto.PIS.ValorBC := XVlrProdutos;  // esta como nao tributado
                       XDadosNfe.Produtos[i].Imposto.PIS.AliquotaPer := DMMACS.TEmpresa.FieldByName('aliquotapisconfins').AsCurrency;  // esta como nao tributado
                       XDadosNfe.Produtos[i].Imposto.PIS.AliquotaReais := 0;  // esta como nao tributado
                       XDadosNfe.Produtos[i].Imposto.PIS.QntVend := DMESTOQUE.TSlave.FieldByName('QUANTIDADE').AsCurrency; // esta como nao tributado
                       XDadosNfe.Produtos[i].Imposto.PIS.Valor := (XVlrProdutos*DMMACS.TEmpresa.FieldByName('aliquotapisconfins').AsCurrency)/100 ;  // esta como nao tributado

                       //*************************************
                       // COFINS
                       //Cria Classe para Trabalhar com COFINS
                       //*************************************
                       XDadosNfe.Produtos[i].Imposto.COFINS := TCOFINS.Create;
                       XDadosNfe.Produtos[i].Imposto.COFINS.CodigoCOFINS := 01;     // esta como nao tributado
                       XDadosNfe.Produtos[i].Imposto.COFINS.ValorBC := XVlrProdutos;   // esta como nao tributado
                       XDadosNfe.Produtos[i].Imposto.COFINS.AliquotaPer := XDadosNfe.Produtos[i].Imposto.PIS.AliquotaPer;  // esta como nao tributado
                       XDadosNfe.Produtos[i].Imposto.COFINS.AliquotaReais := 0;   // esta como nao tributado
                       XDadosNfe.Produtos[i].Imposto.COFINS.QntVend := XDadosNfe.Produtos[i].Imposto.PIS.QntVend;  // esta como nao tributado
                       XDadosNfe.Produtos[i].Imposto.COFINS.Valor := XDadosNfe.Produtos[i].Imposto.PIS.Valor;  // esta como nao tributado

                   End;
               End
               Else Begin
                   //***********************************
                   // PIS  - PARA SPED
                   //Cria Classe para Trabalhar com PIS
                   //***********************************
                   XDadosNfe.Produtos[i].Imposto.PIS := TPIS.Create;
                   XDadosNfe.Produtos[i].Imposto.PIS.CodigoPIS := 06; // esta como nao tributado
                   XDadosNfe.Produtos[i].Imposto.PIS.PISOutros := False; // esta como nao tributado
                   XDadosNfe.Produtos[i].Imposto.PIS.ValorBC := 0;  // esta como nao tributado
                   XDadosNfe.Produtos[i].Imposto.PIS.AliquotaPer := 0;  // esta como nao tributado
                   XDadosNfe.Produtos[i].Imposto.PIS.AliquotaReais := 0;  // esta como nao tributado
                   XDadosNfe.Produtos[i].Imposto.PIS.QntVend := 0; // esta como nao tributado
                   XDadosNfe.Produtos[i].Imposto.PIS.Valor := 0;  // esta como nao tributado

                   //*************************************
                   // COFINS
                   //Cria Classe para Trabalhar com COFINS
                   //*************************************
                   XDadosNfe.Produtos[i].Imposto.COFINS := TCOFINS.Create;
                   XDadosNfe.Produtos[i].Imposto.COFINS.CodigoCOFINS := 06;     // esta como nao tributado
                   XDadosNfe.Produtos[i].Imposto.COFINS.ValorBC := 0;   // esta como nao tributado
                   XDadosNfe.Produtos[i].Imposto.COFINS.AliquotaPer := 0;  // esta como nao tributado
                   XDadosNfe.Produtos[i].Imposto.COFINS.AliquotaReais := 0;   // esta como nao tributado
                   XDadosNfe.Produtos[i].Imposto.COFINS.QntVend := 0;  // esta como nao tributado
                   XDadosNfe.Produtos[i].Imposto.COFINS.Valor := 0;  // esta como nao tributado
               End;
           End
           Else Begin
               //***********************************
               // PIS  - NORMAL - PARA EMPRESAS QUE N�O PRECISAM DE SPED
               //Cria Classe para Trabalhar com PIS
               //***********************************
               XDadosNfe.Produtos[i].Imposto.PIS := TPIS.Create;
               XDadosNfe.Produtos[i].Imposto.PIS.CodigoPIS := 99; // esta como nao tributado
               XDadosNfe.Produtos[i].Imposto.PIS.PISOutros := False; // esta como nao tributado
               XDadosNfe.Produtos[i].Imposto.PIS.ValorBC := 0;  // esta como nao tributado
               XDadosNfe.Produtos[i].Imposto.PIS.AliquotaPer := 0;  // esta como nao tributado
               XDadosNfe.Produtos[i].Imposto.PIS.AliquotaReais := 0;  // esta como nao tributado
               XDadosNfe.Produtos[i].Imposto.PIS.QntVend := 0; // esta como nao tributado
               XDadosNfe.Produtos[i].Imposto.PIS.Valor := 0;  // esta como nao tributado

               //*************************************
               // COFINS
               //Cria Classe para Trabalhar com COFINS
               //*************************************
               XDadosNfe.Produtos[i].Imposto.COFINS := TCOFINS.Create;
               XDadosNfe.Produtos[i].Imposto.COFINS.CodigoCOFINS := 99;     // esta como nao tributado
               XDadosNfe.Produtos[i].Imposto.COFINS.ValorBC := 0;   // esta como nao tributado
               XDadosNfe.Produtos[i].Imposto.COFINS.AliquotaPer := 0;  // esta como nao tributado
               XDadosNfe.Produtos[i].Imposto.COFINS.AliquotaReais := 0;   // esta como nao tributado
               XDadosNfe.Produtos[i].Imposto.COFINS.QntVend := 0;  // esta como nao tributado
               XDadosNfe.Produtos[i].Imposto.COFINS.Valor := 0;  // esta como nao tributado
           End;
           
           if XDadosNfe.Emitente.RegimeTributario <> '1' then
           begin
               if (XDadosNfe.Dados.IdDest = 2)
                   AND (XDadosNfe.Dados.indFinal = 1)
                       AND (XDadosNfe.Destinatario.indIEDest = '9')
                           AND (Length(Trim(DMESTOQUE.TSlave.FieldByName('ANP').AsString)) < 8) then
               begin
                   if not (FMenu.XNotaEntrada) then
                   begin
                       //Edmar - 14/01/2015 - Opera��o para fora do estado com consumidor final (modelo 55)
                       XDadosNfe.Produtos[i].Imposto.ICMSUFDEst := TICMSUFDest.Create;
                       XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.ValorBCUFDest := DMESTOQUE.TSlave.FieldByName('BASEICMSUFDEST').AsCurrency;

                       XTamArray1 := Length(xCodigosNcmFCP);
                       for J := 0 to XTamArray1 do
                       begin
                           xNcmAux := xCodigosNcmFCP[J];
                           if AnsiStartsStr(xNcmAux, XDadosNfe.Produtos[i].Produto.CodigoNCM)
                               AND NOT (AnsiStartsStr(XDadosNfe.Produtos[i].Produto.CodigoNCM, '330720'))
                                   AND NOT (XDadosNfe.Produtos[i].Produto.CodigoNCM = '33051000') then
                           begin
                               //totaliza valores
                               XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.ValorBCFCPUFDest := DMESTOQUE.TSlave.FieldByName('BASEICMSUFDEST').AsCurrency;//� a mesma base de calculo
                               XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.PercFCPUFDest := DMESTOQUE.TSlave.FieldByName('ALIQFCPDESTINO').AsCurrency;
                               XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.ValorFCPUFDest := DMESTOQUE.TSlave.FieldByName('VLRICMSFCP').AsCurrency;

                               break;
                           end
                           else begin
                               XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.ValorBCFCPUFDest := 0;
                               XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.PercFCPUFDest := 0;
                               XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.ValorFCPUFDest := 0;                           
                           end;
                       end;


                       XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.PercIcmsUFDest := DMESTOQUE.TSlave.FieldByName('ALIQINTICMS').AsCurrency;
                       XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.PercIcmsInter := DMESTOQUE.TSlave.FieldByName('ALIQEXTICMS').AsCurrency;
                       XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.PercIcmsInterPart := DMESTOQUE.TSlave.FieldByName('ALIQPROVPARTILHA').AsCurrency;
                       
                       XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.ValorIcmsUFDest := DMESTOQUE.TSlave.FieldByName('VLRICMSINTDEST').AsCurrency;
                       XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.ValorIcmsUFRemetente := DMESTOQUE.TSlave.FieldByName('VLRICMSINTREMET').AsCurrency;

                       XSetVlrIcmsUfDest := XSetVlrIcmsUfDest + XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.ValorIcmsUFDest;
                       XSetVlrIcmsUfRemet := XSetVlrIcmsUfRemet + XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.ValorIcmsUFRemetente;
                       XSetVlrFcpUfDest := XSetVlrFcpUfDest + XDadosNfe.Produtos[i].Imposto.ICMSUFDEst.ValorFCPUFDest;
                   end;
               end;
           end;
           
           //Edmar - 18/05/2018 - Calcula fundo de combate a pobreza (FCP)
           //quando � uma opera��o interna, consumidor final e venda simples
           if (XDadosNfe.Dados.IdDest = 1) AND (XDadosNfe.Dados.indFinal = 1) AND (XDadosNfe.Dados.finNFe = 1)
               AND ((FMenu.XRemessaGarantia = False) AND (FMenu.XSimplesRemessa = False) AND (FMenu.XOutrosFisc = False)) then
           begin
               //101 102 103 201 202 203 400 500 900
               xCstAux := IntToStr(XDadosNfe.Produtos[i].Imposto.ICMS.CodigoST);

               //Se n�o for um CSOSN, calcular o FCP
               if (xCstAux <> '101') AND (xCstAux <> '102') AND (xCstAux <> '103') AND (xCstAux <> '201') AND (xCstAux <> '202')
                   AND (xCstAux <> '203') AND (xCstAux <> '400') AND (xCstAux <> '500') AND (xCstAux <> '900') then
               begin
                   xCstAux := Copy(ConcatZero(IntToStr(XDadosNfe.Produtos[i].Imposto.ICMS.CodigoST), 3), 2, 2);
                   //verifica se o produto possui o CST para calculo
                   if (xCstAux = '00') OR (xCstAux = '10') OR (xCstAux = '20') OR (xCstAux = '51') OR (xCstAux = '70') OR (xCstAux = '90') then
                   begin
                       //verifica se o NCM do produto � o que est� na lista
                       XTamArray1 := Length(xCodigosNcmFCP);
                       for J := 0 to XTamArray1 do
                       begin
                           xNcmAux := xCodigosNcmFCP[J];
                           if AnsiStartsStr(xNcmAux, XDadosNfe.Produtos[i].Produto.CodigoNCM)
                               AND NOT (AnsiStartsStr(XDadosNfe.Produtos[i].Produto.CodigoNCM, '330720'))
                                   AND NOT (XDadosNfe.Produtos[i].Produto.CodigoNCM = '33051000') then
                           begin
                               //totaliza valores
                               XDadosNfe.Produtos[i].Imposto.ICMS.ValorBaseFCP := XDadosNfe.Produtos[I].Produto.ValorBruto;
                               XDadosNfe.Produtos[i].Imposto.ICMS.AliquotaFCP := 2;
                               XDadosNfe.Produtos[i].Imposto.ICMS.ValorFCP := XDadosNfe.Produtos[I].Produto.ValorBruto * (XDadosNfe.Produtos[i].Imposto.ICMS.AliquotaFCP / 100);

                               xSetVlrFcp := xSetVlrFcp + XDadosNfe.Produtos[i].Imposto.ICMS.ValorFCP;

                               break;
                           end;
                       end;
                   end;
               end;
           end;

           //Edmar - 14/08/2015 - Se for nota de entrada e estrangeiro
           if (FMenu.XNotaEntrada) AND (XEstrangeiro) then
           begin
               FiltraDadosImportacaoExportacao;
				//DOCFIS.NUMERODIIMP, DOCFIS.DATADIIMP, DOCFIS.DATADESEMBARQUEIMP, DOCFIS.TIPOTRANSPORTEIMP,
				//DOCFIS.VALORAFRMMIMP, DOCFIS.FORMAIMPORTACAOIMP, DOCFIS.CNPJADQTENCIMP, DOCFIS.UFADQTENCIMP, DOCFIS.CODEXPORTADORIMP
           	//popula os dados de importa��o no produto
               XDadosNfe.Produtos[i].Produto.Importacao := TImportacao.Create;
               XDadosNfe.Produtos[i].Produto.Importacao.Numero := MDO.QAlx1.FieldByName('NUMERODIIMP').AsString;
               XDadosNfe.Produtos[i].Produto.Importacao.LocalDesembarque := MDO.QAlx1.FieldByName('LOCALEMBARQUE').AsString;
               XDadosNfe.Produtos[i].Produto.Importacao.UfDesembarque := MDO.QAlx1.FieldByName('UFEMBARQUE').AsString;
               XDadosNfe.Produtos[i].Produto.Importacao.DataRegistro := FormatDateTime('yyyy-MM-dd', MDO.QAlx1.FieldByName('DATADIIMP').AsDateTime);
               XDadosNfe.Produtos[i].Produto.Importacao.DataDesembarque := FormatDateTime('yyyy-MM-dd', MDO.QAlx1.FieldByName('DATADESEMBARQUEIMP').AsDateTime);
				XDadosNfe.Produtos[i].Produto.Importacao.TipoTransporte := MDO.QAlx1.FieldByName('TIPOTRANSPORTEIMP').AsInteger;
				XDadosNfe.Produtos[i].Produto.Importacao.ValorAfrmm := MDO.QAlx1.FieldByName('VALORAFRMMIMP').AsCurrency;
				XDadosNfe.Produtos[i].Produto.Importacao.FormaImportacao := MDO.QAlx1.FieldByName('FORMAIMPORTACAOIMP').AsInteger;
				XDadosNfe.Produtos[i].Produto.Importacao.CnpjAdquirente := MDO.QAlx1.FieldByName('CNPJADQTENCIMP').AsString;
				XDadosNfe.Produtos[i].Produto.Importacao.UfAdquirente := MDO.QAlx1.FieldByName('UFADQTENCIMP').AsString;
				XDadosNfe.Produtos[i].Produto.Importacao.CodigoExportador := MDO.QAlx1.FieldByName('CODEXPORTADORIMP').AsString;

               MDO.QAlx2.First;
               xJ := 0;
               while not MDO.QAlx2.Eof do
               begin
					SetLength(XDadosNfe.Produtos[i].Produto.Importacao.Adicoes, xJ + 1);
                   
               	XDadosNfe.Produtos[i].Produto.Importacao.Adicoes[xJ] := TAdicao.Create;
					XDadosNfe.Produtos[i].Produto.Importacao.Adicoes[xJ].Sequencia := xJ + 1;
                   XDadosNfe.Produtos[i].Produto.Importacao.Adicoes[xJ].NumeroAdicao := MDO.QAlx2.FieldByName('NUMADICAO').AsInteger;
                   XDadosNfe.Produtos[i].Produto.Importacao.Adicoes[xJ].CodigoFabricante := MDO.QAlx2.FieldByName('CODIGOFABRICANTE').AsString;
                   XDadosNfe.Produtos[i].Produto.Importacao.Adicoes[xJ].Desconto := MDO.QAlx2.FieldByName('DESCONTOADICAO').AsCurrency;
                   XDadosNfe.Produtos[i].Produto.Importacao.Adicoes[xJ].Drawback := MDO.QAlx2.FieldByName('NUMDRAWBACK').AsString;                                                         

                   xJ := xJ + 1;
               	MDO.QAlx2.Next;
               end;               
           end;

           //passa p/ proxima linha
           DMESTOQUE.TSlave.Next;
       end;
   Except
       Result:=False;
   End;
End;

//Fun��o utilizada para setar os dados do emitente da Nfe (cliente usario do sistema)
Function TFMzrNfe.SetDadosDestinatario: Boolean;
Begin
   Result:=True;
   Try  
       Information('Adicionando dados do Destinat�rio...');
       //Cria classe para destinatario da Nfe (cliente do cliente usuario do sistema)
       XDadosNfe.Destinatario := TDestinatario.Create;

       //Seleciona dados do destinat�rio
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       If (XSetInTipoPedido='PEDV') or (XSetInTipoPedido='ORDEM')
       Then Begin
           DMMACS.TALX.SQL.Add(' SELECT VWCLIENTE.COD_CLIENTE, VWCLIENTE.NOME, PESSOAJ.COD_PESSOAJ, PESSOAJ.RAZAO_SOCIAL, VWCLIENTE.CPFCNPJ, CLIENTE.CONTRIBICMS, CLIENTE.SUFRAMA, PESSOAJ.INDUSTRIA, VWCLIENTE.CIDADE, VWCIDADE.UF, ');
           DMMACS.TALX.SQL.Add(' CIDADE.COD_IBGE,PESSOAJ.INSC_EST, ESTADO.CODBACEN CODPAIS, ESTADO.NOMEPAIS, PESSOA.ENDERECO, PESSOA.BAIRRO, PESSOA.ENDNUMERO, CLIENTE.SUFRAMA,PESSOA.CEP, PESSOA.TELREL, ');
           DMMACS.TALX.SQL.Add(' EMAIL.EMAIL, CLIENTE.CREDENCIAL AS CADPRO, PESSOA.ESTRANGEIRO, ');
           if (XSetInTipoPedido='PEDV') then
               DMMACS.TALX.SQL.Add(' PEDVENDA.NOMECLI NOMECLIPED, PEDVENDA.CPFCNPJ CPFCNPJPED ')
           else
               DMMACS.TALX.SQL.Add(' ORDEM.NOMECLI NOMECLIPED, ORDEM.CPFCNPJ CPFCNPJPED ');
           DMMACS.TALX.SQL.Add(' FROM VWCLIENTE ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOA ON VWCLIENTE.COD_PESSOA = PESSOA.COD_PESSOA ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOA.COD_PESSOA=PESSOAJ.COD_PESSOA ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN CLIENTE ON VWCLIENTE.COD_CLIENTE=CLIENTE.COD_CLIENTE ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN VWCIDADE ON VWCLIENTE.COD_CIDADE = VWCIDADE.COD_CIDADE ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN CIDADE ON VWCLIENTE.COD_CIDADE = CIDADE.COD_CIDADE ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN ESTADO ON VWCIDADE.COD_ESTADO = ESTADO.COD_ESTADO ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN EMAIL ON PESSOA.COD_PESSOA = EMAIL.COD_PESSOA ');
           if (XSetInTipoPedido='PEDV') then
               DMMACS.TALX.SQL.Add(' LEFT JOIN PEDVENDA ON VWCLIENTE.COD_CLIENTE = PEDVENDA.COD_CLIENTE AND PEDVENDA.COD_PEDVENDA = :VENDA ')
           else
               DMMACS.TALX.SQL.Add(' LEFT JOIN ORDEM ON VWCLIENTE.COD_CLIENTE = ORDEM.COD_CLIENTE AND ORDEM.COD_ORDEM = :VENDA ');
           DMMACS.TALX.SQL.Add(' WHERE VWCLIENTE.COD_CLIENTE=:CODIGO ');
           DMMACS.TALX.ParamByName('CODIGO').AsInteger:=XSetCodigoDestinatario;
           DMMACS.TALX.ParamByName('VENDA').AsInteger := XSetCodigoPedido;
       End
       Else Begin
           DMMACS.TALX.SQL.Add(' SELECT VWFORNEC.NOME, VWFORNEC.CPFCNPJ, PESSOAJ.COD_PESSOAJ, PESSOAJ.RAZAO_SOCIAL, VWFORNEC.CIDADE, VWCIDADE.UF, CIDADE.COD_IBGE, PESSOAJ.INSC_EST, ');
           DMMACS.TALX.SQL.Add(' PESSOA.ENDERECO, PESSOA.BAIRRO, PESSOA.ENDNUMERO, EMAIL.EMAIL, FORNECEDOR.CONTRIBICMS, PESSOA.ESTRANGEIRO, ESTADO.CODBACEN CODPAIS, ESTADO.NOMEPAIS, ');
           DMMACS.TALX.SQL.Add(' PEDVENDA.NOMECLI NOMECLIPED, PEDVENDA.CPFCNPJ CPFCNPJPED FROM VWFORNEC ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOA ON VWFORNEC.COD_PESSOA = PESSOA.COD_PESSOA ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOA.COD_PESSOA=PESSOAJ.COD_PESSOA ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN FORNECEDOR ON FORNECEDOR.COD_FORNEC = VWFORNEC.COD_FORNEC ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN VWCIDADE ON VWFORNEC.COD_CIDADE = VWCIDADE.COD_CIDADE ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN CIDADE ON VWFORNEC.COD_CIDADE = CIDADE.COD_CIDADE ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN ESTADO ON CIDADE.COD_ESTADO = ESTADO.COD_ESTADO ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN EMAIL ON PESSOA.COD_PESSOA = EMAIL.COD_PESSOA ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN PEDVENDA ON PEDVENDA.COD_CLIENTE = VWFORNEC.COD_FORNEC ');
           DMMACS.TALX.SQL.Add(' WHERE VWFORNEC.COD_FORNEC=:CODIGO ');
           DMMACS.TALX.ParamByName('CODIGO').AsInteger:=XSetCodigoDestinatario;
       End;
       DMMACS.TALX.Open;
       If DMMACS.TALX.IsEmpty
       Then Begin
           MessageDlg('Destinat�rio da Nfe n�o encontrado, reinicie o sistema e tente novamente.', mtWarning, [mbOK], 0);
           Result:=False;
           Exit;
       End;

       //Edmar - 17/06/2015 - s� repassa as informa��es para o objeto e faz a valida��o
       //se for informar cpf na nota
       {if not (AnsiContainsStr(Trim(UpperCase(DMMACS.TALX.FieldByName('NOME').AsString)), 'CONSUMIDOR'))
           AND not (AnsiContainsStr(Trim(UpperCase(DMMACS.TALX.FieldByName('NOMECLIPED').AsString)), 'CONSUMIDOR')) then}
       if XNFCeComCpf then           
       begin
           //Edmar - 31/03/2015 - Se o destinat�rio n�o for estrangeiro
           if not XEstrangeiro then
           begin//executa a rotina normal verificando se � pessoa fisica ou juridica
               XDadosNfe.Destinatario.idEstrangeiro := '';
               //Edmar - 08/10/2015 - Se estiver emitindo nfce
               if (XEmiteNFCe) AND (XCpfConsumidor <> '') then
               begin
                   XDadosNfe.Destinatario.CPF := '';
                   XDadosNfe.Destinatario.CNPJ := '';
                   if not ValidaCGC(TirarCarct01(XCpfConsumidor)) then
                       XDadosNfe.Destinatario.CPF := XCpfConsumidor
                   else
                       XDadosNfe.Destinatario.CNPJ := XCpfConsumidor;
                   XDadosNfe.Destinatario.Nome := ValidaAcentos(XNomeConsumidor);
               end
               else begin
                   //Insere informa��es do destinat�rio
                   //Verifica se o destino � pessoa fisica ou juridica
                   If ValidCPF(Trim(TirarCarct01(DMMACS.TALX.FieldByName('CPFCNPJ').AsString)))=True
                   Then Begin
                       //Destinat�rio pessoa Fisica
                       XDadosNfe.Destinatario.CPF := Trim(TirarCarct01(DMMACS.TALX.FieldByName('CPFCNPJ').AsString));//o destinat�rio � pessoa fisica
                       //Nome do Destinat�rio
                       XDadosNfe.Destinatario.Nome := ValidaAcentos(DMMACS.TALX.FieldByName('NOME').AsString);
                       //Inscri��o estadual do Destinat�rio
                       If XSetInTipoPedido<>'PEDC'
                       Then Begin
                           If DMMACS.TALX.FieldByName('CADPRO').AsString='' Then
                               XDadosNfe.Destinatario.IE := ''
                           Else
                               XDadosNfe.Destinatario.IE := DMMACS.TALX.FieldByName('CADPRO').AsString;
                       End
                       Else Begin
                               XDadosNfe.Destinatario.IE := '';
                       End;

                       XTipoDocumento:=1;
                   End
                   Else Begin
                       //Verifica se destinario pessoa juridica
                       If (ValidaCGC(Trim(TirarCarct01(DMMACS.TALX.FieldByName('CPFCNPJ').AsString)))=True) or (DMMACS.TALX.FieldByName('CPFCNPJ').AsString='99999999000191')
                       Then Begin
                           //Destinatario pessoa juridica
                           XDadosNfe.Destinatario.CNPJ := Trim(TirarCarct01(DMMACS.TALX.FieldByName('CPFCNPJ').AsString));//o destinat�rio � pessoa fisica
                           //Nome do Destinat�rio
                           XDadosNfe.Destinatario.Nome := ValidaAcentos(DMMACS.TALX.FieldByName('razao_social').AsString);
                           XDadosNfe.Destinatario.CPF := '';
                           //Inscri��o estadual do Destinat�rio
                           XDadosNfe.Destinatario.IE := TiraPonto(DMMACS.TALX.FieldByName('insc_est').AsString);

                           XTipoDocumento:=2;
                       End
                       Else Begin
                           //Edmar - 28/08/2015 - S� mostra a mensagem de alerta para o usu�rio se n�o estiver emitindo nfc-e
                           //(emiss�o de nfc-e � permitido n�o informar cpf, nesse caso vai enviar a nfc-e sem dado nenhum de cliente)
                           if not (XEmiteNFCe) then
                           begin
                               //Se destinat�rio n�o for nem pessoa fisica ne juridica (n�o passou na valida��o) interrompe o processo
                               Result:=False;
                               MessageDlg('CPF ou CNPJ do Destinat�rio da Nfe n�o passou na valida��o. Verifique.', mtWarning, [mbOK], 0);
                               Exit;
                           end else
                           begin
                               //sen�o, inicializa o objeto para limpar algo que tiver
                               //e Exit para cancelar a execu��o da fun��o
                               XDadosNfe.Destinatario := TDestinatario.Create;
                               Exit;
                           end;
                       End;
                   End;
                   XDadosNfe.Destinatario.CodigoPais := '1058';
                   XDadosNfe.Destinatario.NomePais := 'Brasil';
               end;
           end
           else begin
               //se for estrangeiro, adiciona o dado que deve estar no campo de cpfcnpj ao atributo
               //idEstrageiro. Sinalizando este fato.
               XDadosNfe.Destinatario.idEstrangeiro := TirarCarct01(DMMACS.TALX.FieldByName('CPFCNPJ').AsString);
               XDadosNfe.Destinatario.CodigoPais := DMMACS.TALX.FieldByName('CODPAIS').AsString;
               XDadosNfe.Destinatario.NomePais := DMMACS.TALX.FieldByName('NOMEPAIS').AsString;
               //deixa nulo todos os outros campos
               XDadosNfe.Destinatario.CPF      	 := '';
               XDadosNfe.Destinatario.CNPJ     	 := '';
               XDadosNfe.Destinatario.IE       	 := '';
               XDadosNfe.Destinatario.ISUFRAMA 	 := '';

               //com exce��o do nome da pessoa
               try
                   //Edmar - 30/03/2015 - Busca pelo nome da Pessoa
                   if DMMACS.TALX.FieldByName('NOME').AsString <> '' then
                       XDadosNfe.Destinatario.Nome := ValidaAcentos(DMMACS.TALX.FieldByName('NOME').AsString)
                   else
                       XDadosNfe.Destinatario.Nome := ValidaAcentos(DMMACS.TALX.FieldByName('razao_social').AsString);
               except
               end;

               //Edmar - 05/06/2015 - Se n�o foi informado c�digo do Pa�s coloca o padr�o brasileiro
               if DMMACS.TALX.FieldByName('CODPAIS').AsString = '' then
               begin
                   XDadosNfe.Destinatario.CodigoPais := '1058';
                   XDadosNfe.Destinatario.NomePais := 'Brasil';
               end
               else begin
                   XDadosNfe.Destinatario.CodigoPais := DMMACS.TALX.FieldByName('CODPAIS').AsString;
                   XDadosNfe.Destinatario.NomePais   := DMMACS.TALX.FieldByName('NOMEPAIS').AsString;
               end;
           end;

           //Nome do Destinat�rio
           If TiraCaracter(XDadosNfe.Destinatario.Nome, '.') = '' Then
               XDadosNfe.Destinatario.Nome := ValidaAcentos(DMMACS.TALX.FieldByName('NOME').AsString);
           //endere�o do destinat�rio
           XDadosNfe.Destinatario.Logradouro := TiraCaracter(ValidaAcentos(DMMACS.TALX.FieldByName('ENDERECO').AsString), '.');
           XDadosNfe.Destinatario.CEP := TiraCaracter(ValidaAcentos(DMMACS.TALX.FieldByName('CEP').AsString), '-');           
           //bairro do destinat�rio
           XDadosNfe.Destinatario.Bairro := TiraCaracter(ValidaAcentos(DMMACS.TALX.FieldByName('BAIRRO').AsString), '.');
           //Verifica numero do predio/residencia destinatario
           If Trim(DMMACS.TALX.FieldByName('ENDNUMERO').AsString) = '' Then
               XDadosNfe.Destinatario.Numero := 'S/N' //padr�o por n�o conter campo no banco de dados
           Else
               XDadosNfe.Destinatario.Numero := TiraPonto(Trim(DMMACS.TALX.FieldByName('ENDNUMERO').AsString)); // numero

           //IBGE
           XDadosNfe.Destinatario.CodigoMunicipio := XSetMunicipioIbge;
           //Nome Municipio do destinat�rio
           XDadosNfe.Destinatario.NomeMunicipio := ValidaAcentos(XSetMunicipioNome);
           //Uf do Destinat�rio
           XDadosNfe.Destinatario.UF := XSetUfDestino;

           //SUFRAMA
           XDadosNfe.Destinatario.ISUFRAMA := '';
           If (XSetInTipoPedido='PEDV') or (XSetInTipoPedido='ORDEM')
           Then Begin
               If Length(DMMACS.TALX.FieldByName('SUFRAMA').AsString) > 0 Then
                   XDadosNfe.Destinatario.ISUFRAMA := DMESTOQUE.Alx.FieldByName('SUFRAMA').AsString;
           End;

           //Se o campo estiver vazio ou = N significa que o mesmo n�o foi atualizado
           if (DMMACS.TALX.FieldByName('CONTRIBICMS').AsString = '') OR (DMMACS.TALX.FieldByName('CONTRIBICMS').AsString = 'N')
               OR (DMMACS.TALX.FieldByName('CONTRIBICMS').AsString = '0') OR (XEmiteNFCe) then
               XDadosNfe.Destinatario.indIEDest := '9'//ent�o atribui 9 (n�o contribuinte) para o destinat�rio
           else
               XDadosNfe.Destinatario.indIEDest := DMMACS.TALX.FieldByName('CONTRIBICMS').AsString;
       end
       else begin//se o cliente for o mesmo consumidor que est� cadastrado na loja
       	//valida se no campo NOMECLI do pedido de venda � o consumidor. apenas se n�o for entrada (pedido de compra)
           if (XSetInTipoPedido <> 'PEDC') AND (DMMACS.TALX.FieldByName('NOMECLIPED').AsString <> '') then
           begin
           	if (DMMACS.TALX.FieldByName('NOME').AsString <> DMMACS.TALX.FieldByName('NOMECLIPED').AsString)
                   AND not (AnsiContainsStr(Trim(UpperCase(DMMACS.TALX.FieldByName('NOMECLIPED').AsString)), 'CONSUMIDOR')) then
               begin
                   if XNFCeComCpf then
                   begin
                       //se n�o for o consumidor, passa o nome e o cpf para o objeto para enviar
                       //a nfc-e apenas com essas duas informa��es. tamb�m valida o CPF do cliente
                       if ValidCPF(Trim(TirarCarct01(DMMACS.TALX.FieldByName('CPFCNPJPED').AsString))) then
                       begin
                           XDadosNfe.Destinatario.CNPJ := '';
                           XDadosNfe.Destinatario.CPF := Trim(TirarCarct01(DMMACS.TALX.FieldByName('CPFCNPJPED').AsString));//o destinat�rio � pessoa fisica
                           XDadosNfe.Destinatario.Nome := ValidaAcentos(DMMACS.TALX.FieldByName('NOMECLIPED').AsString);

                           XTipoDocumento:=1;
                       end
                       else begin
                           //Verifica se destinario pessoa juridica
                           if (ValidaCGC(Trim(TirarCarct01(DMMACS.TALX.FieldByName('CPFCNPJPED').AsString)))=True) or (DMMACS.TALX.FieldByName('CPFCNPJ').AsString='99999999000191') then
                           begin
                               XDadosNfe.Destinatario.CNPJ := Trim(TirarCarct01(DMMACS.TALX.FieldByName('CPFCNPJPED').AsString));//o destinat�rio � pessoa fisica
                               XDadosNfe.Destinatario.Nome := ValidaAcentos(DMMACS.TALX.FieldByName('NOMECLIPED').AsString);
                               XDadosNfe.Destinatario.CPF := '';

                               XTipoDocumento:=2;
                           end
                           else begin
                               //Se destinat�rio n�o for nem pessoa fisica ne juridica (n�o passou na valida��o) interrompe o processo
                               Result:=False;
                               MessageDlg('Cpf ou Cnpj do Destinat�rio da Nfe n�o passou na valida��o. Verifique.', mtWarning, [mbOK], 0);
                               Exit;
                           end;
                       End;
                       //Se o campo estiver vazio ou = N significa que o mesmo n�o foi atualizado
                       if (DMMACS.TALX.FieldByName('CONTRIBICMS').AsString = '') OR (DMMACS.TALX.FieldByName('CONTRIBICMS').AsString = 'N')
                           OR (DMMACS.TALX.FieldByName('CONTRIBICMS').AsString = '0') OR (XEmiteNFCe) then
                           XDadosNfe.Destinatario.indIEDest := '9'//ent�o atribui 9 (n�o contribuinte) para o destinat�rio
                       else
                           XDadosNfe.Destinatario.indIEDest := DMMACS.TALX.FieldByName('CONTRIBICMS').AsString;
                   end;
               end;
           end;
       end;
   Except
       Result:=False;
   End;
End;

//Fun��o utilizada para setar os dados do emitente da Nfe (cliente usario do sistema)
Function TFMzrNfe.SetDadosEmitente: Boolean;
Begin
   Result:=True;
   Try
       Information('Adicionando dados do Emitente...');
       //Cria classe para dados do emitente
       XDadosNfe.Emitente := TEmitente.Create;

       //Filtramos as informa��es da cidade do emitente
       FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
       FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString, '');
       //Repassa todos os dados necess�rios do emitente, lembrando que eles j� devem ter sido v�lidados na tela do fisca
		If ValidaCGC(TirarCarct01(DMMACS.TEmpresa.FieldByName('CNPJ').AsString))=True
       Then Begin
       	XDadosNfe.Emitente.CNPJ := TirarCarct01(DMMACS.TEmpresa.FieldByName('CNPJ').AsString) //CNPJ do emitente
       End
       Else Begin
           Result:=False;
           NfeAddFalhas('O CNPJ no cadastro da empresa n�o passa no teste de valida��o');
       End;
      	XDadosNfe.Emitente.RegimeTributario:=DMMACS.TEmpresa.FieldByName('CRT').AsString;
       XDadosNfe.Emitente.Nome := ValidaAcentos(DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString); //raz�o social do emitente
       XDadosNfe.Emitente.NomeFantasia := ValidaAcentos(DMMACS.TEmpresa.FieldByName('FANTASIA').AsString); //nome fantasia do emitente
       XDadosNfe.Emitente.Logradouro := ValidaAcentos(DMMACS.TEmpresa.FieldByName('ENDERECO').AsString); //endere�o do emitente
       XDadosNfe.Emitente.Numero := TirarCarct01(DMMACS.TEmpresa.FieldByName('NUMERO').AsString); //padr�o por n�o possuir campo no banco
       XDadosNfe.Emitente.Complemento := ''; //padr�o por n�o ter o campo no banco
       XDadosNfe.Emitente.Bairro := ValidaAcentos(DMMACS.TEmpresa.FieldByName('BAIRRO').AsString); //bairro do emitente
       XDadosNfe.Emitente.CodigoMunicipio := DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString; //padr�o toledo, mas ap�s rodar o programa de atualiza��o do IBGE, pode ser feita compara��o
       XDadosNfe.Emitente.NomeMunicipio := ValidaAcentos(DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString); //padr�o mas pode ser realizada a compara��o
       XDadosNfe.Emitente.UF := DMGEOGRAFIA.WCidade.FieldByName('UF').AsString; //UF do emitente
       XDadosNfe.Emitente.CEP := TirarCarct01(DMMACS.TEmpresa.FieldByName('CEP').AsString); //CEP do emitente
       XDadosNfe.Emitente.IE := TirarCarct01(DMMACS.TEmpresa.FieldByName('INSC_EST').AsString); //insri��o estadual do emitente
       XDadosNfe.Emitente.IEST := DMMACS.TEmpresa.FieldByName('CAD_SRF').AsString;
   Except
       Result:=False;
   End;
End;

//Fun��o utilizada para setar os dados principais da  classe dadosfe
Function TFMzrNfe.SetDadosPrincipal: Boolean;
Begin
   Result:=True;
   Try
       //Cria classe de dados gerais para dados
       XDadosNfe := TNFe.Create;
       Information('Adicionando dados prim�rios...');
       //Cria subclasse de dados
       XDadosNfe.Dados := TIde.Create;
       //Procura dodos do c�digo da uf de origem
       XDadosNfe.Dados.UFCodigo := 41; //Seta estado de origem da Nfe
		if XEmiteNFCe then
       	XDadosNfe.Dados.modelo := 65 //NFC-e
       else
           XDadosNfe.Dados.modelo := 55; //Padrao Nfe

       if XEmiteNFCe then
       	XDadosNfe.Dados.TipoImpressao := 4 //NFC-e
		else
       	//Procura dodos do modelo da Danfe
           XDadosNfe.Dados.TipoImpressao := 1; //Padrao NF-e
           
       XDadosNfe.Dados.procEmi:=0;//Define que a emis�o esta sendo feita por um sistema do contribuinte

       //Controle de vers�o do aplicativo
       XDadosNfe.Dados.VersaoAplicativo := '4.1.50';

       Util := CoUtil.Create;
       XDadosNfe.Dados.finNFe := 1;
       XrefNfe := '';

       //Paulo 01/12/2010: Para nota de complementa��o
       if(FMenu.XComplementacao=True)then
       begin
          XDadosNfe.Dados.finNFe := 2;//complementa��o
          XrefNfe:= Util.NFeRef(XNfeChaveComp);//chave nf-e complementada
       end else
       begin
			{ NF-e 3 de ajuste}
           //Edmar - 11/03/2015 - Valida��o pra ver qual � o tipo de opera��o
           if (FMenu.XRemessaGarantia) OR (FMenu.XSimplesRemessa) OR (FMenu.XOutrosFisc) then
       		XDadosNfe.Dados.finNFe := 1;//NFE NORMAL

           if (FMenu.XDevolucao) then
           begin
           	//Edmar - 12/03/2015 - Se for nota de devolu��o outra entradas (emiss�o propria)
               //seta a finalidade para 4
           	XDadosNfe.Dados.finNFe := 4;//DEVOLU��ES
				XrefNfe:= Util.NFeRef(FMenu.XChaveNFe);//chave nf-e que ser� devolvida
           end;

           if FMenu.XNfceReferenciada then
           	XrefNfe:= Util.NFeRef(XNFeChaveComp);
       end;


       //Natureza de opera��o
       XDadosNfe.Dados.NatuOpera:= XSetInNatOperacao;
       //Forma de Pagamento
       If XSetInFormPagamento='� VISTA' Then
           XDadosNfe.Dados.FormaPagam:= 0
       Else
           XDadosNfe.Dados.FormaPagam:= 1;
       //Numero fiscal
       XDadosNfe.Dados.NumeroDocFisc := XSetInNumFiscal;

       if not XEmiteNFCe then
       begin
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' SELECT DTENTSAID DT, HORASAID HR ');
           if (XSetInTipoPedido = 'PEDV') then
           begin
               MDO.Query.SQL.Add(' FROM DOCFISSAIDA ');
               MDO.Query.SQL.Add(' WHERE(DOCFISSAIDA.COD_PEDIDO = :PEDIDO) ');
           end;
           if (XSetInTipoPedido = 'ORDEM') then
           begin
               MDO.Query.SQL.Add(' FROM DOCFISORD ');
               MDO.Query.SQL.Add(' WHERE(DOCFISORD.COD_ORDEM = :PEDIDO) ');
           end;
           if (XSetInTipoPedido = 'PEDC') then
           begin
               MDO.Query.SQL.Add(' FROM DOCFIS ');
               MDO.Query.SQL.Add(' WHERE(DOCFIS.COD_PEDIDO = :PEDIDO) ');
           end;
           MDO.Query.ParamByName('PEDIDO').AsInteger := XSetCodigoPedido;
           MDO.Query.Open;
           
           if (MDO.Query.FieldByName('DT').AsString = '') then
               XDadosNfe.Dados.DtHrSaiEnt := ''
           else
       	    XDadosNfe.Dados.DtHrSaiEnt := FormatDateTime('yyyy-mm-dd', StrToDate(MDO.Query.FieldByName('DT').AsString))+'T'+FormatDateTime('hh:mm:ss', Time())+XDiferencaTempoUTC
       end
       else
			XDadosNfe.Dados.DtHrSaiEnt  := '';
       XDadosNfe.Dados.hSaiEnt := TimeToStr(Time());

       //Data de Emiss�o
       //Edmar - 10/03/2015 - Formata a data e hora de emiss�o da NFe para o novo padr�o estabelecido
       XDadosNfe.Dados.DtHrEmissao := FormatDateTime('yyyy-mm-dd', Date())+'T'+FormatDateTime('hh:mm:ss', Time())+XDiferencaTempoUTC;

       //VERIFICA O TIPO DO PEDIDO A EMITIR
       If (XSetInTipoPedido='PEDV') or (XSetInTipoPedido='ORDEM') Then
           XDadosNfe.Dados.TipoDocFisc:=1;//remete a saida
       If (XSetInTipoPedido='PEDC') Then
           XDadosNfe.Dados.TipoDocFisc:=0;//remete a Entrada

       XDadosNfe.Dados.TipoEmissao := StrToInt(xTipoEmissao);
           
       //MUNICIPIO - CODIGO IBGE
       XDadosNfe.Dados.MunicipioCodigo := XSetMunicipioIbge;

       //Edmar - 10/03/2015 - Verifica se a opera��o � interestadual ou n�o
       if UpperCase(XUfDestinoOperacao) = 'EX' then
       	XDadosNfe.Dados.IdDest := 3
       else
       	//if XUfLocal <> XUfDestinoOperacao then
           if not xOperacaoInterna then
       		XDadosNfe.Dados.IdDest := 2
       	else
       		XDadosNfe.Dados.IdDest := 1;

       //Edmar - 10/06/2015 - Realiza a marca��o correta do cliente do cliente
       //0 = Normal
       //1 = Consumidor Final
       {
        DEVIDO A PARTILHA DE ICMS PARA O DESTINO
        VERIFICAR COMO SER� FEITO A MARCA��O DE CONSUMIDOR FINAL
       }                                                   
       if (XClienteConsumidorFinal) OR (XEmiteNFCe) OR (FMenu.XNfceReferenciada) then
       	XDadosNfe.Dados.indFinal := 1
       else
			XDadosNfe.Dados.indFinal := 0;

		XDadosNfe.Dados.indPres := XPresencaComprador;
   Except
       Result:=False;
   End;
End;

// Fun��o Utilizada para assinar o arquivo Xml
function TFMzrNfe.AssinarXML(const XML:WideString; const TipoNFe:WideString; out XMLAssinado:WideString):Boolean;
var
   Util:NFe_Util_2G_Interface;
    ///  1.Assinar: Assinatura Digital XML no padr�o do Projeto NF-e
    ///
    ///
    ///    Entradas:
    ///
    ///
    ///     XMLString: informa uma string com o XML que ser� assinado.
    ///     RefUri: informa a tag que ser� assinada (Ex. infNFe para NFe, infDPEC para DPEC, etc.) com a refer�ncia da URI a ser assinada.
    ///     NomeCertificado: informa o assunto do certificado que ser� utilizado para assinar o XML. O assunto do certificado � o retorno da funcionalidade pegaNomeCertificado.
    ///
    ///    Retornos:
    ///
    ///      Assinar : c�digo do resultado
    ///
    ///
    ///           5300 Assinatura realizada com sucesso.
    ///
    ///           5301 Erro: Certificado digital inexistente para [{0:0}], verifique se o Assunto (subject name) est� correto), ou talvez o certificado digital esteja fora do prazo de validade ou n�o esteja instalado para o usu�rio.
    ///           5302 Erro: A tag de assinatura [{0:0}]inexistE, verifique o nome da tag informada, Ex. de tag v�lida: infNFe
    ///           5303 Erro: A tag de assinatura [{0:0}] n�o � unica, a assinatura deve ser realizada em uma NF-e, a NF-e deve ser inserida no lote somente ap�s o processo de assinatura.
    ///           5304 Erro: Tentativa de assinar uma NF-e contida em um lote, a assinatura deve ser realizada em uma NF-e fora do lote, devendo ser inserida no lote somente ap�s o processo de assinatura.
    ///           5305 Erro: Falha no acesso ao XML (XML mal formado ou XML v�zio: [{0:0}] D
    ///           5306 Erro: Falha no acesso do certificado digital: [{0:0}]
    ///           5307 Erro: Falha na Assinatura: [{0:0}] - vide guia de uso da DLL - www.flexdocs.com.br/guiaNFe
    ///
    ///      Resultado : string XML assinada
    ///
    ///      msgResultado      : Literal da mensagem resultado
begin
	 Result := True;
    Util := CoUtil.Create;
    if XML <> '' then
    begin
		XMLAssinado := Util.Assinar(XML, XSetRefUri, XNfeNomeCertificado, I, XMsgGeral);
       if i <> 5300
       then begin
           MessageDlg( 'Processo de assinatura falhou...'+XMsgGeral, mtInformation, [mbOk], 0);
           Util := nil;
           Result := False;
       end
       else begin
           XXmlfinal:=XMLAssinado;//passa o xml assinado para a variavel
           Util := nil;
           Result := True;
           Exit;
       end;
   end
   else begin
       MessageDlg( 'Documento XML para assinatura n�o informado...', mtInformation, [mbOk], 0);
       Result := False;
       Exit;
  end;
end;

//Fun��o para abrir o xml para adicionar no lote
Function TFMzrNfe.XmlAbriradicionaXmlLote(const idNFe:String; out XMLEnviNFe:IXMLNode):Boolean;
var
  tmpXMLDoc: TXMLDocument;
begin

   // tirar espa�os
   //idNFe := Trim(idNFe);

  // verificar se � v�lido o id
 if (Trim(idNFe) <> '') or (Length(idNFe) = 44) then begin

    // Cria a vari�vel baseada no TXMLDocument
    tmpXMLDoc := TXMLDocument.Create(self);

    try
    With tmpXMLDoc do begin

       // Le conte�do do arquivo XML informado
       tmpXMLDoc.LoadFromFile('C:\Mzr\Arquivos\NFe\TMP\'+idNFe+'-enviNFe.xml');

       // ADICIONA A NOTA na variavel
       XMLEnviNFe := tmpXMLDoc.DocumentElement;


       //valida��o

       if not ValidarXML(XMLEnviNFe.XML, 1) then begin
           Result := False;
           Exit;
       end;

       // pega o id da nota adicionada
       // := tmpXMLDoc.ChildNodes['NFe'].ChildNodes['infNFe'].AttributeNodes['Id'].Text;// PEGA O ID PARA CONFERIR DEPOIS


       Result := True;

      end;
       finally
           tmpXMLDoc.Free;
       end;


   end else begin

       Result := False;

     end;
end;

//Fun��o utilizada para gerar lote de arquivos xml (adiciona apenas um arquivo por lote)
function TFMzrNfe.XmlGerarLote(const idLote:String; const nfeIDArray : Array of String):Boolean;
var
  qtdeErros, tamArray, i: Integer;
  vXMLLote: TXMLDocument;
  tmpXML: IXMLNode;
  teste: WideString;
begin
   Result:=True;
   Try
       //cria compoentes para receber o lote xml
       vXMLLote := TXMLDocument.Create(self);
       vXMLLote.Active := True;
       vXMLLote.Version := '1.0';
       vXMLLote.Encoding := 'UTF-8';
       //Tipo Nota Fiscal Eletronica
       vXMLLote.AddChild('enviNFe','http://www.portalfiscal.inf.br/nfe');
       //Tipo Versao da NF-e
       vXMLLote.ChildNodes['enviNFe'].Attributes['versao'] := '1.10';
       // id do lote
       vXMLLote.ChildNodes['enviNFe'].AddChild('idLote').NodeValue := idLote;

       tamArray := Length(nfeIDArray);

       // vare o array add todas as notas no lote
       for i := 0 to tamArray-1 do
       begin
           //teste := nfeIDArray[i-1];
           if not XmlAbriradicionaXmlLote(nfeIDArray[i], tmpXML) then
           begin
              Result := False;
              Exit;
           end;
           vXMLLote.ChildNodes['enviNFe'].ChildNodes.Add(tmpXML);
       end;

       //adiciona o xml ao arquivo de lotes
       vXMLLote.ChildNodes['enviNFe'].ChildNodes.Add( tmpXML);
       verificaDiretorio('C:\Mzr\Arquivos\NFe\loteNFe');
       // salva o xml no pasta de NFe\nfeLote
       vXMLLote.SaveToFile('C:\Mzr\Arquivos\NFe\TMP\loteNFe\'+idLote+'-env-lote.xml');
       vXMLLote.Free;
   Except
       Result:=False;
       vXMLLote.Free;
   End
end;

//Fun��o que gera o Xml a partir dos dados inseridos nas classes
Function TFMzrNfe.XmlGerarArquivoXml : Boolean;
Var
	I, J: Integer;
   ano_aux, mes_aux, dia_aux:word;
   cUF, modelo,ano, mes, serie, numero, codigoSeguranca, cNF, cDV: WideString;
   Fsaida: TextFile;
   XProd : TProd;
   XImposto: TImposto;
   XTotalNfe: TTotalICMS;
   XTotalIss: TTotalISS;
   XTransporte: TTransporte;
   XCombustivel: TComb;
   XImportacao: TImportacao;
   XAdicaoImportacao: TAdicao;
   lacre, transp, transportador, vol, reboque, veicTransp, detalhe, retTransp, transporta, adicionais, imposto, COFINS, COFINSST, emit, II: String;
   codCOFINS, PIS,PISST, codPIS, dest, referenciada, ide, produtos, TotalIss, totalICMS, RetTrib, total, especifico, produto, auxiliar, combustivel, autXml, infRespTec: String;
	exportacao, pagamento, detPag: String;   
   ICMS, IPI, codST: String;
   F, XTotalMed, modFrete, tamArray, XTotalAdicao: Integer;
   CST, importacao, adicaoImp, IcmsUfDest, xInfAdcProduto: String;
Begin
   Result:=True;
   Try
       Information('Gerando arquivo XML para Nfe...');

       //Cria classe principal da dll flexdoc
       Util := CoUtil.Create;

       // gerar chave da Nfe para xml
       DecodeDate(Date(), ano_aux, mes_aux, dia_aux);
       cNF:='';
       cDV:='';
       cUF := IntToStr(XDadosNfe.Dados.UFCodigo);
       ano := Copy(IntToStr(ano_aux), 3, 2);
       mes := IntToStr(mes_aux);
       if not XmlChaveAcesso(cUF{41}, ano, mes, XDadosNfe.Emitente.CNPJ , XNfeModelo, XNfeSerie, IntToStr(XSetInNumFiscal), XNfeCodigoSeguranca, cNF, cDV, XNfeChave)
       then begin
           XMsgGeral := 'Erro na gera��o da chave de acesso da NFe!';
           Result := False;
           Exit;
       end;
       
       ide := Util.identificador400(XDadosNfe.Dados.UFCodigo, StrToInt(cNF), XDadosNfe.Dados.NatuOpera, 
           XDadosNfe.Dados.modelo, StrToInt(XNfeSerie), XDadosNfe.Dados.NumeroDocFisc, XDadosNfe.Dados.DtHrEmissao, XDadosNfe.Dados.DtHrSaiEnt,
           XDadosNfe.Dados.TipoDocFisc, XDadosNfe.Dados.IdDest, XDadosNfe.Emitente.CodigoMunicipio, XrefNfe, XDadosNfe.Dados.TipoImpressao,
           XDadosNfe.Dados.TipoEmissao, StrToInt(cDV), XDadosNfe.Dados.TipoAmb, XDadosNfe.Dados.finNFe, XDadosNfe.Dados.indFinal, XDadosNfe.Dados.indPres,
           XDadosNfe.Dados.procEmi, XDadosNfe.Dados.VersaoAplicativo, XNfeDataConti, XNfeTextoConti);

       // PASSO 02 - GERAR  DADOS DO EMITENTE NO XML
       XDadosNfe.Emitente.CodigoPais:='1058';
       XDadosNfe.Emitente.NomePais:='Brasil';
		emit := Util.emitente2G(XDadosNfe.Emitente.CNPJ, '', XDadosNfe.Emitente.Nome, XDadosNfe.Emitente.NomeFantasia, XDadosNfe.Emitente.Logradouro, XDadosNfe.Emitente.Numero, XDadosNfe.Emitente.Complemento, XDadosNfe.Emitente.Bairro, XDadosNfe.Emitente.CodigoMunicipio, XDadosNfe.Emitente.NomeMunicipio, XDadosNfe.Emitente.UF, XDadosNfe.Emitente.CEP, XDadosNfe.Emitente.CodigoPais, XDadosNfe.Emitente.NomePais, XDadosNfe.Emitente.Telefone, XDadosNfe.Emitente.IE, XDadosNfe.Emitente.IEST, '', '', XDadosNfe.Emitente.RegimeTributario);

       //Edmar - 16/05/2018 - quando emite nfce sem CPF o destinat�rio � vazio
       if not (XNFCeComCpf) AND (XEmiteNFCe) then
			dest := '' 
       else begin//se for consumidor final e n�o foi informado logradouro
           //Edmar - 08/10/2015 - Se for NFC-e e for pra enviar NFC-e com cpf passa o nome e o cpf do cara sem end.
       	if (XEmiteNFCe) AND (XNFCeComCpf) then//informa apenas nome e cpf do cliente
				dest := Util.destinatario310(XDadosNfe.Destinatario.CNPJ, XDadosNfe.Destinatario.CPF, XDadosNfe.Destinatario.idEstrangeiro, XDadosNfe.Destinatario.Nome,
           		'',	'', '', '', '', '', '', '', '', '', '', XDadosNfe.Destinatario.indIEDest, '', '', '', '')
			else
				dest := Util.destinatario310(XDadosNfe.Destinatario.CNPJ, XDadosNfe.Destinatario.CPF, XDadosNfe.Destinatario.idEstrangeiro, XDadosNfe.Destinatario.Nome, XDadosNfe.Destinatario.Logradouro,
       			XDadosNfe.Destinatario.Numero, XDadosNfe.Destinatario.Complemento, XDadosNfe.Destinatario.Bairro, XDadosNfe.Destinatario.CodigoMunicipio,
       			XDadosNfe.Destinatario.NomeMunicipio, XDadosNfe.Destinatario.UF, XDadosNfe.Destinatario.CEP, XDadosNfe.Destinatario.CodigoPais,
                   XDadosNfe.Destinatario.NomePais, XDadosNfe.Destinatario.Telefone, XDadosNfe.Destinatario.indIEDest, XDadosNfe.Destinatario.IE, XDadosNfe.Destinatario.ISUFRAMA, '', '');
       end;
       
       //PASSO 04 - GERAR PRODUTOS EM XML
       XTotalProdLista := Length(XDadosNfe.Produtos);
       for i := 1 to XTotalProdLista do
       begin
           XProd := XDadosNfe.Produtos[i-1].Produto;
           XImposto := XDadosNfe.Produtos[i-1].Imposto;
           combustivel := '';
           if XDadosNfe.Produtos[i-1].Produto.Combutivel <> nil then
           begin
           	XCombustivel := XDadosNfe.Produtos[i-1].Produto.Combutivel;
               
               combustivel := Util.comb400(XCombustivel.CodigoAnp, XCombustivel.DescricaoAnp, 0, 0, 0, 0, '', 0, XCombustivel.UfConsumo, 0, 0, 0, '');
           end;

           importacao := '';
           //retorna dados de importacao
           if XDadosNfe.Produtos[i-1].Produto.Importacao <> nil then
           begin
           	//busca dados da adi��o do DI
               XTotalAdicao := Length(XDadosNfe.Produtos[i-1].Produto.Importacao.Adicoes);
               adicaoImp := '';
               for j := 1 to XTotalAdicao do
               begin
               	XAdicaoImportacao := XDadosNfe.Produtos[i-1].Produto.Importacao.Adicoes[j-1];

               	adicaoImp := adicaoImp + Util.adi310(XAdicaoImportacao.NumeroAdicao, XAdicaoImportacao.Sequencia, XAdicaoImportacao.CodigoFabricante,
                   	XAdicaoImportacao.Desconto, XAdicaoImportacao.Drawback);
               end;

           	XImportacao := XDadosNfe.Produtos[i-1].Produto.Importacao;

               importacao := Util.DI310(XImportacao.Numero, XImportacao.DataRegistro, XImportacao.LocalDesembarque, XImportacao.UfDesembarque, XImportacao.DataDesembarque,
               	XImportacao.TipoTransporte, XImportacao.ValorAfrmm, XImportacao.FormaImportacao, XImportacao.CnpjAdquirente, XImportacao.UfAdquirente, XImportacao.CodigoExportador, adicaoImp);
           end;

           //////////////////
           //01-TAG PRODUTO//
           //////////////////
			//produto := Util.produto2G(XProd.CodigoProduto, XProd.GTIN, XProd.Descricao, XProd.CodigoNCM, XProd.CodigoEXTIPI, XProd.CFOP, XProd.UnidadeComercial, XProd.QntComercial, XProd.ValorUnitario, XProd.ValorBruto, XProd.GTIN, XProd.UnidadeTributavel,
                                     //XProd.QntTributavel, XProd.ValorUnitTribut, XProd.ValorFrete {XDadosNfe.Total.VlrFreteXProd.ValorFrete}, XProd.ValorSeguro, XProd.ValorDesconto, XProd.ValorOutros, 1, importacao, combustivel, '', 0);

			produto :=
               Util.produto400(XProd.CodigoProduto, XProd.GTIN, XProd.Descricao, XProd.CodigoNCM, '', XProd.CodigoCEST, '', '', XProd.CodigoBeneficioFiscal,
                   XProd.CodigoEXTIPI, XProd.CFOP, XProd.UnidadeComercial, XProd.QntComercial, XProd.ValorUnitario, XProd.ValorBruto,
                   XProd.GTIN, XProd.UnidadeTributavel, XProd.QntTributavel, XProd.ValorUnitTribut, XProd.ValorFrete, XProd.ValorSeguro,
                   XProd.ValorDesconto, XProd.ValorOutros, 1, importacao, '', combustivel, XProd.NumPedCompra, XProd.NumItemPedCompra, '', '');
                   
           //Tributa��o pelo ICMS
         	CST:=ConcatZero(IntToStr(XImposto.ICMS.CodigoST), 3);
           Auxiliar:=Copy(CST, 0, 1);
           If Auxiliar='' Then
               auxiliar:='0';
           If (auxiliar<>'0') and (auxiliar<>'1') and (auxiliar<>'2') and (auxiliar<>'5') and (auxiliar<>'9') and (auxiliar<>'4')
           Then begin
               Result:=False;
               NfeAddFalhas(' C.S.T Inv�lido - C�digo de cst ('+IntToStr(XImposto.ICMS.CodigoST)+') para o produto: '+XProd.CodigoProduto+' - '+XProd.Descricao);
           End;
           codST := Copy(CST,2, 2);
           If CST='101'
           Then Begin
               codST:='101';
               auxiliar:='0';
           End;
           If CST='103'
           Then Begin
               codST:='103';
               auxiliar:='0';
           End;
           If CST='102'
           Then Begin
               codST:='102';
               auxiliar:='0';
           End;
           If CST='104'
           Then Begin
               codST:='104';
               auxiliar:='0';
           End;
           If CST='500'
           Then Begin
               codST:='500';
               auxiliar:='0';
           End;
           If CST='201'
           Then Begin
               codST:='201';
               auxiliar:='0';
           End;
           if CST='203' then
           begin
           	codST := '203';
               auxiliar := '0';
           end;
           If CST='900' then
           begin
           	codST := '900';
               auxiliar := '0';
           end;
           //Edmar - 05/09/2014 - Adicionado mais um CST na valida��o
           //o mesmo ocorreu acima e abaixo onde foi adicionado a condi��o (auxiliar <> '4')
           If CST='400' then
           begin
           	codST := '400';
               auxiliar := '0';
           end;


           If codST='' Then
               codST:='00';
           If (codST<>'103') and (codST<>'101') and (codST<>'00') and (codST<>'10') and (codST<>'20') and (codST<>'30') and (codST<>'40') and (codST<>'41') and (codST<>'50') and (codST<>'51') and (codST<>'60') and (codST<>'70') and (codST<>'90')
           Then Begin
               If (codST<>'102') and (codST<>'104') and (codST<>'500') and (codST<>'201') and (codST<>'203') and (codST<>'900') and (codST<>'400')
               Then Begin
                   Result:=False;
                   NfeAddFalhas(' C.S.T Inv�lido - C�digo de cst ('+IntToStr(XImposto.ICMS.CodigoST)+') para o produto: '+XProd.CodigoProduto+' - '+XProd.Descricao)
				End;
           End;
           ////////////////////
			//02 - TAG DE ICMS//
           ////////////////////

           //se (NFe) AND (CST/CSOSN = 60 OR 500) AND (N�O consumidor final)
           //  CRIA vBCSTRet, pST, vICMSSubstituto, vICMSSTRet
           //cria o ST retido quando for NFE, CST = 500 ou 60 e n�o consumidor final 
           if (XEmiteNFCe = False) AND ((codST = '500') OR (codST = '60')) AND (XDadosNfe.Dados.indFinal = 0) then
           begin
               ICMS := Util.icmsEfetNT201805(Auxiliar, codST, XImposto.ICMS.ValorBCSTRet, XImposto.ICMS.AliquotaSTCF,
                   XImposto.ICMS.ValorIcmsSubstituto, XImposto.ICMS.ValorSTRet, 0, 0, 0, 0, 0, 0, 0, 0, 0);
           end
           else begin
			    ICMS := Util.icms400(Auxiliar, codST, XImposto.ICMS.ModDetBC, XImposto.ICMS.PercRedBC, XImposto.ICMS.ValorBC,
                   XImposto.ICMS.AliquotaICMS, XImposto.ICMS.ValorICMS, XImposto.ICMS.ModBDST, XImposto.ICMS.PercValorST,
                   XImposto.ICMS.PercRedST, XImposto.ICMS.ValorBCST, XImposto.ICMS.AliquotaST,
                   XImposto.ICMS.ValorST, 0, 0, 0, 0, 0, 0, '', XImposto.ICMS.ICMS_pCredSN, XImposto.ICMS.ICMS_vCredICMSSN,
                   0, 0, 0, 0, XImposto.ICMS.ValorBaseFCP, XImposto.ICMS.AliquotaFCP, XImposto.ICMS.ValorFCP,
                   XImposto.ICMS.ValorBaseFCPST, XImposto.ICMS.AliquotaFCPST, XImposto.ICMS.ValorFCPST,
                   XImposto.ICMS.ValorBaseFCPSTRet, XImposto.ICMS.AliquotaFCPSTRet, XImposto.ICMS.ValorFCPSTRet,
                   XImposto.ICMS.AliquotaSTCF);
           end;
           
           case XImposto.PIS.CodigoPIS of
               1 : codPIS := '01';
               2 : codPIS := '03';
               3 : codPIS := '04';
               6 : codPIS := '06';
           else
               codPIS := '99';
           end;
           /////////////
           // TAG DE PIS
           PIS := Util.PIS(codPIS, XImposto.PIS.ValorBC, XImposto.PIS.AliquotaPer, XImposto.PIS.Valor, XImposto.PIS.QntVend, XImposto.PIS.AliquotaReais);
           Case XImposto.COFINS.CodigoCOFINS of
               1 : codCOFINS := '01';
               2 : codCOFINS := '03';
               3 : codCOFINS := '04';
           else
               codCOFINS := '99';
           end;

           II := '';
           if XImposto.II <> nil then
           begin
               II := Util.II(XImposto.II.ValorBC, XImposto.II.OutDespesas, XImposto.II.ValorII, XImposto.II.ValorIOF);
           end;

       	//////////// }
           //TAG COFINS
       	COFINS := Util.COFINS(codCOFINS, XImposto.COFINS.ValorBC, XImposto.COFINS.AliquotaPer, XImposto.COFINS.Valor, XImposto.COFINS.QntVend, XImposto.COFINS.AliquotaReais);
			///////////}
			//TAG IPI
           if XEmiteNFCe then
				IPI := ''
           else
	    		IPI := Util.IPI400('', '', 0, '999', '50', XProd.ValorBruto-XProd.ValorDesconto, XImposto.IPI.AliquotaIPI, XImposto.IPI.ValorIPI, 0, 0);

          IcmsUfDest := '';
          if XImposto.ICMSUFDEst <> nil then
          begin
            IcmsUfDest :=
               Util.ICMSUFDest400(XImposto.ICMSUFDEst.ValorBCUFDest, XImposto.ICMSUFDEst.ValorBCFCPUFDest, XImposto.ICMSUFDEst.PercFCPUFDest,
                   XImposto.ICMSUFDEst.PercIcmsUFDest, XImposto.ICMSUFDEst.PercIcmsInter, XImposto.ICMSUFDEst.PercIcmsInterPart,
                   XImposto.ICMSUFDEst.ValorFCPUFDest, XImposto.ICMSUFDEst.ValorIcmsUFDest, XImposto.ICMSUFDEst.ValorIcmsUFRemetente);
          end;

           ///////////////////
           //TAG PARA IMPOSTOS
           imposto := '';
           Imposto := Util.impostoNT2015003(XProd.ValorTotalTributo, ICMS, IPI, II, PIS, '', COFINS, '', '', IcmsUfDest);

           /////////////////
           //TAG ADICIONAIS
           xInfAdcProduto := XDadosNfe.Produtos[i-1].InfAdicional+#13+'Valor aproximado do tributo = R$' + formatfloat('###,##0.00', XProd.ValorTotalTributo);
           if XImposto.ICMS.ValorFCP > 0 then
               xInfAdcProduto := xInfAdcProduto + ' Valor FCP = R$ '+ FormatFloat('###,##0.00', XImposto.ICMS.ValorFCP);
               
           adicionais := '';
           adicionais := Util.infAdProd(xInfAdcProduto);
           ///////////////
           //TAG DETALHE//
           ///////////////
           detalhe := detalhe + Util.detalhe310(i, produto, imposto, adicionais, XImposto.IPI.AliqDevolvida, XImposto.IPI.ValorIPI);           
       End;

       //PASSO 05 - DADOS TOTAIS PARA XML
       XTotalNfe := XDadosNfe.Total;

       totalICMS :=
           Util.totalICMS400(XTotalNfe.VlrBCICMS, XTotalNfe.VlrICMS, XTotalNfe.VlrBCST, XTotalNfe.VlrtST, XTotalNfe.VlrProdServ,
               XTotalNfe.VlrFrete, XTotalNfe.VlrSeguro, XTotalNfe.VlrDesconto, XTotalNfe.VlrII, XTotalNfe.VlrIPI, XTotalNfe.VlrPIS,
               XTotalNfe.VlrCOFINS, XTotalNfe.VlrDespesa, XTotalNfe.VlrTotal, XTotalNfe.VlrTotalTributacao, 0, XTotalNfe.VlrTotalIcmsUfDest,
               XTotalNfe.VlrTotalIcmsUfRemet, XTotalNfe.VlrTotalFcpUfDest, XTotalNfe.VlrTotalFcp, XTotalNfe.VlrTotalFcpSt,
               XTotalNfe.VlrTotalFcpStRet, XTotalNfe.VlrTotalIpiDevolvido);

       If xContemImpostosRetidos = True
       Then Begin
           RetTrib := Util.tributoRetido(  XDadosNfe.TributoRetido.VlrRetPIS,
                                           XDadosNfe.TributoRetido.VlrRetCOFINS,
                                           XDadosNfe.TributoRetido.VlrRetCSLL,
                                           XDadosNfe.TributoRetido.VlrBCIRRF,
                                           XDadosNfe.TributoRetido.VlrIRRF,
                                           XDadosNfe.TributoRetido.VlrBCRetPrev,
                                           XDadosNfe.TributoRetido.VlrRetPrev);

           total := Util.total(totalICMS, '', RetTrib);
       End
       Else Begin
           total := Util.total(totalICMS, '', '');
       End;


       XTransporte := XDadosNfe.Transporte;

       //Dados dos transportes da NF-e

       //Modalidade do frete
       //0 - por conta do emitente;
       //1 - por conta do destinatario
       //9 - SEM FRETE
       modFrete := XTransporte.ModFrete;
       transporta := '';
       retTransp := '';
       veicTransp := '';
       lacre := '';
       vol := '';
       reboque := '';
       transportador := '';

       //PASSO 06 - DADOS DE TRANSPORTE PARA XML
       if XTransporte.Transportador <> nil
       then begin
           //Dados do transportador
           transporta := Util.transporta(XTransporte.Transportador.CNPJ, XTransporte.Transportador.CPF, XTransporte.Transportador.Nome,
                           XTransporte.Transportador.IE, XTransporte.Transportador.Endereco, XTransporte.Transportador.Municipio,
                           XTransporte.Transportador.UF);

           //   Dados do veiculo
           if XTransporte.Veiculo <> nil
           then begin
               veicTransp := Util.veicTransp(XTransporte.Veiculo.placa, XTransporte.Veiculo.UF, XTransporte.Veiculo.RNTC);
           end;

           //Dados do reboque
           if XTransporte.Reboque <> nil
           then begin
               reboque := Util.reboque(XTransporte.Reboque.placa, XTransporte.Reboque.UF, XTransporte.Reboque.RNTC);
           end;

           // grupo de volumes
           if XTransporte.Volume <> nil
           then begin
              if XTransporte.Volume.Lacres <> nil
              then begin
                    {for i:=0 to Length(XTransporte.Volume.Lacres)-1 do
                    begin
                       lacre := lacre + Util.lacres(XTransporte.Volume.Lacres[i].Numero);
                    end;}
              end;
              vol := '';
              vol := Util.vol(XTransporte.Volume.QntVol, XTransporte.Volume.Especie, XTransporte.Volume.Marca,
                XTransporte.Volume.NumeracaoVol, XTransporte.Volume.PesoLiquido, XTransporte.Volume.PesoBruto, lacre);
           end;
       end;//-------------------FIM-------------------
       if (XEmiteNFCe) OR (FMenu.XNfceReferenciada) then
       	transportador := Util.transportador2G('9', '', '', '', '', '', '', '')
       else
       	transportador := Util.transportador2G(IntToStr(modFrete), transporta, retTransp, veicTransp, reboque, '', '', vol);

       exportacao := '';
       //Edmar - 19/08/2015 - se n�o for nota de entrada e o cliente for estrangeiro
       if not (FMenu.XNotaEntrada) AND (XEstrangeiro) then//informa valores de importa��o
           exportacao := Util.exporta310(XDadosNfe.Exportacao.UFEmbarque, XDadosNfe.Exportacao.LocalEmbarque, '');

       if (XDadosNfe.Dados.finNFe = 3) OR (XDadosNfe.Dados.finNFe = 4) then
       begin
           detPag := Util.detPag('', '90', 0, '', '', '', '');
           pagamento := Util.pagamento400(detPag, 0);
       end
       else
       begin
           detPag := Util.detPag('', '01', XTotalNfe.VlrTotal, '', '', '', '');
           pagamento := Util.pagamento400(detPag, 0);
       end;

       if Length(XDadosNfe.InfAdicionais) > 1 Then
           adicionais := Util.infAdic(TirarAcentos(True, XDadosNfe.InfAdicionaisFisco), TirarAcentos(True, XDadosNfe.InfAdicionais), '', '', '')
       else
           adicionais := '';

       if XDadosNfe.AutXML <> nil then
       begin
           autXml := Util.autXML(XDadosNfe.AutXML.CNPJ, XDadosNfe.AutXML.CPF);
       end
       else
           autXml := '';

       infRespTec := Util.infRespTec('11325696000142', 'Alex Arlati Mazur', 'alex@mzrsistemas.com', '4530554745', '', '', '');

       //GERA XML FINAL
       //Edmar - 09/03/2015 - ao inves de passar o valor 2.00 fixo, busca a vers�o da NFe pela variavel auxiliar
       //XXmlfinal := Util.NFe2G(XNFeVersao {'2.00'}, XNfeChave, ide, emit, '', dest, '', '', detalhe, total, transportador, '', adicionais, '', '', '');
     	//Chamada NFe2G se tornou obsoleta depois que o layout 3.10 entrou em vigor
		XXmlfinal := Util.NFe201805(XNFeVersao, XNfeChave, ide, emit, '', dest, '', '', detalhe, total, transportador,
           '', pagamento, adicionais, exportacao, '', '', autXml, infRespTec);

       //grava xml parcial em disco
       XXmlfinal := TirarAcentos(False, XXmlfinal);

       verificaDiretorio('C:\Mzr\Arquivos\NFe\TMP\');
       If FileExists('C:\Mzr\Arquivos\NFe\TMP\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-enviaNFe.xml') Then
           DeleteFile('C:\Mzr\Arquivos\NFe\TMP\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-enviaNFe.xml');
       AssignFile(Fsaida, 'C:\Mzr\Arquivos\NFe\TMP\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-enviaNFe.xml');
     	{$I-}
     	Reset(Fsaida);
     	{$I+}
     	if IOResult = 0 then
       	Append(Fsaida)
     	else
       	Rewrite(Fsaida);

       Write(Fsaida, XXmlfinal);
       CloseFile(Fsaida);

       //Valida o xml
       //68 sinaliza que deve usar o schema 4.00 da NF-e para validar o XML
       if not ValidarXML(XXmlfinal, 68)
       then begin
           //O arquivo xml n�o passou pela valida��o
           If Mensagem('Confirma��o do usu�rio', 'O ARQUIVO XML N�O PASSOU PELO TESTE DE VALIDA��O'+#13+'Deseja enviar o arquivo xml da mesma forma?', '', 2, 3, False, 'c')=2
           Then Begin
               Result:=True;
           End
           Else Begin
               Result := False;
               XMsgGeral:='Erro na valida��o do arquivo recebido';
               Exit;
           End;
       end;
	    XXmlNfe := XXmlfinal;
   Except
       Result:=False;
   End;
End;

//Fun��o que alimenta os dados ca classeTDadosNfe
Function TFMzrNfe.XmlAlimentaDados: Boolean;
Begin
   Result:=True;
   Try
       //Seta dodos do emitente da Nfe (cliente usuario da Nfe)
       If SetDadosEmitente=False Then
       Begin
           Result:=False;
       End
       Else Begin
           //Seta dados do Destinatario (cliente do cliente)
           If SetDadosDestinatario=False
           Then Begin
               Result:=False;
           End
           Else Begin
               //Passa a inserir dados de Produtos
               If SetDadosProdutos=False
               Then Begin
                   Result:=False;
               End
               Else Begin
                   //Seta valores totais da Nota Fiscal
                   If SetDadosTotalNfe=False
                   Then Begin
                       Result:=False;
                   End
                   Else Begin
                       //Seta dados da transportadora
                       If SetDadosTransporte=False
                       Then Begin
                           Result:=False;
                       End
                       Else Begin
                               //Seta dados adicionais a nfe
                             If SetDadosAdicionais=False
                             Then Begin
                                 Result:=False
                             End
                             Else Begin
                             	if SetDadosExportacao = False then
                               	Result := False
                               else begin
                             	    if SetDadosImpostosRetidos = False then
                               	    Result := False
                                   else begin
                                       if SetDadosAutorizacaoXML = False then
                                           Result := False;
                                   End;
                               end;
                             End;
                       End;
                   End;
               End;
           End;
       End;
   Except
       Result:=False;
   End;
End;

//Fun��o que inicializa todo o processo de produ��o e envio de Nfe
Function TFMzrNfe.ProduzirNfe: Boolean;
Begin
   Result:=True;
   Try
       //Chama fun��o para gerar Xml total da Nfe para envio
       If XmlGerar=False
       Then Begin
           Result:=False;
       End;
   Except
       Result:=False;
   End;
End;

//Fun��o para gravar os dados da nfe em banco de dados
Function TFMzrNfe.NfeVisualizanoSefaz : Boolean;
Begin
    //Copi para o Clipboard a chave da Nfe Ctrl+C
    Information('com Ctrl+v � possivel colar a chave diretamente no campo para consulta');
    Clipboard.AsText := XNfeChave;
    {If Mensagem('Verifica��o', 'Deseja verificar NFe no Sefaz?', '', 2, 3, False, 'c')=2
    Then Begin
    	Try
       	StrToint(FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('sefaz').Text);
           
			If StrToInt(FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('sefaz').Text)=1 Then
				shellexecute(handle, 'open', 'https://www.nfe.fazenda.gov.br/portal/FormularioDePesquisa.aspx?tipoconsulta=completa', NiL, NiL, SW_SHOWNORMAL);
			If StrToInt(FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('sefaz').Text)=2 Then
				shellexecute(handle, 'open', 'http://www.fazenda.pr.gov.br/index.php/', NiL, NiL, SW_SHOWNORMAL);
       Except
			shellexecute(handle, 'open', 'https://www.nfe.fazenda.gov.br/portal/FormularioDePesquisa.aspx?tipoconsulta=completa', NiL, NiL, SW_SHOWNORMAL);
       End;
    End; }
End;
//Fun��o para gravar os dados da nfe em banco de dados
Function TFMzrNfe.GravaInfoBanco : Boolean;
var
   Fsaida: TextFile;
   XProtocolo: WideString;
   XCaminhoXml: String;
   XNumRetorno: Integer;
   XReciboDist: WideString;
Begin
   Result:=True;
   Try
   	//Edmar - 16/06/2015 - Faz a busca do XML de distrui��o para salvar no banco de dados
   	XProcNfe := Util.BuscaNFe2G(XSiglaWS, XNfeTipoAmbiente, XNfeXmlAss, XNfeRecibo, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg, XNfeRetornoWS, I, XMsgGeral, XProtocolo, XNfeDhRecbto, XMsgcabMsg, XMsgDadosMsg, '', '', '', XNfeLicenca);

       //grava resultado em banco de dados
       If XSetInTipoPedido='PEDV'
       Then Begin
           DMSAIDA.TFiscPV.Edit;
           DMSAIDA.TFiscPV.FieldByName('COD_DOCFISC').AsInteger;
           DMSAIDA.TFiscPV.FieldByName('SERIE').AsString := '55';
           DMSAIDA.TFiscPV.FieldByName('NFESERIE').AsString := XNfeSerie;
           DMSAIDA.TFiscPV.FieldByName('NFEXML').AsString := XXmlNfe;
           DMSAIDA.TFiscPV.FieldByName('NFEXMLDIST').AsString := XProcNfe;
           DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString := XNfeChave;
           DMSAIDA.TFiscPV.FieldByName('NFELOTE').AsString := XNfeCodLote;
           DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString := XNfeRecibo;
           DMSAIDA.TFiscPV.FieldByName('NFEPROTOCOLO').AsString := XNfeProtocolo;
           DMSAIDA.TFiscPV.FieldByName('TIPODOCFIS').AsString := '3';//Nota Fiscal Eletronica
           DMSAIDA.TFiscPV.FieldByName('URL_QRCODE').AsString := XURLNFCe;
           If (XMsgNumRetorno='100') OR (XMsgNumRetorno='150') Then
           	DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 1;//Uso Autorizado
           If (XMsgNumRetorno='302') or (XMsgNumRetorno='301') or (XMsgNumRetorno='205') or (XMsgNumRetorno='110')
           Then Begin
           	DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 4;//Uso Denegado
               DMSAIDA.TPedV.Edit;
               DMSAIDA.TPedV.FieldByName('SITUACAO').AsString:='DENEGADO';//Marca pedido de venda como NFe N�o Enviada
               DMSAIDA.TPedV.Post;
           End;

           DMSAIDA.TFiscPV.FieldByName('NF').AsString := 'NFe';
			If XDadosNfe.Dados.TipoAmb=1 Then
           	DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger := 1
           Else
           	DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger := 2;

           if xEnvioContingencia then
               DMSAIDA.TFiscPV.FieldByName('CONTINGENCIA').AsString := '1';

           DMSAIDA.TFiscPV.Post;            
           DMSAIDA.IBT.CommitRetaining;

			//Salva n�mero fiscal para o financeiro
           SalvaNumeroFiscalContasReceber(XSetInTipoPedido, DMSAIDA.TFiscPV.FieldByName('numdocfis').AsString, XCod_Pedido);
       End;
       If XSetInTipoPedido='PEDC'
       Then Begin
           DMENTRADA.TFiscPC.Edit;
           DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger;
           DMENTRADA.TFiscPC.FieldByName('NFEXML').AsString := XXmlNfe;
           DMENTRADA.TFiscPC.FieldByName('NFESERIE').AsString := XNfeSerie;
           DMENTRADA.TFiscPC.FieldByName('NFEXMLDIST').AsString := XProcNfe;
           DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString := XNfeChave;
           DMENTRADA.TFiscPC.FieldByName('NFELOTE').AsString := XNfeCodLote;
           DMENTRADA.TFiscPC.FieldByName('NFERECIBO').AsString := XNfeRecibo;
           DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString := XNfeProtocolo;
           DMENTRADA.TFiscPC.FieldByName('TIPODOCFIS').AsString := '3';//Nota Fiscal Eletronica
           If (XMsgNumRetorno='100') OR (XMsgNumRetorno='150') Then
           	DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 1;//Uso Autorizado
           If (XMsgNumRetorno='302') or (XMsgNumRetorno='301') or (XMsgNumRetorno='205') or (XMsgNumRetorno='110')
           Then Begin
           	DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 4;//Uso Denegado
               DMENTRADA.TPedC.Edit;
               DMENTRADA.TPedC.FieldByName('SITUACAO').AsString:='DENEGADO';//Marca pedido de venda como NFe N�o Enviada
               DMENTRADA.TPedC.Post;
           End;

           DMENTRADA.TFiscPC.FieldByName('NF').AsString := 'NFe';
			If XDadosNfe.Dados.TipoAmb=1 Then
           	DMENTRADA.TFiscPC.FieldByName('NFEAMBIENTE').AsInteger := 1
           Else
           	DMENTRADA.TFiscPC.FieldByName('NFEAMBIENTE').AsInteger := 2;

           if xEnvioContingencia then
               DMENTRADA.TFiscPC.FieldByName('CONTINGENCIA').AsString := '1';               

           DMENTRADA.TFiscPC.Post;
           DMENTRADA.IBT.CommitRetaining;
       End;

	    If XSetInTipoPedido='ORDEM'
       Then Begin
           DMServ.TFiscOrd.Edit;
           DMServ.TFiscOrd.FieldByName('NFEXML').AsString := XXmlNfe;
           DMServ.TFiscOrd.FieldByName('NFECHAVE').AsString := XNfeChave;
           DMServ.TFiscOrd.FieldByName('NFESERIE').AsString := XNfeSerie;
           DMServ.TFiscOrd.FieldByName('NFEXMLDIST').AsString := XProcNfe;
           DMServ.TFiscOrd.FieldByName('NFELOTE').AsString := XNfeCodLote;
           DMServ.TFiscOrd.FieldByName('NFERECIBO').AsString := XNfeRecibo;
           DMServ.TFiscOrd.FieldByName('NFEPROTOCOLO').AsString := XNfeProtocolo;
           DMServ.TFiscOrd.FieldByName('TIPODOCFIS').AsString := '3';//Nota Fiscal Eletronica
           DMServ.TFiscOrd.FieldByName('URL_QRCODE').AsString := XURLNFCe;
			If (XMsgNumRetorno='100') OR (XMsgNumRetorno='150') Then
           	DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger := 1;//Uso Autorizado
           If (XMsgNumRetorno='302') or (XMsgNumRetorno='301') or (XMsgNumRetorno='205') or (XMsgNumRetorno='110')
           Then bEGIN
           	DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger := 4;//Uso Denegado
               DMServ.TOrd.Edit;
               DMServ.TOrd.FieldByName('STATUS').AsString:='DENEGADO';//Marca ordem de servi�o como NFe N�o Enviada
               DMServ.TOrd.Post;
           End;

           DMServ.TFiscOrd.FieldByName('NF').AsString := 'NFe';
			If XDadosNfe.Dados.TipoAmb=1 Then
           	DMServ.TFiscOrd.FieldByName('NFEAMBIENTE').AsInteger := 1
           Else
           	DMServ.TFiscOrd.FieldByName('NFEAMBIENTE').AsInteger := 2;

           if xEnvioContingencia then
               DMServ.TFiscOrd.FieldByName('CONTINGENCIA').AsString := '1';

           DMServ.TFiscOrd.Post;
           DMServ.IBT.CommitRetaining;
			//Salva n�mero fiscal para o financeiro
           SalvaNumeroFiscalContasReceber(XSetInTipoPedido,  DMServ.TFiscOrd.FieldByName('numdocfis').AsString, XCod_Pedido);
       End;

       //Edmar - 12/03/2015 - Se for nota de devolu��o, atualiza o pedido de compra ou de venda
       //que gerou a devolu��o como DEVOLVIDO e atualiza o pc com a nf emitida
       if (FMenu.XDevolucao) OR (FMenu.XOutrosEnt) then
       begin
       	//verifica qual � o tipo do pedido que gerou o fiscal
       	If XSetInTipoPedido='PEDV' then
           	//SE FOR PEDIDO DE VENDA, S� PODE TER SIDO UM PEDIDO DE COMPRA
               //QUE GEROU A DEVOLU��O.
				FMenu.XTABELA_DEVOLUCAO := 'PEDCOMPRA'
           else begin
           	//sen�o, busca pela FK que gerou tal devolu��o
				FiltraTabela(DMENTRADA.TAlx, 'PEDCOMPRA', 'COD_PEDCOMP', IntToStr(XSetCodigoPedido), '');
               
           	//filtra buscando se foi um pedido de venda que gerou a devolu��o
               if FiltraTabela(DMSAIDA.TAlx, 'PEDVENDA', 'COD_PEDVENDA', DMENTRADA.TAlx.FieldByName('COD_PK_DEV').AsString, '') then
               	FMenu.XTABELA_DEVOLUCAO := 'PEDVENDA'
               else//se n�o for pedido de venda, foi uma ordem de servi�o
               	FMenu.XTABELA_DEVOLUCAO := 'ORDEM';
           end;

			//No caso, as sql abaixo ir� atualizar o pedidos correspondentes com a nfe gerado e alterando seu status para DEVOLVIDO
           //onde a pk do pedido for igual a fk incluido no pedcompra ou pedvenda anteriormente
           //onde a pk do pedcompra ou pedvenda � igual a chave do pedido que acabou de gerar a nf-e
           
   		if FMenu.XTABELA_DEVOLUCAO = 'PEDVENDA' then
           begin
               //ATUALIZA O PEDIDO DE VENDA QUE GEROU A DEVOLU��O COM O NUMERO FISCAL GERADO
               //E ATUALIZA O SEU STATUS
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' UPDATE PEDVENDA SET PEDVENDA.NUMFISCAL_DEVOLVIDA = :NFE, PEDVENDA.SITUACAO = ''DEVOLVIDO'' ');
               MDO.Query.SQL.Add(' WHERE PEDVENDA.COD_PEDVENDA = (SELECT PEDCOMPRA.COD_PK_DEV FROM PEDCOMPRA ');
               MDO.Query.SQL.Add(' WHERE PEDCOMPRA.COD_PEDCOMP = :CODIGO) ');
           end;
           
   		if FMenu.XTABELA_DEVOLUCAO = 'PEDCOMPRA' then
           begin
               //atualiza o pedido de compra que gerou a devolu��o com o n�mero fiscal gerado
               //e atualiza seu status
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' UPDATE PEDCOMPRA SET PEDCOMPRA.NUMFISCAL_DEVOLVIDA = :NFE, PEDCOMPRA.SITUACAO = ''DEVOLVIDO'' ');
               MDO.Query.SQL.Add(' WHERE PEDCOMPRA.COD_PEDCOMP = (SELECT PEDVENDA.COD_PC_DEV FROM PEDVENDA ');
               MDO.Query.SQL.Add(' WHERE PEDVENDA.COD_PEDVENDA = :CODIGO) ');
           end;

           if FMenu.XTABELA_DEVOLUCAO = 'ORDEM' then
           begin
           	//atualiza a ordem de servi�o que gerou a devolu��o com o n�mero fiscal gerado
               //e atualiza seu status
           	MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' UPDATE ORDEM SET ORDEM.NUMFISCAL_DEVOLVIDA = :NFE, ORDEM.STATUS = ''DEVOLVIDO'' ');
               MDO.Query.SQL.Add(' WHERE ORDEM.COD_ORDEM = (SELECT PEDCOMPRA.COD_PK_DEV FROM PEDCOMPRA ');
               MDO.Query.SQL.Add(' WHERE PEDCOMPRA.COD_PEDCOMP = :CODIGO) ');
           end;

           MDO.Query.ParamByName('CODIGO').AsInteger := XSetCodigoPedido;
           MDO.Query.ParamByName('NFE').AsInteger := XSetInNumFiscal;

           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
       end;

       //Visualiza nota fiscal eletronica no sefaz
       NfeVisualizanoSefaz;
   Except
       Result:=False;
   End;
End;

//Fun��o para gravar os dados da nfce em banco de dados
Function TFMzrNfe.GravaInfoNFCeBanco(I: Integer): Boolean;
var
   Fsaida: TextFile;
   XProtocolo: WideString;
   XCaminhoXml: String;
   XNumRetorno: Integer;
   XReciboDist: WideString;
Begin
   Result:=True;
   Try
   	//Edmar - 16/06/2015 - Faz a busca do XML de distrui��o para salvar no banco de dados
   	//XProcNfe := Util.BuscaNFe2G(XSiglaWS, XNfeTipoAmbiente, XNfeXmlAss, XNfeRecibo, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg, XNfeRetornoWS, I, XMsgGeral, XProtocolo, XNfeDhRecbto, XMsgcabMsg, XMsgDadosMsg, '', '', '', XNfeLicenca);

       XMsgNumRetorno := IntToStr(I);
       //grava resultado em banco de dados
       If XSetInTipoPedido='PEDV'
       Then Begin
           DMSAIDA.TFiscPV.Edit;
           DMSAIDA.TFiscPV.FieldByName('COD_DOCFISC').AsInteger;
           DMSAIDA.TFiscPV.FieldByName('SERIE').AsString := '65';
           DMSAIDA.TFiscPV.FieldByName('NFESERIE').AsString := XNfeSerie;
           DMSAIDA.TFiscPV.FieldByName('NFEXML').AsString := XXmlNfe;
           DMSAIDA.TFiscPV.FieldByName('NFEXMLDIST').AsString := XXmlNfe;
           DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString := XNfeChave;
           DMSAIDA.TFiscPV.FieldByName('NFELOTE').AsString := XNfeCodLote;
           DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString := XNfeRecibo;
           DMSAIDA.TFiscPV.FieldByName('NFEPROTOCOLO').AsString := XNfeRecibo;
           DMSAIDA.TFiscPV.FieldByName('TIPODOCFIS').AsString := '3';//Nota Fiscal Eletronica
           DMSAIDA.TFiscPV.FieldByName('URL_QRCODE').AsString := XURLNFCe;
           If (XMsgNumRetorno='100') OR (XMsgNumRetorno='150') Then
           	DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 1//Uso Autorizado
           else
           	DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 2;//Uso Autorizado

           DMSAIDA.TFiscPV.FieldByName('NF').AsString := 'NFe';
			If XDadosNfe.Dados.TipoAmb=1 Then
           	DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger := 1
           Else
           	DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger := 2;

           if xEnvioContingencia then
               DMSAIDA.TFiscPV.FieldByName('CONTINGENCIA').AsString := '1';

           DMSAIDA.TFiscPV.Post;            
           DMSAIDA.IBT.CommitRetaining;

			//Salva n�mero fiscal para o financeiro
           SalvaNumeroFiscalContasReceber(XSetInTipoPedido, DMSAIDA.TFiscPV.FieldByName('numdocfis').AsString, XCod_Pedido);
       End;
       If XSetInTipoPedido='PEDC'
       Then Begin
           DMENTRADA.TFiscPC.Edit;
           DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger;
           DMENTRADA.TFiscPC.FieldByName('NFEXML').AsString := XXmlNfe;
           DMENTRADA.TFiscPC.FieldByName('NFESERIE').AsString := XNfeSerie;
           DMENTRADA.TFiscPC.FieldByName('NFEXMLDIST').AsString := XXmlNfe;
           DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString := XNfeChave;
           DMENTRADA.TFiscPC.FieldByName('NFELOTE').AsString := XNfeCodLote;
           DMENTRADA.TFiscPC.FieldByName('NFERECIBO').AsString := XNfeRecibo;
           DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString := XNfeRecibo;
           DMENTRADA.TFiscPC.FieldByName('TIPODOCFIS').AsString := '3';//Nota Fiscal Eletronica
           If (XMsgNumRetorno='100') OR (XMsgNumRetorno='150') Then
           	DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 1//Uso Autorizado
           else
           	DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 2;//Uso Autorizado

           DMENTRADA.TFiscPC.FieldByName('NF').AsString := 'NFe';
			If XDadosNfe.Dados.TipoAmb=1 Then
           	DMENTRADA.TFiscPC.FieldByName('NFEAMBIENTE').AsInteger := 1
           Else
           	DMENTRADA.TFiscPC.FieldByName('NFEAMBIENTE').AsInteger := 2;

           if xEnvioContingencia then
               DMENTRADA.TFiscPC.FieldByName('CONTINGENCIA').AsString := '1';               

           DMENTRADA.TFiscPC.Post;
           DMENTRADA.IBT.CommitRetaining;
       End;

	    If XSetInTipoPedido='ORDEM'
       Then Begin
           DMServ.TFiscOrd.Edit;
           DMServ.TFiscOrd.FieldByName('NFEXML').AsString := XXmlNfe;
           DMServ.TFiscOrd.FieldByName('NFECHAVE').AsString := XNfeChave;
           DMServ.TFiscOrd.FieldByName('NFESERIE').AsString := XNfeSerie;
           DMServ.TFiscOrd.FieldByName('NFEXMLDIST').AsString := XXmlNfe;
           DMServ.TFiscOrd.FieldByName('NFELOTE').AsString := XNfeCodLote;
           DMServ.TFiscOrd.FieldByName('NFERECIBO').AsString := XNfeRecibo;
           DMServ.TFiscOrd.FieldByName('NFEPROTOCOLO').AsString := XNfeRecibo;
           DMServ.TFiscOrd.FieldByName('TIPODOCFIS').AsString := '3';//Nota Fiscal Eletronica
           DMServ.TFiscOrd.FieldByName('URL_QRCODE').AsString := XURLNFCe;
           If (XMsgNumRetorno='100') OR (XMsgNumRetorno='150') Then
           	DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger := 1//Uso Autorizado
           else
           	DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger := 2;//Uso Autorizado

           DMServ.TFiscOrd.FieldByName('NF').AsString := 'NFe';
			If XDadosNfe.Dados.TipoAmb=1 Then
           	DMServ.TFiscOrd.FieldByName('NFEAMBIENTE').AsInteger := 1
           Else
           	DMServ.TFiscOrd.FieldByName('NFEAMBIENTE').AsInteger := 2;

           if xEnvioContingencia then
               DMServ.TFiscOrd.FieldByName('CONTINGENCIA').AsString := '1';

           DMServ.TFiscOrd.Post;
           DMServ.IBT.CommitRetaining;
			//Salva n�mero fiscal para o financeiro
           SalvaNumeroFiscalContasReceber(XSetInTipoPedido,  DMServ.TFiscOrd.FieldByName('numdocfis').AsString, XCod_Pedido);
       End;  
       //Visualiza nota fiscal eletronica no sefaz
       NfeVisualizanoSefaz;
   Except
       Result:=False;
   End;
End;

//Fun��o para gravar os dados da nfe em banco de dados
Function TFMzrNfe.GravaCCeBanco(XCceTipoEmissor: String; XCceCarta: WideString; XCceProtocoloNumero: String; XCceData: String; XCceXml: WideString; XCceXmlResposta: String) : Boolean;
Begin
   Result:=True;
   Try
       DMMACS.TCCE.Close;
       DMMACS.TCCE.SQL.Clear;
       DMMACS.TCCE.SQL.Add('Select * from cce');
       DMMACS.TCCE.Open;

       DMMACS.TCCE.Insert;
       DMMACS.TCCE.FieldByName('COD_GERADOR').AsInteger:=XSetCodigoPedido;
       DMMACS.TCCE.FieldByName('TIPOGERADOR').Asstring:=XCceTipoEmissor;
       DMMACS.TCCE.FieldByName('DATA').AsDateTime:=Date();
       DMMACS.TCCE.FieldByName('TEXTO').Asstring:=XCceCarta;
       DMMACS.TCCE.FieldByName('PROTOCOLONUMERO').Asstring:= XCceProtocoloNumero;
       DMMACS.TCCE.FieldByName('PROTOCOLODATA').Asstring:= XCceData;
       DMMACS.TCCE.FieldByName('XML').Asstring:= AnsiToUTF8(XCceXml);
       DMMACS.TCCE.FieldByName('XMLRESPOSTA').Asstring:= XCceXmlResposta;
       DMMACS.TCCE.FieldByName('NSEQUENCIA').AsInteger:= XSetCodigoDestinatario;
       DMMACS.TCCE.Post;
       DMMACS.Transaction.CommitRetaining; 
   Except
       Result:=False;
   End;
End;

//Fun��o para gravar os dados da nfe em banco de dados Informando que a NFe n�o obteve resultado Positivo no Sefaz
Function TFMzrNfe.GravaInfoBancoNegativa : Boolean;
Begin
   Result:=True;
   Try
       //grava resultado em banco de dados
       If XSetInTipoPedido='PEDV'
       Then Begin
           DMSAIDA.TFiscPV.Edit;
           DMSAIDA.TFiscPV.FieldByName('NFEXML').AsString := XXmlNfe;
           DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString := XNfeChave;
           DMSAIDA.TFiscPV.FieldByName('NFELOTE').AsString := XNfeCodLote;
           DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString := XNfeRecibo;
           DMSAIDA.TFiscPV.FieldByName('NFEPROTOCOLO').AsString := XNfeProtocolo;
           DMSAIDA.TFiscPV.FieldByName('TIPODOCFIS').AsString := '3';//Nota Fiscal Eletronica
           DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 2;
           DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString := '';
           DMSAIDA.TFiscPV.FieldByName('numdocfisint').AsInteger := 0;
			If XNfeTipoAmbiente=1 Then
           	DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger := 1
           Else
           	DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger := 2;
           DMSAIDA.TFiscPV.Post;
           DMSAIDA.TPedV.Edit;
           DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:='';
           DMSAIDA.TPedV.FieldByName('NUMECF').AsString:=XNumECF;
           DMSAIDA.TPedV.FieldByName('FISCO').AsString:='NFE2';//Marca pedido de venda como NFe N�o Enviada
           DMSAIDA.TPedV.Post;

           DMSAIDA.IBT.CommitRetaining;
       End;
       If XSetInTipoPedido='PEDC'
       Then Begin
           DMENTRADA.TFiscPC.Edit;
           DMENTRADA.TFiscPC.FieldByName('NFEXML').AsString := XXmlNfe;
           DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString := XNfeChave;
           DMENTRADA.TFiscPC.FieldByName('NFELOTE').AsString := XNfeCodLote;
           DMENTRADA.TFiscPC.FieldByName('NFERECIBO').AsString := XNfeRecibo;
           DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString := XNfeProtocolo;
           DMENTRADA.TFiscPC.FieldByName('TIPODOCFIS').AsString := '3';//Nota Fiscal Eletronica
           DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 2;
           DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString := '';
			If XNfeTipoAmbiente=1 Then
           	DMENTRADA.TFiscPC.FieldByName('NFEAMBIENTE').AsInteger := 1
           Else
           	DMENTRADA.TFiscPC.FieldByName('NFEAMBIENTE').AsInteger := 2;
           DMENTRADA.TFiscPC.Post;
           DMENTRADA.TPedC.Edit;
           DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString:='';
           DMENTRADA.TPedC.FieldByName('FISCO').AsString:='NFE2';//Marca pedido de venda como NFe N�o Enviada
           DMENTRADA.TPedC.Post;

           DMSAIDA.IBT.CommitRetaining;
       End;
       If XSetInTipoPedido='ORDEM'
       Then Begin
           DMServ.TFiscOrd.Edit;
           DMServ.TFiscOrd.FieldByName('NFEXML').AsString := XXmlNfe;
           DMServ.TFiscOrd.FieldByName('NFECHAVE').AsString := XNfeChave;
           DMServ.TFiscOrd.FieldByName('NFELOTE').AsString := XNfeCodLote;
           DMServ.TFiscOrd.FieldByName('NFERECIBO').AsString := XNfeRecibo;
           DMServ.TFiscOrd.FieldByName('NFEPROTOCOLO').AsString := XNfeProtocolo;
           DMServ.TFiscOrd.FieldByName('TIPODOCFIS').AsString := '3';//Nota Fiscal Eletronica
           DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger := 2;
           DMServ.TFiscOrd.FieldByName('NUMDOCFIS').AsString := '';
           DMServ.TFiscOrd.FieldByName('numdocfisint').AsInteger := 0;
			If XNfeTipoAmbiente=1 Then
           	DMServ.TFiscOrd.FieldByName('NFEAMBIENTE').AsInteger := 1
           Else
           	DMServ.TFiscOrd.FieldByName('NFEAMBIENTE').AsInteger := 2;
           DMServ.TFiscOrd.Post;

           DMServ.TOrd.Edit;
           DMServ.TOrd.FieldByName('NUMFISCAL').AsString:='';
           //DMServ.TOrd.FieldByName('NUMECF').AsString:=XNumECF;
           DMServ.TOrd.FieldByName('FISCO').AsString:='NFE2';//Marca pedido de venda como NFe N�o Enviada
           DMServ.TOrd.Post;

           DMServ.IBT.CommitRetaining;
       End;
   Except
       Result:=False;
   End;
End;


//Fun��o utilizada para armazenar fisicamente a Nfe enviada e recebida com sucesso na pasta definitiva das nfe
Function TFMzrNfe.NfeGravaNfeEnviada: Boolean;
var
   Fsaida: TextFile;
   XML: WideString;
Begin
     Result:=True;
     Try
        Information('Gravando Nfe recebida com sucesso no ws');

        XML := XXmlfinal;
        XML := TirarAcentos(False, XML);
        verificaDiretorio('C:\Mzr\Arquivos\NFe\NfeEnviada\'+XSetInPeriodoFiscal);
        AssignFile(Fsaida, 'C:\Mzr\Arquivos\NFe\NfeEnviada\'+XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-NfeEnviada.xml');
        Rewrite(Fsaida);
        Write(Fsaida, XML);
        CloseFile(Fsaida);
     Except
        Result:=False;
     End;
End;

   function TFMzrNfe.GravaNfceContingencia: Boolean;
var
   XNfeResultado: Integer;
   XMsgGeral, XNFeLote: WideString;
begin
   Result := True;

   try
       if XDadosNfe.Dados.TipoAmb = 1 then//PRODU��O
           XXmlNfe := Util.AssinarNFCE400(XXmlNfe, XNfeNomeCertificado, (DMMACS.TLoja.FieldByName('IDCSC_NFCEPROD').AsString), DMMACS.TLoja.FieldByName('CSC_NFCEPROD').AsString, '2', 'http://www.fazenda.pr.gov.br/nfce/qrcode', 'http://www.fazenda.pr.gov.br' , '0', XNfeResultado, XMsgGeral, XNFeLote, XURLNFCe)
       else//HOMOLOGA��O
           XXmlNfe := Util.AssinarNFCE400(XXmlNfe, XNfeNomeCertificado, (DMMACS.TLoja.FieldByName('IDCSC_NFCEHOMO').AsString), DMMACS.TLoja.FieldByName('CSC_NFCEHOMO').AsString, '2', 'http://www.fazenda.pr.gov.br/nfce/qrcode', 'http://www.fazenda.pr.gov.br' , '0', XNfeResultado, XMsgGeral, XNFeLote, XURLNFCe);
           
       //grava resultado em banco de dados
       if XSetInTipoPedido = 'PEDV' then
       begin
           FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(XSetCodigoPedido), '');
       
           DMSAIDA.TFiscPV.Edit;
           DMSAIDA.TFiscPV.FieldByName('NFEXML').AsString := XXmlNfe;
           DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString := XNfeChave;
           DMSAIDA.TFiscPV.FieldByName('NFESERIE').AsString := XNfeSerie;
           DMSAIDA.TFiscPV.FieldByName('TIPODOCFIS').AsString := '3';//Nota Fiscal Eletronica
           DMSAIDA.TFiscPV.FieldByName('URL_QRCODE').AsString := XURLNFCe;
           DMSAIDA.TFiscPV.FieldByName('CONTINGENCIA').AsString := '1';           
           DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 1;//Uso Autorizado
           DMSAIDA.TFiscPV.FieldByName('NF').AsString := 'NFCe';

           If XDadosNfe.Dados.TipoAmb=1 Then
               DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger := 1
           Else
               DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger := 2;

           DMSAIDA.TFiscPV.Post;

           DMSAIDA.TPedV.Edit;
           DMSAIDA.TPedV.FieldByName('FISCO').AsString := 'CONT';
           DMSAIDA.TPedV.Post;
              
           DMSAIDA.IBT.CommitRetaining;
       End;

       if XSetInTipoPedido = 'ORDEM' then
       begin
           FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XSetCodigoPedido), '');
       
           DMServ.TFiscOrd.Edit;
           DMServ.TFiscOrd.FieldByName('NFEXML').AsString := XXmlNfe;
           DMServ.TFiscOrd.FieldByName('NFECHAVE').AsString := XNfeChave;
           DMServ.TFiscOrd.FieldByName('NFESERIE').AsString := XNfeSerie;
           DMServ.TFiscOrd.FieldByName('TIPODOCFIS').AsString := '3';//Nota Fiscal Eletronica
           DMServ.TFiscOrd.FieldByName('URL_QRCODE').AsString := XURLNFCe;
           DMServ.TFiscOrd.FieldByName('CONTINGENCIA').AsString := '1';
           DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger := 1;//Uso Autorizado
           DMServ.TFiscOrd.FieldByName('NF').AsString := 'NFCe';

           If XDadosNfe.Dados.TipoAmb=1 Then
               DMServ.TFiscOrd.FieldByName('NFEAMBIENTE').AsInteger := 1
           Else
               DMServ.TFiscOrd.FieldByName('NFEAMBIENTE').AsInteger := 2;
           
           DMServ.TFiscOrd.Post;

           DMServ.TOrd.Edit;
           DMServ.TOrd.FieldByName('FISCO').AsString := 'CONT';
           DMServ.TOrd.Post;

           DMServ.IBT.CommitRetaining;      
       end;

       Result := True;
   except
       Result := False;
   end;
end;

//Fun��o utilizada para armazenar fisicamente a Nfe cancelada e recebida com sucesso na pasta definitiva das nfe
Function TFMzrNfe.NfeGravaNfeCancelada: Boolean;
var
   FCancela: TextFile;
   Xendereco: String;
   XML: WideString;
Begin
     Result:=True;
     Try
        Information('Gravando Nfe cancelada com sucesso no ws');

		 //Sql para localizar todos os periodos fiscais em aberto e definir o caminho do xml
        DMMACS.TPeriodoFiscal.Close;
        DMMACS.TPeriodoFiscal.SQL.Clear;
        DMMACS.TPeriodoFiscal.SQL.Add(' Select * from periodofiscal where (periodofiscal.fechado=''N'')');
        DMMACS.TPeriodoFiscal.Open;
        DMMACS.TPeriodoFiscal.Last;
        XSetInPeriodoFiscal:=DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
        XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '/');
        XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '(');
        XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, ')');

        //GRAVA EM NOTAS ENVIADAS
        verificaDiretorio('C:\Mzr\Arquivos\NFe\NfeEnviada\'+XSetInPeriodoFiscal);
        Xendereco:= 'C:\Mzr\Arquivos\NFe\NfeEnviada\'+XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+'- NfeCancelada.xml';
        AssignFile(FCancela, Xendereco);
        Rewrite(FCancela);
        Write(FCancela, XXmlNfeCancel);
        CloseFile(FCancela);
        //GRAVA EM NOTAS DE DISTRIBUI��O
        verificaDiretorio('C:\Mzr\Arquivos\NFe\NfeDistribuicao\'+XSetInPeriodoFiscal);
        Xendereco:= 'C:\Mzr\Arquivos\NFe\NfeDistribuicao\'+XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+'- NfeCancelada.xml';
        AssignFile(FCancela, Xendereco);
        Rewrite(FCancela);
        Write(FCancela, XXmlNfeCancel);
        CloseFile(FCancela);

        //*******************************
        // ENVIAR CANCELAMENTO POR E-MAIL
        //*******************************
        If Mensagem('Confirma��o do usu�rio', 'Deseja enviar o xml de cancelamento para o Cliente/Fornecedor?', '', 2, 3, False, 'c')=2
        Then Begin
   		  XXmlDistLocal:=Xendereco;
             //Paulo 22/07/2011: Busca email do cliente
             XEnviaEmal:=True;
             DMMACS.TALX.Close;
             DMMACS.TALX.SQL.Clear;
             If XSetInTipoPedido='PEDC'
             Then begin
                 DMMACS.TALX.SQL.Add(' Select email.email, pessoa.emailpadrao from vwcliente');
                 DMMACS.TALX.SQL.Add(' left Join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
                 DMMACS.TALX.SQL.Add(' left join email ON pessoa.cod_pessoa = email.cod_pessoa');
             	  DMMACS.TALX.SQL.Add(' Where vwcliente.cod_cliente=:codigo ');
             End
             Else Begin
                 DMMACS.TALX.SQL.Add('  Select email.email, pessoa.emailpadrao from vwfornec ');
                 DMMACS.TALX.SQL.Add('  left Join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa ');
                 DMMACS.TALX.SQL.Add('  left join email ON pessoa.cod_pessoa = email.cod_pessoa ');
                 DMMACS.TALX.SQL.Add('  Where vwfornec.cod_fornec=:codigo ');
             End;
             DMMACS.TALX.ParamByName('codigo').AsInteger:=XSetCodigoDestinatario;
             DMMACS.TALX.Open;

             MMensagem.Clear;
             MMensagem.Lines.Add('Segue em anexo o xml de cancelamento da nota fiscal '+IntToStr(XSetInNumFiscal));
             MMensagem.Lines.Add('----------------------------------------------------------');
             MMensagem.Lines.Add('Att ');
             MMensagem.Lines.Add(DMMACS.TEmpresa.FieldByName('FANTASIA').AsString);
             MMensagem.Lines.Add('CNPJ: '+DMMACS.TEmpresa.FieldByName('CNPJ').AsString);
             MMensagem.Lines.Add('Tel: '+DMMACS.TEmpresa.FieldByName('Fone').AsString);
             MMensagem.Lines.Add('----------------------------------------------------------');
             MMensagem.Lines.Add('.');
             MMensagem.Lines.Add('.');
             MMensagem.Lines.Add('.');
             MMensagem.Lines.Add('N�O RESPONDER ESTE EMAIL.');
             PEnviaXml.Visible:=True;
             PEnviaXml.BringToFront;
			  //Edmar - 08/04/2014 - Teste se foi informado o email padr�o para o cliente e o preenche o campo
             if DMMACS.TALX.FieldByName('EMAILPADRAO').AsString <> '' then
	             EdEmail.Text:=DMMACS.TALX.FieldByName('EMAILPADRAO').AsString
             else
	             EdEmail.Text:=DMMACS.TALX.FieldByName('email').AsString;
         end;
     Except
        Result:=False;
     End;
End;

//Fun��o utilizada Enviar Carta de Corre��o Eletronica
Function TFMzrNfe.NfeCCE: Boolean;
Var
	XmlEnviada, XmlResposta, XmlProcessado: WideString;
Begin
	Try
       Result:=True;
		If MessageDlg('A T E N � � O !'+#13+#10+'Cartas de Corre��o Eletr�nica n�o podem ser canceladas. '+#13+#10+''+#13+#10+'Deseja Continuar?', mtInformation, [mbYes, mbNo], 0)=mrYes
       Then Begin
           //Antes de iniciar processo de emiss�o verifica a existencia de uma mesma Nfe emitida com o numero
           Information('Consultando a existencia da Nota Fiscal Eletr�nica Informada...');

           If NfeConsultarNotaFiscal=True
           Then Begin
               //Se diferuir de 100 - N�o esta apta a receber carta de corre��o
               If (XMsgNumRetorno='100')
               Then Begin
                   Information('Transmitindo Carta de Corre��o Eletronica...');
                   XNfeTextoCartaCorrecaoEletronica:=TirarAcentos(True, XNfeTextoCartaCorrecaoEletronica);
                   //string EnviaCCe2G(string siglaWS, int tipoAmbiente, string nomeCertificado, string versao, out string msgDados, out string msgRetWS, out int cStat, out string msgResultado, string chaveNFe, string textoCorrecao, int textoAcentuado, int nroCorrecao, string dataCorrecao, out string nroProtocolo, out string dhProtocolo, string proxy, string usuario, string senha, string licenca)
                   XRetorno:=Util.EnviaCCe2G(XSiglaWS {XUfLocal+'3'}, XNfeTipoAmbiente, XNfeNomeCertificado, '4.00', XMsgDadosMsg, XNfeRetornoWS, XNfeResultado, XMsgRetWS, trim(XNfeChave), XNfeTextoCartaCorrecaoEletronica, 0, XSetCodigoDestinatario, FormatDateTime('yyyy-mm-dd "" hh:mm:ss', Now), XNfeRecibo, XNfeDhRecbto,    '',      '',   '',    XNfeLicenca);
                   If XNfeResultado = 135
                   Then Begin
                       Information('Carta de Corre��o Eletronica enviada e aceita...');
						If CCeGravaDistribui(XRetorno)=False Then
                           NfeAddFalhas('- Falha ao Gravar dados de CCe no arquivo (CCe enviada e aceita):');

                       If GravaCCeBanco(XSetInTipoPedido, XNfeTextoCartaCorrecaoEletronica, XNfeRecibo, XNfeDhRecbto, XRetorno, XNfeRetornoWS) = False Then
                           NfeAddFalhas('- Falha ao Gravar dados de CCe no Banco de Dados (CCe enviada e aceita):');
                   End
                   Else Begin
                       CCeGravaLocal(XRetorno);
                       Result := False;
                       If XNfeResultado < 1000
                       Then Begin
                           MessageDlg( 'Carta de Corre��o eletr�nica rejeitada pelo WS...'+#13+#13 + XNfeRetornoWS, mtError, [mbOk], 0);
                           NfeAddFalhas('- Carta de Corre��o eletr�nica rejeitada pelo WS...');
                       End
                       Else Begin
                           MessageDlg( 'Falha na chamada do WS...'+#13+#13 + XNfeRetornoWS, mtError, [mbOk], 0);
                           NfeAddFalhas('- Falha na chamada do WS...');
                       End;
                   End;
               End
               Else Begin
                   Result:=False;
                   MessageDlg('A Nota Fiscal Informada n�o esta ativa no sefaz, portando n�o pode receber cartas de corre��o ', mtWarning, [mbOK], 0);
               End;
           End
           Else Begin
               MessageDlg('A CCe n�o pode ser enviada. N�o foi possivel consultar o status da NFe junto ao WS', mtWarning, [mbOK], 0);
               Result:=False;
           End;
       End
       Else Begin
			Result:=False;
       End;
   Except
   	Result:=False;
   End;

End;

//Fun��o utilizada para cancelar a nfe emitida anteriormente
Function TFMzrNfe.NfeCancelar: Boolean;
    ///  8. CancelaNFSCAN:  Cancelamento de NF-e
    ///
    ///    Entradas:
    ///
    ///            siglaUF: Sigla da UF do WS chamado
    ///            SVAN - SEFAZ Virtual do Ambiente Nacional, atende CE, ES, MA, PA, PI, PR e RN.
    ///            SVRS - SEFAZ Virtual do Rio Grande do Sul, atende AC, AL, AM, AP, MS, PB, RJ, RR, SC, SE e TO.
    ///            SCAN - Sistema de Conting�ncia do Ambiente Nacional, deve ser ativada pela UF interessada.
    ///
    ///       tipoAmbiente: C�digo do tipo de ambiente = 1-Produ��o / 2-Homologa��o
    ///    nomeCertificado: Nome do titular do certificado a ser utlizado na conex�o SSL
    ///                  Ex.: "CN=NFe - Associacao NF-e:99999090910270, C=BR, L=PORTO ALEGRE, O=Teste Projeto NFe RS, OU=Teste Projeto NFe RS, S=RS"
    ///
    ///           chaveNFe: Chave de Acesso da NF-e desejada
    ///         nProtocolo: N�mero do protocolo de autoriza��o da NF-e
    ///      justificativa: Justificativa de cancelamento (m�nimo de 15 caracteres)
    ///            licenca: chave da licen�a de uso da aplica��o (necess�rio no ambiente de produ��o)
    ///
    ///    proxy ,usuario e senha: deve ser informado nos casos em que � necess�rio o uso de proxy
    ///
    ///    proxy := 'http://proxyserver:port';    // verificar com o cliente qual � o endere�o do servidor proxy e a porta https, a porta padr�o do https � 443, assim ter�amos algo do tipo 'http://192.168.15.1:443'
    ///    usuario := 'nome usuario';
    ///    senha  := 'senha';
    ///
    ///
    ///   Retornos:
    ///
    ///         CancelaNFSCAN: c�digo do resultado da chamada do WS
    ///                      0 - OK
    ///                      1 - codigo do ambiente inv�lido
    ///                      2 - sigla da UF inv�lida
    ///                      3 - a UF n�o oferece o servi�o
    ///                      4 - Arquivo com a URL dos WS n�o localizados
    ///                      5 - Erro n�o tratado de abertura/tratamento Arquivo ws.xml
    ///                      6 - Erro de valida��o de Schema
    ///                      7 - Nenhum Certificado Selecionado
    ///                      8 - Nenhum certificado v�lido foi encontrado com o nome informado
    ///                      9 - Erro Inesperado no acesso ao certificado digital: "+ex.Message
    ///                     10 - Erro: Time-out ao chamar o WS
    ///                     11 - Erro: exce��o do biblioteca criptogr�fica
    ///                     12 - Erro: conectividade
    ///                     13 - aplica��o n�o licenciada
    ///                     14 - Erro: Problema ao acessar o certificado digital - %exce��o%
    ///                     15 - Certificado digital inexistente para %nome%
    ///                     16 - XML mal formado + exce��o
    ///                     17 - A tag de assinatura %RefUri% inexiste
    ///                     18 - A tag de assinatura %RefUri% n�o � unica
    ///                     19 - Erro Ao assinar o documento - ID deve ser string %RefUri(Atributo)%
    ///                     20 - Erro: Ao assinar o documento - %exce��o%
    ///                     21 - Erro: O n�mero do protocolo deve ter 15 posi��es
    ///                     22 - Erro: A chave de acesso deve ter 44 posi��es
    ///                     23 - Erro: A justificativa deve ter pelo menos 15 posi��es
    ///                     24 - Erro: O nome do titular do certificado deve ser informado
    ///
    ///           msgCabec: XML do cabe�alho enviado ao WS (�til para depura��o)
    ///           msgDados: XML com o pedido de cancelamento de NF-e
    ///           msgRetWS: XML de resposta do WS
    ///       msgResultado: literal do resultado da chamada do WS CancelaNFSCAN
    ///
var
	i : integer;
   XJustificativa: String;
   XNumProtocolCancel: WideString;
   XDataProtocolCancela: WideString;
begin
	Result:=True;
   Try
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '/');
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '(');
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, ')');
       verificaDiretorio('C:\Mzr\Arquivos\NFe\NfeEnviada\'+XSetInPeriodoFiscal);
          
       Information('Consultando Situa��o da Nfe emitida...');
       If XSetInTipoPedido='PEDV'
       Then Begin
       	//Cancelamento Feito em Pedidos de Venda
           //Verifica se o pedido possui documento fiscal
           If FiltraTabela(DMSAIDA.TFiscPV, 'docfissaida', 'cod_pedido', IntToStr(XSetCodigoPedido), '')=True
           Then Begin
               XNfeChave:=DMSAIDA.TFiscPV.FieldByName('nfechave').AsString;
               XNfeProtocolo:=DMSAIDA.TFiscPV.FieldByName('nfeprotocolo').AsString;
           End
           Else Begin
               Result:=False;
           End;
       End;
       If XSetInTipoPedido='PEDC'
       Then Begin
       	//Cancealmentos feito em Pedido de Venda
           //Verifica se o pedido possui documento fiscal
           If FiltraTabela(DMENTRADA.TFiscPC, 'docfis', 'cod_pedido', IntToStr(XSetCodigoPedido), '')=True
           Then Begin
               XNfeChave:=DMENTRADA.TFiscPC.FieldByName('nfechave').AsString;
               XNfeProtocolo:=DMENTRADA.TFiscPC.FieldByName('nfeprotocolo').AsString;
           End
           Else Begin
               Result:=False;
           End;
       End;
       //Paulo 11/11/2010 - 163: SeleCiona os dados para ordem mec�nica
       If XSetInTipoPedido='ORDEM'
       Then Begin
       	//Cancelamento Feito em Pedidos de Venda
           //Verifica se o pedido possui documento fiscal
           If FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', IntToStr(XSetCodigoPedido), '')=True
           Then Begin
               XNfeChave:=DMServ.TFiscOrd.FieldByName('nfechave').AsString;
               XNfeProtocolo:=DMServ.TFiscOrd.FieldByName('nfeprotocolo').AsString;
           End
           Else Begin
               Result:=False;
           End;
       End;

       If Result=True
       Then Begin
       	//Se o resultado ainda n�o foi negativado continua o processo
           If NfeConsultarNotaFiscal=True
           Then Begin
               If XMsgNumRetorno='100'
               Then Begin
                   Information('Cancelando Nfe emitida...');
                   Util := CoUtil.Create;
                   If InputQuery('Informe Justificativa de Cancelamento','Justificativa (15 ou mais caracteres) para cancelar a Nfe '+IntToStr(XSetInNumFiscal), XJustificativa)=True
                   Then Begin
                       If Length(XJustificativa)>=15
                       Then Begin
                           Screen.Cursor := CrHourGlass;
                           If XNfeChave='' Then
                                 MessageDlg('O Pedido selecionado para cancelamento se encontra sem Chave de NFe', mtWarning, [mbOK], 0);
                           If XNfeProtocolo='' Then
                                 MessageDlg('O Pedido selecionado para cancelamento se encontra sem Protocolo de NFe', mtWarning, [mbOK], 0);
                           If (XNfeProtocolo<>'') and (XNfeChave<>'') Then
                           	  //XNfeRetornoWS := Util.CancelaNF2G(XSiglaWS{XUfLocal+'3'}, XNfeTipoAmbiente, XNfeNomeCertificado, '1.00', XMsgDadosMsg, XMsgRetWS, XNfeResultado, XMsgGeral, XNfeChave, XNfeProtocolo, XJustificativa, XNumProtocolCancel, XDataProtocolCancela, '', '', '', XNfeLicenca)
                                 XNfeRetornoWS := Util.CancelaNFEvento(XSiglaWS, XNfeTipoAmbiente, XNfeNomeCertificado, '4.00', XMsgDadosMsg, XMsgRetWS, XNfeResultado, XMsgGeral, XNfeChave, XNfeProtocolo, XJustificativa, FormatDateTime('yyyy-mm-dd', Date())+'T'+FormatDateTime('hh:mm:ss', Time())+XDiferencaTempoUTC, XNumProtocolCancel, XDataProtocolCancela, '', '', '', XNfeLicenca)
                           Else
                                 Result:=False;

                           GetGenericRetorno('CANCELAR', XMsgGeral);
                           //Altera em banco situa��o para Canceladao
                           if (XMsgNumRetorno='101') OR (XMsgNumRetorno='135')
                               OR (XMsgNumRetorno='151') OR (XMsgNumRetorno='155') then
                           begin
                               XXmlNfeCancel := XNfeRetornoWS;//Util.CriaProcCancNFe2G(XUfLocal, XMsgDadosMsg, XNumProtocolCancel, XNfeDhRecbto, I, XNfeNomeCertificado, XMsgGeral, '', '', '');

                               If XSetInTipoPedido='PEDV'
                               Then Begin
                               	//Grava Informa��es para pedido de venda
                                   If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(XSetCodigoPedido), '')=True
                                   Then Begin
                                         DMSAIDA.TPedV.Edit;
                                         DMSAIDA.TPedV.FieldByName('SITUACAO').AsString:='CANCELADO';
                                         DMSAIDA.TPedV.Post;
                                         DMSAIDA.TFiscPV.Edit;
                                         DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsString:='3';
                                         DMSAIDA.TFiscPV.FieldByName('NFEXMLCANCEL').AsString:=XXmlNfeCancel;
                                         DMSAIDA.TFiscPV.Post;
                                         DMSAIDA.IBT.CommitRetaining;
                                         If CancelaItensVenda(XSetCodigoPedido)=False Then
                                             MessageDlg('Verifique o estoque dos itens cancelados, ocorreram falhas no retorno de estoque.', mtWarning, [mbOK], 0);
                                   End
                                   Else Begin
                                     MessageDlg('N�o foi poss�vel setar o pedido como cancelado. Por favor, fa�a o manualmente.', mtWarning, [mbOK], 0);
                                   End;
                                   NfeVisualizanoSefaz;
                               End;
                               //Paulo 11/11/2010 - 163: Atualiza o ORDEM para ordem mec�nica
                               If XSetInTipoPedido='ORDEM'
                               Then Begin
                               	//Grava Informa��es para pedido de venda
                                   If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XSetCodigoPedido), '')=True
                                   Then Begin
                                         DMServ.TOrd.Edit;
                                         DMServ.TOrd.FieldByName('STATUS').AsString:='CANCELADO';
                                         DMServ.TOrd.Post;
                                         DMServ.TFiscOrd.Edit;
                                         DMServ.TFiscOrd.FieldByName('NFESTATUS').AsString:='3';
                                         DMServ.TFiscOrd.FieldByName('NFEXMLCANCEL').AsString:=XXmlNfeCancel;
                                         DMServ.TFiscOrd.Post;
                                         DMServ.IBT.CommitRetaining;
                                         If CancelaItensOrdem(XSetCodigoPedido)=False Then
                                             MessageDlg('Verifique o estoque dos itens cancelados, ocorreram falhas no retorno de estoque.', mtWarning, [mbOK], 0);
                                   End
                                   Else Begin
                                     MessageDlg('N�o foi poss�vel setar o pedido como cancelado. Por favor, fa�a o manualmente.', mtWarning, [mbOK], 0);
                                   End;
                                   NfeVisualizanoSefaz;
                               End;
                               If XSetInTipoPedido='PEDC'
                               Then Begin
                               	//Grava Informa��es para pedido de compra
                                   If FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'cod_pedcomp', IntToStr(XSetCodigoPedido), '')=True
                                   Then Begin
                                         DMENTRADA.TPedC.Edit;
                                         DMENTRADA.TPedC.FieldByName('SITUACAO').AsString:='CANCELADO';
                                         DMENTRADA.TPedC.Post;
                                         DMENTRADA.TFiscPC.Edit;
                                         DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString:='3';
                                         DMENTRADA.TFiscPC.Post;
                                         DMENTRADA.IBT.CommitRetaining;
                                    //     If CancelaItensCompra(XSetCodigoPedido)=False Then
                                       //      MessageDlg('Verifique o estoque dos itens cancelados, ocorreram falhas no retorno de estoque.', mtWarning, [mbOK], 0);
                                   End
                                   Else Begin
                                   	MessageDlg('N�o foi poss�vel setar o pedido como cancelado. Por favor, fa�a o manualmente.', mtWarning, [mbOK], 0);
                                   End;
                                   DanfeEntradaVisualizar;
                               End;
                              	If NfeGravaNfeCancelada=False Then//Grava Fisicamente na pasta determinado o Xml final da Nfe (Apos ser enviada e aceita no ws)
                               	MessageDlg('O Xml de Cancelamento n�o foi gravado em disco, solicite suporte t�cnico para instru��es', mtWarning, [mbOK], 0);
                           End
                           Else Begin
                             Result:=False;
                             NfeAddFalhas('- Falha: N� '+XMsgNumRetorno+' Texto: '+XMsgGeral+' | '+XMsgRetWS);
                             MessageDlg('A Homologa��o de Cancelamento da NFe n�o Ocorreu. Solicite suporte t�cnico', mtWarning, [mbOK], 0);
                           End;
                           Screen.Cursor := CrDefault;
                       End
                       Else Begin
                             Result:=False;
                             MessageDlg('Sua Justificativa deve possuir ao menos 15 Caracteres.', mtWarning, [mbOK], 0);
                       End;
                   End;
               End
               Else Begin
					Result:=False;
					MessageDlg('A NFe selecionada n�o esta dispon�vel para cancelamento, � prov�vel que a mesma j� se encontre cancelado no WS', mtWarning, [mbOK], 0);
               End;
           End;
       End
       Else Begin
           MessageDlg('Documento fiscal n�o encontrado', mtWarning, [mbOK], 0);
           Result:=False;
       End;
   Except
   	Result:=False;
   End;
	Util := nil;
End;
//Fun��o utilizada para cancelar a nfe emitida anteriormente
Function TFMzrNfe.NfeStatusServ: Boolean;
begin
	Result:=True;
   Try
       If ConsultarStatusServico(false, XMsgGeralString)=False
       Then Begin
           If ConsultarStatusServico(True, XMsgGeralString)=False
           Then Begin
               Result:=False;
           End
           Else Begin
               Result:=False;
           End;
       End
       Else Begin
           Result:=True;
       End;
   Except
   	Result:=False;
   End;
End;

//Fun��o utilizada para consultar e listar todas as Nfes do sefaz
Function TFMzrNfe.NfeListarNotasFiscais: Boolean;
var
   Fsaida: TextFile;
   XML: WideString;
   tmpXMLDoc: TXMLDocument;
   XContMes, XContNf: Integer;
	cUF, c, XMesAux: WideString;
   XCod_Tmp: Integer;

Begin
	Information('Iniciando Consultas de NFes enviadas ao Sefaz...');
	FMenu.MAux.Lines.Clear;
   Result:=True;
   XCod_Tmp:=1;
   Try
       XSetLstAno:=ConcatZero(XSetLstAno, 2);
       //Cria classe principal da dll flexdoc
       Util := CoUtil.Create;
       For XContMes:=StrToInt(XSetLstMes) to StrToInt(XSetLstFim) do
       Begin
       	For XContNf:=XSetLstNumInicial to XSetLstNumFinal do
           Begin
           	//gera chave para consulta
       		Information('Gerando chave para consulta Nfe...'+IntToStr(XContMes)+'-'+IntToStr(XContNf));

               cUF:=XUfLocal;
               
       		c:='';
               XMesAux:=ConcatZero(IntToStr(XContMes), 2);
               
       		if XmlChaveAcesso('41', XSetLstAno, XMesAux , DMMACS.TEmpresa.FieldByName('CNPJ').AsString, XNfeModelo, XNfeSerie, IntToStr(XContNf), XNfeCodigoSeguranca, c, c, XNfeChave) then
               begin
                   if NfeConsultarNotaFiscal = True then
                   begin
                       if XDadosRetornoNumero='261' then
                           XDadosRetornoNumero:=XDadosRetornoNumero;

                       //se n�o consta na base verifica se est� em contingencia
                       if (XMsgNumRetorno = '217') OR (XMsgNumRetorno = '999') then
                       begin
                           xEnvioContingencia := True;
                           
                           if XNfeModelo = '55' then
                           begin
                               {NFe CONTINGENCIA}
                               XSiglaWS := 'SVC-RS';
                               xTipoEmissao := '7';
                           end
                           else begin
                               {NFCe}
                               //xTipoEmissao := '1';//normal
                               xTipoEmissao := '9';//contingencia
                           end;
                           
                           XmlChaveAcesso('41', XSetLstAno, XMesAux , DMMACS.TEmpresa.FieldByName('CNPJ').AsString, XNfeModelo, XNfeSerie, IntToStr(XContNf), XNfeCodigoSeguranca, c, c, XNfeChave);
                           NfeConsultarNotaFiscal;
                           
                           if XDadosRetornoNumero='261' then
                               XDadosRetornoNumero:=XDadosRetornoNumero;
                       end;
                       
                   	if (XMsgNumRetorno='100') OR (XMsgNumRetorno='101') OR (XMsgNumRetorno='102') OR (XMsgNumRetorno = '150')
                           OR (XMsgNumRetorno='302') OR (XMsgNumRetorno='205') OR (XMsgNumRetorno='110') then
                       begin
                           XCod_Tmp:=XCod_Tmp+1;
                           //Paulo 14/09/2010: Adiciona dados na tabela TMP
                           DMMACS.TMP.Insert;
 							DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
   						//Tratameto dos meses
   						if(XContMes = 1)then
      							DMMACS.TMP.FieldByName('DESC2').AsString:='Janeiro';
                               
   						if(XContMes = 2)then
      							DMMACS.TMP.FieldByName('DESC2').AsString:='Fevereiro';

   						If(XContMes = 3)then
      							DMMACS.TMP.FieldByName('DESC2').AsString:='Mar�o';

   						if(XContMes = 4)then
      							DMMACS.TMP.FieldByName('DESC2').AsString:='Abril';

   						if(XContMes = 5)then
      							DMMACS.TMP.FieldByName('DESC2').AsString:='Maio';

   						if(XContMes = 6)then
      							DMMACS.TMP.FieldByName('DESC2').AsString:='Junho';

   						if(XContMes = 7)then
      							DMMACS.TMP.FieldByName('DESC2').AsString:='Julho';

   						if(XContMes = 8)then
      							DMMACS.TMP.FieldByName('DESC2').AsString:='Agosto';

   						if(XContMes = 9)then
      							DMMACS.TMP.FieldByName('DESC2').AsString:='Setembro';

   						if(XContMes = 10)then
      							DMMACS.TMP.FieldByName('DESC2').AsString:='Outubro';

   						if(XContMes = 11)then
      							DMMACS.TMP.FieldByName('DESC2').AsString:='Novembro';

   						if(XContMes = 12)then
                               DMMACS.TMP.FieldByName('DESC2').AsString:='Dezembro';

  							DMMACS.TMP.FieldByName('INT2').AsInteger:=StrToInt(XDadosRetornoNumero);
   						DMMACS.TMP.FieldByName('DESC1').AsString:=XDadosRetornoChave;

                           if (XMsgNumRetorno='150') OR ((XMsgNumRetorno='100') AND (xEnvioContingencia)) then
                               DMMACS.TMP.FieldByName('DESC3').AsString:='CONTING.'
                           else if (XMsgNumRetorno='100') then
                               DMMACS.TMP.FieldByName('DESC3').AsString:='ATIVO'
                           else if (XMsgNumRetorno='101') then
                               DMMACS.TMP.FieldByName('DESC3').AsString:='CANCELADO'
                           else if (XMsgNumRetorno='102') then
                           	DMMACS.TMP.FieldByName('DESC3').AsString:='INUTILIZADO'
                           else if (XMsgNumRetorno='302') OR (XMsgNumRetorno='110') OR (XMsgNumRetorno='205') then
                           	DMMACS.TMP.FieldByName('DESC3').AsString:='DENEGADO';

                           DMMACS.TMP.Post;
                       end;

                       xEnvioContingencia := False;
                       if XNfeModelo = '55' then
                       begin
                           {NFe NORMAL}
                           XSiglaWS := 'PR';
                           xTipoEmissao := '1';
                       end
                       else begin
                           {NFCe NORMA�}
                           xTipoEmissao := '1';//normal
                       end;
                   End;
               end;
           End;
       End;
       DMMACS.Transaction.CommitRetaining;
   Except
   	Result:=False;
   End;
End;

//Fun��o utilizada para consultar e mostrar situa��o da Nfe
Function TFMzrNfe.NfeConsultarSituacaoNotaFiscal: Boolean;
var
   tmpXMLDoc: TXMLDocument;
Begin
	Information('Consultando Situa��o da Nfe enviada junto ao WebService...');
   Result:=True;
   Try
		Util := CoUtil.Create;
       //Edmar - 09/03/2015 - Adicionado 3 ao UF de recep��o da NF-e para sinalizar que a vers�o � 3.10  XNFeVersao       
		i:= Util.consultaNF2G(XSiglaWS{XUfLocal+'3'}, XNfeTipoAmbiente, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg, XMsgRetWS, XMsgGeral, trim(XNfeChave), '', '', '');
       case I of
         1: MessageDlg('C�digo de ambiente inv�lido', mtWarning, [mbOK], 0);
         2: MessageDlg('Sigla UF inv�lida', mtWarning, [mbOK], 0);
         3: MessageDlg('a UF n�o oferece o servi�o', mtWarning, [mbOK], 0);
         4: MessageDlg('Arquivo com a URL do WS n�o localizados', mtWarning, [mbOK], 0);
         5: MessageDlg('Erro n�o tratado de abertura/tratamento Arquivo ws.xml', mtWarning, [mbOK], 0);
         6: MessageDlg('Erro de valida��o de Schema', mtWarning, [mbOK], 0);
         7: MessageDlg('Nenhum certificado selecionado', mtWarning, [mbOK], 0);
         8: MessageDlg('Nenhum certificado v�lido foi encontrado com o nome informado', mtWarning, [mbOK], 0);
         9: MessageDlg('Erro inesperado no acesso ao certificado digital', mtWarning, [mbOK], 0);
         10: MessageDlg('Erro: tempo de espera excedeu o esperado', mtWarning, [mbOK], 0);
         11: MessageDlg('Erro de exce��o da biblioteca criptogr�fica', mtWarning, [mbOK], 0);
         12: MessageDlg('Erro de conectividade', mtWarning, [mbOK], 0);
       end;
       //Retorna mesagem
       XMsgGeral :=XMsgGeral;
       MessageDlg(XMsgGeral, mtWarning, [mbOK], 0);
   Except
   	Result:=False;
   End;
	Util := nil;
End;
//Fun��o utilizada para consultar o Status da Nfe
Function TFMzrNfe.NfeConsultarNotaFiscal: Boolean;
var
   Fsaida: TextFile;
   XML: WideString;
   tmpXMLDoc: TXMLDocument;
Begin
	Information('Consultando Nfe enviada para WebService');
   Result:=True;
   Try
		Util := CoUtil.Create;
       //Edmar - 09/03/2015 - Adicionado 3 ao UF de recep��o da NF-e para sinalizar que a vers�o � 3.10
		I := Util.consultaNF2G(XSiglaWS{XUfLocal+'3'}, XNfeTipoAmbiente, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg, XMsgRetWS, XMsgGeral, trim(XNfeChave), '', '', '');
       If (I >=5001) and (I <=5017)
       Then Begin
           Result:=False;
           XMsgNumRetorno:='100000';
       End;
       If (I >=5101) and (I <=5105)
       Then Begin
           Result:=False;
           XMsgNumRetorno:='100000';
       End;
       If (I >=5201) and (I <=5206)
       Then Begin
           Result:=False;
           XMsgNumRetorno:='100000';
       End;
       If (I >=6101) and (I <=6103)
       Then Begin
           Result:=False;
           XMsgNumRetorno:='100000';
		End;
       XMsgNumRetorno:=Trim(copy(XMsgGeral, 0, 4));
       Try
           StrToInt(XMsgNumRetorno);
       Except
           Result:=False;
           XMsgNumRetorno:='100000';
       End;
       Try
           //RECEBE NUMERO DE PROTOCOLO
           XML:=TirarAcentos(false, XMsgRetWS);
           tmpXMLDoc := TXMLDocument.Create(self);
           tmpXMLDoc.XML.Text:=XML;
           tmpXMLDoc.Active:=True;
           If tmpXMLDoc.ChildNodes['retConsSitNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['nProt'] <> nil Then
               XDadosRetornoProtocolo:=tmpXMLDoc.ChildNodes['retConsSitNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['nProt'].Text;
           //RECEBE NUMERO DA NOTA
			XDadosRetornoNumero:= IntToStr(StrToInt(Trim(Copy(XNfeChave, 26, 9))));
           //RECEBE NUMERO DA CHAVE
			XDadosRetornoChave:=XNfeChave;
       Except
       End;

   Except
   	Result:=False;
   End;
End;

//Fun��o utilizada para consultar o lote fiscal
Function TFMzrNfe.NfeConsultarLote(XNfeRecibo: String): Boolean;
Var
   XTentativa: Integer;
   //ALEXNFEUtil:NFe_Util_Interface;
Begin
     Result:=True;
     Try
        Information('Consultando Lote no WebService');
        //a consulta eh feito atravez de um determinado numero de tentaitvas
        XTentativa := 0;
        //tConsultas.Enabled := True;   
        While XTentativa<=6 do
        begin
             XTentativa:=XTentativa+1;
             Util := CoUtil.Create;
             XMsgRetWS :='';
             XMsgcabMsg :='';
             XMsgGeral :='';
             Sleep(5000);
             //ALEXNFEi:= Util.BuscaLoteSCAN(XUfLocal, XNfeTipoAmbiente, XNfeNomeCertificado, XMsgcabMsg, XMsgDadosMsg, XMsgRetWS, XMsgGeral, XNfeRecibo , '', '', '');
//             i:= Util.BuscaLote(XUfLocal, XNfeTipoAmbiente, XNfeNomeCertificado, XMsgcabMsg, XMsgDadosMsg, XMsgRetWS, XMsgGeral, XNfeRecibo , '', '', '');
             If i <> 0
             then begin
                  Information('Consultando Lote no WebService ('+IntToStr(XTentativa)+')');
                  Sleep(7000);
             end
             Else Begin
                  XTentativa:=200;//para sair do while
             End;
        end;
        //Apos consultar o lote grava retorno da consulta
        If XmlConsultaGravarRetorno(XMsgRetWS)=True
        Then Begin
              If XmlConsultaLerRetorno(XMsgRetWS)=False Then
                 Result:=False;
        End
        Else Begin
        	Result:=False;
        End;
     Except
        Result:=False;
     End;
End;

// Fun��o para ler retorno da consulta ao lote
Function TFMzrNfe.XmlConsultaLerRetorno(const XRetornoConsultaLote:WideString):Boolean;
var
  tmpXMLDoc: TXMLDocument;
  status: String;
begin
    Result:=True;
    Try
       // Cria a vari�vel baseada no TXMLDocument
       tmpXMLDoc := TXMLDocument.Create(self);

       // abre o arquivo na variavel
       tmpXMLDoc.XML.Text:=XRetornoConsultaLote;
       tmpXMLDoc.Active:=True;
       	{
       	Lote processado - cStat=104, com os resultados individuais de processamento das
        	NF-e;
        	� Lote em processamento � cStat=105, o aplicativo do contribuinte dever� fazer uma
        	nova consulta;
        	� Lote n�o localizado - cStat=106, o aplicativo do contribuinte dever� providenciar o
        	reenvio da mensagem;
        	� Recibo ou CNPJ do requisitante com problemas - cStat= 248 ou 223, o aplicativo
        	do contribuinte dever� sanar o problema; }
       status := tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['cStat'].Text;
       XMsgGeral := tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['xMotivo'].Text;
       // verifica se o estatus eh 104 (OK)
       if status <> '104' then
       begin
       	Result := False;
			MessageDlg(XMsgGeral, mtWarning, [mbOK], 0);
       end;
       //pega o numero do protocolo
       if not (tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['nProt'].Text = '')
       then begin
           XNfeProtocolo := tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['nProt'].Text;
       end
       Else Begin
           XNfeProtocolo:='';
           Result:=False;
           Information('NFe Processada com sucesso. Nr Protocolo n�o foi fornecido');
       End;

       tmpXMLDoc.Free;
    Except
    	Result:=False;
    End;
End;
// ler arquivo resposta a partir do id do lote
function TFMzrNfe.XmlLoteLerRespostaRetorno(XRetornoLoteEnviado: WideString):Boolean;
var
  tmpXMLDoc: TXMLDocument;
begin
    Result:=True;
    Try
       // Cria a vari�vel baseada no TXMLDocument
       tmpXMLDoc := TXMLDocument.Create(self);

       // abre o arquivo na variavel
       tmpXMLDoc.XML.Text:=XRetornoLoteEnviado;
       tmpXMLDoc.Active:=True;
       	//As mensagens recebidas com erro geram uma mensagem de erro. Nas demais hip�teses
        	//ser� retornado um recibo com n�mero, data, hora local de recebimento e tempo m�dio de
        	//resposta do servi�o nos �ltimos 5 minutos.
        	//O n�mero do recibo gerado pelo Portal da Secretaria de Fazenda Estadual ser� a chave de
       	//acesso do servi�o de consulta ao resultado do processamento do lote.


       	// SE ESTIVER TUDO OK
       	{
        	� a identifica��o do ambiente;
        	� a vers�o do aplicativo;
        	� o c�digo 103 e o literal �Lote recebido com Sucesso�;
        	� o c�digo da UF que atendeu a solicita��o;
        	� o n�mero do recibo (vide item 5.5), com data, hora local de recebimento da
        	mensagem;
        	� tempo m�dio de resposta do servi�o de processamento dos lotes nos �ltimos 5
        	minutos (vide detalhamento da forma de c�lculo no item 5.7 do manual de integra��o).

       	Caso ocorra algum problema de valida��o, o aplicativo dever� retornar uma mensagem com
        	as seguintes informa��es:
        	� a identifica��o do ambiente;
        	� a vers�o do aplicativo;
        	� o c�digo e a respectiva mensagem de erro (vide a tabela do item 5.1.1); }


       //Retorna mesagem
       XMsgGeral :='Status '+tmpXMLDoc.ChildNodes['retEnviNFe'].ChildNodes['cStat'].Text+': '+tmpXMLDoc.ChildNodes['retEnviNFe'].ChildNodes['xMotivo'].Text;

       // Se retorno 103 nfe aceita, caso o contrario n�o
       If tmpXMLDoc.ChildNodes['retEnviNFe'].ChildNodes['cStat'].Text <> '103'
       Then Begin
       	MessageDlg(XMsgGeral, mtWarning, [mbOK], 0);
          	Result := False;
       End;
       //pega o numero do recibo
       if not (tmpXMLDoc.ChildNodes['retEnviNFe'].ChildNodes['infRec'].ChildNodes['nRec'].Text = '') Then
           XNfeRecibo := tmpXMLDoc.ChildNodes['retEnviNFe'].ChildNodes['infRec'].ChildNodes['nRec'].Text;

       tmpXMLDoc.Free;
    Except
    	Result:=False;
    End;
end;


// Fun��o utilizada para ler resposta do cancelamento da Nfe
Function TFMzrNfe.XmlCancelamentoLerResposta(XRetornoCancelamentoNfe: WideString):Boolean;
var
	tmpXMLDoc: TXMLDocument;
   Fsaida: TextFile;
   XML: WideString;
begin
    Result:=True;
    Try
    	//Grava retorno do servidor
       XML := XRetornoCancelamentoNfe;
       XML := TirarAcentos(False, XML);
       verificaDiretorio('C:\Mzr\Arquivos\NFe\Retorno');
       AssignFile(Fsaida, 'C:\Mzr\Arquivos\NFe\Retorno\Canecelamento_'+XNfeRecibo+'.xml');
       Rewrite(Fsaida);
       Write(Fsaida, XML);
       CloseFile(Fsaida);

       // Cria a vari�vel baseada no TXMLDocument
       tmpXMLDoc := TXMLDocument.Create(self);
       // abre o arquivo na variavel
       tmpXMLDoc.XML.LoadFromFile('C:\Mzr\Arquivos\NFe\Retorno\Canecelamento_'+XNfeRecibo+'.xml');
       tmpXMLDoc.Active:=True;
       //Retorna mesagem
       XMsgGeral:='Status '+tmpXMLDoc.ChildNodes['retCancNFe'].ChildNodes['infCanc'].ChildNodes['cStat'].Text+': '+tmpXMLDoc.ChildNodes['retCancNFe'].ChildNodes['infCanc'].ChildNodes['xMotivo'].Text;
       XNfeProtocolo := tmpXMLDoc.ChildNodes['retCancNFe'].ChildNodes['infCanc'].ChildNodes['nProt'].Text;
       // Se retorno 103 nfe aceita, caso o contrario n�o
       if tmpXMLDoc.ChildNodes['retCancNFe'].ChildNodes['infCanc'].ChildNodes['cStat'].Text <> '101'
       Then Begin
          	Result := False;
       	MessageDlg(XMsgGeral, mtWarning, [mbOK], 0);
       End;
       tmpXMLDoc.Free;
    Except
    	Result:=False;
    End;
end;

//Fun��o para visualizar danfe da nfe emitida
procedure TFMzrNfe.DanfeVisualizar;
Var
   I, XCod_tmp: Integer;
   XvlrParcProd:Real;
begin
   //Alex: Comentei o c�digo abaixo pq esta dando problema e travando o sistema na ssd
   {If FMenu.XNOMEIMPPADRAO<>''
   Then Begin
       Try
           //Edmar - 25/04/2017 - Seleciona a impressora padr�o do Windows por default
           frxNfe.PrintOptions.Printer := FMenu.XNOMEIMPPADRAO;
           frxNfe.SelectPrinter;
       Except
           MessageDlg('Foi detectado um problema de comunica��o com a sua impressora.', mtWarning, [mbOK], 0);
       End;
   End;}

	//Edmar - 16/06/2015 - SQL para buscar se � NFC-e (modelo 65) ou NF-e (modelo 55).
   //se for NFC-e, busca o periodo fiscal e a URL do QR Code
	DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' SELECT MODELONF, URL_QRCODE, NFECHAVE, NFEPROTOCOLO, NUMDOCFIS, NFESTATUS, CONTINGENCIA ');
   if XSetInTipoPedido='PEDV' Then
   begin
   	DMMACS.TALX.SQL.Add(' FROM DOCFISSAIDA ');
       DMMACS.TALX.SQL.Add(' WHERE DOCFISSAIDA.COD_PEDIDO = :CODIGO ');
   end;

   if XSetInTipoPedido='ORDEM' Then
   begin
   	DMMACS.TALX.SQL.Add(' FROM DOCFISORD ');
   	DMMACS.TALX.SQL.Add(' WHERE DOCFISORD.COD_ORDEM = :CODIGO ');
   end;
   DMMACS.TALX.ParamByName('CODIGO').AsInteger := XSetCodigoPedido;
   DMMACS.TALX.Open;

   If DMMACS.TALX.IsEmpty
   Then Begin
       MessageDlg('O documento n�o cont�m nota fiscal v�lida', mtWarning, [mbOK], 0);
       Exit;
   End;

   if DMMACS.TALX.FieldByName('MODELONF').AsString = '65' then
   begin
       // se n�o estiver em contingencia valida
       if DMMACS.TALX.FieldByName('CONTINGENCIA').AsString <> '1' then
       begin
           //Somente visualiza o danfe se foi recebido a chave da nfe e o protocolo
           If (DMMACS.TALX.FieldByName('NFECHAVE').asstring='')
           Then Begin
               MessageDlg('O Danfe n�o pode ser impresso sem chave de Nfe. Verifique se a NFe foi realmente transmitida para o sefaz e execute a fun��o de Recuperar Dados.', mtWarning, [mbOK], 0);
               Exit;
           End;
           If (DMMACS.TALX.FieldByName('NFEPROTOCOLO').asstring='')
           Then Begin
               MessageDlg('O Danfe n�o pode ser impresso sem o Protocolo de Autoriza��o de uso da Nfe. Verifique se a NFe foi realmente transmitida para o sefaz e execute a fun��o de Recuperar Dados.', mtWarning, [mbOK], 0);
               Exit;
           End;
           If (DMMACS.TALX.FieldByName('NUMDOCFIS').asstring='')
           Then Begin
               MessageDlg('O Danfe n�o pode ser impresso sem o n�mero da Nfe. Verifique se a NFe foi realmente transmitida para o sefaz e execute a fun��o de Recuperar Dados.', mtWarning, [mbOK], 0);
               Exit;
           End;
           If (DMMACS.TALX.FieldByName('NFESTATUS').asstring='4')
           Then Begin
               MessageDlg('O Danfe n�o pode ser impresso! O Uso desta NFe foi Denegado!', mtWarning, [mbOK], 0);
               Exit;
           End;
           If (DMMACS.TALX.FieldByName('NFESTATUS').asstring='2')
           Then Begin
               MessageDlg('O Danfe n�o pode ser impresso! Esta NFe n�o foi devidamente enviada ao sefaz!', mtWarning, [mbOK], 0);
               Exit;
           End;
       end;
   	XURLNFCe := DMMACS.TALX.FieldByName('URL_QRCODE').AsString;

       //busca dados de cabe�alho da empresa
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add(' SELECT EMPRESA.RAZAO_SOCIAL, EMPRESA.CNPJ, EMPRESA.INSC_EST IE, EMPRESA.ENDERECO, ');
       DMESTOQUE.Alx4.SQL.Add(' EMPRESA.NUMERO, VWCIDADE.NOME, VWCIDADE.UF, LOJA.LOGOEMPRESA FROM LOJA ');
       DMESTOQUE.Alx4.SQL.Add(' LEFT JOIN EMPRESA ON EMPRESA.COD_EMPRESA = LOJA.COD_EMPRESA ');
       DMESTOQUE.Alx4.SQL.Add(' LEFT JOIN VWCIDADE ON VWCIDADE.COD_CIDADE = EMPRESA.COD_CIDADE ');
       DMESTOQUE.Alx4.Open;

       //busca os dados gerais
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
   	if XSetInTipoPedido='PEDV' then
       begin
       	DMESTOQUE.Alx1.SQL.Add(' SELECT DOCFISSAIDA.NUMDOCFIS, DOCFISSAIDA.NFESERIE, DOCFISSAIDA.DTEMISSAO, DOCFISSAIDA.NFECHAVE, DOCFISSAIDA.COD_PERIODOFISCAL, DOCFISSAIDA.NFESTATUS, DOCFISSAIDA.CONTINGENCIA, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.NFEPROTOCOLO, PEDVENDA.NOMECLI NOME, PEDVENDA.CPFCNPJ, VWCLIENTE.ENDERECO, VWCLIENTE.ENDNUMERO, VWCLIENTE.CIDADE, VWCLIENTE.UF_ESTADO UF, DOCFISSAIDA.DADOSAD01, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.NFEAMBIENTE, DOCFISSAIDA.RESERVFISC01, SUM(ITENSPEDVEN.QTDEPROD) QTDEITENS, PEDVENDA.VALOR TOTAL, FORMPAG.DESCRICAO, DOCFISSAIDA.VLRDESCONTO ');
           DMESTOQUE.Alx1.SQL.Add(' FROM DOCFISSAIDA ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN PEDVENDA ON DOCFISSAIDA.COD_PEDIDO = PEDVENDA.COD_PEDVENDA ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN VWCLIENTE ON VWCLIENTE.COD_CLIENTE = PEDVENDA.COD_CLIENTE ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ITENSPEDVEN ON ITENSPEDVEN.COD_PEDVEN = PEDVENDA.COD_PEDVENDA ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN FORMPAG ON PEDVENDA.COD_FORMPAG = FORMPAG.COD_FORMPAG ');
           DMESTOQUE.Alx1.SQL.Add(' WHERE DOCFISSAIDA.COD_PEDIDO = :CODIGO ');
           DMESTOQUE.Alx1.SQL.Add(' GROUP BY DOCFISSAIDA.NUMDOCFIS, DOCFISSAIDA.NFESERIE, DOCFISSAIDA.DTEMISSAO, DOCFISSAIDA.NFECHAVE, DOCFISSAIDA.COD_PERIODOFISCAL, DOCFISSAIDA.DADOSAD01, DOCFISSAIDA.CONTINGENCIA, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.NFEPROTOCOLO, NOME, CPFCNPJ, VWCLIENTE.ENDERECO, VWCLIENTE.ENDNUMERO, VWCLIENTE.CIDADE, DOCFISSAIDA.NFESTATUS, DOCFISSAIDA.VLRDESCONTO, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.NFEAMBIENTE, DOCFISSAIDA.RESERVFISC01, UF, VWCLIENTE.NOME, VWCLIENTE.CPFCNPJ, PEDVENDA.VALOR, FORMPAG.DESCRICAO ');
       end
       else begin
           DMESTOQUE.Alx1.SQL.Add(' SELECT DOCFISORD.NUMDOCFIS, DOCFISORD.NFESERIE, DOCFISORD.DTEMISSAO, DOCFISORD.NFECHAVE, DOCFISORD.COD_PERIODOFISCAL, DOCFISORD.NFESTATUS, DOCFISORD.DADOSAD01, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.NFEPROTOCOLO, ORDEM.NOMECLI NOME, ORDEM.CPFCNPJ, VWCLIENTE.ENDERECO, VWCLIENTE.ENDNUMERO, VWCLIENTE.CIDADE, VWCLIENTE.UF_ESTADO UF,  DOCFISORD.CONTINGENCIA, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.NFEAMBIENTE, DOCFISORD.RESERVFISC01, SUM(ITPRODORD.QTD) QTDEITENS, ORDEM.TOTPROD TOTAL, FORMPAG.DESCRICAO, DOCFISORD.VLRDESCONTO ');
           DMESTOQUE.Alx1.SQL.Add(' FROM DOCFISORD ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ORDEM ON DOCFISORD.COD_ORDEM = ORDEM.COD_ORDEM ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN VWCLIENTE ON ORDEM.COD_CLIENTE = VWCLIENTE.COD_CLIENTE ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ITPRODORD ON ORDEM.COD_ORDEM = ITPRODORD.COD_ORDEM ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN FORMPAG ON ORDEM.COD_FORMPAG = FORMPAG.COD_FORMPAG ');
           DMESTOQUE.Alx1.SQL.Add(' WHERE DOCFISORD.COD_ORDEM = :CODIGO ');
           DMESTOQUE.Alx1.SQL.Add(' GROUP BY DOCFISORD.NUMDOCFIS, DOCFISORD.NFESERIE, DOCFISORD.DTEMISSAO, DOCFISORD.NFECHAVE, DOCFISORD.COD_PERIODOFISCAL, DOCFISORD.NFESTATUS, DOCFISORD.CONTINGENCIA, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.NFEPROTOCOLO, NOME, CPFCNPJ, VWCLIENTE.ENDERECO, VWCLIENTE.ENDNUMERO, VWCLIENTE.CIDADE, DOCFISORD.VLRDESCONTO, DOCFISORD.DADOSAD01, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.NFEAMBIENTE, DOCFISORD.RESERVFISC01, UF, VWCLIENTE.NOME, VWCLIENTE.CPFCNPJ, TOTAL, FORMPAG.DESCRICAO ');
       end;
       DMESTOQUE.Alx1.ParamByName('CODIGO').AsInteger := XSetCodigoPedido;
       DMESTOQUE.Alx1.Open;
       
       //busca os itens
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
   	if XSetInTipoPedido='PEDV' then
       begin
	       	DMESTOQUE.Alx.SQL.Add(' SELECT SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO, ITENSPEDVEN.QTDEPROD QTD, UNIDADE.SIGLA_UNID UN, ITENSPEDVEN.VALUNIT UNIT, ITENSPEDVEN.VALORTOTAL TOTAL ');
           DMESTOQUE.Alx.SQL.Add(' FROM PEDVENDA ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN ITENSPEDVEN ON PEDVENDA.COD_PEDVENDA = ITENSPEDVEN.COD_PEDVEN ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN ESTOQUE ON ITENSPEDVEN.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
           DMESTOQUE.Alx.SQL.Add(' WHERE PEDVENDA.COD_PEDVENDA = :CODIGO ');
       end
       else begin
           DMESTOQUE.Alx.SQL.Add(' SELECT SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO, ITPRODORD.QTD, UNIDADE.SIGLA_UNID UN, ITPRODORD.VLRUNIT UNIT, ITPRODORD.TOTAL ');
           DMESTOQUE.Alx.SQL.Add(' FROM ORDEM ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN ITPRODORD ON ORDEM.COD_ORDEM = ITPRODORD.COD_ORDEM ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN ESTOQUE ON ITPRODORD.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
           DMESTOQUE.Alx.SQL.Add(' WHERE ORDEM.COD_ORDEM = :CODIGO ');
       end;
       DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XSetCodigoPedido;
       DMESTOQUE.Alx.Open;

       if DMMACS.TLoja.FieldByName('TIPOIMP_NFCE').AsString = 'COMP' then
       	frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFCeCompleto.fr3')
       else
       	if DMMACS.TLoja.FieldByName('TIPOIMP_NFCE').AsString = 'CUPOM' then
           begin
               //Edmar - 24/04/2017 - Altera a impressora padr�o para a que est�
               //configurada na loja para impress�o de nf
               //Alex: Comentei o c�digo abaixo pq esta dando problema e travando o sistema na ssd
               {If Trim(DMMACS.TLoja.FieldByName('NFIMP').AsString)<>''
				Then Begin
                   Try
               	    SetDefaultPrinter(DMMACS.TLoja.FieldByName('NFIMP').AsString);
               	    //Edmar - 25/04/2017 - Seleciona no fastreport a impressora de NF por padr�o
               	    frxNfe.PrintOptions.Printer := DMMACS.TLoja.FieldByName('NFIMP').AsString;
               	    frxNfe.SelectPrinter;
                   Except
                       MessageDlg('Foi detectado um problema de comunica��o com a sua impressora.', mtWarning, [mbOK], 0);
                   End;
				End;}
               frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFCeCupom.fr3');
           end
           else
   			frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFCeSimplificado.fr3');

       if FiltraTabela(DMMACS.TPeriodoFiscal, 'PERIODOFISCAL', 'COD_PERIODOFISCAL', DMESTOQUE.Alx1.FieldByName('COD_PERIODOFISCAL').AsString, '')
       Then Begin
			XSetInPeriodoFiscal := DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
       End;

       //Edmar - Filtra o periodo fiscal para salvar na pasta correta
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '/');
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '(');
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, ')');

       try
    	    TfrxPictureView(frxNfe.FindObject('QRCode')).Picture.LoadFromFile(GeraQRCode(XURLNFCe, 'QR'+DMESTOQUE.Alx1.FieldByName('NUMDOCFIS').AsString));
       Except
           MessageDlg('Falha ao Gerar Qrcode da NFCe para os seguintes dados:'+#13+#10+'Url de Nfce = '+ XURLNFCe +#13+#10+'Numero doc. Fiscal = ' + DMESTOQUE.Alx1.FieldByName('NUMDOCFIS').AsString, mtWarning, [mbOK], 0);
       End;
       if DMMACS.TLoja.FieldByName('TIPOIMP_NFCE').AsString = 'CUPOM' then
       begin
           XNFCeImp := True;
           frxNfe.PrepareReport();
           frxNfe.Print;

           //Alex: Comentei o c�digo abaixo pq esta dando problema e travando o sistema na ssd
           {If FMenu.XNOMEIMPPADRAO<>''
           Then Begin
               //Edmar - 24/04/2017 - Retorna a impressora padr�o para a que estava
               //setada no windows anteriormente
               Try
                   SetDefaultPrinter(FMenu.XNOMEIMPPADRAO);
               Except
                   MessageDlg('Foi detectado um problema de comunica��o com a sua impressora.', mtWarning, [mbOK], 0);
               End;
           End; }
       end
       else
    	    frxNfe.ShowReport();

       if (XEnviaPdf = 'S') then
           GravaPdfNfe;
   end
   else begin
	 	//FILTRA CIDADE
	 	FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');

   	dataSetCidade.DataSet := DMGEOGRAFIA.WCidade;//Edmar - 12/05/2014 - Seta data set manualmente
       If XSetInTipoPedido='PEDV' Then
       begin
             DMESTOQUE.Alx.Close;
             DMESTOQUE.Alx.SQL.Clear;
             DMESTOQUE.Alx.SQL.Add('select itenspedven.cod_estoque, itenspedven.valortotal,  itenspedven.qtdeprod, itenspedven.qtd4casas, itenspedven.valunit, itenspedven.aplicarst, itenspedven.cfop,');
             DMESTOQUE.Alx.SQL.Add('estoque.cod_subprod, subproduto.descricao,lote.numero,itenspedven.qtdemb, itenspedven.unidemb, itenspedven.qtdnaemb, SUBPRODUTO.complementofiscal, ');
             DMESTOQUE.Alx.SQL.Add('subproduto.'+ DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +' as contrint, subproduto.cod_cst, subproduto.cod_unidvenda, subproduto.ncm, subproduto.marca, cst.cod_sit_trib,');
             DMESTOQUE.Alx.SQL.Add('unidade.sigla_unid, pedvenda.numped, itenspedven.tipolista, itenspedven.aliqicms, itenspedven.aliqipi, itenspedven.vlripi, itenspedven.IPNPMC, itenspedven.DESCPRO, ');
             DMESTOQUE.Alx.SQL.Add('      itenspedven.BASEICMS, itenspedven.VLRICMS , itenspedven.BASEICMSSUBS, itenspedven.VLRICMSSUBS , itenspedven.MVADESTINO');
             DMESTOQUE.Alx.SQL.Add('from itenspedven');
             DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
             DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
             DMESTOQUE.Alx.SQL.Add('left join cst on itenspedven.cod_cst = cst.cod_cst');
             DMESTOQUE.Alx.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
             DMESTOQUE.Alx.SQL.Add('left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
             DMESTOQUE.Alx.SQL.Add('left join lote on itenspedven.cod_lote = lote.cod_lote');
             DMESTOQUE.Alx.SQL.Add('where pedvenda.cod_pedvenda = :COD');
             DMESTOQUE.Alx.ParamByName('COD').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx.Open;

             //Paulo 17/12/2010: Sql para buscar os dados da embalagem para til�pia
             DMESTOQUE.TSlave.close;
             DMESTOQUE.TSlave.sql.clear;
             DMESTOQUE.TSlave.sql.Add('SELECT unidade.sigla_unid from unidade');
             DMESTOQUE.TSlave.sql.Add('where unidade.cod_unidade = :UNID');
             DMESTOQUE.TSlave.ParamByName('UNID').AsInteger:=DMESTOQUE.Alx.FieldByName('unidemb').AsInteger;
             DMESTOQUE.TSlave.Open;

             DMESTOQUE.Alx1.Close;
             DMESTOQUE.Alx1.SQL.Clear;
             DMESTOQUE.Alx1.SQL.Add('SELECT pedvenda.cod_pedvenda, pedvenda.cod_cliente, pedvenda.dtpedven, pedvenda.numped, pedvenda.valor, pedvenda.dtfech,');
             DMESTOQUE.Alx1.SQL.Add('cliente.cod_pessoa, cliente.cod_interno as CODCLI, pessoa.nome as nomedes,pessoaj.razao_social, pessoa.cpfcnpj, pessoa.bairro, pessoa.cep, pessoa.endereco, pessoa.endnumero, ');
             DMESTOQUE.Alx1.SQL.Add('pessoa.telrel, pessoa.cod_cidade, cidade.nome as NOMECIDADE, cidade.cod_estado, estado.uf_estado, cliente.credencial AS CADPRO,');
             DMESTOQUE.Alx1.SQL.Add('docfissaida.baseicms, docfissaida.vlricms, docfissaida.bascalsubs, docfissaida.dtentsaid, docfissaida.dtemissao, docfissaida.vlrdesconto, docfissaida.horasaid, docfissaida.vlricmsubs, docfissaida.vlrtotprod,');
             DMESTOQUE.Alx1.SQL.Add('docfissaida.vlrfrete, docfissaida.nfestatus, docfissaida.vlrseg, docfissaida.nfeambiente, docfissaida.vlroutrasdesp, docfissaida.vlrtotipi, docfissaida.vlrtotdocnf, docfissaida.contingencia, ');
             DMESTOQUE.Alx1.SQL.Add('docfissaida.numdocfis, docfissaida.nfechave, docfissaida.nfeprotocolo, docfissaida.nfeserie, cfop.descricao as descricaocfop, cfop.cfop, docfissaida.RESERVFISC01, docfissaida.DADOSAD01,');
             DMESTOQUE.Alx1.SQL.Add('docfissaida.freteconta, docfissaida.placa, docfissaida.ufplaca, docfissaida.quantfrete, docfissaida.especiefrete, docfissaida.marcafrete, docfissaida.pesobruto, docfissaida.pesoliq, docfissaida.cod_transp, docfissaida.NUMCONHEC, docfissaida.antt');
             DMESTOQUE.Alx1.SQL.Add('FROM PEDVENDA');
             DMESTOQUE.Alx1.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
             DMESTOQUE.Alx1.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
             DMESTOQUE.Alx1.SQL.Add('left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa');
             DMESTOQUE.Alx1.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
             DMESTOQUE.Alx1.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
             DMESTOQUE.Alx1.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
             DMESTOQUE.Alx1.SQL.Add('left join cfop on docfissaida.cod_cfop = cfop.cod_cfop');
             DMESTOQUE.Alx1.SQL.Add('where pedvenda.cod_pedvenda = :COD');
             DMESTOQUE.Alx1.ParamByName('COD').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx1.Open;

             //Seleciona cfop1
             DMSAIDA.TAlx.Close;
             DMSAIDA.TAlx.SQL.Clear;
             DMSAIDA.TAlx.SQL.Add('SELECT  cfop.descricao as descricaocfop, cfop.cfop, cfop.cfop as cod_unidade, cfop.cfop as sigla_unid  '); //se remover o as cod_unidade vai ocorrer erro com convers�o unit�ria na tela de pedido de venda
             DMSAIDA.TAlx.SQL.Add('FROM PEDVENDA');
             DMSAIDA.TAlx.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
             DMSAIDA.TAlx.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
             DMSAIDA.TAlx.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
             DMSAIDA.TAlx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
             DMSAIDA.TAlx.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
             DMSAIDA.TAlx.SQL.Add('left join cfop on docfissaida.cod_cfop1 = cfop.cod_cfop');
             DMSAIDA.TAlx.SQL.Add('where pedvenda.cod_pedvenda = :COD');
             DMSAIDA.TAlx.ParamByName('COD').AsInteger := XSetCodigoPedido;
             DMSAIDA.TAlx.Open;

             //Seleciona cfop2
             DMESTOQUE.Alx3.Close;
             DMESTOQUE.Alx3.SQL.Clear;
             DMESTOQUE.Alx3.SQL.Add('SELECT  cfop.descricao as descricaocfop, cfop.cfop, cfop.cfop as cod_unidade, cfop.cfop as sigla_unid  '); //se remover o as cod_unidade vai ocorrer erro com convers�o unit�ria na tela de pedido de venda
             DMESTOQUE.Alx3.SQL.Add('FROM PEDVENDA');
             DMESTOQUE.Alx3.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
             DMESTOQUE.Alx3.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
             DMESTOQUE.Alx3.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
             DMESTOQUE.Alx3.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
             DMESTOQUE.Alx3.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
             DMESTOQUE.Alx3.SQL.Add('left join cfop on docfissaida.cod_cfop2 = cfop.cod_cfop');
             DMESTOQUE.Alx3.SQL.Add('where pedvenda.cod_pedvenda = :COD ');
             DMESTOQUE.Alx3.ParamByName('COD').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx3.Open;

             // - 13/04/2009: dados de transporte
             DMESTOQUE.Alx2.Close;
             DMESTOQUE.Alx2.sql.Clear;
             DMESTOQUE.Alx2.SQL.Add('select pessoa.nome, pessoa.cpfcnpj, pessoa.endnumero , pessoa.endereco, cidade.nome as nomecidade, estado.uf_estado as uf, pessoaj.insc_est');
             DMESTOQUE.Alx2.SQL.Add('from fornecedor');
             DMESTOQUE.Alx2.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
             DMESTOQUE.Alx2.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
             DMESTOQUE.Alx2.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
             DMESTOQUE.Alx2.SQL.Add('left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa');
             DMESTOQUE.Alx2.SQL.Add('left join docfissaida on fornecedor.cod_fornec = docfissaida.cod_transp');
             DMESTOQUE.Alx2.SQL.Add('where docfissaida.cod_pedido = :CODGERADOR');
             DMESTOQUE.Alx2.ParamByName('CODGERADOR').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx2.Open;

             //Paulo 16/12/2010: Calcula o desconto dos produtos
             DMESTOQUE.Alx5.Close;
             DMESTOQUE.Alx5.sql.Clear;
             DMESTOQUE.Alx5.SQL.Add('select sum(itenspedven.descnf)as descProd from itenspedven');
             DMESTOQUE.Alx5.SQL.Add('where itenspedven.cod_pedven= :CODPEDV');
             DMESTOQUE.Alx5.ParamByName('CODPEDV').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx5.Open;

             //Alex 03/07/2014: Verifica se temos algum produto com ST  a aplicar no danfe
             DMESTOQUE.Alx4.Close;
             DMESTOQUE.Alx4.sql.Clear;
             DMESTOQUE.Alx4.SQL.Add('select itenspedven.aplicarst as ST from itenspedven');
             DMESTOQUE.Alx4.SQL.Add('where (Itenspedven.cod_pedven= :CODPEDV) and (itenspedven.aplicarst=''1'')');
             DMESTOQUE.Alx4.ParamByName('CODPEDV').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx4.Open;

             //Seleciona ultima carta corretiva para a nota
             DMMACS.TCCE.Close;
             DMMACS.TCCE.SQL.Clear;
             DMMACS.TCCE.SQL.Add(' SELECT * FROM CCE WHERE (CCE.COD_GERADOR=:CODIGO) AND (CCE.TIPOGERADOr=''PEDV'')');
             DMMACS.TCCE.ParamByName('CODIGO').AsInteger:=XSetCodigoPedido;
             DMMACS.TCCE.Open;
             DMMACS.TCCE.Last;
             //verifica se deve imprimir cce
             If not DMMACS.TCCE.IsEmpty
             Then Begin
                 FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\Frfcce.frf');
                 FMzrNfe.FSDanfe.ShowReport;
             End;
        end;
        //Paulo 10/11/2010: - 168: Seleciona dados necess�rios para Ordem de Mec�nica
        If XSetInTipoPedido='ORDEM' Then
        begin
             DMESTOQUE.Alx.Close;
             DMESTOQUE.Alx.SQL.Clear;
             DMESTOQUE.Alx.SQL.Add('select ITPRODORD.cod_estoque, ITPRODORD.total as valortotal, ITPRODORD.qtd as qtdeprod, itprodord.qtd4casas, ITPRODORD.vlrunit as valunit, ITPRODORD.aplicarst, ITPRODORD.cfop,');
             DMESTOQUE.Alx.SQL.Add('estoque.cod_subprod, subproduto.descricao,');
             DMESTOQUE.Alx.SQL.Add('subproduto.contrint as contrint, subproduto.cod_cst, subproduto.cod_unidvenda, subproduto.ncm, subproduto.marca, cst.cod_sit_trib,');
             DMESTOQUE.Alx.SQL.Add('unidade.sigla_unid, ORDEM.numero as numped,ITPRODORD.aliqicms, ITPRODORD.aliqipi, ITPRODORD.vlripi, ITPRODORD.desconto as descpro,');
             DMESTOQUE.Alx.SQL.Add('ITPRODORD.baseicms, ITPRODORD.vlricms , ITPRODORD.baseicmssubs, ITPRODORD.vlricmssubs,  SUBPRODUTO.complementofiscal ');
             DMESTOQUE.Alx.SQL.Add('from ITPRODORD');
             DMESTOQUE.Alx.SQL.Add('left join estoque on ITPRODORD.cod_estoque = estoque.cod_estoque');
             DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
             DMESTOQUE.Alx.SQL.Add('left join cst on ITPRODORD.cod_cst = cst.cod_cst');
             DMESTOQUE.Alx.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
             DMESTOQUE.Alx.SQL.Add('left join ORDEM on ITPRODORD.cod_ordem = ORDEM.cod_ordem');
             DMESTOQUE.Alx.SQL.Add('where ORDEM.cod_ordem = :COD');
             DMESTOQUE.Alx.ParamByName('COD').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx.Open;

             //Paulo 16/12/2010: Calcula o desconto dos produtos
             DMESTOQUE.Alx5.Close;
             DMESTOQUE.Alx5.sql.Clear;
             DMESTOQUE.Alx5.SQL.Add('select sum(ITPRODORD.descnf)as descProd from ITPRODORD');
             DMESTOQUE.Alx5.SQL.Add('where ITPRODORD.cod_ordem= :CODORDEM');
             DMESTOQUE.Alx5.ParamByName('CODORDEM').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx5.Open;

             //Alex 03/07/2014: Verifica se temos algum produto com ST  a aplicar no danfe
             DMESTOQUE.Alx4.Close;
             DMESTOQUE.Alx4.sql.Clear;
             DMESTOQUE.Alx4.SQL.Add('select ITPRODORD.aplicarst AS ST from ITPRODORD');
             DMESTOQUE.Alx4.SQL.Add('where (ITPRODORD.cod_ordem= :CODORDEM) and (ITPRODORD.aplicarst=''1'')');
             DMESTOQUE.Alx4.ParamByName('CODORDEM').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx4.Open;
           
             DMESTOQUE.Alx1.Close;
             DMESTOQUE.Alx1.SQL.Clear;
             DMESTOQUE.Alx1.SQL.Add('SELECT ORDEM.cod_ordem, ORDEM.cod_cliente, ORDEM.dtabert, ORDEM.numero, ORDEM.totord as valor, ORDEM.dtfech,');
             DMESTOQUE.Alx1.SQL.Add('cliente.cod_pessoa, cliente.cod_interno as CODCLI, pessoa.nome as nomedes,pessoaj.razao_social, pessoa.cpfcnpj, pessoa.bairro, pessoa.cep, pessoa.endereco, pessoa.endnumero,');
             DMESTOQUE.Alx1.SQL.Add('pessoa.telrel, pessoa.cod_cidade, cidade.nome as NOMECIDADE, cidade.cod_estado, estado.uf_estado,  cliente.credencial AS CADPRO,');
             DMESTOQUE.Alx1.SQL.Add('docfisord.baseicms, docfisord.vlricms, docfisord.bascalsubs, docfisord.dtentsaid, docfisord.dtemissao, docfisord.vlrdesconto, docfisord.horasaid, docfisord.vlricmsubs, docfisord.vlrtotprod, docfisord.vlrtotserv as SERVICO,');
             DMESTOQUE.Alx1.SQL.Add('docfisord.vlrfrete, docfisord.nfestatus, docfisord.vlrseg, docfisord.nfeambiente, docfisord.vlroutrasdesp, docfisord.vlrtotipi, docfisord.vlrtotdocnf, docfisord.contingencia, ');
             DMESTOQUE.Alx1.SQL.Add('docfisord.numdocfis, docfisord.nfechave, docfisord.nfeprotocolo, docfisord.nfeserie, cfop.descricao as descricaocfop, cfop.cfop, docfisord.reservfisc01, docfisord.dadosad01,');
             DMESTOQUE.Alx1.SQL.Add('docfisord.freteconta, docfisord.placa, docfisord.ufplaca, docfisord.quantfrete, docfisord.especiefrete, docfisord.marcafrete, docfisord.pesobruto, docfisord.pesoliq, docfisord.cod_transp, docfisord.numconhec, docfisord.antt');
             DMESTOQUE.Alx1.SQL.Add('FROM ordem');
             DMESTOQUE.Alx1.SQL.Add('left join cliente on ordem.cod_cliente = cliente.cod_cliente');
             DMESTOQUE.Alx1.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
             DMESTOQUE.Alx1.SQL.Add('left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa');
             DMESTOQUE.Alx1.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
             DMESTOQUE.Alx1.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
             DMESTOQUE.Alx1.SQL.Add('left join docfisord on ordem.cod_ordem = docfisord.cod_ordem');
             DMESTOQUE.Alx1.SQL.Add('left join cfop on docfisord.cod_cfop = cfop.cod_cfop');
             DMESTOQUE.Alx1.SQL.Add('where ordem.cod_ordem = :COD');
             DMESTOQUE.Alx1.ParamByName('COD').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx1.Open;

             //Seleciona cfop1
             DMSAIDA.TAlx.Close;
             DMSAIDA.TAlx.SQL.Clear;
             DMSAIDA.TAlx.SQL.Add('SELECT  cfop.descricao as descricaocfop, cfop.cfop, cfop.cfop as cod_unidade, cfop.cfop as sigla_unid');
             DMSAIDA.TAlx.SQL.Add('FROM ORDEM');
             DMSAIDA.TAlx.SQL.Add('left join cliente on ORDEM.cod_cliente = cliente.cod_cliente');
             DMSAIDA.TAlx.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
             DMSAIDA.TAlx.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
             DMSAIDA.TAlx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
             DMSAIDA.TAlx.SQL.Add('left join docfisord on ordem.cod_ordem = docfisord.cod_ordem');
             DMSAIDA.TAlx.SQL.Add('left join cfop on docfisord.cod_cfop1= cfop.cod_cfop');
             DMSAIDA.TAlx.SQL.Add('where ordem.cod_ordem = :COD');
             DMSAIDA.TAlx.ParamByName('COD').AsInteger := XSetCodigoPedido;
             DMSAIDA.TAlx.Open;

             //Seleciona cfop2
             DMESTOQUE.Alx3.Close;
             DMESTOQUE.Alx3.SQL.Clear;
             DMESTOQUE.Alx3.SQL.Add('SELECT  cfop.descricao as descricaocfop, cfop.cfop, cfop.cfop as cod_unidade, cfop.cfop as sigla_unid  '); //se remover o as cod_unidade vai ocorrer erro com convers�o unit�ria na tela de pedido de venda
             DMESTOQUE.Alx3.SQL.Add('FROM ORDEM');
             DMESTOQUE.Alx3.SQL.Add('left join cliente on ORDEM.cod_cliente = cliente.cod_cliente');
             DMESTOQUE.Alx3.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
             DMESTOQUE.Alx3.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
             DMESTOQUE.Alx3.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
             DMESTOQUE.Alx3.SQL.Add('left join docfisord on ordem.cod_ordem = docfisord.cod_ordem');
             DMESTOQUE.Alx3.SQL.Add('left join cfop on docfisord.cod_cfop2 = cfop.cod_cfop');
             DMESTOQUE.Alx3.SQL.Add('where ordem.cod_ordem = :COD ');
             DMESTOQUE.Alx3.ParamByName('COD').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx3.Open;

             // - 13/04/2009: dados de transporte
             DMESTOQUE.Alx2.Close;
             DMESTOQUE.Alx2.sql.Clear;
             DMESTOQUE.Alx2.SQL.Add('select pessoa.nome, pessoa.cpfcnpj, pessoa.endnumero , pessoa.endereco, cidade.nome as nomecidade, estado.uf_estado as uf, pessoaj.insc_est');
             DMESTOQUE.Alx2.SQL.Add('from fornecedor');
             DMESTOQUE.Alx2.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
             DMESTOQUE.Alx2.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
             DMESTOQUE.Alx2.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
             DMESTOQUE.Alx2.SQL.Add('left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa');
             DMESTOQUE.Alx2.SQL.Add('left join docfisord on fornecedor.cod_fornec = docfisord.cod_transp');
             DMESTOQUE.Alx2.SQL.Add('where docfisord.cod_ordem = :CODGERADOR');
             DMESTOQUE.Alx2.ParamByName('CODGERADOR').AsInteger := XSetCodigoPedido;
             DMESTOQUE.Alx2.Open;
           
             //Seleciona ultima carta corretiva para a nota
             DMMACS.TCCE.Close;
             DMMACS.TCCE.SQL.Clear;
             DMMACS.TCCE.SQL.Add(' SELECT * FROM CCE WHERE (CCE.COD_GERADOR=:CODIGO) AND (CCE.TIPOGERADOr=''ORDEM'')');
             DMMACS.TCCE.ParamByName('CODIGO').AsInteger:=XSetCodigoPedido;
             DMMACS.TCCE.Open;
             DMMACS.TCCE.Last;
             //verifica se deve imprimir cce
             If not DMMACS.TCCE.IsEmpty
             Then Begin
                 FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\Frfcce.frf');
                 FMzrNfe.FSDanfe.ShowReport;
             End;
        end;

         FiltraTabela(DMMacs.TEmpresa, 'EMPRESA', '', '', '');
         FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
         FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMESTOQUE.Alx1.FieldByName('COD_PESSOA').AsString, '');

         //////////
         //FATURA//
         //////////
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

         //Recebe Informa��es de Fatura
         If (XSetInTipoPedido='PEDV') and ((FMenu.XSimplesRemessa=False) and (FMenu.XRemessaGarantia=False) and (FMenu.XDevolucao=False))
         Then Begin
             I:=1;
             XCod_tmp:=1;

             //filtra wpedv
             DMSAIDA.WPedV.Close;
             DMSAIDA.WPedV.SQL.Clear;
             DMSAIDA.WPedV.SQL.Add(' select * from vwpedv where vwpedv.cod_pedvenda=:codigo ');
             DMSAIDA.WPedV.ParamByName('codigo').AsInteger:=XSetCodigoPedido;
             DMSAIDA.WPedV.Open;

             if DMSAIDA.WPedV.FieldByName('COBRANCA').AsString = 'Pagamentos' then
             begin
               // Tratamento para fechamentos do tipo pagamento
               // Todo pagamento realizado nessa condi��o passa pelo contas a receber
               // quando dinheiro ou d-cart�o � lan�ado direto no cta. receber, logo, � � vista
               // com exce��o dos movimentos banc�rios que v�o para o MOVBANCO e tamb�m s�o � vista
               // nos outros casos s�o parcelas que est�o abertas e neste caso � � prazo
               DMCONTA.TParcCR.Close;
               DMCONTA.TParcCR.SQL.Clear;
               DMCONTA.TParcCR.SQL.Add(' SELECT PARCELACR.* FROM PARCELACR ');
               DMCONTA.TParcCR.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
               DMCONTA.TParcCR.SQL.Add(' WHERE (CTARECEBER.COD_GERADOR = :COD_GERADOR) AND (CTARECEBER.TIPOGERADOR = ''PEDVENDA'') ');
               DMCONTA.TParcCR.ParamByName('COD_GERADOR').AsInteger := XSetCodigoPedido;
               DMCONTA.TParcCR.Open;
               DMCONTA.TParcCR.First;

               while not DMCONTA.TParcCR.Eof do
               begin
                   DMMACS.TMP.Insert;
                   DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                   if ((DMCONTA.TParcCR.FieldByName('COBRANCA').AsString = 'Carteira') AND
                       (DMCONTA.TParcCR.FieldByName('FECH').AsString = 'S'))
                       OR (DMCONTA.TParcCR.FieldByName('COBRANCA').AsString = 'D - Cart�o') then
                       DMMACS.TMP.FieldByName('DESC1').AsString := '� VISTA'
                   else
                       DMMACS.TMP.FieldByName('DESC1').AsString := DMCONTA.TParcCR.FieldByName('DTVENC').AsString;
                           
                   DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
                   DMMACS.TMP.Post;
                       
                   XCod_tmp := XCod_tmp + 1;
                   DMCONTA.TParcCR.Next;
               end;

               DMCAIXA.TAlx.Close;
               DMCAIXA.TAlx.SQL.Clear;
               DMCAIXA.TAlx.SQL.Add(' SELECT MOVBANCO.VALOR, MOVBANCO.DTVENC FROM MOVBANCO ');
               DMCAIXA.TAlx.SQL.Add(' WHERE (MOVBANCO.COD_GERADOR = :COD_GERADOR) AND (MOVBANCO.TIPOGERADOR = ''PEDVENDA'') ');
               DMCAIXA.TAlx.ParamByName('COD_GERADOR').AsInteger := XSetCodigoPedido;
               DMCAIXA.TAlx.Open;
               DMCAIXA.TAlx.First;

               while not DMCAIXA.TAlx.Eof do
               begin
                   DMMACS.TMP.Insert;
                   DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                   DMMACS.TMP.FieldByName('DESC1').AsString := '� VISTA';
                   DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCAIXA.TAlx.FieldByName('VALOR').AsCurrency;
                   DMMACS.TMP.Post;

                   XCod_tmp := XCod_tmp + 1;
                   DMCAIXA.TAlx.Next;
               end;
           end
           else begin
               //Tenta encontras a Forma de pagamento
               If DMSAIDA.WPedV.FieldByName('formpag').AsString='� VISTA'
               Then Begin
                   //Paulo 11/03/2011: Filtra os lan�amento de caixa
                   DMCAIXA.TLanCaixa.Close;
                   DMCAIXA.TLanCaixa.SQL.Clear;
                   DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa lc where lc.cod_gerador=:CODGERADOR and lc.tipogerador = ''PEDVENDA''');
                   DMCAIXA.TLanCaixa.ParamByName('CODGERADOR').AsInteger:= XSetCodigoPedido;
                   DMCAIXA.TLanCaixa.Open;
                   //Paulo 11/03/2011: Caso n�o foi gerado financeiro n�o mostra nada
                   if DMCAIXA.TLanCaixa.IsEmpty then
                   begin
                       //Paulo 17/12/2010: para tilapia brazilian imprimi um danfe diferente
                       if DMMACS.TLoja.FieldByName('DESCRICAO').AsString = 'TILAPIA BRAZILIAN' then
                       begin
                           FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE_Tilapia.frf');
                           FMzrNfe.FSDanfe.ShowReport;
                       end
                      else begin
                           If Fmenu.XTIPOBOLTO='COMPLEMENTO' Then
                               //FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE_ComplementoFiscal.frf')
                               frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFE_ComplementoFiscal.fr3')
                           Else
                               frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFE.fr3');
                               //FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE.frf');
                           //FMzrNfe.FSDanfe.ShowReport;
                           if not XSafeXmlDist then
                               frxNfe.ShowReport()
                           else
                               frxNfe.PrepareReport();
                           //verifica se deve imprimir cce
                           If not DMMACS.TCCE.IsEmpty
                           Then Begin
                               FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\Frfcce.frf');
                               FMzrNfe.FSDanfe.ShowReport;
                           End;                       
                       end;
                       //Edmar - 25/04/2014 - S� exporta pra PDF se for enviar o xml e o pdf para o email do cliente
                       if XEnviaPdf = 'S' then
                           GravaPdfNfe;
                       Exit;
                   end
                   else begin 
                       DMMACS.TMP.Insert;
                       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                       DMMACS.TMP.FieldByName('DESC1').AsString:='� VISTA';
                       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMCAIXA.TLanCaixa.FieldByName('valor').AsCurrency;
                       DMMACS.TMP.Post;
                       XCod_tmp:=XCod_tmp+1;
                   end;
               End
               Else Begin
                   //filtra contas a receber
                   DMCONTA.TCtaR.Close;
                   DMCONTA.TCtaR.SQL.Clear;
                   DMCONTA.TCtaR.SQL.Add('select * from ctareceber where (ctareceber.cod_gerador=:CodGerador) and (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+')');
                   DMCONTA.TCtaR.ParamByName('CodGerador').AsInteger:= XSetCodigoPedido;
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
                               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                               DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TParcCR.FieldByName('dtvenc').AsString;
                               DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMCONTA.TParcCR.FieldByName('valor').AsCurrency;
                               DMMACS.TMP.Post;
                               XCod_tmp:=XCod_tmp+1;
                               DMCONTA.TParcCR.Next;
                           End;
                       End;
                   End
                   //Paulo 13/07/2011: Caso n�o tenha gerado financeiro n�o mostra na danfe
                   else begin
                       //Paulo 17/12/2010: para tilapia brazilian imprimi um danfe diferente
                       if DMMACS.TLoja.FieldByName('DESCRICAO').AsString = 'TILAPIA BRAZILIAN' then
                       begin
                           FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE_Tilapia.frf');
                           FMzrNfe.FSDanfe.ShowReport;
                       end
                       else begin
                           If Fmenu.XTIPOBOLTO='COMPLEMENTO' Then
                               //FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE_ComplementoFiscal.frf')
                               frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFE_ComplementoFiscal.fr3')
                           Else
                               frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFE.fr3');
                           //FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE.frf');
                           //FMzrNfe.FSDanfe.ShowReport;
                           //Edmar - 12/05/2014 - S� mostra a DANFE caso n�o estiver reenviando o xml/pdf
                           if not XSafeXmlDist then
                               frxNfe.ShowReport()
                           else
                               frxNfe.PrepareReport();
                           //verifica se deve imprimir cce
                           If not DMMACS.TCCE.IsEmpty
                           Then Begin
                               FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\Frfcce.frf');
                               FMzrNfe.FSDanfe.ShowReport;
                           End;
                       end;
                       //Edmar - 25/04/2014 - S� exporta pra PDF se for enviar o xml e o pdf para o email do cliente
                       if (XEnviaPdf = 'S') then
                           GravaPdfNfe;
                       Exit;
                   end;
               End;
             end;
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
                     If I=3
                     Then Begin
                         DMMACS.TLoja.FieldByName('tmp1').AsString:=DMMACS.TLoja.FieldByName('tmp1').AsString+'          '+DMMACS.TMP.FieldByName('DESC1').AsString+' - R$'+FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency)+#13;
                         I:=0;
                     End
                     Else Begin
                         If I=1 Then
                             DMMACS.TLoja.FieldByName('tmp1').AsString:=DMMACS.TLoja.FieldByName('tmp1').AsString+DMMACS.TMP.FieldByName('DESC1').AsString+' - R$'+FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency)
                         Else
                             DMMACS.TLoja.FieldByName('tmp1').AsString:=DMMACS.TLoja.FieldByName('tmp1').AsString+'          '+DMMACS.TMP.FieldByName('DESC1').AsString+' - R$'+FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency);

                     End;
                     I:=I+1;
                     DMMACS.TLoja.Post;
                     DMMACS.TMP.Next;
                 End;
                 FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
             End;
         End;

         //Paulo 10/11/2010: - 168: Seleciona dados necess�rios para Ordem de Mec�nica
         If XSetInTipoPedido='ORDEM'	Then
         Begin
             I:=1;
             XCod_tmp:=1;

             //filtra wordem
             DMServ.WOrdem.Close;
             DMServ.WOrdem.SQL.Clear;
             DMServ.WOrdem.SQL.Add(' select * from vwordem where vwordem.cod_ordem=:codigo ');
             DMServ.WOrdem.ParamByName('codigo').AsInteger:=XSetCodigoPedido;
             DMServ.WOrdem.Open;

             if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Pagamentos' then
             begin
                   // Tratamento para fechamentos do tipo pagamento
                   // Todo pagamento realizado nessa condi��o passa pelo contas a receber
                   // quando dinheiro ou d-cart�o � lan�ado direto no cta. receber, logo, � � vista
                   // com exce��o dos movimentos banc�rios que v�o para o MOVBANCO e tamb�m s�o � vista
                   // nos outros casos s�o parcelas que est�o abertas e neste caso � � prazo
                   DMCONTA.TParcCR.Close;
                   DMCONTA.TParcCR.SQL.Clear;
                   DMCONTA.TParcCR.SQL.Add(' SELECT PARCELACR.* FROM PARCELACR ');
                   DMCONTA.TParcCR.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
                   DMCONTA.TParcCR.SQL.Add(' WHERE (CTARECEBER.COD_GERADOR = :COD_GERADOR) AND (CTARECEBER.TIPOGERADOR = ''ORDEM'') ');
                   DMCONTA.TParcCR.ParamByName('COD_GERADOR').AsInteger := XSetCodigoPedido;
                   DMCONTA.TParcCR.Open;
                   DMCONTA.TParcCR.First;

                   while not DMCONTA.TParcCR.Eof do
                   begin
                       DMMACS.TMP.Insert;
                       DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                       if ((DMCONTA.TParcCR.FieldByName('COBRANCA').AsString = 'Carteira') AND
                           (DMCONTA.TParcCR.FieldByName('FECH').AsString = 'S'))
                           OR (DMCONTA.TParcCR.FieldByName('COBRANCA').AsString = 'D - Cart�o') then
                           DMMACS.TMP.FieldByName('DESC1').AsString := '� VISTA'
                       else
                           DMMACS.TMP.FieldByName('DESC1').AsString := DMCONTA.TParcCR.FieldByName('DTVENC').AsString;
                           
                       DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
                       DMMACS.TMP.Post;
                       
                       XCod_tmp := XCod_tmp + 1;
                       DMCONTA.TParcCR.Next;
                   end;

                   DMCAIXA.TAlx.Close;
                   DMCAIXA.TAlx.SQL.Clear;
                   DMCAIXA.TAlx.SQL.Add(' SELECT MOVBANCO.VALOR, MOVBANCO.DTVENC FROM MOVBANCO ');
                   DMCAIXA.TAlx.SQL.Add(' WHERE (MOVBANCO.COD_GERADOR = :COD_GERADOR) AND (MOVBANCO.TIPOGERADOR = ''ORDEM'') ');
                   DMCAIXA.TAlx.ParamByName('COD_GERADOR').AsInteger := XSetCodigoPedido;
                   DMCAIXA.TAlx.Open;
                   DMCAIXA.TAlx.First;

                   while not DMCAIXA.TAlx.Eof do
                   begin
                       DMMACS.TMP.Insert;
                       DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                       DMMACS.TMP.FieldByName('DESC1').AsString := '� VISTA';
                       DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCAIXA.TAlx.FieldByName('VALOR').AsCurrency;
                       DMMACS.TMP.Post;

                       XCod_tmp := XCod_tmp + 1;
                       DMCAIXA.TAlx.Next;
                   end;
               end
               else begin
                 //Tenta encontrar a Forma de pagamento
                 If DMServ.WOrdem.FieldByName('formapag').AsString='� VISTA'
                 Then Begin
                     //Paulo 11/03/2011: Filtra os lan�amento de caixa
                     DMCAIXA.TLanCaixa.Close;
                     DMCAIXA.TLanCaixa.SQL.Clear;
                     DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa lc where lc.cod_gerador=:CODGERADOR and lc.tipogerador = ''ORDSERV''');
                     DMCAIXA.TLanCaixa.ParamByName('CODGERADOR').AsInteger:= XSetCodigoPedido;
                     DMCAIXA.TLanCaixa.Open;
                     //Paulo 11/03/2011: Caso n�o foi gerado financeiro n�o mostra nada
                     if DMCAIXA.TLanCaixa.IsEmpty then
                     begin
                         //Paulo 17/12/2010: para tilapia brazilian imprimi um danfe diferente
                         if DMMACS.TLoja.FieldByName('DESCRICAO').AsString = 'TILAPIA BRAZILIAN' then
                         begin
                           FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE_Tilapia.frf');
                           FMzrNfe.FSDanfe.ShowReport;
                         end
                         else begin
                            If Fmenu.XTIPOBOLTO='COMPLEMENTO' Then
                                //FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE_ComplementoFiscal.frf')
                                frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFE_ComplementoFiscal.fr3')
                            Else
                                frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFE.fr3');
                                //FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE.frf');
                                //FMzrNfe.FSDanfe.ShowReport;
                             //Edmar - 12/05/2014 - S� mostra a DANFE caso n�o estiver reenviando o xml/pdf
                             if not XSafeXmlDist then
                                 frxNfe.ShowReport()
                             else
                                 frxNfe.PrepareReport();
                         end;
                         //Edmar - 25/04/2014 - S� exporta pra PDF se for enviar o xml e o pdf para o email do cliente
                         if XEnviaPdf = 'S' then
                             GravaPdfNfe;
                         Exit;
                     end;

                     DMMACS.TMP.Insert;
                     DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                     DMMACS.TMP.FieldByName('DESC1').AsString:='� VISTA';
                     //Paulo 10/03/2011: Se n�o permitir servi�os n�o escreve os itens de servi�o
                     //If DMMACS.TLoja.FieldByName('SERVNFE').AsString<>'1' then
                     //Edmar - 29/04/2014 - Trecho comentado para corrigir erro de fatura
                         DMMACS.TMP.FieldByName('VLR1').AsCurrency:=(DMESTOQUE.Alx1.FieldByName('vlrtotdocnf').AsCurrency);
                     {else
                         DMMACS.TMP.FieldByName('VLR1').AsCurrency:=(DMESTOQUE.Alx1.FieldByName('vlrtotprod').AsCurrency - DMESTOQUE.Alx1.FieldByName('vlrdesconto').AsCurrency);}
                     DMMACS.TMP.Post;
                     XCod_tmp:=XCod_tmp+1;
                 End
                 Else Begin
                     //filtra contas a receber
                     DMCONTA.TCtaR.Close;
                     DMCONTA.TCtaR.SQL.Clear;
                     DMCONTA.TCtaR.SQL.Add('select * from ctareceber where (ctareceber.cod_gerador=:CodGerador) and (ctareceber.tipogerador='+#39+'ORD'+#39+')');
                     DMCONTA.TCtaR.ParamByName('CodGerador').AsInteger:= XSetCodigoPedido;
                     DMCONTA.TCtaR.Open;

                     //Paulo 19/11/2010: Filtra os lan�amento de caixa caso for pgto multiplo
                     DMCAIXA.TLanCaixa.Close;
                     DMCAIXA.TLanCaixa.SQL.Clear;
                     DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa lc where (lc.cod_gerador=:CODGERADOR) AND (LC.TIPOGERADOR = ''ORDSERV'')');
                     DMCAIXA.TLanCaixa.ParamByName('CODGERADOR').AsInteger:= XSetCodigoPedido;
                     DMCAIXA.TLanCaixa.Open;

                     If Not DMCONTA.TCtaR.IsEmpty
                     Then Begin
                         If DMMACS.TLoja.FieldByName('SERVNFE').AsString='1' then
                         begin
                             DMCONTA.TAlx.Close;
                             DMCONTA.TAlx.SQL.Clear;
                             DMCONTA.TAlx.SQL.Add('Select totord,totserv from ordem');
                             DMCONTA.TAlx.SQL.Add('where ordem.cod_ordem = :codped');
                             DMCONTA.TAlx.ParamByName('CODPED').AsInteger:=XSetCodigoPedido;
                             DMCONTA.TAlx.Open;
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
                                     DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                                     DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TParcCR.FieldByName('dtvenc').AsString;
                                     DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMCONTA.TParcCR.FieldByName('valor').AsCurrency;
                                     DMMACS.TMP.Post;
                                 end;
                                 XCod_tmp:=XCod_tmp+1;
                                 DMCONTA.TParcCR.Next;

                             End;
                             //Paulo 14/03/2011: Calcula o valor as parcelas sem os valores de servi�os
                            { If DMMACS.TLoja.FieldByName('SERVNFE').AsString='1' then
                             begin  }
                                //XvlrParcProd:= DMCONTA.TAlx.FieldByName('totserv').AsCurrency/(XCod_tmp-1);
                                I:=1;
                                dmmacs.TMP.close;
                                dmmacs.tmp.sql.clear;
                                DMMACS.TMP.SQL.Add('delete from tmp');
                                DMMACS.TMP.ExecSQL;
                                DMMACS.Transaction.CommitRetaining;
                                dmmacs.TMP.close;
                                dmmacs.tmp.sql.clear;
                                DMMACS.TMP.SQL.Add('Select * from tmp');
                                DMMACS.TMP.Open;

                                DMCONTA.TParcCR.First;
                                While not DMCONTA.TParcCR.Eof do
                                Begin
                                    DMMACS.TMP.Insert;
                                    DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=I;
                                    DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TParcCR.FieldByName('dtvenc').AsString;
                                    DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMCONTA.TParcCR.FieldByName('valorprod').AsCurrency;
                                    DMMACS.TMP.Post;
                                    I:=I+1;
                                    DMCONTA.TParcCR.Next;
                                end;
                             end;

                         //End;

                     End
                     //Paulo 13/07/2011: Caso n�o tenha gerado financeiro n�o mostra na danfe
                     else begin
                         //Paulo 17/12/2010: para tilapia brazilian imprimi um danfe diferente
                         if DMMACS.TLoja.FieldByName('DESCRICAO').AsString = 'TILAPIA BRAZILIAN' then
                         begin
                             FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE_Tilapia.frf');
                             FMzrNfe.FSDanfe.ShowReport;
                         end
                         else begin
                           If Fmenu.XTIPOBOLTO='COMPLEMENTO' Then
                               //FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE_ComplementoFiscal.frf')
                               frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFE_ComplementoFiscal.fr3')
                           Else
                               frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFE.fr3');
                             //FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE.frf');
                           //FMzrNfe.FSDanfe.ShowReport;
                             //Edmar - 12/05/2014 - S� mostra a DANFE caso n�o estiver reenviando o xml/pdf
                           if not XSafeXmlDist then
                             frxNfe.ShowReport()
                           else
                             frxNfe.PrepareReport();
                        end;
                        //Edmar - 25/04/2014 - S� exporta pra PDF se for enviar o xml e o pdf para o email do cliente
                        if XEnviaPdf = 'S' then
                             GravaPdfNfe;
                        Exit;
                     end;
               
                     If Not DMCAIXA.TLanCaixa.IsEmpty
                     Then Begin
                         DMCAIXA.TLanCaixa.First;
                         While not DMCAIXA.TLanCaixa.Eof do
                         Begin
                             DMMACS.TMP.Insert;
                             DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                             DMMACS.TMP.FieldByName('DESC1').AsString:=DMCAIXA.TLanCaixa.FieldByName('dtlanc').AsString;
                             DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMCAIXA.TLanCaixa.FieldByName('valor').AsCurrency;
                             DMMACS.TMP.Post;
                             XCod_tmp:=XCod_tmp+1;
                             DMCAIXA.TLanCaixa.Next;
                         end;

                     end;
                 End;
               end;
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
                     If I=3
                     Then Begin
                         DMMACS.TLoja.FieldByName('tmp1').AsString:=DMMACS.TLoja.FieldByName('tmp1').AsString+'          '+DMMACS.TMP.FieldByName('DESC1').AsString+' - R$'+FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency)+#13;
                         I:=0;
                     End
                     Else Begin
                         If I=1 Then
                             DMMACS.TLoja.FieldByName('tmp1').AsString:=DMMACS.TLoja.FieldByName('tmp1').AsString+DMMACS.TMP.FieldByName('DESC1').AsString+' - R$'+FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency)
                         Else
                             DMMACS.TLoja.FieldByName('tmp1').AsString:=DMMACS.TLoja.FieldByName('tmp1').AsString+'          '+DMMACS.TMP.FieldByName('DESC1').AsString+' - R$'+FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency);

                     End;
                     I:=I+1;
                     DMMACS.TLoja.Post;
                     DMMACS.TMP.Next;
                 End;
                 FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
             End;
         end;
         DMMACS.Transaction.CommitRetaining;

         //Somente visualiza o danfe se foi recebido a chave da nfe e o protocolo
         If (DMESTOQUE.Alx1.FieldByName('nfechave').asstring='')
         Then Begin
             MessageDlg('O Danfe n�o pode ser impresso sem chave de Nfe. Verifiquese a NFe foi realmente transmitida para o sefaz e execute a fun��o de Recuperar Dados.', mtWarning, [mbOK], 0);
             Exit;
         End;
         If (DMESTOQUE.Alx1.FieldByName('nfeprotocolo').asstring='')
         Then Begin
             MessageDlg('O Danfe n�o pode ser impresso sem o Protocolo de Autoriza��o de uso da Nfe. Verifiquese a NFe foi realmente transmitida para o sefaz e execute a fun��o de Recuperar Dados.', mtWarning, [mbOK], 0);
             Exit;
         End;
         If (DMESTOQUE.Alx1.FieldByName('numdocfis').asstring='')
         Then Begin
             MessageDlg('O Danfe n�o pode ser impresso sem o n�mero da Nfe. Verifiquese a NFe foi realmente transmitida para o sefaz e execute a fun��o de Recuperar Dados.', mtWarning, [mbOK], 0);
             Exit;
         End;
         If (DMESTOQUE.Alx1.FieldByName('nfestatus').asstring='4')
         Then Begin
             MessageDlg('O Danfe n�o pode ser impresso! O Uso desta NFe foi Denegado!', mtWarning, [mbOK], 0);
             Exit;
         End;
         If (DMESTOQUE.Alx1.FieldByName('nfestatus').asstring='2')
         Then Begin
             MessageDlg('O Danfe n�o pode ser impresso! Esta NFe n�o foi devidamente enviada ao sefaz!', mtWarning, [mbOK], 0);
             Exit;
         End;

         //ALEX: O codigo abaixo ser� comentado devido ao fato que os servi�os devem ser separados dos produtos
         {If XServicoOp = true then
         BEGIN
             //Paulo 16/11/2010: Para imprimir a danfe para servi�os
             FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFESERVICO.frf');
             FMzrNfe.FSDanfe.ShowReport;
             XServicoOp:= False;
         END
         ELSE BEGIN
         }
         //Paulo 17/12/2010: para tilapia brazilian imprimi um danfe diferente
         if DMMACS.TLoja.FieldByName('DESCRICAO').AsString = 'TILAPIA BRAZILIAN' then
         begin
           FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE_Tilapia.frf');
           FMzrNfe.FSDanfe.ShowReport;
         end
         else begin
             If Fmenu.XTIPOBOLTO='COMPLEMENTO' Then
               //FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE_ComplementoFiscal.frf')
               frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFE_ComplementoFiscal.fr3')
             Else
               frxNfe.LoadFromFile('C:\MZR\Macs\Rel\FrfDANFE.fr3');
               //FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE.frf');
               //FMzrNfe.FSDanfe.ShowReport;
               //Edmar - 12/05/2014 - S� mostra a DANFE caso n�o estiver reenviando o xml/pdf
               if not XSafeXmlDist then
                   frxNfe.ShowReport()
               else
                   frxNfe.PrepareReport();
             //Edmar - 25/04/2014 - S� exporta pra PDF se for enviar o xml e o pdf para o email do cliente
             if XEnviaPdf = 'S' then
                GravaPdfNfe;
         end;
         GravaPdfNfe;
	end;
End;

//Fun��o para visualizar danfe da nfe de entrada emitida
procedure TFMzrNfe.DanfeEntradaVisualizar;
Var
   I, XCod_tmp: Integer;
begin
	   // FILTRA CIDADE
	   FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');

      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('  select itenspedc.cod_estoque, itenspedc.valortotal, itenspedc.qtdeprod, itenspedc.qtd4casas, itenspedc.valunit, itenspedc.aliqipi AS aplicarst, itenspedc.cfop, ');
      DMESTOQUE.Alx.SQL.Add('  estoque.cod_subprod, subproduto.descricao,  SUBPRODUTO.complementofiscal, ');
      DMESTOQUE.Alx.SQL.Add('  subproduto.contrint as contrint, subproduto.cod_cst, subproduto.cod_unidvenda, subproduto.ncm, subproduto.marca, cst.cod_sit_trib, ');
      DMESTOQUE.Alx.SQL.Add('  unidade.sigla_unid, pedcompra.numped, itenspedc.aliqicms, itenspedc.aliqipi, itenspedc.vlripi, itenspedc.descpro, ');
      DMESTOQUE.Alx.SQL.Add('  itenspedc.baseicms, itenspedc.vlricms , itenspedc.baseicms, itenspedc.vlricmssubs ');
      DMESTOQUE.Alx.SQL.Add('  from itenspedc ');
      DMESTOQUE.Alx.SQL.Add('  left join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('  left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
      DMESTOQUE.Alx.SQL.Add('  left join cst on itenspedc.cod_cst = cst.cod_cst ');
      DMESTOQUE.Alx.SQL.Add('  left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
      DMESTOQUE.Alx.SQL.Add('  left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
      DMESTOQUE.Alx.SQL.Add('  where pedcompra.cod_pedcomp = :COD ');
      DMESTOQUE.Alx.ParamByName('COD').AsInteger := XSetCodigoPedido;
      DMESTOQUE.Alx.Open;


      DMESTOQUE.Alx1.Close;
      DMESTOQUE.Alx1.SQL.Clear;
      DMESTOQUE.Alx1.SQL.Add('  SELECT pedcompra.cod_pedcomp, pedcompra.cod_fornec, pedcompra.dtpedcomp, pedcompra.numped, pedcompra.valor, pedcompra.dtfech, ');
      DMESTOQUE.Alx1.SQL.Add('  fornecedor.cod_pessoa, fornecedor.cod_interno as CODCLI,pessoaj.razao_social,pessoa.nome as nomedes, pessoa.cpfcnpj, pessoa.bairro, pessoa.cep, pessoa.endereco, pessoa.endnumero, ');
      DMESTOQUE.Alx1.SQL.Add('  pessoa.telrel, pessoa.cod_cidade, cidade.nome as NOMECIDADE, cidade.cod_estado, estado.uf_estado, ');
      DMESTOQUE.Alx1.SQL.Add('  docfis.baseicms, docfis.vlricms, docfis.bascalsubs, docfis.dtentsaid, docfis.dtemissao, docfis.vlrdesconto, docfis.horasaid, docfis.vlricmsubs, docfis.vlrtotprod, ');
      DMESTOQUE.Alx1.SQL.Add('  docfis.vlrfrete, docfis.vlrseg, docfis.nfeambiente, docfis.vlroutrasdesp, docfis.vlrtotipi, docfis.vlrtotdocnf, docfis.contingencia, ');
      DMESTOQUE.Alx1.SQL.Add('  docfis.numdocfis, docfis.nfestatus, docfis.nfechave, docfis.nfeprotocolo, docfis.nfeserie, cfop.descricao as descricaocfop, cfop.cfop, docfis.obs, ');
      DMESTOQUE.Alx1.SQL.Add('  docfis.freteconta, docfis.placa, docfis.ufplaca, docfis.quantfrete, docfis.especiefrete, docfis.marcafrete, docfis.pesobruto, docfis.pesoliq, docfis.cod_transp, docfis.numconhec ');
      DMESTOQUE.Alx1.SQL.Add('  FROM pedcompra ');
      DMESTOQUE.Alx1.SQL.Add('  left join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec ');
      DMESTOQUE.Alx1.SQL.Add('  left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
      DMESTOQUE.Alx1.SQL.Add('left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa');
      DMESTOQUE.Alx1.SQL.Add('  left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
      DMESTOQUE.Alx1.SQL.Add('  left join estado on cidade.cod_estado = estado.cod_estado ');
      DMESTOQUE.Alx1.SQL.Add('  left join docfis on pedcompra.cod_pedcomp = docfis.cod_pedido ');
      DMESTOQUE.Alx1.SQL.Add('  left join cfop on docfis.cod_cfop = cfop.cod_cfop ');
      DMESTOQUE.Alx1.SQL.Add('  where pedcompra.cod_pedcomp = :COD');
      DMESTOQUE.Alx1.ParamByName('COD').AsInteger := XSetCodigoPedido;
      DMESTOQUE.Alx1.Open;

      //Seleciona cfop2
      DMESTOQUE.Alx3.Close;
      DMESTOQUE.Alx3.SQL.Clear;
      DMESTOQUE.Alx3.SQL.Add('  SELECT  cfop.descricao as descricaocfop, cfop.cfop, cfop.cfop as cod_unidade, cfop.cfop as sigla_unid ');
      DMESTOQUE.Alx3.SQL.Add('  FROM pedcompra ');
      DMESTOQUE.Alx3.SQL.Add('  left join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec ');
      DMESTOQUE.Alx3.SQL.Add('  left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
      DMESTOQUE.Alx3.SQL.Add('  left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
      DMESTOQUE.Alx3.SQL.Add('  left join estado on cidade.cod_estado = estado.cod_estado ');
      DMESTOQUE.Alx3.SQL.Add('  left join docfis on pedcompra.cod_pedcomp = docfis.cod_pedido ');
      DMESTOQUE.Alx3.SQL.Add('  left join cfop on docfis.cod_cfop1 = cfop.cod_cfop ');
      DMESTOQUE.Alx3.SQL.Add('  where pedcompra.cod_pedcomp = :COD');
      DMESTOQUE.Alx3.ParamByName('COD').AsInteger := XSetCodigoPedido;
      DMESTOQUE.Alx3.Open;

      // - 13/04/2009: dados de transporte
      DMESTOQUE.Alx2.Close;
      DMESTOQUE.Alx2.sql.Clear;
      DMESTOQUE.Alx2.SQL.Add(' select pessoa.nome, pessoa.cpfcnpj, pessoa.endnumero , pessoa.endereco, cidade.nome as nomecidade, estado.uf_estado as uf, pessoaj.insc_est ');
      DMESTOQUE.Alx2.SQL.Add(' from fornecedor ');
      DMESTOQUE.Alx2.SQL.Add(' left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
      DMESTOQUE.Alx2.SQL.Add(' left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
      DMESTOQUE.Alx2.SQL.Add(' left join estado on cidade.cod_estado = estado.cod_estado ');
      DMESTOQUE.Alx2.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
      DMESTOQUE.Alx2.SQL.Add(' left join docfis on fornecedor.cod_fornec = docfis.cod_transp ');
      DMESTOQUE.Alx2.SQL.Add(' where docfis.cod_pedido = :CODGERADOR ');
      DMESTOQUE.Alx2.ParamByName('CODGERADOR').AsInteger := XSetCodigoPedido;
      DMESTOQUE.Alx2.Open;

      //Paulo 16/12/2010: Calcula o desconto dos produtos
      DMESTOQUE.Alx4.Close;
      DMESTOQUE.Alx4.sql.Clear;
      DMESTOQUE.Alx4.SQL.Add('select sum(itenspedc.descnf)as descProd from itenspedc');
      DMESTOQUE.Alx4.SQL.Add('where itenspedc.cod_pedcompra= :CODPEDC');
      DMESTOQUE.Alx4.ParamByName('CODPEDC').AsInteger := XSetCodigoPedido;
      DMESTOQUE.Alx4.Open;


      FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMESTOQUE.Alx1.FieldByName('COD_PESSOA').AsString, '');

      //Somente visualiza o danfe se foi recebido a chave da nfe e o protocolo
		If (DMESTOQUE.Alx1.FieldByName('nfechave').asstring='')
       Then Begin
			MessageDlg('O Danfe n�o pode ser impresso sem chave de Nfe. Verifiquese a NFe foi realmente transmitida para o sefaz.', mtWarning, [mbOK], 0);
           Exit;
       End;
 		If (DMESTOQUE.Alx1.FieldByName('nfechave').asstring='nfeprotocolo')
       Then Begin
			MessageDlg('O Danfe n�o pode ser impresso sem o Protocolo de Autoriza��o de uso da Nfe. Verifiquese a NFe foi realmente transmitida para o sefaz.', mtWarning, [mbOK], 0);
           Exit;
       End;
		If Fmenu.XTIPOBOLTO='COMPLEMENTO' Then
       	FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFEdev_ComplementoFiscal.frf')
       Else
       	FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFEdev.frf');
       FMzrNfe.FSDanfe.ShowReport;

		//VERIFICA NECESSIDADE DE IMPRIMIR CARTA DE CORRE��O
       //Seleciona ultima carta corretiva para a nota
       DMMACS.TCCE.Close;
       DMMACS.TCCE.SQL.Clear;
       DMMACS.TCCE.SQL.Add(' SELECT * FROM CCE WHERE (CCE.COD_GERADOR=:CODIGO) AND (CCE.TIPOGERADOr=''PEDC'')');
       DMMACS.TCCE.ParamByName('CODIGO').AsInteger:=XSetCodigoPedido;
       DMMACS.TCCE.Open;
       DMMACS.TCCE.Last;

       //verifica se deve imprimir cce
       If not DMMACS.TCCE.IsEmpty
       Then Begin
           FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\Frfcce.frf');
           FMzrNfe.FSDanfe.ShowReport;
       End;
End;

// Fun��o para gravar retorno da consulta ao lote
Function TFMzrNfe.XmlConsultaGravarRetorno(const retXML:WideString):Boolean;
var
   Fsaida: TextFile;
   XML: WideString;
begin
   Result:=True;
   Try
   	XML := retXML;
   	XML := TirarAcentos(False, XML);
   	verificaDiretorio('C:\Mzr\Arquivos\NFe\ConsultaLote');
   	AssignFile(Fsaida, 'C:\Mzr\Arquivos\NFe\ConsultaLote\'+XNfeRecibo+'-consulta-lote.xml');
   	Rewrite(Fsaida);
   	Write(Fsaida, XML);
   	CloseFile(Fsaida);
   Except
      Result:=False;
   End;
end;
Function TFMzrNfe.NfeTransmiteXmlScan: Boolean;
Begin
	Try
   	Result:=True;
		Util.EnviaLote2G('SCAN', XNfeTipoAmbiente, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg, XMsgRetWS, XMsgGeral, XNfeRecibo, XNfeDhRecbto, XNfetMed, '', '', '', XNfeCodigoSeguranca)

   Except
   	Result:=False;
   End;

End;

///
///                 O contribuinte deve formar os lote de acordo com o leiaute.
///
///    Entradas:
///
///            siglaUF: Sigla da UF do WS chamado
///            SVAN - SEFAZ Virtual do Ambiente Nacional, atende CE, ES, MA, PA, PI, PR e RN.
///            SVRS - SEFAZ Virtual do Rio Grande do Sul, atende AC, AL, AM, AP, MS, PB, RJ, RR, SC, SE e TO.
///            SCAN - Sistema de Conting�ncia do Ambiente Nacional, deve ser ativada pela UF interessada.
///
///                NFe: XML da NF-e
///
///       tipoAmbiente: C�digo do tipo de ambiente = 1-Produ��o / 2-Homologa��o
///    nomeCertificado: Nome do titular do certificado a ser utlizado na conex�o SSL
///                  Ex.: "CN=NFe - Associacao NF-e:99999090910270, C=BR, L=PORTO ALEGRE, O=Teste Projeto NFe RS, OU=Teste Projeto NFe RS, S=RS"
///
///           msgDados: XML da NF-e para transmiss�o ao WS  (n�o deve ser assinada)
///
///    proxy ,usuario e senha: deve ser informado nos casos em que � necess�rio o uso de proxy
///
///    proxy := 'http://proxyserver:port';    // verificar com o cliente qual � o endere�o do servidor proxy e a porta https, a porta padr�o do https � 443, assim ter�amos algo do tipo 'http://192.168.15.1:443'
///    usuario := 'nome usuario';
///    senha  := 'senha';
///
///    licenca: chave da licen�a de uso para ambiente de produ��o.
///
///
///   Retornos:
///
///           EnviaNFeSCAN: c�digo do resultado da chamada do WS
///              1 - Erro: tipoXML ,tipoXML,inv�lido (fora do intervalor 0-18)
///              2 - Erro: arquivo de Schema XML ,nome do arquivo, n�o localizado
///              3 - Erro: XML mal formado
///              4 - Erro: XML n�o atende Schema XML
///              5 - Erro: n�o previsto
///              6 - Erro: a vers�o da NF-e diverge da vers�o suportada pela DLL (1.10)
///              7 - Nenhum Certificado Selecionado
///              8 - Nenhum certificado v�lido foi encontrado com o nome informado
///              9 - Erro Inesperado: "+ex.Message
///             10 - Selecionado um Certificado de PF
///             11 - Certificado selecionado n�o tem CNPJ/CPF
///             12 - Certificado digital n�o tem chave privada
///             -----------------------Erro Assinatura Digital--------------------------
///             13 - Erro: Problema ao acessar o certificado digital - ,exce��o,
///             14 - Certificado digital inexistente para ,nome,
///             15 - XML mal formado + exce��o
///             16 - A tag de assinatura ,RefUri, inexiste
///             17 - A tag de assinatura ,RefUri, n�o � unica
///             18 - Erro Ao assinar o documento - ID deve ser string ,RefUri(Atributo),
///             19 - Erro: Ao assinar o documento - ,exce��o,
///             -----------------------Erro Chamada WS ----------------------------------
///             20 - codigo do ambiente inv�lido
///             21 - sigla da UF inv�lida
///             22 - a UF n�o oferece o servi�o
///             23 - Arquivo com a URL do WS n�o localizados
///             24 - Erro n�o tratado de abertura/tratamento Arquivo ws.xml
///             25 - Erro de valida��o de Schema
///             26 - Nenhum Certificado Selecionado
///             27 - Nenhum certificado v�lido foi encontrado com o nome informado
///             28 - Erro Inesperado no acesso ao certificado digital: "+ex.Message
///             29 - Erro: Time-out ao chamar o WS
///             30 - Erro: exce��o do biblioteca criptogr�fica
///             31 - Erro: conectividade
///             32 - Aplica��o n�o licenciada para o CNPJ ,CNPJEmissor,
///             33 - Erro: inesperado ao tratar o c�digo de retorno do WS
///             --------------------------------------------------------------------------
///             34 - Erro: O CNPJ informado tem tamanho diferente de 14 - ,[ ]n,
///             35 - Erro: A licen�a informada tem tamanho diferente de 128 - ,[ ],
///             36 - Erro: O arquivo n�o deve ser asssinado
///
///             ============================================================================
///             103 -
///             108 -
///             109 -
///             214 -
///             243 -
///             280 -
///             281 -
///             282 -
///             283 -
///             286 -
///             284 -
///             285 -
///             286 -
///
///          nroRecibo: XML da NF-e
///           msgDados: XML com o lote de NF-e para transmiss�o ao WS
///           msgCabec: XML do cabe�alho enviado ao WS (�til para depura��o)
///           msgRetWS: XML de resposta do WS
///        NFeAssinada: XML da NF-e assinada
///       msgResultado: literal do resultado da chamada do WS EnviaLote
//Fun��o utilizada para transmitir o xml da Nfe
Function TFMzrNfe.NfeTransmiteXml: Boolean;
Var
    i, ContConsultaNfe : integer;
    XMsgcabMsg: WideString;
    XNFeLote: WideString;
    token: String;
    XXmlSemAssinar, XXmlQrCode: WideString;
Begin
   Result:=True;
   Try
       //Antes de iniciar processo de emiss�o verifica a existencia de uma mesma Nfe emitida com o numero
       Information('Consultando no WS duplicidade de NFe...');
		If NfeConsultarNotaFiscal=True
       Then Begin
       	//diferente de 100 - Autorizado o uso da NF-e; 101 - Cancelamento de NF-e homologado; 102 - Inutiliza��o de n�mero homologado; 302 USO DENEGADO; 205 USO DENEGADO
       	If (XMsgNumRetorno<>'100') and (XMsgNumRetorno<>'101') and (XMsgNumRetorno<>'102')  and (XMsgNumRetorno<>'206')  and (XMsgNumRetorno<>'302') and (XMsgNumRetorno<>'205') and (XMsgNumRetorno<>'110')
           Then Begin
               Information('Transmitindo arquivo xml...');
               If XXmlNfe<>''
               Then Begin
                   Util := CoUtil.Create;

                   //TODO - Edmar - 18/11/2015 - Se for NFC-e, assina com a fun��o AssinarNFCe e depois envia
                   if XEmiteNFCe then
                   begin
                       token      := TiraZerosEsquerda(DMMACS.TLoja.FieldByName('IDCSC_NFCEPROD').AsString);
                       XXmlQrCode := Util.AssinarNFCE400(XXmlNfe, XNfeNomeCertificado, (DMMACS.TLoja.FieldByName('IDCSC_NFCEPROD').AsString), DMMACS.TLoja.FieldByName('CSC_NFCEPROD').AsString, '2', 'http://www.fazenda.pr.gov.br/nfce/qrcode', 'http://www.fazenda.pr.gov.br', '0', XNfeResultado, XMsgGeral, XNFeLote, XURLNFCe);

                       if XDadosNfe.Dados.TipoAmb = 1
                       then begin//PRODU��O TiraZerosEsquerda
					        XXmlNfe := Util.EnviaNFSincrono(XSiglaWS, XXmlQrCode, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg, XNfeRetornoWS,  XNfeResultado, XMsgGeral   , XNfeRecibo  , XNfeDhRecbto, XXmlNfe   , ''   , ''     , ''   , XNfeLicenca);
                           I:=XNfeResultado;
                           XXmlfinal:= XXmlNfe;
                           XNfeXmlAss := XXmlNfe;
                       end
			            else Begin//HOMOLOGA��O
                           MessageDlg('O Ambiente de homologa��o n�o esta dispon�vel para NFC-e', mtWarning, [mbOK], 0);
                           I := 1;
                       end;
                       If (I=100) or (I=150)
                       Then Begin
                           If GravaInfoNFCeBanco(I)=True
                           Then Begin
                             	Information('Nota Fiscal Eletr�nica transmitida e recebida com sucesso...');
                               result:=true;
                           End;
                       End
                       Else Begin
                           NfeAddFalhas('- Falha ao enviar NFCe: '+ IntToStr(XNfeResultado)+': ' + XMsgGeral);
                           Result:=False;
                       End;
                   end
                   Else Begin
			            //Edmar - 09/03/2015 - Adicionado 3 ao UF de recep��o da NF-e para sinalizar que a vers�o � 3.10
					    XNfeXmlAss:= Util.EnviaNfe2g(XSiglaWS{XUfLocal+'3'}, XXmlNfe, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg, XNfeRetornoWS,  XNfeResultado, XMsgGeral, XNfeRecibo, XNfeDhRecbto, XNfetMed, '', '', '', XNfeLicenca);

                       I:=XNfeResultado;
                       If I=103
                       Then Begin
                   		//A Nota Fiscal Eletronica foi enviada
                           //Analisa retorno
                           If GetGenericRetorno('ENVIANFESCAN', XMsgGeral)=True
                           Then Begin
                               //Trata recebimento Nfe
                               XMsgNumRetorno:=XMsgNumRetorno;
                               XMsgGeral:=XMsgGeral;
                           End
                           Else Begin
                               Result:=False;
                               NfeAddFalhas('- Identificado falha ao enviar NFe, Verifique manualmente no WS Sefaz:');
                               NfeAddFalhas('  Chave - '+XNfeChave);
                 				NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
                           End;
                           Information('Consultando resultado da transmiss�o...');
                           Sleep(10000);

                           //Consulta no ws se a nota foi aceita recuperando dados de protocolo
                           XSetInTipoAcao:='RETORNADADOS';//Altera Status para retorno de dados para Nfe
                           //Vamos aqui fazer uma repeti��o caso n�o consigamos na primeira tentativa consultar o resultado da transimiss�o
                           //Faremos uma estrutura de repeti��o de 5 vezes solicitando ao usu�rio se deseja permanecer no la�o
                           ContConsultaNfe:=1;
                           While ContConsultaNfe<=5 do
                           Begin
                         	  //Consulta Nfe para verificar status
                             If {NfeConsultarNotaFiscal} BuscaResultadoEnvioNFe = True
                             Then Begin
								  XNfeProtocolo:='';
                                 If XDadosRetornoProtocolo<>'' Then
                                     XNfeProtocolo:=XDadosRetornoProtocolo;
                             End;
                             XSetInTipoAcao:='EMITIR';//Altera Status para emiss�o
                             //Avalia retorno da Consulta
                             //100-Autorizado; 302-Denegado; 205-DENEGADO
                             If (XMsgNumRetorno='100') or (XMsgNumRetorno='302')
                               or (XMsgNumRetorno='301') or (XMsgNumRetorno='205')
                             Then Begin
								  If XNfeProtocolo='' Then
                                 		MessageDlg('A NFe foi devidamente enviada e aceita no sefaz. Por�m o seu n�mero de PROTOCOLO n�o foi recuperado. '+#13+#10+'Solicite interven��o t�cnica para efetuar recupera��o do mesmo.', mtWarning, [mbOK], 0);
                                 ContConsultaNfe:=10;//Informa contador de vari�vel para poder sair do while de consulta
                                 If (XMsgNumRetorno='100') Then
                                 		Information('Nfe autorizada para uso...');
                                 If (XMsgNumRetorno='302') or (XMsgNumRetorno='301') Then
                                 		Information('Nfe Denegado o Uso...');
                                 If (XMsgNumRetorno='205') Then
                                 		Information('Nfe Denegado o Uso...');
                                 If XNfeRecibo<>''
                                 Then Begin
                                    //Edmar - 06/05/2014 - Trecho comentado para se adequar ao envio do PDF
                                    //Paulo 08/11/2010: Gera o xml de distribui��o
                                   {if not GeraXMLDistribuicao then
                                       Information('Erro ao gerar Nfe de distribui��o');}
                                    //Se a analize de retorno do envio retornou algum recibo gravar resultado em banco
                                    If GravaInfoBanco=True
                                    Then Begin
                                    	If (XMsgNumRetorno='100') Then
                                       	Information('Nota Fiscal Eletr�nica transmitida e recebida com sucesso...')
                                       Else
                                       	Information('Nota Fiscal Eletr�nica transmitida por�m seu uso foi Denegado...')
                                    End
                                    Else Begin
										If (XMsgNumRetorno='100')
                                       Then Begin
                                       	Information('NFe transmitida com sucesso. Informa��es n�o foram gravadas em banco');
                                       	MessageDlg('NFe transmitida com sucesso. Informa��es n�o foram gravadas em banco', mtWarning, [mbOK], 0);
                                       End
                                       Else Begin
                                       	Information('NFe transmitida por�m com uso Denegado. Informa��es n�o foram gravadas em banco');
                                       	MessageDlg('NFe transmitida por�m com uso Denegado. Informa��es n�o foram gravadas em banco', mtWarning, [mbOK], 0);
                                       End;
                                    End;
                                 End
                                 Else Begin
                                       NfeAddFalhas('- Falha ao enviar NFe: Recibo da NFe n�o identificada:');
                                       NfeAddFalhas('  Verifique manualmente no Sefaz pela chave: '+XNfeChave);
                                       NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
                                       Result:=False;
                                 End;
                             End
                             Else Begin
                             		If (XMsgNumRetorno='105')
                                   Then Begin
                                   	If Mensagem('Confirma��o do usu�rio', 'A NFe enviada se encontra em processamento. Deseja repetir a tentativa de consulta?', '', 2, 3, False, 'c')=3
                                       Then Begin
                                             Result:=False;
                                             ContConsultaNfe:=10;//Marca contador para sair do la�o de repeti��o de consulta
                                             NfeAddFalhas('- Falha: A Nfe continua em processamento');
                                             NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
                                             //Grava retorno em banco de Dados, retorno negativo
                                             GravaInfoBancoNegativa;
                                       End;
                                   End
                                   Else Begin
                                       If (ContConsultaNfe>5) or (XMsgNumRetorno<>'217')
                                       Then Begin
                                           Result:=False;
                                           ContConsultaNfe:=10;//Marca contador para sair do la�o de repeti��o de consulta
                                           {NfeAddFalhas('- Falha: A Nfe n�o foi aceita no sefaz');
                                           NfeAddFalhas('      '+ XMsgGeral);}
                                           RejeicaoFiscal(XMsgGeral, XMsgNumRetorno);
                                           //Grava retorno em banco de Dados, retorno negativo
                                           GravaInfoBancoNegativa;
                                       End
                                       Else Begin
                                           If Mensagem('Confirma��o do usu�rio', 'A NF-e foi transmitida para o sefaz, por�m ainda n�o obtivemos aceitabilidade desta Nfe. Deseja repetir a tentativa de consulta?', '', 2, 3, False, 'c')=3
                                           Then Begin
                                               Result:=False;
                                               ContConsultaNfe:=10;//Marca contador para sair do la�o de repeti��o de consulta
                                               NfeAddFalhas('- Falha: A Nfe n�o foi aceita no sefaz');
                                               NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
                                               //Grava retorno em banco de Dados, retorno negativo
                                               GravaInfoBancoNegativa;
                                           End;
                                       End;
                                   End;
                             End;
                         End;
                       End
                       Else Begin
                         NfeAddFalhas('- Falha ao enviar NFe: '+XMsgGeral);
                         NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
                         Result:=False;
                       End;
                   End;
               End
               Else Begin
                   MessageDlg(XMsgRetWS, mtWarning, [mbOK], 0);
                   Result:=False;
               End;
               Util := nil;
           End
           Else Begin
           	Result:=False;
               If XMsgNumRetorno='206' Then
       			MessageDlg('A Numera��o '+IntToStr(XSetInNumFiscal)+' foi inutilizada na base de dados do Sefaz ', mtWarning, [mbOK], 0);
               If XMsgNumRetorno='302' Then
       			MessageDlg('A NFe N�mero '+IntToStr(XSetInNumFiscal)+' foi Denegado o Uso no Sefaz ', mtWarning, [mbOK], 0);
               If XMsgNumRetorno='205' Then
       			MessageDlg('A NFe N�mero '+IntToStr(XSetInNumFiscal)+' foi Denegado o Uso no Sefaz ', mtWarning, [mbOK], 0);
                   
               If (XMsgNumRetorno<>'206') and (XMsgNumRetorno<>'302')  and (XMsgNumRetorno<>'205')
               Then Begin
       			MessageDlg('A NFe N�mero '+IntToStr(XSetInNumFiscal)+' j� foi emitida', mtWarning, [mbOK], 0);
                   XNfeChave:='';
               End;
           End;
       End
       Else Begin
       	MessageDlg('A NFe n�o pode ser enviada. N�o foi possivel consultar o status da mesma junto ao WS', mtWarning, [mbOK], 0);
           Result:=False;
       End;
   Except
       Result:= False;
   End;
End;
//Fun��o para gerar o xml da Nfe atraves do dados j� selecionados
Function TFMzrNfe.XmlGerar: Boolean;
Begin
   Result:=True;
   Try
       //Chama fun��o para alimentar os dados da classe TdadosNfe que contem todas as informa��es para gerar o xml de envio
       If XmlAlimentaDados= True
       Then Begin
           //Se os dados para o Xml foi alimentado efetua a valida��o do mesmo
           If ValidarNFe(XDadosNfe, XMsgGeral)=False
           Then Begin
               Result := False;
               Exit;
           End
           Else begin
               If XmlGerarArquivoXml=False
               Then begin
                   Result:=False;
               End
               Else begin

               End
           End;
       End
       Else Begin
           Result:=False
       End;
   Except
       Result:=False;
   End;
End;


//Fun��o utilizado para inutilizar numera��es
Function TFMzrNfe.NFeInutilizaNumeracao: Boolean;
        ///  9 . InutilizaNroNF:  Inutiliza n�mera��o de NF-e
        ///
        ///    Entradas:
        ///
        ///            siglaUF: Sigla da UF do WS chamado
        ///       tipoAmbiente: C�digo do tipo de ambiente = 1-Produ��o / 2-Homologa��o
        ///    nomeCertificado: Nome do titular do certificado a ser utlizado na conex�o SSL  e assinatura do pedido
        ///                ano: ano de inutiliza��o
        ///               CNPJ: CNPJ do emissor
        ///             modelo: modelo da NF-e
        ///         nroInicial: primeiro n�mero da faixa
        ///           nroFinal: �ltimo n�mero da faixa
        ///            licenca: chave da liceb�a de uso
        ///
        ///      justificativa: Justificativa de cancelamento    ///            licenca: chave da licen�a de uso da aplica��o
        ///
        ///    proxy ,usuario e senha: deve ser informado nos casos em que � necess�rio o uso de proxy
        ///
        ///    IMPORTANTE: funcionamento ignorado por falta de testes
        ///
        ///   Retornos:
        ///
        ///       inutilizaNroNF: c�digo do resultado da chamada do WS
        ///                      0 - OK
        ///                      1 - codigo do ambiente inv�lido
        ///                      2 - sigla da UF inv�lida
        ///                      3 - a UF n�o oferece o servi�o
        ///                      4 - Arquivo com a URL dos WS n�o localizados
        ///                      5 - Erro n�o tratado de abertura/tratamento Arquivo ws.xml
        ///                      6 - Erro de valida��o de Schema
        ///                      7 - Nenhum Certificado Selecionado
        ///                      8 - Nenhum certificado v�lido foi encontrado com o nome informado
        ///                      9 - Erro Inesperado no acesso ao certificado digital: "+ex.Message
        ///                     10 - Erro: Time-out ao chamar o WS
        ///                     11 - Erro: exce��o do biblioteca criptogr�fica
        ///                     12 - Erro: conectividade
        ///                     13 - aplica��o n�o licenciada
        ///                     14 - Erro: Problema ao acessar o certificado digital - %exce��o%
        ///                     15 - Certificado digital inexistente para %nome%
        ///                     16 - XML mal formado + exce��o
        ///                     17 - A tag de assinatura %RefUri% inexiste
        ///                     18 - A tag de assinatura %RefUri% n�o � unica
        ///                     19 - Erro Ao assinar o documento - ID deve ser string %RefUri(Atributo)%
        ///                     20 - Erro: Ao assinar o documento - %exce��o%
        ///                     21 - Erro: O ano deve ter 2 posi��es
        ///                     22 - Erro: CNPJ informado inv�lido
        ///                     23 - Erro: Modelo inv�lido diferente de 55
        ///                     24 - Erro: Serie inv�lida
        ///                     25 - Erro: N�mero inicial da faixa inv�lido
        ///                     26 - Erro: N�mero Final da faixa inv�lido
        ///                     27 - Erro: N�mero Final menor que n�mero inicial da faixa
        ///                     28 - Erro: A justificativa deve ter pelo menos 15 posi��es
        ///                     29 - Erro: O nome do titular do certificado deve ser informado
        ///
        ///           msgCabec: XML do cabe�alho enviado ao WS (�til para depura��o)
        ///           msgDados: XML com o pedido de consulta de resultado de processamento de lote
        ///           msgRetWS: XML de resposta do WS
        ///       msgResultado: literal do resultado da chamada do WS EnviaLote
        ///
Var
	XNumIniInutiliza, XNumFimInutiliza, XModeloNF: String;
	XJustificativa: String;
   XAnoInutiliza: String;
	XRetornoFunction, XnProtocoloInut, XdProtocoloInut: WideString;//Numero de Protocolo de Autoriza��o e Data de Protocolo de Autoriza��o
begin
   Result:=True;
   Try
       //Antes de iniciar processo de inutiliza��o de numera��o
       Information('Iniciando Inutiliza��o...');
       InputQuery('Inutilizando Numera��o de NFe', 'Informe o n�mero inicial:', XNumIniInutiliza);
       InputQuery('Inutilizando Numera��o de NFe', 'Informe o n�mero final:', XNumFimInutiliza);
       If InputQuery('Informe Ano de Inutiliza��o de numera��o','Informe apenas os dois �ltimos digitos do anos para inutiliza��o', XAnoInutiliza)=True
       Then Begin
           If Length(XAnoInutiliza)<2
           Then Begin
               Result:=False;
				NfeAddFalhas('- O Ano de inutiliza��o deve apresentar os dois �ltimos digitos. Ex: 2010 = 10');
           End;
       End;
       If InputQuery('Informe o Modelo Fiscal.', 'Informe o Modelo Fiscal que voc� deseja inutilizar a numera��o (1 p/ NF-e; 2 p/ NFC-e).', XModeloNF) then
       begin
           if (XModeloNF <> '1') AND (XModeloNF <> '2') then
           begin
               Result := False;
				NfeAddFalhas('Por favor informe o Modelo Fiscal no intervalo (1 p/ NF-e; 2 p/ NFC-e).');
               Exit;
           end;
           
           if XModeloNF = '1' then
           begin
               XNfeModelo := '55';
       	    XSiglaWS := 'PR';
           end;
           
           if XModeloNF = '2' then
           begin
               XNfeModelo := '65';
       	    XSiglaWS := 'pr'               
           end;
       end;
       If InputQuery('Justificativa de Inutiliza��o','Justificativa (15 ou mais caracteres)', XJustificativa)=True
       Then Begin
           If Length(XJustificativa)<15
           Then Begin
               Result:=False;
				NfeAddFalhas('- A justificativa para inutiliza��o deve ser de no m�nimo 15 caracteres');
           End;
       End;
       
       Try
       	StrToInt(XNumIniInutiliza);
       Except
           Result:=False;
			NfeAddFalhas('- N�mero inicial de inutiliza��o inv�lido:');
       End;
       Try
       	StrToInt(XNumFimInutiliza);
       Except
           Result:=False;
			NfeAddFalhas('- N�mero final de inutiliza��o inv�lido:');
       End;

		If Result=True
       Then Begin
       	Information('Enviando requisi��o de inutiliza��o...');
           Util := CoUtil.Create;
			XRetornoFunction := Util.InutilizaNroNF2G(XSiglaWS, XNfeTipoAmbiente, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg, XMsgRetWS, XNfeResultado, XMsgGeral, XUfCodigo, XAnoInutiliza,  TirarCarct01(DMMACS.TEmpresa.FieldByName('CNPJ').AsString), XNfeModelo, XNfeSerie, XNumIniInutiliza, XNumFimInutiliza, XJustificativa, XnProtocoloInut, XdProtocoloInut, '', '', '', XNfeLicenca);
           if (XNfeResultado = 101) OR (XNfeResultado = 102)
           Then Begin
               Result:=True;
               Information('Homologado de Inutiliza��o de Numera��o Confirmada...');
               NfeAddFalhas(XMsgGeral);
           End
           Else Begin
               If XMsgNumRetorno<>'102'
               Then Begin
                   Result:=False;
                   Information('Falha na Inutiliza��o de Numera��o de NFe...');
                   NfeAddFalhas('  Inutiliza��o - '+XMsgGeral);
               End;
           End;
           Util := nil;
       End
       Else Begin
           Result:=False;
       End;
   Except
       Result:= False;
   End;  
end;


//Fun��o Utilizada para consultar o Status do Servidor
Function TFMzrNfe.ConsultarStatusServico(const scan:Boolean; out msgerro:String):Boolean;
    ///  4. ConsultaStatus2G: Consulta Situa��o do Web Service de Recep��o de NF-e
    ///
    ///    Entradas:
    ///
    ///            siglaWS: Sigla da WS consultado  (UF, SCAN, SVAN ou SVRS)
    ///            siglaUF: Sigla da UF que se deseja obter o status do servi�o
    ///       tipoAmbiente: C�digo do tipo de ambiente = 1-Produ��o / 2-Homologa��o
    ///    nomeCertificado: Nome do titular do certificado a ser utlizado na conex�o SSL
    ///                  Ex.: "CN=NFe - Associacao NF-e:99999090910270, C=BR, L=PORTO ALEGRE, O=Teste Projeto NFe RS, OU=Teste Projeto NFe RS, S=RS"
    ///
    ///    proxy ,usuario e senha: deve ser informado nos casos em que � necess�rio o uso de proxy
    ///
    ///    proxy := 'http://proxyserver:port';    // verificar com o cliente qual � o endere�o do servidor proxy e a porta https, a porta padr�o do https � 443, assim ter�amos algo do tipo 'http://192.168.15.1:443'
    ///    usuario := 'nome usuario';
    ///    senha  := 'senha';
    ///
    ///   Retornos:
    ///
    ///      ConsultaStatus2G: c�digo do resultado da chamada do WS
    ///     WS:    107-Servi�o em Opera��o
    ///   ______________________________________________________________________________________________________
    ///    DLL:       Os erros com c�digo > 5000 s�o erros tratados pela DLL e ocorrem nas seguintes situa��es:
    ///
    ///            5001 - 5017 - falha na tentativa de consumir o WS (problema de conex�o/rede)
    ///            5101 - 5105 - falha no tratamento do XML de resposta do WS (problema na resposta do WS)
    ///            5201 - 5206 - falha na recupera��o da URL do WS desejado (problema no arquivo de configura��o da URL)
    ///            6101 - 6103 - falha no tratamento dos p�rametros da chamada da DLL
    ///
    ///           versao: informar o vers�o da mensagem do WS - 1.07 (manual de integra��o vers�o 2.04 ou 3.00) ou 2.00 (manual de integra��o vers�o 4.0x) >>par�metro novo!<<
    ///           msgDados: XML do pedido de consulta Status enviado ao WS
    ///           msgRetWS: XML de resposta do WS
    ///       msgResultado: literal do resultado da chamada do WS ConsultaStatus2G
    ///
    ///         Par�metros novos:
    ///                versao;
    ///         Par�metros eliminados:
    ///              msgCabec;

var
   i: integer;
   Fsaida: TextFile;
   XML: WideString;
   vXMLDoc: TXMLDocument;
   NodePai: IXMLNode;
begin
   Information('Verificando Web Service...');
   Result:=True;
   Try
       Util := CoUtil.Create;
       XMsgRetWS :='';
       XMsgcabMsg :='';
       XMsgDadosMsg :='';
       XMsgGeral :='';
       //Edmar - 09/03/2015 - Adicionado 3 ao UF de recep��o da NF-e para sinalizar que a vers�o � 3.10
       i:= Util.ConsultaStatus2G(XSiglaWS{XUfLocal+'3'}, XUfLocal, XNfeTipoAmbiente, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg, XMsgRetWS, XMsgGeral, '', '', '');
       if i <> 107
       then begin
           If I = 5001 Then
				MessageDlg('Falha no Certificado Digital! '+#13+ 'Remova e insira o Cart�o/Token e tente novamente'+#13+'1.n�o � ICP-Brasil; 2.fora do prazo de validade; 3.revogado; 4.certificado cliente n�o confi�vel para o Web Service acessado, contatar a SEFAZ)', mtWarning, [mbOK], 0);
       	If (I >=5001) and (I <=5017) Then
				MessageDlg('5001 - 5017 - Falha na tentativa de consumir o WS (problema de conex�o/rede)'+#13+XMsgRetWS, mtWarning, [mbOK], 0);
       	If (I >=5101) and (I <=5105) Then
				MessageDlg('5101 - 5105 - falha no tratamento do XML de resposta do WS (problema na resposta do WS)'+#13+XMsgRetWS, mtWarning, [mbOK], 0);
       	If (I >=5201) and (I <=5206) Then
				MessageDlg('5201 - 5206 - falha na recupera��o da URL do WS desejado (problema no arquivo de configura��o da URL)'+#13+XMsgRetWS, mtWarning, [mbOK], 0);
       	If (I >=6101) and (I <=6103) Then
				MessageDlg('6101 - 6103 - falha no tratamento dos p�rametros da chamada da DLL'+#13+XMsgRetWS, mtWarning, [mbOK], 0);
           XNfeStatusServer:='';
           Util := nil;
           Result := False;
           Exit;
       end
       Else Begin
			XNfeStatusServer:='SEFAZ-'+XUfLocal;
       End;
       XMsgRetWS := TirarAcentos(False, XMsgRetWS);
       XMsgDadosMsg := TirarAcentos(False, XMsgDadosMsg);
   Except
   	Result:=False;
   End;
end;


//Procedure na clausula activate do form que inicializa o processo
Function TFMzrNfe.Inicializa: Boolean;
var
   i, ContConsultaNfe : integer;
   XMsgcabMsg: WideString;
   XNFeLote: WideString;
Begin
	if XSetInTipoAcao='' then
   begin
       Close;
		Exit;
   end;

   Result:=True;
   //Inicializa Memo de Erros
   MErro.Lines.Clear;
   LVisualizaFalhas.Visible:=False;
   perro.visible:=False;
   EstadoMouse(True);
   //Verifica se abre painel de administrador
   If FMenu.LCODUSUARIO.Caption='111522'
   Then Begin
       PAdm.Visible:=True;
       PAdm.BringToFront;
   End
   Else Begin
       PAdm.Visible:=False;
   End;

   Registra('FISCAL', 'INICIALIZA', DateToStr(Date()), 'Inicia ' + XSetInTipoAcao, '');

   XIndicaProcessoConcluido:=False;//indica inicio de processo e a tela n�o pdoe ser fechada com esc
   // Seta variaveis iniciais
   SetVariaveisGerais;

   //Determina o tipo do ambiente (1- producao, 2-homologa��o)
   If (DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger= 2)
   Then Begin
       LAmbiente.Caption:='Operando em modo de Homologa��o ['+XNFETIPOEMISSAO+']';
//		XSet InTipoEmissao:=2;
   End
   Else Begin
       LAmbiente.Caption:='Operando em modo de Produ��o ['+XNFETIPOEMISSAO+']';
//		XSetInTipoEmissao:=1;
   End;
   LAmbiente.BringToFront;
   LAmbiente.Refresh;   

   //Verifica status servidor
   If ConsultarStatusServico(false, XMsgGeralString)=False
   Then Begin
       //Result:=False;
       If ConsultarStatusServico(True, XMsgGeralString)=False
       Then Begin
           MessageDlg('Servidores fora de conex�o'+#13+'UF - '+XUfLocal+' : '+'Ambiente - '+IntToStr(XNfeTipoAmbiente)+' : '+'Certificado - '+XNfeNomeCertificado+#13+XMsgRetWS, mtWarning, [mbOK], 0);
           Result:=False;
       End;
   End;

   if XSetInTipoAcao = 'RETRANSMITENFCE' then
   begin
       SetDadosPrincipal;

       XNfeXmlAss := Util.EnviaNfe2G(XSiglaWS, XXmlNfe, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg, XNfeRetornoWS,
           XNfeResultado, XMsgGeral, XNfeRecibo, XNfeDhRecbto, XNfetMed, '', '', '', XNfeLicenca);
       I := XNfeResultado;
       
       if I = 103 then
       begin
           //A Nota Fiscal Eletronica foi enviada
           //Analisa retorno
           if GetGenericRetorno('ENVIANFESCAN', XMsgGeral) = True then
           begin
               //Trata recebimento Nfe
               XMsgNumRetorno:=XMsgNumRetorno;
               XMsgGeral:=XMsgGeral;
           end
           else begin
               Result:=False;
               NfeAddFalhas('- Identificado falha ao enviar NFe, Verifique manualmente no WS Sefaz:');
               NfeAddFalhas('  Chave - '+XNfeChave);
               NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
           end;
           
           Information('Consultando resultado da transmiss�o...');
           Sleep(10000);

           //Consulta no ws se a nota foi aceita recuperando dados de protocolo
           XSetInTipoAcao := 'RETORNADADOS';//Altera Status para retorno de dados para Nfe
           //Vamos aqui fazer uma repeti��o caso n�o consigamos na primeira tentativa consultar o resultado da transimiss�o
           //Faremos uma estrutura de repeti��o de 5 vezes solicitando ao usu�rio se deseja permanecer no la�o
           ContConsultaNfe := 1;
           
           while ContConsultaNfe <= 5 do
           begin

               If ContConsultaNfe > 4
               Then Begin
                   If MessageDlg('Lentid�o no retorno de processamento da consulta da NF-e.'+#13+#10+'Deseja continuar a consulta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
                       ContConsultaNfe := 1;
               End;

               Information('Consultando resultado da transmiss�o [' + IntToStr(ContConsultaNfe) + ']...');

               //Consulta Nfe para verificar status
               if {NfeConsultarNotaFiscal} BuscaResultadoEnvioNFe = True then
               begin
                   XNfeProtocolo:='';
                   if XDadosRetornoProtocolo <> '' then
                       XNfeProtocolo := XDadosRetornoProtocolo;
               end;
               XSetInTipoAcao:='EMITIR';//Altera Status para emiss�o
               
               //Avalia retorno da Consulta
               //100-Autorizado; 302-Denegado; 205-DENEGADO
               if (XMsgNumRetorno='100') or  (XMsgNumRetorno='150') OR (XMsgNumRetorno='302')
                 or (XMsgNumRetorno='301') or (XMsgNumRetorno='205') then
               begin
                   if XNfeProtocolo = '' then
                       MessageDlg('A NFe foi devidamente enviada e aceita no sefaz. Por�m o seu n�mero de PROTOCOLO n�o foi recuperado. '+#13+#10+'Solicite interven��o t�cnica para efetuar recupera��o do mesmo.', mtWarning, [mbOK], 0);

                   ContConsultaNfe:=10;//Informa contador de vari�vel para poder sair do while de consulta

                   if (XMsgNumRetorno='100') Then
                       Information('Nfe autorizada para uso...');
                   if (XMsgNumRetorno='150') Then
                       Information('Nfe autorizada fora do prazo...');
                   if (XMsgNumRetorno='302') or (XMsgNumRetorno='301') Then
                       Information('Nfe Denegado o Uso...');
                   if (XMsgNumRetorno='205') Then
                       Information('Nfe Denegado o Uso...');
                       
                   if XNfeRecibo <> '' then
                   begin
                       //Se a analize de retorno do envio retornou algum recibo gravar resultado em banco
                       if GravaInfoBanco=True then
                       begin
                           if (XMsgNumRetorno='100') OR (XMsgNumRetorno='150') then
                               Information('Nota Fiscal Eletr�nica transmitida e recebida com sucesso...')
                           else
                               Information('Nota Fiscal Eletr�nica transmitida por�m seu uso foi Denegado...')
                       end
                       else begin
                           if (XMsgNumRetorno='100') OR (XMsgNumRetorno='150') then
                           begin
                               Information('NFe transmitida com sucesso. Informa��es n�o foram gravadas em banco');
                               MessageDlg('NFe transmitida com sucesso. Informa��es n�o foram gravadas em banco', mtWarning, [mbOK], 0);
                           end
                           else begin
                               Information('NFe transmitida por�m com uso Denegado. Informa��es n�o foram gravadas em banco');
                               MessageDlg('NFe transmitida por�m com uso Denegado. Informa��es n�o foram gravadas em banco', mtWarning, [mbOK], 0);
                           end;
                       end;
                   end
                   else begin
                       NfeAddFalhas('- Falha ao enviar NFe: Recibo da NFe n�o identificada:');
                       NfeAddFalhas('  Verifique manualmente no Sefaz pela chave: '+XNfeChave);
                       NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
                       Result:=False;
                   End;
               end
               else begin
                   if (XMsgNumRetorno='105') then
                   begin
                       if Mensagem('Confirma��o do usu�rio', 'A NFe enviada se encontra em processamento. Deseja repetir a tentativa de consulta?', '', 2, 3, False, 'c')=3 then
                       begin
                           Result:=False;
                           ContConsultaNfe:=10;//Marca contador para sair do la�o de repeti��o de consulta
                           NfeAddFalhas('- Falha: A Nfe continua em processamento');
                           NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
                           //Grava retorno em banco de Dados, retorno negativo
                           GravaInfoBancoNegativa;
                       end;
                   end
                   else begin
                       if (ContConsultaNfe>5) or (XMsgNumRetorno<>'217') then
                       begin
                           Result:=False;
                           ContConsultaNfe:=10;//Marca contador para sair do la�o de repeti��o de consulta

                           RejeicaoFiscal(XMsgGeral, XMsgNumRetorno);
                           //Grava retorno em banco de Dados, retorno negativo
                           GravaInfoBancoNegativa;
                       end
                       else begin
                           if Mensagem('Confirma��o do usu�rio', 'A NF-e foi transmitida para o sefaz, por�m ainda n�o obtivemos aceitabilidade desta Nfe. Deseja repetir a tentativa de consulta?', '', 2, 3, False, 'c')=3 then
                           begin
                               Result:=False;
                               ContConsultaNfe:=10;//Marca contador para sair do la�o de repeti��o de consulta
                               NfeAddFalhas('- Falha: A Nfe n�o foi aceita no sefaz');
                               NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
                               //Grava retorno em banco de Dados, retorno negativo
                               GravaInfoBancoNegativa;
                           end;
                       end;
                   end;
               end;
           end;

           if Result = True then
           begin
               if XSetInTipoPedido = 'PEDV' then
               begin
                   FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(XSetCodigoPedido), '');

                   DMSAIDA.TPedV.Edit;
                   DMSAIDA.TPedV.FieldByName('FISCO').AsString := 'NFCe';
                   DMSAIDA.TPedV.Post;

                   DMSAIDA.IBT.CommitRetaining;
               end;

               if XSetInTipoPedido = 'ORDEM' then
               begin
                   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XSetCodigoPedido), '');

                   DMServ.TOrd.Edit;
                   DMServ.TOrd.FieldByName('FISCO').AsString := 'NFCe';
                   DMServ.TOrd.Post;

                   DMServ.IBT.CommitRetaining;
               end;
               
               if GeraXMLDistribuicao then
                   ConcluiProcesso('Processo conclu�do com sucesso! Pressione <esc> para fechar')
               else
                   ConcluiProcesso('Falha ao gerar o XML de distribui��o. Pressione <esc> para fechar');
           end
           else
               ConcluiProcesso('Processo falhou! Pressione <esc> para fechar.');
       end
       else begin
           NfeAddFalhas('- Falha ao enviar NFe: '+XMsgGeral);
           NfeAddFalhas('      '+GetTextoNumeroRetorno(XMsgNumRetorno));
           Result:=False;
       end;
   end
   else begin
       if Result=True
       Then Begin
           //Verifica qual o tipo da solicita��o de Nfe
           // EMISS�O DE NFE
           If XSetInTipoAcao='EMITIR'
           Then Begin
               if XSafeXmlDist = False then
               begin
                   //Seta dados principais para dados nfe
                   If SetDadosPrincipal=False
                   Then Begin
                       Result:=False;
                   End
                   Else Begin
                       //Verifica Tipo Homologa��o ou Produ��o
                       XDadosNfe.Dados.TipoAmb:=XNfeTipoAmbiente;
                       If XDadosNfe.Dados.TipoAmb<>1
                       Then Begin
                           If Mensagem('Confirma��o do usu�rio', 'HOMOLOGA��O!!!'+#13+'Voc� esta enviando para o Sefaz uma NFe em modo Teste/Homologa��o. Deseja Continuar?', '', 2, 3, False, 'c')=3
                           Then Begin
                               Result:=False;
                               NfeAddFalhas('NFe Envio cancelado ap�s verificado emiss�o por homologa��o');
                           End;
                       End;
                       If Result=True
                       Then Begin
                           If XmlGerar=True
                           Then Begin //Gera arquivo xml da Nfe

                               // verifica se est� em contingencia
                               // e emitindo nfce
                               // - nesse caso, salva os dados necess�rios para posterior envio
                               //  * XML enviado
                               //  * XML assinado
                               //  * N�mero Fiscal
                               //  * S�rie
                               //  * Chave de acesso
                               //  * QR Code
                               // - depois mostra o cupom
                               if (xEnvioContingencia) AND (XEmiteNFCe) then
                               begin
                                   Information('Salvando NFCe em conting�ncia...');
                                   
                                   if GravaNfceContingencia then
                                   begin
                                       NfeGravaNfeEnviada;
                                       DanfeVisualizar;
                                   end;

                                   ConcluiProcesso('NFCe em conting�ncia. Pressione <esc> para fechar.');
                                   Exit;
                               end;

                               If NfeTransmiteXml=True
                               Then Begin //Transmite Arquivo Xml da Nfe
                                  If NfeGravaNfeEnviada=True Then//Grava Fisicamente na pasta determinado o Xml final da Nfe (Apos ser enviada e aceita no ws)
                                     Result:=True
                                  else
                                     Result:=False;
                               End
                               Else Begin
                                     Result:=False;
                               End;
                           End
                           Else Begin
                               Result:=False;
                           End;
                           //Visualisa danfe
                           If Result=True
                           Then Begin
                              //Edmar - 06/05/2014 - Trecho comentado para se adequar ao envio do PDF
                              { If XSetInTipoPedido='PEDV' Then
                                   DanfeVisualizar;
                               If XSetInTipoPedido='PEDC' Then
                                   DanfeEntradaVisualizar;
                               If XSetInTipoPedido='ORDEM' Then
                                   DanfeVisualizar; }
                               if (XSetInTipoPedido = 'PEDV') or (XSetInTipoPedido='ORDEM') or (XSetInTipoPedido='PEDC') then
                               begin
                                   if GeraXMLDistribuicao = False then
                                   begin
                                       Information('Erro ao gerar Nfe de distribui��o');
                                       DanfeVisualizar;
                                   end;
                               end
                               else
                                   DanfeEntradaVisualizar;                          

                           End;
                       End;
                       If Result=True Then
                       begin
                           ConcluiProcesso('Processo conclu�do com sucesso! Pressione <esc> para fechar.');
                       end;
                       If Result=False
                       Then Begin
                           GravaInfoBancoNegativa;
                           ConcluiProcesso('Processo falhou! Pressione <esc> para fechar.');
                       End;
                   End;
                end;
                //Paulo 13/01/2011: PAra gerar o xmlDistribui��o pelo menu
               if XSafeXmlDist = True then
               begin
                   if XDistribuicaoPeriodo=True then
                   begin
                       //Paulo 13/02/2012: Faz um la�o para obter todos os xml por periodo
                       BuscaDadosPeriodo('PEDVENDA');
                       BuscaDadosPeriodo('PEDCOMPRA');
                       BuscaDadosPeriodo('ORDEM');
                       XSafeXmlDist:=False;
                       XDistribuicaoPeriodo:=False;
                       ConcluiProcesso('Processo conclu�do com sucesso! Pressione <esc> para fechar');
                       Close;
                   end
                   else begin
                       //Paulo 13/01/2011: Ass o xml
                       //AssinarXML(XXmlNfe,'infNFe',XNfeXmlAss);
                       if AnsiContainsStr(XXmlNfe, '<SignedInfo>') then
                           XNfeXmlAss := XXmlNfe
                       else
                           AssinarXML(XXmlNfe,'infNFe',XNfeXmlAss);
                       if GeraXMLDistribuicao = true
                       then begin
                           XSafeXmlDist:=False;
                           ConcluiProcesso('Processo conclu�do com sucesso! Pressione <esc> para fechar');
                           Close;
                       end
                       else begin
                           ConcluiProcesso('Processo falhou! Pressione <esc> para fechar.');
                           NfeAddFalhas(XNfeRetornoWS);
                           XSafeXmlDist:=False;
                       end;
                   end;


               end;
           End;
           //VERIFICA STATUS SEFAZ
           If XSetInTipoAcao='STATUSSERV'
           Then Begin
               If NfeStatusServ=True Then
                   ConcluiProcesso('Servidor Sefaz consultado e ATIVO. Pressione <esc> para fechar.')
               Else
                   ConcluiProcesso('Servidor Sefaz consultado e INATIVO/SCAN. Pressione <esc> para fechar.');
           End;
           //CANCELAMENTO DE NFE
           If XSetInTipoAcao='CANCELAR'
           Then Begin
               If NfeCancelar=True Then
                   ConcluiProcesso('NFe cancelada com sucesso. Pressione <esc> para fechar.')
               Else
                   ConcluiProcesso('Cancelamento de NFe falhou. Pressione <esc> para fechar.');
           End;
           //EMITINDO CARTA DE CORRE��O
           If XSetInTipoAcao='CCE'
           Then Begin
                If (FiltraTabela(DMSAIDA.TFiscPV, 'docfissaida', 'cod_pedido', IntToStr(XSetCodigoPedido), '')=True)or(FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', IntToStr(XSetCodigoPedido), '')=True)or(FiltraTabela(DMENTRADA.TFiscPC, 'docfis', 'COD_PEDIDO', IntToStr(XSetCodigoPedido), '')=True)
                Then Begin
                    if XSetInTipoPedido='PEDV' then
                    begin
                       XNfeChave:=  DMSAIDA.TFiscPV.FieldByName('nfechave').AsString;
                       XNfeProtocolo:=DMSAIDA.TFiscPV.FieldByName('nfeprotocolo').AsString;
                    end;
                    //Paulo 13/05/2011: Para verficar no sefaz as notas de compra
                    if XSetInTipoPedido='PEDC' then
                    begin
                       FiltraTabela(DMENTRADA.TFiscPC, 'docfis', 'COD_PEDIDO', IntToStr(XSetCodigoPedido), '');
                       XNfeChave:=DMENTRADA.TFiscPC.FieldByName('nfechave').AsString;
                       XNfeProtocolo:=DMENTRADA.TFiscPC.FieldByName('nfeprotocolo').AsString;
                    end;
                    if XSetInTipoPedido='ORDEM' then
                    begin
                       XNfeChave:=DMServ.TFiscOrd.FieldByName('nfechave').AsString;
                       XNfeProtocolo:=DMServ.TFiscOrd.FieldByName('nfeprotocolo').AsString;
                    end;
                   If NfeCCE=True Then
                       ConcluiProcesso('CCe enviada com sucesso. Pressione <esc> para fechar.')
                   Else
                       ConcluiProcesso('CCe falhou. Pressione <esc> para fechar.');
               End;
           End;
           //INUTILIZAR NUMERA��O
           If XSetInTipoAcao='INUTILIZAR'
           Then Begin
               If NFeInutilizaNumeracao=True Then
                   ConcluiProcesso('Numera��o de NFe inutilizada com sucesso. Pressione <esc> para fechar.')
               Else
                   ConcluiProcesso('Inutiliza��o de Numera��o de NFe falhou. Pressione <esc> para fechar.');
           End;

           // CONSULTA NFE SEFAZ NACIONAL
           If XSetInTipoAcao='SEFAZ'
           Then Begin
                If (FiltraTabela(DMSAIDA.TFiscPV, 'docfissaida', 'cod_pedido', IntToStr(XSetCodigoPedido), '')=True)or(FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', IntToStr(XSetCodigoPedido), '')=True)or(FiltraTabela(DMENTRADA.TFiscPC, 'docfis', 'COD_PEDIDO', IntToStr(XSetCodigoPedido), '')=True)
                Then Begin
                    if XSetInTipoPedido='PEDV' then
                    begin
                       XNfeChave:=DMSAIDA.TFiscPV.FieldByName('nfechave').AsString;
                       XNfeProtocolo:=DMSAIDA.TFiscPV.FieldByName('nfeprotocolo').AsString;
                    end;
                    //Paulo 13/05/2011: Para verficar no sefaz as notas de compra
                    if XSetInTipoPedido='PEDC' then
                    begin
                       FiltraTabela(DMENTRADA.TFiscPC, 'docfis', 'COD_PEDIDO', IntToStr(XSetCodigoPedido), '');
                       XNfeChave:=DMENTRADA.TFiscPC.FieldByName('nfechave').AsString;
                       XNfeProtocolo:=DMENTRADA.TFiscPC.FieldByName('nfeprotocolo').AsString;
                    end;
                    if XSetInTipoPedido='ORDEM' then
                    begin
                       XNfeChave:=DMServ.TFiscOrd.FieldByName('nfechave').AsString;
                       XNfeProtocolo:=DMServ.TFiscOrd.FieldByName('nfeprotocolo').AsString;
                    end;
                    ConcluiProcesso('Inicializado consulta de NFe junto ao Sefaz. Pressione <esc> para fechar.');
                    NfeVisualizanoSefaz;
                End
                Else Begin
                    ConcluiProcesso('Processo falhou! Pedido sem documento Fiscal. Pressione <esc> para fechar.');
                End;

           End;
           // CONSULTA SITUA��O DA NFE
           If XSetInTipoAcao='CONSULTAR'
           Then Begin
                If (FiltraTabela(DMSAIDA.TFiscPV, 'docfissaida', 'cod_pedido', IntToStr(XSetCodigoPedido), '')=True)or(FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', IntToStr(XSetCodigoPedido), '')=True)or(FiltraTabela(DMENTRADA.TFiscPC, 'docfis', 'COD_PEDIDO', IntToStr(XSetCodigoPedido), '')=True)
                Then Begin
                    if XSetInTipoPedido='PEDV' then
                    begin
                       XNfeChave:=  DMSAIDA.TFiscPV.FieldByName('nfechave').AsString;
                       XNfeProtocolo:=DMSAIDA.TFiscPV.FieldByName('nfeprotocolo').AsString;
                    end;
                    //Paulo 13/05/2011: Para verficar no sefaz as notas de compra
                    if XSetInTipoPedido='PEDC' then
                    begin
                       FiltraTabela(DMENTRADA.TFiscPC, 'docfis', 'COD_PEDIDO', IntToStr(XSetCodigoPedido), '');
                       XNfeChave:=DMENTRADA.TFiscPC.FieldByName('nfechave').AsString;
                       XNfeProtocolo:=DMENTRADA.TFiscPC.FieldByName('nfeprotocolo').AsString;
                    end;
                    if XSetInTipoPedido='ORDEM' then
                    begin
                       XNfeChave:=DMServ.TFiscOrd.FieldByName('nfechave').AsString;
                       XNfeProtocolo:=DMServ.TFiscOrd.FieldByName('nfeprotocolo').AsString;
                    end;
                    If NfeConsultarSituacaoNotaFiscal=True Then
                       ConcluiProcesso('NFe consultada com sucesso no WS. Pressione <esc> para fechar.')
                    Else
                       ConcluiProcesso('Falha de consulta a NFe no WS. Pressione <esc> para fechar.');
                End
                else Begin
                     ConcluiProcesso('Processo falhou! Pedido sem documento Fiscal. Pressione <esc> para fechar.');
                End;

           End;
           // RETORNA DADOS DE RECIBO E NUMERO PROTOCOLO
           If XSetInTipoAcao='RETORNADADOS'
           Then Begin
               If (FiltraTabela(DMSAIDA.TFiscPV, 'docfissaida', 'cod_pedido', IntToStr(XSetCodigoPedido), '')=True)or(FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', IntToStr(XSetCodigoPedido), '')=True)or(FiltraTabela(DMENTRADA.TFiscPC, 'docfis', 'COD_PEDIDO', IntToStr(XSetCodigoPedido), '')=True)
               Then Begin
                   if XSetInTipoPedido='PEDV' then
                       XNfeChave:=XSetInPeriodoFiscal;//Utilizamos a variavel de periodo fiscal pq foi ela usada para passar o parametro para a fun��o
                   if XSetInTipoPedido='ORDEM' then
                      XNfeChave:=XSetInPeriodoFiscal;
                   if XSetInTipoPedido='PEDC' then
                   begin
                       FiltraTabela(DMENTRADA.TFiscPC, 'docfis', 'COD_PEDIDO', IntToStr(XSetCodigoPedido), '');
                       XNfeChave:=XSetInPeriodoFiscal;//Paulo 13/05/2011: `Recupera dados para pedido de compra
                   end;

                   If NfeConsultarNotaFiscal=True
                   Then Begin
                        If XMsgGeral<>''
                        Then Begin
                            Try
                               //Verifica se existe alguma numera��o de nota valida e cadastrada em banco para o mesmo numero
                               StrToInt(XDadosRetornoNumero);
                               If NFeConsultaNFeValidoBD(XDadosRetornoNumero)=0
                               Then Begin
                                   If MessageDlg('Para a Chave Informada, foi encontrado a Nota Fiscal de N�mero: '+XDadosRetornoNumero+#13+#10+'Deseja Gravar estas informa��es em banco de dados?', mtWarning, [mbYes, mbNo], 0)=mryes
                                   Then Begin
                                      if XSetInTipoPedido='PEDV' then
                                      begin
                                           //Paulo 03/11/2010 - 163: Atualiza os dados da Nfe nas tabelas pedVenda e Docfissaida
                                           DMSAIDA.TFiscPV.Edit;
                                           DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString:=XDadosRetornoNumero;
                                           DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString:=XDadosRetornoChave;
                                           DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=2;

                                           If XMsgNumRetorno='100' Then
                                             DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=1;

                                           If XMsgNumRetorno='101' Then
                                             DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=3;

                                           If (XMsgNumRetorno='302') or (XMsgNumRetorno='205') or (XMsgNumRetorno='110') Then
                                             DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=4;
                                         
                                           DMSAIDA.TFiscPV.FieldByName('NF').AsString:='N';
                                           DMSAIDA.TFiscPV.FieldByName('NUMDOCFISINT').AsInteger:=StrToInt(XDadosRetornoNumero);
                                           DMSAIDA.TFiscPV.FieldByName('NFEPROTOCOLO').AsString:=XDadosRetornoProtocolo;
                                           DMSAIDA.TFiscPV.Post;

                                           DMSAIDA.TPedV.Close;
                                           DMSAIDA.TPedV.SQL.Clear;
                                           DMSAIDA.TPedV.SQL.Add('UPDATE PEDVENDA P SET P.FISCO = :FISCO, P.NUMFISCAL= :NUMFISCAL, P.SITUACAO = :SITUACAO ');
                                           DMSAIDA.TPedV.SQL.Add('WHERE P.COD_PEDVENDA = :COD_PEDVENDA');
                                           if not XEmiteNFCe then
                                               DMSAIDA.TPedV.ParamByName('FISCO').AsString:='NF'
                                           else
                                               DMSAIDA.TPedV.ParamByName('FISCO').AsString:='NFCe';
                                           DMSAIDA.TPedV.ParamByName('NUMFISCAL').AsString:=XDadosRetornoNumero;
                                           DMSAIDA.TPedV.ParamByName('SITUACAO').AsString:='FECHADO';

                                           If XMsgNumRetorno='100' Then
                                             DMSAIDA.TPedV.ParamByName('SITUACAO').AsString:='FECHADO';

                                           If XMsgNumRetorno='101' Then
                                             DMSAIDA.TPedV.ParamByName('SITUACAO').AsString:='CANCELADO';

                                           If (XMsgNumRetorno='302') or (XMsgNumRetorno='205') or (XMsgNumRetorno = '110') Then
                                               DMSAIDA.TPedV.ParamByName('SITUACAO').AsString:='DENEGADO';

                                           DMSAIDA.TPedV.ParamByName('COD_PEDVENDA').AsInteger:=XSetCodigoPedido;
                                           DMSAIDA.TPedV.ExecSQL;
                                           DMSAIDA.IBT.CommitRetaining;

                                           DMSAIDA.TPedV.Close;
                                           DMSAIDA.TPedV.SQL.Clear;
                                           DMSAIDA.TPedV.SQL.Add(' select first 1 * from pedvenda ');
                                           DMSAIDA.TPedV.Open;
                                      end;

                                      if XSetInTipoPedido='PEDC' then
                                      begin
                                           //Paulo 03/11/2010 - 163: Atualiza os dados da Nfe nas tabelas pedVenda e Docfissaida
                                           DMENTRADA.TFiscPC.Edit;
                                           DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString:=XDadosRetornoNumero;
                                           DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString:=XDadosRetornoChave;
                                           DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger:=2;
                                       
                                           If XMsgNumRetorno='100' Then
                                             DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger:=1;
                                         
                                           If XMsgNumRetorno='101' Then
                                             DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger:=3;

                                           If (XMsgNumRetorno='302') or (XMsgNumRetorno='205') or (XMsgNumRetorno = '110') Then
                                             DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger:=4;

                                           DMENTRADA.TFiscPC.FieldByName('NF').AsString:='N';
                                           DMENTRADA.TFiscPC.FieldByName('NUMDOCFISINT').AsInteger:=StrToInt(XDadosRetornoNumero);
                                           DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString:=XDadosRetornoProtocolo;
                                           DMENTRADA.TFiscPC.Post;

                                           DMENTRADA.TPedC.Close;
                                           DMENTRADA.TPedC.SQL.Clear;
                                           DMENTRADA.TPedC.SQL.Add('UPDATE PEDCOMPRA P SET P.FISCO = :FISCO, P.NUMFISCAL= :NUMFISCAL, P.SITUACAO = :SITUACAO ');
                                           DMENTRADA.TPedC.SQL.Add('WHERE P.COD_PEDCOMP = :COD_PEDCOMPRA');
                                           DMENTRADA.TPedC.ParamByName('FISCO').AsString:='NF';
                                           DMENTRADA.TPedC.ParamByName('NUMFISCAL').AsString:=XDadosRetornoNumero;
                                           DMENTRADA.TPedC.ParamByName('SITUACAO').AsString:='FECHADO';

                                           If XMsgNumRetorno='100' Then
                                             DMENTRADA.TPedC.ParamByName('SITUACAO').AsString:='FECHADO';

                                           If XMsgNumRetorno='101' Then
                                             DMENTRADA.TPedC.ParamByName('SITUACAO').AsString:='CANCELADO';

                                           If (XMsgNumRetorno='302') or (XMsgNumRetorno='205') or (XMsgNumRetorno='110')  Then
                                               DMENTRADA.TPedC.ParamByName('SITUACAO').AsString:='DENEGADO';

                                           DMENTRADA.TPedC.ParamByName('COD_PEDCOMPRA').AsInteger:=XSetCodigoPedido;
                                           DMENTRADA.TPedC.ExecSQL;
                                           DMENTRADA.IBT.CommitRetaining;

                                           DMENTRADA.TPedC.Close;
                                           DMENTRADA.TPedC.SQL.Clear;
                                           DMENTRADA.TPedC.SQL.Add(' select first 1 * from pedcompra ');
                                           DMENTRADA.TPedC.Open;  
                                      end;

                                      if XSetInTipoPedido='ORDEM' then
                                      begin
                                         //Paulo 11/11/2010 - 163: Atualiza os dados da Nfe nas tabelas ordem e Docfisordem
                                         DMServ.TFiscOrd.Edit;
                                         DMServ.TFiscOrd.FieldByName('NUMDOCFIS').AsString:=XDadosRetornoNumero;
                                         DMServ.TFiscOrd.FieldByName('NFECHAVE').AsString:=XDadosRetornoChave;
                                         DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger:=2;
                                     
                                         If XMsgNumRetorno='100' Then
                                             DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger:=1;
                                         
                                         If XMsgNumRetorno='101' Then
                                             DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger:=3;

                                         If (XMsgNumRetorno='302') or (XMsgNumRetorno='205') or (XMsgNumRetorno='110') Then
                                             DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger:=4;

                                         DMServ.TFiscOrd.FieldByName('NF').AsString:='N';
                                         DMServ.TFiscOrd.FieldByName('NUMDOCFISINT').AsInteger:=StrToInt(XDadosRetornoNumero);
                                         DMServ.TFiscOrd.FieldByName('NFEPROTOCOLO').AsString:=XDadosRetornoProtocolo;
                                         DMServ.TFiscOrd.Post;

                                         DMServ.TOrd.Close;
                                         DMServ.TOrd.SQL.Clear;
                                         DMServ.TOrd.SQL.Add('UPDATE ordem P SET P.fisco = :FISCO, P.numfiscal= :NUMFISCAL, P.status = :STATUS');
                                         DMServ.TOrd.SQL.Add('WHERE P.cod_ordem = :COD_ORDEM');
                                         if not XEmiteNFCe then
                                             DMServ.TOrd.ParamByName('FISCO').AsString:='NF'
                                         else
                                             DMServ.TOrd.ParamByName('FISCO').AsString:='NFCe';
                                         DMServ.TOrd.ParamByName('NUMFISCAL').AsString:=XDadosRetornoNumero;
                                         DMServ.TOrd.ParamByName('STATUS').AsString:='FECHADO';
                                     
                                         If XMsgNumRetorno='100' Then
                                             DMServ.TOrd.ParamByName('STATUS').AsString:='FECHADO';

                                         If XMsgNumRetorno='101' Then
                                             DMServ.TOrd.ParamByName('STATUS').AsString:='CANCELADO';

                                         If (XMsgNumRetorno='302') or (XMsgNumRetorno='205') or (XMsgNumRetorno='110') Then
                                             DMServ.TOrd.ParamByName('STATUS').AsString:='DENEGADO';
                                         
                                         DMServ.TOrd.ParamByName('COD_ORDEM').AsInteger:=XSetCodigoPedido;
                                         DMServ.TOrd.ExecSQL;
                                         DMServ.IBT.CommitRetaining;

                                         DMServ.TOrd.Close;
                                         DMServ.TOrd.SQL.Clear;
                                         DMServ.TOrd.SQL.Add(' select first 1 * from ordem ');
                                         DMServ.TOrd.Open;
                                      end;

                                       //Edmar - 07/05/2015 - Busca os dados fiscais
                                       DMSAIDA.TAlx.Close;
                                       DMSAIDA.TAlx.SQL.Clear;
                                       if XSetInTipoPedido='ORDEM' then
                                           DMSAIDA.TAlx.SQL.Add(' SELECT * FROM DOCFISORD WHERE DOCFISORD.COD_ORDEM = :PEDIDO');                                       
                                       if XSetInTipoPedido='PEDC' then
                                           DMSAIDA.TAlx.SQL.Add(' SELECT * FROM DOCFIS WHERE DOCFIS.COD_PEDIDO = :PEDIDO');
                                       if XSetInTipoPedido='PEDV' then
                                           DMSAIDA.TAlx.SQL.Add(' SELECT * FROM DOCFISSAIDA WHERE DOCFISSAIDA.COD_PEDIDO = :PEDIDO');
                                       DMSAIDA.TAlx.ParamByName('PEDIDO').AsInteger := XSetCodigoPedido;
                                       DMSAIDA.TAlx.Open;

                                       //Edmar - 07/05/2015 - Repassa os dados da NF-e para as variaveis auxiliares
                                       XXmlNfe := DMSAIDA.TAlx.FieldByName('NFEXML').AsString;
                                       XNfeRecibo := DMSAIDA.TAlx.FieldByName('NFERECIBO').AsString;
                                       XNfeTipoAmbiente := DMSAIDA.TAlx.FieldByName('NFEAMBIENTE').AsInteger;
                                       XUfLocal := 'PR';
                                       XNfeChave := DMSAIDA.TAlx.FieldByName('NFECHAVE').AsString;
                                       XSetInNumFiscal := DMSAIDA.TAlx.FieldByName('NUMDOCFIS').AsInteger;

                                       Registra('FISCAL', XSetInTipoAcao, DateToStr(Date()), 'NF N�' + IntToStr(XSetInNumFiscal) + '; COD '+ XSetInTipoPedido + ':' + IntToStr(XSetCodigoPedido), 'Chave: ' + XDadosRetornoChave + '; Recibo: ' + XNfeRecibo + '; Protocolo: ' + XDadosRetornoProtocolo + '; Status: ' + XMsgNumRetorno);

                                       //Edmar - 07/05/2015 - SQL para buscar o periodo fiscal da NF-e
                                       DMMACS.TPeriodoFiscal.Close;
                                       DMMACS.TPeriodoFiscal.SQL.Clear;
                                       DMMACS.TPeriodoFiscal.SQL.Add(' SELECT * FROM PERIODOFISCAL WHERE (PERIODOFISCAL.COD_PERIODOFISCAL = :FISCAL) ');
                                       DMMACS.TPeriodoFiscal.ParamByName('FISCAL').AsInteger := DMSAIDA.TAlx.FieldByName('COD_PERIODOFISCAL').AsInteger;
                                       DMMACS.TPeriodoFiscal.Open;
                                       XSetInPeriodoFiscal:=DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;

                                       SetVariaveisGerais;
                                       XSetRefUri := 'infNFe';

                                       //Edmar - 07/05/2015 - Assina o XML para salvar
                                       AssinarXML(XXmlNfe,'infNFe', XNfeXmlAss);
                                       XDistribuicaoPeriodo := True;
                                       GeraXMLDistribuicao;
                                       XDistribuicaoPeriodo := False;
                                   End;
                                   ConcluiProcesso('NFe Retorno de Dados com sucesso no WS. Pressione <esc> para fechar.');
                                   NfeAddFalhas('Novo protocolo gravado em banco de dados:');
                                   NfeAddFalhas('   '+XMsgGeral);
                               End
                               Else Begin
                                    ConcluiProcesso('NFe Retorno de Dados Falhou! ');
                                    NfeAddFalhas('Foi verificado a exist�ncia v�lida da numera��o '+XDadosRetornoNumero+' e j� em uso no sistema');
                               End;
                            Except
                               ConcluiProcesso('NFe Retorno de Dados Falhou! ');
                               NfeAddFalhas('N�o foi poss�vel retornar os dados. O sistema n�o cosneguiu verificar a exist�ncia da numera��o em banco de dados. Solicite suporte manual.');
                            End;
                        End
                        Else Begin
                            ConcluiProcesso('NFe Retorno de Dados Falhou! a Chave de NFe n�o esta registrada. Pressione <esc> para fechar.');
                            NfeAddFalhas('Esta nota n�o foi enviada para o sefaz. Tente reenviar!');
                        END;
                   End
                   Else BEGIN
                       ConcluiProcesso('Falha de consulta a NFe no WS. Pressione <esc> para fechar.');
                   END;
               End
               Else Begin
                   ConcluiProcesso('Processo falhou! Pedido sem documento Fiscal. Pressione <esc> para fechar.');
               End;
           End;
           // RETORNA LISTA DE NFes no Sefaz
           If XSetInTipoAcao='RETURNLISTA'
           Then Begin
               If NfeListarNotasFiscais=True Then
                   ConcluiProcesso('Lista de NFes geradas com sucesso. Pressione <esc> para fechar.')
               Else
                   ConcluiProcesso('Falha ao gerar lista de NFes. Pressione <esc> para fechar.');
           End;
           // RECUPERA E ENVIA XML DE CANCELAMENTO
           If XSetInTipoAcao='XMLCANCELAMENTO'
           Then Begin
               GeraXMLCancelamento;
               If Result=True Then
               begin
                   ConcluiProcesso('Processo conclu�do com sucesso! Pressione <esc> para fechar.');
               end;
               If Result=False
               Then Begin
                   ConcluiProcesso('Processo falhou! Pressione <esc> para fechar.');
               End;
           End;
       End
       Else Begin
           If XSetInTipoAcao='EMITIR' Then
               GravaInfoBancoNegativa;//Retorna ao banco posi��o negativa para impress�o e envio da nota
               //GravaInfoBanco;//Retorna ao banco posi��o negativa para impress�o e envio da nota
           ConcluiProcesso('Processo falhou! Servidores fora de conex�o. Pressione <esc> para fechar.');
           Close;
           XSetInTipoAcao:='';
       End;
   end;
	XSetInTipoAcao:='';
End;

//procedure para controlar o texto do painel de aguarde
procedure TFMzrNfe.StatusAguarde(str:String);
begin
    LBStatusAguarde.Caption := str;
    PAguarde.Refresh;
    FMzrNfe.refresh;
end;

// Procedure para processar as informacoes correntes
procedure TFMzrNfe.Information(texto : string);
begin
   LInformacao.Caption:=texto;
   LInformacao.Refresh;
End;


// Procedure para startar o painel de aguarde
procedure TFMzrNfe.PainelAguarde(mostrar :Boolean);
begin
   if mostrar then begin
     PAguarde.BringToFront;
     PAguarde.Visible:=true;
     PAguarde.Refresh;
     bitbtn8.SendToBack;
   end
   else begin
     PAguarde.SendToBack;
     PAguarde.Visible:=false;
     StatusAguarde('');
     bitbtn8.BringToFront;
   end;
end;

// Procedure utilizada para verificar a existencia e criar o diret�rio conform configura��o
procedure TFMzrNfe.verificaDiretorio(const dir: String);
var
   Diretorio: String;
begin
   if not DirectoryExists(dir)
   then begin
       ForceDirectories(dir);
   end;
end;

//Procedure para alterar o estado do mouse para indicar processamento
procedure TFMzrNfe.EstadoMouse(const Estado:Boolean);
begin
   if Estado = True then
       Screen.Cursor := CrHourGlass
   else
       Screen.Cursor := CrDefault;
end;

procedure TFMzrNfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Try
       Action := caFree;
       FMzrNfe:=nil;
	Except
   End;
end;



procedure TFMzrNfe.btnInutilizarClick(Sender: TObject);
var
   msg, ano :String;
begin
{
   If Length(edCNPJ.Text) <> 14
   Then Begin
      Mensagem('Mzr Sistemas - INFORMA��O', 'Informe um CNPJ!', '', 1, 1, false, 'i');
      edCNPJ.SetFocus;
      Exit;
   End;

   If edAno.ValueInteger = 0
   Then Begin
      Mensagem('Mzr Sistemas - INFORMA��O', 'Informe um ano!', '', 1, 1, false, 'i');
      edAno.SetFocus;
      Exit;
   End;

   If edNumInicial.ValueInteger = 0
   Then Begin
      Mensagem('Mzr Sistemas - INFORMA��O', 'Informe um n�mero inicial!', '', 1, 1, false, 'i');
      edNumInicial.SetFocus;
      Exit;
   End;

   If edNumFinal.ValueInteger = 0
   Then Begin
      Mensagem('Mzr Sistemas - INFORMA��O', 'Informe um n�mero final!', '', 1, 1, false, 'i');
      edNumFinal.SetFocus;
      Exit;
   End;

   If Length(edJustificativa.Text) < 15
   Then Begin
      Mensagem('Mzr Sistemas - INFORMA��O', 'Informe uma justificativa!', '', 1, 1, false, 'i');
      edJustificativa.SetFocus;
      Exit;
   End;

   If Length(edAno.Text) = 1 Then
       ano := '0' + edAno.Text
   Else
       ano := edAno.Text;

   Memo1.Lines.Clear;
   Memo2.Lines.Clear;

   If ((XTIPOPED = 'PR') or (XTIPOPED = 'SCAN'))
   Then Begin
     If not Inutilizacao(ano, edNumInicial.Text, edNumFinal.Text, edCNPJ.Text, ValidaAcentos(edJustificativa.Text), msg)
     Then Begin
        Mensagem('Mzr Sistemas - INFORMA��O', 'Verifique mensagem de retorno. Falha na inutiliza��o: ' + #13 + msg, '', 1, 1, false, 'i');
        edNumInicial.SetFocus;
     End
     Else begin
         Mensagem('Mzr Sistemas - INFORMA��O', 'Verifique mensagem de retorno. ' + #13 + msg, '', 1, 1, false, 'i');
         edNumInicial.ValueInteger := 0;
         edNumFinal.ValueInteger := 0;
         edJustificativa.Text := '';
         edNumInicial.SetFocus;
     End;
   End;
}

end;
procedure TFMzrNfe.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFMzrNfe.FormActivate(Sender: TObject);
begin
   //Edmar - 22/10/2015 - Se NFCe foi impressa, cancela execu��o
   if XNFCeImp then
       Exit;
   PEnviaXml.Visible:=False;
   PEnviaXml.SendToBack;
   //Paulo 08/07/2011: mostra a validade do certificado digital
   RetornaDataVctoCertificado;
   //inicializa paineis
   LimpaPaineis;
   //Inicializa processo
   Inicializa;
end;

procedure TFMzrNfe.FormCreate(Sender: TObject);
begin
	Try
       XNFCeImp := False;                                      
		Brush.Style:=bsClear;
       Repaint;
	Except
   End;
end;

procedure TFMzrNfe.BtnFecha01Click(Sender: TObject);
begin
   Close;
end;

procedure TFMzrNfe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key=Vk_escape
   Then Begin
       If XIndicaProcessoConcluido=True Then
           Close;
   End;
end;

procedure TFMzrNfe.Button1Click(Sender: TObject);
begin
   If ConsultarStatusServico(false, XMsgGeralString)=False
   Then Begin
       If ConsultarStatusServico(True, XMsgGeralString)=False
       Then Begin
           MessageDlg('Servidores fora de conex�o', mtWarning, [mbOK], 0);
       End
       Else Begin
           MessageDlg('WS em modo SCAN', mtWarning, [mbOK], 0);
       End;
   End
   Else Begin
       MessageDlg('WS Operando normalmente', mtWarning, [mbOK], 0);
   End;
end;

procedure TFMzrNfe.Button2Click(Sender: TObject);
begin
   XmlGerar;
end;

procedure TFMzrNfe.Button3Click(Sender: TObject);
begin
    //Valida o xml
    if not ValidarXML(XXmlfinal, 1) = False
    then begin
       MessageDlg('FALHA DE VALIDA��O: ', mtWarning, [mbOK], 0);
    end;
end;

procedure TFMzrNfe.BitBtn2Click(Sender: TObject);
begin
   SetVariaveisGerais;
end;

procedure TFMzrNfe.BitBtn3Click(Sender: TObject);
Var
    i : integer;
    XMsgcabMsg: WideString;
begin
     NfeTransmiteXml
{           Util := CoUtil.Create;

           i:= Util.EnviaNFeSCAN(XUfLocal, XXmlNfe,  XNfeRecibo, XNfeNomeCertificado, XMsgcabMsg, XMsgDadosMsg, XNfeRetornoWS, XMsgGeral,  XNfeXmlAss, '','','',XNfeLicenca);
           MessageDlg('I - '+IntToStr(I), mtWarning, [mbOK], 0);
           //Grava o retorno do lote em xml local
           XmlLoteGravarRetorno(XNfeRecibo, XMsgDadosMsg, XNfeRetornoWS);}
end;

procedure TFMzrNfe.BitBtn4Click(Sender: TObject);
begin
     NfeConsultarLote(XNfeRecibo);
end;

procedure TFMzrNfe.BitBtn5Click(Sender: TObject);
begin
   DanfeVisualizar;
end;

procedure TFMzrNfe.SpeedButton1Click(Sender: TObject);
begin
	PErro.Visible:=False;
end;

procedure TFMzrNfe.LVisualizaFalhasClick(Sender: TObject);
begin
	PErro.Visible:=True;
   PErro.BringToFront;
end;

procedure TFMzrNfe.Button4Click(Sender: TObject);
var

//ALEXNFEUtil:NFe_Util_Interface;
i : integer;
cUF : widestring;

begin

  Util := CoUtil.Create;
  cUF := '41';
  Screen.Cursor := CrHourGlass;
  //ALEXNFEi:= Util.InutilizaNroNFSCAN('PR', XNfeTipoAmbiente, XNfeNomeCertificado, XMsgcabMsg, XMsgDadosMsg, XMsgRetWS, XMsgGeral, '41', '10', DMMACS.TEmpresa.FieldByName('CNPJ').AsString, '55', '1', '16', '17', 'TESTE DE INUTILIZACAO PARA HOMOLOGACAO', '', '', '', XNfeLicenca);
  Screen.Cursor := CrDefault;
  if i > 1 then
      MessageDlg( 'Erro na chamada do WS...'+#13+#13+XMsgcabMsg, mtError, [mbOk], 0);
  Util := nil;

end;

procedure TFMzrNfe.Button5Click(Sender: TObject);
var
//ALEXNFEUtil:NFe_Util_Interface;
i : integer;
begin

  Util := CoUtil.Create;
  Screen.Cursor := CrHourGlass;
  //alexnfei:= Util.ConsultaStatusSCAN('PR', 'PR', XNfeTipoAmbiente, XNfeNomeCertificado, XMsgcabMsg, XMsgDadosMsg, XMsgRetWS, XMsgGeral, '', '', '');
  Screen.Cursor := CrDefault;
  if i > 1 then
      MessageDlg( 'Erro na chamada do WS...'+#13+#13+XMsgGeral, mtError, [mbOk], 0);
  Util := nil;

end;

//Alex 26/12/2012:Fun��o para salvar e transmitir Carta de Corre��o Eletronica
Function TFMzrNfe.CCeGravaDistribui(XCCeXmlDistribuido: WideString): Boolean;
Var
	Fsaida: TextFile;
Begin
	//SALVA XML EM ARQUIVO
	Try
       Result:=True;
       Information('Gravando XML da CCe...');


       verificaDiretorio('C:\Mzr\Arquivos\NFe\NfeDistribuicao\'+XSetInPeriodoFiscal);
       AssignFile(Fsaida, 'C:\Mzr\Arquivos\NFe\NfeDistribuicao\'+XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-CCe.xml');

       XXmlCCeDistricuicao:='C:\Mzr\Arquivos\NFe\NfeDistribuicao\'+XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-CCe.xml';
		XXmlDistLocal:='';

		Rewrite(Fsaida);
		Write(Fsaida, AnsiToUTF8(XRETORNO));
		CloseFile(Fsaida);

       MMensagem.Clear;
       MMensagem.Lines.Add('Segue em anexo o xml Carta de Corre��o eletr�nica N� '+IntToStr(XSetInNumFiscal));
       MMensagem.Lines.Add('----------------------------------------------------------');
       MMensagem.Lines.Add('Att ');
       MMensagem.Lines.Add(DMMACS.TEmpresa.FieldByName('FANTASIA').AsString);
       MMensagem.Lines.Add('CNPJ: '+DMMACS.TEmpresa.FieldByName('CNPJ').AsString);
       MMensagem.Lines.Add('Tel: '+DMMACS.TEmpresa.FieldByName('Fone').AsString);
       MMensagem.Lines.Add('----------------------------------------------------------');
       MMensagem.Lines.Add('.');
       MMensagem.Lines.Add('.');
       MMensagem.Lines.Add('.');
       MMensagem.Lines.Add('N�O RESPONDER ESTE EMAIL.');

       If (XSetInTipoPedido='PEDV') or (XSetInTipoPedido='ORDEM')
       Then Begin
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' Select email.email, pessoa.emailpadrao from vwcliente');
           DMMACS.TALX.SQL.Add(' left Join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
           DMMACS.TALX.SQL.Add(' left join email ON pessoa.cod_pessoa = email.cod_pessoa');
           DMMACS.TALX.SQL.Add(' Where vwcliente.cod_cliente=:codigo ');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=XSetCodigoDestinatario;
           DMMACS.TALX.Open;
       End
       Else Begin
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('  Select email.email, pessoa.emailpadrao from vwfornec ');
           DMMACS.TALX.SQL.Add('   left Join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa ');
           DMMACS.TALX.SQL.Add('   left join email ON pessoa.cod_pessoa = email.cod_pessoa ');
           DMMACS.TALX.SQL.Add('   Where vwfornec.cod_fornec=:codigo ');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=XSetCodigoDestinatario;
           DMMACS.TALX.Open;
       End;

       PEnviaXml.Visible:=True;
       PEnviaXml.BringToFront;
	    //Edmar - 08/04/2014 - Teste se foi informado o email padr�o para o cliente e o preenche o campo
       if DMMACS.TALX.FieldByName('EMAILPADRAO').AsString <> '' then
       	EdEmail.Text := DMMACS.TALX.FieldByName('EMAILPADRAO').AsString
       else
       	EdEmail.Text := DMMACS.TALX.FieldByName('email').AsString;

       //EnviaXMLDistribuicao;
   Except
   	Result:=False;
   End;
End;

//Alex 26/12/2012:Fun��o para salvar localmente em tmp
Function TFMzrNfe.CCeGravaLocal(XCCeXmlDistribuido: WideString): Boolean;
Var
	Fsaida: TextFile;
Begin
	//SALVA XML EM ARQUIVO
	Try
       Result:=True;
       Information('Gravando localmente XML da CCe...');


       verificaDiretorio('C:\Mzr\Arquivos\NFe\TMP\'+XSetInPeriodoFiscal);
       AssignFile(Fsaida, 'C:\Mzr\Arquivos\NFe\TMP\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-CCe.xml');

       XXmlCCeDistricuicao:='C:\Mzr\Arquivos\NFe\TMP\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-CCe.xml';
		XXmlDistLocal:='';

		Rewrite(Fsaida);
		Write(Fsaida, AnsiToUTF8(XRETORNO));
		CloseFile(Fsaida);
   Except
   	Result:=False;
   End;
End;

//Paulo 08/11/2010 - 143:Fun��o respons�vel em gerar e salvar o xml de distribui��o
Function TFMzrNfe.GeraXMLDistribuicao: Boolean;
var
   Fsaida: TextFile;
   FSaidaCCe: TextFile;   
   XProtocolo: WideString;
   XCaminhoXml: String;
   XNumRetorno: Integer;
   XReciboDist: WideString;
Begin
     Result:=True;
     Try
        if XEmiteNFCe
        then begin
            XProcNfe :=XNfeXmlAss;
            I := 150
        End
        Else Begin
            Util := CoUtil.Create;
            XProcNfe := Util.BuscaNFe2G(XSiglaWS, XNfeTipoAmbiente, XNfeXmlAss, XNfeRecibo, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg, XNfeRetornoWS, I, XMsgGeral, XProtocolo, XNfeDhRecbto, XMsgcabMsg, XMsgDadosMsg, '', '', '', XNfeLicenca);
        End;
        if (I = 100) OR (I = 150) then
        begin
            Information('Gerando XML de distribui��o e PDF da DANFE');

            XProcNfe := TirarAcentos(False, XProcNfe);
            verificaDiretorio('C:\Mzr\Arquivos\NFe\NfeDistribuicao\'+XSetInPeriodoFiscal);
            AssignFile(Fsaida, 'C:\Mzr\Arquivos\NFe\NfeDistribuicao\'+XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-NfeDistribuicao.xml');

            //Paulo 15/07/2011 - Armazena o local do xml para enviar posteriormente
            XXmlDistLocal:='C:\Mzr\Arquivos\NFe\NfeDistribuicao\'+XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-NfeDistribuicao.xml';
            //Edmar - 21/07/2015 - Verifica se o documento fiscal possui uma CCe
            DMMACS.TCCE.Close;
            DMMACS.TCCE.SQL.Clear;
            DMMACS.TCCE.SQL.Add(' SELECT * FROM CCE ');
            DMMACS.TCCE.SQL.Add(' WHERE (CCE.COD_GERADOR = :COD_PEDIDO) AND (CCE.TIPOGERADOR = :TIPO) ');
            DMMACS.TCCE.ParamByName('COD_PEDIDO').AsInteger := XSetCodigoPedido;
            DMMACS.TCCE.ParamByName('TIPO').AsString := XSetInTipoPedido;
            DMMACS.TCCE.Open;

            if not (DMMACS.TCCE.IsEmpty) AND (DMMACS.TCCE.FieldByName('XML').AsString <> '') then
            begin
            	//se possuir, busca o xml e salva local na m�quina
            	AssignFile(FSaidaCCe, 'C:\Mzr\Arquivos\NFe\NfeDistribuicao\'+XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-CCe.xml');
            	Rewrite(FSaidaCCe);
            	Write(FSaidaCCe, DMMACS.TCCE.FieldByName('XML').AsString);
            	CloseFile(FSaidaCCe);

            	//depois recupera o caminho salvo e passa para a variavel "XXmlCCeDistricuicao"
               XXmlCCeDistricuicao := 'C:\Mzr\Arquivos\NFe\NfeDistribuicao\'+XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-CCe.xml';
            end
            else
            	XXmlCCeDistricuicao:='';
               
            if XEmiteNFCe then
				XPdfLocal := 'C:\MZR\Arquivos\NFCe\PDF\'+XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+' - NFCe.pdf'
            else
				XPdfLocal := 'C:\MZR\Arquivos\NFe\PDF\'+XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+' - NFe.pdf';

            Rewrite(Fsaida);
            Write(Fsaida, XProcNfe);
            CloseFile(Fsaida);

            if (DMMACS.TLoja.FieldByName('CAMINHOXML').AsString <> '') then
            begin
            	verificaDiretorio(DMMACS.TLoja.FieldByName('CAMINHOXML').AsString + XSetInPeriodoFiscal);
               XCaminhoXml := DMMACS.TLoja.FieldByName('CAMINHOXML').AsString + XSetInPeriodoFiscal+'\'+IntToStr(XSetInNumFiscal)+'-'+XNfeChave+'-NfeDistribuicao.xml';
              	CopyFile(PChar(XXmlDistLocal), PChar(XCaminhoXml), True);
            end;

            if XDistribuicaoPeriodo = False then
            begin
                 //Paulo 22/07/2011 - Para enviar o xml para o cliente/fornecedor
                 If Mensagem('Confirma��o do usu�rio', 'Deseja enviar o XML e o PDF para o Cliente/Fornecedor?', '', 2, 3, False, 'c')=2
                 Then Begin                 
         			  XEnviaPdf := 'S';//Edmar - 25/04/2014 - Seta que vai enviar o xml e o pdf para o cliente
                     if XSetInTipoPedido = 'PEDC' then
                     	DanfeEntradaVisualizar
                     else
                     	DanfeVisualizar;
                     //Paulo 22/07/2011: Busca email do cliente
                     XEnviaEmal:=True;
                 	  If (XSetInTipoPedido='PEDV') or (XSetInTipoPedido='ORDEM')
                     Then Begin
                         DMMACS.TALX.Close;
                         DMMACS.TALX.SQL.Clear;
                         DMMACS.TALX.SQL.Add(' Select email.email, pessoa.emailpadrao from vwcliente');
                         DMMACS.TALX.SQL.Add(' left Join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
                         DMMACS.TALX.SQL.Add(' left join email ON pessoa.cod_pessoa = email.cod_pessoa');
                         DMMACS.TALX.SQL.Add(' Where vwcliente.cod_cliente=:codigo ');
                         DMMACS.TALX.ParamByName('codigo').AsInteger:=XSetCodigoDestinatario;
                         DMMACS.TALX.Open;
                     End
                     Else Begin
                         DMMACS.TALX.Close;
                         DMMACS.TALX.SQL.Clear;
                         DMMACS.TALX.SQL.Add('  Select email.email, pessoa.emailpadrao from vwfornec ');
                         DMMACS.TALX.SQL.Add('   left Join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa ');
                         DMMACS.TALX.SQL.Add('   left join email ON pessoa.cod_pessoa = email.cod_pessoa ');
                         DMMACS.TALX.SQL.Add('   Where vwfornec.cod_fornec=:codigo ');
                         DMMACS.TALX.ParamByName('codigo').AsInteger:=XSetCodigoDestinatario;
                         DMMACS.TALX.Open;
                     End;
                     if DMMACS.TALX.IsEmpty then
                        XEnviaEmal:= False;

                     MMensagem.Clear;
                     MMensagem.Lines.Add('Segue em anexo XML e o PDF da nota fiscal N� '+IntToStr(XSetInNumFiscal));
                     MMensagem.Lines.Add('----------------------------------------------------------');
                     MMensagem.Lines.Add('Att ');
                     MMensagem.Lines.Add(DMMACS.TEmpresa.FieldByName('FANTASIA').AsString);
                     MMensagem.Lines.Add('CNPJ: '+DMMACS.TEmpresa.FieldByName('CNPJ').AsString);
                     MMensagem.Lines.Add('Tel: '+DMMACS.TEmpresa.FieldByName('Fone').AsString);
                     MMensagem.Lines.Add('----------------------------------------------------------');
                     MMensagem.Lines.Add('.');
                     MMensagem.Lines.Add('.');
                     MMensagem.Lines.Add('.');
                     MMensagem.Lines.Add('N�O RESPONDER ESTE EMAIL.');
                     PEnviaXml.Visible:=True;
                     PEnviaXml.BringToFront;
                     //Edmar - 08/04/2014 - Teste se foi informado o email padr�o para o cliente e o preenche o campo
                     if DMMACS.TALX.FieldByName('EMAILPADRAO').AsString <> '' then
                         EdEmail.Text := DMMACS.TALX.FieldByName('EMAILPADRAO').AsString
                     else
                         EdEmail.Text:=DMMACS.TALX.FieldByName('EMAIL').AsString;
                         
                 end else
                 begin
                 	if XSetInTipoPedido = 'PEDC' then
                   	DanfeEntradaVisualizar
                   else
                   	DanfeVisualizar;
                 end;
           end;
        end
        else begin
           if i >= 200 then
               XNfeRetornoWS:=GetTextoNumeroRetorno(IntToStr(i))+#13+XMsgGeral
           else
               XNfeRetornoWS:=GetTextoDistribuicaoRetorno(IntToStr(i));
           Result:=False;
        end;
     Except
         Result:=False;
     End;
End;
//Alex 14/08/2012 - 143:Fun��o respons�vel em salvar o xml de cancelamento
Function TFMzrNfe.GeraXMLCancelamento: Boolean;
var
   Fsaida: TextFile;
   XProtocolo: WideString;
   XNumRetorno: Integer;
   XReciboDist: WideString;
Begin
     Result:=True;
     Try
        Information('Recuperando XML de cancelamento');
     	 //Busca os dados do banco
      	 If XSetInTipoPedido='PEDV'
        Then begin
      		DMESTOQUE.Alx1.Close;
      		DMESTOQUE.Alx1.SQL.Clear;
      		DMESTOQUE.Alx1.SQL.Add('SELECT pedvenda.cod_cliente as DESTINO, docfissaida.nfexmlcancel as XML, docfissaida.numdocfis as NUMNOTA ');
      		DMESTOQUE.Alx1.SQL.Add('FROM PEDVENDA');
      		DMESTOQUE.Alx1.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
      		DMESTOQUE.Alx1.SQL.Add('where pedvenda.cod_pedvenda = :COD');
      		DMESTOQUE.Alx1.ParamByName('COD').AsInteger := XSetCodigoPedido;
      		DMESTOQUE.Alx1.Open;
        End;
      	 If XSetInTipoPedido='PEDC'
        Then begin
      		DMESTOQUE.Alx1.Close;
      		DMESTOQUE.Alx1.SQL.Clear;
      		DMESTOQUE.Alx1.SQL.Add('SELECT pedcompra.cod_fornec as DESTINO, docfis.nfexmlcancel as XML, docfis.numdocfis as NUMNOTA');
      		DMESTOQUE.Alx1.SQL.Add('FROM PEDVENDA');
      		DMESTOQUE.Alx1.SQL.Add('left join docfis on pedcompra.cod_pedcomp = docfis.cod_pedido');
      		DMESTOQUE.Alx1.SQL.Add('where pedcompra.cod_pedcomp = :COD');
      		DMESTOQUE.Alx1.ParamByName('COD').AsInteger := XSetCodigoPedido;
      		DMESTOQUE.Alx1.Open;
        End;
	     If XSetInTipoPedido='ORDEM'
        Then Begin
      		DMESTOQUE.Alx1.Close;
      		DMESTOQUE.Alx1.SQL.Clear;
      		DMESTOQUE.Alx1.SQL.Add(' SELECT ordem.cod_cliente as DESTINO, docfisord.nfexmlcancel as XML, docfisord.numdocfis as NUMNOTA ');
      		DMESTOQUE.Alx1.SQL.Add(' FROM ordem ');
      		DMESTOQUE.Alx1.SQL.Add(' left join docfisord on ordem.cod_ordem = docfisord.cod_ordem ');
      		DMESTOQUE.Alx1.SQL.Add(' where ordem.cod_ordem = :COD ');
      		DMESTOQUE.Alx1.ParamByName('COD').AsInteger := XSetCodigoPedido;
      		DMESTOQUE.Alx1.Open;
        End;
        If not DMESTOQUE.Alx1.IsEmpty
        Then Begin
        	If DMESTOQUE.Alx1.FieldByName('XML').AsString<>''
           Then Begin
				XXmlNfeCancel:=DMESTOQUE.Alx1.FieldByName('XML').AsString;
				XSetCodigoDestinatario:=DMESTOQUE.Alx1.FieldByName('DESTINO').AsInteger;
				XSetInNumFiscal:=DMESTOQUE.Alx1.FieldByName('NUMNOTA').AsInteger;
               NfeGravaNfeCancelada;
           End
           Else Begin
               Result:=False;
               MessageDlg('N�o foi poss�vel encontrar o Xml de cancelamento. Entre em contato com o suporte.', mtWarning, [mbOK], 0);
           End;
        End
        Else Begin
           Result:=False;
           MessageDlg('N�o foi poss�vel encontrar o Xml de cancelamento. Entre em contato com o suporte.', mtWarning, [mbOK], 0);
        End;
     Except
         Result:=False;
     End;
End;

// Paulo 17/01/2011: Fun��o para verificar o numero de retorno da fun��o e retornar o texto equivalente para xml de distribui��o
Function TFMzrNfe.GetTextoDistribuicaoRetorno(XNumero: String): String;
Var
	Xcodigo: Integer;
Begin
	Try
       Xcodigo:=StrToInt(XNumero);
   Except
       Result:='';
       Exit;
   End;
   
	case Xcodigo of
		//C�DIGO E RESULTADO DO PROCESSAMENTO DA SOLICITA��O
       1 : Result:= 'Erro: tipoXML %tipoXML%inv�lido (fora do intervalor 0-18)';
       2 : Result:= 'Erro: arquivo de Schema XML %nome do arquivo% n�o localizado';
       3 : Result:= 'Erro: XML mal formado';
       4 : Result:= 'Erro: XML n�o atende Schema XML';
       5 : Result:= 'Erro: n�o previsto';
       6 : Result:= 'Erro: XML com caracteres de identifica��o de codifica��o UTF-8/16/32/7';
       7 : Result:= 'Erro: Tipo Ambiente informado %% diverge do tpAmb da NF-e entrada';
       8 : Result:= 'tag tpAmb inexistente no NF-e de entrada';
       9 : Result:= 'UF informada (%%) diverge do cUF do emitente da NF-e entrada (%%)';
      10 : Result:= 'tag cUF do emitente inexistente no NF-e de entrada';
      11 : Result:= 'tag CNPJ do emitente n�o localizada no arquivo de entrada';
      12 : Result:= 'codigo do ambiente inv�lido';
      13 : Result:= 'sigla da UF inv�lida';
      14 : Result:= 'a UF n�o oferece o servi�o';
      15 : Result:= 'Arquivo com a URL do WS n�o localizados';
      16 : Result:= 'n�o tratado de abertura/tratamento Arquivo ws.xml';
      17 : Result:= 'de valida��o de Schema';
      18 : Result:= 'Nenhum Certificado Selecionado';
      19 : Result:= 'Nenhum certificado v�lido foi encontrado com o nome informado';
      20 : Result:= 'Inesperado no acesso ao certificado digital: "+ex.Message';
      21 : Result:= 'Time-out ao chamar o WS';
      22 : Result:= 'exce��o do biblioteca criptogr�fica';
      23 : Result:= 'conectividade';
      24 : Result:= 'tipoXML %tipoXML%inv�lido (fora do intervalor 0-18)';
      25 : Result:= 'arquivo de Schema XML %nome do arquivo% n�o localizado';
      26 : Result:= 'XML mal formado';
      27 : Result:= 'XML n�o atende Schema XML';
      28 : Result:= 'n�o previsto';
      29 : Result:= 'XML com caracteres de identifica��o de codifica��o UTF-8/16/32/7';
      30 : Result:= 'tag cStat n�o localizado na mensagem de retorno';
      31 : Result:= 'tag xMotivo n�o localizado na mensagem de retorno';
      32 : Result:= '<DigestValue> da NF-e  diverge do <digVal> do protocolo';
      33 : Result:= 'Busca do lote =%recibo%, mas n�o existe protocolo para o a NF-e com chave de acesso %%';
      34 : Result:= 'inesperado ao tratar o XML do retorno do WS';
      35 : Result:= 'tag cStat n�o localizado no Protocolo de retorno (protNFe)';
      36 : Result:= 'tag xMotivo n�o localizado no Protocolo de retorno (protNFe)';

      105 : Result:= 'lote em processamento';
      106 : Result:= 'lote n�o localizado';
      100 : Result:= 'NF-e autorizada';

   End;

End;

//Paulo 08/07/2011 - Fun��o que retorna a data de vencimento do certificado digital
Procedure TFMzrNfe.RetornaDataVctoCertificado;
var
   Fsaida: TextFile;
   XRetorno,
   XCert,
   titular,
   cnpj,
   nrSerie,
   emissor,
   iniVal, fimVal: WideString;  
Begin
     XCert:=XNfeNomeCertificado;
     LbValCertificado.Caption:='';
     LbValCertificado.Visible:=True;
     Try
        Util := CoUtil.Create;

     	 i := Util.PegaDadosCertificado(XCert, XRetorno, titular, cnpj, nrSerie, emissor, iniVal, fimVal);
        if i > 6003 then
        begin
            //Paulo 08/07/2011: Verifica o erro que ocorreu
            case i of
                 //C�DIGO E RESULTADO DO PROCESSAMENTO DA SOLICITA��O
                 6004 : LbValCertificado.Caption:= 'Erro: Certificado selecionado n�o tem CNPJ/CPF';
                 6005 : LbValCertificado.Caption:= 'Erro: Certificado digital n�o tem chave privada';
                 6006 : LbValCertificado.Caption:= 'Erro: Certificado Digital - Erro Inesperado:[{0:0}]';
                 6007 : LbValCertificado.Caption:= 'Erro: Nenhum certificado digital selecionado';
                 6008 : LbValCertificado.Caption:= 'Erro: Nenhum certificado v�lido foi encontrado com o nome [{0:0}] informado';
            End;
        end
        Else Begin
           LbValCertificado.Caption:='Validade Certificado: '+fimVal;
        End;
     Except

     End;
End;

//Paulo 15/07/2011: Envia xml de distribui��o para o fornecedor;
Function TFMzrNfe.EnviaXMLDistribuicao: Boolean;
var
   Xnode: IXMLNode;
   XOpenNfe: TOpenDialog;
   XEmail:String;
   xSenha: String;
   Attachment: TIdAttachment;
Begin
   Result:=True;
   try
       try
           if VerificaNet <> 0 then
           begin
           	if DMMACS.TLoja.FieldByName('EMAIL_EMPRESA').AsString = '' then
               begin
                   SMTPxml.Username := 'noreply@resulterp.com.br';
                   XEmail := 'noreply@resulterp.com.br';
                   SMTPxml.Password :='Mzrking@771'; // senha do usuario
                   SMTPxml.Host :=  'smtp.resulterp.com.br';
                   SMTPxml.Port := 587;
                   //
                   SMTPxml.UseTLS := utNoTLSSupport;                   
               end
               else begin
                   SMTPxml.Username := DMMACS.TLoja.FieldByName('EMAIL_EMPRESA').AsString;
                   XEmail := DMMACS.TLoja.FieldByName('EMAIL_EMPRESA').AsString;
                   SMTPxml.Password := FMenu.Cripto.CriptoHexToText(DMMACS.TLoja.FieldByName('SENHAEMAIL_EMPRESA').AsString);
                   SMTPxml.Host :=  DMMACS.TLoja.FieldByName('SERVIDOR_SMTP').AsString;
                   SMTPxml.Port := DMMACS.TLoja.FieldByName('PORTA_EMAIL').AsInteger;
                   //
                   SSLSocket.SSLOptions.Method := sslvSSLv3;
                   SSLSocket.SSLOptions.Mode := sslmClient;
                   //
                   SMTPxml.IOHandler := SSLSocket;
                   if DMMACS.TLoja.FieldByName('SERVIDOR_SMTP').AsString = 'smtp.live.com' then
                   begin
                       SMTPxml.UseTLS := utUseExplicitTLS;
                       SSLSocket.SSLOptions.Method := sslvTLSv1;
                       SSLSocket.SSLOptions.Mode := sslmUnassigned;
                   end
                   else
                       SMTPxml.UseTLS := utUseImplicitTLS;
               end;
                 
               try
                   with MessXml do
                   begin
                       From.Address :=XEmail;
                       Recipients.EmailAddresses :=EdEmail.Text; // email de destino
                       Body.Text:= MMensagem.Lines.Text;
                       //ContentType:='text/html';
                       CharSet := 'iso-8859-1';
                       Encoding := MeMIME;
                       ContentType := 'multipart/related' ;

                       //Paulo 15/07/2011: anexo o arquivo xml
                       if XXmlDistLocal <> '' then
                       begin
                           MessXml.Subject := 'XML e PDF da Nota Fiscal Eletr�nica N� '+ IntToStr(XSetInNumFiscal);
                           Attachment := TIdAttachmentFile.Create(MessageParts, XXmlDistLocal);
                       end;

                       if XXmlCCeDistricuicao<>'' then
                       begin
                           MessXml.Subject :=  MessXml.Subject+ ' XML da CCe N� '+ IntToStr(XSetInNumFiscal);
                           Attachment := TIdAttachmentFile.Create(MessageParts, XXmlCCeDistricuicao);
                       end;

                       if FileExists(XPdfLocal) then
                           Attachment := TIdAttachmentFile.Create(MessageParts, XPdfLocal);

                       try
                           SMTPxml.Connect;
                       except
                           SMTPxml.Port := 25;
                           SMTPxml.Connect;
                       end;

                       SMTPxml.Send(MessXml);
                   end;
               finally
                   SMTPxml.Disconnect;
               end; 
           end;
       except
           On E : Exception do
           begin
               ShowMessage('O envio do E-mail falhou: '+ E.Message);
               Result := False;
           end;
       end;
   finally
       MessXml.Free;
       SMTPxml.Free;
       IdPOP31.Free;
   end;
end;


procedure TFMzrNfe.BtnEnviarOkClick(Sender: TObject);
begin
      if EnviaXMLDistribuicao = True then
      begin
         MessageDlg('XML e PDF enviado com sucesso!', mtInformation, [mbOK], 0);
         GravaEmail(XSetCodigoDestinatario);
      end
      else
         MessageDlg('Ocorreram falhas ao enviar o XML comunique ao suporte.', mtWarning, [mbOK], 0);

      PEnviaXml.Visible:=False;
      PEnviaXml.SendToBack;
      MMensagem.Free;
      EdEmail.Text:='';
end;

//Paulo 29/10/2011: Grava email do cliente
procedure TFMzrNfe.GravaEmail(XCodCliente:Integer);
begin
     //Paulo 29/10/2011: Caso o cliente n�o tenha email cadastrado, ir� grava um novo email
     if XEnviaEmal = True then
     begin
         FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',IntToStr(XCodCliente),'');

         //Edmar - 14/04/2014 - Faz um busca para saber se n�o existe esse email j� cadastrado
         DMPESSOA.TALX.Close;
         DMPESSOA.TALX.SQL.Clear;
         DMPESSOA.TALX.SQL.Add('select email.email from email where email.cod_pessoa = :codigo and upper(email.email) = upper(:email)');
         DMPESSOA.TALX.ParamByName('codigo').AsInteger := DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger;
         DMPESSOA.TALX.ParamByName('email').AsString := EdEmail.Text;
         DMPESSOA.TALX.Open;

         //Edmar - 14/04/2014 - Se estiver vazio, n�o existe aquele email para aquela pessoa
         if DMPESSOA.TALX.IsEmpty then
         begin
             DMPESSOA.TALX.Close;
             DMPESSOA.TALX.SQL.Clear;
             DMPESSOA.TALX.SQL.Add('insert into email(COD_EMAIL,COD_PESSOA,EMAIL)');
             DMPESSOA.TALX.SQL.Add('VALUES(:COD_EMAIL,:COD_PESSOA,:EMAIL)');
             DMPESSOA.TALX.ParamByName('COD_EMAIL').AsInteger:=DMMACS.TCodigo.FieldByName('COD_EMAIL').AsInteger;
             DMPESSOA.TALX.ParamByName('COD_PESSOA').AsInteger:=DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger;
             DMPESSOA.TALX.ParamByName('EMAIL').AsString:=EdEmail.Text;
             DMPESSOA.TALX.ExecSQL;
             DMPESSOA.TransacPessoa.CommitRetaining;

             DMMACS.TCodigo.Edit;
             DMMACS.TCodigo.FieldByName('COD_EMAIL').AsInteger := DMMACS.TCodigo.FieldByName('COD_EMAIL').AsInteger + 1;
             DMMACS.TCodigo.Post;
             DMMACS.IBTCodigo.CommitRetaining;

             //Edmar - 08/04/2014 - Atualiza tamb�m a pessoa com o email
             DMPESSOA.TALX.Close;
             DMPESSOA.TALX.SQL.Clear;
             DMPESSOA.TALX.SQL.Add('update pessoa set emailpadrao = :email where cod_pessoa = :codpes');
             DMPESSOA.TALX.ParamByName('email').AsString := EdEmail.Text;
             DMPESSOA.TALX.ParamByName('codpes').AsInteger := DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger;
             DMPESSOA.TALX.ExecSQL;
//             DMPESSOA.TALX.Transaction.CommitRetaining;
			  DMPESSOA.TransacPessoa.CommitRetaining;
         end;
     end;    


end;
//PAulo 13/02/2012:Gera todos os xml de distribui��o do periodo
procedure TFMzrNfe.BuscaDadosPeriodo(Xtipo: String);
begin
		if XTipo = 'PEDVENDA' then
       begin
       	XSetInTipoPedido:='PEDV';
           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add('select pedvenda.cod_pedvenda,docfissaida.nfexml,docfissaida.nferecibo,');
           DMSAIDA.TAlx.SQL.Add('docfissaida.nfeambiente, docfissaida.nfechave,docfissaida.numdocfis');
           DMSAIDA.TAlx.SQL.Add('from pedvenda');
           DMSAIDA.TAlx.SQL.Add('left join docfissaida on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
           DMSAIDA.TAlx.SQL.Add('where (docfissaida.COD_PERIODOFISCAL= :CODPER)  and((docfissaida.nfestatus = 1) or (docfissaida.nfestatus = 3)) ');
           DMSAIDA.TAlx.SQL.Add('ORDER BY docfissaida.numdocfisint');
           DMSAIDA.TAlx.ParamByName('CODPER').AsInteger:= DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
           DMSAIDA.TAlx.Open;
       end;
       if XTipo = 'PEDCOMPRA' then
       begin
       	XSetInTipoPedido:='PEDC';
           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add(' select pedcompra.cod_pedcomp, docfis.nfexml, docfis.nferecibo, ');
           DMSAIDA.TAlx.SQL.Add(' docfis.nfeambiente, docfis.nfechave, docfis.numdocfis ');
           DMSAIDA.TAlx.SQL.Add(' from pedcompra ');
           DMSAIDA.TAlx.SQL.Add(' left join docfis on docfis.cod_pedido = pedcompra.cod_pedcomp ');
           DMSAIDA.TAlx.SQL.Add(' where (docfis.COD_PERIODOFISCAL= :CODPER)  and((docfis.nfestatus = 1) or (docfis.nfestatus = 3)) ');
           DMSAIDA.TAlx.SQL.Add(' ORDER BY docfis.numdocfiscint ');
           DMSAIDA.TAlx.ParamByName('CODPER').AsInteger:= DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
           DMSAIDA.TAlx.Open;
       end;
       if XTipo = 'ORDEM' then
       begin
       	XSetInTipoPedido:='ORDEM';
           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add('select ordem.cod_ordem,docfisord.nfexml,docfisord.nferecibo,');
           DMSAIDA.TAlx.SQL.Add('docfisord.nfeambiente, docfisord.nfechave,docfisord.numdocfis');
           DMSAIDA.TAlx.SQL.Add('from ordem');
           DMSAIDA.TAlx.SQL.Add('left join docfisord on docfisord.cod_ordem = ordem.cod_ordem');
           DMSAIDA.TAlx.SQL.Add('where (docfisord.COD_PERIODOFISCAL= :CODPER)  and((docfisord.nfestatus = 1) or (docfisord.nfestatus = 3))');
           DMSAIDA.TAlx.SQL.Add('ORDER BY docfisord.numdocfisint');
           DMSAIDA.TAlx.ParamByName('CODPER').AsInteger:= DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
           DMSAIDA.TAlx.Open;
       end;
       if not DMSAIDA.TAlx.IsEmpty then
       begin
           DMSAIDA.TAlx.First;
           While Not DMSAIDA.TAlx.Eof do
           begin
               XXmlNfe:= DMSAIDA.TAlx.FieldByName('NFEXML').AsString;
               XNfeRecibo:= DMSAIDA.TAlx.FieldByName('NFERECIBO').AsString;
               XNfeTipoAmbiente:= DMSAIDA.TAlx.FieldByName('NFEAMBIENTE').AsInteger;
               XUfLocal:= 'PR';
               XNfeChave:= DMSAIDA.TAlx.FieldByName('NFECHAVE').AsString;
               XSetInNumFiscal:=DMSAIDA.TAlx.FieldByName('NUMDOCFIS').AsInteger;

               SetVariaveisGerais;

               //Paulo 13/01/2011: Ass o xml
               AssinarXML(XXmlNfe,'infNFe',XNfeXmlAss);
               GeraXMLDistribuicao;

               DMSAIDA.TAlx.Next;
           end;
       end;    

end;


procedure TFMzrNfe.BtnCancelaEnvioClick(Sender: TObject);
begin
      PEnviaXml.Visible:=False;
      PEnviaXml.SendToBack;
      MMensagem.Free;
      EdEmail.Text:='';
end;


//Paulo 20/04/2012: Fun��o para desmembrar o c�digo e o sub c�digo do servi�o
Function TFMzrNfe.DesmembraCodigo(XCodigo: String; Xtipo:String): String;
Var I : byte;
    Xcod:String;
Begin
    For I:=1 to Length(XCodigo) Do
    Begin
        If (XCodigo[I]<>'.') Then
        begin
             Xcod:=Xcod+XCodigo[I];
             delete(XCodigo,I,1);
        end
        else begin
          delete(XCodigo,I,1);
          if Xtipo = 'COD' then
             Result := Xcod
          else
             Result := XCodigo;
        end;
    end;
end;



//Paulo 23/04/2012: Fun��o para buscar dados do tomador(cliente)
Function TFMzrNfe.IniciaEnvioNFSe(XNumFiscal:Integer; XSetCodigoTomador:Integer; XCodOrdem:Integer; XPeriodoFiscal:String): Boolean;
Begin
   Result:=True;
   Try
       XSetInPeriodoFiscal:=XPeriodoFiscal;
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '/');
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '(');
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, ')');
       verificaDiretorio('C:\Mzr\Arquivos\NFSe\NFSeEnviada\'+XSetInPeriodoFiscal);

       XSetInNumFiscal:=XNumFiscal;
       XSetCodigoPedido:=XCodOrdem;

       //if XSetDadosTomador(XSetCodigoTomador)= True then
   Except
   end;       
       
end;

//Paulo 23/04/2012: Fun��o para buscar dados do tomador(cliente)
Function TFMzrNfe.XSetDadosTomador(XSetCodigoTomador:Integer): Boolean;
Begin
    //Seta dados do Destinatario (cliente do cliente)
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' Select vwcliente.nome, pessoaj.cod_pessoaj, pessoaj.razao_social, vwcliente.cpfcnpj, cliente.CONTRIBICMS, cliente.SUFRAMA, pessoaj.INDUSTRIA, vwcliente.cidade, vwcidade.uf, cidade.cod_ibge,pessoaj.insc_est, ');
    DMMACS.TALX.SQL.Add('  pessoa.endereco, pessoa.bairro, pessoa.endnumero, cliente.suframa,pessoa.cep, pessoa.telrel,email.email from vwcliente');
    DMMACS.TALX.SQL.Add(' left Join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
    DMMACS.TALX.SQL.Add(' Left Join pessoaj on pessoa.cod_pessoa=pessoaj.cod_pessoa ');
    DMMACS.TALX.SQL.Add(' Left Join cliente on vwcliente.cod_cliente=cliente.cod_cliente ');
    DMMACS.TALX.SQL.Add(' left join vwcidade ON vwcliente.cod_cidade = vwcidade.cod_cidade');
    DMMACS.TALX.SQL.Add(' left join cidade ON vwcliente.cod_cidade = cidade.cod_cidade');
    DMMACS.TALX.SQL.Add(' left join email ON pessoa.cod_pessoa = email.cod_pessoa');
    DMMACS.TALX.SQL.Add(' Where vwcliente.cod_cliente=:codigo ');
    DMMACS.TALX.ParamByName('codigo').AsInteger:=XSetCodigoTomador;
    DMMACS.TALX.Open;

    if DMMACS.TALX.IsEmpty then
       Result:=False
    else
       Result:=True;
end;

//Paulo 20/04/2012: Gera Xml para Nota Fiscal de Servi�os
Function TFMzrNfe.GeraXMLServico: Boolean;
var
	 Raiz,Nome, Attributo1, Attributo2, Attributo3: IXMLNode;
   NodeLoteA,NodeLoteB, NodeLoteC, NodeLoteD, NodeLoteE  :IXMLNode;
   NodeLoteF,NodeLoteG,NodeLoteH :IXMLNode;
   XXml:WideString;
begin

    //Monta o xml somente para notas de servi�os de Toledo
    XMLNFSe:= TXMLDocument.Create(Self);
    XMLNFSe.Active := True;
    XMLNFSe.Version := '1.0';
    XMLNFSe.Encoding := 'UTF-8';

    Raiz := XMLNFSe.AddChild('es:enviarLoteRpsEnvio');
    Attributo1:= XMLNFSe.CreateNode('xmlns:es', ntAttribute);
    Attributo1.Text := 'http://www.equiplano.com.br/esnf';
    Attributo2:= XMLNFSe.CreateNode('xmlns:xsi', ntAttribute);
    Attributo2.Text := 'http://www.w3.org/2001/XMLSchema-instance';
    Attributo3:= XMLNFSe.CreateNode('xsi:schemaLocation', ntAttribute);
    Attributo3.Text := 'http://www.equiplano.com.br/enfs esRecepcionarLoteRpsEnvio_v01.xsd';
    Raiz.AttributeNodes.Add(Attributo1);
    Raiz.AttributeNodes.Add(Attributo2);
    Raiz.AttributeNodes.Add(Attributo3);
    Attributo1.AttributeNodes.Clear;
    Attributo2.AttributeNodes.Clear;
    Attributo3.AttributeNodes.Clear;

    //Raiz:=XMLNFSe.CreateElement();
    Raiz.AddChild('lote');
    //NodeLoteA:=XMLNFSe.CreateElement()
    //NodeLoteA.AddChild('lote');
    NodeLoteB := Raiz.ChildNodes['lote'];
    NodeLoteB.AddChild('nrLote').NodeValue := '1' ;
    NodeLoteB.AddChild('qtRps').NodeValue := '1' ;
    NodeLoteB.AddChild('nrVersaoXml').NodeValue := '1' ;

    //NodeLoteB:=XMLNFSe.DocumentElement;
    NodeLoteB.AddChild('prestador');
    NodeLoteC := NodeLoteB.ChildNodes['prestador'];
    NodeLoteC.AddChild('nrCnpj').NodeValue := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
    NodeLoteC.AddChild('nrInscricaoMunicipal').NodeValue := DMMACS.TEmpresa.FieldByName('INSC_MUN').AsString;
    NodeLoteC.AddChild('isOptanteSimplesNacional').NodeValue := '2';

    NodeLoteB.AddChild('listaRps');
    NodeLoteC := NodeLoteB.ChildNodes['listaRps'];
    //NodeLoteC.AddChild('listaRps');
    //NodeLoteD := NodeLoteC.ChildNodes['listaRps'];

    //NodeLoteD:=XMLNFSe.DocumentElement;
    NodeLoteC.AddChild('rps');
    NodeLoteE:=NodeLoteC.ChildNodes['rps'];
    NodeLoteE.AddChild('nrRps').NodeValue:='4';
    NodeLoteE.AddChild('nrEmissorRps').NodeValue:='1';
    NodeLoteE.AddChild('nrRps').NodeValue:='4';
    NodeLoteE.AddChild('dtEmissaoRps').NodeValue:=FormatDateTime('yyyy-MM-dd',Date())+'T'+FormatDateTime('hh:mm:ss',Time());
    NodeLoteE.AddChild('stRps').NodeValue:='1';

    //tipo de tributa��o
    if DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Tributa��o no munic�pio' then
        NodeLoteE.AddChild('tpTributacao').NodeValue:='1';
    if DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Tributa��o fora do munic�pio' then
        NodeLoteE.AddChild('tpTributacao').NodeValue:='2';
    if DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Isen��o' then
        NodeLoteE.AddChild('tpTributacao').NodeValue:='3';
    if DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Imune' then
        NodeLoteE.AddChild('tpTributacao').NodeValue:='4';

    //Reten��o do ISS
    NodeLoteE.AddChild('isIssRetido').NodeValue:=DMServ.TFiscOrd.FieldByName('RETER_ISS').AsString;

    //NodeLoteE:=XMLNFSe.DocumentElement;
    NodeLoteE.AddChild('tomador');
    NodeLoteF:=NodeLoteE.ChildNodes['tomador'];
    
    //NodeLoteF:=XMLNFSe.DocumentElement;
    NodeLoteF.AddChild('documento');
    NodeLoteG:=NodeLoteF.ChildNodes['documento'];
    NodeLoteG.AddChild('nrDocumento').NodeValue:=TiraCaracter(TiraCaracter(TiraPonto(DMMACS.TALX.FieldByName('CPFCNPJ').AsString),'-'),'/');
    NodeLoteG.AddChild('tpDocumento').NodeValue:=XTipoDocumento;
    NodeLoteG.AddChild('dsDocumentoEstrangeiro');

    //NodeLoteF:=XMLNFSe.DocumentElement;
    NodeLoteF.AddChild('nmTomador').NodeValue:=DMMACS.TALX.FieldByName('nome').AsString;
    NodeLoteF.AddChild('dsEmail').NodeValue:=DMMACS.TALX.FieldByName('email').AsString;
    NodeLoteF.AddChild('nrInscricaoEstadual').NodeValue:=DMMACS.TALX.FieldByName('insc_est').AsString;
    NodeLoteF.AddChild('dsEndereco').NodeValue:=DMMACS.TALX.FieldByName('endereco').AsString;
    NodeLoteF.AddChild('nrEndereco').NodeValue:=DMMACS.TALX.FieldByName('endnumero').AsString;
    NodeLoteF.AddChild('dsComplemento').NodeValue:='';
    NodeLoteF.AddChild('nmBairro').NodeValue:=DMMACS.TALX.FieldByName('bairro').AsString;
    NodeLoteF.AddChild('nrCidadeIbge').NodeValue:=DMMACS.TALX.FieldByName('cod_ibge').AsString;
    NodeLoteF.AddChild('nmUF').NodeValue:=DMMACS.TALX.FieldByName('uf').AsString;
    NodeLoteF.AddChild('nmPais').NodeValue:='Brasil';
    NodeLoteF.AddChild('nrCep').NodeValue:=TiraCaracter(DMMACS.TALX.FieldByName('cep').AsString,'-');
    NodeLoteF.AddChild('nrTelefone').NodeValue:=TiraCaracter(TiraCaracter(TiraCaracter(DMMACS.TALX.FieldByName('cep').AsString,'-'),'('),')');

    //NodeLoteE:=XMLNFSe.DocumentElement;
    NodeLoteF.AddChild('listaServicos');
    NodeLoteE:=NodeLoteF.ChildNodes['listaServicos'];

    //Paulo 20/04/2012: Filtra os servi�os
    FiltraTabela(DMESTOQUE.TDesp,'despadic','cod_gerador',IntToStr(XSetCodigoPedido),'');
    DMESTOQUE.TDesp.First;
    while not DMESTOQUE.TDesp.Eof do
    begin
        //NodeLoteF:=XMLNFSe.DocumentElement;
        NodeLoteE.AddChild('servico');
        NodeLoteG:=NodeLoteE.ChildNodes['servico'];

        //Paulo 20/04/2012: Filtra os servi�os
        FiltraTabela(DMServ.TServNFSE,'SERVICO_NFSE','COD_SERVICO',IntToStr(DMESTOQUE.TDesp.FieldByName('COD_SERVICO').AsInteger),'');
        NodeLoteG.AddChild('nrServicoItem').NodeValue:= DesmembraCodigo(DMServ.TServNFSE.FieldByName('NUM_SERVICO').AsString,'COD');
        NodeLoteG.AddChild('nrServicoSubItem').NodeValue:= DesmembraCodigo(DMServ.TServNFSE.FieldByName('NUM_SERVICO').AsString,'SUB');
        NodeLoteG.AddChild('vlServico').NodeValue:=FormatFloat('#.##0.00', DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency);
        NodeLoteG.AddChild('vlAliquota').NodeValue:=FormatFloat('#.##0.00', DMESTOQUE.TDesp.fieldByName('ALIQISSQN').AsCurrency / 100);

        //NodeLoteG:=XMLNFSe.DocumentElement;
        NodeLoteG.AddChild('deducao');
        NodeLoteH:=NodeLoteG.ChildNodes['deducao'];
        NodeLoteH.AddChild('vlDeducao').NodeValue:='0.00';
        NodeLoteH.AddChild('dsJustificativaDeducao');

        NodeLoteG.AddChild('vlBaseCalculo').NodeValue:=FormatFloat('#.##0.00', DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency);
        NodeLoteG.AddChild('vlIssServico').NodeValue:=FormatFloat('#.##0.00', (DMESTOQUE.TDesp.fieldByName('VLRTOTFIN').AsCurrency*(DMESTOQUE.TDesp.fieldByName('ALIQISSQN').AsCurrency / 100)));
        NodeLoteG.AddChild('dsDiscriminacaoServico').NodeValue:=DMESTOQUE.TDesp.fieldByName('DESPESA').AsString;


       DMESTOQUE.TDesp.Next;
    end;
    //NodeLoteF:=XMLNFSe.DocumentElement;
    //Paulo 23/04/2012: Totais
    NodeLoteF.AddChild('vlTotalRps').NodeValue:=FormatFloat('#.##0.00', DMServ.TFiscOrd.FieldByName('VLRTOTDOCNF').AsCurrency);
    NodeLoteF.AddChild('vlLiquidoRps').NodeValue:=FormatFloat('#.##0.00', DMServ.TFiscOrd.FieldByName('VLRTOTDOCNF').AsCurrency);

    //NodeLoteF:=XMLNFSe.DocumentElement;
    NodeLoteF.AddChild('retencoes');
    NodeLoteG:=NodeLoteF.ChildNodes['retencoes'];
    NodeLoteG.AddChild('vlCofins');
    NodeLoteG.AddChild('vlInss');
    NodeLoteG.AddChild('vlIrrf');
    NodeLoteG.AddChild('vlPis');
    NodeLoteG.AddChild('vlIss');
    NodeLoteG.AddChild('vlAliquotaCofins');
    NodeLoteG.AddChild('vlAliquotaCsll');
    NodeLoteG.AddChild('vlAliquotaInss');
    NodeLoteG.AddChild('vlAliquotaIrrf');
    NodeLoteG.AddChild('vlAliquotaPis');


    verificaDiretorio('C:\Mzr\Arquivos\NFSe\TMP\');
    If FileExists('C:\Mzr\Arquivos\NFSe\TMP\'+IntToStr(XSetInNumFiscal)+'-enviaNFSe.xml') Then
       DeleteFile('C:\Mzr\Arquivos\NFSe\TMP\'+IntToStr(XSetInNumFiscal)+'-enviaNFSe.xml');

    XMLNFSe.SaveToFile('C:\Mzr\Arquivos\NFSe\TMP\'+IntToStr(XSetInNumFiscal)+'-enviaNFSe.xml');


    XXmlfinal:=XMLNFSe.XML.Text;

end;

function TFMzrNfe.GravaPdfNfe: Boolean;
begin
    XEnviaPdf := '';

    if XEmiteNFCe then
    	VerificaDiretorio('C:\MZR\Arquivos\NFCe\PDF\'+XSetInPeriodoFiscal)
    else
    	VerificaDiretorio('C:\MZR\Arquivos\NFe\PDF\'+XSetInPeriodoFiscal);
       
{   //Edmar - 24/04/2014 - Verifica e cria o diretorio se necess�rio
    if not DirectoryExists('C:\MZR\Arquivos\NFe\PDF\'+XSetInPeriodoFiscal) then
       ForceDirectories('C:\MZR\Arquivos\NFe\PDF\'+XSetInPeriodoFiscal);}

    try
        //Edmar - 24/04/2014 - Converte e exporta a nfe em pdf
        frxExportaNfe.ShowDialog := False;
        frxExportaNfe.ShowProgress := False;
        frxExportaNfe.PrintOptimized := True;
{        if XClienteConsumidorFinal then
        	frxExportaNfe.FileName := 'C:\MZR\Arquivos\NFCe\PDF\'+XSetInPeriodoFiscal+'\'+DMESTOQUE.Alx1.FieldByName('NUMDOCFIS').AsString+' - NFCe.pdf'
        else
        	frxExportaNfe.FileName := 'C:\MZR\Arquivos\NFe\PDF\'+XSetInPeriodoFiscal+'\'+DMESTOQUE.Alx1.FieldByName('NUMDOCFIS').AsString+' - NFe.pdf';}
        frxExportaNfe.FileName := XPdfLocal;
        frxNfe.Export(frxExportaNfe);
    except
        on e : Exception do
        begin
            ShowMessage('Erro ao gerar PDF da NFS-e '+e.Message);
            Result := false;
        end;
    end;
    XEnviaPdf := '';  
end;

function TFMzrNfe.GeraQRCode(XUrlNFCe, XNomeArquivo: String): String;
var
	ImageStream : TMemoryStream;
	PngImage    : TPNGObject;
begin

	VerificaDiretorio('C:\Mzr\Arquivos\NFCe\QRCode\'+XSetInPeriodoFiscal);

   if not FileExists('C:\Mzr\Arquivos\NFCe\QRCode\'+XSetInPeriodoFiscal+'\'+XNomeArquivo+'.png') then
   begin
   	Result := '';
 		ImageStream:=TMemoryStream.Create;
 		PngImage   :=TPNGObject.Create;
 		try
   		try
       		GetQrCode(300, 300, XUrlNFCe, ImageStream);
               if ImageStream.Size>0 then
               begin
                   ImageStream.Position:=0;
                   PngImage.LoadFromStream(ImageStream);
                   ImageStream.Create.SaveToFile('C:\Mzr\Arquivos\NFCe\QRCode\'+XSetInPeriodoFiscal+'\'+XNomeArquivo+'.png');
                   Result := 'C:\Mzr\Arquivos\NFCe\QRCode\'+XSetInPeriodoFiscal+'\'+XNomeArquivo+'.png';
               end;
	   		except
      			on E: exception do
           	begin
      				ShowMessage(E.Message);
   				Result := '';
           	end;
       	end;
 		finally
  			ImageStream.Free;
  			PngImage.Free;
 		end;
   end
   else Begin
		Result := 'C:\Mzr\Arquivos\NFCe\QRCode\'+XSetInPeriodoFiscal+'\'+XNomeArquivo+'.png';
   End;
end;

function TFMzrNfe.FiltraDadosImportacaoExportacao: Boolean;
begin
	 //
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    if (XSetInTipoPedido='PEDV') or (XSetInTipoPedido='ORDEM') then
    begin
       DMMACS.TALX.SQL.Add(' SELECT CIDADE.UFEMBARQUE, CIDADE.LOCALEMBARQUE FROM CIDADE ');
       DMMACS.TALX.SQL.Add(' LEFT JOIN VWCLIENTE ON VWCLIENTE.COD_CIDADE = CIDADE.COD_CIDADE ');
       DMMACS.TALX.SQL.Add(' WHERE VWCLIENTE.COD_CLIENTE = :CODIGO ');
    end
    else begin
       DMMACS.TALX.SQL.Add(' SELECT CIDADE.UFEMBARQUE, CIDADE.LOCALEMBARQUE FROM CIDADE ');
       DMMACS.TALX.SQL.Add(' LEFT JOIN VWFORNEC ON VWFORNEC.COD_CIDADE = CIDADE.COD_CIDADE ');
       DMMACS.TALX.SQL.Add(' WHERE VWFORNEC.COD_FORNEC=:CODIGO ');
    end;
    DMMACS.TALX.ParamByName('CODIGO').AsInteger:=XSetCodigoDestinatario;
    DMMACS.TALX.Open;

    //se for nota de entrada busca os dados do fiscal e das adi��es
    if (XEstrangeiro) AND (FMenu.XNotaEntrada) then
    begin
    	//pra garantir que o docfis de importa��o foi buscado
    	MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add(' SELECT DOCFIS.NUMERODIIMP, DOCFIS.DATADIIMP, DOCFIS.DATADESEMBARQUEIMP, DOCFIS.TIPOTRANSPORTEIMP, DOCFIS.VALORAFRMMIMP, ');
       MDO.QAlx1.SQL.Add(' DOCFIS.FORMAIMPORTACAOIMP, DOCFIS.CNPJADQTENCIMP, DOCFIS.UFADQTENCIMP, DOCFIS.CODEXPORTADORIMP, CIDADE.UFEMBARQUE, ');
       MDO.QAlx1.SQL.Add(' CIDADE.LOCALEMBARQUE FROM DOCFIS ');
       MDO.QAlx1.SQL.Add(' LEFT JOIN PEDCOMPRA ON PEDCOMPRA.COD_PEDCOMP = DOCFIS.COD_PEDIDO ');
       MDO.QAlx1.SQL.Add(' LEFT JOIN VWFORNEC ON VWFORNEC.COD_FORNEC = PEDCOMPRA.COD_FORNEC ');
       MDO.QAlx1.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = VWFORNEC.COD_CIDADE ');
		MDO.QAlx1.SQL.Add(' WHERE DOCFIS.COD_PEDIDO = :CODIGO ');
       MDO.QAlx1.ParamByName('CODIGO').AsInteger := XSetCodigoPedido;
       MDO.QAlx1.Open;

       //busca as adi��es
       MDO.QAlx2.Close;
       MDO.QAlx2.SQL.Clear;
       MDO.QAlx2.SQL.Add(' SELECT * FROM ADICAOIMPORTACAO WHERE COD_PEDIDO = :CODIGO ');
       MDO.QAlx2.ParamByName('CODIGO').AsInteger := XSetCodigoPedido;
       MDO.QAlx2.Open;       
    end;
end;

function TFMzrNfe.RejeicaoFiscal(XMsgRejeicao, XCodigoRejeicao: String): Boolean;
begin
   //Edmar - 26/11/2015 - Mostra o painel de falhas
   PFalhasFiscais.Visible := True;
   PFalhasFiscais.BringToFront;
   //repassa as mensagens e o c�digo da rejei��o
   lbDescricaoFalhas.Caption := XMsgRejeicao;
   lbCodigoRejeicao.Caption := Trim(TiraCaracter(TiraCaracter(XCodigoRejeicao, '-'), ' '));
   //atualiza o painel
   PFalhasFiscais.Repaint;
end;

procedure TFMzrNfe.btnhelpClick(Sender: TObject);
var
   XCodigoRejeicao: Integer;
begin
   try
       XCodigoRejeicao := StrToInt(lbCodigoRejeicao.Caption);
   except
       MessageDlg('Rejei��o inv�lida!', mtError, [mbOK], 0);
       Exit;
   end;
   
   case XCodigoRejeicao of
     108: AbrirHelp(erronfe108);
     110: AbrirHelp(erronfe110);
     151: AbrirHelp(erronfe151);
     204: AbrirHelp(erronfe204);
     237: AbrirHelp(erronfe237);
     246: AbrirHelp(erronfe246);
     272: AbrirHelp(erronfe272);
     327: AbrirHelp(erronfe327);
     328: AbrirHelp(erronfe328);
     518: AbrirHelp(erronfe518);
     531: AbrirHelp(erronfe531);
     539: AbrirHelp(erronfe539);
     590: AbrirHelp(erronfe590);
     591: AbrirHelp(erronfe591);
     750: AbrirHelp(erronfe750);
     778: AbrirHelp(erronfe778);
     796: AbrirHelp(erronfe796);
   else
       MessageDlg('Esta rejei��o ainda n�o foi catalogada. Por favor informe o c�digo '+lbCodigoRejeicao.Caption+' ao suporte.', mtInformation, [mbOK], 0);
   end;
   
   btnFechaFalhas.Click;   
end;

procedure TFMzrNfe.btnFechaFalhasClick(Sender: TObject);
begin
   //
   PFalhasFiscais.Visible := False;
   PFalhasFiscais.SendToBack;
end;

function TFMzrNfe.BuscaResultadoEnvioNFe: Boolean;
var
   XProtocolo: WideString;
begin
   try
       Result := True;
       //
       Util.BuscaNFe2G(XSiglaWS, XNfeTipoAmbiente, XNfeXmlAss, XNfeRecibo, XNfeNomeCertificado, XNFeVersao, XMsgDadosMsg,
           XNfeRetornoWS, I, XMsgGeral, XProtocolo, XNfeDhRecbto, XMsgcabMsg, XMsgDadosMsg, '', '', '', XNfeLicenca);
       XMsgNumRetorno := IntToStr(I);

       if (I >= 5001) and (I <= 5017) then
       begin
           Result:=False;
           XMsgNumRetorno:='100000';
       end;
       if (I >= 5101) and (I <= 5105) then
       begin
           Result:=False;
           XMsgNumRetorno:='100000';
       end;
       if (I >= 5201) and (I <= 5206) then
       begin
           Result:=False;
           XMsgNumRetorno:='100000';
       end;
       if (I >= 6101) and (I <= 6103) then
       begin
           Result:=False;
           XMsgNumRetorno:='100000';
		end;
       XDadosRetornoProtocolo := XProtocolo;
       {
       Try
           //RECEBE NUMERO DE PROTOCOLO
           XML:=TirarAcentos(false, XMsgRetWS);
           tmpXMLDoc := TXMLDocument.Create(self);
           tmpXMLDoc.XML.Text:=XML;
           tmpXMLDoc.Active:=True;
           If tmpXMLDoc.ChildNodes['retConsSitNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['nProt'] <> nil Then
               XDadosRetornoProtocolo:=tmpXMLDoc.ChildNodes['retConsSitNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['nProt'].Text;
           //RECEBE NUMERO DA NOTA
			XDadosRetornoNumero:= IntToStr(StrToInt(Trim(Copy(XNfeChave, 26, 9))));
           //RECEBE NUMERO DA CHAVE
			XDadosRetornoChave:=XNfeChave;
       Except
       End;
       }
   except
   end;
end;

end.

