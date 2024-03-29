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
// MMMMMM          MMMMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRRRRRRRRRRRRRRRRRRRR
// MMMMMMM        MMMMMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRRRRRRRRRRRRRRRRRRRR
// MMMMMMMM      MMMMMMMM                ZZZZZZZ       RRRR              RRRR
// MMMM MMMM    MMMM MMMM           ZZZZZZZZZ          RRRRRRRRRRRRRRRRRRRRRR
// MMMM  MMMM  MMMM  MMMM       ZZZZZZZZZ              RRRRRRRRRRRRRRRRRRRRRR
// MMMM   MMMMMMMM   MMMM    ZZZ                       RRRR        RRRRR
// MMMM    MMMMMMM   MMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRR         RRRRR
// MMMM    MMMMMM    MMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRR            RRRRRR
Unit UMzrNFSe;
    {***************************************************************************}
    //Unidade de Controle para Nota Fiscal de Servi�o Eletronica
    //CRIA��O      : 27/04/2012
    //CRIADOR      : Paulo HP Santos
    //DIREITOS     : Os direitos est�o reservados a Mzr Sistemas
    //LINK         : Mzr Zion
    {***************************************************************************}
    //OBSERVA��ES IMPORTANTES
    //URL: A Pasta que contem o executavel do deve conter uma pasta chamada url, e dentro conter um arquivo chamado ws.xml que tamb�m deve estar configurado para os servidores da receita
    //SCHEMAS:
    // SATUS NFE:
    // 1 = NFE Emitida e Recebida com Sucesso, 2 = Nfe Enviada mas n�o recebida com sucesso, 3 = Nfe Cancelada
    // TIPO AMBIENTE:
    // 1 = Produ��o, 2 = Homologa��o

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, FR_Shape, TDadosNFe, FR_BarC, FR_DSet, FR_DBSet, FR_Class,
    Buttons, StdCtrls, Mask, ColorMaskEdit, XMLDoc, XMLIntf, EditFloat, DrLabel, jpeg,
    Clipbrd, NFSe_Util_TLB, ShellAPI, IdMessage, IdBaseComponent, IdComponent,
    IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, FashionPanel, IdPOP3,
    xmldom, msxmldom, frxClass, frxExportPDF, frxDBSet, frxBarcode,
  IdSMTPBase, IdExplicitTLSClientServerBase, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdAttachment, IdAttachmentFile;

Type
    TFMzrNFSe = Class(TForm)
        LDescTitulo01: TDRLabel;
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
        LVersaoDll: TLabel;
        PErro: TPanel;
        MErro: TMemo;
        SpeedButton1: TSpeedButton;
        LVisualizaFalhas: TLabel;
        FSDBServicos: TfrDBDataSet;
        odAnexo: TOpenDialog;
        XMLNFSe: TXMLDocument;
    lbDadosAdc: TLabel;
    lbAmbiente: TLabel;
    PEnviaPdf: TPanel;
    fpPdf: TFashionPanel;
    Label4: TLabel;
    Label5: TLabel;
    BtnEnviarOk: TBitBtn;
    BtnCancelaEnvio: TBitBtn;
    EdEmail: TEdit;
    MMensagem: TMemo;
    frxNfse: TfrxReport;
    dataSetNfse: TfrxDBDataset;
    frxExportaNfse: TfrxPDFExport;
    dataSetEmpresa: TfrxDBDataset;
    dataSetCliente: TfrxDBDataset;
    dataSetCidade: TfrxDBDataset;
    dataSetItens: TfrxDBDataset;
    frxBarCode: TfrxBarCodeObject;
    LInformacao: TLabel;
    dataSetFatura: TfrxDBDataset;
    MessXml: TIdMessage;
    SMTPxml: TIdSMTP;
    SSLSocket: TIdSSLIOHandlerSocketOpenSSL;
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
        Procedure btnFecharClick(Sender: TObject);

        Procedure FormActivate(Sender: TObject);
        Procedure FormCreate(Sender: TObject);
        Procedure BtnFecha01Click(Sender: TObject);
        Procedure FormKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);

        Procedure SpeedButton1Click(Sender: TObject);
        Procedure LVisualizaFalhasClick(Sender: TObject);
        Procedure Button4Click(Sender: TObject);
        Procedure Button5Click(Sender: TObject);
    procedure BtnEnviarOkClick(Sender: TObject);
    procedure BtnCancelaEnvioClick(Sender: TObject);



    private
    { Private declarations }
    //*************************
    //** A U X I L I A R E S **
    //*************************
       //Procedure para alterar o estado do mouse para indicar processamento
        Procedure EstadoMouse(Const Estado: Boolean);
       // Procedure utilizada para verificar a existencia e criar o diret�rio conform configura��o
        Procedure VerificaDiretorio(Const dir: String);
       // Procedure para startar o painel de aguarde
        Procedure PainelAguarde(mostrar: Boolean);
       //procedure para controlar o texto do painel de aguarde
        Procedure StatusAguarde(str: String);
       // Procedure para processar as informacoes correntes
        Procedure Information(texto: String);
       //Procedure que invisibiliza todos os paineis
        Procedure LimpaPaineis;
       //Procedure utilizada para informar a conclus�o do processo
        Procedure ConcluiProcesso(Texto: String);
       //Edmar - 12/02/2014 - Fun��o para gravar os dados da nfse em banco de dados (procedure alterada)
        Procedure GravaInfoBanco(xNumRps, xNumDoc, xSerie, xCodOrdem, xCodAutent, xXml, xProtocolo, xStatus, xRtIss: String; xNrLote:Integer);
       //Edmar - 22/11/2013 - Procedure necess�ria para verificar o status do RPS enviado ISS
        Procedure ConsultaSituacaoRPSISS(xProtocolo, msgRps: string);
       //Edmar - 22/11/2013 - Procedure necess�ria para verificar o status do RPS enviado ISS
        Procedure ConsultaSituacaoRPSEquiplano(xProtocolo, msgRps: string);
       // Fun��o que traz a vers�o da dll flexdoc
        Function GetVersionDll: String;
       // Fun��o para verificar o numero de retorno da fun��o e retornar o texto equivalente
        Function GetTextoNumeroRetorno(XNumero: String): String;
       // Fun��o para Atualizar memo de erros
        Function NfeAddFalhas(XMsgFalhas: String): Boolean;
       // Fun��o para gravar retorno da consulta ao lote
        Function XmlConsultaGravarRetorno(Const retXML: WideString): Boolean;
       // Fun��o para ler retorno da consulta ao lote
        Function XmlConsultaLerRetorno(Const XRetornoConsultaLote: WideString): Boolean;
       //Fun��o para setar as vari�veis de controle geral
        Function SetVariaveisGerais: Boolean;
       //Fun��o utilizada para transmitir o xml da Nfe
        Function NFSeTransmiteXml: Boolean;
       //Fun��o utilizada para armazenar fisicamente a Nfe enviada e recebida com sucesso na pasta definitiva das nfe
        Function NfeGravaNfeEnviada: Boolean;
       //Edmar - 20/12/2013 - Consulta se RPS j� foi enviado
        function VerificaNfseRPS(xRps: Integer): String;
       //Edmar - 05/02/2014 - Gera nfse para impress�o
        procedure GeraNFseImpressao;
       //Edmar - 25/03/2014 - recupera dados do xml para o iss
        function RecuperaDadosISS(xXmlRetorno, xOrdem: string): Boolean;
       //Edmar - 25/03/2014 - recupera dados do xml para a equiplano
        function RecuperaDadosEquiplano(xXmlRetorno, xOrdem: string): Boolean;
       //Edmar - 24/04/2014 - Fun��o usada para gerar PDF da NFS-e
        function GeraPdfCliente: Boolean;
       //Edmar - 24/04/2014 - Prepara e envia o PDF para o cliente
        function EnviaPdfEmail: Boolean;
       //Edmar - 24/04/2014 - Prepara o envio da PDF, preenchendo os campos de envio do email
       //com as informa��es necess�rias
        function PreparaEnvioPdf: Boolean;

    //************************************************
    // VALIDA��ES - Fun��es e procedures de valida��es
    //************************************************
       // Fun��o Utilizada para Validar o arquivo xml
        Function ValidarXML(XmlTemp: WideString): Boolean;
       // Fun��o Utilizada para assinar o arquivo Xml
        Function AssinarXML(Const XML: WideString): Boolean;

    public
    { Public declarations }
           k, xNumeroRPS, xNrLote: integer;
           xVlrServico, xVlrDesconto, xVlrLiquido, xBaseCalculo: Double;
           xValorIss,xInscMun, xDadosAdicionais, xDadosAdicionaisImposto, xEmissao: string;
           MzrNfse: TFMzrNFSe;
      //***********************************************************************//
      //******* C O N S U L T A S  N F E - Fun��es externas para consul *******//
      //***********************************************************************//
       //Edmar 20/08/2013 - Fun��o para gerar txt de rps para a ISS
        Function GeraTxtRpsISS: Boolean;
       //J�natas 03/09/2013 - Fun��o para criar arquivo texto
        Function CriaArquivoTexto: Boolean;
       //Paulo 20/04/2012: Gera Xml para Nota Fiscal de Servi�os para ISS
        Function GeraXMLServicoISS: Boolean;
       //Paulo 20/04/2012: Gera Xml para Nota Fiscal de Servi�os para Equiplano
        Function GeraXMLServicoEquiplano: Boolean;
       //Alex - 26/05/2020: Gera xml para nota fiscal de servi�os da Ipm cascavel
        Function GeraXMLServicoIPM: Boolean;
       //Paulo 20/04/2012: Fun��o para desmembrar o c�digo e o sub c�digo do servi�o
        Function DesmembraCodigo(XCodigo: String; Xtipo: String): String;
       //Paulo 23/04/2012: Fun��o para buscar dados do tomador(cliente)
        Function XSetDadosTomador(XSetCodigoTomador: Integer): Boolean;
       //Paulo 23/04/2012: Fun��o para buscar dados do tomador(cliente)
        Function IniciaEnvioNFSe: Boolean;
       //Edmar - 22/11/2013 - Fun��o usada para cancelar a RPS
        function cancelarNFSe(xNumNFSe: string):boolean;
       //Edmar - 20/12/2013 - Consulta se a nfse est� ativa no servidor
        function ConsultaNfse(xNumNfse: string):boolean;
		//Edmar - 24/03/2014 - busca a nota no servidor da prefeitura e retorna as informa��es da mesma
        function RetornaDadosNfse(xCodOrdem:STRING; xNumNfse: string):boolean;
       //Edmar - 31/03/2015 - fun��o auxiliar para reenviar xml e pdf da nfse para o email do cliente
        function ReenviaPdfXml(xCod_Ordem: Integer): Boolean;
                
        Function Inicia(XNumFiscal: Integer; XSetCodigoTomador: Integer; XCodOrdem: Integer; XPeriodoFiscal: String; xVlServ, xVlLiq, xBase: Real; xDadosAdcImp, xDadosAdc, xTipo: String): Boolean;
       //Fun��o utilizada para consultar o Status da Nfe
        Function NfeConsultarNotaFiscal: Boolean;
       //Edmar - 18/12/2013 - Fun��o usada para visualizar Nfse j� impressa
        function VisualizaNfse(xOrdem: integer): boolean;

    End;

Var
    FMzrNFSe: TFMzrNFSe;

   //*********************************************************************
   //Variaveis de SetinFiscal - passagem da tela fiscal para a tela de Nfe
   //*********************************************************************
    XSetCodigoPedido: Integer;
    XSetInPeriodoFiscal: String; //String contendo o nome do periodo fiscal
    XSetInTipoPedido: String; //define o tipo do pedido PEDV, PEDC, OS
    XSetInTipoAcao: String; //Determina o Tipo de a��o ou processo de Nfe ("EMITIR", "CONSULTAR", "CANCELAR")
    XSetInTipoEmissao: Integer; //controla o tipo de emiss�o 1-normal
    XSetInCfop: String;
    XSetInNatOperacao: String;
    XSetInFormPagamento: String;
    XSetInNumFiscal: Integer;
    XSetDataEmissao: TDate;
    XSetMunicipioIbge: String;
    XSetMunicipioNome: String;
    XSetUfDestino: String;
    XSetCodigoDestinatario: Integer;
    XSetBaseIcms, XSetVlrIcms, XSetVlrIpi, XSetBaseIcmsSt, XSetVlrIcmsSt, XSetVlrProduto, XSetVlrFrete, XSetVlrSeguro, XSetDesconto: Real;
    XSetVlrOutros, XSetVlrNotaFiscal: Real;
   //Variaveis para controle da fun��o que retorna lista de Nfe do Sefaz
    XSetLstMes, XSetLstFim, XSetLstAno: WideString;
    XSetRefUri: WideString;
    XSetLstNumInicial, XSetLstNumFinal: Integer;
    xData:TDateTime;
    xUtil: OleVariant;
   //*********************************************
   //Varaiveis genericas para controle de retornos
   //*********************************************
    XMsgRetWS: WideString; //Retorno do servidor
    XMsgGeral: WideString; //Armazena mensagens gerais de retorno
    XMsgcabMsg: WideString; //Mensagem de uso geral na passagem de parametros das fun��es
    XMsgDadosMsg: WideString; //Mensagem de uso geral na passagem de parametros das fun��es
    XMsgNumRetorno: String; //Variavel para armazenar o numero do retorno
    XDadosRetornoProtocolo, XDadosRetornoChave, XDadosRetornoNumero: String; //Paulo 03/11/2010 - 163:Para armazenar os dados de retorno

   //*********************
   //Variaveis de controle
   //*********************
    XIndicaProcessoConcluido: Boolean; //True=Tela pode ser fechada com um esc
    //Edmar - 14/04/2014 - Trecho comentado por estar dando confus�o das
    //variaveis de nomes iguais em UMzrNFe
    {XNfeModelo, XMsgGeralString: String;
    XNfeSerie: WideString;
    XNfeTipoAmbiente: Integer;
    XNFeVersao: WideString;
    XNfeNomeCertificado: String;
    XNfeLicenca: String;
    XNfeCodigoSeguranca: String;
    XNfeChave: WideString;
    XNfechaveArray: Array Of String; // array com as chaves das nfe
    XTotalProdLista: Integer;
    XNfeRecibo, XNfeDhRecbto, XNfetMed: WideString;
    XNfeXmlAss: WideString;
    XNfeRetornoWS: WideString;
    XNfeResultado: Integer; //Armazena resultado numeros de algumas fun��es da util.dll
    XNfeCodLote: String; //Codigo do lote de arquivos
    XNfeProtocolo: String; //Numero Protocolo
    XNfeStatusServer: String; //atatus de opera��o do servidor SCAN/SEFAZ
    XNfeDir: String; //Diret�rio para armazenar os Xml finais

    XUfLocal: String;
    XUfCodigo: String;}

   //*********************
   //DADOS NFE
   //*********************
    Util: NFSe_Util_Interface; //Classe geral da dll flexdoc
    XDadosNfe: TNFe; //classe com dados da nfe
    XProcNfe, XNfeDistrib, XXmlNfeCancel: WideString; //xml gerada para a Nfe
    XXmlfinal: WideString; //variavel para controle do xml durante o processo de assinatura valida��o e demais
    XTmpXmlDoc: TXMLDocument; //componente TXMLDocument de uso geral e temporario
   //XSafeXmlDist:Boolean;
    XrefNfe, XNumNFeComp, XChaveComp, xNumeroDocumento: String; //Paulo 01/12/2010: Para armazenar a chave da nfe que ser� feito o complemento
    XTipoProd: Boolean; //Se tru produto � realmente produto e n�o servi�o
    XTexto: TextFile; //J�natas 03/09/2013 - Arquivo texto para LoteRPS


    XTipoDocumento: Integer;
    XIdEntidade, XCNPJPrest, XCodigoIBGE: WideString;
    XMsgAlerta, XlistaNFSe, XMLAssinado, XSoapTrans, XSoalRec, XProtocolo: WideString;
    xControleFluxo: Smallint;

Implementation

Uses UMenu, UDMMacs, UPadrao, Alxor32, UDMSaida, UDMEntrada,
    UPadraoFiscal, AlxMessage, UValidacaoNFe, UDMEstoque, UDMGEOGRAFIA,
    UDMPessoa, UDMFinanc, UDmServ, DB, Math, UDMConta, UDMCaixa, UPedVenda,
    UMzrNfe, ComObj, UFServico, UServico, DateUtils;

{$R *.dfm}


// Fun��o para Atualizar memo de erros

Function TFMzrNFSe.NfeAddFalhas(XMsgFalhas: String): Boolean;
Begin
	Try
       Result:=True;
    	LVisualizaFalhas.Visible := True;
    	LVisualizaFalhas.BringToFront;
    	MErro.Lines.Add(XMsgFalhas);
   Except
       Result:=False;
   End;
End;

// Fun��o para verificar o numero de retorno da fun��o e retornar o texto equivalente

Function TFMzrNFSe.GetTextoNumeroRetorno(XNumero: String): String;
Var
    Xcodigo: Integer;
Begin
    Try
        Xcodigo := StrToInt(XNumero);
    Except
        Result := '';
        Exit;
    End;

    If (Xcodigo >= 5001) Or (Xcodigo <= 5020) Then
        Result := 'falha na tentativa de consumir o WS (problema de conex�o/rede)';

    If (Xcodigo >= 5101) Or (Xcodigo <= 5105) Then
        Result := 'falha no tratamento do XML de resposta do WS (problema na resposta do WS)';

    If (Xcodigo >= 5201) Or (Xcodigo <= 5205) Then
        Result := 'falha na recupera��o da URL do WS desejado (problema no arquivo de configura��o da URL)';

    If (Xcodigo >= 5601) Or (Xcodigo <= 5614) Then
        Result := 'falha no tratamento de par�metro da chamada do WS';

    If (Xcodigo >= 5701) Or (Xcodigo <= 5703) Then
        Result := 'falha no tratamento do lote de RPS recebido para envio';

    If (Xcodigo >= 7001) Or (Xcodigo <= 7003) Then
        Result := 'falha na valida��o da licen�a';

End;


// Fun��o que traz a vers�o da dll flexdoc

Function TFMzrNFSe.GetVersionDll: String;
Var
    Util: NFSe_Util_Interface;
Begin
    Result := '';
    Util := CoUtil.Create;
    Result := Util.versao;
    If XNFeVersao = '2.00' Then
        Result := copy(Util.versao, 10, 8)
    Else
        Result := copy(Util.versao, 17, 16);
    Result := Result + ' MZR Sistema homologado para emiss�o de Nota Fiscal Eletr�nica';
End;




//Procedure para setar as vari�veis de controle geral
Function TFMzrNFSe.SetVariaveisGerais: Boolean;
Begin
    Result := True;
    Try
        XSetInPeriodoFiscal := TiraCaracter(XSetInPeriodoFiscal, '/');
        XSetInPeriodoFiscal := TiraCaracter(XSetInPeriodoFiscal, '(');
        XSetInPeriodoFiscal := TiraCaracter(XSetInPeriodoFiscal, ')');
        verificaDiretorio('C:\Mzr\Arquivos\NFe\NfeEnviada\' + XSetInPeriodoFiscal);


       //If XSetInTipoAcao='EMITIR' Then
        XSetRefUri := 'LoteRps';


       //Define a vers�o da NFe em trabalho
        XNFeVersao := '2.00';

       //Le a vers�o da dll
        //LVersaoDll.Caption := GetVersionDll;
        //LVersaoDll.BringToFront;

       //Define o ambiente em que eh emitido a Nfe : 1 - homologa��o 2 - produ��o
        If DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger In [1..2] Then
            XNfeTipoAmbiente := DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger
        Else
            XNfeTipoAmbiente := 2;



        XNfeNomeCertificado := DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString; //Define nome certificado
       //XNfeLicenca := DMMACS.TLoja.FieldByName('NFELICENSA').AsString;// Define a chave de licen�a da dll flexdoc


       //Paulo 27/04/2012: Busca o c�digo do ibge do emissor
        FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('cod_cidade').AsString, '');
        XCodigoIBGE := DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString;

        {If XCodigoIBGE = '4127700' Then
            XCodigoIBGE := '136';}

        XCNPJPrest := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
     	 xInscMun := DMMacs.TEmpresa.fieldbyname('insc_mun').AsString;
    Except
        Result := False
    End;
End;


// Fun��o Utilizada para Validar o arquivo xml

Function TFMzrNFSe.ValidarXML(XmlTemp: WideString): Boolean;
Var
    qtdeErros, i: integer;
    Fentrada: File;
    NumRead: integer;
    S: String;
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
Begin
    Result := True;
    Try
        Information('Validando arquivo xml...');
       //Iniciar processo de valida��o de xml
       //Abrir Arquivo xml para valida��o
       // verifica se a resposta do lote existe   41100611019145000150550010000000042577014524-enviaNFe
        If FileExists('C:\Mzr\Arquivos\NFSe\TMP\' + IntToStr(XSetInNumFiscal) + '-enviaNFSe.xml')
            Then Begin
            AssignFile(Fentrada, 'C:\Mzr\Arquivos\NFSe\TMP\' + IntToStr(XSetInNumFiscal) + '-enviaNFSe.xml');
            Reset(Fentrada, 1);
            S := '';
            For i := 1 To FileSize(Fentrada) Do
            Begin
                Blockread(Fentrada, buf, 1, NumRead);
                S := S + buf;
            End;
            CloseFile(Fentrada);
            XmlTemp := S;
            If XmlTemp <> ''
                Then Begin
                Util := CoUtil.Create;
                i := Util.ValidaXML(XmlTemp, XCodigoIBGE, XMsgGeral, qtdeErros, XMsgRetWS);
                If i <> 0
                    Then Begin
                    If (Pos('Signature', XMsgRetWS) <= 0)
                        Then Begin
                     //Caso n�o tenha encontrado o erro por falta de assinatura
                        Result := False;
                        NfeAddFalhas('- Falha ao Validar XML: ' + XMsgGeral);
                        If qtdeErros > 1
                            Then Begin
                            MessageDlg('Falha na valida��o XML...' + #13 + XMsgGeral + #13 + XMsgRetWS, mtError, [mbOk], 0);
                            Result := False;
                        End;
                    End
                    Else Begin
                    //Caso tenha encontrado o erro por falta de assinatura, mas tenha encontrado outro erro junto a falta de assinatura
                        If qtdeErros > 1
                            Then Begin
                            MessageDlg('Falha na valida��o XML...' + #13 + XMsgGeral + #13 + XMsgRetWS, mtError, [mbOk], 0);
                            Result := False;
                        End;
                    End
                End;
                Util := Nil;
            End;
        End;


    Except
        Result := False;
    End;
End;

//Procedure utilizada para informar a conclus�o do processo

Procedure TFMzrNFSe.ConcluiProcesso(Texto: String);
Begin
    EstadoMouse(False);
    XIndicaProcessoConcluido := True;
    PAguarde.Visible := False;
    FMzrNFSe.Information(Texto);
End;



//Procedure que invisibiliza todos os paineis

Procedure TFMzrNFSe.LimpaPaineis;
Begin
    PBotoes01.Visible := False;

    BitBtn8.Visible := False;
    PAguarde.BringToFront;
    Information('');
End; 

// Fun��o Utilizada para assinar o arquivo Xml

Function TFMzrNFSe.AssinarXML(Const XML: WideString): Boolean;
Var
    Util: NFSe_Util_Interface;
    xArqSaida: TextFile;
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
Begin
    Result := True;
    xUtil := CreateOleObject('NFSe_Util.util');
    If XML <> '' Then
    Begin
        XMLAssinado := xUtil.Assinar(XML, '', '', XNfeNomeCertificado, I, XMsgGeral);
        If i <> 5300
            Then Begin
            MessageDlg('Processo de assinatura falhou...' + XMsgGeral, mtInformation, [mbOk], 0);
            Util := Nil;
            Result := False;
        End
        Else Begin
            XXmlfinal := XMLAssinado; //passa o xml assinado para a variavel
//          xUtil := Nil;
            Result := True;

            AssignFile(xArqSaida, 'C:\MZR\Arquivos\NFSe\TMP\XmlTMP.xml');
       	 Rewrite(xArqSaida);
       	 Write(xArqSaida, XXmlfinal);
		     CloseFile(xArqSaida);

            Exit;
        End;
    End
    Else Begin
        MessageDlg('Documento XML para assinatura n�o informado...', mtInformation, [mbOk], 0);
        Result := False;
        Exit;
    End;
End;

//Fun��o utilizada para armazenar fisicamente a Nfe enviada e recebida com sucesso na pasta definitiva das nfe

Function TFMzrNFSe.NfeGravaNfeEnviada: Boolean;
Var
    Fsaida: TextFile;
    XML: WideString;
Begin
    Result := True;
    Try
        Information('Gravando Nfe recebida com sucesso no ws');

        XML := XXmlfinal;
        XML := TirarAcentos(False, XML);
        verificaDiretorio('C:\Mzr\Arquivos\NFe\NfeEnviada\' + XSetInPeriodoFiscal);
        AssignFile(Fsaida, 'C:\Mzr\Arquivos\NFe\NfeEnviada\' + XSetInPeriodoFiscal + '\' + IntToStr(XSetInNumFiscal) + '-' + XNfeChave + '-NfeEnviada.xml');
        Rewrite(Fsaida);
        Write(Fsaida, XML);
        CloseFile(Fsaida);


    Except
        Result := False;
    End;
End;






//Fun��o utilizada para consultar o Status da Nfe

Function TFMzrNFSe.NfeConsultarNotaFiscal(): Boolean;
Var
    Fsaida: TextFile;
    XML: WideString;
    tmpXMLDoc: TXMLDocument;
Begin
    Information('Consultando Nfe enviada para WebService');
    Result := True;
    Try
        Util := CoUtil.Create;
 //		I:= Util.ConsultaLoteRPS_v2(XCodigoIBGE,XNfeNomeCertificado, XNfeTipoAmbiente,XNFeVersao, XMsgDadosMsg, XNfeResultado, XMsgGeral, XCNPJPrest,XIdEntidade,XProtocolo, XlistaNFSe, XMsgRetWS, XMsgAlerta, XNfeRecibo, XSoapTrans, XSoalRec, '', '', '', '');
        If (I >= 5001) And (I <= 5020)
            Then Begin
            Result := False;

        End;
        If (I >= 5101) And (I <= 5105)
            Then Begin
            Result := False;

        End;
        If (I >= 5201) And (I <= 5205)
            Then Begin
            Result := False;

        End;
        If (I >= 5601) And (I <= 5606)
            Then Begin
            Result := False;

        End;
        If (I >= 5701) And (I <= 5703)
            Then Begin
            Result := False;

        End;
        If (I >= 7101) And (I <= 7103)
            Then Begin
            Result := False;
        End;

    Except
        Result := False;
    End;
End;



// Fun��o para ler retorno da consulta ao lote

Function TFMzrNFSe.XmlConsultaLerRetorno(Const XRetornoConsultaLote: WideString): Boolean;
Var
    tmpXMLDoc: TXMLDocument;
    status: String;
Begin
    Result := True;
    Try
       // Cria a vari�vel baseada no TXMLDocument
        tmpXMLDoc := TXMLDocument.Create(self);

       // abre o arquivo na variavel
        tmpXMLDoc.XML.Text := XRetornoConsultaLote;
        tmpXMLDoc.Active := True;
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
        If status <> '104' Then
        Begin
            Result := False;
            MessageDlg(XMsgGeral, mtWarning, [mbOK], 0);
        End;
       //pega o numero do protocolo
        If Not (tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['nProt'].Text = '')
            Then Begin
            XNfeProtocolo := tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['nProt'].Text;
        End
        Else Begin
            XNfeProtocolo := '';
            Result := False;
            Information('NFe Processada com sucesso. Nr Protocolo n�o foi fornecido');
        End;

        tmpXMLDoc.Free;
    Except
        Result := False;
    End;
End;



// Fun��o para gravar retorno da consulta ao lote

Function TFMzrNFSe.XmlConsultaGravarRetorno(Const retXML: WideString): Boolean;
Var
    Fsaida: TextFile;
    XML: WideString;
Begin
    Result := True;
    Try
        XML := retXML;
        XML := TirarAcentos(False, XML);
        verificaDiretorio('C:\Mzr\Arquivos\NFe\ConsultaLote');
        AssignFile(Fsaida, 'C:\Mzr\Arquivos\NFe\ConsultaLote\' + XNfeRecibo + '-consulta-lote.xml');
        Rewrite(Fsaida);
        Write(Fsaida, XML);
        CloseFile(Fsaida);
    Except
        Result := False;
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

Function TFMzrNFSe.NFSeTransmiteXml: Boolean;
Var
    i, xResultado, ContConsultaNfe, xHomo: integer;
    XMsgcabMsg, xRetornoWS: WideString;
    xProxy, xUsuario, xSenha, xMsgRps, xAux, xSituacao, XSetInPeriodoFiscal, xCodigoResposta: string;
    xArquivoE: file;
    arqtxt: TextFile;
    xArquivo: TSHFileOpStruct;
    xC: char;
    msgResultado, xNrLt, xDataRecebimento, xProtocolo, xlstMensagemRetorno, xLicensa: string;
Begin
    Result := True;
    Try
        Information('Transmitindo arquivo XML...');
        //Edmar - 11/12/2013 - Se estiver em modo de produ��o, recebe a licen�a.
        //Sen�o, recebe vazio porque � o exigido para homologa��o
        if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1 then
        begin
	     	xLicensa := DMMACS.TLoja.fieldbyname('nfse_licensa').AsString;
           xHomo := 1;
        end
        else begin
           xHomo := 2;
			xLicensa := '';
        end;

        AssignFile(xArquivoE, 'C:\MZR\Arquivos\NFSe\TMP\XmlTMP.xml');
   	 Reset(xArquivoE, 1);
        xMsgRps := '';

   	 //Edmar - 19/12/2013 - La�o utilizado para percorrer o arquivo XML gerado anteriormente
        //e jogar numa string para transmitir o mesmo
        for i := 1 to FileSize(xArquivoE) do
        begin
        	BlockRead(xArquivoE, xC, 1);
           xAux := xAux + xC;
        end;
        CloseFile(xArquivoE);

        xMsgRps := xAux;

        //Edmar - transmite a nota de servi�o para o servidor da prefeitura
        xRetornoWS := xUtil.EnviaLoteRPS(XCodigoIBGE, XNfeNomeCertificado, xHomo, '1.0', xMsgRps, xResultado, msgResultado,
        	XCNPJPrest, IntToStr(xNrLote), xDataRecebimento, xProtocolo, xlstMensagemRetorno, xProxy, xUsuario, xSenha, xLicensa);
        
        if (xResultado = 5000) and (xlstMensagemRetorno = '') then
        begin
			if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'ISS' then
        		ConsultaSituacaoRPSISS(xProtocolo, xAux)
           else
           	ConsultaSituacaoRPSEquiplano(xProtocolo, xAux);
        end
        else begin
           if (xResultado = 5014) then
           begin
				ConcluiProcesso('Erro ao transmitir Nfse. Servidores fora de conex�o <esc p/ sair>');
               
               Result := false;
           end
           else begin
               // extrai o c�digo do erro pra ver se � RPS j� utilizado
               if (DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'EQUIPLANO') then
               begin
                   xCodigoResposta := Copy(xlstMensagemRetorno, 0, 4);

                   if xCodigoResposta = '8011' then
                   begin
                       // Edmar - 19/09/2017 - Salva o n�mero do RPS e inicia o processo novamente
                       Information('Avan�ando n�mero do RPS...');

                       DMESTOQUE.Alx5.Close;
                       DMESTOQUE.Alx5.SQL.Clear;
                       DMESTOQUE.Alx5.SQL.Add(' UPDATE DOCFISORD SET DOCFISORD.NFSE_NUMERORPS = :RPS WHERE DOCFISORD.COD_ORDEM = :COD_ORDEM ');
                       DMESTOQUE.Alx5.ParamByName('RPS').AsInteger := xNumeroRPS;
                       DMESTOQUE.Alx5.ParamByName('COD_ORDEM').AsInteger := XSetCodigoPedido;
                       DMESTOQUE.Alx5.ExecSQL;
                       DMESTOQUE.TransacEstoque.CommitRetaining;
                   end;

                   if xCodigoResposta = '8003' then
                   begin
                       // Edmar - 19/09/2017 - Salva o n�mero do RPS e inicia o processo novamente
                       Information('Avan�ando n�mero do Lote...');

                       DMESTOQUE.Alx5.Close;
                       DMESTOQUE.Alx5.SQL.Clear;
                       DMESTOQUE.Alx5.SQL.Add(' UPDATE DOCFISORD SET DOCFISORD.NFSE_NUMEROLOTE = :LOTE WHERE DOCFISORD.COD_ORDEM = :COD_ORDEM ');
                       DMESTOQUE.Alx5.ParamByName('LOTE').AsInteger := xNrLote;
                       DMESTOQUE.Alx5.ParamByName('COD_ORDEM').AsInteger := XSetCodigoPedido;
                       DMESTOQUE.Alx5.ExecSQL;
                       DMESTOQUE.TransacEstoque.CommitRetaining;                       
                   end;

                   if (xCodigoResposta = '8003') OR (xCodigoResposta = '8011') then
                   begin
                       IniciaEnvioNFSe;

                       Exit;
                   end;
               end;
               
               ConcluiProcesso('Erro ao transmitir Nfse. Verifique a lista de erros. <esc p/ sair>');
               if xlstMensagemRetorno = '' then
                   NfeAddFalhas(msgResultado)
               else
                   NfeAddFalhas(xlstMensagemRetorno);

               Result := false;
           end;
           
           //Edmar - 13/08/2014 - Grava em banco o ultimo lote enviado e seta como erro
			GravaInfoBanco('', '', '', IntToStr(XSetCodigoPedido), '', '', '', '3', '', xNrLote);

           Exit;
        end;
    Except
        Result := False;
    End;
End;


//procedure para controlar o texto do painel de aguarde
Procedure TFMzrNFSe.StatusAguarde(str: String);
Begin
    LBStatusAguarde.Caption := str;
    PAguarde.Refresh;
    FMzrNfe.refresh;
End;

// Procedure para processar as informacoes correntes
Procedure TFMzrNFSe.Information(texto: String);
Begin
    LInformacao.Caption := texto;   
    LInformacao.Refresh;
End;


// Procedure para startar o painel de aguarde
Procedure TFMzrNFSe.PainelAguarde(mostrar: Boolean);
Begin
    If mostrar Then Begin
        PAguarde.BringToFront;
        PAguarde.Visible := true;
        PAguarde.Refresh;
        bitbtn8.SendToBack;
    End
    Else Begin
        PAguarde.SendToBack;
        PAguarde.Visible := false;
        StatusAguarde('');
        bitbtn8.BringToFront;
    End;
End;

// Procedure utilizada para verificar a existencia e criar o diret�rio conform configura��o

Procedure TFMzrNFSe.verificaDiretorio(Const dir: String);
Var
    Diretorio: String;
Begin
    If Not DirectoryExists(dir)
        Then Begin
        ForceDirectories(dir);
    End;
End;

//Procedure para alterar o estado do mouse para indicar processamento 
Procedure TFMzrNFSe.EstadoMouse(Const Estado: Boolean);
Begin
    If Estado = True Then
        Screen.Cursor := CrHourGlass
    Else
        Screen.Cursor := CrDefault;
End;

Procedure TFMzrNFSe.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
	DecimalSeparator := ',';//Edmar - 16/01/2014 - Deixa padr�o o , como separador decimal
   xEmissao := '';
{    Try
        Action := caFree;
        FMzrNFSe := Nil;
    Except
    End;}
End;

Procedure TFMzrNFSe.btnFecharClick(Sender: TObject);
Begin
    Close;
End;

Procedure TFMzrNFSe.FormActivate(Sender: TObject);
Begin
   //inicializa paineis
   LimpaPaineis;

   if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsString = '1' then
   	lbAmbiente.Caption := 'Operando em modo de produ��o'
   else
   	lbAmbiente.Caption := 'Operando em modo de homologa��o';

   lbAmbiente.Refresh;
   Refresh;
   
	xNrLote := 0;
   //Inicializa processo
   Try
   	xUtil := CreateOleObject('NFSe_Util.util');
   Except
   	MessageDlg('Erro ao inicializar bibliotecas de NFSe.'+#13+#10+'Verifique a intala��o de NFSe_Util.dll', mtWarning, [mbOK], 0);
   End;

   //Edmar - 11/06/2014 - S� inicia o processo de emiss�o de nfse caso xEmissao seja IMP
   //anteriormente todo vez que MZRNFSE era mostrado esse processo era iniciado
   if xEmissao = 'IMP' then
	   IniciaEnvioNFSe;

   if xEmissao = 'ENVPDF' then
   begin
   	LInformacao.Caption := 'Preparando a exporta��o do PDF...';
       LInformacao.Refresh;
		PreparaEnvioPdf;
   end;
End;

Procedure TFMzrNFSe.FormCreate(Sender: TObject);
Begin
    {Try
        Brush.Style := bsClear;
        Repaint;
    Except
    End;}
End;

Procedure TFMzrNFSe.BtnFecha01Click(Sender: TObject);
Begin
    Close;
End;

Procedure TFMzrNFSe.FormKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    If Key = Vk_escape then
    	Close;
End;




Procedure TFMzrNFSe.SpeedButton1Click(Sender: TObject);
Begin
    PErro.Visible := False;
End;

Procedure TFMzrNFSe.LVisualizaFalhasClick(Sender: TObject);
Begin
    PErro.Visible := True;
    PErro.BringToFront;
End;

Procedure TFMzrNFSe.Button4Click(Sender: TObject);
Var

//ALEXNFEUtil:NFe_Util_Interface;
    i: integer;
    cUF: widestring;

Begin

    Util := CoUtil.Create;
    cUF := '41';
    Screen.Cursor := CrHourGlass;
  //ALEXNFEi:= Util.InutilizaNroNFSCAN('PR', XNfeTipoAmbiente, XNfeNomeCertificado, XMsgcabMsg, XMsgDadosMsg, XMsgRetWS, XMsgGeral, '41', '10', DMMACS.TEmpresa.FieldByName('CNPJ').AsString, '55', '1', '16', '17', 'TESTE DE INUTILIZACAO PARA HOMOLOGACAO', '', '', '', XNfeLicenca);
    Screen.Cursor := CrDefault;
    If i > 1 Then
        MessageDlg('Erro na chamada do WS...' + #13 + #13 + XMsgcabMsg, mtError, [mbOk], 0);
    Util := Nil;

End;

Procedure TFMzrNFSe.Button5Click(Sender: TObject);
Var            
//ALEXNFEUtil:NFe_Util_Interface;
    i: integer;
Begin

    Util := CoUtil.Create;
    Screen.Cursor := CrHourGlass;
  //alexnfei:= Util.ConsultaStatusSCAN('PR', 'PR', XNfeTipoAmbiente, XNfeNomeCertificado, XMsgcabMsg, XMsgDadosMsg, XMsgRetWS, XMsgGeral, '', '', '');
    Screen.Cursor := CrDefault;
    If i > 1 Then
        MessageDlg('Erro na chamada do WS...' + #13 + #13 + XMsgGeral, mtError, [mbOk], 0);
    Util := Nil;

End;

//Paulo 20/04/2012: Fun��o para desmembrar o c�digo e o sub c�digo do servi�o

Function TFMzrNFSe.DesmembraCodigo(XCodigo: String; Xtipo: String): String;
Var I: byte;
    Xcod: String;
    xPosicao: integer;
Begin
//Edmar - 29/01/2014 - Trecho comentado por n�o retornar a informa��o correta
    {For I := 1 To Length(XCodigo) Do
    Begin
        If (XCodigo[I] <> '.') Then
        Begin
            Xcod := Xcod + XCodigo[I];
            delete(XCodigo, I, 1);
        End
        Else Begin
            delete(XCodigo, I, 1);
            If Xtipo = 'COD' Then
                Result := Xcod
            Else
                Result := XCodigo;
        End;
    End;}
    //Caracter que quer encontrar a posi��o/string/ocorrencia
    xPosicao := StrPosicao('.', DMESTOQUE.TSlaveServ.fieldByName('CodigoServicoNfse').AsString, 1);
    
    if(Xtipo = 'COD') then
    	Result := Copy(XCodigo, 0, xPosicao-1)
    else
    	Result := Copy(XCodigo, xPosicao+1, Length(xCodigo));
End;

//Paulo 23/04/2012: Inicia o envio da nota de servi�os

Function TFMzrNFSe.Inicia(XNumFiscal: Integer; XSetCodigoTomador: Integer; XCodOrdem: Integer; XPeriodoFiscal: String; xVlServ, xVlLiq, xBase: Real; xDadosAdcImp, xDadosAdc, xTipo: String): Boolean;
Begin
    XSetInNumFiscal := XNumFiscal;
    XSetCodigoPedido := XCodOrdem;
    XSetCodigoDestinatario := XSetCodigoTomador;
    xVlrServico := xVlServ;
    xVlrLiquido := xVlLiq;
    xBaseCalculo := xBase;
    xDadosAdicionaisImposto := xDadosAdcImp;
    xDadosAdicionais := xDadosAdc;
    xEmissao := xTipo;
End;

//Paulo 23/04/2012: Inicia o envio da nota de servi�os

Function TFMzrNFSe.IniciaEnvioNFSe: Boolean;
var
xB:char;
xAux: widestring;
xXml: file;
xI: integer;
Begin
	 //FMzrNFSe.ShowModal;
    Information('Preparando a emiss�o da Nfse...');
    Result := True;
	 DecimalSeparator := '.';//Edmar - 16/01/2014 - Deixa padr�o o . como separador decimal

    //Edmar - 15/01/2014 - Seta vari�veis gerais
    if not SetVariaveisGerais then
    begin
		ConcluiProcesso('Erro ao setar vari�veis gerais <esc p/ sair>');
  		exit;
    end;

    //Edmar - 15/01/2014 - Seta dados do tomador
    if not XSetDadosTomador(XSetCodigoDestinatario) then
    begin
    	ConcluiProcesso('Erro ao setar dados do tomador <esc p/ sair>');
    	Exit;
    end;

    if VerificaNet <> 0 then
    begin
        //Edmar - 15/01/2014 - Filtra a administradora da Nfse
        if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'ISS' then
        begin
           //Edmar - 15/01/2014 - Gera RPS para ISS
           if not GeraTxtRpsISS then
               Exit;

           //Edmar - 15/01/2014 - Gera XML para ISS
           if not GeraXMLServicoISS then
           begin
               ConcluiProcesso('Erro ao gerar o XML de envio <esc p/ sair>');
               Exit;
           end;
        end;

        if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'EQUIPLANO' then
        begin
           //Edmar - 15/01/2014 - Gera XML para Equiplano
           if not GeraXMLServicoEquiplano then
               Exit;

           AssinarXML(XXmlfinal);
        end;
        if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'IPM' then
        begin
           //Metodo para gerar xml para IPM de acordo com especifica��es
           GeraXMLServicoIPM;
        end;

        If DMMACS.TLoja.FieldByName('nfseadministradora').AsString <> 'IPM' then
           NFSeTransmiteXml;//Processo de transmiss�o pela flexdocs, pela IPM usamos o unidanfe
    end
    else
       ConcluiProcesso('No momento voc� n�o possui conex�o com a internet. <esc p/ sair>');
    DecimalSeparator := ',';//Edmar - 16/01/2014 - Deixa padr�o o , como separador decimal
End;

//Paulo 23/04/2012: Fun��o para buscar dados do tomador(cliente)

Function TFMzrNFSe.XSetDadosTomador(XSetCodigoTomador: Integer): Boolean;
Begin
    //Seta dados do Destinatario (cliente do cliente)
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' SELECT VWCLIENTE.NOME, PESSOAJ.COD_PESSOAJ, PESSOAJ.INSC_MUN, PESSOAJ.RAZAO_SOCIAL, VWCLIENTE.CPFCNPJ, CLIENTE.CONTRIBICMS, CLIENTE.SUFRAMA, ');
    DMMACS.TALX.SQL.Add(' PESSOAJ.INDUSTRIA, VWCLIENTE.CIDADE, VWCIDADE.UF, CIDADE.COD_FEDERAL, CIDADE.COD_IBGE,PESSOAJ.INSC_EST, PESSOA.ENDERECO, PESSOA.PROXIMIDADE, PESSOA.BAIRRO, ');
    DMMACS.TALX.SQL.Add(' PESSOA.ENDNUMERO, CLIENTE.SUFRAMA,PESSOA.CEP, PESSOA.TELREL, PESSOA.EMAILPADRAO EMAIL FROM VWCLIENTE ');
    DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOA ON VWCLIENTE.COD_PESSOA = PESSOA.COD_PESSOA ');
    DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOA.COD_PESSOA=PESSOAJ.COD_PESSOA ');
    DMMACS.TALX.SQL.Add(' LEFT JOIN CLIENTE ON VWCLIENTE.COD_CLIENTE=CLIENTE.COD_CLIENTE ');
    DMMACS.TALX.SQL.Add(' LEFT JOIN VWCIDADE ON VWCLIENTE.COD_CIDADE = VWCIDADE.COD_CIDADE ');
    DMMACS.TALX.SQL.Add(' LEFT JOIN CIDADE ON VWCLIENTE.COD_CIDADE = CIDADE.COD_CIDADE ');
    DMMACS.TALX.SQL.Add(' WHERE VWCLIENTE.COD_CLIENTE = :CODIGO ');
    DMMACS.TALX.ParamByName('CODIGO').AsInteger := XSetCodigoTomador;
    DMMACS.TALX.Open;

    If DMMACS.TALX.IsEmpty Then
        Result := False
    Else
        Result := True;
End;

//Paulo 20/04/2012: Gera Xml para Nota Fiscal de Servi�os

Function TFMzrNFSe.GeraXMLServicoISS: Boolean;
Var
    XXml: WideString;
    xRps: file;
    xArqSaida: TextFile;
    xI, xNum: Integer;
    xB: char;//Edmar - 20/11/2013 - v�riavel que vai armazenar o caracter do RPS
    xLicensa, xNrLote, xLoteRps, xAux, xResultado, xMsgResultado, xErro: string;
Begin
try
   Information('Gerando XML de servi�o...');
   xNrLote := '1';

   Result := True;
   //Edmar - 11/12/2013 - Se estiver em modo de produ��o, recebe a licen�a.
   //Sen�o, recebe vazio porque � o exigido para homologa��o
   if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1 then
   	xLicensa := DMMACS.TLoja.fieldbyname('nfse_licensa').AsString
   else
   	xLicensa := '';

   //Edmar - 26/12/2013 - Pega o arquivo RPS
	AssignFile(xRps, 'C:\MZR\Arquivos\NFSe\TMP\RPS.txt');
   Reset(xRps, 1);
   xAux := '';

   //Edmar - 19/12/2013 - la�o utilizado para percorrer o arquivo de RPS ainda em TXT
   //para gerar o xml 
   for xI := 1 to FileSize(xRps) do
   begin
		BlockRead(xRps, xB, 1);
       xAux := xAux + xB;
   end;
   CloseFile(xRps);
   xLoteRps := xAux;

   xUtil := CreateOleObject('NFSe_Util.util');

   //Edmar - 26/12/2013 - Gera o arquivo XML da Nfse
   XXml := xUtil.geraLoteRps(xLoteRps, xNrLote, XNfeNomeCertificado, XCodigoIBGE, xResultado, xMsgResultado, xErro, xLicensa);

   if (xResultado = '5800') then//Edmar - 20/12/2013 - Se foir gerado o XML de servi�o
   begin
       AssignFile(xArqSaida, 'C:\MZR\Arquivos\NFSe\TMP\XmlTMP.xml');
       Rewrite(xArqSaida);
       Write(xArqSaida, xXml);
       CloseFile(xArqSaida);
       Result := true;
	end
   else
   begin

   {Edmar - 26/12/2013 - Testa o erro retornado e mostra a mensagem correspondente}
   	if xResultado = '5801' then
			Information('Lote RPS sem conte�do. Provavelmente essa nfse j� foi enviada. Comunique o suporte <esc p/ sair>');

      	if xResultado = '5802' then
           Information('N�mero do lote n�o possui um valor num�rico <esc p/ sair>');

       if xResultado = '5803' then
       	Information('N�mero do lote possui um valor fora do intervalo v�lido (1 - 999999999999999) <esc p/ sair>');

       if xResultado = '5804' then
			Information('Certificado digital � inv�lido <esc p/ sair>');

       if (xResultado = '5805') or (xResultado = '5806') then
       begin
			Information('Erro na gera��o do XML <esc p/ sair>');
           NfeAddFalhas(xErro);
       end;

       if xResultado = '5807' then
       begin
			Information('Erro na gera��o do XML <esc p/ sair>');
           NfeAddFalhas(xErro);
       end;

       if xResultado = '5808' then
			Information('Quantidade de RPS no lote fora do intervalo v�lido <esc p/ sair>');

       if xResultado = '5809' then
           Information('Par�metro informado incorretamente <esc p/ sair>');

       if xResultado = '5811' then
			Information('Falha na assinatura do lote <esc p/ sair>');

	    Result := False;
       Exit;
   end;

   Except
   	Result := False;
   End;
End;

//J�natas 03/09/2013 - Fun��o para criar arquivo texto

Function TFMzrNFSe.CriaArquivoTexto: Boolean;
Begin
    Try
        Result := True;
        verificaDiretorio('C:\Mzr\Arquivos\NFSe\');
        //Verifica se existe a pasta de NFSe na pasta Arquivos
        If Not directoryExists('C:\Mzr\Arquivos\NFSe\') Then
            CreateDir('C:\Mzr\Arquivos\NFSe\');

        If FileExists('C:\Mzr\Arquivos\NFSe\LoteRPS.txt') Then
            DeleteFile('C:\Mzr\Arquivos\NFSe\LoteRPS.txt');

        // MAURO 17/06/2013 - Cria arquivo .txt do sped
        AssignFile(XTexto, 'C:\MZR\Arquivos\NFSe\LoteRPS.txt');
{$I-}
        Reset(XTexto);
{$I+}
        If IOResult = 0 Then
            Append(XTexto)
        Else
            Rewrite(XTexto); //J�natas 28/08/2013 - N�o est� conseguindo reescrever o arquivo
    Except
        Result := False;
    End;
End;

//J�natas 20/08/2013 - Fun��o para gerar txt de rps para NFSe para a ISS(prefeitura de Cascavel)
Function TFMzrNFSe.GeraTxtRpsISS: Boolean;
Var
    { TODO : J�natas 02/09/2013 - Inserir os dados e a consulta SQL para gerar o txt e utilizar a fun��o GeraLoteRps }
    xLinha, xAux, xConsulta, xRetorno, xlstRetorno, xMsgRetorno: WideString;
    xTelefone, xMsgResultado, xCertificado: String;
    xRps: file;
    xB: char;
    xNumRps,j,l: smallint;
    xNumLote, xCNPJ, xQtdRps, xHomo: integer;
	 xValorDesconto, xAliquota, xValorServ: Double;
    xDocFisc, xdespesa, xCNPJCpf: string;
    xResult, xI:integer;
Begin
    xData := now();
    xLinha:='';
    xValorDesconto := 0;
    xValorServ := 0;
    xCertificado := DMMACS.TLoja.fieldbyname('nfecertificacao').AsString;
    Try
		Information('Gerando RPS para a emiss�o da Nfse...');

       //Edmar - 26/12/2013 - Testa de o diret�rio existe. Se n�o cria.
       if not DirectoryExists('C:\MZR\Arquivos\NFSe\TMP') then
       	ForceDirectories('C:\MZR\Arquivos\NFSe\TMP');

       //Edmar - 26/12/2013 - Exclui o RPS gerado anteriormente
	    if FileExists('C:\MZR\Arquivos\NFSe\TMP\RPS.txt') then
        	DeleteFile('C:\MZR\Arquivos\NFSe\TMP\RPS.txt');

		 AssignFile(xTexto, 'C:\MZR\Arquivos\NFSe\TMP\RPS.txt');
        Rewrite(xTexto);

        DMFINANC.TAlx.close;
        DMFINANC.TAlx.SQL.Clear;
        DMFINANC.TAlx.SQL.Add('select max(docfisord.nfse_numerorps) from docfisord');
      	 DMFINANC.TAlx.Open;

        //Edmar - 26/12/2013 - Testa se existe um n�mero de rps. se n�o atribui 1
        if (DMFINANC.TAlx.IsEmpty) or (DMFINANC.TAlx.fieldbyname('max').AsString = '') then
        	xNumeroRPS := 1
        else
           xNumeroRPS := StrToInt(DMFINANC.TAlx.fieldbyname('max').AsString) + 1;

      DMESTOQUE.TSlaveServ.First;

      //Edmar - 26/12/2013 - Testa o status da nfse (1 - enviado, 2 - cancelada, 3 - erro)
      if DMESTOQUE.TSlaveServ.fieldbyName('NumDoc').AsString <> '' then
      begin
       	Information('Essa Nfse j� foi enviada ao servidor <esc p/ sair>');
           exit;
      end;

      Information('Verificando exist�ncia do RPS');
      //Edmar - 20/02/2014 - Busca o ultimo numero de RPS v�lido do servidor da prefeitura
      xNumeroRPS := StrToInt(VerificaNfseRPS(xNumeroRPS));
      DMESTOQUE.TSlaveServ.First;
      Information('Gerando arquivo de texto do RPS');
      //EDMAR - 20/11/2013 -  N � O  M U D A R  A  O R D E M  D A S  L I N H A S
      xLinha := '';
      {EDMAR - 20/11/2013 - DADOS DO RPS}
      xLinha:=xLinha+ConcatZero(IntToStr(xNumeroRPS), 15);
      //02 - S�rie RPS
      //Edmar - 21/02/2014 - Se estiver em homologa��o a s�rie � 8. Do contrario ser� 13.
      if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 2 then
	      xLinha := xLinha+ConcatEspaco('8', 5)
      else
		   xLinha := xLinha+ConcatEspaco('13', 5);	
      //03 - Tipo do Rps
      xLinha := xLinha+'1';
      //04 - Data Emiss�o
      xLinha := xLinha+FormatDateTime('yyyy-mm-dd', xData)+'T'+FormatDateTime('hh:nn:ss', xData);
      //05 - Natureza
      If DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Tributa��o no munic�pio' Then
         xLinha := xLinha+ '1';
      If DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Tributa��o fora do munic�pio' Then
         xLinha := xLinha+ '2';
      If DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Isen��o' Then
         xLinha := xLinha+ '3';
      If DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Imune' Then
         xLinha := xLinha+ '4';
      //06 - Regime tributa��o
      xLinha := xLinha+'1';
      //07 - Simples nacional
      if DMMACS.TEmpresa.Fieldbyname('TIPOEMPRESA').asString = 'SIMPLES' then
         xLinha := xLinha+'1'
      else
         xLinha := xLinha+'2';

      //08 - Incentivador cultural
      xLinha := xLinha+'2';
      //09 - Status
      xLinha := xLinha+'1';
      //10 - N�mero RPS substituido
      xLinha := xLinha+ConcatEspaco('', 15);
      //10 - S�rie RPS substituido
      xLinha := xLinha+ConcatEspacoDir('', 5);
      //10 - Tipo RPS substituido
      xLinha := xLinha+ConcatEspacoDir('', 1);

      {O S  V A L O R E S  S � O  S E M  P O N T O  O U  V I R G U L A}

      //11 - Valor do servi�o
      xLinha := xLinha+ConcatZero(TiraCaracter(FormatFloat('######0.00', xVlrServico), '.'), 15);
      //12 - Valor dedu��es (colocar zero para omitir o campo)
      xLinha := xLinha+ConcatZero('0', 15);
      //13 - Valor pis (colocar zero para omitir o campo)
      xLinha := xLinha+ConcatZero(TiraCaracter(FormatFloat('######0.00', 0), '.'), 15);
      //14 - Valor confins (colocar zero para omitir o campo)
      xLinha := xLinha+ConcatZero(TiraCaracter(FormatFloat('######0.00', 0), '.'), 15);
      //15 - Valor inss (colocar zero para omitir o campo)
      xLinha := xLinha+ConcatZero('0', 15);
      //16 - Valor IR (colocar zero para omitir o campo)
      xLinha := xLinha+ConcatZero('0', 15);
      //17 - Valor CSLL (colocar zero para omitir o campo)
      xLinha := xLinha+ConcatZero('0', 15);
      //18 - ISS retido
      if FMenu.xReterIss = 'SIM' then //Edmar - 19/12/2013 - Testa se deve ser retido ou n�o o ISS
         xLinha := xLinha+'1'
      else
         xLinha := xLinha+'2';
      //Edmar - 01/04/2014 - Informar o valor do ISS independente se � retido ou n�o
      xLinha := xLinha+ConcatZero(TiraCaracter(FormatFloat('######0.00', FMenu.xValorIss), '.'), 15);
      //18 - Valor do ISS retido
      xLinha := xLinha+ConcatZero(TiraCaracter(FormatFloat('######0.00', FMenu.xValorIss), '.'), 15);
      //19 - Outras reten��es (colocar zero para omitir o campo)
      xLinha := xLinha+ConcatZero('0', 15);
      //20 - Base de calculo
      xLinha := xLinha+ConcatZero(TiraCaracter(FormatFloat('######0.00', xBaseCalculo), '.'), 15);
      //21 - Aliquota
      xLinha := xLinha+ConcatZeroDir(TiraCaracter(FormatFloat('##0.00', DMMACS.TEmpresa.fieldbyname('ISSQN').AsCurrency), '.'), 5);
      //22 - Valor liquido servi�o
      xLinha := xLinha+ConcatZero(TiraCaracter(FormatFloat('######0.00', xVlrLiquido), '.'), 15);
      //23 - Desconto incondicionado
      xLinha := xLinha+ConcatZero('0', 15);
      //23 - Desconto condicionado
      xLinha := xLinha+ConcatZero('0', 15);
      //24 - Item lista de servi�o
      xLinha := xLinha+ConcatEspacoDir(TiraCaracter(DMESTOQUE.TSlaveServ.fieldbyname('CodigoServicoNfse').AsString, '.'), 4);
      //25 - C�digo CNAE (colocar zero para omitir o campo)
      xLinha := xLinha+ConcatZero(DMMACS.TEmpresa.fieldbyname('NFSE_CODIGOCNAE').AsString, 8);
      //26 - C�digo tributa��o municipio
      xLinha := xLinha+ConcatEspacoDir(DMMACS.TEmpresa.fieldbyname('NFSE_CODTRIBUTACAOMUNICIPAL').AsString, 20);
      //27 - Descri��o do servi�o (sem caracter especial)
      //Edmar - 07/01/2014 - Al�m de jogar a descri��o do servi�o, ele concatena as informa��es adicionais
      while not DMESTOQUE.TSlaveServ.Eof do
      begin
           xdespesa := xdespesa + DMESTOQUE.TSlaveServ.FieldByName('servico').AsString +';';
           DMESTOQUE.TSlaveServ.Next;
      end;

      xDespesa := xDespesa + xDadosAdicionais;
      xLinha := xLinha+ConcatEspacoDir(xDespesa, 2000);
      //28 - C�digo municipio prestador no IBGE (999 para homologa��o)
      if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1 then//Edmar - 11/12/2013 - Se estiver em modo de produ��o, recebe o c�digo do ibge.
         xLinha := xLinha+ConcatEspacoDir(XCodigoIBGE, 7)
      else
         xLinha := xLinha+ConcatEspacoDir('999', 7);

      //29 - CNPJ prestador
      xLinha := xLinha+ConcatEspacoDir(DMMACS.TEmpresa.FieldByName('CNPJ').AsString, 14);
      //30 - Inscri��o municipal prestador
      xLinha := xLinha+ConcatEspacoDir(DMMACS.TEmpresa.FieldByName('INSC_MUN').AsString,15);

      {Edmar - 19/11/2013 - CAMPOS A BAIXO, SE COLOCAR BRANCO OMITE O CAMPO}

      //31/32 - CPF/CNPJ tomador (colocar branco para omitir o campo)
      //Edmar - 21/11/2013 - Se o tamanho da string for 14 quer dizer que � um CNPJ
      xCNPJCpf := Trim(TiraCaracter(TiraCaracter(TiraCaracter(DMMACS.TALX.fieldbyname('cpfcnpj').AsString, '.'), '-'), '/'));
      if Length(xCNPJCpf) = 14 then
      begin
          xLinha := xLinha+ConcatEspacoDir('', 11);
          xLinha := xLinha+ConcatEspacoDir(xCNPJCpf, 14);
      end
      else begin
          //Edmar - 21/11/2013 - Sen�o, quer dizer que � um CPF
          xLinha := xLinha+ConcatEspacoDir(xCNPJCpf, 11);
          xLinha := xLinha+ConcatEspacoDir('', 14);
      end;

      //33 - Inscri��o municipal tomador
      xLinha := xLinha+ConcatEspacoDir(DMMACS.TALX.fieldbyname('insc_mun').AsString, 15);
      //34 - Nome tomador
      xLinha := xLinha+ConcatEspacoDir(TiraAcentos(DMMACS.TALX.fieldbyname('nome').AsString), 115);
      //35 - Rua tomador
      xLinha := xLinha+ConcatEspacoDir(TiraAcentos(DMMACS.TALX.fieldbyname('endereco').AsString), 125);
      //36 - N�mero casa tomador
      xLinha := xLinha+ConcatEspacoDir(DMMACS.TALX.fieldbyname('endnumero').AsString, 10);
      //37 - Complemento tomador
      xLinha := xLinha+ConcatEspacoDir(DMMACS.TALX.fieldbyname('PROXIMIDADE').AsString, 60);
      //38 - Bairro tomador
      xLinha := xLinha+ConcatEspacoDir(TiraAcentos(DMMACS.TALX.fieldbyname('bairro').AsString), 60);
      //39 - C�digo cidade tomador
      xLinha := xLinha+ConcatEspacoDir(DMMACS.TALX.fieldbyname('cod_ibge').AsString, 7);
      //40 - Estado tomador
      xLinha := xLinha+ConcatEspacoDir(DMMACS.TALX.fieldbyname('uf').AsString, 2);
      //41 - Cep tomador
      xLinha := xLinha+ConcatEspacoDir(TiraCaracter(dmmacs.TALX.fieldbyname('cep').AsString,'-'), 8);
      //42 - Telefone  tomador
      xTelefone := dmmacs.TALX.fieldbyname('telrel').AsString;
      xTelefone := TiraCaracter(xTelefone, '-');
      xTelefone := TiraCaracter(xTelefone, '(');
      xTelefone := TiraCaracter(xTelefone, ')');
      xTelefone := TiraCaracter(xTelefone, '.');
      xTelefone := TiraCaracter(xTelefone, ' ');

      xLinha := xLinha+ConcatEspacoDir(xTelefone, 11);
      //43 - E-mail  tomador
      xLinha := xLinha+ConcatEspacoDir(DMMACS.TALX.fieldbyname('email').AsString, 80);
      {Edmar - 19/11/2013 - INFORMA��ES DO INTERMEDIARIO(colocar branco pra omitir o campo)}
      //44 - Raz�o social intermediario
      xLinha := xLinha+ConcatEspacoDir('', 115);
      //45 - CPF intermediario
      xLinha := xLinha+ConcatEspacoDir('', 11);
      //46 - CNPJ intermediario
      xLinha := xLinha+ConcatEspacoDir('', 14);
      //47 - Inscri��o municipal intermediario
      xLinha := xLinha+ConcatEspacoDir('', 15);

      {Edmar - 19/11/2013 - INFORMA��ES DA CONSTRU��O CIVIL(colocar branco pra omitir o campo)}
      //50 - C�digo obra
      xLinha := xLinha+ConcatEspacoDir('', 15);
      //51 - Art
      xLinha := xLinha+ConcatEspacoDir('', 15);

      Writeln(xTexto, xLinha);

      k := k + 1;

      DMESTOQUE.TSlaveServ.Next;

      CloseFile(xTexto);
      Result := true;
    Except
      	Information('Erro1596: Ao gerar RPS da NfS-e <esc p/ sair>');
       Result := false;
    End;
End;


procedure TFMzrNFSe.ConsultaSituacaoRPSISS(xProtocolo, msgRps: string);
var
	xResultadoConsulta, xResultado, msgResultado, xNrLote, xlstMensagemRetorno, xProxy, xUsuario, xSenha, xSituacao: widestring;
   arqtxt: TextFile;
   xTexto: TextFile;
   xStrRetornada, xCodigoAut, xLicensa:string;
   xPosEncontrada, i, xHomolog: integer;
   xArquivo: TSHFileOpStruct;
   XmlDoc: TXMLDocument;
   FRNfse: TfrReport;
//01   FRDSNfse: TfrDBDataSet;
   xConfirmacao: Integer;
begin
	try
       Information('Consultando status da Nfse...');

		XSetInPeriodoFiscal:= DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
		XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '/');
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '(');
       XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, ')');

       //Edmar - 11/12/2013 - Se estiver em modo de produ��o, recebe a licen�a.
       //Sen�o, recebe vazio e 2 porque � o exigido para homologa��o
       if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1 then
       begin
   		xLicensa := DMMACS.TLoja.fieldbyname('nfse_licensa').AsString;
           xHomolog := 1;
       end
   	else begin
   		xLicensa := '';
           xHomolog := 2;
       end;

       DMESTOQUE.TSlaveServ.First;

       //Edmar - 28/03/2014 - repete a instru��o para consultar o status da nfse at� o usuario
       // escolher n�o consultar mais ou quando retornar uma mensagem de sucesso
       repeat
			Sleep(20000);//Edmar - 28/03/2014 - Aguarda 20 segundos para garantir uma conex�o de sucesso

			xResultadoConsulta := xUtil.ConsultaSituacaoLoteRPS(XCodigoIBGE, XNfeNomeCertificado, xHomolog, '1.0', msgRps, xResultado,
   			msgResultado, XCNPJPrest, DMMACS.TEmpresa.FieldByName('INSC_MUN').AsString, xProtocolo, xNrLote, xSituacao, xlstMensagemRetorno, xProxy, xUsuario, xSenha, xLicensa);

           if (xSituacao = '1') or (xSituacao = '2') then
           begin
				xConfirmacao :=	Mensagem('A T E N � � O', 'N�o obtivemos uma resposta junto ao servidor da prefeitura (verifique a tela para uma possivel causa). Deseja continuar consultando? ', '', 2, 3, false, 'c');
	            Information(xlstMensagemRetorno);
			end
       	else
           	xConfirmacao := 1;

       until (xConfirmacao <> 2);

       if (xSituacao = '3') or (xSituacao = '4') then
       begin

       	if not DirectoryExists('C:\MZR\Arquivos\NFSe\NfseDistribuicao\'+XSetInPeriodoFiscal)then
           	ForceDirectories('C:\MZR\Arquivos\NFSe\NfseDistribuicao\'+XSetInPeriodoFiscal);

           if not DirectoryExists('C:\MZR\Arquivos\NFSe\NfseEnviada\'+XSetInPeriodoFiscal)then
           	ForceDirectories('C:\MZR\Arquivos\NFSe\NfseEnviada\'+XSetInPeriodoFiscal);
               
       	//Edmar - 28/11/2013 - XML foi enviado e aceito pelo servidor.
           //Muda ele da pasta TMP e joga na definitiva.
           CopyFile(PChar('C:\MZR\Arquivos\NFSe\TMP\XmlTMP.xml'), pchar('C:\MZR\Arquivos\NFSe\NfseEnviada\'+XSetInPeriodoFiscal+'\'+xProtocolo+'-Nfse enviada.xml'), false);

           //Edmar - 06/12/2013 - Outra consulta, para o WS retornar o XML de distribu��o
           xResultadoConsulta := xUtil.ConsultaLoteRPS(XCodigoIBGE, XNfeNomeCertificado, xHomolog, '1.0', msgRps, xResultado, msgResultado,
		          	XCNPJPrest, DMMACS.TEmpresa.FieldByName('INSC_MUN').AsString, xProtocolo, xlstMensagemRetorno, xProxy, xUsuario, xSenha, xLicensa);

           DMESTOQUE.TSlaveServ.First;

           //Edmar - 25/02/2014 - Se o resultado da consulta for maior que 700, quer dizer que foi
           //retornado o XML de distribui��o
           if Length(xResultadoConsulta) > 700 then
           begin
               //Edmar - 28/11/2013 - Retorna o n�mero do documento que est� na string retornada pelo WS
               xPosEncontrada := StrPosicao('<tc:InfNfse>', xResultadoConsulta, 1);
               xStrRetornada := Copy(xResultadoConsulta, xPosEncontrada+34, 5);

               xStrRetornada := TiraCaracter(xStrRetornada, '<');
               xStrRetornada := TiraCaracter(xStrRetornada, '>');
               xStrRetornada := TiraCaracter(xStrRetornada, '/');
               xStrRetornada := TiraCaracter(xStrRetornada, 't');
               xStrRetornada := TiraCaracter(xStrRetornada, 'c');
               xNumeroDocumento := xStrRetornada;

               //Edmar - 02/12/2013 - Retorna o c�digo de autenticidade que est� na string retornada pelo WS
               xPosEncontrada := StrPosicao('<tc:CodigoVerificacao>', xResultadoConsulta, 1);
  				xStrRetornada := Copy(xResultadoConsulta, xPosEncontrada+21, 13);

  				xStrRetornada := TiraCaracter(xStrRetornada, '<');
  				xStrRetornada := TiraCaracter(xStrRetornada, '>');
  				xStrRetornada := TiraCaracter(xStrRetornada, '/');
  				xStrRetornada := TiraCaracter(xStrRetornada, 't');
  				xStrRetornada := TiraCaracter(xStrRetornada, 'c');
  				xCodigoAut := xStrRetornada;

               //Edmar - 28/11/2013 - Salva XML de distrubi��o
	            AssignFile(xTexto, 'C:\MZR\Arquivos\NFSe\NfseDistribuicao\'+XSetInPeriodoFiscal+'\'+xNumeroDocumento+'-NfseDistribuicao.xml');
	            Rewrite(xTexto);
               Write(xTexto, xResultadoConsulta);

               //Edmar - 12/02/2014 - Salva as informa��es no banco de dados
               //Edmar - 25/02/2014 - Se estiver em homologa��o salva serie 8
               if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 2 then
               begin
                   if FMenu.xReterIss = 'SIM' then
                       GravaInfoBanco(IntToStr(xNumeroRPS), xNumeroDocumento, '8', IntToStr(XSetCodigoPedido), xCodigoAut, xResultadoConsulta, xProtocolo, '1', '1', 0)
                   else
                       GravaInfoBanco(IntToStr(xNumeroRPS), xNumeroDocumento, '8', IntToStr(XSetCodigoPedido), xCodigoAut, xResultadoConsulta, xProtocolo, '1', '2', 0);
               end
               else begin
                   //Edmar - 25/02/2014 - Do contrario, salva 13
                   if FMenu.xReterIss = 'SIM' then
                       GravaInfoBanco(IntToStr(xNumeroRPS), xNumeroDocumento, '13', IntToStr(XSetCodigoPedido), xCodigoAut, xResultadoConsulta, xProtocolo, '1', '1', 0)
                   else
                       GravaInfoBanco(IntToStr(xNumeroRPS), xNumeroDocumento, '13', IntToStr(XSetCodigoPedido), xCodigoAut, xResultadoConsulta, xProtocolo, '1', '2', 0);
               end;

           Information('NFS-e salva com sucesso');

           If Mensagem('Confirma��o do usu�rio', 'Deseja enviar o PDF da NFS-e gerada para o cliente?', '', 2, 3, False, 'c') = 2 then
			begin
		        Information('Enviando o e-mail para o cliente. Por favor aguarde!');
               XEnviaPdf := 'S';
               PreparaEnvioPdf;
           end
           else
				VisualizaNfse(XSetCodigoPedido);           
               //GeraNFseImpressao;//Edmar - 05/02/2014 - Chama procedure que gera e manda para impress�o a nfse

           ConcluiProcesso('NFS-e gerada com sucesso <esc p/sair>');
           end
           else begin
      			Information('Nfse n�o foi gerada corretamente <esc p/ sair>');
               NfeAddFalhas(xlstMensagemRetorno);
               exit;
           end;
       end
       else begin
         	if xlstMensagemRetorno = '' then
         	begin
         		if xResultado = '5000' then
           		showMessage(xResultadoConsulta)
           	else begin
					Information('Ocorreu um erro no processamento da Nfse. Tente novamente <esc p/sair>');
           		NfeAddFalhas(msgResultado);
           		exit;
           	end;
         	end
         	else begin
				Information('Ocorreu um erro no processamento da Nfse <esc p/sair>');
           	NfeAddFalhas(xlstMensagemRetorno);
           	exit;
         	end;
       end;
	except
       on e : Exception do
       begin
       	Information('Ocorreu um erro no processamento da Nfse <esc p/sair>');
      		NfeAddFalhas(e.Message);
      		Exit;
       end;
   end;
end;

//Edmar - 22/11/2013 - Fun��o usada para cancelar a RPS
function TFMzrNFSe.CancelarNFSe(xNumNFSe: string): boolean;
var
	xResultadoCancel, xrps: WideString;
   xResultado: integer;
   xCertificado, msgResultado, xSucesso, xDataCancel, xlstRetorno, xProxy, xUsuario, xSenha: string;
begin
	try
       xUtil := CreateOleObject('NFSe_Util.util');
       xProxy := '';
       xUsuario := '';
       xSenha := '';
       xResultado := 0;
       xrps := '';
       msgResultado := '';
       xDataCancel := '';
		xSucesso := '';
       xResultadoCancel := '';
       xlstRetorno := '';
       
       FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('cod_cidade').AsString, '');
       XCodigoIBGE := DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString;
		XCNPJPrest := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
       xCertificado := DMMACS.TLoja.fieldbyname('nfecertificacao').AsString;
       //Edmar - 18/02/2014 - Cancelamento de nfse para iss
		if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'ISS' then
       begin
           if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1 then
               xResultadoCancel := xUtil.CancelaNFSe(XCodigoIBGE, xCertificado, 1, '1.0', xrps, xResultado, msgResultado,
                   XCNPJPrest, DMMACS.TEmpresa.FieldByName('INSC_MUN').AsString,
                       xNumNFSe, XCodigoIBGE, '1', 'ERRO DIGITA��O DAS INFORMA��ES DA NFSE', xSucesso, xDataCancel, xlstRetorno, xProxy, xUsuario, xSenha, DMMACS.TLoja.FieldByName('nfse_licensa').AsString)
           else
               xResultadoCancel := xUtil.CancelaNFSe(XCodigoIBGE, xCertificado, 2, '1.0', xrps, xResultado, msgResultado,
                   XCNPJPrest, DMMACS.TEmpresa.FieldByName('INSC_MUN').AsString,
                       xNumNFSe, '999', '1', 'ERRO DIGITA��O DAS INFORMA��ES DA NFSE', xSucesso, xDataCancel, xlstRetorno, xProxy, xUsuario, xSenha, '');
		end
       else begin 
           //Edmar - 18/02/2014 - Cancelamento de NFS-e para equiplano
			if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1 then
               xResultadoCancel := xUtil.CancelaNFSe(XCodigoIBGE, xCertificado, 1, '1', xrps, xResultado, msgResultado,
                   XCNPJPrest, '136', xNumNFSe, XCodigoIBGE, '1', 'ERRO DIGITA��O DAS INFORMA��ES DA NFSE', xSucesso, xDataCancel, xlstRetorno, xProxy, xUsuario, xSenha, DMMACS.TLoja.FieldByName('nfse_licensa').AsString)
           else
               xResultadoCancel := xUtil.CancelaNFSe(XCodigoIBGE, xCertificado, 2, '1', xrps, xResultado, msgResultado,
                   XCNPJPrest, '136', xNumNFSe, '999', '1', 'ERRO DIGITA��O DAS INFORMA��ES DA NFSE', xSucesso, xDataCancel, xlstRetorno, xProxy, xUsuario, xSenha, '');
       end;

       if (xSucesso = '1') OR (xSucesso = 'true') then
       begin
       	try
           	//Edmar - 05/03/2014 - Atualiza despadic com status da nfse
          		DMServ.TAlx2.Close;
          		DMServ.TAlx2.SQL.Clear;
          		DMServ.TAlx2.SQL.Add('update despadic set nfse_status = :sts where nfse_numerodocumento = :numdoc');
          		DMServ.TAlx2.ParamByName('sts').AsString := '2';
          		DMServ.TAlx2.ParamByName('numdoc').AsString := xNumNFSe;

          		DMServ.TAlx2.ExecSQL;
//          		DMServ.TAlx2.Transaction.CommitRetaining;
				DMServ.IBT.CommitRetaining;

           	//Edmar - 05/03/2014 - Atualiza docfisord com status da nfse
               DMServ.TAlx2.Close;
          		DMServ.TAlx2.SQL.Clear;
          		DMServ.TAlx2.SQL.Add('update docfisord set docfisord.nfse_statusgeral = :sts where docfisord.nfse_numerodocumento = :numdoc');
          		DMServ.TAlx2.ParamByName('sts').AsString := '2';
          		DMServ.TAlx2.ParamByName('numdoc').AsString := xNumNFSe;

          		DMServ.TAlx2.ExecSQL;
          		//DMServ.TAlx2.Transaction.CommitRetaining;
				DMServ.IBT.CommitRetaining;               

           	//Edmar - 05/03/2014 - Atualiza ordem com status da nfse
               DMServ.TAlx2.Close;
          		DMServ.TAlx2.SQL.Clear;
          		DMServ.TAlx2.SQL.Add('update ordem set ordem.statusnfse = :sts where ordem.numfiscalnfse = :numdoc');
          		DMServ.TAlx2.ParamByName('sts').AsString := '2';
          		DMServ.TAlx2.ParamByName('numdoc').AsString := xNumNFSe;

          		DMServ.TAlx2.ExecSQL;
          		//DMServ.TAlx2.Transaction.CommitRetaining;
				DMServ.IBT.CommitRetaining;               

               Mensagem('   I N F O R M A � � O   ', 'NFSe '+xNumNFSe+' cancelada com sucesso', '', 1, 1, false, 'I');

          		Result := true;
          except
				Mensagem('   I N F O R M A � � O   ', 'NFSe '+xNumNFSe+' foi cancelada com sucesso. Mas n�o foi possivel gravar as informa��es em banco. Contate o suporte.', '', 1, 1, false, 'I');
          end;
       end
       else begin
           Mensagem('   A T E N � � O   ', 'N�o foi poss�vel cancelar a NFSe'#13+xlstRetorno, '', 1, 1, false, 'I');
           Result := false;
       end;
   except
		Mensagem('   A T E N � � O   ', 'N�o foi poss�vel cancelar a NFSe', '', 1, 1, false, 'I');
       Result := false;
   end;
end;

//Edmar - 18/12/2013 - Fun��o usada para visualizar Nfse j� impressa
function TFMzrNFSe.VisualizaNfse(xOrdem: integer): boolean;
var
   xAux, xFatura: String;
begin
	try
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('Select vwcliente.nome, pessoaj.cod_pessoaj, pessoaj.insc_mun, pessoaj.razao_social, vwcliente.cpfcnpj, cliente.CONTRIBICMS, cliente.SUFRAMA, pessoaj.INDUSTRIA, vwcliente.cidade, vwcidade.uf, cidade.cod_ibge,pessoaj.insc_est, ');
	    DMMACS.TALX.SQL.Add('pessoa.endereco, pessoa.proximidade, pessoa.bairro, pessoa.endnumero, cliente.suframa,pessoa.cep, pessoa.telrel,email.email from vwcliente ');
       DMMACS.TALX.SQL.Add('left join ordem on vwcliente.cod_cliente = ordem.cod_cliente ');
       DMMACS.TALX.SQL.Add('left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
       DMMACS.TALX.SQL.Add('Left Join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
       DMMACS.TALX.SQL.Add('Left Join cliente on vwcliente.cod_cliente = cliente.cod_cliente ');
       DMMACS.TALX.SQL.Add('left join vwcidade ON vwcliente.cod_cidade = vwcidade.cod_cidade ');
       DMMACS.TALX.SQL.Add('left join cidade ON vwcliente.cod_cidade = cidade.cod_cidade ');
       DMMACS.TALX.SQL.Add('left join email ON pessoa.cod_pessoa = email.cod_pessoa ');
       DMMACS.TALX.SQL.Add('where ordem.cod_ordem = :codord');
       DMMACS.TALX.ParamByName('codord').AsInteger := xOrdem;
       DMMACS.TALX.Open;

	    DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add('select  docfisord.nfse_dtemissao as dtemissao, docfisord.dadosad01, docfisord.horasaid, docfisord.vlrdesconto, despadic.aliqissqn, despadic.nfse_status, docfisord.nfse_codigoautenticidade, despadic.nfse_codservico, servico_nfse.descricao, ');
       DMESTOQUE.TRel.SQL.Add(' docfisord.nfse_codigoautenticidade, despadic.nfse_codservico, servico_nfse.descricao, docfisord.nfse_numerodocumento, ');
       DMESTOQUE.TRel.SQL.Add('despadic.despesa, despadic.vlrfinal, despadic.qtd, despadic.desconto, despadic.vlrtotfin, docfisord.vlrtotserv, docfisord.vlrtotiss, ordem.totiss, docfisord.impostonfse, ');
       DMESTOQUE.TRel.SQL.Add('ordem.totserv, docfisord.reter_iss from docfisord left join despadic on docfisord.cod_ordem = despadic.cod_gerador ');
       DMESTOQUE.TRel.SQL.Add('left join servico_nfse on despadic.nfse_codservico = servico_nfse.num_servico ');
       DMESTOQUE.TRel.SQL.Add('left join ordem on ordem.cod_ordem = docfisord.cod_ordem ');
       DMESTOQUE.TRel.SQL.Add('where docfisord.cod_ordem = :codord');
       DMESTOQUE.TRel.ParamByName('codord').AsInteger := xOrdem;
       DMESTOQUE.TRel.Open;

       xNumeroDocumento := DMESTOQUE.TRel.FieldByName('nfse_numerodocumento').AsString;

       if (not DMESTOQUE.TRel.IsEmpty) and (DMESTOQUE.TRel.FieldByName('nfse_numerodocumento').AsString <> '') then
       begin
           FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
           //Edmar - 12/05/2014 - Adiciona manualmente o data set
           dataSetCidade.DataSet := DMGEOGRAFIA.WCidade;

		    if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'ISS' then
	            frxNfse.LoadFromFile('C:\MZR\Macs\Rel\FrfNFseISS.fr3')
           else
           	frxNfse.LoadFromFile('C:\MZR\Macs\Rel\FrfNFseEquiplano.fr3');

           //Edmar - 18/06/2014 - Filtra buscando uma parcela para a ordem correspondente
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add('select parcelacr.dtvenc, parcelacr.valorserv from parcelacr ');
           DMCONTA.TAlx.SQL.Add('left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
           DMCONTA.TAlx.SQL.Add('where (ctareceber.cod_gerador = :codigo) and (ctareceber.tipogerador = ''ORD'')');
           DMCONTA.TAlx.ParamByName('codigo').AsInteger := xOrdem;
           DMCONTA.TAlx.Open;

           if not DMCONTA.TAlx.IsEmpty then
           begin//Edmar - 18/06/2014 - Se n�o estiver vazia, monta o texto que ser� mostrado no relatorio
				xFatura := 'FATURA ';
           	while not DMCONTA.TAlx.Eof do
               begin
               	xFatura := xFatura+DMCONTA.TAlx.FieldByName('dtvenc').AsString+' - R$ '+FormatFloat('#####0.00', DMCONTA.TAlx.FieldByName('VALORSERV').AsCurrency);

               	DMCONTA.TAlx.Next;
                   if not DMCONTA.TAlx.Eof then
                   	xFatura := xFatura + ' / ';
               end;

               DMMACS.TLoja.Edit;
               DMMACS.TLoja.FieldByName('tmp1').AsString := xFatura;
               DMMACS.TLoja.Post;
           end else
           begin
               DMMACS.TLoja.Edit;
               DMMACS.TLoja.FieldByName('tmp1').AsString := 'VENCIMENTO � VISTA';
               DMMACS.TLoja.Post;
           end;

           frxNfse.ShowReport();

           if XEnviaPdf = 'S' then
           	GeraPdfCliente;
       end
       else
			Mensagem('A T E N � � O', 'Essa Nfse ainda n�o foi gerada. Escolha uma ordem v�lida', '', 1,1, false, 'A');
   except
    	on e : Exception do
			Mensagem('A T E N � � O', 'Erro ao gerar DANFE de servi�o '+e.Message, '', 1,1, false, 'I');
   end;
end;

//Edmar - 20/12/2013 - Consulta se RPS j� foi enviado
function TFMzrNFSe.VerificaNfseRPS(xRps:integer): String;
var
	xConsulta, xRetorno, xlstRetorno, xMsgRetorno, xLicensa: WideString;
   xResult, xHomo:integer;
   xValidado:boolean;
   xUtilConsulta: OleVariant;
begin
   xValidado := false;
   xUtilConsulta := CreateOleObject('NFSe_Util.util');
   
   if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1 then
   begin
   	xHomo := 1;
       xLicensa := DMMACS.TLoja.FieldByName('nfse_licensa').AsString;
   end
   else begin
   	xLicensa := '';
   	xHomo := 2;
   end;

   //Edmar - 07/02/2014 - Executa enquanto o n�mero de rps n�o estiver validado
   while not xValidado do
   begin  
		if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'ISS' then
       begin
   		xConsulta := xUtilConsulta.ConsultaNfseRPS(XCodigoIBGE, XNfeNomeCertificado, xHomo, '1.0', xMsgRetorno, xResult, xRetorno,
       		XCNPJPrest, xInscMun, IntToStr(xRps), '8', '1', xlstRetorno, '', '', '', xLicensa);
		end
		else
			xConsulta := xUtilConsulta.ConsultaNFSeRPS(XCodigoIBGE, XNfeNomeCertificado, xHomo, '1', xMsgRetorno, xResult, xRetorno,
       		XCNPJPrest, '136', IntToStr(xRps), '1', '1', xlstRetorno, '', '', '', xLicensa);
                      
       if xResult = 5014 then
       begin
       	Result := 'ERRO5014';
           xValidado := True;
           Exit;
       end;

       if (xLstRetorno = '') AND (xConsulta <> '') then
			xRps := xRps + 1
       else
       	xValidado := true;
   end;
   Result := IntToStr(xRps);
end;

//Edmar - 20/12/2013 - Consulta se a nfse est� ativa no servidor
function TFMzrNFSe.ConsultaNfse(xNumNfse: string): boolean;
var
   xMsgDados, xRetorno, xMsgRetorno, xLstMsgRetorno:WideString;
   xNumRetorno, xHomo: Integer;
   xCpfTom, xCnpjTom, xInscMunTom, xData, xLicensa, xCertificado, xInscMun: String;
begin
 	Result := false;

   xUtil := CreateOleObject('NFSe_Util.util');
   xCertificado := DMMACS.TLoja.fieldbyname('nfecertificacao').AsString;
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('cod_cidade').AsString, '');
   XCodigoIBGE := DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString;
   XCNPJPrest := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
   xInscMun := DMMACS.TEmpresa.FieldByName('insc_mun').AsString;
   xCpfTom := '';
   xCnpjTom := '';

	DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add('select  docfisord.nfse_dtemissao as dtemissao, pessoa.cpfcnpj, pessoaj.insc_mun from despadic ');
   DMPESSOA.TALX.SQL.Add(' left join docfisord on docfisord.cod_ordem = despadic.cod_gerador ');
   DMPESSOA.TALX.SQL.Add(' left join ordem on docfisord.cod_ordem = ordem.cod_ordem ');
   DMPESSOA.TALX.SQL.Add(' left join cliente on ordem.cod_cliente = cliente.cod_cliente ');
   DMPESSOA.TALX.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
   DMPESSOA.TALX.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
   DMPESSOA.TALX.SQL.Add(' where despadic.nfse_numerodocumento = :numNfse');
   DMPESSOA.TALX.ParamByName('numNfse').AsString := xNumNfse;
   DMPESSOA.TALX.Open;

   xData := FormatDateTime('yyyy-mm-dd', DMPESSOA.TALX.FieldByName('dtemissao').AsDateTime);
   xInscMunTom := DMPESSOA.TALX.FieldByName('insc_mun').AsString;
   
   if Length(DMPESSOA.TALX.FieldByName('cpfcnpj').AsString) > 11 then
   	xCnpjTom := DMPESSOA.TALX.FieldByName('cpfcnpj').AsString
   else
   	xCpfTom := DMPESSOA.TALX.FieldByName('cpfcnpj').AsString;

  	if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1 then
   begin
   	xLicensa := DMMACS.TLoja.fieldbyname('nfse_licensa').AsString;
       xHomo := 1;
   end
   else begin
   	xLicensa := '';
       xHomo := 2;
   end;
   
   if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'ISS' then
	   xRetorno := xUtil.ConsultaNfse(XCodigoIBGE, xCertificado, xHomo, '1.0', xMsgDados, xNumRetorno, xMsgRetorno,
   		XCNPJPrest, xInscMun, xNumNfse, xData, xData, xCnpjTom, xCpfTom, xInscMunTom, '', '', '', '',
       		xLstMsgRetorno, '', '', '', xLicensa)
   else
      xRetorno := xUtil.ConsultaNfse(XCodigoIBGE, xCertificado, xHomo, '1', xMsgDados, xNumRetorno, xMsgRetorno,
   		XCNPJPrest, '136', xNumNfse, xData, xData, xCnpjTom, xCpfTom, xInscMunTom, '', '', '', '',
       		xLstMsgRetorno, '', '', '', xLicensa);

   if xLstMsgRetorno = '' then
   	Result := true; 
end;

function TFMzrNFSe.GeraXMLServicoEquiplano: Boolean;
var
    Raiz, Nome, Attributo1, Attributo2, Attributo3: IXMLNode;
    NodeLoteA, NodeLoteB, NodeLoteC, NodeLoteD, NodeLoteE: IXMLNode;
    NodeLoteF, NodeLoteG, NodeLoteH: IXMLNode;
    xPos, xCont: integer;
    xCodigoServ, xSubCodigoServ, xTelefone, xServicos:string;
    xVlrTotalServ, xValorTributacao: Real;
begin
   Result := True;
   try
      Information('Gerando XML da Nfse...');
      //Monta o xml somente para notas de servi�os de Toledo
      XMLNFSe := TXMLDocument.Create(Self);
      XMLNFSe.Active := True;
      XMLNFSe.Version := '1.0';
      XMLNFSe.Encoding := 'UTF-8';

      Raiz := XMLNFSe.AddChild('es:enviarLoteRpsEnvio');
      Attributo1:= XMLNFSe.CreateNode('xmlns:es', ntAttribute);
      Attributo1.Text := 'http://www.equiplano.com.br/esnfs';
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

      Raiz.AddChild('lote', '');//esse '' serve para n�o pegar tipo

      NodeLoteB := Raiz.ChildNodes['lote'];

      DMESTOQUE.Alx5.Close;
      DMESTOQUE.Alx5.SQL.Clear;
      DMESTOQUE.Alx5.SQL.Add('select max(docfisord.nfse_numerolote) from docfisord');
      DMESTOQUE.Alx5.Open;

      if not DMESTOQUE.Alx5.IsEmpty then
      	xNrLote := DMESTOQUE.Alx5.FieldByName('max').AsInteger + 50
      else
      	xNrLote := 1;

      NodeLoteB.AddChild('nrLote','').NodeValue := IntToStr(xNrLote);

      NodeLoteB.AddChild('qtRps','').NodeValue := '1' ;
      NodeLoteB.AddChild('nrVersaoXml','').NodeValue := '1';

      NodeLoteB.AddChild('prestador', '');
      NodeLoteC := NodeLoteB.ChildNodes['prestador'];
      NodeLoteC.AddChild('nrCnpj', '').NodeValue := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
      NodeLoteC.AddChild('nrInscricaoMunicipal', '').NodeValue := DMMACS.TEmpresa.FieldByName('INSC_MUN').AsString;
      NodeLoteC.AddChild('isOptanteSimplesNacional', '').NodeValue := '2';
      NodeLoteC.AddChild('idEntidade', '').NodeValue := '136'; //J�natas 20/06/2013 - Campo inclu�do conforme xml exemplo

      NodeLoteB.AddChild('listaRps', '');
      NodeLoteC := NodeLoteB.ChildNodes['listaRps'];

      NodeLoteC.AddChild('rps', '');

      NodeLoteE := NodeLoteC.ChildNodes['rps'];

      //Edmar - 10/02/2014 - Seleciona o ultimo numero de RPS emitido
      DMESTOQUE.Alx5.Close;
      DMESTOQUE.Alx5.SQL.Clear;
      DMESTOQUE.Alx5.SQL.Add('select max(docfisord.nfse_numerorps) from docfisord');
      DMESTOQUE.Alx5.Open;

       if DMESTOQUE.Alx5.IsEmpty then
           xNumeroRPS := 1
       else
           xNumeroRPS := DMESTOQUE.Alx5.FieldByName('max').AsInteger + 1;

	   Information('Buscando n�mero de RPS v�lido...');

      {
      xNumeroRPS := VerificaNfseRPS(xNumRps);

	   if xNumValidoRPS = 'ERRO5014' then
      begin
			ConcluiProcesso('No momento voc� n�o possui conex�o com a internet. <esc p/ sair>');
           Result := False;
           Exit;
      end;
      }

      Information('Gerando XML da NFS-e...');

      xData := Date();
      NodeLoteE.AddChild('nrRps').NodeValue := xNumeroRPS;
      NodeLoteE.AddChild('nrEmissorRps').NodeValue := '1';
      NodeLoteE.AddChild('dtEmissaoRps').NodeValue := FormatDateTime('yyyy-MM-dd', xData) + 'T' + FormatDateTime('hh:mm:ss', Time());
      NodeLoteE.AddChild('stRps').NodeValue := '1';

      //tipo de tributa��o {1 = tributado no mun�cipio, 2 = em outro mun�cipio, 3 = isento/imune, 4 = suspenso/decis�o judicial}
      If DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Tributa��o no munic�pio' Then
      		NodeLoteE.AddChild('tpTributacao').NodeValue := '1';
      If DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Tributa��o fora do munic�pio' Then
      		NodeLoteE.AddChild('tpTributacao').NodeValue := '2';
      If DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Isen��o' Then
      		NodeLoteE.AddChild('tpTributacao').NodeValue := '3';
      If DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Imune' Then
      		NodeLoteE.AddChild('tpTributacao').NodeValue := '4';

      //Reten��o do ISS
      if FMenu.xReterIss = 'SIM' then
      		NodeLoteE.AddChild('isIssRetido', '').NodeValue := '1'
      else
		    NodeLoteE.AddChild('isIssRetido', '').NodeValue := '2';

      //NodeLoteE:=XMLNFSe.DocumentElement;
      NodeLoteE.AddChild('tomador', '');
      NodeLoteF := NodeLoteE.ChildNodes['tomador'];

      //NodeLoteF:=XMLNFSe.DocumentElement;
      NodeLoteF.AddChild('documento', '');
      NodeLoteG := NodeLoteF.ChildNodes['documento'];
      NodeLoteG.AddChild('nrDocumento').NodeValue := Trim(TiraCaracter(TiraCaracter(TiraPonto(DMMACS.TALX.FieldByName('CPFCNPJ').AsString), '-'), '/'));

      //Edmar - 24/01/2014 - Testa se � CPF ou CNPJ o documento do tomador
      {1=cpf, 2=cnpj, 3=estrangeiro}
	   if Length(TiraCaracter(TiraCaracter(TiraPonto(DMMACS.TALX.FieldByName('CPFCNPJ').AsString), '-'), '/')) = 14 then
      		NodeLoteG.AddChild('tpDocumento').NodeValue := '2'
      else
		    NodeLoteG.AddChild('tpDocumento').NodeValue := '1';

      NodeLoteG.AddChild('dsDocumentoEstrangeiro');

      //NodeLoteF:=XMLNFSe.DocumentElement;
      NodeLoteF.AddChild('nmTomador', '').NodeValue := DMMACS.TALX.FieldByName('nome').AsString;
      NodeLoteF.AddChild('dsEmail', '').NodeValue := DMMACS.TALX.FieldByName('email').AsString;

      //Edmar - 22/01/2014 - Testa se o tomador possui insc estadual e s� se tiver cria a tag
      if DMMACS.TALX.FieldByName('insc_est').AsString <> '' then
	   		NodeLoteF.AddChild('nrInscricaoEstadual', '').NodeValue := DMMACS.TALX.FieldByName('insc_est').AsString;

      NodeLoteF.AddChild('dsEndereco', '').NodeValue := DMMACS.TALX.FieldByName('endereco').AsString;
      NodeLoteF.AddChild('nrEndereco', '').NodeValue := DMMACS.TALX.FieldByName('endnumero').AsString;
      NodeLoteF.AddChild('dsComplemento', '').NodeValue := DMMACS.TALX.FieldByName('proximidade').AsString;
      NodeLoteF.AddChild('nmBairro', '').NodeValue := DMMACS.TALX.FieldByName('bairro').AsString;
      NodeLoteF.AddChild('nrCidadeIbge', '').NodeValue := DMMACS.TALX.FieldByName('cod_ibge').AsString;
      NodeLoteF.AddChild('nmUf', '').NodeValue := DMMACS.TALX.FieldByName('uf').AsString;
      NodeLoteF.AddChild('nmPais', '').NodeValue := 'Brasil';
      NodeLoteF.AddChild('nrCep', '').NodeValue := TiraCaracter(DMMACS.TALX.FieldByName('cep').AsString, '-');
      xTelefone := TiraCaracter(TiraCaracter(TiraCaracter(DMMACS.TALX.FieldByName('telrel').AsString, '-'), '('), ')');

      if xTelefone <> '' then
      		NodeLoteF.AddChild('nrTelefone', '').NodeValue := xTelefone;

      //Paulo 20/04/2012: Filtra os servi�os
      FiltraTabela(DMESTOQUE.TDesp, 'despadic', 'cod_gerador', IntToStr(XSetCodigoPedido), '');

      DMESTOQUE.TSlaveServ.First;
      DMESTOQUE.TDesp.First;

      NodeLoteE.AddChild('listaServicos', '');
      NodeLoteG := NodeLoteE.ChildNodes['listaServicos'].AddChild('servico', -1);

      //Edmar - 22/01/2014 - Percorre as despesas concatenando a descri��o dos servi�os
      While Not DMESTOQUE.TDesp.Eof Do
      Begin
   	   //xServicos := xServicos + DMESTOQUE.TSlaveServ.fieldByName('servico').AsString+'; ';
          xServicos := xServicos + DMESTOQUE.TDesp.fieldByName('DESPESA').AsString+'; ';

          DMESTOQUE.TDesp.Next;
      end;

      xCodigoServ := DesmembraCodigo(DMESTOQUE.TDesp.FieldByName('NFSE_CODSERVICO').AsString, 'COD');
      xSubCodigoServ := DesmembraCodigo(DMESTOQUE.TDesp.FieldByName('NFSE_CODSERVICO').AsString, 'SUBCOD');

      NodeLoteG.AddChild('nrServicoItem').NodeValue := xCodigoServ;
      NodeLoteG.AddChild('nrServicoSubItem').NodeValue := xSubCodigoServ;
      NodeLoteG.AddChild('vlServico').NodeValue := FormatFloat('####0.00', xVlrServico);
      NodeLoteG.AddChild('vlAliquota').NodeValue := FormatFloat('###0.00', DMESTOQUE.TDesp.fieldByName('ALIQISSQN').AsCurrency);//FormatFloat('##0.00', DMESTOQUE.TDesp.fieldByName('ALIQISSQN').AsCurrency / 100);

      //Edmar - 28/01/2014 - S� cria a tag desconto caso haja desconto
      {if(xVlrTotalServ <> xVlrServico) then
      begin
           NodeLoteG.AddChild('deducao', '');
           NodeLoteH := NodeLoteG.ChildNodes['deducao'];
           NodeLoteH.AddChild('vlDeducao').NodeValue := FormatFloat('####0.00', xVlrTotalServ - xVlrServico);
           NodeLoteH.AddChild('dsJustificativaDeducao').NodeValue := 'DESCONTO';
      end;}

      NodeLoteG.AddChild('vlBaseCalculo', '').NodeValue := FormatFloat('####0.00', xBaseCalculo);
      NodeLoteG.AddChild('vlIssServico').NodeValue := FormatFloat('###0.00', Fmenu.xValorIss);
      NodeLoteG.AddChild('dsDiscriminacaoServico').NodeValue := xServicos+'; '+xDadosAdicionais;

      //Paulo 23/04/2012: Totais
      NodeLoteE.AddChild('vlTotalRps', '').NodeValue := FormatFloat('######0.00', xVlrServico);
      NodeLoteE.AddChild('vlLiquidoRps', '').NodeValue := FormatFloat('######0.00', xVlrLiquido);

      NodeLoteE.AddChild('retencoes', '');
 	   NodeLoteG := NodeLoteE.ChildNodes['retencoes'];
      //Edmar - 29/04/2014 - S� cria a tag vlIss caso esteja retendo ISS
      if FMenu.xReterIss = 'SIM' then
  	   		NodeLoteG.AddChild('vlIss', '').NodeValue := FormatFloat('######0.00', FMenu.xValorIss);

//    xValorTributacao := (xVlrLiquido * DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTANFSE').AsCurrency) / 100;
      NodeLoteE.AddChild('dsImpostos', '').NodeValue := xDadosAdicionaisImposto;

      //Edmar - 22/01/2014 - Trecho de c�digo comentado pois o sistema n�o manipula esses impostos
      //e o web service n�o aceita essas informa��es vazias no xml
{     NodeLoteG.AddChild('vlCofins', '');
      NodeLoteG.AddChild('vlCsll', '');
      NodeLoteG.AddChild('vlInss', '');
      NodeLoteG.AddChild('vlIrrf', '');
      NodeLoteG.AddChild('vlPis', '');
      NodeLoteG.AddChild('vlAliquotaCofins', '');
      NodeLoteG.AddChild('vlAliquotaCsll', '');
      NodeLoteG.AddChild('vlAliquotaInss', '');
      NodeLoteG.AddChild('vlAliquotaIrrf', '');
      NodeLoteG.AddChild('vlAliquotaPis', '');}

      VerificaDiretorio('C:\Mzr\Arquivos\NFSe\TMP\');
      If FileExists('C:\MZR\Arquivos\NFSe\TMP\XmlTMP.xml') Then
      		DeleteFile('C:\MZR\Arquivos\NFSe\TMP\XmlTMP.xml');

      XMLNFSe.SaveToFile('C:\MZR\Arquivos\NFSe\TMP\XmlTMP.xml');


      XXmlfinal := XMLNFSe.XML.Text;
	   DecimalSeparator := ',';
   except
       ConcluiProcesso('Erro ao gerar o XML de envio. Tente novamente.<esc p/ sair>');
   	Result := false;
       DecimalSeparator := ',';
   end;
end;

function TFMzrNFSe.GeraXMLServicoIPM: Boolean;
var
    Raiz, Nome: IXMLNode;
    NodeNf, NodePrestador, NodeTomador, NodeItens, NodeLista:  IXMLNode;
//    NodeLoteA, NodeLoteB, NodeLoteC, NodeLoteD, NodeLoteE: IXMLNode;
//    NodeLoteF, NodeLoteG, NodeLoteH: IXMLNode;
    xPos, xCont: integer;
    xCodigoServ, xSubCodigoServ, xTelefone, xServicos:string;
    xVlrTotalServ, xValorTributacao: Real;
begin
   Result := True;
   try
      Information('Gerando XML da Nfse...');
      //Monta o xml somente para notas de servi�os de Cascavel IPM
      XMLNFSe := TXMLDocument.Create(Self);
      XMLNFSe.Active := True;
      XMLNFSe.Version := '1.0';
      XMLNFSe.Encoding := 'ISO-8859-1';

      Raiz := XMLNFSe.AddChild('nfse');

      Raiz.AddChild('nf', '');//esse '' serve para n�o pegar tipo

      //Tag NF
      NodeNf := Raiz.ChildNodes['nf'];
      NodeNf.AddChild('valor_total','').NodeValue := '100,00';
      NodeNf.AddChild('valor_desconto','').NodeValue := '0,00';
      NodeNf.AddChild('valor_ir','').NodeValue := '0,00';
      NodeNf.AddChild('valor_inss','').NodeValue := '0,00';
      NodeNf.AddChild('valor_contribuicao_social','').NodeValue := '0,00';
      NodeNf.AddChild('valor_rps','').NodeValue := '0,00';
      NodeNf.AddChild('valor_pis','').NodeValue := '0,00';
      NodeNf.AddChild('valor_cofins','').NodeValue := '0,00';
      NodeNf.AddChild('observacao','').NodeValue := '';

      //Tag Prestador
      NodeNf := Raiz.ChildNodes['prestador'];
      NodeNf.AddChild('cpfcnpj','').NodeValue := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
      NodeNf.AddChild('cidade','').NodeValue := '7493';//C�digo de cascavel-pr segunda a tabela de c�digotom das cidades brasileiras

      //Tag Tomador
      NodeNf := Raiz.ChildNodes['tomador'];
	   if Length(TiraCaracter(TiraCaracter(TiraPonto(DMMACS.TALX.FieldByName('CPFCNPJ').AsString), '-'), '/')) = 14 then
           NodeNf.AddChild('tipo','').NodeValue := 'J'
      else
           NodeNf.AddChild('tipo','').NodeValue := 'F';

      NodeNf.AddChild('cpfcnpj','').NodeValue := Trim(TiraCaracter(TiraCaracter(TiraPonto(DMMACS.TALX.FieldByName('CPFCNPJ').AsString), '-'), '/'));

      //Edmar - 22/01/2014 - Testa se o tomador possui insc estadual e s� se tiver cria a tag
      if DMMACS.TALX.FieldByName('insc_est').AsString <> '' then
           NodeNf.AddChild('ie','').NodeValue := DMMACS.TALX.FieldByName('insc_est').AsString;

      NodeNf.AddChild('nome_razao_social','').NodeValue := DMMACS.TALX.FieldByName('razao_social').AsString;
      NodeNf.AddChild('sobrenome_nome_fantasia','').NodeValue := DMMACS.TALX.FieldByName('nome').AsString;
      NodeNf.AddChild('logradouro','').NodeValue := DMMACS.TALX.FieldByName('endereco').AsString + ', '+DMMACS.TALX.FieldByName('endnumero').AsString;
      If DMMACS.TALX.FieldByName('email').AsString<>'' Then
           NodeNf.AddChild('email','').NodeValue := DMMACS.TALX.FieldByName('email').AsString
      Else
           NodeNf.AddChild('email','').NodeValue := 'email@dominio.com.br';
      NodeNf.AddChild('complemento','').NodeValue := '';
      NodeNf.AddChild('ponto_referencia','').NodeValue := DMMACS.TALX.FieldByName('proximidade').AsString;
      NodeNf.AddChild('bairro','').NodeValue := DMMACS.TALX.FieldByName('bairro').AsString;
      NodeNf.AddChild('cidade','').NodeValue := DMMACS.TALX.FieldByName('COD_FEDERAL').AsString;
      NodeNf.AddChild('cep','').NodeValue := TiraCaracter(DMMACS.TALX.FieldByName('cep').AsString, '-');
      NodeNf.AddChild('ddd_fone_comercial','').NodeValue := '';
      NodeNf.AddChild('fone_comercial','').NodeValue := '';
      NodeNf.AddChild('ddd_fone_residencial','').NodeValue := '';
      NodeNf.AddChild('fone_residencial','').NodeValue := '';
      NodeNf.AddChild('ddd_fax','').NodeValue := '';
      NodeNf.AddChild('fone_fax','').NodeValue := '';

      //Alex 28/05/2020: Filtramos os itens de servi�os para serem enviados
      FiltraTabela(DMESTOQUE.TDesp, 'despadic', 'cod_gerador', IntToStr(XSetCodigoPedido), '');

      //Tag de Itens
      NodeItens := Raiz.ChildNodes['itens'];

      DMESTOQUE.TSlaveServ.First;
      DMESTOQUE.TDesp.First;
      //Alex 25/05/2020 - Percorre as despesas Inserindo ao xml
      While Not DMESTOQUE.TDesp.Eof Do
      Begin
           //Tag de Lista de Servi�os
           NodeLista := NodeItens.ChildNodes['itens'].AddChild('lista', -1);

           NodeLista.AddChild('codigo_local_prestacao_Servico').NodeValue := DMMACS.TALX.FieldByName('COD_FEDERAL').AsString;
           NodeLista.AddChild('codigo_item_lista_servico').NodeValue := DesmembraCodigo(DMESTOQUE.TDesp.FieldByName('NFSE_CODSERVICO').AsString, 'COD');
           NodeLista.AddChild('descritivo').NodeValue := DMESTOQUE.TDesp.fieldByName('DESPESA').AsString;
           NodeLista.AddChild('aliquota_item_lista_servico').NodeValue :=  FormatFloat('###0.00', DMESTOQUE.TDesp.fieldByName('ALIQISSQN').AsCurrency);
           //Reten��o do ISS
           if FMenu.xReterIss = 'SIM' then
               NodeLista.AddChild('situacao_tributaria').NodeValue :=  '1'
           else
               NodeLista.AddChild('situacao_tributaria').NodeValue :=  '0';
               
           NodeLista.AddChild('valor_tributavel').NodeValue :=  FormatFloat('####0.00', xVlrServico);
           NodeLista.AddChild('valor_deducao').NodeValue :=  '0,00';
           NodeLista.AddChild('valor_issrf').NodeValue :=  FormatFloat('###0.00', Fmenu.xValorIss);
           If DMMACS.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Tributa��o no munic�pio' Then
               NodeLista.AddChild('tributa_municipio_prestador').NodeValue :=  'S'
           Else
               NodeLista.AddChild('tributa_municipio_prestador').NodeValue :=  'N';
           NodeLista.AddChild('unidade_codigo').NodeValue :=  '';
           NodeLista.AddChild('unidade_quantidade').NodeValue :=  FormatFloat('###0.00', DMESTOQUE.TDesp.fieldByName('QTD').AsCurrency);
           NodeLista.AddChild('unidade_valor_unitario').NodeValue :=  FormatFloat('###0.00', DMESTOQUE.TDesp.fieldByName('VLRFINAL').AsCurrency);

           DMESTOQUE.TDesp.Next;
      end;
      
      VerificaDiretorio('C:\Mzr\Arquivos\NFSe\TMP\IPM\');
      If FileExists('C:\MZR\Arquivos\NFSe\TMP\IPM\XmlTMP.xml') Then
      		DeleteFile('C:\MZR\Arquivos\NFSe\TMP\IPM\XmlTMP.xml');

      XMLNFSe.SaveToFile('C:\MZR\Arquivos\NFSe\TMP\IPM\XmlTMP.xml');

      XXmlfinal := XMLNFSe.XML.Text;
	   DecimalSeparator := ',';
   except
       ConcluiProcesso('Erro ao gerar o XML de envio. Tente novamente.<esc p/ sair>');
   	Result := false;
       DecimalSeparator := ',';
   end;
end;

procedure TFMzrNFSe.ConsultaSituacaoRPSEquiplano(xProtocolo,
  msgRps: string);
var
	xResultadoConsulta, xResultado, msgResultado, xlstMensagemRetorno, xProxy, xUsuario, xSenha, xSituacao, xMsgRps: widestring;
   arqtxt: TextFile;
   xTexto: TextFile;
   xNrDoc, xRetorno, xCodAut, xLicensa, xNumRps, xLote:string;
   xPosEncontrada, xPosEncontradaFinal, i, xHomolog: integer;
   xArquivo: TSHFileOpStruct;
   XmlDoc: TXMLDocument;
   FRNfse: TfrReport;
   //01 FRDSNfse: TfrDBDataSet;
   xConfirmacao: Integer;
begin
try
	Information('Consultando status da Nfse...');

	XSetInPeriodoFiscal:= DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
	XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '/');
   XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, '(');
   XSetInPeriodoFiscal:=TiraCaracter(XSetInPeriodoFiscal, ')');

   xMsgRps := '';

   //Edmar - 11/12/2013 - Se estiver em modo de produ��o, recebe a licen�a.
   //Sen�o, recebe vazio e 2 porque � o exigido para homologa��o
   if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1 then
   begin
   	xLicensa := DMMACS.TLoja.fieldbyname('nfse_licensa').AsString;
       xHomolog := 1;
   end
   else begin
  		xLicensa := '';
       xHomolog := 2;
   end;

   DMESTOQUE.TSlaveServ.First;

    //Edmar - 28/03/2014 - repete a instru��o para consultar o status da nfse at� o usuario
    // escolher n�o consultar mais
    repeat
    	Sleep(20000);//Edmar - 28/03/2014 - Aguarda 20 segundos para garantir uma conex�o de sucesso

       xResultadoConsulta := xUtil.ConsultaSituacaoLoteRPS(XCodigoIBGE, XNfeNomeCertificado, xHomolog, '1.0', xMsgRps, xResultado,
           msgResultado, XCNPJPrest, '136', xProtocolo, IntToStr(xNrLote) {xLote}, xSituacao, xlstMensagemRetorno, xProxy, xUsuario, xSenha, xLicensa);

       if (xSituacao = '1') or (xSituacao = '2') then
           xConfirmacao :=	Mensagem('A T E N � � O', 'N�o obtivemos uma resposta junto ao servidor da prefeitura, sendo assim n�o � possivel consultar o status da NFS-e. Deseja continuar consultando? ', '', 2, 3, false, 'C')
       else
           xConfirmacao := 1;

    until (xConfirmacao <> 2);

	 if (xSituacao = '3') or (xSituacao = '4') then
    begin    	
    	if not DirectoryExists('C:\MZR\Arquivos\NFSe\NfseDistribuicao\'+XSetInPeriodoFiscal)then
       	ForceDirectories('C:\MZR\Arquivos\NFSe\NfseDistribuicao\'+XSetInPeriodoFiscal);
       
        //Edmar - 06/12/2013 - Outra consulta, para o WS retornar o XML de distribu��o
       xResultadoConsulta := xUtil.ConsultaLoteRPS(XCodigoIBGE, XNfeNomeCertificado, xHomolog, '1.0', msgRps, xResultado,
       	msgResultado, XCNPJPrest, '136', xProtocolo, xlstMensagemRetorno, xProxy, xUsuario, xSenha, xLicensa);

       //Edmar - 12/02/2014 - Recupera n�mero da nfse
       xPosEncontrada := StrPosicao('<nrNfse>', xResultadoConsulta, 1);
       xPosEncontradaFinal := StrPosicao('</nrNfse>', xResultadoConsulta, 1);

       xPosEncontradaFinal := xPosEncontradaFinal - xPosEncontrada;
       xRetorno := Copy(xResultadoConsulta, xPosEncontrada, xPosEncontradaFinal);
       xRetorno := ExtraiNumeros(xRetorno);

       xRetorno := TiraCaracter(xRetorno, '<');
       xRetorno := TiraCaracter(xRetorno, '/');
       xRetorno := TiraCaracter(xRetorno, 'n');
       xRetorno := TiraCaracter(xRetorno, 'r');
       xNrDoc := xRetorno;

       //Edmar - 12/02/2014 - Recupera c�digo de autentica��o
       xPosEncontrada := StrPosicao('<cdAutenticacao>', xResultadoConsulta, 1);
       xRetorno := Copy(xResultadoConsulta, xPosEncontrada+16, 35);

       xRetorno := TiraCaracter(xRetorno, '<');
       xRetorno := TiraCaracter(xRetorno, '/');
       xRetorno := TiraCaracter(xRetorno, 'c');
       xRetorno := TiraCaracter(xRetorno, 'd');
       xCodAut := xRetorno;

       //Edmar - 12/02/2014 - Recupera n�mero do rps
       xPosEncontrada := StrPosicao('<nrRps>', xResultadoConsulta, 1);
       xRetorno := Copy(xResultadoConsulta, xPosEncontrada+7, 6);

       xRetorno := TiraCaracter(xRetorno, '<');
       xRetorno := TiraCaracter(xRetorno, '/');
       xRetorno := TiraCaracter(xRetorno, 'n');
       xRetorno := TiraCaracter(xRetorno, 'r');
       xRetorno := TiraCaracter(xRetorno, 'R');
       xNumRps := xRetorno;

       //Edmar - 28/11/2013 - XML foi enviado e aceito pelo servidor.
       //Muda ele da pasta TMP e joga na definitiva.
       CopyFile(PChar('C:\MZR\Arquivos\NFSe\TMP\XmlTMP.xml'), PChar('C:\MZR\Arquivos\NFSe\NfseDistribuicao\'+XSetInPeriodoFiscal+'\'+xNrDoc+'-NfseDistribuicao.xml'), false);

		AssignFile(xTexto, 'C:\MZR\Arquivos\NFSe\NfseDistribuicao\'+XSetInPeriodoFiscal+'\'+xNrDoc+'-NfseNumeroDocumento.xml');
       Rewrite(xTexto);
       Write(xTexto, xResultadoConsulta);

       DMESTOQUE.TSlaveServ.First;

       //Edmar - 12/02/2014 - Salva as informa��es no banco de dados
       if FMenu.xReterIss = 'SIM' then
       	GravaInfoBanco(xNumRps, xNrDoc, '', IntToStr(XSetCodigoPedido), xCodAut, XXmlfinal, xProtocolo, '1', '1', xNrLote)
    	else
           GravaInfoBanco(xNumRps, xNrDoc, '', IntToStr(XSetCodigoPedido), xCodAut, XXmlfinal, xProtocolo, '1', '2', xNrLote);

 		Information('NFS-e salva com sucesso');

       If Mensagem('Confirma��o do usu�rio', 'Deseja enviar o PDF da NFS-e gerada para o cliente?', '', 2, 3, False, 'c') = 2 then
		begin
	        Information('Enviando o e-mail para o cliente. Por favor aguarde!');
           XEnviaPdf := 'S';
       	PreparaEnvioPdf;
       end
       else
           VisualizaNfse(XSetCodigoPedido);
       	//GeraNFseImpressao;//Edmar - 05/02/2014 - Chama procedure que gera e manda para impress�o a nfse

       ConcluiProcesso('NFS-e gerada com sucesso <esc p/sair>');
       //FMzrNFSe.Information('NFS-e gerada com sucesso <esc p/sair>');
    	{GeraNFseImpressao;//Edmar - 05/02/2014 - Chama procedure que gera e manda para impress�o a nfse

       MzrNfse.ConcluiProcesso('NFS-e gerada com sucesso <esc p/sair>');}
    end
    else begin
    	if xlstMensagemRetorno = '' then
    	begin
    		Information('Ocorreu um erro no processamento da Nfse. Tente novamente <esc p/sair>');
    		NfeAddFalhas(msgResultado);
    		Exit;
    	end
    	else begin
       	Information('Ocorreu um erro no processamento da Nfse <esc p/sair>');
       	NfeAddFalhas(xlstMensagemRetorno);
       	Exit;
    	end;
    end;
except
	on E : Exception do
	begin
		Information('Ocorreu um erro no processamento da Nfse <esc p/sair>');
  		NfeAddFalhas(e.Message);
	end;
end;
end;

procedure TFMzrNFSe.GeraNFseImpressao;
begin
	try
      //Edmar - 03/12/2013 - Select usado para impress�o da nfse
      DMESTOQUE.TRel.Close;
      DMESTOQUE.TRel.SQL.Clear;
      DMESTOQUE.TRel.SQL.Add('select  docfisord.nfse_dtemissao as dtemissao,  docfisord.nfse_dtemissao, docfisord.dadosad01, docfisord.horasaid, docfisord.vlrdesconto, despadic.aliqissqn, despadic.nfse_status, docfisord.nfse_codigoautenticidade, despadic.nfse_codservico,  ');
      DMESTOQUE.TRel.SQL.Add(' docfisord.nfse_codigoautenticidade, despadic.nfse_codservico, servico_nfse.descricao, despadic.nfse_numerodocumento, docfisord.nfse_numerodocumento, ');
      DMESTOQUE.TRel.SQL.Add('despadic.despesa, despadic.vlrfinal, despadic.qtd, despadic.desconto, despadic.vlrtotfin, docfisord.vlrtotserv, docfisord.vlrtotiss, ordem.totiss, docfisord.impostonfse, ');
      DMESTOQUE.TRel.SQL.Add('servico_nfse.descricao, despadic.nfse_numerodocumento, ');
      DMESTOQUE.TRel.SQL.Add('ordem.totserv, docfisord.reter_iss from docfisord left join despadic on docfisord.cod_ordem = despadic.cod_gerador ');
      DMESTOQUE.TRel.SQL.Add('left join servico_nfse on despadic.nfse_codservico = servico_nfse.num_servico ');
      DMESTOQUE.TRel.SQL.Add('left join ordem on ordem.cod_ordem = docfisord.cod_ordem ');
      DMESTOQUE.TRel.SQL.Add('where docfisord.cod_ordem = :codord');
      DMESTOQUE.TRel.ParamByName('codord').AsInteger := XSetCodigoPedido;
      DMESTOQUE.TRel.Open;

      xNumeroDocumento := DMESTOQUE.TRel.FieldByName('nfse_numerodocumento').AsString;

      {FSDBDanfe.DataSet := DMESTOQUE.TRel;
      FSDanfe.Dataset := FSDBDanfe;}
      FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
      dataSetCidade.DataSet := DMGEOGRAFIA.WCidade;

      if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'ISS' then
           //FSDanfe.LoadFromFile('C:\MZR\Macs\Rel\FrfNFseISS.frf')
      		frxNfse.LoadFromFile('C:\MZR\Macs\Rel\FrfNFseISS.fr3')
      else
      		frxNfse.LoadFromFile('C:\MZR\Macs\Rel\FrfNFseEquiplano.fr3');
           {FSDanfe.LoadFromFile('C:\MZR\Macs\Rel\FrfNFseEquiplano.frf');
           FSDanfe.ShowReport;}

  	   frxNfse.ShowReport();

      XEnviaPdf := '';
   except
    	on e : Exception do
       begin
			Mensagem('A T E N � � O', 'Erro ao gerar DANFE de servi�o '+e.Message, '', 1,1, false, 'I');
       end;
   end
end;

procedure TFMzrNFSe.GravaInfoBanco(xNumRps, xNumDoc, xSerie,
  xCodOrdem, xCodAutent, xXml, xProtocolo, xStatus, xRtIss: String; xNrLote: Integer);
begin 
    //Edmar - 12/02/2014 - Atualiza tabela ordem com o n�mero da nfse, status da nota e os novos valores
    TRY
    	DMESTOQUE.Alx3.Close;
    	DMESTOQUE.Alx3.SQL.Clear;
    	DMESTOQUE.Alx3.SQL.Add('update ordem set ordem.statusnfse = :status, ordem.numfiscalnfse = :numfisc ');
    	DMESTOQUE.Alx3.SQL.Add('where ordem.cod_ordem = :ordem');
     	DMESTOQUE.Alx3.ParamByName('status').AsString := xStatus;
    	DMESTOQUE.Alx3.ParamByName('numfisc').AsString := xNumDoc;
    	DMESTOQUE.Alx3.ParamByName('ordem').AsString := xCodOrdem;

    	DMESTOQUE.Alx3.ExecSQL;
//    	DMESTOQUE.Alx3.Transaction.CommitRetaining;
		DMESTOQUE.TransacEstoque.CommitRetaining;
    except
    	on e : Exception do
       begin
      		Raise Exception.Create('GRAVA INFOBANCO (2482):'+e.Message);
    		DMESTOQUE.TransacEstoque.RollbackRetaining;
    		Exit;
       end;
    end;

	//Edmar - 12/02/2014 - Atualiza despadic
	try
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add('update despadic set nfse_numerorps = :numrps, nfse_numerodocumento = :numdoc, nfse_status = :status, ');
       DMESTOQUE.Alx1.SQL.Add('nfse_serierps = :serie where despadic.cod_gerador = :codord');
       DMESTOQUE.Alx1.ParamByName('numrps').AsString := xNumRps;
       DMESTOQUE.Alx1.ParamByName('numdoc').AsString := xNumDoc;
       DMESTOQUE.Alx1.ParamByName('status').AsString := xStatus;
       DMESTOQUE.Alx1.ParamByName('serie').AsString := xSerie;
       DMESTOQUE.Alx1.ParamByName('codord').AsString := xCodOrdem;

       DMESTOQUE.Alx1.ExecSQL;
//       DMESTOQUE.Alx1.Transaction.CommitRetaining;
		DMESTOQUE.TransacEstoque.CommitRetaining;
    except
     	on e : Exception do
       begin
      		Raise Exception.Create('GRAVA INFOBANCO (2505):'+e.Message);
//    		DMESTOQUE.Alx3.Transaction.RollbackRetaining;
			DMESTOQUE.TransacEstoque.RollbackRetaining;
    		Exit;
       end;
    end;
    
    //Edmar - 12/02/2014 - Atualiza o docfisord com o xml que foi retornado pelo WS, o protocolo,
    //data de emiss�o e o c�digo de autenticidade.
    TRY
        DMESTOQUE.Alx3.Close;
        DMESTOQUE.Alx3.SQL.Clear;
        DMESTOQUE.Alx3.SQL.Add('update docfisord set docfisord.nfse_dtemissao = :data, docfisord.nfse_codigoautenticidade = :codautent, docfisord.nfse_numerodocumento = :numdoc, ');
        DMESTOQUE.Alx3.SQL.Add('docfisord.nfse_xml = :xml, docfisord.nfse_protocolo = :protocolo, docfisord.nfse_statusgeral = :stsg, docfisord.nfse_numerolote = :nrLote, ');
        DMESTOQUE.Alx3.SQL.Add('docfisord.nfse_numerorps = :rps, docfisord.nfse_serierps = :serie, docfisord.reter_iss = :rt ');
        DMESTOQUE.Alx3.SQL.Add('where docfisord.cod_ordem = :codord');
        DMESTOQUE.Alx3.ParamByName('data').AsDateTime := xData;
        DMESTOQUE.Alx3.ParamByName('codautent').AsString := xCodAutent;
        DMESTOQUE.Alx3.ParamByName('numdoc').AsString := xNumDoc;
        DMESTOQUE.Alx3.ParamByName('xml').AsString := xXml;
        DMESTOQUE.Alx3.ParamByName('protocolo').AsString := xProtocolo;
        DMESTOQUE.Alx3.ParamByName('rps').AsString := xNumRps;
        DMESTOQUE.Alx3.ParamByName('serie').AsString := xSerie;
        DMESTOQUE.Alx3.ParamByName('stsg').AsString := xStatus;
        DMESTOQUE.Alx3.ParamByName('nrLote').AsInteger := xNrLote;//Edmar - 26/03/2014 - lote requerido pela Equiplano
        DMESTOQUE.Alx3.ParamByName('rt').AsString := xRtIss;
        DMESTOQUE.Alx3.ParamByName('codord').AsString := xCodOrdem;

        DMESTOQUE.Alx3.ExecSQL;
//        DMESTOQUE.Alx3.Transaction.CommitRetaining;
		 DMESTOQUE.TransacEstoque.CommitRetaining;
    EXCEPT
     	on e : Exception do
       begin
      		Raise Exception.Create('GRAVA INFOBANCO (2537):'+e.Message);
//    		DMESTOQUE.Alx3.Transaction.RollbackRetaining;
  			DMESTOQUE.TransacEstoque.RollbackRetaining;
    		Exit;
       end;
    END;
end;

function TFMzrNFSe.RetornaDadosNfse(xCodOrdem, xNumNfse: string): boolean;
var
	xUtilConsulta:OleVariant;
   xMsgDados, xRetorno, xMsgRetorno, xLstMsgRetorno:WideString;
   xNumRetorno, xHomo: Integer;
   xCpfTom, xCnpjTom, xInscMunTom, xDataEmissao, xLicensa, xCertificado, xInscMun, xHora: String;
   Node, Node2: IXMLNode;
   doc: IXMLDocument;
   xArqSaida: TextFile;
begin
	try
		Result := false;

		Application.CreateForm(TFMzrNFSe, FMzrNfse);
       FMzrNFSe.Show;

       FMzrNFSe.Information('Inicia recupera��o da NFS-e');

       xUtilConsulta := CreateOleObject('NFSe_Util.util');
       xCertificado := DMMACS.TLoja.fieldbyname('nfecertificacao').AsString;
       FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('cod_cidade').AsString, '');
       XCodigoIBGE := DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString;
       XCNPJPrest := DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
       xInscMun := DMMACS.TEmpresa.FieldByName('insc_mun').AsString;
       xCpfTom := '';
       xCnpjTom := '';

       DMPESSOA.TALX.Close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add('select  docfisord.nfse_dtemissao as dtemissao, pessoa.cpfcnpj, pessoaj.insc_mun from docfisord ');
       DMPESSOA.TALX.SQL.Add('left join ordem on ordem.cod_ordem = docfisord.cod_ordem ');
       DMPESSOA.TALX.SQL.Add('left join cliente on cliente.cod_cliente = ordem.cod_cliente ');
       DMPESSOA.TALX.SQL.Add('left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa ');
       DMPESSOA.TALX.SQL.Add('left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa ');
       DMPESSOA.TALX.SQL.Add('where ordem.cod_ordem = :codOrdem');
       DMPESSOA.TALX.ParamByName('codOrdem').AsString := xCodOrdem;
       DMPESSOA.TALX.Open;

       //Edmar - 26/03/2014 - Popula data global para atualizar a data no GravaInfoBanco corretamente
      	xData := DMPESSOA.TALX.FieldByName('dtemissao').AsDateTime;
       xDataEmissao := FormatDateTime('YYYY-MM-DD', DMPESSOA.TALX.FieldByName('dtemissao').AsDateTime);
       xInscMunTom := DMPESSOA.TALX.FieldByName('insc_mun').AsString;

       if Length(DMPESSOA.TALX.FieldByName('cpfcnpj').AsString) > 11 then
           xCnpjTom := DMPESSOA.TALX.FieldByName('cpfcnpj').AsString
       else
           xCpfTom := DMPESSOA.TALX.FieldByName('cpfcnpj').AsString;

       if DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1 then
       begin
           xLicensa := DMMACS.TLoja.fieldbyname('nfse_licensa').AsString;
           xHomo := 1;
       end
       else begin
           xLicensa := '';
           xHomo := 2;
       end;

       FMzrNFSe.Information('Recuperando informa��es...');
       
       if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'ISS' then
       begin
          xRetorno := xUtilConsulta.ConsultaNfse(XCodigoIBGE, xCertificado, xHomo, '1.0', xMsgDados, xNumRetorno, xMsgRetorno,
               XCNPJPrest, xInscMun, xNumNfse, xDataEmissao, xDataEmissao, xCnpjTom, xCpfTom, xInscMunTom, '', '', '', '',
                   xLstMsgRetorno, '', '', '', xLicensa);

       	if(xLstMsgRetorno = '') then
           	RecuperaDadosISS(xRetorno, xCodOrdem)
           else begin
				FMzrNFSe.ConcluiProcesso('Essa nota fiscal de servi�o ainda n�o foi emitida. <esc p/ sair>');
               Exit;
			end;
       end
       else begin
           xRetorno := xUtilConsulta.ConsultaNFSeRPS(XCodigoIBGE, xCertificado, XHomo, '1', xMsgDados, xNumRetorno, xMsgRetorno,
          		XCNPJPrest, '136', xNumNfse, '1', '1', xLstMsgRetorno, '', '', '', xLicensa);
               
          if(xLstMsgRetorno = '') then
          		RecuperaDadosEquiplano(xRetorno, xCodOrdem)
          else begin
		        FMzrNFSe.ConcluiProcesso('Essa nota fiscal de servi�o ainda n�o foi emitida. <esc p/ sair>');
               Exit;
          end;
       end;

       FMzrNFSe.Information('O processo ocorreu com sucesso <esc p/ sair>');
	except
   	on e : Exception do
       begin
       	FMzrNFSe.Information('O processo falhou');
       	FMzrNFSe.NfeAddFalhas(e.Message);
       end;
   end;

end;

function TFMzrNFSe.RecuperaDadosEquiplano(xXmlRetorno, xOrdem: string): Boolean;
var
	xNrNfse, xCodAutenti, XNumRps, xSerie, xAliquota, xStrRetornada: String;
   xRtIss, xValorLiquido, xStatus: String;
   xPosEncontrada, xI, xLote: integer;
   xRps: file;
   xB: char;
   xAux: WideString;
begin
try
	//Edmar - 25/03/2014 - Busca n�mero da nfse do xml
	xPosEncontrada := StrPosicao('<nrNfse>', xXmlRetorno, 1);
   xStrRetornada := Copy(xXmlRetorno, xPosEncontrada+8, 5);
   xStrRetornada := TiraCaracter(xStrRetornada, '<');
	xStrRetornada := TiraCaracter(xStrRetornada, '>');
   xStrRetornada := TiraCaracter(xStrRetornada, '/');
   xStrRetornada := TiraCaracter(xStrRetornada, 'n');
   xStrRetornada := TiraCaracter(xStrRetornada, 'r');

   xNrNfse := xStrRetornada;

	//Edmar - 25/03/2014 - busca c�digo da autenticidade
	xPosEncontrada := StrPosicao('<cdAutenticacao>', xXmlRetorno, 1);
   xStrRetornada := Copy(xXmlRetorno, xPosEncontrada+16, 35);
   xStrRetornada := TiraCaracter(xStrRetornada, '<');
	xStrRetornada := TiraCaracter(xStrRetornada, '>');
   xStrRetornada := TiraCaracter(xStrRetornada, '/');
   xStrRetornada := TiraCaracter(xStrRetornada, 'c');
   xStrRetornada := TiraCaracter(xStrRetornada, 'd');

   xCodAutenti := xStrRetornada;

	//Edmar - 25/03/2014 - busca numero do rps
	xPosEncontrada := StrPosicao('<nrRps>', xXmlRetorno, 1);
   xStrRetornada := Copy(xXmlRetorno, xPosEncontrada+7, 5);
   xStrRetornada := TiraCaracter(xStrRetornada, '<');
	xStrRetornada := TiraCaracter(xStrRetornada, '>');
   xStrRetornada := TiraCaracter(xStrRetornada, '/');
   xStrRetornada := TiraCaracter(xStrRetornada, 'n');
   xStrRetornada := TiraCaracter(xStrRetornada, 'r');

   XNumRps := xStrRetornada;

   xPosEncontrada := StrPosicao('<cancelamento>', xXmlRetorno, 1);
   xStrRetornada := Copy(xXmlRetorno, xPosEncontrada, 14);

   if xStrRetornada = '<cancelamento>' then
   	xStatus := '2'
   else
		xStatus := '1';

	xSerie := '';

   xRtIss := '2';

   //Edmar - 26/03/2014 - busca o ultimo numero do lote v�lido
   DMServ.TAlx3.Close;
   DMServ.TAlx3.SQL.Clear;
   DMServ.TAlx3.SQL.Add('select max(nfse_numerolote) from docfisord');
   DMServ.TAlx3.Open;

   xLote := DMServ.TAlx3.FieldByName('max').AsInteger + 1;

   GravaInfoBanco(xNumRps, xNrNfse, xSerie, xOrdem, xCodAutenti, xXmlRetorno, '', xStatus, xRtIss, xLote);   
except
	on E : Exception do//Edmar - 25/03/2014 - Tratamento de exce��o
      	Raise Exception.Create(e.Message);//Edmar - 26/03/2014 - Joga uma nova excess�o
		//Mensagem('E R R O', 'N�o foi possivel concluir o processo de recupera��o de dados '#13+E.Message, '', 1,1, false, 'I');
end;
end;

function TFMzrNFSe.RecuperaDadosISS(xXmlRetorno, xOrdem: string): Boolean;
var
	xNrNfse, xCodAutenti, xNumRps, xSerie, xAliquota, xStrRetornada: String;
   xRtIss, xValorLiquido, xBaseCalculo, xValorIss: String;
   xValorTotal: Real;
   xPosEncontrada: Integer;
begin
try
	//Edmar - 25/03/2014 - Busca n�mero da nfse do xml
	xPosEncontrada := StrPosicao('<tc:InfNfse>', xXmlRetorno, 1);
   xStrRetornada := Copy(xXmlRetorno, xPosEncontrada+34, 5);
   xStrRetornada := TiraCaracter(xStrRetornada, '<');
	xStrRetornada := TiraCaracter(xStrRetornada, '>');
   xStrRetornada := TiraCaracter(xStrRetornada, '/');
   xStrRetornada := TiraCaracter(xStrRetornada, 't');
   xStrRetornada := TiraCaracter(xStrRetornada, 'c');

   xNrNfse := xStrRetornada;

	//Edmar - 25/03/2014 - busca c�digo da autenticidade
	xPosEncontrada := StrPosicao('<tc:CodigoVerificacao>', xXmlRetorno, 1);
   xStrRetornada := Copy(xXmlRetorno, xPosEncontrada+22, 10);
   xStrRetornada := TiraCaracter(xStrRetornada, '<');
	xStrRetornada := TiraCaracter(xStrRetornada, '>');
   xStrRetornada := TiraCaracter(xStrRetornada, '/');
   xStrRetornada := TiraCaracter(xStrRetornada, 't');
   xStrRetornada := TiraCaracter(xStrRetornada, 'c');

   xCodAutenti := xStrRetornada;

	//Edmar - 25/03/2014 - busca numero do rps
	xPosEncontrada := StrPosicao('<tc:IdentificacaoRps>', xXmlRetorno, 1);
   xStrRetornada := Copy(xXmlRetorno, xPosEncontrada+45, 5);
   xStrRetornada := TiraCaracter(xStrRetornada, '<');
	xStrRetornada := TiraCaracter(xStrRetornada, '>');
   xStrRetornada := TiraCaracter(xStrRetornada, '/');
   xStrRetornada := TiraCaracter(xStrRetornada, 't');
   xStrRetornada := TiraCaracter(xStrRetornada, 'c');

   xNumRps := xStrRetornada;

	//Edmar - 25/03/2014 - busca a s�rie
	xPosEncontrada := StrPosicao('<tc:Serie>', xXmlRetorno, 1);
   xStrRetornada := Copy(xXmlRetorno, xPosEncontrada+10, 5);
   xStrRetornada := TiraCaracter(xStrRetornada, '<');
	xStrRetornada := TiraCaracter(xStrRetornada, '>');
   xStrRetornada := TiraCaracter(xStrRetornada, '/');
   xStrRetornada := TiraCaracter(xStrRetornada, 't');
   xStrRetornada := TiraCaracter(xStrRetornada, 'c');

   xSerie := xStrRetornada;

	//Edmar - 25/03/2014 - busca a aliquota
	xPosEncontrada := StrPosicao('<tc:Aliquota>', xXmlRetorno, 1);
   xStrRetornada := Copy(xXmlRetorno, xPosEncontrada+12, 5);
   xStrRetornada := TiraCaracter(xStrRetornada, '<');
	xStrRetornada := TiraCaracter(xStrRetornada, '>');
   xStrRetornada := TiraCaracter(xStrRetornada, '/');
   xStrRetornada := TiraCaracter(xStrRetornada, 't');
   xStrRetornada := TiraCaracter(xStrRetornada, 'c');

   xAliquota := xStrRetornada;

	//Edmar - 25/03/2014 - busca se reteve ISS
	xPosEncontrada := StrPosicao('<tc:IssRetido>', xXmlRetorno, 1);
   xStrRetornada := Copy(xXmlRetorno, xPosEncontrada+14, 5);
   xStrRetornada := TiraCaracter(xStrRetornada, '<');
	xStrRetornada := TiraCaracter(xStrRetornada, '>');
   xStrRetornada := TiraCaracter(xStrRetornada, '/');
   xStrRetornada := TiraCaracter(xStrRetornada, 't');
   xStrRetornada := TiraCaracter(xStrRetornada, 'c');

   xRtIss := xStrRetornada;

   GravaInfoBanco(xNumRps, xNrNfse, xSerie, xOrdem, xCodAutenti, xXmlRetorno, '', '1', xRtIss, 0);
except
	on E : Exception do//Edmar - 25/03/2014 - Tratamento de exce��o
      	Raise Exception.Create(e.Message);//Edmar - 26/03/2014 - Joga uma nova excess�o
		//Mensagem('E R R O', 'N�o foi possivel concluir o processo de recupera��o de dados '+E.Message, '', 1,1, false, 'I');
end;
end;

function TFMzrNFSe.GeraPdfCliente: Boolean;
begin
   Result := true;
   XEnviaPdf := '';

   //Edmar - 24/04/2014 - Verifica e cria o diret�rio se necess�rio
   if not DirectoryExists('C:\MZR\Arquivos\NFSe\PDF\'+XSetInPeriodoFiscal) then
       ForceDirectories('C:\MZR\Arquivos\NFSe\PDF\'+XSetInPeriodoFiscal);

	try
      //Edmar - 24/04/2014 - Converte e exporta a nfse em pdf
      frxExportaNfse.ShowDialog := false;
      frxExportaNfse.ShowProgress := false;
      frxExportaNfse.FileName := 'C:\MZR\Arquivos\NFSe\PDF\'+XSetInPeriodoFiscal+'\'+DMESTOQUE.TRel.FieldByName('nfse_numerodocumento').AsString+' - NFSe.pdf';
      frxNfse.Export(frxExportaNfse);
      //Edmar - 24/04/2014 - Armazena o local do arquivo
	   xPdfLocal := 'C:\MZR\Arquivos\NFSe\PDF\'+XSetInPeriodoFiscal+'\'+DMESTOQUE.TRel.FieldByName('nfse_numerodocumento').AsString+' - NFSe.pdf';
   except
   	on e : Exception do
       begin
       	ShowMessage('Erro ao gerar PDF da NFS-e '+e.Message);
       	Result := false;
       end;
   end;

   XEnviaPdf := ''; 
end;

function TFMzrNFSe.EnviaPdfEmail: Boolean;
var
   xEmail: String;
   Attachment: TIdAttachment;
begin
	Result := true;
	try//try geral
		try//try envio e-mail
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
                   	From.Address := xEmail;
                     	Recipients.EMailAddresses := EdEmail.Text;
                     	Body.Text := MMensagem.Lines.Text;
                     	CharSet := 'iso-8859-1';
                     	Encoding := MeMIME;
                     	ContentType := 'multipart/related' ;

                     	if FileExists(XPdfLocal) then
               	  	begin
                   		Subject := 'PDF da Nota Fiscal Eletr�nica de Servi�os N� '+xNumeroDocumento;
                       	Attachment := TIdAttachmentFile.Create(MessageParts, XPdfLocal);
                     	end;

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
   	finally//libera dados
   		MessXml.Free;
    		SMTPxml.Free;
    		//IdPOP31.Free;
 		end;
	except
   	on e : Exception do
   	begin
   		Raise Exception.Create(e.Message);
			Result := false;
   	end;
	end;
end;

procedure TFMzrNFSe.BtnEnviarOkClick(Sender: TObject);
begin
	 try
    	if EnviaPdfEmail then
       	Mensagem('I N F O R M A � � O', 'E-mail enviado com sucesso!', '', 1,1, false, 'I');
    except
   	on e : Exception do
       	MessageDlg('Ocorreu um erro ao enviar o e-mail: '+e.Message, mtError, [mbOK], 0);
    end;

    PEnviaPdf.Visible := False;
    PEnviaPdf.SendToBack;
    PAguarde.Visible := False;
    ConcluiProcesso('NFS-e gerada com sucesso <esc p/sair>');
end;

function TFMzrNFSe.PreparaEnvioPdf: Boolean;
begin
	try
      XEnviaPdf := 'S';
      VisualizaNfse(XSetCodigoPedido);

      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' Select email.email, pessoa.emailpadrao from vwcliente');
      DMMACS.TALX.SQL.Add(' left Join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
      DMMACS.TALX.SQL.Add(' left join email ON pessoa.cod_pessoa = email.cod_pessoa');
      DMMACS.TALX.SQL.Add(' Where vwcliente.cod_cliente=:codigo ');
      DMMACS.TALX.ParamByName('codigo').AsInteger:=XSetCodigoDestinatario;
      DMMACS.TALX.Open;

      if DMMACS.TALX.FieldByName('EMAILPADRAO').AsString <> '' then
         FMzrNFSe.EdEmail.Text := DMMACS.TALX.FieldByName('EMAILPADRAO').AsString
      else
         FMzrNFSe.EdEmail.Text := DMMACS.TALX.FieldByName('email').AsString;

      FMzrNFSe.MMensagem.Clear;
      FMzrNFSe.MMensagem.Lines.Add('Segue em anexo o PDF da NFS-e '+xNumeroDocumento);
      FMzrNFSe.MMensagem.Lines.Add('----------------------------------------------------------');
      FMzrNFSe.MMensagem.Lines.Add('Att ');
      FMzrNFSe.MMensagem.Lines.Add(DMMACS.TEmpresa.FieldByName('FANTASIA').AsString);
      FMzrNFSe.MMensagem.Lines.Add('CNPJ: '+DMMACS.TEmpresa.FieldByName('CNPJ').AsString);
      FMzrNFSe.MMensagem.Lines.Add('Tel: '+DMMACS.TEmpresa.FieldByName('Fone').AsString);
      FMzrNFSe.MMensagem.Lines.Add('----------------------------------------------------------');
      FMzrNFSe.MMensagem.Lines.Add('.');
      FMzrNFSe.MMensagem.Lines.Add('.');
      FMzrNFSe.MMensagem.Lines.Add('.');
      FMzrNFSe.MMensagem.Lines.Add('N�O RESPONDER ESTE EMAIL.');

  	   FMzrNFSe.PEnviaPdf.Visible := true;
      FMzrNFSe.PEnviaPdf.BringToFront;
      FMzrNFSe.PAguarde.Visible := false;
   except
   	on e : Exception do
       	Raise Exception.Create(e.Message);
   end;
end;

procedure TFMzrNFSe.BtnCancelaEnvioClick(Sender: TObject);
begin
    PEnviaPdf.Visible := False;
    PEnviaPdf.SendToBack;
    PAguarde.Visible := True;
end;

//Edmar - 31/03/2015 - fun��o auxiliar para reenviar xml e pdf da nfse para o email do cliente
function TFMzrNFSe.ReenviaPdfXml(xCod_Ordem: Integer): Boolean;
begin
   LInformacao.Caption := 'Exportando o arquivo PDF...';
   LInformacao.Refresh;
   
	//Edmar - 01/04/2015 - Busca a descri��o do periodo fiscal para salvar na pasta correta
	DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' SELECT PERIODOFISCAL.DESCRICAO, ORDEM.COD_CLIENTE FROM PERIODOFISCAL ');
   DMMACS.TALX.SQL.Add(' LEFT JOIN DOCFISORD ON PERIODOFISCAL.COD_PERIODOFISCAL = DOCFISORD.COD_PERIODOFISCAL ');
   DMMACS.TALX.SQL.Add(' LEFT JOIN ORDEM ON DOCFISORD.COD_ORDEM = ORDEM.COD_ORDEM ');
   DMMACS.TALX.SQL.Add(' WHERE ORDEM.COD_ORDEM = :ORDEM ');
   DMMACS.TALX.ParamByName('ORDEM').AsInteger := xCod_Ordem;
   DMMACS.TALX.Open;

   XSetInPeriodoFiscal := DMMACS.TALX.FieldByName('DESCRICAO').AsString;
   XSetCodigoDestinatario := DMMACS.TALX.FieldByName('COD_CLIENTE').AsInteger;

	//Edmar - 01/04/2015 - Formata a descri��o do periodo fiscal
  	XSetInPeriodoFiscal := TiraCaracter(XSetInPeriodoFiscal, '/');
  	XSetInPeriodoFiscal := TiraCaracter(XSetInPeriodoFiscal, '(');
  	XSetInPeriodoFiscal := TiraCaracter(XSetInPeriodoFiscal, ')');

   XSetCodigoPedido := xCod_Ordem;
   xEmissao := 'ENVPDF';
end;

End.

